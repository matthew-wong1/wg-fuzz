struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: i32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 7> = array<Struct_4, 7>(Struct_4(vec3<bool>(false, true, true), vec3<f32>(-321f, 1000f, -2367f)), Struct_4(vec3<bool>(false, false, true), vec3<f32>(-1000f, -155f, 893f)), Struct_4(vec3<bool>(false, true, false), vec3<f32>(-1022f, -1272f, 384f)), Struct_4(vec3<bool>(false, true, false), vec3<f32>(688f, 1451f, -147f)), Struct_4(vec3<bool>(true, true, false), vec3<f32>(-336f, 2221f, 1810f)), Struct_4(vec3<bool>(false, true, false), vec3<f32>(-438f, -1171f, -724f)), Struct_4(vec3<bool>(false, false, true), vec3<f32>(350f, -777f, 103f)));

var<private> global1: array<i32, 30>;

var<private> global2: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec4<u32>(43943u, 4294967295u, 10442u, 27549u), vec2<bool>(false, true), 44802i), Struct_1(vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u), vec2<bool>(false, true), 0i), Struct_1(vec4<u32>(41159u, 1u, 1u, 1u), vec2<bool>(false, false), i32(-2147483648)), Struct_1(vec4<u32>(40008u, 63439u, 34879u, 0u), vec2<bool>(false, true), -41034i), Struct_1(vec4<u32>(1u, 23058u, 25852u, 0u), vec2<bool>(true, false), -14919i), Struct_1(vec4<u32>(17165u, 4294967295u, 0u, 33148u), vec2<bool>(false, true), 0i), Struct_1(vec4<u32>(56344u, 4294967295u, 26927u, 20980u), vec2<bool>(true, true), -30959i), Struct_1(vec4<u32>(6226u, 4294967295u, 4294967295u, 72452u), vec2<bool>(false, false), 58780i), Struct_1(vec4<u32>(4294967295u, 1u, 1u, 4294967295u), vec2<bool>(true, true), -21000i), Struct_1(vec4<u32>(48413u, 4294967295u, 0u, 21841u), vec2<bool>(true, false), 0i), Struct_1(vec4<u32>(0u, 4294967295u, 4294967295u, 34196u), vec2<bool>(true, false), 34660i), Struct_1(vec4<u32>(0u, 7613u, 1u, 27586u), vec2<bool>(false, false), -1i), Struct_1(vec4<u32>(2467u, 36199u, 18564u, 0u), vec2<bool>(true, false), 2147483647i), Struct_1(vec4<u32>(35775u, 4294967295u, 4294967295u, 0u), vec2<bool>(false, false), 2147483647i), Struct_1(vec4<u32>(0u, 29481u, 0u, 0u), vec2<bool>(true, true), 889i), Struct_1(vec4<u32>(45516u, 7545u, 35597u, 60481u), vec2<bool>(true, false), 56006i), Struct_1(vec4<u32>(113749u, 0u, 0u, 25181u), vec2<bool>(true, true), 73546i), Struct_1(vec4<u32>(0u, 29045u, 4294967295u, 4294967295u), vec2<bool>(true, true), 10577i), Struct_1(vec4<u32>(14817u, 4377u, 4294967295u, 2300u), vec2<bool>(true, true), -1i), Struct_1(vec4<u32>(19405u, 12312u, 0u, 0u), vec2<bool>(true, false), -23336i), Struct_1(vec4<u32>(5472u, 1u, 0u, 39172u), vec2<bool>(false, false), 28282i), Struct_1(vec4<u32>(4294967295u, 0u, 1u, 88302u), vec2<bool>(true, false), -20739i), Struct_1(vec4<u32>(4294967295u, 25360u, 4294967295u, 0u), vec2<bool>(true, false), i32(-2147483648)));

var<private> global3: array<vec2<bool>, 21> = array<vec2<bool>, 21>(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true));

