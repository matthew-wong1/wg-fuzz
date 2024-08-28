struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_2,
    d: vec4<u32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
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

var<private> global0: i32 = 1i;

var<private> global1: array<bool, 15> = array<bool, 15>(false, false, true, false, true, false, true, false, true, false, true, true, true, false, true);

var<private> global2: array<vec4<bool>, 7>;

var<private> global3: vec2<f32>;

var<private> global4: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec3<u32>(93948u, 0u, 0u), -53111i, true, 51352u), Struct_1(vec3<u32>(0u, 9277u, 0u), 8677i, false, 4294967295u), Struct_1(vec3<u32>(4294967295u, 85441u, 40386u), -18002i, true, 4294967295u), Struct_1(vec3<u32>(71909u, 1u, 4294967295u), 14983i, false, 36183u), Struct_1(vec3<u32>(0u, 1u, 44790u), -93135i, true, 14844u), Struct_1(vec3<u32>(21625u, 1u, 0u), 24153i, false, 4294967295u), Struct_1(vec3<u32>(36837u, 1u, 0u), 2727i, false, 1u), Struct_1(vec3<u32>(4294967295u, 71765u, 6526u), 37919i, false, 75009u), Struct_1(vec3<u32>(0u, 1u, 43525u), -34886i, false, 1u), Struct_1(vec3<u32>(31692u, 1u, 0u), i32(-2147483648), true, 1u), Struct_1(vec3<u32>(14081u, 12854u, 45225u), -10950i, false, 4294967295u), Struct_1(vec3<u32>(20856u, 4353u, 4294967295u), -47210i, true, 0u), Struct_1(vec3<u32>(79262u, 0u, 0u), -1i, true, 4294967295u), Struct_1(vec3<u32>(19658u, 0u, 14114u), 2147483647i, false, 0u), Struct_1(vec3<u32>(0u, 4625u, 4294967295u), 24040i, true, 1u), Struct_1(vec3<u32>(0u, 51704u, 4294967295u), i32(-2147483648), true, 25951u), Struct_1(vec3<u32>(43956u, 4294967295u, 0u), -1i, true, 68247u), Struct_1(vec3<u32>(53562u, 0u, 82512u), i32(-2147483648), false, 4294967295u), Struct_1(vec3<u32>(4294967295u, 1371u, 29583u), 25607i, true, 18830u), Struct_1(vec3<u32>(4294967295u, 15317u, 4294967295u), 1i, false, 4294967295u), Struct_1(vec3<u32>(0u, 10888u, 0u), i32(-2147483648), true, 1u), Struct_1(vec3<u32>(57836u, 1u, 26988u), 13613i, false, 4294967295u), Struct_1(vec3<u32>(4294967295u, 25938u, 0u), 6547i, true, 4294967295u), Struct_1(vec3<u32>(30889u, 4294967295u, 22737u), 11173i, false, 4294967295u), Struct_1(vec3<u32>(4294967295u, 20612u, 1u), 34055i, true, 0u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_4, arg_1: bool) -> i32 {
    global4 = array<Struct_1, 25>();
    var var_0 = select(max(arg_0.b.b, ~17207i), abs(arg_0.b.b), _wgslsmith_clamp_u32(arg_0.d.x, ~u_input.c, _wgslsmith_dot_vec2_u32(u_input.b, arg_0.b.a.xz)) >= _wgslsmith_dot_vec2_u32(arg_0.b.a.yx, firstLeadingBit(vec2<u32>(26630u, 4294967295u))));
    var var_1 = Struct_1(~vec3<u32>(firstTrailingBit(4294967295u), 44484u << ((u_input.b.x | 105170u) % 32u), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 30016u, 19362u, u_input.a), arg_0.d), arg_0.d)), _wgslsmith_sub_i32(-_wgslsmith_sub_i32(-arg_0.c.b.b, i32(-1i) * -2147483647i), -2147483647i >> (arg_0.b.d % 32u)), arg_1, ~(~reverseBits(~u_input.b.x)));
    var var_2 = 4401u;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, global3.x) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-807f, arg_0.c.c), vec2<f32>(arg_0.c.c, global3.x), true))) - vec2<f32>(_wgslsmith_div_f32(arg_0.c.c, -240f), _wgslsmith_f_op_f32(-arg_0.c.c)))));
    return 0i;
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: Struct_3) -> Struct_2 {
    return Struct_2(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 15u)], any(select(vec4<bool>(arg_2.a, true, false, false), !global2[_wgslsmith_index_u32(u_input.a, 7u)], vec4<bool>(false, true, false, false)))), Struct_1(arg_2.b.a, _wgslsmith_div_i32(-func_3(Struct_4(vec4<i32>(arg_0, arg_2.b.b, -14553i, 4048i), Struct_1(vec3<u32>(4294967295u, arg_1, arg_2.b.d), -1i, arg_2.b.c, 0u), Struct_2(vec3<bool>(true, global1[_wgslsmith_index_u32(47936u, 15u)], false), arg_2.b, global3.x, Struct_1(arg_2.b.a, -1i, true, 0u), arg_2.b), vec4<u32>(0u, 1u, 76287u, arg_2.b.a.x), arg_2.b.a.x), arg_2.a), _wgslsmith_add_i32(0i, arg_0)), false, _wgslsmith_add_u32(23827u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 0u), arg_2.b.a.zy))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(f32(-1f) * -588f)) * _wgslsmith_f_op_f32(global3.x - global3.x)), arg_2.b, Struct_1(~(~arg_2.b.a) << (countOneBits(reverseBits(vec3<u32>(80386u, u_input.c, u_input.c))) % vec3<u32>(32u)), max(-arg_0 ^ ~arg_0, _wgslsmith_mult_i32(1i, -31562i) << (~u_input.a % 32u)), all(vec3<bool>(true, select(true, true, global1[_wgslsmith_index_u32(11214u, 15u)]), u_input.a >= 24382u)), _wgslsmith_mod_u32(arg_1, u_input.c)));
}

