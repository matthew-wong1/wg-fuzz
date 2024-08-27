struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 30>;

var<private> global1: array<vec2<bool>, 29> = array<vec2<bool>, 29>(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false));

var<private> global2: Struct_2 = Struct_2(1i, 4294967295u, Struct_1(45014u, vec4<i32>(20518i, i32(-2147483648), 0i, -17212i), 4294967295u), Struct_1(13446u, vec4<i32>(-1i, -60013i, 0i, -51948i), 4294967295u), Struct_1(4294967295u, vec4<i32>(32527i, -1i, -1i, 1i), 25554u));

var<private> global3: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(0i, 37144u, Struct_1(4294967295u, vec4<i32>(0i, -1387i, -25520i, 2147483647i), 0u), Struct_1(59407u, vec4<i32>(1i, -1i, 1i, -1i), 4294967295u), Struct_1(15130u, vec4<i32>(1i, -51256i, 17408i, i32(-2147483648)), 57899u)), Struct_2(i32(-2147483648), 0u, Struct_1(1u, vec4<i32>(-1i, -4453i, i32(-2147483648), -3696i), 0u), Struct_1(41003u, vec4<i32>(i32(-2147483648), 24439i, 1i, 2147483647i), 4294967295u), Struct_1(4294967295u, vec4<i32>(39956i, -44516i, 38102i, 29919i), 4294967295u)), Struct_2(15812i, 4294967295u, Struct_1(23748u, vec4<i32>(-25977i, -1i, 50364i, 0i), 0u), Struct_1(4294967295u, vec4<i32>(-1i, -27291i, 1i, -34534i), 4294967295u), Struct_1(1u, vec4<i32>(2147483647i, 33444i, i32(-2147483648), -1i), 0u)), Struct_2(74740i, 20054u, Struct_1(1u, vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, 0i), 1u), Struct_1(9440u, vec4<i32>(-1i, 5230i, 0i, 17756i), 0u), Struct_1(4294967295u, vec4<i32>(-17837i, 1i, 61509i, -80309i), 4294967295u)), Struct_2(-1i, 4294967295u, Struct_1(23240u, vec4<i32>(1i, i32(-2147483648), i32(-2147483648), 155i), 15332u), Struct_1(4294967295u, vec4<i32>(2147483647i, 28936i, -16056i, 0i), 9986u), Struct_1(1u, vec4<i32>(-43567i, i32(-2147483648), -40173i, 12137i), 77162u)), Struct_2(-80270i, 1u, Struct_1(42884u, vec4<i32>(0i, 2147483647i, 2147483647i, -1i), 0u), Struct_1(0u, vec4<i32>(7258i, 0i, 2147483647i, 40783i), 0u), Struct_1(0u, vec4<i32>(i32(-2147483648), -35453i, -19921i, 1i), 43705u)), Struct_2(2147483647i, 51297u, Struct_1(4294967295u, vec4<i32>(-22461i, -1i, i32(-2147483648), 2147483647i), 4294967295u), Struct_1(45621u, vec4<i32>(27230i, 18661i, 52265i, 32794i), 144176u), Struct_1(22273u, vec4<i32>(0i, -14969i, 3158i, i32(-2147483648)), 30536u)), Struct_2(-30886i, 1u, Struct_1(6898u, vec4<i32>(2147483647i, i32(-2147483648), -7085i, -29703i), 43537u), Struct_1(0u, vec4<i32>(1i, -1i, 33736i, 2147483647i), 4294967295u), Struct_1(4294967295u, vec4<i32>(-1i, -1i, 18057i, 32349i), 27722u)), Struct_2(46409i, 31192u, Struct_1(46973u, vec4<i32>(1i, i32(-2147483648), -1i, -26068i), 4294967295u), Struct_1(1u, vec4<i32>(2147483647i, i32(-2147483648), -1i, 61442i), 34357u), Struct_1(1u, vec4<i32>(7491i, -1i, 2308i, -1i), 5464u)), Struct_2(1i, 0u, Struct_1(1u, vec4<i32>(i32(-2147483648), i32(-2147483648), -12906i, -1i), 60272u), Struct_1(4294967295u, vec4<i32>(-1i, -18398i, 0i, -10231i), 51066u), Struct_1(0u, vec4<i32>(-3148i, 10821i, -2308i, 2147483647i), 4626u)), Struct_2(35726i, 0u, Struct_1(60820u, vec4<i32>(-17612i, 1i, 56260i, 9903i), 20090u), Struct_1(1u, vec4<i32>(2147483647i, i32(-2147483648), 17895i, -5277i), 0u), Struct_1(82234u, vec4<i32>(i32(-2147483648), -24331i, 25940i, -1i), 1u)), Struct_2(i32(-2147483648), 19068u, Struct_1(0u, vec4<i32>(1i, i32(-2147483648), 0i, -1844i), 1u), Struct_1(1u, vec4<i32>(-37975i, 0i, 27521i, -37858i), 32970u), Struct_1(4294967295u, vec4<i32>(0i, i32(-2147483648), 0i, -28879i), 48727u)));

