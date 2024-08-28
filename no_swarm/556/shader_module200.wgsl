struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: vec4<f32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1() -> vec2<u32> {
    return vec2<u32>(~_wgslsmith_sub_u32(20323u, abs(countOneBits(16349u))), 106026u);
}

fn func_2(arg_0: bool, arg_1: vec2<u32>, arg_2: u32) -> u32 {
    return _wgslsmith_sub_u32(_wgslsmith_mult_u32(~_wgslsmith_sub_u32(arg_2, arg_2), arg_1.x & arg_1.x), arg_2) ^ arg_1.x;
}

fn func_3(arg_0: bool, arg_1: u32) -> f32 {
    var var_0 = Struct_3(Struct_1(-346f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -833f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-350f, 811f))))));
    var_0 = Struct_3(Struct_1(var_0.a.a, -965f));
    var var_1 = firstLeadingBit(arg_1);
    var var_2 = Struct_5(arg_0, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-252f, var_0.a.a, false)))), _wgslsmith_f_op_f32(461f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.a.b)))), -889f, 994f), _wgslsmith_mod_vec2_i32(u_input.b.zw, -(~vec2<i32>(u_input.b.x, u_input.b.x))));
    var var_3 = vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(countOneBits(var_2.c.x), ~0i | (u_input.a >> (1u % 32u))), 14766i, var_2.c.x), var_2.c.x, -24832i, ~(1i >> (~u_input.c % 32u)) >> (_wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(35831u, 14413u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 1u, arg_1), vec3<u32>(36220u, u_input.c, arg_1))), ~u_input.c) % 32u));
    return -683f;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec4<u32>(func_2(false, func_1(), u_input.c), u_input.c, ~37501u, 108277u)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(all(vec3<bool>(false, false, false)), ~u_input.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(762f - 200f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, 610f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -146f))), -701f)), vec2<i32>(abs(-u_input.b.x) << (_wgslsmith_div_u32(4294967295u, func_2(false, vec2<u32>(u_input.c, u_input.c), u_input.c)) % 32u), u_input.a));
}

