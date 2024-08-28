struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<i32>,
    d: i32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: vec2<f32>,
    d: f32,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: i32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(~u_input.d, u_input.d), max(select(countOneBits(vec2<i32>(u_input.d, u_input.d)), vec2<i32>(u_input.d, u_input.d), select(vec2<bool>(true, false), vec2<bool>(true, true), true)), vec2<i32>(u_input.d, -u_input.d))), _wgslsmith_mult_i32(2147483647i, u_input.d | reverseBits(u_input.d)) & u_input.d);
    let var_1 = 103837u;
    let var_2 = Struct_2(select(select(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true), all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), false))), vec4<bool>(true, (var_0 != u_input.d) || (1i < u_input.d), false, any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)))), vec4<bool>(true, true, false == all(vec3<bool>(true, false, true)), max(-1i, -2147483647i) >= u_input.d)), Struct_1((i32(-1i) * -u_input.d) & (var_0 | u_input.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(644f, 1245f, 120f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-970f, -2155f, -1000f) + vec3<f32>(1276f, -1776f, 232f))))), _wgslsmith_f_op_f32(f32(-1f) * -245f)), ~(vec2<i32>(-1i) * -vec2<i32>(u_input.d, -26543i)) | abs(-vec2<i32>(0i, var_0)), 2147483647i >> (min(var_1, ~var_1) % 32u));
    var var_3 = any(!vec3<bool>(true, true, any(!var_2.a.xz)));
    var_3 = var_2.a.x;
    return 39877u;
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: Struct_3) -> vec4<u32> {
    var var_0 = vec4<bool>(any(select(arg_2.b.a, vec4<bool>(arg_2.b.a.x, true, true, false), arg_2.b.a)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(arg_2.b.b.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -368f), true)))) <= 1798f, select(arg_2.b.a.x, arg_2.b.a.x, all(arg_2.b.a.zzy)), !arg_0);
    var var_1 = u_input.a;
    var_0 = arg_2.b.a;
    var var_2 = arg_2;
    var_2 = arg_2;
    return _wgslsmith_sub_vec4_u32(vec4<u32>(~_wgslsmith_mult_u32(u_input.b.x ^ 4294967295u, 4294967295u), 1u, u_input.c.x & 0u, _wgslsmith_dot_vec2_u32(max(vec2<u32>(28472u, u_input.b.x), u_input.c) >> (vec2<u32>(36291u, u_input.a) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(select(u_input.c, u_input.c, var_2.b.a.x), vec2<u32>(0u, 0u)))), vec4<u32>(abs(41892u) << (_wgslsmith_mod_u32(30561u, u_input.a) % 32u), 923u, func_3(), ~4294967295u & _wgslsmith_div_u32(u_input.c.x & 5093u, u_input.c.x)));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: vec4<u32>) -> bool {
    var var_0 = abs(arg_2) | (func_2(true, -1i, arg_1) & ~min(reverseBits(arg_2), ~arg_2));
    let var_1 = vec3<bool>(arg_1.b.a.x, true, any(vec3<bool>(arg_1.b.a.x, 114421u >= arg_0.x, false)) | (all(select(arg_1.b.a.yww, vec3<bool>(true, arg_1.b.a.x, true), arg_1.b.a.x)) && (any(arg_1.b.a.xw) | arg_1.b.a.x)));
    let var_2 = arg_1;
    let var_3 = Struct_1(36814i & -u_input.d, arg_1.b.b.b, arg_1.c.x);
    var_0 = vec4<u32>(firstLeadingBit(144u), var_0.x | ~_wgslsmith_mod_u32(u_input.b.x, 1u), 23215u, 41626u);
    return var_2.b.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec3<bool>(any(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), true)), -_wgslsmith_clamp_i32(-26383i, u_input.d, -8873i) > -1i, !(!func_1(vec2<u32>(u_input.a, u_input.a), Struct_3(vec3<f32>(1010f, -1504f, -914f), Struct_2(vec4<bool>(false, false, false, false), Struct_1(-2147483647i, vec3<f32>(-1616f, 657f, -707f), 917f), vec2<i32>(5617i, 8553i), u_input.d), vec2<f32>(-546f, 783f), 1393f), vec4<u32>(u_input.a, 0u, 6100u, u_input.c.x))));
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-885f, -1775f, 693f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-934f, 401f, -598f)), _wgslsmith_div_vec3_f32(vec3<f32>(-1793f, -331f, 682f), vec3<f32>(-1632f, 219f, 1029f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-537f, -1114f, -1724f)))), Struct_2(select(vec4<bool>(!var_0.x, select(false, true, var_0.x), true, all(vec4<bool>(var_0.x, var_0.x, var_0.x, false))), select(select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(var_0.x, true, var_0.x, var_0.x)), select(vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(false, var_0.x, true, true), var_0.x), select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(false, var_0.x, false, var_0.x), var_0.x)), select(vec4<bool>(true, var_0.x, true, true), select(vec4<bool>(true, true, false, var_0.x), vec4<bool>(true, true, var_0.x, var_0.x), false), vec4<bool>(false, true, false, false))), Struct_1(_wgslsmith_clamp_i32(~44402i, 1i, 5825i), vec3<f32>(_wgslsmith_f_op_f32(491f + -439f), _wgslsmith_f_op_f32(1252f + 675f), -222f), _wgslsmith_f_op_f32(f32(-1f) * -509f)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.d, 41321i) & vec2<i32>(u_input.d, 0i), ~vec2<i32>(u_input.d, u_input.d)), min(_wgslsmith_clamp_i32(u_input.d, u_input.d, 1i), 4566i << (abs(u_input.a) % 32u))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-473f + -257f), _wgslsmith_f_op_f32(min(-278f, -185f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(120f, -276f, var_0.x)))) * vec2<f32>(_wgslsmith_f_op_f32(abs(1681f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1460f - 1383f) * 1f))), 939f);
    var var_2 = Struct_1(var_1.b.d, vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-1654f)), var_1.c.x)), var_1.a.x, _wgslsmith_f_op_f32(floor(-1842f))), var_1.a.x);
    let var_3 = var_1.b;
    let var_4 = var_1.b.d;
    var var_5 = select(vec4<bool>(true, var_1.b.a.x, true, !(!var_1.b.a.x)), vec4<bool>(!(_wgslsmith_f_op_f32(-var_3.b.b.x) < _wgslsmith_div_f32(-1000f, var_1.a.x)), false, false, true), !select(!var_1.b.a, vec4<bool>(var_1.b.a.x, any(var_1.b.a.xzy), 1i > var_1.b.d, true), !(false | var_0.x)));
    var var_6 = 1543f;
    var_5 = var_1.b.a;
    let var_7 = false;
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -99959i, _wgslsmith_f_op_f32(var_1.c.x * -283f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.b.yz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c)))), u_input.c.x);
}

