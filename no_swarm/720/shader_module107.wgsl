struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: i32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<bool>,
    d: vec2<u32>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_3,
    c: f32,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25>;

var<private> global1: array<bool, 23> = array<bool, 23>(false, false, false, false, false, false, true, true, false, false, false, false, true, false, false, true, false, true, false, false, false, false, true);

var<private> global2: Struct_1;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = Struct_5(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -110f), _wgslsmith_f_op_f32(860f * _wgslsmith_f_op_f32(min(-1111f, _wgslsmith_f_op_f32(f32(-1f) * -942f))))), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-393f + -1809f))), ~1i), -2265f, Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2169f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1244f * 874f))), !(!global0[_wgslsmith_index_u32(u_input.b.x, 25u)]))), u_input.d.x));
    let var_1 = 23425u;
    global1 = array<bool, 23>();
    let var_2 = _wgslsmith_f_op_f32(-var_0.b.a);
    let var_3 = firstTrailingBit(-(~(~u_input.c.x)) | u_input.d.x);
    return select(!vec3<bool>(var_3 > (6725i >> (u_input.b.x % 32u)), !(global1[_wgslsmith_index_u32(4294967295u, 23u)] | true), true), vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.a)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-648f))), global0[_wgslsmith_index_u32(4294967295u, 25u)], false), vec3<bool>(any(select(!vec2<bool>(global1[_wgslsmith_index_u32(global2.a, 23u)], global0[_wgslsmith_index_u32(u_input.b.x, 25u)]), vec2<bool>(global0[_wgslsmith_index_u32(var_1, 25u)], global0[_wgslsmith_index_u32(u_input.b.x, 25u)]), vec2<bool>(true, true))), any(!select(vec3<bool>(global0[_wgslsmith_index_u32(var_1, 25u)], global1[_wgslsmith_index_u32(arg_0.a, 23u)], false), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 25u)], global0[_wgslsmith_index_u32(arg_0.a, 25u)], true), vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 25u)], global1[_wgslsmith_index_u32(global2.a, 23u)]))), all(!select(vec2<bool>(global1[_wgslsmith_index_u32(56054u, 23u)], true), vec2<bool>(false, true), false))));
}

fn func_2(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: vec2<f32>) -> Struct_2 {
    var var_0 = global2.a;
    var var_1 = any(arg_0.c.zw);
    var var_2 = _wgslsmith_mult_vec4_u32(arg_0.b, ~(~(~arg_0.b)) & ~vec4<u32>(global2.a, u_input.b.x & global2.a, arg_0.d.x, arg_0.b.x & 65366u));
    global1 = array<bool, 23>();
    let var_3 = _wgslsmith_f_op_f32(138f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a * _wgslsmith_f_op_f32(floor(arg_2.a))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1347f + arg_2.a), 137f))) < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(642f, arg_3.x))))));
    return Struct_2(Struct_1(8157u), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(0u, var_2.x), _wgslsmith_mod_u32(var_2.x, var_2.x), var_2.x), ~(arg_0.b.ywz ^ var_2.zyx))), vec3<bool>(all(!func_3(Struct_1(arg_0.d.x))), var_3, !all(vec4<bool>(arg_0.c.x, global0[_wgslsmith_index_u32(1u, 25u)], global1[_wgslsmith_index_u32(var_2.x, 23u)], var_3))));
}

fn func_4(arg_0: Struct_2) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -298f) + _wgslsmith_f_op_f32(-1046f - 1880f)) - _wgslsmith_f_op_f32(-1000f - -147f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(1437f)))))), _wgslsmith_div_f32(934f, -482f)));
    let var_1 = Struct_1(128760u);
    var var_2 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-181f)) + _wgslsmith_f_op_f32(f32(-1f) * -548f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-513f + -576f) * _wgslsmith_f_op_f32(sign(261f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1052f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1220f, 328f)) + _wgslsmith_f_op_f32(-1000f - 389f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -248f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(644f))))));
    var var_3 = 0u;
    global1 = array<bool, 23>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.x), 1f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1188f) * 646f))));
}

