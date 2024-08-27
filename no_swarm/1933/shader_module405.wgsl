struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: bool,
    d: vec4<i32>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
    d: vec4<i32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_2,
    c: Struct_1,
    d: vec3<f32>,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, false, true);

var<private> global1: vec3<f32>;

var<private> global2: array<Struct_4, 15> = array<Struct_4, 15>(Struct_4(vec2<u32>(73192u, 4294967295u), Struct_2(43533u, 1117f, true, vec4<i32>(-9746i, -40045i, -43230i, 33761i), vec4<bool>(false, true, false, false)), Struct_1(false), vec3<f32>(386f, -1092f, -961f), 1i), Struct_4(vec2<u32>(4294967295u, 1u), Struct_2(0u, -1195f, false, vec4<i32>(2147483647i, 37427i, -37182i, i32(-2147483648)), vec4<bool>(false, true, false, false)), Struct_1(false), vec3<f32>(-879f, -893f, -261f), -42026i), Struct_4(vec2<u32>(24813u, 4294967295u), Struct_2(45405u, -1312f, true, vec4<i32>(1i, 56572i, 1i, -15080i), vec4<bool>(false, false, false, true)), Struct_1(false), vec3<f32>(586f, 2710f, -209f), 5753i), Struct_4(vec2<u32>(28543u, 0u), Struct_2(4294967295u, 735f, false, vec4<i32>(i32(-2147483648), -6052i, 4414i, -31586i), vec4<bool>(true, true, false, false)), Struct_1(true), vec3<f32>(152f, 2827f, 1803f), i32(-2147483648)), Struct_4(vec2<u32>(4294967295u, 100131u), Struct_2(54034u, -271f, true, vec4<i32>(-32159i, 1i, 1i, 73880i), vec4<bool>(false, false, true, false)), Struct_1(false), vec3<f32>(-342f, 747f, -1102f), i32(-2147483648)), Struct_4(vec2<u32>(5193u, 54567u), Struct_2(4294967295u, 2174f, false, vec4<i32>(40765i, i32(-2147483648), 12606i, -81249i), vec4<bool>(false, true, true, true)), Struct_1(true), vec3<f32>(-351f, -262f, 770f), -29612i), Struct_4(vec2<u32>(4294967295u, 3130u), Struct_2(56111u, -402f, true, vec4<i32>(i32(-2147483648), i32(-2147483648), 2147483647i, 31342i), vec4<bool>(false, false, true, false)), Struct_1(false), vec3<f32>(1552f, -1033f, -329f), 0i), Struct_4(vec2<u32>(36215u, 122303u), Struct_2(70511u, -1605f, false, vec4<i32>(0i, -18386i, -1i, 0i), vec4<bool>(false, false, false, false)), Struct_1(true), vec3<f32>(-166f, -1092f, 1782f), 2147483647i), Struct_4(vec2<u32>(4294967295u, 29983u), Struct_2(12403u, -952f, true, vec4<i32>(-6074i, -30606i, 0i, 2147483647i), vec4<bool>(false, false, false, true)), Struct_1(false), vec3<f32>(1975f, 273f, 1049f), 2147483647i), Struct_4(vec2<u32>(4294967295u, 67676u), Struct_2(1u, -748f, false, vec4<i32>(-12362i, 21901i, 1i, -3293i), vec4<bool>(false, true, false, false)), Struct_1(true), vec3<f32>(882f, 228f, 118f), 17711i), Struct_4(vec2<u32>(30290u, 41923u), Struct_2(4294967295u, 921f, false, vec4<i32>(39755i, -42168i, 0i, -36720i), vec4<bool>(true, true, true, true)), Struct_1(false), vec3<f32>(543f, 1090f, -361f), -1i), Struct_4(vec2<u32>(7428u, 0u), Struct_2(27488u, -234f, true, vec4<i32>(1i, 35484i, i32(-2147483648), -16249i), vec4<bool>(false, false, true, true)), Struct_1(false), vec3<f32>(1491f, 370f, -365f), 2147483647i), Struct_4(vec2<u32>(4294967295u, 52468u), Struct_2(4294967295u, 584f, true, vec4<i32>(-49644i, 1i, i32(-2147483648), 39800i), vec4<bool>(false, true, true, true)), Struct_1(true), vec3<f32>(918f, -871f, -1509f), 2147483647i), Struct_4(vec2<u32>(76213u, 4294967295u), Struct_2(99537u, -649f, false, vec4<i32>(-13490i, 0i, -1i, -46284i), vec4<bool>(false, false, true, true)), Struct_1(false), vec3<f32>(580f, 1189f, -690f), 1i), Struct_4(vec2<u32>(4294967295u, 38688u), Struct_2(34668u, -1450f, true, vec4<i32>(i32(-2147483648), 5068i, 6734i, i32(-2147483648)), vec4<bool>(false, false, false, true)), Struct_1(true), vec3<f32>(-2083f, -1028f, -1099f), 27778i));

