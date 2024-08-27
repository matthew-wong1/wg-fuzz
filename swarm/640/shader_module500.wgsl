struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1600f * _wgslsmith_f_op_f32(select(-652f, -407f, true))), _wgslsmith_f_op_f32(floor(-1046f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(865f, 1180f) + vec2<f32>(-1000f, -455f)), vec2<f32>(1f, 1f), all(vec4<bool>(false, false, false, false)))))), select(-min(vec4<i32>(62894i, u_input.c, u_input.c, u_input.c), vec4<i32>(u_input.c, 39098i, u_input.c, 136i)), vec4<i32>(-u_input.c, -68i << (u_input.b % 32u), 12454i, _wgslsmith_mult_i32(~(-14247i), ~6273i)), select(vec4<bool>(true, any(vec4<bool>(true, true, true, true)), true, false), vec4<bool>(true, true, u_input.c < u_input.c, true), vec4<bool>(true, true, true, true))));
    let var_1 = ~_wgslsmith_mod_u32(u_input.b, _wgslsmith_mult_u32(u_input.b, u_input.a) & 0u);
    let var_2 = select(all(vec2<bool>(false, true)), true, true);
    let x = u_input.a;
    s_output = StorageBuffer(1i);
}

