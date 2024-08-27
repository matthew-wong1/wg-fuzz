struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: f32,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec2<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<u32, 28>;

var<private> global2: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(Struct_1(vec2<f32>(1196f, 748f), vec3<i32>(2695i, 0i, 0i), vec3<bool>(true, true, true)), false, 1118f, -1000f, 0i), Struct_2(Struct_1(vec2<f32>(-736f, 1429f), vec3<i32>(41838i, 1i, 14372i), vec3<bool>(false, true, true)), false, -627f, -319f, -49232i), Struct_2(Struct_1(vec2<f32>(480f, -2363f), vec3<i32>(-58529i, 2147483647i, -1i), vec3<bool>(false, true, true)), true, 572f, 791f, -1i), Struct_2(Struct_1(vec2<f32>(952f, -961f), vec3<i32>(-37398i, 4813i, 0i), vec3<bool>(true, false, false)), false, -440f, 447f, 0i), Struct_2(Struct_1(vec2<f32>(219f, -1309f), vec3<i32>(52695i, -10951i, 2789i), vec3<bool>(true, true, true)), false, -586f, -263f, 2147483647i), Struct_2(Struct_1(vec2<f32>(536f, 1080f), vec3<i32>(2147483647i, 2147483647i, 0i), vec3<bool>(true, true, false)), false, -1367f, -673f, 81341i), Struct_2(Struct_1(vec2<f32>(435f, -1251f), vec3<i32>(11687i, 1i, -52003i), vec3<bool>(true, false, true)), true, 818f, -742f, 14748i), Struct_2(Struct_1(vec2<f32>(-521f, -802f), vec3<i32>(i32(-2147483648), i32(-2147483648), -1i), vec3<bool>(true, false, false)), false, 468f, -1000f, -1i), Struct_2(Struct_1(vec2<f32>(249f, -1000f), vec3<i32>(18689i, 2147483647i, 12391i), vec3<bool>(false, true, true)), true, -314f, -943f, 25067i), Struct_2(Struct_1(vec2<f32>(591f, -1000f), vec3<i32>(1i, 1i, 0i), vec3<bool>(true, true, false)), false, 1951f, 338f, i32(-2147483648)), Struct_2(Struct_1(vec2<f32>(345f, -738f), vec3<i32>(-1i, 2147483647i, 31269i), vec3<bool>(true, false, true)), true, -1126f, -660f, i32(-2147483648)), Struct_2(Struct_1(vec2<f32>(-1308f, 606f), vec3<i32>(0i, 12014i, 7006i), vec3<bool>(false, true, true)), false, -718f, -1048f, i32(-2147483648)), Struct_2(Struct_1(vec2<f32>(2107f, 1221f), vec3<i32>(-25048i, i32(-2147483648), -1i), vec3<bool>(true, false, true)), false, 790f, 742f, 25727i), Struct_2(Struct_1(vec2<f32>(168f, -158f), vec3<i32>(2147483647i, i32(-2147483648), -2078i), vec3<bool>(false, true, true)), false, 841f, -848f, -28857i), Struct_2(Struct_1(vec2<f32>(-660f, -2198f), vec3<i32>(1i, 8445i, 2147483647i), vec3<bool>(false, false, true)), false, 684f, -1399f, -1i), Struct_2(Struct_1(vec2<f32>(-1717f, 1084f), vec3<i32>(30513i, 2147483647i, 27635i), vec3<bool>(false, false, true)), false, 1175f, -265f, 51775i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32) -> bool {
    global0 = arg_0;
    let var_0 = Struct_2(arg_0, all(vec2<bool>(arg_1.b, arg_1.c == _wgslsmith_f_op_f32(-arg_1.c))), _wgslsmith_div_f32(global0.a.x, -1000f), _wgslsmith_f_op_f32(-arg_1.d), _wgslsmith_div_i32(u_input.d, global0.b.x & global0.b.x));
    var var_1 = arg_1.a;
    let var_2 = Struct_3(arg_1.a, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_1.a.x, -371f))), 749f, -464f, arg_0.a.x), vec4<f32>(989f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-197f - arg_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, arg_2)), 571f))), ~(~u_input.c), select(!vec2<bool>(true, arg_1.b), vec2<bool>(var_0.b, !(!var_1.c.x)), !arg_0.c.xz), arg_0);
    let var_3 = !(!arg_1.a.c);
    return !var_3.x;
}

