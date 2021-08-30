import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ObservatoryComponent } from './observatory.component';

describe('ObservatoryComponent', () => {
  let component: ObservatoryComponent;
  let fixture: ComponentFixture<ObservatoryComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ObservatoryComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(ObservatoryComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
