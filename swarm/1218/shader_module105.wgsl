struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec3<u32>,
    d: vec4<bool>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<f32>,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_1,
    c: f32,
    d: bool,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 17> = array<bool, 17>(true, true, true, false, false, true, true, true, false, false, false, false, false, true, false, false, false);

var<private> global1: array<f32, 27> = array<f32, 27>(-184f, -1000f, -1177f, 102f, 231f, -160f, -1273f, -458f, -1355f, 641f, -328f, 2547f, -2113f, 502f, -1012f, 1287f, 725f, 489f, -381f, -592f, 810f, 1457f, -218f, -392f, -181f, 236f, -662f);

var<private> global2: array<vec4<bool>, 23>;

var<private> global3: u32 = 1u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: vec4<bool>, arg_3: Struct_3) -> vec3<u32> {
    global2 = array<vec4<bool>, 23>();
    var var_0 = u_input.a.xzx;
    global0 = array<bool, 17>();
    var var_1 = !(!select(select(arg_1.e.b.a.d, vec4<bool>(false, true, arg_2.x, arg_3.a.a.d.x), global2[_wgslsmith_index_u32(u_input.c.x, 23u)]), select(vec4<bool>(false, false, false, false), !vec4<bool>(true, arg_2.x, false, true), arg_2), vec4<bool>(arg_1.b.d.x, true, any(vec4<bool>(global0[_wgslsmith_index_u32(arg_3.b.a.a.x, 17u)], global0[_wgslsmith_index_u32(arg_1.e.a.a.a.x, 17u)], false, false)), true)));
    let var_2 = _wgslsmith_add_vec4_u32(~vec4<u32>(20481u, 111723u, firstTrailingBit(~1u), u_input.c.x), _wgslsmith_div_vec4_u32(select(select(vec4<u32>(u_input.c.x, 69822u, 8228u, u_input.c.x), arg_1.e.a.a.a, vec4<bool>(false, arg_2.x, arg_3.a.a.b, arg_3.a.a.d.x)), vec4<u32>(19651u, u_input.c.x, 13404u, 35222u), vec4<bool>(arg_1.d, true, global0[_wgslsmith_index_u32(47310u, 17u)], arg_2.x)) & arg_3.b.a.a, ~arg_1.b.a));
    return max(abs(select(firstLeadingBit(var_2.zyw), vec3<u32>(~78695u, max(var_2.x, 21278u), select(var_2.x, 4294967295u, true)), arg_2.yxz)), arg_1.b.c);
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    let var_0 = Struct_3(Struct_2(Struct_1(vec4<u32>(~6548u, ~u_input.c.x, ~0u, _wgslsmith_clamp_u32(arg_0.a.a.x, arg_0.a.c.x, 56653u)), false | (true & arg_0.a.d.x), ~func_3(1292f, Struct_4(vec3<bool>(global0[_wgslsmith_index_u32(arg_0.a.a.x, 17u)], arg_0.a.b, arg_0.a.d.x), arg_0.a, global1[_wgslsmith_index_u32(28432u, 27u)], true, Struct_3(Struct_2(arg_0.a, 336f, vec2<f32>(-517f, -856f), arg_0.c), Struct_2(arg_0.a, global1[_wgslsmith_index_u32(4294967295u, 27u)], vec2<f32>(global1[_wgslsmith_index_u32(arg_0.a.c.x, 27u)], -983f), vec2<f32>(-157f, 2078f)))), vec4<bool>(arg_0.a.b, false, false, arg_0.a.d.x), Struct_3(arg_0, arg_0)), !(!vec4<bool>(false, global0[_wgslsmith_index_u32(arg_0.a.c.x, 17u)], true, arg_0.a.b)), ~(vec2<i32>(arg_0.a.e.x, arg_0.a.e.x) ^ vec2<i32>(arg_0.a.e.x, 0i))), 2650f, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(25002u, 27u)], 487f) - vec2<f32>(1216f, -1163f))), _wgslsmith_f_op_vec2_f32(floor(arg_0.c)), any(vec3<bool>(arg_0.a.b, false, false)) & true)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_0.d.x * global1[_wgslsmith_index_u32(70178u, 27u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(29093u, 27u)])), _wgslsmith_f_op_vec2_f32(ceil(arg_0.c)))), arg_0);
    let var_1 = ~(-2147483647i);
    global3 = min(var_0.b.a.c.x, 14138u);
    global0 = array<bool, 17>();
    let var_2 = Struct_4(!select(arg_0.a.d.zxz, vec3<bool>(global0[_wgslsmith_index_u32(1u, 17u)], any(vec4<bool>(false, false, true, var_0.b.a.d.x)), true), var_0.b.a.d.xxz), arg_0.a, -955f, _wgslsmith_clamp_i32(select(-24505i, _wgslsmith_dot_vec2_i32(vec2<i32>(45628i, u_input.a.x), vec2<i32>(var_0.b.a.e.x, arg_0.a.e.x)), true), abs(firstLeadingBit(var_0.a.a.e.x)), _wgslsmith_mod_i32(var_0.a.a.e.x, 34692i)) <= _wgslsmith_sub_i32(var_0.a.a.e.x, _wgslsmith_dot_vec3_i32(u_input.a.zwx, vec3<i32>(var_1, 3878i, -17079i))), var_0);
    return Struct_1(~(var_0.a.a.a & var_2.b.a), any(!select(vec2<bool>(global0[_wgslsmith_index_u32(7444u, 17u)], false), !arg_0.a.d.zw, var_1 > 1i)), var_2.e.a.a.a.wxx, global2[_wgslsmith_index_u32(~select(firstLeadingBit(_wgslsmith_sub_u32(var_0.a.a.a.x, var_0.b.a.a.x)), firstLeadingBit(arg_0.a.a.x), false), 23u)], ~_wgslsmith_sub_vec2_i32(u_input.a.xw, arg_0.a.e) >> (var_0.a.a.a.ww % vec2<u32>(32u)));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: u32) -> f32 {
    global3 = _wgslsmith_div_u32(_wgslsmith_sub_u32(arg_1, _wgslsmith_mod_u32(arg_2, ~77075u)), max(1u, arg_1) >> (_wgslsmith_clamp_u32(8875u, 1u, arg_1) % 32u));
    var var_0 = u_input.a.x;
    global3 = abs(arg_1);
    let var_1 = vec2<u32>(~arg_0.a.x, max(arg_2, arg_2));
    var var_2 = vec3<i32>(func_2(Struct_2(Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 49732u, 34935u, 4294967295u), vec4<u32>(75558u, arg_1, var_1.x, u_input.c.x)), global0[_wgslsmith_index_u32(70973u, 17u)], vec3<u32>(1u, 75704u, 4294967295u), arg_0.d, max(vec2<i32>(36811i, -2147483647i), vec2<i32>(40927i, arg_0.e.x))), -2144f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(704f, 287f)) + vec2<f32>(-1726f, global1[_wgslsmith_index_u32(4294967295u, 27u)])), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-533f, 642f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(331u, 27u)], global1[_wgslsmith_index_u32(7262u, 27u)]) + vec2<f32>(1000f, global1[_wgslsmith_index_u32(arg_2, 27u)]))))).e.x, countOneBits(_wgslsmith_add_i32(-u_input.b, 1i)), ~u_input.a.x);
    return 752f;
}

