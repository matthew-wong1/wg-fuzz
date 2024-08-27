struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec3<f32>,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
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

var<private> global0: u32;

var<private> global1: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(false, 1i), Struct_2(true, -1240i), Struct_2(false, i32(-2147483648)), Struct_2(false, 10228i), Struct_2(false, -39481i), Struct_2(false, i32(-2147483648)), Struct_2(true, -48581i), Struct_2(false, 99335i), Struct_2(false, -1i), Struct_2(true, i32(-2147483648)), Struct_2(true, 36334i), Struct_2(false, 71405i), Struct_2(false, 3486i), Struct_2(false, 43273i), Struct_2(false, 372i), Struct_2(true, 2147483647i), Struct_2(true, 1i), Struct_2(false, 0i), Struct_2(true, -1i), Struct_2(false, -25562i), Struct_2(false, -1i), Struct_2(false, -16650i), Struct_2(true, -1i), Struct_2(true, 1i), Struct_2(false, 0i));

var<private> global2: array<i32, 22> = array<i32, 22>(-1i, 39430i, -7654i, i32(-2147483648), 2147483647i, -30474i, 16866i, -1i, 2147483647i, 2147483647i, -1i, 46267i, 4828i, -2596i, -21268i, i32(-2147483648), 13607i, 9912i, i32(-2147483648), -1i, 21408i, 19583i);

var<private> global3: bool;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = arg_0.b.zz;
    var var_1 = _wgslsmith_f_op_f32(1493f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(705f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1000f, arg_0.b.x)), _wgslsmith_f_op_f32(-1000f - arg_0.b.x))))));
    let var_2 = Struct_3(Struct_2(arg_0.d.x, u_input.a.x), ~vec4<i32>(~95473i, -3762i, arg_0.c.x, min(global2[_wgslsmith_index_u32(u_input.b, 22u)], -36916i)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x))), _wgslsmith_f_op_f32(-arg_0.b.x)) + arg_0.b), ~4294967295u, Struct_2(true && arg_0.d.x, -u_input.a.x));
    var var_3 = Struct_1(~vec4<u32>(4294967295u, 0u, 49922u, 4294967295u), _wgslsmith_f_op_vec3_f32(var_2.c * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.x, 836f, var_0.x)), vec3<f32>(_wgslsmith_div_f32(var_2.c.x, -411f), _wgslsmith_f_op_f32(568f + 1256f), _wgslsmith_f_op_f32(sign(var_2.c.x))))), vec3<i32>(var_2.a.b, -9052i, var_2.e.b), select(!select(arg_0.d, arg_0.d, arg_0.a.x > arg_0.a.x), arg_0.d, vec2<bool>(any(select(vec3<bool>(var_2.e.a, var_2.a.a, false), vec3<bool>(true, true, arg_0.d.x), false)), true)));
    let var_4 = arg_0.a.x;
    return ~1u;
}

fn func_2(arg_0: f32) -> u32 {
    global1 = array<Struct_2, 25>();
    var var_0 = Struct_1(vec4<u32>(~0u, _wgslsmith_sub_u32(11321u, 1u), _wgslsmith_add_u32(firstLeadingBit(24518u) & func_3(Struct_1(vec4<u32>(88854u, 23546u, u_input.b, u_input.c.x), vec3<f32>(arg_0, arg_0, arg_0), u_input.a, vec2<bool>(true, false))), _wgslsmith_mod_u32(1u, u_input.b)), u_input.b), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) + _wgslsmith_f_op_f32(ceil(arg_0))), -1398f, _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(arg_0 - arg_0))), vec3<i32>(i32(-1i) * -35906i, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.c.x, 0u, 0u), u_input.b), 22u)], select(78394i, global2[_wgslsmith_index_u32(u_input.c.x, 22u)], false)) ^ (vec3<i32>(u_input.a.x | u_input.a.x, _wgslsmith_clamp_i32(2147483647i, u_input.a.x, 0i), ~global2[_wgslsmith_index_u32(u_input.b, 22u)]) ^ vec3<i32>(~(-21094i), ~u_input.a.x, _wgslsmith_clamp_i32(50167i, global2[_wgslsmith_index_u32(2317u, 22u)], 37400i))), select(vec2<bool>((u_input.a.x == 57859i) && (arg_0 > -1000f), any(vec2<bool>(false, false))), !(!select(vec2<bool>(true, true), vec2<bool>(true, false), true)), firstLeadingBit(-34876i) < -_wgslsmith_sub_i32(u_input.a.x, u_input.a.x)));
    var var_1 = Struct_4(var_0.a.zz);
    let var_2 = Struct_2(-2147483647i <= u_input.a.x, u_input.a.x);
    var var_3 = _wgslsmith_mult_vec2_i32(var_0.c.xx, u_input.a.yx);
    return var_0.a.x;
}

