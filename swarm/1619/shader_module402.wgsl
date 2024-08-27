struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec2<bool>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec4<i32>(3823i, 1i, 1i, -35887i), vec4<i32>(-71688i, -1i, 11495i, 23774i), vec2<f32>(764f, -253f)), Struct_1(vec4<i32>(-20402i, -10298i, -64012i, i32(-2147483648)), vec4<i32>(6734i, -3206i, 9112i, 1i), vec2<f32>(179f, -155f)), Struct_1(vec4<i32>(0i, -59418i, 26885i, -1i), vec4<i32>(-1i, 1i, -9465i, -12578i), vec2<f32>(1646f, 493f)), Struct_1(vec4<i32>(-73180i, 2147483647i, 0i, -42255i), vec4<i32>(47989i, 1i, -16993i, 0i), vec2<f32>(-386f, 1716f)), Struct_1(vec4<i32>(6347i, -27103i, -13639i, 2147483647i), vec4<i32>(22206i, 2147483647i, 15032i, 0i), vec2<f32>(-606f, -882f)), Struct_1(vec4<i32>(1i, 1i, 0i, 6842i), vec4<i32>(20240i, -10248i, -33401i, 1i), vec2<f32>(-609f, -1034f)), Struct_1(vec4<i32>(1i, 15472i, 1i, -40024i), vec4<i32>(24209i, 2147483647i, 8683i, 96487i), vec2<f32>(-1488f, 1274f)), Struct_1(vec4<i32>(-13094i, -1i, 1i, 2147483647i), vec4<i32>(31343i, -36895i, 2147483647i, 18348i), vec2<f32>(-604f, -857f)), Struct_1(vec4<i32>(i32(-2147483648), 1i, 13927i, i32(-2147483648)), vec4<i32>(2147483647i, 2147483647i, -14551i, 1i), vec2<f32>(-1691f, 302f)), Struct_1(vec4<i32>(21328i, i32(-2147483648), i32(-2147483648), i32(-2147483648)), vec4<i32>(-1i, 0i, 1i, 34158i), vec2<f32>(-276f, -808f)), Struct_1(vec4<i32>(-31150i, i32(-2147483648), 3459i, 2147483647i), vec4<i32>(i32(-2147483648), -3950i, 2147483647i, -4324i), vec2<f32>(2682f, -1000f)), Struct_1(vec4<i32>(1i, -65368i, i32(-2147483648), 64495i), vec4<i32>(26810i, 22196i, i32(-2147483648), 0i), vec2<f32>(1141f, -514f)), Struct_1(vec4<i32>(44170i, -9492i, i32(-2147483648), i32(-2147483648)), vec4<i32>(0i, 0i, -45506i, 1i), vec2<f32>(-1168f, -557f)), Struct_1(vec4<i32>(-1i, i32(-2147483648), -1i, 0i), vec4<i32>(0i, -33246i, i32(-2147483648), -5780i), vec2<f32>(1000f, -1062f)), Struct_1(vec4<i32>(2147483647i, -6054i, 7756i, -7834i), vec4<i32>(0i, 2147483647i, 2147483647i, -42984i), vec2<f32>(-936f, 1000f)), Struct_1(vec4<i32>(62124i, 2147483647i, 6786i, 2147483647i), vec4<i32>(i32(-2147483648), 12889i, 29224i, -1i), vec2<f32>(1000f, -1044f)), Struct_1(vec4<i32>(41905i, 1i, 0i, 26201i), vec4<i32>(41405i, -26422i, -62938i, -16701i), vec2<f32>(-1277f, 575f)), Struct_1(vec4<i32>(6040i, 0i, i32(-2147483648), i32(-2147483648)), vec4<i32>(-38576i, 6921i, 1i, 34132i), vec2<f32>(-272f, -1887f)));

var<private> global1: array<i32, 1>;

var<private> global2: array<f32, 26>;

var<private> global3: vec2<f32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec4<f32> {
    var var_0 = any(select(vec2<bool>(all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), false)), any(vec4<bool>(true, true, true, true))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), false), true), vec2<bool>(any(vec2<bool>(true, true)), all(vec2<bool>(false, true)))), abs(global1[_wgslsmith_index_u32(firstLeadingBit(7465u), 1u)]) != _wgslsmith_mod_i32(_wgslsmith_mult_i32(-11130i, global1[_wgslsmith_index_u32(0u, 1u)]), -1i)));
    var var_1 = _wgslsmith_mod_vec3_u32(reverseBits(reverseBits(select(u_input.c >> (vec3<u32>(56376u, 61317u, 1u) % vec3<u32>(32u)), ~vec3<u32>(u_input.e, 14624u, 62759u), false))), vec3<u32>(4294967295u, abs(reverseBits(_wgslsmith_div_u32(1u, u_input.c.x))), 68016u));
    var_0 = !(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(26891u, 94645u), var_1.x), 26u)]) > _wgslsmith_div_f32(global2[_wgslsmith_index_u32(~var_1.x, 26u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-383f)))));
    let var_2 = global0[_wgslsmith_index_u32(abs(_wgslsmith_clamp_u32(20103u, ~4294967295u, u_input.c.x) >> (u_input.a.x % 32u)), 18u)];
    var var_3 = -38002i;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1321f, global3.x, _wgslsmith_f_op_f32(global3.x * global2[_wgslsmith_index_u32(u_input.e, 26u)]), global3.x), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 26u)], 1041f, 1842f, var_2.c.x) + vec4<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 26u)], 886f, global2[_wgslsmith_index_u32(u_input.e, 26u)], global2[_wgslsmith_index_u32(30830u, 26u)])))), vec4<bool>(true, true, true, true)))) - vec4<f32>(global3.x, _wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), -1166f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(254f, 1415f)) + var_2.c.x)));
}

