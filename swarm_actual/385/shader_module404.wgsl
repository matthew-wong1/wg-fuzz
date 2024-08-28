struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1444f;

var<private> global1: array<Struct_3, 25>;

var<private> global2: vec4<bool>;

var<private> global3: vec4<bool> = vec4<bool>(false, true, false, false);

var<private> global4: array<Struct_3, 1> = array<Struct_3, 1>(Struct_3(vec4<i32>(2147483647i, 48384i, 0i, 9915i), Struct_2(Struct_1(vec2<f32>(-380f, -423f), vec3<bool>(false, false, true)), Struct_1(vec2<f32>(-208f, -338f), vec3<bool>(true, false, true)), Struct_1(vec2<f32>(1027f, 331f), vec3<bool>(true, true, true))), true));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<u32>(6154u, ~1u, 1u, ~0u)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-198f, 379f))))), -(~(-vec3<i32>(u_input.a, 13678i, u_input.a)) << (vec3<u32>(_wgslsmith_mult_u32(52211u, 53502u), ~40624u, ~20566u) % vec3<u32>(32u))), min(vec4<i32>(u_input.a, u_input.a, -8475i, u_input.a), vec4<i32>(20183i, ~(~16757i), firstLeadingBit(~u_input.a), i32(-1i) * -19863i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -279f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(620f)) + -104f)))));
}