fn func_5(arg_0: vec4<bool>, arg_1: i32, arg_2: vec4<f32>) -> Struct_4 {
    global1 = array<f32, 27>();
    var var_0 = Struct_3(Struct_2(func_2(Struct_2(func_2(Struct_2(Struct_1(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 62564u), global0[_wgslsmith_index_u32(u_input.c.x, 17u)], vec3<u32>(u_input.c.x, 5081u, u_input.c.x), arg_0, u_input.a.zx), -1000f, vec2<f32>(131f, -130f), vec2<f32>(global1[_wgslsmith_index_u32(0u, 27u)], -312f))), _wgslsmith_f_op_f32(-arg_2.x), vec2<f32>(328f, 1635f), _wgslsmith_f_op_vec2_f32(-arg_2.zx))), 1f, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2.x, -1123f), _wgslsmith_f_op_vec2_f32(round(arg_2.wx)), arg_0.wz)), arg_2.wy), Struct_2(func_2(Struct_2(Struct_1(vec4<u32>(u_input.c.x, 37598u, u_input.c.x, 39268u), arg_0.x, vec3<u32>(3766u, u_input.c.x, 12835u), arg_0, u_input.a.zz), _wgslsmith_f_op_f32(730f - arg_2.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, 609f) + arg_2.yz), vec2<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 27u)], 1593f))), global1[_wgslsmith_index_u32(~firstTrailingBit(~4294967295u), 27u)], vec2<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~0u, 27u)] * _wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_f32(-1000f + -645f)), arg_2.xy));
    var var_1 = var_0.a;
    var var_2 = var_0.a.a;
    var_0 = Struct_3(var_0.b, Struct_2(Struct_1(vec4<u32>(abs(var_0.b.a.a.x), 50159u >> (var_2.c.x % 32u), _wgslsmith_add_u32(119u, u_input.c.x), var_2.a.x & var_2.a.x), all(var_2.d) && var_2.d.x, ~var_0.b.a.a.yzx ^ var_2.a.xyw, var_1.a.d, var_0.a.a.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1303f - var_1.d.x) + arg_2.x), var_0.b.d, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1072f)), _wgslsmith_f_op_f32(step(arg_2.x, _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(var_0.b.a.a.x, 27u)], -994f)))))));
    return Struct_4(var_1.a.d.yzw, func_2(Struct_2(func_2(var_0.b), _wgslsmith_f_op_f32(-444f + -546f), vec2<f32>(_wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(var_0.b.b + 1680f)), arg_2.wz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(var_1.a, func_2(Struct_2(var_1.a, 1426f, vec2<f32>(var_0.b.b, global1[_wgslsmith_index_u32(0u, 27u)]), var_0.a.c)).a.x, ~max(var_2.a.x, 23659u)))), abs(var_2.a.x) > ~_wgslsmith_dot_vec4_u32(var_1.a.a, abs(var_1.a.a)), Struct_3(var_0.b, Struct_2(Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.b.a.c.x, 4294967295u, u_input.c.x, 4294967295u), var_0.a.a.a), true, vec3<u32>(var_0.a.a.c.x, u_input.c.x, 4294967295u), var_0.b.a.d, var_1.a.e), 429f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(2252f, var_0.a.c.x))) + _wgslsmith_f_op_vec2_f32(var_1.d + var_1.d)), arg_2.yy)));
}

