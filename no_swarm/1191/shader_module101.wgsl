struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<vec2<bool>, 26>;

var<private> global2: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(vec3<bool>(true, false, true), vec3<i32>(-18191i, 8839i, -29348i)), Struct_2(vec3<bool>(true, false, false), vec3<i32>(17507i, 30509i, 1i)), Struct_2(vec3<bool>(true, true, false), vec3<i32>(0i, 37851i, -23546i)), Struct_2(vec3<bool>(false, false, true), vec3<i32>(-1i, 17232i, -6594i)), Struct_2(vec3<bool>(false, false, false), vec3<i32>(-47895i, 50573i, -8442i)), Struct_2(vec3<bool>(false, true, false), vec3<i32>(-10588i, 13500i, 0i)), Struct_2(vec3<bool>(false, true, true), vec3<i32>(i32(-2147483648), 54540i, -23240i)));

var<private> global3: Struct_2 = Struct_2(vec3<bool>(false, true, true), vec3<i32>(1i, 0i, 22883i));

var<private> global4: array<vec4<bool>, 10>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-global0.x))), u_input.a, _wgslsmith_f_op_f32(f32(-1f) * -1068f));
}