fn func_4(arg_0: u32, arg_1: u32) -> i32 {
    let var_0 = u_input.a;
    let var_1 = var_0.zz;
    global2 = array<i32, 22>();
    global3 = any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, any(vec3<bool>(false, true, true)), true), true)) || (firstLeadingBit(~4294967295u) <= func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(770f - -1468f)))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -274f)))), _wgslsmith_f_op_f32(-1067f - 217f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-278f)))) * _wgslsmith_f_op_f32(select(-1107f, _wgslsmith_f_op_f32(-872f * -295f), true))), -895f, true)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(276f))))));
    return 1i;
}

fn func_5(arg_0: i32) -> Struct_1 {
    let var_0 = vec2<bool>(true, true);
    var var_1 = Struct_1(~(~vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(u_input.c.x, 1u, u_input.b)), u_input.c.x | 35738u, 1u, ~35312u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-604f, -208f, 1000f) * vec3<f32>(2029f, 1692f, -1850f)))))), u_input.a, select(!var_0, !select(vec2<bool>(false, true), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x)), global2[_wgslsmith_index_u32(u_input.b, 22u)] > arg_0), select(!var_0, vec2<bool>(all(vec3<bool>(var_0.x, true, true)), var_0.x), !vec2<bool>(var_0.x, true))));
    var var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.x, var_1.b.x)))), var_1.b.xx)))));
    global2 = array<i32, 22>();
    var var_3 = select(select(!(!var_0), vec2<bool>(var_1.d.x, all(vec4<bool>(false, true, false, var_0.x))), any(select(select(vec2<bool>(var_0.x, false), var_1.d, var_1.d.x), var_1.d, !var_1.d))), !(!select(select(vec2<bool>(false, false), var_1.d, true), !var_1.d, select(var_1.d, vec2<bool>(false, var_0.x), vec2<bool>(false, true)))), var_1.d);
    return Struct_1(select(var_1.a, abs(~select(var_1.a, var_1.a, vec4<bool>(var_1.d.x, false, var_3.x, false))), vec4<bool>(any(select(vec3<bool>(true, true, var_1.d.x), vec3<bool>(var_3.x, var_1.d.x, true), vec3<bool>(var_0.x, false, false))), !(arg_0 != 25039i), any(select(vec2<bool>(true, var_0.x), vec2<bool>(true, false), var_3.x)), true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-930f, -613f, _wgslsmith_f_op_f32(abs(-1968f)))), firstTrailingBit(vec3<i32>(~global2[_wgslsmith_index_u32(~4294967295u, 22u)], -3230i, (var_1.c.x >> (1u % 32u)) & _wgslsmith_mult_i32(arg_0, arg_0))), vec2<bool>((true & var_0.x) && all(!vec4<bool>(var_1.d.x, var_0.x, var_1.d.x, var_3.x)), var_0.x));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: vec3<u32>, arg_3: vec3<f32>) -> vec4<u32> {
    let var_0 = func_5(_wgslsmith_mult_i32(-func_4(func_2(arg_1), u_input.b), ~_wgslsmith_div_i32(global2[_wgslsmith_index_u32(firstLeadingBit(u_input.b), 22u)], _wgslsmith_mult_i32(arg_0, 1i))));
    var var_1 = Struct_3(global1[_wgslsmith_index_u32(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.b.x)) - _wgslsmith_f_op_f32(floor(var_0.b.x)))), 25u)], vec4<i32>(_wgslsmith_clamp_i32(func_4(~var_0.a.x, 1u), func_5(_wgslsmith_mult_i32(34599i, 19378i)).c.x, arg_0), ~_wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.a.x, 6387i), _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(u_input.b, 22u)], global2[_wgslsmith_index_u32(u_input.c.x, 22u)])), -36505i, 14621i | u_input.a.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1863f, 1144f, -362f), vec3<f32>(var_0.b.x, 1618f, arg_3.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-251f, 2890f, arg_3.x)))), ~reverseBits(countOneBits(arg_2.x)), global1[_wgslsmith_index_u32(func_3(func_5(_wgslsmith_div_i32(arg_0, var_0.c.x) << (~4294967295u % 32u))), 25u)]);
    global3 = true;
    var var_2 = Struct_3(Struct_2(var_1.e.a & any(select(vec4<bool>(var_1.e.a, false, var_0.d.x, false), vec4<bool>(var_0.d.x, false, var_0.d.x, true), var_1.e.a)), ~u_input.a.x), var_1.b, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(2155f, 652f)))) + _wgslsmith_div_f32(-426f, _wgslsmith_f_op_f32(f32(-1f) * -364f))), -1839f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_1.c.x, arg_1))) * -497f)), abs(u_input.b), Struct_2(!(!var_1.e.a), _wgslsmith_clamp_i32(-96789i, abs(1i), arg_0) ^ (1i ^ var_1.a.b)));
    var var_3 = vec3<i32>(var_2.e.b, firstTrailingBit(u_input.a.x), ~(~_wgslsmith_sub_i32(i32(-1i) * -1i, _wgslsmith_mod_i32(1i, var_0.c.x))));
    return ~(~(~(~(var_0.a >> (vec4<u32>(arg_2.x, u_input.c.x, var_1.d, var_1.d) % vec4<u32>(32u))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec4<u32>(countOneBits(_wgslsmith_dot_vec4_u32(func_1(2147483647i, -453f, vec3<u32>(35764u, 1u, 22331u), vec3<f32>(402f, -603f, -366f)), abs(vec4<u32>(22478u, 39326u, u_input.b, 4294967295u)))), u_input.c.x, 1u, func_3(func_5(_wgslsmith_mult_i32(-1i, u_input.a.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(889f, -1404f, 735f) - vec3<f32>(1530f, -1245f, -543f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, 442f, -433f))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-195f, 559f, -2286f), vec3<f32>(2630f, -711f, 1723f))), false)))) * vec3<f32>(-1705f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(542f + -1149f) * -329f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(502f + -1556f) - _wgslsmith_f_op_f32(ceil(622f))))), u_input.a, !select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(any(vec4<bool>(false, false, true, false)), true)));
    var var_1 = 0u;
    var_1 = u_input.c.x;
    var var_2 = _wgslsmith_clamp_i32(reverseBits(select(reverseBits(64475i), ~global2[_wgslsmith_index_u32(98393u, 22u)], var_0.d.x)) ^ -global2[_wgslsmith_index_u32(abs(4294967295u), 22u)], global2[_wgslsmith_index_u32(77712u, 22u)], ~1i);
    let var_3 = ~58176u >> (u_input.c.x % 32u);
    var_2 = 2147483647i | global2[_wgslsmith_index_u32(34197u << (abs(_wgslsmith_dot_vec4_u32(func_5(global2[_wgslsmith_index_u32(var_0.a.x, 22u)]).a, var_0.a << (var_0.a % vec4<u32>(32u)))) % 32u), 22u)];
    var_2 = global2[_wgslsmith_index_u32(~5231u, 22u)];
    global2 = array<i32, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