fn func_1(arg_0: bool, arg_1: vec3<f32>) -> f32 {
    var var_0 = firstTrailingBit(32521u);
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(global3.x)), _wgslsmith_f_op_f32(round(1008f)), -374f, _wgslsmith_f_op_f32(f32(-1f) * -554f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global3.x), 1853f, -1011f, _wgslsmith_f_op_f32(sign(global3.x))))));
    var var_2 = func_2(~min(1i, (i32(-1i) * -2147483647i) & _wgslsmith_clamp_i32(0i, 0i, -8339i)), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(firstTrailingBit(u_input.b.x), _wgslsmith_div_u32(287u, u_input.b.x)), select(28095u << (u_input.a % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(44344u, u_input.b.x, 12407u), vec3<u32>(42878u, 18630u, u_input.c)), true), _wgslsmith_sub_u32(1u, 1u)), vec3<u32>(8980u, _wgslsmith_sub_u32(4294967295u, u_input.c), ~firstLeadingBit(u_input.b.x))), Struct_3(true, global4[_wgslsmith_index_u32(~6465u, 25u)]));
    var var_3 = -12517i;
    let var_4 = firstLeadingBit(~u_input.b);
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(var_2.c)), global3.x));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: bool, arg_3: vec4<bool>) -> Struct_2 {
    return arg_1;
}

