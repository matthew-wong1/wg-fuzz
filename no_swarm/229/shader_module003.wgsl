struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: u32,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
    c: vec2<bool>,
}

struct Struct_4 {
    a: bool,
    b: vec3<u32>,
    c: Struct_1,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<f32, 1> = array<f32, 1>(-127f);

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = all(select(vec3<bool>(true, true, true), vec3<bool>(false || any(vec2<bool>(false, false)), true, true), true));
    global0 = false;
    var var_0 = _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(~abs(u_input.a.wx), ~firstLeadingBit(u_input.a.yw | vec2<i32>(u_input.a.x, -1i))), -countOneBits(u_input.a.yz), u_input.b.xy);
    global1 = array<f32, 1>();
    global0 = !(!all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, vec3<u32>(~(~(~0u)), _wgslsmith_mult_u32(11515u, 1u), 5167u));
}

