import { ComponentFixture, TestBed } from '@angular/core/testing';

import { WhatisobservatoryComponent } from './whatisobservatory.component';

describe('WhatisobservatoryComponent', () => {
  let component: WhatisobservatoryComponent;
  let fixture: ComponentFixture<WhatisobservatoryComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ WhatisobservatoryComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(WhatisobservatoryComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
