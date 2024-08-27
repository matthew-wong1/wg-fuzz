struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec2<f32>) -> u32 {
    let var_0 = 17163i;
    var var_1 = Struct_2(arg_1);
    return _wgslsmith_sub_u32(18135u ^ ~(~_wgslsmith_sub_u32(arg_1.b, arg_1.b)), 32735u);
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(783f, -1719f) * 678f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_3 * 1346f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2.c - 228f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), arg_1.c))) - vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_div_f32(arg_0, 742f)), 1523f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-335f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c * _wgslsmith_div_f32(1156f, -537f))), arg_0));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c, var_0.x, arg_3, arg_1.c)) + vec4<f32>(arg_2.c, 715f, arg_2.c, arg_3)))));
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c, var_0.x, 1376f, -339f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c, var_0.x, arg_2.c, arg_0)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.c, 1153f, 527f, -2017f) - vec4<f32>(-361f, arg_2.c, 1440f, 162f)), vec4<f32>(arg_1.c, arg_0, -524f, arg_1.c)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3, arg_3, arg_3, arg_0) + vec4<f32>(-258f, 1000f, -746f, var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, arg_3, 152f, var_0.x))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1395f, _wgslsmith_f_op_f32(-arg_2.c), _wgslsmith_div_f32(arg_3, 1275f), _wgslsmith_f_op_f32(arg_0 - arg_1.c)) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(885f, arg_2.c, arg_2.c, -643f), vec4<f32>(arg_2.c, arg_1.c, -1000f, arg_2.c))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1571f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0))), 186f), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-101f, arg_3, -421f, var_0.x), vec4<f32>(arg_3, -573f, var_0.x, arg_2.c))))), vec4<bool>(true, arg_1.a.x, all(arg_1.a.yz) & true, true && arg_1.d))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_2.c)), -2093f, _wgslsmith_f_op_f32(round(-815f)), _wgslsmith_f_op_f32(floor(var_0.x))) * _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(2311f, 1127f, arg_2.c, arg_3), vec4<f32>(746f, 1410f, var_0.x, arg_2.c)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, 882f, -497f, -534f), vec4<f32>(744f, -1272f, 2078f, 399f), arg_1.a.x)))) + vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -596f))), -510f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-201f, 285f) - _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(arg_2.c - arg_0))));
    let var_1 = arg_2;
    return arg_1.a.x;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: bool) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(vec3<bool>(arg_2, arg_1.x, !all(vec3<bool>(false, true, true))), u_input.c.x >> (4294967295u % 32u), -1151f, !(u_input.c.x >= u_input.c.x) && arg_1.x));
    let var_1 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.a.c, _wgslsmith_f_op_f32(-var_0.a.c), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.a.c), -2422f, var_0.a.d)))))));
    var var_2 = var_0;
    let var_3 = Struct_1(vec3<bool>(arg_1.x, !func_3(_wgslsmith_f_op_f32(sign(var_1.x)), var_2.a, Struct_1(vec3<bool>(var_2.a.a.x, false, true), 4294967295u, 1081f, true), _wgslsmith_f_op_f32(617f * -333f)), any(select(vec4<bool>(true, false, arg_1.x, arg_2), !vec4<bool>(var_0.a.d, false, var_2.a.a.x, false), true))), ~var_0.a.b, _wgslsmith_f_op_f32(-var_1.x), arg_1.x);
    var var_4 = var_3.c;
    return Struct_1(vec3<bool>(any(select(arg_1, var_2.a.a.zy, false)), any(vec2<bool>(false, true)), true), firstLeadingBit(min(~firstLeadingBit(u_input.c.x), var_0.a.b)), var_2.a.c, all(!vec4<bool>(957f != var_3.c, var_2.a.a.x, var_3.a.x, any(arg_1))));
}

fn func_1(arg_0: vec4<f32>) -> u32 {
    let var_0 = 60101u;
    let var_1 = func_4(min(min(~u_input.c.zxw, reverseBits(vec3<u32>(var_0, u_input.c.x, 1u))), ~vec3<u32>(0u, 0u, var_0)) | _wgslsmith_mod_vec3_u32(vec3<u32>(func_2(vec3<u32>(var_0, u_input.c.x, 1u), Struct_1(vec3<bool>(false, true, false), u_input.c.x, 681f, false), arg_0.yy), firstLeadingBit(97627u), var_0 | u_input.c.x), ~(~u_input.c.xxx)), vec2<bool>(true, any(vec4<bool>(true, func_3(-1000f, Struct_1(vec3<bool>(true, false, false), 325u, arg_0.x, true), Struct_1(vec3<bool>(true, false, true), 4392u, arg_0.x, true), arg_0.x), true, var_0 <= 1u))), any(vec2<bool>(true, true)));
    var var_2 = -1095f;
    var var_3 = u_input.d.yx;
    let var_4 = u_input.c;
    return var_4.x;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> StorageBuffer {
    var var_0 = arg_0;
    var var_1 = ~u_input.b.x;
    let var_2 = func_4(u_input.c.xwy, func_4(abs(~u_input.c.wzw), select(!vec2<bool>(arg_0.a.d, arg_0.a.d), arg_1.a.a.yz, arg_1.a.a.yz), all(var_0.a.a.zx)).a.yz, arg_1.a.a.x);
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.c, 504f)) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_2.c, -1205f))))))), vec2<f32>(-544f, var_2.c));
    var_1 = -_wgslsmith_sub_i32(2147483647i, u_input.b.x);
    return StorageBuffer(-1043f, u_input.c.x, var_3);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(Struct_2(Struct_1(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), func_1(vec4<f32>(1000f, -738f, 1583f, -228f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1181f - 1368f), _wgslsmith_f_op_f32(floor(529f)))), any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true))))), Struct_2(Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), ~firstLeadingBit(u_input.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1922f))), all(func_4(vec3<u32>(0u, 0u, 0u), vec2<bool>(true, false), false).a))));
}

