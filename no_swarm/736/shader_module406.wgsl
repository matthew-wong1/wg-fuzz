struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23> = array<bool, 23>(false, true, true, true, false, false, true, false, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true);

var<private> global1: array<u32, 10>;

var<private> global2: array<vec3<i32>, 17>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec2<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1699f * -125f))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(211f))))))), u_input.a.x, u_input.d.x);
    global1 = array<u32, 10>();
    var var_1 = 2147483647i;
    var var_2 = true;
    let var_3 = 554f;
    return _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.a, _wgslsmith_f_op_f32(select(242f, var_3, global0[_wgslsmith_index_u32(77101u, 23u)])))))))));
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2) -> Struct_2 {
    global0 = array<bool, 23>();
    let var_0 = Struct_1(214f, arg_2.c.x, _wgslsmith_add_i32(-4739i, -54652i));
    var var_1 = 1u;
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1531f, 165f))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(func_3()))));
    var var_3 = ~max(vec4<u32>(max(_wgslsmith_add_u32(23348u, u_input.c), ~55805u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.c.x, 1u, 1u), arg_2.c), ~(~18143u), u_input.e.x), u_input.a);
    return arg_2;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: u32, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = 367f;
    global1 = array<u32, 10>();
    global0 = array<bool, 23>();
    let var_1 = _wgslsmith_dot_vec4_u32(u_input.a, _wgslsmith_div_vec4_u32(vec4<u32>(min(u_input.a.x ^ u_input.c, 39433u), ~_wgslsmith_div_u32(global1[_wgslsmith_index_u32(u_input.c, 10u)], u_input.c), ~(~300u), firstTrailingBit(~28701u)), select(vec4<u32>(6585u, 0u, firstLeadingBit(4294967295u), u_input.c), abs(vec4<u32>(1u, arg_2, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(20543u, 10u)], 10u)], arg_2)), arg_0)));
    let var_2 = _wgslsmith_sub_u32(~(global1[_wgslsmith_index_u32(~12050u, 10u)] | ~0u) & 4294967295u, ~min(_wgslsmith_sub_u32(11652u, ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1, 10u)], 10u)]), ~4294967295u));
    return Struct_1(var_0, ~(select(u_input.a.x, 14309u, true) | var_1) >> (global1[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(22464u, 10u)], u_input.e.x)) & arg_1.c.x, 10u)] % 32u), (abs(-24395i) & (firstLeadingBit(2147483647i) << (reverseBits(arg_1.c.x) % 32u))) ^ u_input.b.x);
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<bool>) -> Struct_1 {
    global2 = array<vec3<i32>, 17>();
    let var_0 = _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(~u_input.e, vec2<u32>(_wgslsmith_div_u32(1u << (1u % 32u), 25473u), _wgslsmith_sub_u32(~arg_2.b, global1[_wgslsmith_index_u32(~42291u, 10u)]))), _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(select(vec4<u32>(arg_2.b, global1[_wgslsmith_index_u32(2627u, 10u)], global1[_wgslsmith_index_u32(arg_1.b, 10u)], global1[_wgslsmith_index_u32(1u, 10u)]), vec4<u32>(arg_2.b, 0u, arg_2.b, arg_2.b), vec4<bool>(arg_3.x, global0[_wgslsmith_index_u32(0u, 23u)], false, global0[_wgslsmith_index_u32(arg_2.b, 23u)])), u_input.a), _wgslsmith_mod_u32(arg_1.b, 1u) << (reverseBits(0u) % 32u)), ~vec2<u32>(78936u << (u_input.a.x % 32u), 9103u)));
    global0 = array<bool, 23>();
    let var_1 = func_2(Struct_2(_wgslsmith_f_op_f32(max(-1810f, _wgslsmith_f_op_f32(trunc(func_4(arg_3, Struct_2(arg_1.a, vec3<bool>(arg_0, false, arg_3.x), u_input.a.zww), 36499u, arg_3.zz).a)))), !vec3<bool>(!global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 10u)], 23u)], !arg_3.x, arg_3.x), vec3<u32>(4294967295u, 4294967295u, 4294967295u)), arg_0, func_2(func_2(Struct_2(func_4(arg_3, Struct_2(arg_1.a, vec3<bool>(false, true, true), vec3<u32>(u_input.a.x, u_input.c, 4294967295u)), arg_2.b, vec2<bool>(global0[_wgslsmith_index_u32(arg_2.b, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)])).a, !arg_3.zyz, vec3<u32>(arg_2.b, arg_1.b, 4294967295u)), !(431f == arg_1.a), func_2(func_2(Struct_2(arg_1.a, vec3<bool>(global0[_wgslsmith_index_u32(arg_2.b, 23u)], false, arg_0), u_input.a.yzy), true, Struct_2(arg_1.a, arg_3.zxz, u_input.a.wwy)), !arg_3.x, func_2(Struct_2(arg_1.a, vec3<bool>(arg_0, arg_0, false), u_input.a.xwx), true, Struct_2(arg_1.a, arg_3.yxw, u_input.a.zxw)))), arg_0, func_2(func_2(func_2(Struct_2(arg_2.a, vec3<bool>(arg_0, arg_0, global0[_wgslsmith_index_u32(u_input.a.x, 23u)]), vec3<u32>(u_input.a.x, 1u, 5201u)), true, Struct_2(arg_2.a, arg_3.xxw, vec3<u32>(46593u, 89793u, 21982u))), true, func_2(Struct_2(2443f, arg_3.wwz, vec3<u32>(arg_2.b, global1[_wgslsmith_index_u32(arg_2.b, 10u)], 158u)), true, Struct_2(arg_1.a, arg_3.zxz, vec3<u32>(arg_2.b, 74411u, 37999u)))), arg_3.x && true, func_2(Struct_2(146f, vec3<bool>(false, true, false), vec3<u32>(13709u, var_0.x, 4294967295u)), u_input.b.x <= 0i, func_2(Struct_2(-136f, arg_3.zzx, u_input.a.zyw), global0[_wgslsmith_index_u32(10031u, 23u)], Struct_2(arg_2.a, arg_3.wxy, u_input.a.zxy))))));
    let var_2 = _wgslsmith_add_vec3_u32(select(vec3<u32>(~(~var_0.x), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, u_input.a.x), 10u)], 1993u << ((arg_2.b | 1u) % 32u)), u_input.a.yxw, func_2(var_1, true, func_2(Struct_2(arg_1.a, vec3<bool>(arg_0, true, global0[_wgslsmith_index_u32(21878u, 23u)]), u_input.a.yyw), false | var_1.b.x, Struct_2(-1343f, var_1.b, vec3<u32>(12975u, u_input.c, 28623u)))).b), var_1.c);
    return arg_2;
}