var<private> global4: vec2<f32> = vec2<f32>(-480f, 1539f);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: Struct_3) -> bool {
    global3 = array<Struct_2, 12>();
    var var_0 = global3[_wgslsmith_index_u32(1u, 12u)];
    var var_1 = _wgslsmith_mult_u32(91199u, countOneBits(~0u));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global4.x, global4.x)));
    var_1 = ~52463u;
    return arg_2.a;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: bool) -> vec3<bool> {
    let var_0 = abs(~(~countOneBits(vec3<i32>(-43105i, global2.c.b.x, arg_1.c.b.x)) ^ -arg_1.c.b.zxx));
    global0 = array<vec3<i32>, 30>();
    var var_1 = !vec3<bool>(arg_2, all(vec3<bool>(false, true, any(vec3<bool>(false, arg_2, arg_2)))), !arg_2);
    var_1 = !select(!select(select(vec3<bool>(arg_2, false, true), vec3<bool>(true, true, var_1.x), false), !vec3<bool>(false, var_1.x, false), select(vec3<bool>(var_1.x, true, true), vec3<bool>(false, var_1.x, arg_2), var_1.x)), vec3<bool>(true, !all(vec3<bool>(var_1.x, false, false)), var_1.x | arg_2), func_3(Struct_2(0i, global2.b, Struct_1(arg_1.e.a, arg_1.e.b, u_input.c), global2.c, global2.c), countOneBits(arg_1.c.c), Struct_3(false, arg_1, Struct_1(0u, arg_1.c.b, 45833u))) && !(!arg_2));
    let var_2 = Struct_3(true, Struct_2(16732i, ~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(arg_1.c.a, 4294967295u, 99891u, arg_1.c.c)), vec4<u32>(u_input.c, arg_1.b, global2.b, global2.d.a)), arg_1.d, arg_1.d, Struct_1(49308u, global2.e.b, arg_0.x)), Struct_1(_wgslsmith_div_u32(reverseBits(firstTrailingBit(34584u)), arg_1.b), countOneBits(global2.e.b | global2.e.b) & vec4<i32>(~arg_1.a, 2147483647i, -28741i, _wgslsmith_mult_i32(-1i, arg_1.c.b.x)), _wgslsmith_add_u32(~1u, ~u_input.c)));
    return vec3<bool>(false, true, false);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_3) -> Struct_3 {
    global1 = array<vec2<bool>, 29>();
    return Struct_3(true, global3[_wgslsmith_index_u32(arg_1.e.c, 12u)], arg_1.c);
}