fn func_2() -> vec4<i32> {
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, 1337f)))))), global0.b, global0.c);
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1272f, global0.a.x) - global0.a) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(557f, 438f) - global0.a)))), -vec3<i32>(1i, 54243i, ~2147483647i), select(select(select(vec3<bool>(true, global0.c.x, global0.c.x), global0.c, true), select(vec3<bool>(global0.c.x, false, global0.c.x), vec3<bool>(true, true, false), global0.c), func_3(Struct_1(vec2<f32>(535f, 605f), global0.b, vec3<bool>(global0.c.x, true, global0.c.x)), global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(72996u, 28u)], 16u)], 1060f)), !global0.c, !(!global0.c))), true, _wgslsmith_f_op_f32(f32(-1f) * -622f), global0.a.x, reverseBits(u_input.d));
    var var_1 = global0.a.x;
    var var_2 = _wgslsmith_add_u32(70687u, 1u);
    let var_3 = global0.a.x;
    return -_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-global0.b.x, -1i, 3214i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.d, 12097i, -47639i), vec4<i32>(0i, -2147483647i, 2147483647i, 1i))), vec4<i32>(countOneBits(global0.b.x), firstLeadingBit(1i), var_0.a.b.x, i32(-1i) * -4321i)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, ~u_input.d, 1i, ~(-29658i)), ~(vec4<i32>(global0.b.x, -1i, u_input.d, global0.b.x) << (vec4<u32>(u_input.c.x, 114468u, 4294967295u, 0u) % vec4<u32>(32u)))));
}