fn func_1() -> vec3<u32> {
    var var_0 = func_5(global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(20717u, ~u_input.c.x), 23u)], u_input.a.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(336f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~17759u, 27u)]), _wgslsmith_f_op_f32(func_4(func_2(Struct_2(Struct_1(vec4<u32>(1u, u_input.c.x, 4294967295u, u_input.c.x), global0[_wgslsmith_index_u32(u_input.c.x, 17u)], vec3<u32>(53565u, u_input.c.x, u_input.c.x), global2[_wgslsmith_index_u32(u_input.c.x, 23u)], vec2<i32>(u_input.a.x, u_input.b)), -524f, vec2<f32>(-1368f, 247f), vec2<f32>(1605f, -2345f))), u_input.c.x, 4294967295u)), global1[_wgslsmith_index_u32(firstLeadingBit(u_input.c.x) ^ ~13705u, 27u)])));
    let var_1 = var_0.b.d;
    let var_2 = var_0.e.a.a;
    var var_3 = func_5(var_0.e.a.a.d, _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.e.x, reverseBits(1i), -2147483647i), -vec3<i32>(-2147483647i, 1i, u_input.a.x)), vec4<f32>(_wgslsmith_f_op_f32(-914f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c.x, 27u)] - var_0.c) * -1711f)), global1[_wgslsmith_index_u32(59582u, 27u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(var_2.c.x, 27u)]))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2251f * _wgslsmith_f_op_f32(var_0.e.b.d.x * global1[_wgslsmith_index_u32(var_2.c.x, 27u)])), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(48655u, 27u)], 2044f), var_0.e.b.b)))))).e.a.a;
    let var_4 = var_0.c <= 257f;
    return abs(firstLeadingBit(var_0.e.a.a.a.xww));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -284f;
    global0 = array<bool, 17>();
    global1 = array<f32, 27>();
    global0 = array<bool, 17>();
    var var_1 = ~(~_wgslsmith_sub_vec3_u32(~(~vec3<u32>(u_input.c.x, 1u, 1u)), abs(vec3<u32>(u_input.c.x, 1u, u_input.c.x))));
    global2 = array<vec4<bool>, 23>();
    var_1 = select(_wgslsmith_mod_vec3_u32(vec3<u32>(~4294967295u, u_input.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(25976u, 4294967295u), u_input.c)), func_1()) ^ ~_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.x, 28413u, u_input.c.x), _wgslsmith_mod_vec3_u32(vec3<u32>(25081u, 0u, var_1.x), vec3<u32>(66078u, var_1.x, 4294967295u))), _wgslsmith_add_vec3_u32(vec3<u32>(var_1.x, 1u, _wgslsmith_mult_u32(7298u, max(1u, 1u))), ~abs(~vec3<u32>(u_input.c.x, var_1.x, 0u))), select(!select(func_2(Struct_2(Struct_1(vec4<u32>(1u, 62062u, u_input.c.x, 4294967295u), true, vec3<u32>(0u, 1u, var_1.x), vec4<bool>(global0[_wgslsmith_index_u32(var_1.x, 17u)], global0[_wgslsmith_index_u32(230u, 17u)], true, false), vec2<i32>(u_input.b, u_input.b)), var_0, vec2<f32>(-597f, global1[_wgslsmith_index_u32(var_1.x, 27u)]), vec2<f32>(global1[_wgslsmith_index_u32(var_1.x, 27u)], -1518f))).d.www, vec3<bool>(true, true, true), global0[_wgslsmith_index_u32(func_5(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 17u)], global0[_wgslsmith_index_u32(0u, 17u)], global0[_wgslsmith_index_u32(u_input.c.x, 17u)], global0[_wgslsmith_index_u32(var_1.x, 17u)]), u_input.b, vec4<f32>(-1484f, global1[_wgslsmith_index_u32(61512u, 27u)], var_0, 1405f)).b.c.x, 17u)]), vec3<bool>(any(select(vec3<bool>(true, false, global0[_wgslsmith_index_u32(9574u, 17u)]), vec3<bool>(global0[_wgslsmith_index_u32(var_1.x, 17u)], true, true), vec3<bool>(global0[_wgslsmith_index_u32(18586u, 17u)], true, global0[_wgslsmith_index_u32(var_1.x, 17u)]))), false, false == func_2(Struct_2(Struct_1(vec4<u32>(4294967295u, 65579u, 1u, u_input.c.x), false, vec3<u32>(0u, 29704u, 12004u), vec4<bool>(false, false, global0[_wgslsmith_index_u32(3225u, 17u)], true), vec2<i32>(-1i, u_input.b)), 697f, vec2<f32>(455f, var_0), vec2<f32>(-1430f, global1[_wgslsmith_index_u32(54102u, 27u)]))).d.x), !(-u_input.a.x > u_input.a.x)));
    global0 = array<bool, 17>();
    let var_2 = Struct_2(func_5(select(global2[_wgslsmith_index_u32(~0u, 23u)], func_5(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 17u)], global0[_wgslsmith_index_u32(var_1.x, 17u)], global0[_wgslsmith_index_u32(var_1.x, 17u)], global0[_wgslsmith_index_u32(28229u, 17u)]), max(u_input.a.x, -1i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2172f, var_0, -480f, var_0))).b.d, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.c.x, 9461u), ~4294967295u), 17u)]), ~(-27575i), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1235f, global1[_wgslsmith_index_u32(4294967295u, 27u)], -1097f, var_0)))))).e.b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_1.x, 27u)] + 1299f)))) * -2092f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0, 443f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-115f, global1[_wgslsmith_index_u32(1u, 27u)]), vec2<f32>(-1048f, 505f))))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 27u)], 1098f)))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(var_1.x, 27u)], global1[_wgslsmith_index_u32(0u, 27u)]) - vec2<f32>(global1[_wgslsmith_index_u32(0u, 27u)], global1[_wgslsmith_index_u32(0u, 27u)])) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(var_1.x, 27u)], var_0))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0, global1[_wgslsmith_index_u32(var_1.x, 27u)]), vec2<f32>(-244f, global1[_wgslsmith_index_u32(u_input.c.x, 27u)]))))), vec2<f32>(1431f, var_0))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~reverseBits(_wgslsmith_add_i32(u_input.b, var_2.a.e.x))), 1i, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(3911u, 27u)], -965f)) - _wgslsmith_f_op_f32(1311f - 1171f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.d.x * 856f), _wgslsmith_f_op_f32(-417f - var_2.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1342f + var_0)), 700f) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1652f, global1[_wgslsmith_index_u32(var_2.a.a.x, 27u)], var_2.b, 1746f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(925f, var_0, 853f, var_0))))));
}