fn func_5(arg_0: f32, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: u32) -> vec2<f32> {
    var var_0 = Struct_3(arg_1.a, _wgslsmith_div_i32(1i, 1i));
    var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) * 1000f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1138f - _wgslsmith_f_op_f32(-var_0.a)) * arg_0)), _wgslsmith_div_i32(max(_wgslsmith_add_i32(arg_1.b, countOneBits(2147483647i)), 0i), -1i));
    let var_1 = vec3<bool>(func_2(Struct_4(select(max(arg_2.xww, vec3<i32>(var_0.b, arg_2.x, -37957i)), ~vec3<i32>(15744i, -2147483647i, -38289i), true), ~(vec4<u32>(global2.a, 23710u, u_input.b.x, global2.a) << (vec4<u32>(62474u, 1u, arg_3, 0u) % vec4<u32>(32u))), !select(vec4<bool>(true, global1[_wgslsmith_index_u32(48725u, 23u)], false, global0[_wgslsmith_index_u32(global2.a, 25u)]), vec4<bool>(true, true, global1[_wgslsmith_index_u32(30768u, 23u)], false), global0[_wgslsmith_index_u32(1u, 25u)]), vec2<u32>(global2.a, ~global2.a)), vec2<i32>(max(-2147483647i, 0i), _wgslsmith_sub_i32(-2147483647i, _wgslsmith_sub_i32(arg_2.x, arg_2.x))), arg_1, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -1682f) * vec2<f32>(-1846f, arg_0))))))).c.x, global0[_wgslsmith_index_u32(~1u, 25u)], !any(vec4<bool>(true, true, true, true)));
    let var_2 = _wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(countOneBits(6043u), arg_3, _wgslsmith_mod_u32(0u, 696u))), ~(~(countOneBits(vec3<u32>(59961u, 1u, global2.a)) << ((u_input.b ^ vec3<u32>(global2.a, 1232u, 55654u)) % vec3<u32>(32u)))));
    var var_3 = Struct_1(~func_2(Struct_4(select(vec3<i32>(var_0.b, -43189i, -1i), vec3<i32>(-61738i, -2147483647i, -20838i), var_1.x), vec4<u32>(var_2.x, 0u, var_2.x, arg_3), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 23u)], false, global1[_wgslsmith_index_u32(var_2.x, 23u)], false), u_input.b.xx), u_input.c.zy, Struct_3(var_0.a, u_input.d.x ^ arg_2.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(586f, -738f)), vec2<f32>(var_0.a, arg_1.a), global0[_wgslsmith_index_u32(53371u, 25u)]))).b.a);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1700f), -1116f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, -2283f)) + vec2<f32>(333f, var_0.a))) + vec2<f32>(arg_1.a, arg_1.a)));
}

fn func_1(arg_0: vec3<u32>) -> u32 {
    var var_0 = Struct_1(39341u & arg_0.x);
    var var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-807f, -1009f)))) * _wgslsmith_f_op_vec2_f32(func_5(_wgslsmith_f_op_f32(func_4(func_2(Struct_4(u_input.c.yxx, vec4<u32>(arg_0.x, 3387u, var_0.a, global2.a), vec4<bool>(false, global0[_wgslsmith_index_u32(31093u, 25u)], global1[_wgslsmith_index_u32(4294967295u, 23u)], global1[_wgslsmith_index_u32(var_0.a, 23u)]), vec2<u32>(arg_0.x, var_0.a)), u_input.c.xz, Struct_3(599f, u_input.c.x), vec2<f32>(746f, 1554f)))), Struct_3(_wgslsmith_f_op_f32(-295f - 325f), 1i), ~countOneBits(u_input.c), countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 34462u, arg_0.x), vec3<u32>(arg_0.x, 0u, u_input.b.x)))))), Struct_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(934f * 1515f), 1f))), u_input.d.x ^ _wgslsmith_mult_i32(u_input.d.x, u_input.a)), _wgslsmith_f_op_f32(max(-456f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(472f)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), Struct_3(-219f, _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.d.x, -16587i), _wgslsmith_clamp_vec2_i32(u_input.d, u_input.c.yx, u_input.d)) << ((var_0.a | _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global2.a, 1u, arg_0.x), vec4<u32>(0u, global2.a, arg_0.x, 0u))) % 32u)));
    let var_2 = -380f;
    let var_3 = _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.b.xx, u_input.b.zz), firstTrailingBit(reverseBits(max(vec2<u32>(var_0.a, 4294967295u), vec2<u32>(29035u, 1u))))) >> (~(~vec2<u32>(1u, ~u_input.b.x)) % vec2<u32>(32u));
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(var_1.d.a)), _wgslsmith_f_op_f32(floor(895f)), _wgslsmith_f_op_f32(f32(-1f) * -729f)) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -588f, 1730f))))))));
    return ~_wgslsmith_div_u32(~var_0.a, 1u);
}