var<private> global3: array<f32, 26>;

var<private> global4: Struct_4;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: u32, arg_3: vec4<u32>) -> vec4<bool> {
    global2 = array<Struct_4, 15>();
    global2 = array<Struct_4, 15>();
    var var_0 = global4.c.a;
    return !select(select(select(!vec4<bool>(global4.b.c, global4.b.e.x, false, false), vec4<bool>(global4.c.a, global4.c.a, false, true), !global4.b.e), global4.b.e, global4.b.c), !vec4<bool>(any(global0.zxw), true | global0.x, global0.x, select(global4.b.c, true, false)), true);
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_3(global4.b, global4.b, global0.x, global4.b.d, Struct_2(~(~0u) ^ max(u_input.d.x, 4294967295u), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(1338f, _wgslsmith_f_op_f32(-global4.b.b))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f - 1864f))))), false, vec4<i32>((u_input.c & 0i) | -19943i, ~_wgslsmith_sub_i32(u_input.c, 60353i), i32(-1i) * -55710i, global4.e), func_3(u_input.a, vec4<f32>(_wgslsmith_f_op_f32(-3370f - 281f), _wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(u_input.b, 26u)])), _wgslsmith_f_op_f32(-1657f + 1919f), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global4.b.a, 26u)] - global4.b.b)), ~global4.b.a, firstLeadingBit(~vec4<u32>(global4.a.x, 4294967295u, 27103u, 31289u)))));
    global2 = array<Struct_4, 15>();
    global0 = vec4<bool>(func_3(-global4.b.d.xyy, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1849f, global4.b.b, -1086f, global1.x)), vec4<f32>(841f, global1.x, -1781f, global1.x))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(4294967295u, 26u)], global3[_wgslsmith_index_u32(4294967295u, 26u)], global4.d.x, global1.x))))), ~(~u_input.b), vec4<u32>(~u_input.d.x, u_input.b, u_input.d.x, 1u)).x, false, select(all(vec2<bool>(global0.x & true, u_input.b < 25426u)), false, any(select(global4.b.e.yz, select(vec2<bool>(var_0.b.e.x, true), global4.b.e.yw, false), global4.b.e.yz))), !(all(!global0.xxw) & global0.x));
    let var_1 = vec4<i32>(u_input.a.x, max(_wgslsmith_clamp_i32(_wgslsmith_add_i32(-u_input.c, _wgslsmith_clamp_i32(6142i, 0i, var_0.a.d.x)), global4.e << (_wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(global4.a.x, 1u)) % 32u), _wgslsmith_sub_i32(-2147483647i, max(-42445i, -21366i))), ~_wgslsmith_div_i32(var_0.d.x, var_0.e.d.x) & ~min(-2147483647i, -17207i)), var_0.b.d.x, i32(-1i) * -_wgslsmith_mod_i32(firstTrailingBit(1i), var_0.a.d.x));
    var var_2 = Struct_2(1u, _wgslsmith_f_op_f32(338f + -720f), !(!any(vec3<bool>(global4.b.e.x, global0.x, true))) & any(vec4<bool>(u_input.b >= u_input.b, global0.x & false, true || global4.b.e.x, var_0.a.e.x)), vec4<i32>(min(51002i, 0i), -_wgslsmith_dot_vec3_i32(vec3<i32>(-8520i, -1i, u_input.a.x), max(vec3<i32>(-33999i, 2147483647i, 934i), vec3<i32>(28748i, var_0.d.x, var_0.d.x))), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, global4.e, 5667i, u_input.a.x), _wgslsmith_clamp_vec4_i32(var_1, global4.b.d, vec4<i32>(u_input.a.x, global4.e, -836i, -7857i))), var_1), -var_1.x), !(!vec4<bool>(true, true, var_0.a.a < 1u, global4.c.a)));
    return var_0;
}

fn func_1(arg_0: vec4<u32>) -> Struct_3 {
    var var_0 = ~(arg_0.x & global4.a.x);
    var var_1 = func_2();
    let var_2 = Struct_1(false);
    var var_3 = -((vec3<i32>(-1i) * -(~global4.b.d.yxx)) ^ u_input.a);
    var var_4 = vec4<i32>(var_3.x, var_1.b.d.x, ~2147483647i, u_input.c);
    return func_2();
}

