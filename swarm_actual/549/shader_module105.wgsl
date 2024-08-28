struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
    d: vec3<u32>,
    e: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(370f, 0i, false, vec3<u32>(93654u, 1u, 55425u), -1870f), Struct_1(-1087f, 35900i, false, vec3<u32>(0u, 62691u, 16271u), -1448f), Struct_1(374f, 0i, true, vec3<u32>(6941u, 12603u, 0u), 1000f), Struct_1(-213f, 23880i, true, vec3<u32>(4294967295u, 31621u, 5328u), -508f), Struct_1(171f, i32(-2147483648), false, vec3<u32>(87509u, 8733u, 0u), 553f), Struct_1(976f, -12831i, false, vec3<u32>(24310u, 0u, 1u), -1000f), Struct_1(461f, i32(-2147483648), true, vec3<u32>(4294967295u, 940u, 11484u), 218f), Struct_1(-255f, -28454i, false, vec3<u32>(1026u, 4294967295u, 49704u), -513f), Struct_1(1000f, 1i, true, vec3<u32>(37194u, 0u, 4294967295u), -1000f), Struct_1(-1096f, 1i, false, vec3<u32>(4294967295u, 36798u, 1u), -592f), Struct_1(109f, i32(-2147483648), false, vec3<u32>(0u, 4294967295u, 33021u), -2692f), Struct_1(-947f, 1i, true, vec3<u32>(4294967295u, 1u, 0u), 1082f), Struct_1(-1064f, 14650i, true, vec3<u32>(13656u, 29514u, 0u), 373f), Struct_1(-614f, 19967i, false, vec3<u32>(3025u, 0u, 51806u), -168f), Struct_1(-526f, 2147483647i, true, vec3<u32>(28148u, 4294967295u, 1u), -1062f));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> vec2<bool> {
    var var_0 = Struct_2(vec4<bool>(true, true, true, true), 239f);
    return var_0.a.zw;
}

