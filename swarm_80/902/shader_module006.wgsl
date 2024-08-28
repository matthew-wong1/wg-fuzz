struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool, arg_1: bool) -> u32 {
    let var_0 = _wgslsmith_sub_u32(~_wgslsmith_div_u32(firstTrailingBit(u_input.a), u_input.a), ~1u);
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(1f)))), 1f, -421f), 523f);
    var var_2 = vec2<u32>(~(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.d.x), vec2<u32>(0u, u_input.d.x)))), _wgslsmith_mod_u32(select(~1u, 422u, ~15341i < countOneBits(u_input.b.x)), ~((0u ^ var_0) ^ var_0)));
    var var_3 = !(!arg_1);
    var var_4 = abs(_wgslsmith_sub_i32(select(-43005i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 59442i, 1i, 1i), u_input.b), all(select(vec4<bool>(true, arg_0, arg_0, true), vec4<bool>(arg_0, arg_1, arg_0, arg_0), vec4<bool>(false, false, arg_0, arg_0)))), ~_wgslsmith_sub_i32(2147483647i, abs(-24964i))));
    return _wgslsmith_dot_vec3_u32(vec3<u32>(~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, var_2.x), vec3<u32>(1u, u_input.a, var_0)), var_2.x), 0u, var_0), max(vec3<u32>(~(~27763u), abs(var_0) << (65043u % 32u), firstLeadingBit(~120424u)), reverseBits(~(~vec3<u32>(var_2.x, u_input.d.x, 18159u)))));
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = Struct_2(func_3(!(u_input.a < u_input.d.x), !(u_input.a != 1u)) ^ _wgslsmith_add_u32(abs(u_input.a), u_input.a), Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, arg_0.x) * _wgslsmith_div_vec3_f32(arg_0.zyy, arg_0.xxy)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.x)))), Struct_1(arg_0.xzz, arg_0.x));
    let var_1 = u_input.b.wxw & countOneBits(u_input.b.wwx);
    let var_2 = !all(!vec2<bool>(true, any(vec3<bool>(false, false, false))));
    let var_3 = vec3<u32>(func_3(var_2, any(select(!vec3<bool>(var_2, true, true), select(vec3<bool>(true, var_2, var_2), vec3<bool>(var_2, true, true), var_2), !vec3<bool>(var_2, true, false)))), var_0.a, abs(~_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 25674u, 16898u, 33609u), ~vec4<u32>(33994u, 3305u, u_input.d.x, 18824u))));
    let var_4 = func_3(var_2, any(select(vec3<bool>(true && var_2, var_0.a == u_input.d.x, var_2 & var_2), !(!vec3<bool>(false, var_2, true)), !vec3<bool>(false, false, var_2))));
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(446f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1726f - var_0.b.b)) + 411f), 1921f), _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(327f, var_0.c.b)))))));
}

fn func_1(arg_0: bool) -> Struct_2 {
    let var_0 = !vec3<bool>(any(select(vec2<bool>(arg_0, arg_0), select(vec2<bool>(false, true), vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0)), vec2<bool>(arg_0, arg_0))), true, true);
    let var_1 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2563f, -323f, -1468f, 1000f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 2268f, -225f, 613f)))));
    let var_2 = u_input.a;
    var var_3 = u_input.b.zzw;
    var var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_1.a, vec3<f32>(_wgslsmith_div_f32(var_1.a.x, 757f), -884f, var_1.b), !select(var_0, var_0, var_0.x)))), vec3<f32>(var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b + _wgslsmith_f_op_f32(-var_1.a.x))), 1478f));
    return Struct_2(select(~u_input.d.x, _wgslsmith_dot_vec2_u32(~min(u_input.d, vec2<u32>(0u, u_input.a)), ~(~u_input.d)), arg_0), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.a)) - var_1.a), _wgslsmith_f_op_f32(483f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(149f + var_4.x)))), var_1);
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(arg_0.b.b, -940f)), _wgslsmith_f_op_f32(-1f), true))));
    var var_1 = arg_0;
    var_1 = func_1(select(true, select(!(u_input.b.x >= 21618i), true, true), true));
    var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(var_1.b.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.c.a) + _wgslsmith_f_op_vec3_f32(trunc(var_1.b.a))))) + _wgslsmith_f_op_vec3_f32(-var_1.b.a)));
    return Struct_1(var_1.b.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.b.a.x + 1135f), _wgslsmith_f_op_f32(floor(arg_0.b.a.x))));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.a.x, arg_0.b, arg_0.b), vec3<f32>(arg_0.a.x, arg_0.b, arg_0.b))), _wgslsmith_div_vec3_f32(arg_0.a, vec3<f32>(arg_0.a.x, arg_0.b, 659f))), arg_0.a))), 1000f);
    var_0 = func_4(func_1(all(vec4<bool>(true, true, true, true))));
    var var_1 = u_input.d | u_input.d;
    var var_2 = false;
    let var_3 = ~u_input.d.x;
    return arg_0;
}

fn func_6(arg_0: u32, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = func_1(any(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true))) || (min(arg_0, ~arg_0) >= arg_0));
    let var_1 = func_5(var_0.c);
    var_0 = Struct_2(15058u, func_4(func_1(true && (-2022f != arg_2.b))), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(103f, var_1.b, -698f) * var_1.a) * _wgslsmith_f_op_vec3_f32(-var_0.c.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(923f, var_0.c.b, 955f))), 488f));
    var var_2 = u_input.d;
    return Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_2.a), _wgslsmith_f_op_vec3_f32(-arg_2.a), true)))), -1000f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(0u, func_6(4294967295u, -2147483647i, func_5(func_4(func_1(false)))), Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(107f, -369f, -858f) * vec3<f32>(548f, 1000f, 1087f)))))), _wgslsmith_f_op_f32(floor(1492f))));
    let var_1 = u_input.a;
    let var_2 = false;
    let var_3 = vec3<bool>(~69406u <= ~firstLeadingBit(var_0.a), !(true || var_2), false & (_wgslsmith_div_u32(~1u, ~var_1) < var_1));
    var var_4 = var_0.a;
    var var_5 = func_1(!var_3.x).b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(-1346f)), 36199u, -select(countOneBits(countOneBits(0i)), u_input.b.x, _wgslsmith_div_u32(var_0.a, 1u) > (u_input.d.x << (43928u % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-624f)), var_0.c.a.x)));
}