fn func_5(arg_0: Struct_2) -> Struct_3 {
    let var_0 = _wgslsmith_div_u32(1u, _wgslsmith_sub_u32(arg_0.b.d | countOneBits(arg_0.e.a.x), ~u_input.a >> (4294967295u % 32u)));
    let var_1 = _wgslsmith_mult_i32(min(-min(_wgslsmith_div_i32(11859i, arg_0.b.b), abs(5222i)), -5814i << (u_input.c % 32u)), ~select(arg_0.e.b, ~select(60891i, arg_0.b.b, global1[_wgslsmith_index_u32(13472u, 15u)]), false));
    let var_2 = false;
    var var_3 = Struct_3(true, func_4(vec4<f32>(406f, 1374f, _wgslsmith_f_op_f32(-func_2(1i, var_0, Struct_3(global1[_wgslsmith_index_u32(var_0, 15u)], Struct_1(vec3<u32>(u_input.a, u_input.a, u_input.a), -49988i, false, var_0))).c), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.c - global3.x)))), arg_0, arg_0.a.x, vec4<bool>(!(false | global1[_wgslsmith_index_u32(4294967295u, 15u)]), false, arg_0.a.x, !(!var_2))).d);
    let var_4 = Struct_4(abs(-max(_wgslsmith_div_vec4_i32(vec4<i32>(20850i, -2147483647i, arg_0.d.b, 0i), vec4<i32>(47159i, arg_0.d.b, arg_0.e.b, var_1)), vec4<i32>(-1i, arg_0.d.b, -1i, var_1))), Struct_1(arg_0.e.a, ~10809i, !(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_0, arg_0.e.d, 4294967295u), vec4<u32>(4294967295u, arg_0.d.d, var_0, 1u)), 15u)] | all(global2[_wgslsmith_index_u32(var_3.b.d, 7u)])), 50312u), func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global3.x, arg_0.c, 699f, global3.x))) + vec4<f32>(-464f, -732f, -195f, -1000f))), func_2(_wgslsmith_sub_i32(0i, var_3.b.b), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_3.b.d, u_input.a, 40618u, 12239u), select(vec4<u32>(var_3.b.a.x, var_0, var_3.b.d, 80832u), vec4<u32>(arg_0.b.d, 24713u, var_3.b.d, 4555u), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 15u)], global1[_wgslsmith_index_u32(73372u, 15u)], global1[_wgslsmith_index_u32(0u, 15u)], false))), Struct_3(4294967295u == u_input.a, arg_0.d)), _wgslsmith_f_op_f32(-616f * _wgslsmith_f_op_f32(f32(-1f) * -2035f)) < _wgslsmith_f_op_f32(_wgslsmith_div_f32(930f, -1469f) + _wgslsmith_div_f32(-486f, global3.x)), global2[_wgslsmith_index_u32(~4294967295u >> (min(_wgslsmith_mult_u32(u_input.b.x, u_input.c), _wgslsmith_sub_u32(var_0, var_0)) % 32u), 7u)]), vec4<u32>(arg_0.d.a.x, 1u, (~var_0 | ~1u) << (48526u % 32u), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_0.d.a.x, u_input.b.x, var_0), vec4<u32>(u_input.b.x, 4294967295u, 4294967295u, arg_0.e.d)))), u_input.a);
    return Struct_3((-_wgslsmith_add_i32(1i, 57404i) | var_3.b.b) != -9070i, func_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(global3.x, 1623f, arg_0.c, 462f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global3.x, var_4.c.c, -1193f, var_4.c.c), vec4<f32>(global3.x, -1301f, arg_0.c, 2440f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.c, arg_0.c, -172f, var_4.c.c), vec4<f32>(global3.x, -2781f, var_4.c.c, 1000f)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_4.c.c, arg_0.c, arg_0.c, global3.x))))), select(global2[_wgslsmith_index_u32(firstLeadingBit(29272u), 7u)], global2[_wgslsmith_index_u32(4294967295u, 7u)], var_2))), arg_0, func_4(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, var_4.c.c, var_4.c.c, global3.x) - vec4<f32>(303f, 332f, 918f, 1142f)))), arg_0, select(!var_2, true, var_2 && arg_0.b.c), vec4<bool>(var_2, true, var_3.a && false, func_2(-6939i, 65391u, Struct_3(true, Struct_1(vec3<u32>(2479u, var_4.b.d, u_input.c), var_4.a.x, false, var_0))).e.c)).e.c, select(vec4<bool>(all(vec2<bool>(false, var_2)), true, var_4.b.b == var_3.b.b, false), vec4<bool>(var_2, true, false, true), func_2(var_1, var_3.b.d, Struct_3(arg_0.e.c, global4[_wgslsmith_index_u32(0u, 25u)])).b.b >= 17497i)).e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_i32(-7442i, -25956i);
    let var_1 = func_5(func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(-747f, _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(4294967295u, 15u)], vec3<f32>(-1682f, global3.x, -964f))), global3.x) * _wgslsmith_div_vec4_f32(vec4<f32>(global3.x, -275f, 389f, global3.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1289f, global3.x, global3.x, -1539f)))), func_2(select(~(-2147483647i), -31290i, true), ~u_input.a, Struct_3(!global1[_wgslsmith_index_u32(u_input.a, 15u)], Struct_1(vec3<u32>(0u, u_input.a, u_input.c), -1i, false, 0u))), global1[_wgslsmith_index_u32(~((u_input.a >> (1u % 32u)) & 1u), 15u)], global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, u_input.b.x), 7u)]));
    var var_2 = ~(~(~select(vec4<u32>(34404u, var_1.b.d, u_input.b.x, u_input.c), _wgslsmith_mult_vec4_u32(vec4<u32>(93323u, 5357u, 38472u, var_1.b.d), vec4<u32>(0u, var_1.b.a.x, 92177u, 4294967295u)), var_1.b.c)));
    var_2 = countOneBits(_wgslsmith_mod_vec4_u32(abs(_wgslsmith_add_vec4_u32(vec4<u32>(36950u, 1u, 23875u, 1u), vec4<u32>(56352u, u_input.c, 17558u, 58684u))), (vec4<u32>(47332u, 0u, u_input.c, 0u) ^ vec4<u32>(var_2.x, 98827u, u_input.c, 4294967295u)) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.x, var_1.b.a.x, var_2.x, u_input.b.x), vec4<u32>(var_1.b.a.x, var_1.b.a.x, 4294967295u, 4294967295u), vec4<u32>(1u, 0u, 67007u, 18811u)) % vec4<u32>(32u)))) << (vec4<u32>(18857u, func_2(1i, u_input.b.x, func_5(func_2(44631i, u_input.c, var_1))).d.d, countOneBits(max(4294967295u, 1u) ^ ~u_input.b.x), 4294967295u) % vec4<u32>(32u));
    var var_3 = min(_wgslsmith_div_vec3_u32(~(vec3<u32>(73532u, 1u, var_2.x) >> (vec3<u32>(u_input.a, 65376u, 1u) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_u32(firstLeadingBit(abs(var_1.b.a)), ~_wgslsmith_add_vec3_u32(vec3<u32>(1u, var_2.x, var_1.b.a.x), var_2.wyz), vec3<u32>(u_input.a, var_1.b.d, var_1.b.d) ^ ~var_2.zyz)), ~countOneBits(~vec3<u32>(var_1.b.d, 4294967295u, var_2.x)) << (var_1.b.a % vec3<u32>(32u)));
    let var_4 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, global3.x))));
    let var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-804f, var_4.x, global3.x) - vec3<f32>(var_4.x, 426f, var_4.x))))), _wgslsmith_f_op_f32(-318f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-529f, var_4.x, false)), global3.x))));
}

