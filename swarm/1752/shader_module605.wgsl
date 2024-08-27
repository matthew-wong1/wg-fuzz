struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18> = array<bool, 18>(false, true, true, false, true, true, false, true, false, true, true, false, true, false, false, true, false, true);

var<private> global1: Struct_1;

var<private> global2: array<vec3<u32>, 8> = array<vec3<u32>, 8>(vec3<u32>(4294967295u, 40410u, 1u), vec3<u32>(0u, 1u, 1u), vec3<u32>(0u, 0u, 0u), vec3<u32>(39221u, 122486u, 0u), vec3<u32>(55682u, 0u, 32905u), vec3<u32>(44105u, 68353u, 29770u), vec3<u32>(526u, 0u, 222u), vec3<u32>(30632u, 0u, 59312u));

var<private> global3: array<vec2<i32>, 7>;

var<private> global4: array<vec4<i32>, 12>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_1) -> u32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(1753f, -303f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.a.x))) - _wgslsmith_f_op_f32(-317f + _wgslsmith_f_op_f32(-arg_0.a.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(563f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-474f, global1.a.x, false)), -511f))));
    global3 = array<vec2<i32>, 7>();
    var_0 = _wgslsmith_f_op_f32(abs(677f));
    var var_1 = _wgslsmith_sub_u32(arg_0.c, arg_0.c);
    let var_2 = ~select(firstTrailingBit(-70964i) >> (_wgslsmith_clamp_u32(~arg_0.c, u_input.a, u_input.a) % 32u), arg_0.b.x, all(vec2<bool>(all(vec4<bool>(global0[_wgslsmith_index_u32(41083u, 18u)], global1.e, arg_0.e, arg_0.e)), false)));
    return ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_0.d.x, 89062u | global1.c), vec3<u32>(~0u, arg_0.d.x, 1u)) & 1u;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.x, 769f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(319f, arg_2.a.x) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.x, arg_1.a.x) - vec2<f32>(413f, 1428f))))));
    var var_1 = arg_0.d;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.a.x)));
    global3 = array<vec2<i32>, 7>();
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, -1256f, -713f, arg_1.a.x), global1.a))) * vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.a.x), -1335f)), 585f, var_0.x, _wgslsmith_div_f32(arg_0.a.x, _wgslsmith_f_op_f32(sign(global1.a.x))))), ~abs(-vec3<i32>(global1.b.x, 48854i, arg_2.b.x)) | global1.b, firstTrailingBit(_wgslsmith_add_u32(_wgslsmith_mod_u32(~global1.d.x, abs(arg_2.c)), _wgslsmith_div_u32(1u, ~24462u))), _wgslsmith_div_vec3_u32(~(~abs(vec3<u32>(102066u, 0u, 90240u))), arg_0.d), all(select(!vec3<bool>(global1.e, true, arg_0.e), select(!vec3<bool>(arg_1.e, arg_1.e, arg_2.e), select(vec3<bool>(true, global0[_wgslsmith_index_u32(65974u, 18u)], global1.e), vec3<bool>(arg_1.e, arg_0.e, false), vec3<bool>(true, arg_1.e, arg_2.e)), global1.e), false)));
    return arg_2;
}