fn func_6(arg_0: i32, arg_1: u32) -> vec4<bool> {
    global0 = array<bool, 25>();
    global2 = Struct_1(~11283u);
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(func_5(-1024f, Struct_3(-1066f, i32(-1i) * -46113i), vec4<i32>(-5019i, countOneBits(arg_0), u_input.c.x, 55588i), firstTrailingBit(arg_1))).x, -18480i);
    return select(!select(select(!vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 25u)], global1[_wgslsmith_index_u32(arg_1, 23u)], false), select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 23u)], global1[_wgslsmith_index_u32(arg_1, 23u)], true, false), vec4<bool>(global0[_wgslsmith_index_u32(70851u, 25u)], true, true, global1[_wgslsmith_index_u32(u_input.b.x, 23u)]), true), select(vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 23u)], false, global1[_wgslsmith_index_u32(9883u, 23u)]), vec4<bool>(global1[_wgslsmith_index_u32(arg_1, 23u)], true, true, global0[_wgslsmith_index_u32(1u, 25u)]), true)), select(!vec4<bool>(global1[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(5572u, 25u)], global0[_wgslsmith_index_u32(arg_1, 25u)], false), vec4<bool>(false, global0[_wgslsmith_index_u32(arg_1, 25u)], false, global0[_wgslsmith_index_u32(4908u, 25u)]), true), select(!vec4<bool>(global1[_wgslsmith_index_u32(3667u, 23u)], false, global1[_wgslsmith_index_u32(44912u, 23u)], global0[_wgslsmith_index_u32(1u, 25u)]), !vec4<bool>(global1[_wgslsmith_index_u32(global2.a, 23u)], true, true, false), select(vec4<bool>(false, false, global1[_wgslsmith_index_u32(global2.a, 23u)], true), vec4<bool>(true, global0[_wgslsmith_index_u32(46597u, 25u)], false, global1[_wgslsmith_index_u32(global2.a, 23u)]), global1[_wgslsmith_index_u32(17769u, 23u)]))), !vec4<bool>(true, true, all(vec3<bool>(global1[_wgslsmith_index_u32(17531u, 23u)], true, false)), !(var_0.a == -513f)), select(select(select(vec4<bool>(global0[_wgslsmith_index_u32(arg_1, 25u)], false, global1[_wgslsmith_index_u32(global2.a, 23u)], global0[_wgslsmith_index_u32(37235u, 25u)]), select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 25u)], true, false), vec4<bool>(global1[_wgslsmith_index_u32(26175u, 23u)], global1[_wgslsmith_index_u32(58539u, 23u)], false, false), true), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(global2.a, 25u)], false, false)), !vec4<bool>(global1[_wgslsmith_index_u32(0u, 23u)], global1[_wgslsmith_index_u32(1u, 23u)], global1[_wgslsmith_index_u32(18022u, 23u)], true), global1[_wgslsmith_index_u32(global2.a, 23u)]), !vec4<bool>(u_input.c.x != u_input.c.x, true, global0[_wgslsmith_index_u32(max(0u, global2.a), 25u)], true), select(select(!vec4<bool>(true, false, global0[_wgslsmith_index_u32(45940u, 25u)], false), select(vec4<bool>(false, true, global1[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(u_input.b.x, 25u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(1u, 25u)], global1[_wgslsmith_index_u32(0u, 23u)]), vec4<bool>(global0[_wgslsmith_index_u32(21297u, 25u)], global1[_wgslsmith_index_u32(arg_1, 23u)], global0[_wgslsmith_index_u32(4294967295u, 25u)], false)), true), select(!vec4<bool>(global1[_wgslsmith_index_u32(0u, 23u)], global1[_wgslsmith_index_u32(63356u, 23u)], global0[_wgslsmith_index_u32(3851u, 25u)], global1[_wgslsmith_index_u32(arg_1, 23u)]), vec4<bool>(global1[_wgslsmith_index_u32(11249u, 23u)], global1[_wgslsmith_index_u32(u_input.b.x, 23u)], global1[_wgslsmith_index_u32(arg_1, 23u)], true), 2147483647i <= arg_0), min(var_0.b, arg_0) > 0i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(u_input.a >> (57583u % 32u), u_input.c.x);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-409f, -1999f)) * -837f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -307f) - _wgslsmith_f_op_f32(f32(-1f) * -943f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1f)))));
    let var_2 = 31713u;
    var var_3 = !select(func_6(firstLeadingBit(min(u_input.d.x, -8956i)), func_1(vec3<u32>(15768u, 81753u, u_input.b.x))), !func_6(var_0.x >> (u_input.b.x % 32u), abs(u_input.b.x)), global0[_wgslsmith_index_u32(1u >> (~_wgslsmith_mod_u32(u_input.b.x, var_2) % 32u), 25u)]);
    var var_4 = func_2(Struct_4(~(-_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, var_0.x, 1i), vec3<i32>(u_input.c.x, var_0.x, u_input.d.x))), vec4<u32>(4294967295u, u_input.b.x, 4294967295u, countOneBits(~var_2)), select(func_6(i32(-1i) * -10047i, 0u), vec4<bool>(true, any(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 23u)], var_3.x, true, global0[_wgslsmith_index_u32(19315u, 25u)])), all(vec3<bool>(false, false, global0[_wgslsmith_index_u32(0u, 25u)])), func_2(Struct_4(vec3<i32>(u_input.a, -40146i, 2147483647i), vec4<u32>(u_input.b.x, 4294967295u, 69704u, global2.a), vec4<bool>(false, false, var_3.x, false), u_input.b.yy), vec2<i32>(u_input.a, u_input.a), Struct_3(var_1, -1i), vec2<f32>(-108f, var_1)).c.x), !var_3.x), ~u_input.b.yx), _wgslsmith_add_vec2_i32(max(vec2<i32>(abs(2147483647i), ~41729i), ~vec2<i32>(var_0.x, var_0.x) ^ (u_input.c.xy >> (u_input.b.xx % vec2<u32>(32u)))), reverseBits(-var_0)), Struct_3(var_1, -1i), vec2<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(func_4(func_2(Struct_4(vec3<i32>(-1i, var_0.x, u_input.d.x), vec4<u32>(7937u, 4294967295u, u_input.b.x, 56473u), vec4<bool>(false, var_3.x, false, false), u_input.b.zy), u_input.d, Struct_3(487f, u_input.c.x), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1205f, -1000f), vec2<f32>(var_1, var_1))))))));
    global1 = array<bool, 23>();
    var_3 = vec4<bool>(all(!(!func_6(-22818i, var_4.b.a).wyy)), !any(vec2<bool>(all(vec3<bool>(global0[_wgslsmith_index_u32(var_2, 25u)], var_4.c.x, false)), var_1 <= var_1)), true, abs(var_2) > 12938u);
    global1 = array<bool, 23>();
    var_4 = func_2(Struct_4(vec3<i32>(-2147483647i, _wgslsmith_mult_i32(var_0.x, 1i) << (u_input.b.x % 32u), _wgslsmith_clamp_i32(var_0.x, var_0.x, u_input.d.x) | -13136i), vec4<u32>(~max(0u, 69521u), u_input.b.x, 4294967295u, abs(global2.a) >> (~var_4.b.a % 32u)), vec4<bool>(false, true, !any(vec4<bool>(var_3.x, true, global1[_wgslsmith_index_u32(var_4.a.a, 23u)], var_4.c.x)), global1[_wgslsmith_index_u32(select(var_2, u_input.b.x >> (33265u % 32u), u_input.a <= u_input.c.x), 23u)]), ~u_input.b.zy), ~u_input.c.yx << ((reverseBits(u_input.b.yy) ^ u_input.b.xx) % vec2<u32>(32u)), Struct_3(178f, 1i), vec2<f32>(var_1, var_1));
    let x = u_input.a;
    s_output = StorageBuffer(2409f);
}

