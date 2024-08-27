struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(0u, 1157f, vec4<i32>(-32718i, 1i, 1i, 0i), vec4<u32>(77670u, 70921u, 1u, 0u), vec3<i32>(-24212i, -28170i, -1847i)), Struct_2(43664u, 702f, vec4<i32>(20789i, -1i, i32(-2147483648), 8791i), vec4<u32>(4294967295u, 0u, 4294967295u, 0u), vec3<i32>(-1i, -51546i, 46006i)), Struct_2(6860u, 2080f, vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, -1i), vec4<u32>(2678u, 684u, 1u, 1u), vec3<i32>(-9823i, 50382i, -13871i)), Struct_2(25443u, 2012f, vec4<i32>(3858i, i32(-2147483648), -1i, 2147483647i), vec4<u32>(4294967295u, 58052u, 75202u, 4294967295u), vec3<i32>(1i, -5634i, 13657i)), Struct_2(4294967295u, -2004f, vec4<i32>(-21898i, -58466i, 1i, 0i), vec4<u32>(48691u, 6303u, 0u, 0u), vec3<i32>(-18169i, 0i, 41974i)), Struct_2(86122u, -650f, vec4<i32>(-45049i, 1i, 14083i, 2147483647i), vec4<u32>(7644u, 0u, 39982u, 31002u), vec3<i32>(36600i, -8393i, -1i)), Struct_2(1u, -852f, vec4<i32>(-5018i, 1i, i32(-2147483648), 2147483647i), vec4<u32>(1u, 0u, 0u, 17166u), vec3<i32>(0i, -48672i, 4667i)), Struct_2(0u, -430f, vec4<i32>(1i, 1i, i32(-2147483648), 2147483647i), vec4<u32>(1u, 35124u, 1u, 4294967295u), vec3<i32>(29616i, -205i, 23500i)), Struct_2(33817u, -712f, vec4<i32>(0i, 1i, -59476i, -55118i), vec4<u32>(23233u, 0u, 3148u, 1u), vec3<i32>(1i, 1i, -7068i)), Struct_2(6438u, -1155f, vec4<i32>(-13754i, 15906i, -17422i, 1i), vec4<u32>(54052u, 0u, 71365u, 12277u), vec3<i32>(1i, -711i, -1i)), Struct_2(14005u, -1555f, vec4<i32>(14922i, 1i, 131i, -30415i), vec4<u32>(3534u, 826u, 61137u, 0u), vec3<i32>(-14725i, 2147483647i, -1204i)), Struct_2(0u, 442f, vec4<i32>(-1i, -1i, 28414i, -6856i), vec4<u32>(4294967295u, 45886u, 14140u, 55689u), vec3<i32>(-67964i, 51644i, -1i)), Struct_2(41381u, -123f, vec4<i32>(52372i, i32(-2147483648), 72420i, -33340i), vec4<u32>(84813u, 4294967295u, 0u, 87367u), vec3<i32>(i32(-2147483648), 0i, i32(-2147483648))), Struct_2(1u, -348f, vec4<i32>(2147483647i, 0i, -1i, -44694i), vec4<u32>(0u, 39190u, 4294967295u, 40223u), vec3<i32>(2147483647i, 2147483647i, 37953i)), Struct_2(7844u, -1000f, vec4<i32>(13691i, i32(-2147483648), 2147483647i, 2147483647i), vec4<u32>(37005u, 25123u, 28495u, 42427u), vec3<i32>(7789i, 18483i, -2238i)), Struct_2(19655u, 2278f, vec4<i32>(32747i, i32(-2147483648), 6774i, 0i), vec4<u32>(0u, 28405u, 1u, 4294967295u), vec3<i32>(-27194i, 14514i, -1i)));

var<private> global1: array<Struct_1, 5>;

var<private> global2: array<vec2<f32>, 26>;

var<private> global3: array<vec4<bool>, 9>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_2) -> Struct_2 {
    global1 = array<Struct_1, 5>();
    let var_0 = vec2<i32>(arg_0, arg_2.c.x);
    var var_1 = true;
    let var_2 = 182f;
    global2 = array<vec2<f32>, 26>();
    return global0[_wgslsmith_index_u32(1u, 16u)];
}

fn func_3() -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(u_input.c.x, 5u)];
    let var_1 = ~func_1(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 2147483647i, 8904i, 2267i), vec4<i32>(10846i, var_0.c, -7082i, var_0.c) << (u_input.a % vec4<u32>(32u)), vec4<i32>(2147483647i, u_input.b.x, 1i, 4343i)), firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, u_input.b.x, 38413i, -17279i), vec4<i32>(-2147483647i, 75165i, 24688i, u_input.b.x)))), var_0.b.xy, Struct_2(~max(4294967295u, u_input.c.x), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1013f, -363f), _wgslsmith_f_op_f32(round(-1033f)))), vec4<i32>(1i, 1i, 1i, 1i) << (u_input.a % vec4<u32>(32u)), vec4<u32>(u_input.c.x, _wgslsmith_sub_u32(1u, var_0.a), ~u_input.e, 0u), u_input.b)).d.x;
    var var_2 = ~_wgslsmith_clamp_u32(~1u, ~_wgslsmith_dot_vec3_u32(var_0.b & vec3<u32>(20330u, 0u, u_input.c.x), ~var_0.b), 1u);
    var_2 = 1029u;
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1112f, -1170f)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(648f, -1018f) - _wgslsmith_f_op_f32(f32(-1f) * -1094f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1604f)), -681f)))));
    return -854f;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: bool) -> vec2<i32> {
    global2 = array<vec2<f32>, 26>();
    var var_0 = ~arg_1.c != -2147483647i;
    var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(624f, -1075f)))) - 1f))));
    global0 = array<Struct_2, 16>();
    return abs(u_input.b.zy);
}