fn func_4(arg_0: bool, arg_1: Struct_3) -> f32 {
    global3 = array<f32, 26>();
    global1 = vec3<f32>(_wgslsmith_f_op_f32(round(func_1(vec4<u32>(28360u, 4294967295u | global4.b.a, ~1u, _wgslsmith_dot_vec2_u32(global4.a, global4.a))).e.b)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global4.b.b * -1334f))))), _wgslsmith_f_op_f32(-global4.b.b));
    global4 = global2[_wgslsmith_index_u32(~countOneBits(abs(_wgslsmith_div_u32(firstLeadingBit(global4.b.a), ~28904u))), 15u)];
    let var_0 = Struct_4(vec2<u32>(~32391u, 1u), Struct_2(global4.a.x, 839f, global4.b.c, _wgslsmith_add_vec4_i32(global4.b.d, abs(vec4<i32>(u_input.c, global4.e, 0i, global4.b.d.x))), !vec4<bool>(arg_0, true, func_3(arg_1.e.d.yzw, vec4<f32>(arg_1.e.b, global1.x, global1.x, arg_1.b.b), global4.b.a, vec4<u32>(1u, 0u, 67090u, 774u)).x, true)), Struct_1(arg_0), global4.d, _wgslsmith_dot_vec4_i32(-vec4<i32>(~1i, global4.e, _wgslsmith_mult_i32(u_input.a.x, 0i), 2147483647i), global4.b.d));
    let var_1 = vec3<i32>(min(-16026i, func_1(abs(vec4<u32>(arg_1.e.a, 4294967295u, arg_1.b.a, global4.a.x))).e.d.x ^ reverseBits(_wgslsmith_clamp_i32(u_input.a.x, 0i, var_0.e))), -15358i, arg_1.b.d.x);
    return _wgslsmith_f_op_f32(func_1(vec4<u32>(var_0.b.a, _wgslsmith_add_u32(0u, var_0.a.x & u_input.b), 20208u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(14602u, global4.a.x, 0u), vec3<u32>(arg_1.e.a, global4.b.a, 0u)), _wgslsmith_dot_vec2_u32(vec2<u32>(10623u, var_0.a.x), vec2<u32>(u_input.b, 1u)))).b.b - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global4.b.b))) - global3[_wgslsmith_index_u32(1u, 26u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -420f))));
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: i32, arg_3: vec4<f32>) -> f32 {
    let var_0 = vec4<f32>(-1251f, -400f, func_2().b.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(arg_3.x)), arg_3.x)))), _wgslsmith_div_f32(func_1(vec4<u32>(global4.b.a, 77507u, 3584u, 4294967295u)).a.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(u_input.d.x, 26u)], global4.b.b) * global1.x)))));
    var var_1 = func_1(vec4<u32>(~arg_0.a, countOneBits(_wgslsmith_clamp_u32(21674u, 0u << (1u % 32u), ~4294967295u)), 0u, countOneBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.a, 40399u, 0u), select(vec3<u32>(u_input.b, arg_0.a, 0u), vec3<u32>(global4.b.a, arg_0.a, 4294967295u), vec3<bool>(global0.x, arg_0.e.x, global4.b.c)))))).a;
    var var_2 = _wgslsmith_div_vec2_u32(~vec2<u32>(102819u, 25116u), global4.a);
    let var_3 = select(!arg_0.e, select(func_1(vec4<u32>(_wgslsmith_div_u32(23756u, u_input.d.x), 4294967295u, 4294967295u, 1u)).b.e, select(global4.b.e, global4.b.e, true), vec4<bool>(!global0.x, !global0.x != (0u <= var_1.a), global0.x, arg_0.c)), var_1.e);
    var var_4 = ~4294967295u;
    return arg_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<f32, 26>();
    var var_0 = vec3<u32>(_wgslsmith_add_u32(u_input.d.x, ~global4.a.x), u_input.d.x, global4.b.a);
    let var_1 = global2[_wgslsmith_index_u32(~firstLeadingBit(10574u >> (~4294967295u % 32u)), 15u)];
    let var_2 = _wgslsmith_mult_i32(var_1.b.d.x, 70336i);
    var var_3 = global4.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(~u_input.c, _wgslsmith_add_i32(u_input.a.x, 0i)), ~_wgslsmith_div_vec3_u32(vec3<u32>(3661u, _wgslsmith_dot_vec3_u32(vec3<u32>(global4.a.x, var_1.b.a, var_0.x), vec3<u32>(0u, 1u, var_0.x)), 4294967295u >> (var_0.x % 32u)), vec3<u32>(~0u, u_input.d.x, max(38161u, 0u))), _wgslsmith_f_op_f32(func_5(global4.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-591f, _wgslsmith_f_op_f32(abs(-366f)))))), u_input.a.x, vec4<f32>(640f, 1112f, _wgslsmith_f_op_f32(func_4(var_1.c.a != false, func_1(vec4<u32>(0u, 34963u, 16463u, 1u)))), 1061f))), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 26u)]));
}

