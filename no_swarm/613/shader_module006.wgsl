struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: u32,
    d: vec4<bool>,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 23> = array<vec2<u32>, 23>(vec2<u32>(32786u, 57693u), vec2<u32>(0u, 66729u), vec2<u32>(27270u, 17505u), vec2<u32>(39882u, 99741u), vec2<u32>(0u, 19873u), vec2<u32>(1u, 1u), vec2<u32>(40616u, 38530u), vec2<u32>(1u, 0u), vec2<u32>(22848u, 123953u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 50157u), vec2<u32>(1u, 63244u), vec2<u32>(18362u, 1u), vec2<u32>(40497u, 0u), vec2<u32>(12961u, 20365u), vec2<u32>(52566u, 10469u), vec2<u32>(36947u, 0u), vec2<u32>(1u, 20u), vec2<u32>(31918u, 11391u), vec2<u32>(30152u, 4294967295u), vec2<u32>(1u, 1u));

var<private> global1: vec3<i32>;

var<private> global2: array<vec3<f32>, 24>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec2<bool>(!all(select(vec2<bool>(false, false), vec2<bool>(true, false), false)), true);
    let var_1 = false;
    global0 = array<vec2<u32>, 23>();
    var var_2 = u_input.a;
    var var_3 = !var_0;
    global2 = array<vec3<f32>, 24>();
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2711f, 598f));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(1u, u_input.d.x, _wgslsmith_mult_u32(abs(reverseBits(73250u)), 1u)), _wgslsmith_sub_u32(u_input.d.x, u_input.d.x));
}