fn func_1() -> i32 {
    var var_0 = ~(~vec3<u32>(~_wgslsmith_sub_u32(3816u, global1.c), 34652u, ~(~global1.c)));
    global4 = array<vec4<i32>, 12>();
    var var_1 = func_3(Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, _wgslsmith_f_op_f32(-global1.a.x), -497f, global1.a.x), global1.a, !(!vec4<bool>(global1.e, true, global0[_wgslsmith_index_u32(150965u, 18u)], false)))), -_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, 1i, -26424i), select(u_input.b, global1.b, vec3<bool>(global1.e, true, true))), abs(_wgslsmith_sub_u32(~0u, u_input.a)), vec3<u32>(abs(var_0.x), func_2(Struct_1(vec4<f32>(global1.a.x, global1.a.x, 339f, global1.a.x), global1.b, 31685u, global2[_wgslsmith_index_u32(28064u, 8u)], global1.e)), func_2(Struct_1(vec4<f32>(global1.a.x, -101f, global1.a.x, global1.a.x), vec3<i32>(global1.b.x, 0i, -40375i), 40371u, vec3<u32>(u_input.a, var_0.x, u_input.a), false))), false), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(global1.a.x - _wgslsmith_f_op_f32(max(global1.a.x, 790f))), global1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(288f)) - 700f), 1334f), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i) * -global1.b, abs(~vec3<i32>(-1i, 14487i, global1.b.x))), 13603u, ~global2[_wgslsmith_index_u32(var_0.x, 8u)], global1.e), Struct_1(_wgslsmith_div_vec4_f32(global1.a, global1.a), vec3<i32>(1i, ~_wgslsmith_div_i32(-8861i, u_input.b.x), abs(_wgslsmith_sub_i32(u_input.c.x, -2147483647i))), ~(~var_0.x), vec3<u32>(u_input.a | 4294967295u, global1.c, var_0.x), !(select(global1.e, global1.e, false) || any(vec4<bool>(false, true, false, global1.e)))), abs(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(global2[_wgslsmith_index_u32(63260u, 8u)], global2[_wgslsmith_index_u32(31808u, 8u)]) >> (global2[_wgslsmith_index_u32(var_0.x, 8u)] % vec3<u32>(32u)), vec3<u32>(30028u & u_input.a, reverseBits(2713u), _wgslsmith_clamp_u32(89791u, 19762u, 0u)))));
    let var_2 = Struct_1(var_1.a, vec3<i32>(-1i) * -(~vec3<i32>(global1.b.x, u_input.c.x, 8823i)), ~global1.c, _wgslsmith_sub_vec3_u32(vec3<u32>(func_2(Struct_1(vec4<f32>(global1.a.x, 624f, var_1.a.x, 1000f), vec3<i32>(-2147483647i, global1.b.x, -1i), var_1.d.x, global2[_wgslsmith_index_u32(1u, 8u)], var_1.e)) >> (1u % 32u), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 52440u, 1u, var_1.d.x), vec4<u32>(4294967295u, 25671u, var_0.x, var_0.x)), var_1.d.x), ~0u), global1.d), all(!select(vec4<bool>(true, false, false, global0[_wgslsmith_index_u32(u_input.a, 18u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(11525u, 18u)], var_1.e, global1.e, true), vec4<bool>(false, false, true, global1.e), vec4<bool>(true, false, true, var_1.e)), vec4<bool>(false, var_1.e, true, false))));
    let var_3 = func_3(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.a)), -max(global1.b >> (vec3<u32>(4294967295u, 86889u, var_1.d.x) % vec3<u32>(32u)), ~global1.b), var_1.d.x, max(var_1.d, _wgslsmith_mod_vec3_u32(var_2.d, _wgslsmith_add_vec3_u32(var_1.d, vec3<u32>(0u, 31727u, 4238u)))), global0[_wgslsmith_index_u32(countOneBits(31974u), 18u)]), func_3(var_2, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(var_1.a))), -(~u_input.b), _wgslsmith_mult_u32(abs(1272u), 1u), ~var_1.d, global0[_wgslsmith_index_u32(6881u, 18u)]), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-229f, global1.a.x, -1660f, 1149f)), ~global1.b, _wgslsmith_add_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 71167u, global1.d.x, 4294967295u), vec4<u32>(1u, 23929u, 43608u, 1u))), ~firstLeadingBit(global1.d), any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, global0[_wgslsmith_index_u32(4294967295u, 18u)])))), global1.d.x), var_2, ~1u);
    return global1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<u32>, 8>();
    let var_0 = -reverseBits(func_1());
    var var_1 = ~u_input.b;
    var var_2 = func_3(Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.x, 258f, global1.a.x, -1369f) * global1.a), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.a.x, -1225f, global1.a.x, 1000f), vec4<f32>(-158f, global1.a.x, 595f, -692f))), vec4<bool>(true, global1.e, global0[_wgslsmith_index_u32(6106u, 18u)], global0[_wgslsmith_index_u32(4294967295u, 18u)]))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.a.x, 1020f, global1.a.x, -645f))))), !global0[_wgslsmith_index_u32(1u, 18u)])), global1.b & ~(-u_input.c), _wgslsmith_mod_u32(~(~1u), _wgslsmith_add_u32(~99514u, u_input.a)), _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(global1.c, 1u, u_input.a), vec3<u32>(1u, global1.d.x, 1u) >> (global2[_wgslsmith_index_u32(u_input.a, 8u)] % vec3<u32>(32u))), global1.d), false), func_3(func_3(func_3(func_3(Struct_1(vec4<f32>(144f, 1106f, global1.a.x, global1.a.x), vec3<i32>(0i, 33634i, u_input.b.x), 1u, global1.d, false), Struct_1(vec4<f32>(global1.a.x, global1.a.x, -332f, global1.a.x), vec3<i32>(-18144i, var_0, global1.b.x), u_input.a, vec3<u32>(4294967295u, 2636u, global1.d.x), global1.e), Struct_1(vec4<f32>(global1.a.x, global1.a.x, global1.a.x, -1000f), global1.b, 29376u, global2[_wgslsmith_index_u32(20955u, 8u)], true), u_input.a), Struct_1(vec4<f32>(1905f, -397f, global1.a.x, global1.a.x), vec3<i32>(23885i, 1i, 0i), u_input.a, global1.d, global0[_wgslsmith_index_u32(u_input.a, 18u)]), Struct_1(vec4<f32>(global1.a.x, global1.a.x, global1.a.x, global1.a.x), vec3<i32>(-2147483647i, -16033i, var_0), u_input.a, global1.d, global0[_wgslsmith_index_u32(u_input.a, 18u)]), max(0u, 28737u)), func_3(Struct_1(vec4<f32>(352f, global1.a.x, -1504f, global1.a.x), vec3<i32>(21938i, u_input.b.x, u_input.c.x), 4294967295u, global1.d, global1.e), func_3(Struct_1(global1.a, global1.b, u_input.a, vec3<u32>(1u, 1u, 16915u), global1.e), Struct_1(vec4<f32>(global1.a.x, -993f, global1.a.x, -310f), u_input.c, global1.c, vec3<u32>(global1.c, 0u, global1.c), false), Struct_1(global1.a, global1.b, 4294967295u, vec3<u32>(u_input.a, u_input.a, 1u), global0[_wgslsmith_index_u32(global1.d.x, 18u)]), 4294967295u), Struct_1(vec4<f32>(-1724f, global1.a.x, global1.a.x, -169f), vec3<i32>(2147483647i, 11896i, 2147483647i), 79555u, vec3<u32>(u_input.a, 0u, 53856u), global0[_wgslsmith_index_u32(u_input.a, 18u)]), global1.d.x), func_3(Struct_1(global1.a, global1.b, global1.d.x, global2[_wgslsmith_index_u32(global1.d.x, 8u)], false), func_3(Struct_1(vec4<f32>(global1.a.x, -148f, -1987f, -1015f), global1.b, 0u, vec3<u32>(u_input.a, u_input.a, 6908u), global0[_wgslsmith_index_u32(5910u, 18u)]), Struct_1(vec4<f32>(global1.a.x, global1.a.x, global1.a.x, global1.a.x), u_input.c, u_input.a, vec3<u32>(63661u, 0u, u_input.a), global1.e), Struct_1(global1.a, u_input.c, 101041u, vec3<u32>(1053u, u_input.a, u_input.a), false), u_input.a), func_3(Struct_1(vec4<f32>(-1045f, -1216f, 355f, -149f), u_input.b, 4294967295u, global1.d, global1.e), Struct_1(vec4<f32>(global1.a.x, 1083f, -690f, global1.a.x), vec3<i32>(var_1.x, 0i, -2147483647i), 34574u, vec3<u32>(8681u, 80452u, global1.d.x), global0[_wgslsmith_index_u32(1u, 18u)]), Struct_1(global1.a, global1.b, global1.d.x, global2[_wgslsmith_index_u32(10306u, 8u)], global0[_wgslsmith_index_u32(33324u, 18u)]), u_input.a), 10107u), abs(func_3(Struct_1(global1.a, global1.b, u_input.a, vec3<u32>(0u, u_input.a, u_input.a), global0[_wgslsmith_index_u32(global1.c, 18u)]), Struct_1(global1.a, vec3<i32>(-2147483647i, 2147483647i, -26485i), u_input.a, global2[_wgslsmith_index_u32(4294967295u, 8u)], true), Struct_1(vec4<f32>(508f, 739f, 792f, 237f), global1.b, 32782u, global1.d, true), u_input.a).c)), func_3(func_3(func_3(Struct_1(global1.a, u_input.b, u_input.a, global1.d, global1.e), Struct_1(vec4<f32>(global1.a.x, global1.a.x, global1.a.x, -1000f), vec3<i32>(-17189i, -1i, var_1.x), 1u, global2[_wgslsmith_index_u32(0u, 8u)], false), Struct_1(global1.a, u_input.b, global1.c, vec3<u32>(global1.c, global1.c, 96415u), global1.e), 1u), Struct_1(global1.a, vec3<i32>(var_1.x, global1.b.x, 0i), 34395u, vec3<u32>(4294967295u, global1.d.x, global1.d.x), true), func_3(Struct_1(global1.a, global1.b, 4294967295u, global2[_wgslsmith_index_u32(u_input.a, 8u)], global0[_wgslsmith_index_u32(14060u, 18u)]), Struct_1(global1.a, vec3<i32>(-1i, 1226i, -1i), 60138u, global1.d, true), Struct_1(vec4<f32>(456f, global1.a.x, global1.a.x, -563f), vec3<i32>(u_input.c.x, -1i, var_0), 0u, vec3<u32>(u_input.a, global1.d.x, 31266u), true), global1.d.x), 3004u), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, -648f, -325f, global1.a.x)), global1.b, min(0u, 1u), countOneBits(global2[_wgslsmith_index_u32(0u, 8u)]), false), func_3(Struct_1(global1.a, u_input.b, 9430u, global2[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(u_input.a, 18u)]), func_3(Struct_1(vec4<f32>(177f, global1.a.x, 536f, -496f), global1.b, global1.c, vec3<u32>(u_input.a, u_input.a, u_input.a), global1.e), Struct_1(global1.a, global1.b, 0u, vec3<u32>(5392u, global1.d.x, 54198u), global0[_wgslsmith_index_u32(u_input.a, 18u)]), Struct_1(global1.a, vec3<i32>(var_1.x, 0i, -11615i), global1.d.x, vec3<u32>(u_input.a, 0u, global1.c), global1.e), 4294967295u), func_3(Struct_1(vec4<f32>(-1679f, 327f, -1180f, 983f), vec3<i32>(global1.b.x, -2147483647i, -29152i), 58399u, vec3<u32>(90858u, 1u, 3500u), true), Struct_1(vec4<f32>(1508f, global1.a.x, global1.a.x, 1487f), u_input.b, u_input.a, global2[_wgslsmith_index_u32(u_input.a, 8u)], global0[_wgslsmith_index_u32(u_input.a, 18u)]), Struct_1(global1.a, vec3<i32>(1i, -42306i, var_1.x), u_input.a, global2[_wgslsmith_index_u32(u_input.a, 8u)], global1.e), 0u), ~u_input.a), ~40001u), func_3(func_3(func_3(Struct_1(global1.a, global1.b, 17129u, vec3<u32>(global1.c, 57328u, u_input.a), true), Struct_1(vec4<f32>(-705f, global1.a.x, global1.a.x, 1332f), u_input.c, 33391u, global2[_wgslsmith_index_u32(53414u, 8u)], global0[_wgslsmith_index_u32(global1.d.x, 18u)]), Struct_1(global1.a, u_input.c, u_input.a, global1.d, false), global1.d.x), func_3(Struct_1(vec4<f32>(486f, -472f, global1.a.x, global1.a.x), vec3<i32>(-2147483647i, -1i, var_1.x), 74390u, global1.d, global1.e), Struct_1(vec4<f32>(global1.a.x, -1000f, global1.a.x, -1000f), vec3<i32>(var_1.x, u_input.b.x, 35349i), 3287u, vec3<u32>(1u, u_input.a, 65427u), global1.e), Struct_1(global1.a, u_input.b, 66042u, global2[_wgslsmith_index_u32(1u, 8u)], global1.e), global1.c), func_3(Struct_1(vec4<f32>(global1.a.x, -122f, -419f, 529f), vec3<i32>(0i, var_1.x, 2147483647i), 0u, global2[_wgslsmith_index_u32(u_input.a, 8u)], global0[_wgslsmith_index_u32(16762u, 18u)]), Struct_1(global1.a, u_input.b, 0u, vec3<u32>(u_input.a, u_input.a, u_input.a), false), Struct_1(global1.a, vec3<i32>(var_0, -2147483647i, 61043i), u_input.a, global1.d, global0[_wgslsmith_index_u32(40687u, 18u)]), 0u), firstLeadingBit(global1.d.x)), func_3(func_3(Struct_1(vec4<f32>(1317f, global1.a.x, 1650f, global1.a.x), u_input.c, global1.c, global1.d, global1.e), Struct_1(global1.a, vec3<i32>(2147483647i, var_0, 1i), global1.d.x, vec3<u32>(u_input.a, 5770u, u_input.a), true), Struct_1(global1.a, vec3<i32>(2147483647i, 32203i, global1.b.x), u_input.a, vec3<u32>(u_input.a, global1.c, 7900u), false), global1.c), Struct_1(vec4<f32>(global1.a.x, global1.a.x, global1.a.x, global1.a.x), vec3<i32>(global1.b.x, var_0, -1i), 50441u, vec3<u32>(global1.c, 65145u, 1u), global0[_wgslsmith_index_u32(global1.c, 18u)]), Struct_1(vec4<f32>(-446f, 1000f, global1.a.x, global1.a.x), u_input.b, u_input.a, vec3<u32>(global1.d.x, 1u, 0u), true), _wgslsmith_clamp_u32(global1.d.x, 6010u, u_input.a)), func_3(Struct_1(vec4<f32>(582f, -713f, -985f, -2171f), vec3<i32>(26393i, 26551i, -1i), global1.d.x, vec3<u32>(global1.d.x, 4294967295u, global1.d.x), global1.e), Struct_1(vec4<f32>(140f, 1514f, global1.a.x, global1.a.x), vec3<i32>(var_1.x, var_1.x, u_input.b.x), 8001u, vec3<u32>(35857u, u_input.a, 37611u), global1.e), Struct_1(vec4<f32>(global1.a.x, global1.a.x, global1.a.x, 1000f), global1.b, global1.d.x, global1.d, false), ~35952u), ~1u), 4294967295u), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.a) - vec4<f32>(global1.a.x, 286f, global1.a.x, -1696f))), vec3<i32>(10123i, var_0 >> (64411u % 32u), ~var_1.x), 19707u, ~select(~vec3<u32>(11508u, u_input.a, global1.c), vec3<u32>(1u, u_input.a, 1u), true), true), ~(~u_input.a & ~func_3(Struct_1(vec4<f32>(global1.a.x, global1.a.x, global1.a.x, global1.a.x), global1.b, u_input.a, global2[_wgslsmith_index_u32(u_input.a, 8u)], true), Struct_1(global1.a, vec3<i32>(var_1.x, 2147483647i, var_1.x), global1.d.x, vec3<u32>(4294967295u, 304u, u_input.a), false), Struct_1(vec4<f32>(global1.a.x, -133f, -359f, 1137f), u_input.c, 4294967295u, vec3<u32>(0u, 16533u, 16480u), global1.e), 15999u).d.x));
    global3 = array<vec2<i32>, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<i32>(var_1.x, u_input.b.x, 32717i), _wgslsmith_mult_vec3_i32(global1.b, vec3<i32>(var_0, 72521i, 21571i) & select(vec3<i32>(var_1.x, -57526i, 25785i), vec3<i32>(-4611i, var_0, 2147483647i), vec3<bool>(global0[_wgslsmith_index_u32(1u, 18u)], global1.e, false))), global1.e), vec3<i32>(var_1.x, ~abs(-var_1.x), var_0));
}