fn func_1() -> vec2<u32> {
    let var_0 = func_4(!select(func_2(vec2<u32>(global2.e.c, 6621u), Struct_2(u_input.e.x, 10386u, global2.e, global2.e, Struct_1(global2.b, vec4<i32>(u_input.d, -10310i, -2147483647i, 5605i), 22830u)), true), vec3<bool>(true, true, true), vec3<bool>(all(vec4<bool>(true, true, false, false)), true, true)), global3[_wgslsmith_index_u32(4294967295u, 12u)], Struct_3(any(vec2<bool>(true, true)), global3[_wgslsmith_index_u32(firstTrailingBit(~0u), 12u)], Struct_1(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, 37549u), vec3<u32>(4294967295u, u_input.a, 26416u)), firstLeadingBit(global2.d.b), ~10539u)));
    global3 = array<Struct_2, 12>();
    global3 = array<Struct_2, 12>();
    global3 = array<Struct_2, 12>();
    let var_1 = global2.d;
    return vec2<u32>(1u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(83274u, 1u), _wgslsmith_add_u32(0u ^ var_0.c.a, u_input.a)), 44277u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(~91440u, 9304u), func_1()), abs(_wgslsmith_sub_vec2_u32(vec2<u32>(global2.e.c, 0u), vec2<u32>(global2.b, 24292u)))) ^ select(vec2<u32>(u_input.a, 1u >> (global2.c.c % 32u)), ~(vec2<u32>(global2.d.c, 0u) >> (~vec2<u32>(1u, u_input.a) % vec2<u32>(32u))), !func_2(abs(vec2<u32>(u_input.a, 13844u)), global3[_wgslsmith_index_u32(global2.b, 12u)], global2.d.b.x <= -1i).x);
    global1 = array<vec2<bool>, 29>();
    let var_1 = _wgslsmith_sub_i32(-21145i, ~(~(abs(6081i) | _wgslsmith_add_i32(67451i, global2.a))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2099f, global4.x, 278f, -742f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(322f, 1248f, global4.x, global4.x) - vec4<f32>(-501f, -1175f, global4.x, 3289f)))), func_4(vec3<bool>(false, true, false), global3[_wgslsmith_index_u32(u_input.c, 12u)], Struct_3(true, Struct_2(var_1, var_0.x, Struct_1(1u, vec4<i32>(u_input.b, 1i, 43512i, global2.c.b.x), var_0.x), global2.d, Struct_1(u_input.a, vec4<i32>(u_input.b, u_input.e.x, 23426i, -1574i), global2.e.c)), Struct_1(global2.d.c, vec4<i32>(2147483647i, 1i, -20403i, var_1), 8365u))).a && false)))));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-589f, var_2.x, 288f, global4.x))))))));
    global2 = func_4(vec3<bool>(true, select(~0u <= firstLeadingBit(global2.b), func_3(func_4(vec3<bool>(true, true, true), global3[_wgslsmith_index_u32(global2.b, 12u)], Struct_3(false, global3[_wgslsmith_index_u32(global2.d.a, 12u)], global2.d)).b, 2319u ^ global2.d.a, func_4(vec3<bool>(true, false, true), global3[_wgslsmith_index_u32(10544u, 12u)], Struct_3(true, global3[_wgslsmith_index_u32(var_0.x, 12u)], global2.d))), true), func_1().x < 73840u), global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(~var_0.x, 0u, 0u | u_input.a, global2.d.c), vec4<u32>(1u, func_1().x, global2.e.c, ~global2.b)), 12u)], Struct_3(true, global3[_wgslsmith_index_u32(u_input.a, 12u)], Struct_1(~(~global2.d.a), _wgslsmith_mult_vec4_i32(global2.d.b, -global2.c.b), u_input.a))).b;
    let var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-_wgslsmith_add_i32(var_1, _wgslsmith_mult_i32(0i, global2.a)), -25375i), 2147483647i, u_input.d, vec2<f32>(global4.x, _wgslsmith_f_op_f32(global4.x + _wgslsmith_f_op_f32(-var_2.x))), firstTrailingBit(_wgslsmith_dot_vec4_i32(global2.c.b, ~countOneBits(global2.e.b))));
}