fn func_6(arg_0: vec2<u32>, arg_1: Struct_1) -> vec3<bool> {
    global1 = array<u32, 10>();
    var var_0 = vec4<i32>(17036i, arg_1.c, reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, _wgslsmith_div_i32(-1i, u_input.d.x), _wgslsmith_sub_i32(-25119i, -12607i), ~u_input.d.x), ~min(vec4<i32>(-29425i, -2147483647i, arg_1.c, arg_1.c), u_input.d))), _wgslsmith_mod_i32(u_input.b.x, u_input.b.x));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(-770f)), _wgslsmith_mult_u32(func_4(vec4<bool>(all(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(1229u, 23u)])), !global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(103057u, 10u)], 23u)] & global0[_wgslsmith_index_u32(0u, 23u)], any(vec2<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.x, 10u)], 23u)], global0[_wgslsmith_index_u32(u_input.e.x, 23u)]))), Struct_2(-1007f, select(vec3<bool>(true, true, true), vec3<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.x, 10u)], 23u)], false, global0[_wgslsmith_index_u32(4294967295u, 23u)]), global0[_wgslsmith_index_u32(4294967295u, 23u)]), u_input.a.yyz), ~(31144u & global1[_wgslsmith_index_u32(arg_1.b, 10u)]), select(func_2(Struct_2(arg_1.a, vec3<bool>(global0[_wgslsmith_index_u32(49096u, 23u)], true, global0[_wgslsmith_index_u32(4294967295u, 23u)]), u_input.a.xwy), true, Struct_2(arg_1.a, vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 23u)], false), vec3<u32>(arg_0.x, arg_1.b, 23721u))).b.xx, vec2<bool>(true, true), vec2<bool>(true, true))).b, global1[_wgslsmith_index_u32(arg_1.b, 10u)]), 30887i);
    global2 = array<vec3<i32>, 17>();
    global2 = array<vec3<i32>, 17>();
    return select(vec3<bool>(any(select(vec4<bool>(global0[_wgslsmith_index_u32(arg_1.b, 23u)], global0[_wgslsmith_index_u32(u_input.e.x, 23u)], false, global0[_wgslsmith_index_u32(0u, 23u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(arg_1.b, 23u)], global0[_wgslsmith_index_u32(arg_1.b, 23u)], true), true)), false, all(select(func_2(Struct_2(-1348f, vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 23u)], false, true), u_input.a.zxy), false, Struct_2(1000f, vec3<bool>(global0[_wgslsmith_index_u32(34604u, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(arg_0.x, 23u)]), u_input.a.zww)).b, vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.e.x, 23u)], global0[_wgslsmith_index_u32(u_input.e.x, 23u)]), vec3<bool>(global0[_wgslsmith_index_u32(1584u, 23u)], false, true)))), !(!(!select(vec3<bool>(true, true, global0[_wgslsmith_index_u32(1u, 23u)]), vec3<bool>(global0[_wgslsmith_index_u32(var_1.b, 23u)], true, global0[_wgslsmith_index_u32(0u, 23u)]), vec3<bool>(false, false, global0[_wgslsmith_index_u32(u_input.e.x, 23u)])))), !select(func_2(func_2(Struct_2(arg_1.a, vec3<bool>(false, global0[_wgslsmith_index_u32(52596u, 23u)], global0[_wgslsmith_index_u32(arg_1.b, 23u)]), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], arg_0.x, var_1.b)), true, Struct_2(var_1.a, vec3<bool>(false, true, false), u_input.a.xzz)), arg_1.a >= -1428f, Struct_2(arg_1.a, vec3<bool>(true, true, false), u_input.a.xwy)).b, !select(vec3<bool>(true, false, false), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.e.x, 23u)], false), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 23u)], global0[_wgslsmith_index_u32(arg_1.b, 23u)])), global0[_wgslsmith_index_u32(arg_0.x, 23u)]));
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -576f), 1444f);
    global2 = array<vec3<i32>, 17>();
    var var_1 = Struct_2(var_0, func_6(u_input.a.yx, func_5(!all(vec3<bool>(true, false, false)), func_4(select(vec4<bool>(global0[_wgslsmith_index_u32(37387u, 23u)], false, global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(19814u, 23u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 23u)], global0[_wgslsmith_index_u32(u_input.c, 23u)], false, global0[_wgslsmith_index_u32(4294967295u, 23u)]), true), func_2(Struct_2(-1102f, vec3<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.e.x, 10u)], 10u)], 10u)], 10u)], 23u)], global0[_wgslsmith_index_u32(1u, 23u)], true), vec3<u32>(global1[_wgslsmith_index_u32(28849u, 10u)], u_input.c, u_input.c)), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 10u)], 10u)], 23u)], Struct_2(var_0, vec3<bool>(false, false, global0[_wgslsmith_index_u32(4294967295u, 23u)]), u_input.a.zwx)), abs(0u), vec2<bool>(false, global0[_wgslsmith_index_u32(34199u, 23u)])), func_4(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 23u)], true, true, false), func_2(Struct_2(var_0, vec3<bool>(true, false, true), u_input.a.yyw), global0[_wgslsmith_index_u32(u_input.a.x, 23u)], Struct_2(188f, vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 23u)], true), vec3<u32>(u_input.a.x, u_input.c, 1u))), ~u_input.c, !vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.e.x, 23u)])), select(!vec4<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 10u)], 10u)], 23u)], global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)]), select(vec4<bool>(true, false, false, true), vec4<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(22496u, 10u)], 23u)], global0[_wgslsmith_index_u32(u_input.e.x, 23u)], global0[_wgslsmith_index_u32(86409u, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)]), vec4<bool>(false, true, global0[_wgslsmith_index_u32(2537u, 23u)], true)), global0[_wgslsmith_index_u32(57684u, 23u)] || false))), u_input.a.zxw);
    var_1 = Struct_2(func_5(false, func_5(false, func_5(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, u_input.e.x), 23u)], Struct_1(-285f, 1838u, arg_0), func_4(vec4<bool>(false, true, false, var_1.b.x), Struct_2(-453f, var_1.b, u_input.a.yxx), u_input.c, var_1.b.yx), select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 23u)], var_1.b.x, false, true), vec4<bool>(true, global0[_wgslsmith_index_u32(49653u, 23u)], false, global0[_wgslsmith_index_u32(12853u, 23u)]), var_1.b.x)), Struct_1(_wgslsmith_f_op_f32(1155f - var_0), ~0u, -u_input.b.x), select(vec4<bool>(var_1.b.x, global0[_wgslsmith_index_u32(u_input.c, 23u)], true, true), vec4<bool>(global0[_wgslsmith_index_u32(24137u, 23u)], true, true, false), true)), Struct_1(var_0, ~(1u << (0u % 32u)), _wgslsmith_mod_i32(firstLeadingBit(6884i), arg_0 & 0i)), select(!select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 23u)], true, false, var_1.b.x), vec4<bool>(false, true, false, global0[_wgslsmith_index_u32(63333u, 23u)]), global0[_wgslsmith_index_u32(53978u, 23u)]), !(!vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, global0[_wgslsmith_index_u32(44161u, 23u)])), true)).a, !vec3<bool>(select(true, global0[_wgslsmith_index_u32(1u, 23u)], any(vec3<bool>(global0[_wgslsmith_index_u32(var_1.c.x, 23u)], true, false))), false, any(vec4<bool>(global0[_wgslsmith_index_u32(var_1.c.x, 23u)], var_1.b.x, global0[_wgslsmith_index_u32(u_input.e.x, 23u)], true)) & any(vec4<bool>(false, var_1.b.x, var_1.b.x, var_1.b.x))), _wgslsmith_sub_vec3_u32(~vec3<u32>(2411u, var_1.c.x, u_input.c), _wgslsmith_mod_vec3_u32(var_1.c << (u_input.a.zzz % vec3<u32>(32u)), vec3<u32>(1u, 1u, 1u))) | select(firstLeadingBit(abs(u_input.a.yzy)), _wgslsmith_mult_vec3_u32(vec3<u32>(var_1.c.x, 42363u, var_1.c.x), _wgslsmith_sub_vec3_u32(u_input.a.yxy, var_1.c)), !global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(var_1.c.x, 10u)], global1[_wgslsmith_index_u32(38922u, 10u)]), 23u)]));
    let var_2 = func_4(!(!vec4<bool>(func_6(vec2<u32>(31255u, u_input.e.x), Struct_1(-196f, var_1.c.x, 1i)).x, true, true, any(var_1.b))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -3471f)), select(vec3<bool>(!global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 10u)], 10u)], 23u)], var_1.b.x && global0[_wgslsmith_index_u32(var_1.c.x, 23u)], global0[_wgslsmith_index_u32(22170u << (0u % 32u), 23u)]), select(var_1.b, select(vec3<bool>(true, var_1.b.x, true), vec3<bool>(false, var_1.b.x, true), var_1.b), select(true, true, false)), var_1.b), u_input.a.ywx), 38812u, !(!func_6(~u_input.a.ww, func_5(true, Struct_1(2703f, var_1.c.x, u_input.b.x), Struct_1(133f, 1u, arg_0), vec4<bool>(global0[_wgslsmith_index_u32(546u, 23u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.e.x, 10u)], 23u)], true, false))).yz));
    return Struct_2(func_5(false, func_5(any(!var_1.b.zy), var_2, Struct_1(1022f, ~19440u, arg_0), !(!vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 23u)], true, global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)]))), func_4(select(!vec4<bool>(true, global0[_wgslsmith_index_u32(25794u, 23u)], true, var_1.b.x), select(vec4<bool>(false, global0[_wgslsmith_index_u32(var_1.c.x, 23u)], var_1.b.x, false), vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(32143u, 23u)]), var_1.b.x), all(vec4<bool>(var_1.b.x, var_1.b.x, false, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 10u)], 23u)]))), func_2(Struct_2(2027f, var_1.b, vec3<u32>(u_input.a.x, 129064u, 0u)), global0[_wgslsmith_index_u32(1u, 23u)], Struct_2(var_1.a, var_1.b, vec3<u32>(var_1.c.x, 0u, 64216u))), _wgslsmith_div_u32(3832u, 445u), !var_1.b.xx), !select(vec4<bool>(false, var_1.b.x, global0[_wgslsmith_index_u32(u_input.e.x, 23u)], false), select(vec4<bool>(global0[_wgslsmith_index_u32(16846u, 23u)], false, true, true), vec4<bool>(true, global0[_wgslsmith_index_u32(73357u, 23u)], var_1.b.x, global0[_wgslsmith_index_u32(1u, 23u)]), false), select(var_1.b.x, global0[_wgslsmith_index_u32(0u, 23u)], true))).a, !(!select(func_2(Struct_2(var_2.a, var_1.b, vec3<u32>(u_input.a.x, var_1.c.x, var_2.b)), true, Struct_2(-536f, vec3<bool>(true, var_1.b.x, var_1.b.x), var_1.c)).b, var_1.b, func_2(Struct_2(var_2.a, var_1.b, u_input.a.zyz), false, Struct_2(var_1.a, vec3<bool>(true, false, false), var_1.c)).b)), u_input.a.zxz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(-(-u_input.b.x & -36776i), u_input.d.x, 30493i, _wgslsmith_mod_i32(2147483647i ^ u_input.b.x, _wgslsmith_add_i32(~0i, firstTrailingBit(u_input.d.x)))), u_input.d);
    var var_1 = func_1(0i & u_input.d.x);
    var_0 = u_input.d;
    var var_2 = func_2(Struct_2(_wgslsmith_f_op_f32(floor(-1000f)), !vec3<bool>(global0[_wgslsmith_index_u32(0u, 23u)], false, !global0[_wgslsmith_index_u32(1u, 23u)]), vec3<u32>(countOneBits(_wgslsmith_div_u32(u_input.c, 48637u)), ~_wgslsmith_div_u32(23786u, u_input.e.x), 37478u)), select(false != any(!vec4<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 10u)], 23u)], true, global0[_wgslsmith_index_u32(1u, 23u)], false)), global0[_wgslsmith_index_u32(17654u, 23u)], true), func_2(Struct_2(var_1.a, !vec3<bool>(false, var_1.b.x, true), vec3<u32>(59342u, 1u & u_input.a.x, var_1.c.x)), var_1.b.x, Struct_2(var_1.a, var_1.b, vec3<u32>(~1u, ~u_input.c, ~global1[_wgslsmith_index_u32(var_1.c.x, 10u)])))).b;
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a - 2880f) - -532f))), var_1.b, u_input.a.wyx);
    var_2 = !(!vec3<bool>(_wgslsmith_add_i32(var_0.x, 11753i) >= min(u_input.d.x, 1i), var_1.b.x, false));
    var var_4 = !func_2(func_1(abs(var_0.x)), true, Struct_2(-976f, !var_1.b, vec3<u32>(1u, 1u, 4294967295u))).b.x || var_3.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.a, var_1.a, var_1.a, var_1.a)))))))), -1000f, _wgslsmith_f_op_vec2_f32(func_3()));
}