var<private> global4: vec4<f32> = vec4<f32>(863f, -1000f, -1390f, -559f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32, arg_1: vec3<f32>) -> u32 {
    global4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(global4.x, _wgslsmith_f_op_f32(arg_0 + arg_1.x), _wgslsmith_f_op_f32(arg_0 - arg_1.x), _wgslsmith_div_f32(1000f, 1000f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, global4.x, arg_1.x, global4.x) * vec4<f32>(arg_1.x, arg_0, 723f, 1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, -319f, arg_1.x, 432f) - vec4<f32>(-603f, 1965f, 810f, arg_1.x)))))));
    let var_0 = 1i;
    var var_1 = vec3<u32>(_wgslsmith_dot_vec4_u32(countOneBits(~vec4<u32>(7463u, u_input.a, 1u, 4294967295u)) & abs(vec4<u32>(0u, 0u, 102479u, u_input.a)), vec4<u32>(_wgslsmith_div_u32(1u, 4294967295u), 87838u, u_input.a >> (~31662u % 32u), 58467u)), ~(~_wgslsmith_mod_u32(12922u, u_input.a)), ~select(u_input.a, max(~u_input.a, _wgslsmith_div_u32(u_input.a, u_input.a)), select(u_input.a, u_input.a, false) != _wgslsmith_mod_u32(28093u, 4294967295u)));
    var var_2 = _wgslsmith_mult_vec3_i32(reverseBits(_wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(u_input.b, global1[_wgslsmith_index_u32(u_input.a, 30u)], -2147483647i)), min(vec3<i32>(-83995i, u_input.b, var_0), vec3<i32>(8629i, -64060i, -1i)))) ^ vec3<i32>(_wgslsmith_add_i32(u_input.b, 1i), -15383i, ~(~global1[_wgslsmith_index_u32(33016u, 30u)])), ~(~vec3<i32>(max(-2147483647i, -14407i), u_input.b >> (var_1.x % 32u), 1i)));
    var var_3 = 111f;
    return u_input.a | reverseBits(2650u);
}

