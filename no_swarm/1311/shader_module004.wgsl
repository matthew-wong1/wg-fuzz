struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1() -> bool {
    return true;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<i32>, arg_2: f32) -> Struct_1 {
    let var_0 = arg_1.x;
    var var_1 = var_0;
    var_1 = arg_1.x;
    var_1 = u_input.b.x;
    var var_2 = ((!arg_0.x && true) & all(vec4<bool>(arg_2 <= arg_2, arg_0.x, true & arg_0.x, !arg_0.x))) && ((false || arg_0.x) != false);
    return Struct_1(vec3<bool>(true, true, true));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: vec2<bool>) -> vec3<bool> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), Struct_1(select(!select(vec3<bool>(false, arg_2.x, true), vec3<bool>(false, true, arg_2.x), true), select(!vec3<bool>(arg_2.x, true, arg_2.x), vec3<bool>(true, true, arg_2.x), select(vec3<bool>(false, arg_2.x, arg_2.x), vec3<bool>(false, arg_2.x, false), vec3<bool>(arg_2.x, true, false))), any(!vec3<bool>(arg_2.x, true, arg_2.x)))));
    var var_1 = var_0;
    let var_2 = 721f;
    var var_3 = max((vec3<i32>(-u_input.a, u_input.a, reverseBits(0i)) & u_input.b) | (reverseBits(u_input.b) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), vec3<i32>(-2147483647i, u_input.b.x, u_input.b.x) ^ u_input.b);
    var_1 = var_0;
    return var_1.b.a;
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_2;
    let var_1 = !func_2(func_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(750f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2.a), _wgslsmith_f_op_f32(-arg_2.a))), !arg_2.b.a.yx), ~(~vec4<i32>(-1i, u_input.b.x, -12677i, 1i) << (~vec4<u32>(23350u, 1u, 17251u, arg_0.x) % vec4<u32>(32u))), _wgslsmith_f_op_f32(var_0.a + var_0.a)).a;
    var var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(-arg_2.a);
    let var_4 = _wgslsmith_add_i32(-20561i >> (countOneBits(arg_0.x >> (_wgslsmith_dot_vec4_u32(arg_0, arg_0) % 32u)) % 32u), u_input.b.x);
    return Struct_1(vec3<bool>(select(!any(vec3<bool>(var_0.b.a.x, arg_1.x, false)), arg_3.a.x, func_2(var_1, ~vec4<i32>(61717i, var_4, var_4, u_input.a), 371f).a.x), !(false && func_1()), true));
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: bool) -> f32 {
    var var_0 = -140f;
    var var_1 = _wgslsmith_div_i32(-5842i, _wgslsmith_div_i32(-_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.b.x, u_input.b.x, -9389i, u_input.b.x), vec4<i32>(1i, u_input.b.x, u_input.b.x, -1i)), _wgslsmith_mult_i32(u_input.a, firstLeadingBit(10999i))));
    var var_2 = arg_1;
    var_0 = _wgslsmith_f_op_f32(189f - -847f);
    var var_3 = Struct_2(-1000f, arg_1);
    return -1462f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    let var_1 = 819f;
    var var_2 = var_1;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1))))));
    let var_3 = func_1();
    let var_4 = _wgslsmith_f_op_f32(-var_1);
    var_2 = _wgslsmith_f_op_f32(func_5(var_3, func_4(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0, 0u, var_0, var_0), vec4<u32>(1u, var_0, var_0, 466u)), ~(~vec4<u32>(31684u, var_0, var_0, 24666u))), vec3<bool>(1i <= u_input.b.x, !var_3 || var_3, _wgslsmith_clamp_u32(var_0, var_0, 15561u) > 34436u), Struct_2(_wgslsmith_f_op_f32(min(2674f, _wgslsmith_f_op_f32(ceil(var_4)))), func_2(select(vec3<bool>(var_3, var_3, true), vec3<bool>(false, var_3, false), false), vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.b.x), -1000f)), Struct_1(func_3(_wgslsmith_f_op_f32(select(var_4, var_1, var_3)), 1446f, func_2(vec3<bool>(var_3, false, var_3), vec4<i32>(22247i, 14761i, -47689i, 2147483647i), -1304f).a.zz))), !(!var_3)));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1, _wgslsmith_f_op_f32(f32(-1f) * -283f))))));
}