fn func_1() -> u32 {
    global2 = array<Struct_2, 16>();
    global2 = array<Struct_2, 16>();
    global2 = array<Struct_2, 16>();
    global1 = array<u32, 28>();
    var var_0 = func_2();
    return 39018u;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec4_u32(arg_0 | arg_0, max(arg_0, vec4<u32>(4294967295u, 72338u, _wgslsmith_add_u32(max(20890u, 81745u), 22003u), 1u)));
    let var_1 = select(select(vec4<bool>(!select(global0.c.x, false, global0.c.x), all(!vec4<bool>(false, global0.c.x, false, global0.c.x)), any(select(vec4<bool>(global0.c.x, false, true, global0.c.x), vec4<bool>(arg_1.a.c.x, global0.c.x, false, true), vec4<bool>(arg_1.e.c.x, true, true, global0.c.x))), global0.c.x), select(select(!vec4<bool>(global0.c.x, arg_1.a.c.x, true, arg_1.a.c.x), select(vec4<bool>(false, global0.c.x, false, true), vec4<bool>(arg_1.a.c.x, true, global0.c.x, false), arg_1.e.c.x), select(vec4<bool>(true, false, true, global0.c.x), vec4<bool>(arg_1.a.c.x, arg_1.d.x, false, global0.c.x), global0.c.x)), vec4<bool>(global0.c.x, any(arg_1.a.c.zx), false, select(true, arg_1.d.x, false)), true), select(vec4<bool>(true, true | global0.c.x, true, true), vec4<bool>(all(vec4<bool>(false, false, arg_1.e.c.x, false)), arg_1.d.x, true, true), !(!global0.c.x))), !(!vec4<bool>(false, func_3(arg_1.a, Struct_2(Struct_1(global0.a, vec3<i32>(56914i, global0.b.x, -2147483647i), vec3<bool>(arg_1.d.x, arg_1.d.x, global0.c.x)), arg_1.e.c.x, arg_1.b.x, global0.a.x, global0.b.x), global0.a.x), global0.c.x, false)), select(!select(!vec4<bool>(true, true, true, global0.c.x), vec4<bool>(arg_1.e.c.x, arg_1.a.c.x, global0.c.x, arg_1.a.c.x), true), !select(vec4<bool>(global0.c.x, arg_1.e.c.x, arg_1.e.c.x, false), !vec4<bool>(arg_1.a.c.x, false, true, global0.c.x), false), global0.c.x));
    let var_2 = _wgslsmith_clamp_vec4_u32(~vec4<u32>(max(arg_0.x, 34363u), 0u & arg_1.c.x, arg_0.x, ~0u), arg_0, ~(reverseBits(arg_0) & abs(arg_0))) << (~vec4<u32>(4294967295u & global1[_wgslsmith_index_u32(select(arg_0.x, global1[_wgslsmith_index_u32(var_0, 28u)], global0.c.x), 28u)], _wgslsmith_dot_vec4_u32(max(arg_0, vec4<u32>(34856u, u_input.a, 71436u, 0u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 35528u, 8254u, 0u), arg_0, vec4<u32>(arg_1.c.x, var_0, var_0, 4294967295u))), 32407u, u_input.b.x) % vec4<u32>(32u));
    var var_3 = firstLeadingBit(-_wgslsmith_mod_vec4_i32(firstLeadingBit(-vec4<i32>(2147483647i, u_input.d, global0.b.x, u_input.d)), countOneBits(~vec4<i32>(arg_1.a.b.x, u_input.d, -1i, -2147483647i))));
    var var_4 = firstLeadingBit(vec4<u32>(_wgslsmith_mult_u32(var_2.x, _wgslsmith_clamp_u32(1u, 4294967295u, 116548u) | global1[_wgslsmith_index_u32(~arg_1.c.x, 28u)]), _wgslsmith_mod_u32(4294967295u, u_input.b.x), ~30125u, ~arg_0.x));
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(-27424i == _wgslsmith_dot_vec3_i32(vec3<i32>(global0.b.x, u_input.d, -18839i), global0.b))) || global0.c.x;
    global0 = func_4(_wgslsmith_sub_vec4_u32(vec4<u32>(func_1(), global1[_wgslsmith_index_u32(u_input.a, 28u)], 1u, global1[_wgslsmith_index_u32(~u_input.c.x, 28u)]), countOneBits(~vec4<u32>(u_input.b.x, 13478u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(12940u, 28u)], 28u)], u_input.c.x))) | _wgslsmith_mult_vec4_u32(~(vec4<u32>(0u, global1[_wgslsmith_index_u32(u_input.c.x, 28u)], u_input.a, 1u) | vec4<u32>(u_input.b.x, global1[_wgslsmith_index_u32(27507u, 28u)], 0u, 4294967295u)), vec4<u32>(4294967295u >> (global1[_wgslsmith_index_u32(u_input.c.x, 28u)] % 32u), u_input.a ^ 74062u, u_input.b.x, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(42442u, 64566u)), 28u)])), Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(global0.a + global0.a), vec3<i32>(-2147483647i << (u_input.b.x % 32u), u_input.d >> (1u % 32u), u_input.d), global0.c), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) * global0.a.x), 713f, global0.a.x, -346f), _wgslsmith_div_vec2_u32(vec2<u32>(0u, select(0u, 34751u, true)), vec2<u32>(_wgslsmith_mod_u32(4294967295u, 507u), 43755u)), !(!select(vec2<bool>(global0.c.x, true), vec2<bool>(false, true), global0.c.x)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-global0.a.x), global0.a.x), ~_wgslsmith_add_vec3_i32(global0.b, vec3<i32>(-3614i, 0i, global0.b.x)), !(!global0.c))));
    let var_1 = global0.c;
    let var_2 = Struct_3(func_4(abs(~(~vec4<u32>(u_input.a, global1[_wgslsmith_index_u32(35572u, 28u)], global1[_wgslsmith_index_u32(u_input.b.x, 28u)], 91013u))), Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-633f, global0.a.x)), select(global0.b, vec3<i32>(u_input.d, global0.b.x, global0.b.x), vec3<bool>(global0.c.x, var_1.x, global0.c.x)), vec3<bool>(global0.c.x, true, global0.c.x)), vec4<f32>(_wgslsmith_f_op_f32(1000f + global0.a.x), -861f, global0.a.x, _wgslsmith_div_f32(global0.a.x, global0.a.x)), u_input.c & vec2<u32>(u_input.b.x, global1[_wgslsmith_index_u32(4294967295u, 28u)]), func_4(_wgslsmith_add_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(u_input.c.x, 28u)], 13209u, 34523u, u_input.c.x), vec4<u32>(u_input.b.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 28u)], 28u)], 28u)], global1[_wgslsmith_index_u32(1u, 28u)], u_input.b.x)), Struct_3(Struct_1(vec2<f32>(global0.a.x, global0.a.x), vec3<i32>(u_input.d, u_input.d, 0i), vec3<bool>(var_1.x, false, global0.c.x)), vec4<f32>(2103f, global0.a.x, global0.a.x, 705f), vec2<u32>(26554u, 26825u), vec2<bool>(var_1.x, true), Struct_1(global0.a, vec3<i32>(1i, u_input.d, 26839i), vec3<bool>(true, false, var_1.x)))).c.zz, func_4(abs(vec4<u32>(1u, 4539u, global1[_wgslsmith_index_u32(80384u, 28u)], global1[_wgslsmith_index_u32(77698u, 28u)])), Struct_3(Struct_1(global0.a, global0.b, global0.c), vec4<f32>(global0.a.x, global0.a.x, -924f, -1063f), u_input.c, vec2<bool>(false, global0.c.x), Struct_1(vec2<f32>(global0.a.x, 825f), vec3<i32>(global0.b.x, global0.b.x, -1i), global0.c))))), vec4<f32>(_wgslsmith_f_op_f32(global0.a.x * _wgslsmith_f_op_f32(max(global0.a.x, _wgslsmith_f_op_f32(-global0.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_f_op_f32(func_4(vec4<u32>(u_input.c.x, 37817u, u_input.c.x, 0u) & vec4<u32>(22753u, 4294967295u, u_input.c.x, 4294967295u), Struct_3(Struct_1(vec2<f32>(global0.a.x, -1000f), vec3<i32>(-40198i, 2147483647i, u_input.d), vec3<bool>(global0.c.x, false, global0.c.x)), vec4<f32>(global0.a.x, -1000f, -313f, global0.a.x), vec2<u32>(77501u, u_input.a), vec2<bool>(false, false), Struct_1(global0.a, global0.b, vec3<bool>(true, false, true)))).a.x * global0.a.x), global0.a.x), u_input.c << (_wgslsmith_sub_vec2_u32(~(vec2<u32>(global1[_wgslsmith_index_u32(1u, 28u)], u_input.a) | u_input.c), _wgslsmith_mod_vec2_u32(countOneBits(u_input.b), u_input.c)) % vec2<u32>(32u)), var_1.xx, func_4(~vec4<u32>(0u, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global1[_wgslsmith_index_u32(42446u, 28u)], u_input.a, 1u), vec4<u32>(u_input.c.x, global1[_wgslsmith_index_u32(25356u, 28u)], 0u, u_input.c.x)), 28u)], ~global1[_wgslsmith_index_u32(37734u, 28u)], _wgslsmith_dot_vec2_u32(u_input.b, u_input.b)), Struct_3(func_4(vec4<u32>(0u, u_input.c.x, 0u, u_input.b.x) ^ vec4<u32>(103961u, 1u, u_input.a, global1[_wgslsmith_index_u32(0u, 28u)]), Struct_3(Struct_1(vec2<f32>(global0.a.x, global0.a.x), vec3<i32>(u_input.d, -2147483647i, 33963i), global0.c), vec4<f32>(global0.a.x, global0.a.x, global0.a.x, global0.a.x), u_input.b, vec2<bool>(false, var_1.x), Struct_1(global0.a, vec3<i32>(-69888i, -2147483647i, u_input.d), vec3<bool>(false, var_1.x, global0.c.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(455f, global0.a.x, global0.a.x, -1158f))), vec2<u32>(52311u, u_input.c.x >> (0u % 32u)), vec2<bool>(global0.c.x && true, false), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(678f, global0.a.x)), func_4(vec4<u32>(u_input.a, global1[_wgslsmith_index_u32(28879u, 28u)], 9446u, 0u), Struct_3(Struct_1(global0.a, global0.b, global0.c), vec4<f32>(global0.a.x, global0.a.x, global0.a.x, global0.a.x), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 28u)], 28u)], u_input.c.x), vec2<bool>(true, var_1.x), Struct_1(vec2<f32>(-1834f, global0.a.x), vec3<i32>(global0.b.x, -2147483647i, global0.b.x), vec3<bool>(var_1.x, false, false)))).b, select(global0.c, vec3<bool>(true, true, false), var_1.x)))));
    let var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c.x, vec3<f32>(_wgslsmith_f_op_f32(max(global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-490f * 1000f)))), _wgslsmith_f_op_f32(step(230f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x + global0.a.x)))), _wgslsmith_f_op_f32(ceil(var_3.a.a.x))), -3373i, var_3.e.a.x, 4294967295u);
}