fn func_2(arg_0: bool) -> i32 {
    let var_0 = Struct_2(-abs(-(vec4<i32>(u_input.b, -27301i, global1[_wgslsmith_index_u32(65564u, 30u)], global1[_wgslsmith_index_u32(u_input.a, 30u)]) ^ vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 30u)], 0i, u_input.b, u_input.b))));
    let var_1 = ~(~vec3<i32>(-20271i, ~(-7262i), -28868i)) >> (_wgslsmith_sub_vec3_u32(~select(vec3<u32>(u_input.a, u_input.a, 14464u), countOneBits(vec3<u32>(u_input.a, 3584u, u_input.a)), arg_0), vec3<u32>(~_wgslsmith_div_u32(0u, u_input.a), ~(0u | u_input.a), _wgslsmith_add_u32(u_input.a, _wgslsmith_sub_u32(u_input.a, 7705u)))) % vec3<u32>(32u));
    var var_2 = vec2<bool>(all(global3[_wgslsmith_index_u32(min(0u, func_3(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-262f, global4.x, global4.x)))), 21u)]), arg_0);
    var var_3 = ~(~firstLeadingBit(1u));
    let var_4 = Struct_2(var_0.a);
    return (countOneBits(0i) ^ ~(~_wgslsmith_clamp_i32(u_input.b, -31252i, global1[_wgslsmith_index_u32(1u, 30u)]))) | 9571i;
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(global4.x)))));
    let var_1 = -func_2(any(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false))));
    var var_2 = Struct_2(firstTrailingBit(vec4<i32>(~(-2147483647i), global1[_wgslsmith_index_u32(~u_input.a, 30u)] ^ 0i, 1i, global1[_wgslsmith_index_u32(~u_input.a, 30u)])));
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -997f))))));
    global0 = array<Struct_4, 7>();
    return true;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_2) -> Struct_4 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(630f, _wgslsmith_f_op_f32(f32(-1f) * -173f), true)) - global4.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global4.x)), -1009f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-210f)))))));
    var var_1 = 1u;
    global2 = array<Struct_1, 23>();
    let var_2 = Struct_1(~(~_wgslsmith_add_vec4_u32(~vec4<u32>(0u, 43517u, u_input.a, 4294967295u), vec4<u32>(12568u, u_input.a, u_input.a, 6715u) >> (vec4<u32>(u_input.a, u_input.a, 1u, u_input.a) % vec4<u32>(32u)))), select(vec2<bool>(all(!global3[_wgslsmith_index_u32(u_input.a, 21u)]), false), vec2<bool>(true, !any(vec2<bool>(false, true))), _wgslsmith_sub_i32(0i, _wgslsmith_add_i32(-1i, 22634i)) < arg_0.a.x), global1[_wgslsmith_index_u32(~countOneBits(28658u), 30u)]);
    var var_3 = var_2.a.xy;
    return global0[_wgslsmith_index_u32(4294967295u, 7u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(select(select(reverseBits(13149u) & u_input.a, ~10566u, any(vec4<bool>(false, true, true, false)) & false) << (abs(7659u) % 32u), ~_wgslsmith_div_u32(~(~u_input.a), 9735u), false), 30u)];
    let var_1 = func_4(Struct_2(select(~(-vec4<i32>(0i, 6982i, u_input.b, global1[_wgslsmith_index_u32(101384u, 30u)])), -vec4<i32>(-1i, 15900i, 2147483647i, u_input.b) & vec4<i32>(u_input.b, 2147483647i, -1i, u_input.b), vec4<bool>(false, true, func_1(), true))), -countOneBits(-vec4<i32>(45801i, -55645i, global1[_wgslsmith_index_u32(0u, 30u)], global1[_wgslsmith_index_u32(0u, 30u)])) ^ vec4<i32>(global1[_wgslsmith_index_u32(1u, 30u)], u_input.b | 4424i, -30347i, func_2(any(vec2<bool>(false, true)))), Struct_2(vec4<i32>(min(-6761i, global1[_wgslsmith_index_u32(25432u, 30u)]) << (_wgslsmith_sub_u32(4294967295u, 4294967295u) % 32u), global1[_wgslsmith_index_u32(u_input.a, 30u)], _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, global1[_wgslsmith_index_u32(1u, 30u)], 9578i, -2147483647i), vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 30u)], global1[_wgslsmith_index_u32(29292u, 30u)], 2540i, global1[_wgslsmith_index_u32(4294967295u, 30u)]), vec4<i32>(0i, -732i, u_input.b, 2147483647i)), vec4<i32>(2147483647i, 0i, u_input.b, u_input.b) ^ vec4<i32>(u_input.b, 52507i, global1[_wgslsmith_index_u32(13414u, 30u)], -9610i)), global1[_wgslsmith_index_u32(u_input.a ^ _wgslsmith_clamp_u32(u_input.a, u_input.a, 19067u), 30u)])));
    let var_2 = Struct_3(Struct_1(~(~countOneBits(vec4<u32>(u_input.a, 0u, 4294967295u, u_input.a))), global3[_wgslsmith_index_u32(0u, 21u)], _wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(u_input.a, 30u)], max(0i, 1i), u_input.b)), Struct_1(~min(~vec4<u32>(13175u, u_input.a, 24029u, 1u), select(vec4<u32>(6217u, u_input.a, u_input.a, 4294967295u), vec4<u32>(u_input.a, u_input.a, 9602u, 18479u), vec4<bool>(false, false, false, false))), vec2<bool>(var_1.a.x, all(vec3<bool>(false, true, true))), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(0i, u_input.b, u_input.b)), ~vec3<i32>(global1[_wgslsmith_index_u32(0u, 30u)], -2147483647i, global1[_wgslsmith_index_u32(19436u, 30u)])), -10054i)), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.a, _wgslsmith_mult_u32(39203u, 0u)), 4294967295u) ^ 81669u, 23u)], _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global4.x - -1469f), global4.x, var_1.b.x, 447f) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, 484f, global4.x, global4.x)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.b.x, var_1.b.x, var_1.b.x, var_1.b.x))), var_1.a.x))))));
    let var_3 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(global4.yyx, _wgslsmith_f_op_vec3_f32(round(var_1.b))), vec3<f32>(268f, -1092f, _wgslsmith_f_op_f32(ceil(892f))), !(!any(var_1.a))))));
    global1 = array<i32, 30>();
    global1 = array<i32, 30>();
    global0 = array<Struct_4, 7>();
    global1 = array<i32, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, 940f, var_1.b.x), vec3<f32>(-180f, var_3.x, 1022f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_2.d.xyy), _wgslsmith_div_vec3_f32(vec3<f32>(global4.x, var_1.b.x, 411f), var_1.b), false))), -max(vec4<i32>(~(-2147483647i), _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(var_2.b.a.x, 30u)], var_2.b.c), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, var_2.a.c), vec2<i32>(15824i, 0i)), -49141i), -vec4<i32>(u_input.b, -41798i, 42239i, -1331i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1691f, _wgslsmith_div_f32(-1486f, -1000f), _wgslsmith_f_op_f32(-global4.x), var_1.b.x)), ~var_2.b.a.x);
}