fn func_2(arg_0: bool, arg_1: f32) -> f32 {
    let var_0 = u_input.b;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, -1252f))), arg_1, -1000f, global2[_wgslsmith_index_u32(1u, 26u)]);
    var_1 = _wgslsmith_f_op_vec4_f32(func_3());
    global2 = array<f32, 26>();
    let var_2 = abs(u_input.c) >> (u_input.c % vec3<u32>(32u));
    return -489f;
}

fn func_1(arg_0: u32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global3.x)), -553f))));
    var var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(969f - 690f), _wgslsmith_f_op_f32(global3.x * global2[_wgslsmith_index_u32(12141u, 26u)]), _wgslsmith_f_op_f32(func_2(true, -1061f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(18141u, 26u)], global2[_wgslsmith_index_u32(u_input.e, 26u)], -610f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-393f, -1000f, global2[_wgslsmith_index_u32(35814u, 26u)]) + vec3<f32>(-930f, -328f, -672f)))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, 1309f, -697f) - vec3<f32>(global3.x, global2[_wgslsmith_index_u32(1u, 26u)], global2[_wgslsmith_index_u32(4294967295u, 26u)])), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global3.x, 665f, -864f))), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(step(-129f, 265f))), _wgslsmith_f_op_f32(round(926f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.x, -179f) + _wgslsmith_f_op_vec4_f32(func_3()).x)))));
    global1 = array<i32, 1>();
    var var_2 = 1f;
    let var_3 = true;
    return var_3 && (!any(select(vec3<bool>(var_3, false, var_3), vec3<bool>(var_3, var_3, var_3), false)) != (_wgslsmith_f_op_f32(-var_1.x) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(843f + -1077f) + _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(4294967295u, 26u)], var_1.x, var_3)))));
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: Struct_3) -> Struct_3 {
    let var_0 = u_input.b.wx;
    global1 = array<i32, 1>();
    var var_1 = _wgslsmith_sub_i32(~(firstTrailingBit(u_input.b.x & 14863i) ^ -2147483647i), var_0.x);
    let var_2 = ~u_input.b.x;
    var_1 = ~global1[_wgslsmith_index_u32(4294967295u, 1u)];
    return arg_2;
}

fn func_5(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_0.a && true;
    var var_1 = _wgslsmith_add_u32(u_input.e, firstLeadingBit(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(51533u, firstTrailingBit(u_input.e)), firstTrailingBit(1u), u_input.a.x)));
    global0 = array<Struct_1, 18>();
    global3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.c) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.b.c.x, 457f), vec2<f32>(arg_0.b.c.x, 849f)))))));
    var var_2 = arg_0;
    return global0[_wgslsmith_index_u32(52u, 18u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(!(!func_1(u_input.c.x)), ~_wgslsmith_add_u32(_wgslsmith_mod_u32(43056u, u_input.e), u_input.e), Struct_3(any(vec3<bool>(true, true, true)) | true, global0[_wgslsmith_index_u32(4294967295u, 18u)], !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec4<bool>(true, true, true, true))), _wgslsmith_div_vec4_i32(reverseBits(u_input.b), _wgslsmith_mod_vec4_i32(vec4<i32>(-18969i, ~0i, ~u_input.b.x, u_input.d | u_input.d), vec4<i32>(5325i, u_input.b.x, global1[_wgslsmith_index_u32(0u, 1u)] ^ global1[_wgslsmith_index_u32(u_input.a.x, 1u)], firstLeadingBit(u_input.b.x)))), Struct_1(vec4<i32>(0i, _wgslsmith_mult_i32(firstTrailingBit(u_input.d), global1[_wgslsmith_index_u32(u_input.e, 1u)]), global1[_wgslsmith_index_u32(abs(~4294967295u), 1u)], _wgslsmith_mult_i32(2240i, ~(-1i))), vec4<i32>(-1i) * -vec4<i32>(global1[_wgslsmith_index_u32(41861u, 1u)], global1[_wgslsmith_index_u32(4294967295u, 1u)], -26123i, 1i), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(0u, 26u)], -1477f) * vec2<f32>(-188f, global2[_wgslsmith_index_u32(4294967295u, 26u)]))))));
    var var_1 = Struct_2(~(~7989i), ~(~(~vec4<u32>(u_input.e, u_input.e, 0u, 29811u))), any(vec4<bool>(func_1(~71637u), -1101f < _wgslsmith_f_op_f32(-global3.x), true, true)));
    var var_2 = Struct_1(vec4<i32>(_wgslsmith_dot_vec4_i32(func_5(Struct_3(var_1.c, global0[_wgslsmith_index_u32(56760u, 18u)], vec2<bool>(var_1.c, var_1.c), vec4<bool>(var_1.c, var_1.c, true, var_1.c)), vec4<i32>(global1[_wgslsmith_index_u32(39748u, 1u)], u_input.b.x, -28693i, u_input.d) ^ var_0.b, Struct_1(vec4<i32>(-5069i, 1i, u_input.b.x, var_1.a), u_input.b, var_0.c)).b, vec4<i32>(~u_input.d, _wgslsmith_mod_i32(var_1.a, var_0.b.x), 2147483647i, -var_1.a)), 33389i, _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(var_1.b.x, 1u)], -39232i), var_1.a), -_wgslsmith_mult_vec4_i32((u_input.b & u_input.b) << (reverseBits(var_1.b) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(u_input.b, vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 1u)], u_input.b.x, -14260i, global1[_wgslsmith_index_u32(1u, 1u)]))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_0.c))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_0.c.x))))));
    let var_3 = 1115i;
    let x = u_input.a;
    s_output = StorageBuffer(~(global1[_wgslsmith_index_u32(36371u, 1u)] ^ ~1i), var_1.b);
}

