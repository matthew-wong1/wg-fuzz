struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: f32,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 11>;

var<private> global1: f32;

var<private> global2: bool;

var<private> global3: vec4<bool> = vec4<bool>(true, false, false, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -662f);
    let var_0 = vec3<i32>(-66821i, _wgslsmith_add_i32(u_input.b, u_input.b), -36295i);
    global2 = all(!(!select(vec4<bool>(true, global3.x, global3.x, global3.x), vec4<bool>(global3.x, global3.x, global3.x, global3.x), !global3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(697f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(784f))))), vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_div_i32(u_input.b, -1i), var_0.x, _wgslsmith_div_i32(var_0.x, var_0.x)) ^ u_input.e, u_input.b), 1u << (u_input.a.x % 32u), min(6758u, _wgslsmith_clamp_u32(u_input.d.x, 23735u, u_input.c) | abs(0u)) >> (~34979u % 32u));
}