fn func_2(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_2) -> Struct_2 {
    global2 = array<vec2<f32>, 26>();
    let var_0 = func_4((_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())) == -1000f) || (~u_input.c.x < 56309u), Struct_1(firstTrailingBit(1u), ~vec3<u32>(~arg_1.x, u_input.c.x, 0u), ~(~(-47552i))), ~vec2<u32>(_wgslsmith_mod_u32(1u, 4294967295u), u_input.c.x << (u_input.d % 32u)), any(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_1.x, max(arg_2.a, 0u)), 9u)]) | true);
    global2 = array<vec2<f32>, 26>();
    global3 = array<vec4<bool>, 9>();
    global3 = array<vec4<bool>, 9>();
    return global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(_wgslsmith_div_u32(~1u, u_input.a.x), _wgslsmith_sub_u32(abs(93427u) >> (~4294967295u % 32u), func_1(2147483647i ^ arg_2.c.x, _wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.e), arg_2.d.xw), Struct_2(arg_2.d.x, arg_2.b, vec4<i32>(-16452i, u_input.b.x, arg_2.e.x, var_0.x), u_input.a, u_input.b)).a)), 16u)];
}

fn func_5(arg_0: Struct_2, arg_1: i32) -> Struct_2 {
    global0 = array<Struct_2, 16>();
    var var_0 = Struct_3(select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), any(vec2<bool>(true, false))), select(vec3<bool>(false, select(true, true, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), any(select(global3[_wgslsmith_index_u32(min(69081u, arg_0.d.x), 9u)], vec4<bool>(true, false, true, true), true))), !select(false, all(global3[_wgslsmith_index_u32(4294967295u, 9u)]) && false, true), Struct_1(_wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.d.x, 4294967295u, 0u, 74864u), arg_0.d), select(arg_0.d ^ vec4<u32>(u_input.a.x, u_input.c.x, 1u, u_input.e), abs(vec4<u32>(17131u, u_input.e, arg_0.d.x, 42323u)), vec4<bool>(true, false, true, true))), ~arg_0.d.xyx, func_4(true, global1[_wgslsmith_index_u32(u_input.c.x, 5u)], ~func_2(arg_0.b, u_input.c, global0[_wgslsmith_index_u32(1u, 16u)]).d.xw, false).x), any(vec4<bool>(true, true, true, true)));
    var_0 = Struct_3(select(select(var_0.a, var_0.a, !(!var_0.d)), var_0.a, var_0.a), true & all(var_0.a.yz), Struct_1(var_0.c.b.x, u_input.a.xxx, select(arg_0.c.x | (i32(-1i) * -52521i), -var_0.c.c & var_0.c.c, true)), any(global3[_wgslsmith_index_u32(20282u, 9u)]));
    var var_1 = vec4<bool>(true, !(-var_0.c.c == arg_1), true | any(var_0.a.xz), var_0.d & var_0.a.x);
    global2 = array<vec2<f32>, 26>();
    return Struct_2(func_1(var_0.c.c, ~firstLeadingBit(~vec2<u32>(0u, var_0.c.a)), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(388f * arg_0.b) * arg_0.b), ~vec3<u32>(1u, arg_0.d.x, 1u), Struct_2(~54962u, -588f, arg_0.c, vec4<u32>(var_0.c.a, var_0.c.a, 1u, var_0.c.b.x), firstLeadingBit(vec3<i32>(arg_1, u_input.b.x, u_input.b.x))))).d.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_0.b, -402f))), select(_wgslsmith_add_vec4_i32(~vec4<i32>(41967i, var_0.c.c, u_input.b.x, 1i), vec4<i32>(arg_1, abs(var_0.c.c), var_0.c.c, countOneBits(var_0.c.c))), ~arg_0.c, !(arg_0.b != arg_0.b)), countOneBits(~(~vec4<u32>(1u, 21547u, u_input.c.x, 4294967295u)) ^ ~(~arg_0.d)), -vec3<i32>(~_wgslsmith_sub_i32(arg_1, 0i), ~(-63285i), 10902i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_2(_wgslsmith_f_op_f32(ceil(2466f)), _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_add_u32(u_input.d, 52044u), abs(u_input.d), reverseBits(u_input.a.x)), vec3<u32>(14829u, u_input.c.x, 1u)), func_1(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 51077i), u_input.b.yy << (u_input.a.zy % vec2<u32>(32u))), min(~u_input.c.xx, vec2<u32>(u_input.a.x, 1u)), Struct_2(abs(u_input.d), -485f, ~vec4<i32>(u_input.b.x, 2147483647i, 30890i, u_input.b.x), vec4<u32>(60079u, u_input.a.x, 4294967295u, u_input.d), u_input.b))), firstTrailingBit(min(firstLeadingBit(1i) | (u_input.b.x | -1208i), u_input.b.x)));
    var var_1 = vec2<i32>(u_input.b.x, 0i);
    let var_2 = Struct_3(vec3<bool>(all(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true)), true, func_2(var_0.b, ~var_0.d.xww, Struct_2(86406u, var_0.b, vec4<i32>(var_1.x, var_1.x, var_0.e.x, var_0.e.x), var_0.d, var_0.e)).e.x != 3076i), all(global3[_wgslsmith_index_u32(~5709u, 9u)]), global1[_wgslsmith_index_u32(u_input.a.x, 5u)], 30157i >= countOneBits(max(~u_input.b.x, abs(u_input.b.x))));
    var var_3 = -651f;
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(~var_0.d.x, ~0u), u_input.a.x), 77338u), 16u)];
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, -1i, u_input.a.x);
}