fn func_1(arg_0: bool, arg_1: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1568f))), -981f))));
    var var_1 = Struct_2(vec4<bool>(any(func_2()), arg_0, !any(vec2<bool>(arg_0, arg_0)), firstLeadingBit(u_input.c | 0u) < reverseBits(firstLeadingBit(4294967295u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))));
    var var_2 = _wgslsmith_f_op_f32(trunc(239f));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.b)) - var_0.x);
    let var_3 = -124f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1268f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) + var_0.x))));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(vec4<bool>(false, false, false, true), _wgslsmith_f_op_f32(-arg_3.e));
    var var_1 = Struct_3(~max(~firstTrailingBit(vec4<u32>(38690u, arg_1.d.x, 41210u, 4294967295u)), vec4<u32>(firstTrailingBit(arg_1.d.x), ~arg_1.d.x, u_input.d, ~arg_1.d.x)));
    let var_2 = u_input.a.x;
    var var_3 = Struct_1(-202f, arg_1.b, !var_0.a.x, abs(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 0u, var_1.a.x), arg_1.d) >> (~u_input.e % vec3<u32>(32u))), _wgslsmith_f_op_f32(-arg_0));
    var var_4 = Struct_1(arg_3.a, arg_3.b, select(true, _wgslsmith_sub_u32(~var_3.d.x, 20650u) != 19466u, any(!var_0.a.wwy)), ~_wgslsmith_sub_vec3_u32(~(~var_3.d), arg_3.d), -482f);
    return Struct_1(_wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1675f, _wgslsmith_f_op_f32(-var_3.a))))), _wgslsmith_div_i32(-342i, -1i) | (1i ^ u_input.b), select(arg_3.c, _wgslsmith_f_op_f32(-arg_2.x) == _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_4.a, -668f)))), var_3.c), vec3<u32>(_wgslsmith_div_u32(~1u ^ arg_1.d.x, 4294967295u), arg_1.d.x, ~var_4.d.x), _wgslsmith_f_op_f32(select(393f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.a)) + var_3.a), all(vec4<bool>(true, true, any(vec2<bool>(var_3.c, var_3.c)), true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1313f - _wgslsmith_f_op_f32(abs(1480f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(304f - 1415f) * _wgslsmith_f_op_f32(select(493f, -646f, true)))))), Struct_1(_wgslsmith_f_op_f32(-266f * -1210f), u_input.a.x, true, vec3<u32>(~29676u, 4294967295u << (_wgslsmith_mult_u32(26694u, u_input.c) % 32u), u_input.e.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -857f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1017f) + -2417f))), vec2<f32>(-1745f, 1173f), Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(2066f)) + _wgslsmith_f_op_f32(min(-954f, -2366f))))), 1i, any(vec4<bool>(true, true, true, true)), ~(~u_input.e & _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.e.x, 14689u, 7290u), vec3<u32>(4294967295u, 4294967295u, u_input.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-455f * _wgslsmith_f_op_f32(func_1(true, 0u))))));
    var var_1 = ~u_input.e;
    var var_2 = vec3<i32>(1i, firstTrailingBit(var_0.b << (~102819u % 32u)), 38901i);
    var var_3 = Struct_2(vec4<bool>(!var_0.c, !(1752f != var_0.e), select(true, var_0.c, true), any(!vec2<bool>(var_0.c, var_0.c))), _wgslsmith_f_op_f32(f32(-1f) * -1194f));
    let var_4 = vec4<f32>(-446f, var_3.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b)) + var_0.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)));
    let var_5 = vec4<u32>(~func_3(_wgslsmith_f_op_f32(f32(-1f) * -572f), Struct_1(226f, var_2.x, var_3.a.x, var_0.d, 776f), var_4.zy, func_3(-1248f, Struct_1(880f, 27051i, var_0.c, u_input.e, var_3.b), vec2<f32>(var_3.b, 1003f), Struct_1(-861f, u_input.b, var_0.c, vec3<u32>(var_1.x, 6185u, var_1.x), var_0.a))).d.x << (abs(u_input.d) % 32u), var_0.d.x, var_1.x | (78909u & func_3(var_0.a, func_3(var_0.e, Struct_1(var_3.b, 1i, var_0.c, vec3<u32>(24719u, var_0.d.x, var_0.d.x), var_3.b), vec2<f32>(-205f, -1000f), Struct_1(var_3.b, var_2.x, var_0.c, vec3<u32>(4294967295u, 1u, var_0.d.x), var_4.x)), vec2<f32>(var_3.b, 1000f), Struct_1(var_3.b, u_input.b, var_3.a.x, var_0.d, var_4.x)).d.x), abs(54360u));
    let var_6 = func_3(_wgslsmith_f_op_f32(f32(-1f) * -1533f), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b - _wgslsmith_f_op_f32(-731f - -398f))), max(0i, 1i), !var_3.a.x, max(var_0.d, vec3<u32>(var_5.x, u_input.d, 8913u) >> (var_0.d % vec3<u32>(32u))) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d, 43644u, var_1.x), min(vec3<u32>(var_1.x, 4294967295u, var_0.d.x), vec3<u32>(u_input.d, var_5.x, u_input.c))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-var_4.x)), var_4.zw, func_3(-891f, global0[_wgslsmith_index_u32(~85366u, 15u)], _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-1582f - -1307f), var_0.a))), func_3(_wgslsmith_f_op_f32(-var_3.b), func_3(_wgslsmith_div_f32(var_0.e, 1281f), func_3(var_0.a, Struct_1(var_0.e, var_2.x, var_0.c, vec3<u32>(2177u, 1u, u_input.e.x), var_0.e), var_4.xw, global0[_wgslsmith_index_u32(var_5.x, 15u)]), var_4.zw, Struct_1(-683f, var_2.x, true, vec3<u32>(0u, u_input.d, 1u), var_4.x)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1543f, var_0.e))))), var_0)));
    let var_7 = true;
    let x = u_input.a;
    s_output = StorageBuffer(var_6.d.x, var_4, ~countOneBits(1u | ~var_5.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-var_4))) - var_4));
}

