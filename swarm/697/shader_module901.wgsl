struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: u32,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
    c: u32,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 24>;

var<private> global1: array<f32, 30>;

var<private> global2: array<i32, 31> = array<i32, 31>(0i, 1i, 42475i, 50208i, 20939i, -11473i, 0i, i32(-2147483648), -39100i, -4512i, 2147483647i, 0i, -53201i, 1i, -1i, 1i, -23091i, 1i, 1i, -14242i, 2147483647i, 2147483647i, -42773i, 0i, -46969i, -20477i, 1i, -40477i, -1i, 33400i, -1i);

var<private> global3: array<bool, 30> = array<bool, 30>(false, true, true, true, true, false, true, true, true, false, false, false, true, true, false, false, true, false, false, false, false, false, false, false, true, true, false, false, true, true);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32, arg_3: Struct_4) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0.b.x + global1[_wgslsmith_index_u32(23916u, 30u)]), _wgslsmith_f_op_f32(447f - 716f), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_3.c, 30u)] + arg_0.b.x), -1633f))))));
    global2 = array<i32, 31>();
    let var_1 = Struct_3(Struct_1(min(arg_0.a, arg_0.a), _wgslsmith_f_op_vec3_f32(abs(var_0.xxx)), countOneBits(_wgslsmith_add_u32(46033u, u_input.a))), Struct_1(vec3<u32>(1u, ~max(arg_3.b, arg_2), _wgslsmith_sub_u32(firstLeadingBit(634u), 26473u | u_input.a)), vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 30u)], var_0.x, arg_0.b.x), ~_wgslsmith_add_u32(0u, 26605u)), select(max(_wgslsmith_dot_vec4_u32(max(vec4<u32>(arg_2, arg_1.a.x, 50106u, arg_1.a.x), vec4<u32>(0u, 95121u, arg_2, arg_3.b)), vec4<u32>(arg_3.c, arg_2, arg_1.a.x, arg_0.c)), 1u << (u_input.a % 32u)), min(arg_2, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(arg_0.c, arg_2), arg_1.a.x, 31994u & arg_1.a.x)), arg_1.b.x));
    let var_2 = arg_1.c.xy;
    let var_3 = -(-var_2.x >> ((0u >> (~u_input.a % 32u)) % 32u));
    return var_0.yy;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec2<f32>) -> i32 {
    let var_0 = min(max(select(arg_2.a, arg_2.a, true), ~vec3<u32>(arg_2.c, 65188u, 69501u)) << (vec3<u32>(~(~u_input.a), 0u, 14279u) % vec3<u32>(32u)), ~(~(select(arg_1.a.a, vec3<u32>(4294967295u, 4294967295u, 1u), false) >> (~vec3<u32>(arg_0.a.x, 4294967295u, 3602u) % vec3<u32>(32u)))));
    let var_1 = Struct_5(_wgslsmith_f_op_f32(f32(-1f) * -944f), Struct_2(select(vec2<u32>(~0u, _wgslsmith_sub_u32(4294967295u, u_input.a)), abs(var_0.zy), arg_0.b.zx), vec3<bool>(any(vec4<bool>(global3[_wgslsmith_index_u32(10283u, 30u)], arg_0.b.x, true, true)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(12038u, 30u)]) == _wgslsmith_f_op_f32(floor(-244f)), true), _wgslsmith_sub_vec4_i32(-(~arg_0.c), arg_0.c)), countOneBits(~arg_1.a.a.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.a.b.x + arg_3.x), arg_1.a.b.x) + -1386f), _wgslsmith_f_op_f32(-1237f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(29325u, 30u)])))))), global2[_wgslsmith_index_u32(1772u, 31u)] == _wgslsmith_dot_vec4_i32(-firstLeadingBit(vec4<i32>(arg_0.c.x, global2[_wgslsmith_index_u32(613u, 31u)], -23100i, global2[_wgslsmith_index_u32(53642u, 31u)])), firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(arg_2.a.x, 31u)], global2[_wgslsmith_index_u32(var_0.x, 31u)], global2[_wgslsmith_index_u32(arg_1.a.a.x, 31u)], 0i), arg_0.c))));
    var var_2 = var_1.b.c.xxz;
    var_2 = _wgslsmith_div_vec3_i32(abs(vec3<i32>(var_1.b.c.x, 16502i >> (~u_input.a % 32u), ~global2[_wgslsmith_index_u32(arg_1.c, 31u)])), arg_0.c.xxw);
    global3 = array<bool, 30>();
    return _wgslsmith_mod_i32(reverseBits(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(~arg_0.c, firstLeadingBit(vec4<i32>(var_2.x, var_1.b.c.x, 30176i, var_2.x))), arg_0.c.x)), global2[_wgslsmith_index_u32(0u, 31u)]);
}

fn func_2(arg_0: vec4<i32>, arg_1: f32) -> u32 {
    let var_0 = _wgslsmith_mult_i32(arg_0.x, func_4(Struct_2(~vec2<u32>(69191u, u_input.a), select(vec3<bool>(false, false, false), vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 30u)], false, global3[_wgslsmith_index_u32(u_input.a, 30u)]), global3[_wgslsmith_index_u32(58154u, 30u)]), vec4<i32>(arg_0.x, 1i, arg_0.x, -72673i)), Struct_3(Struct_1(vec3<u32>(101463u, 0u, u_input.a), global0[_wgslsmith_index_u32(4294967295u, 24u)], 87809u), Struct_1(vec3<u32>(u_input.a, 0u, 10038u), global0[_wgslsmith_index_u32(4294967295u, 24u)], 4294967295u), 1u), Struct_1(select(vec3<u32>(u_input.a, 17571u, u_input.a), vec3<u32>(4178u, u_input.a, 38753u), true), _wgslsmith_f_op_vec3_f32(round(global0[_wgslsmith_index_u32(u_input.a, 24u)])), 83687u << (1u % 32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 30u)], global1[_wgslsmith_index_u32(4294967295u, 30u)]) + vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 30u)], 1054f)) - _wgslsmith_f_op_vec2_f32(func_3(Struct_1(vec3<u32>(4294967295u, 61566u, 99878u), global0[_wgslsmith_index_u32(u_input.a, 24u)], u_input.a), Struct_2(vec2<u32>(44953u, u_input.a), vec3<bool>(global3[_wgslsmith_index_u32(33830u, 30u)], global3[_wgslsmith_index_u32(0u, 30u)], global3[_wgslsmith_index_u32(16459u, 30u)]), vec4<i32>(global2[_wgslsmith_index_u32(1u, 31u)], arg_0.x, -34324i, arg_0.x)), u_input.a, Struct_4(Struct_2(vec2<u32>(u_input.a, u_input.a), vec3<bool>(false, global3[_wgslsmith_index_u32(0u, 30u)], global3[_wgslsmith_index_u32(u_input.a, 30u)]), arg_0), 44365u, u_input.a)))))) >= abs(~(-(-4669i >> (1u % 32u))));
    global3 = array<bool, 30>();
    let var_1 = Struct_5(117f, Struct_2(~((vec2<u32>(14055u, 43240u) & vec2<u32>(u_input.a, u_input.a)) << ((vec2<u32>(24581u, 1u) ^ vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u))), vec3<bool>(!var_0, all(vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.a, 30u)], global3[_wgslsmith_index_u32(0u, 30u)], false)), true), vec4<i32>(-1i, _wgslsmith_mult_i32(arg_0.x ^ arg_0.x, global2[_wgslsmith_index_u32(u_input.a, 31u)]), _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(~u_input.a, 31u)], global2[_wgslsmith_index_u32(0u, 31u)]), 1i)), 10529u, -928f, select(true, false, true));
    let var_2 = Struct_1(~(~(~vec3<u32>(var_1.c, var_1.c, var_1.c))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(134f, 658f, arg_1))), _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(var_1.c | 1u, 24u)])), 23599u);
    let var_3 = Struct_1(vec3<u32>(var_1.c, _wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.a.x, 0u, 76718u, var_2.c), vec4<u32>(1u, 30259u, 69976u, 24651u), vec4<u32>(38635u, 1513u, 136473u, 1u)), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, var_1.b.a.x, var_2.a.x, 1u), ~vec4<u32>(29607u, var_2.a.x, 4294967295u, var_2.a.x))), _wgslsmith_div_u32(_wgslsmith_div_u32(56194u << (var_1.c % 32u), _wgslsmith_mod_u32(var_2.a.x, u_input.a)), ~firstLeadingBit(21126u))), _wgslsmith_f_op_vec3_f32(trunc(global0[_wgslsmith_index_u32(u_input.a, 24u)])), _wgslsmith_clamp_u32(reverseBits(~var_2.a.x), ~u_input.a, var_1.b.a.x));
    return 1u;
}

fn func_1(arg_0: vec2<bool>) -> Struct_4 {
    let var_0 = ~_wgslsmith_mod_vec2_u32(firstLeadingBit(_wgslsmith_sub_vec2_u32(~vec2<u32>(24673u, 2085u), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(4294967295u, 1u), vec2<u32>(u_input.a, u_input.a)))), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 12333u), vec2<u32>(1u, func_2(vec4<i32>(global2[_wgslsmith_index_u32(u_input.a, 31u)], 2408i, global2[_wgslsmith_index_u32(1988u, 31u)], global2[_wgslsmith_index_u32(0u, 31u)]), 1057f))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(37194u, 30u)] * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~(~1u), 30u)])) + -1384f);
    var var_2 = Struct_2(vec2<u32>(abs(_wgslsmith_mult_u32(func_2(vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 31u)], global2[_wgslsmith_index_u32(var_0.x, 31u)], global2[_wgslsmith_index_u32(var_0.x, 31u)], global2[_wgslsmith_index_u32(var_0.x, 31u)]), -1646f), 1u)), ~_wgslsmith_mult_u32(~8283u, var_0.x)), !vec3<bool>(global3[_wgslsmith_index_u32(~abs(0u), 30u)], global3[_wgslsmith_index_u32(4294967295u, 30u)], true), ~vec4<i32>(_wgslsmith_add_i32(global2[_wgslsmith_index_u32(16705u, 31u)], global2[_wgslsmith_index_u32(var_0.x, 31u)]), max(-4378i, -2147483647i), -2147483647i, _wgslsmith_sub_i32(-1i, -1i)) | vec4<i32>(1i, global2[_wgslsmith_index_u32(var_0.x, 31u)], global2[_wgslsmith_index_u32(26984u, 31u)], -(global2[_wgslsmith_index_u32(1u, 31u)] & 2147483647i)));
    global0 = array<vec3<f32>, 24>();
    global0 = array<vec3<f32>, 24>();
    return Struct_4(Struct_2(vec2<u32>(min(0u, ~var_0.x), ~(~1u)), vec3<bool>(arg_0.x, all(!arg_0), any(vec2<bool>(var_2.b.x, false))), ~var_2.c), firstTrailingBit(1u), ~21980u);
}

fn func_5(arg_0: Struct_4, arg_1: bool, arg_2: Struct_5) -> vec4<u32> {
    let var_0 = !any(select(!vec2<bool>(false, global3[_wgslsmith_index_u32(u_input.a, 30u)]), func_1(arg_0.a.b.xz).a.b.xz, false));
    global1 = array<f32, 30>();
    var var_1 = !vec3<bool>(func_1(vec2<bool>(select(arg_0.a.b.x, global3[_wgslsmith_index_u32(1u, 30u)], true), var_0 | arg_2.b.b.x)).a.b.x, false, any(!select(arg_2.b.b, arg_0.a.b, false)));
    var var_2 = Struct_2(~arg_0.a.a, vec3<bool>(!any(select(vec4<bool>(arg_0.a.b.x, arg_2.b.b.x, var_0, global3[_wgslsmith_index_u32(37145u, 30u)]), vec4<bool>(false, var_1.x, var_1.x, false), vec4<bool>(arg_0.a.b.x, true, true, global3[_wgslsmith_index_u32(0u, 30u)]))), true, !var_0), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -func_1(arg_0.a.b.zz).a.c, arg_2.b.c));
    var var_3 = arg_0.a.c.x;
    return vec4<u32>(31723u, ~4294967295u, ~(~(~(1u >> (arg_2.b.a.x % 32u)))), var_2.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 30>();
    let var_0 = abs(_wgslsmith_dot_vec4_u32(select(_wgslsmith_mod_vec4_u32(~vec4<u32>(1u, 4294967295u, u_input.a, u_input.a), ~vec4<u32>(u_input.a, u_input.a, 2715u, u_input.a)), ~(~vec4<u32>(1u, u_input.a, u_input.a, 0u)), global3[_wgslsmith_index_u32(firstLeadingBit(0u), 30u)] | true), func_5(func_1(select(vec2<bool>(false, global3[_wgslsmith_index_u32(89785u, 30u)]), vec2<bool>(false, false), false)), any(select(vec3<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 30u)], false), vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 30u)], true, global3[_wgslsmith_index_u32(u_input.a, 30u)]), global3[_wgslsmith_index_u32(u_input.a, 30u)])), Struct_5(global1[_wgslsmith_index_u32(firstLeadingBit(0u), 30u)], Struct_2(vec2<u32>(7823u, u_input.a), vec3<bool>(global3[_wgslsmith_index_u32(0u, 30u)], false, false), vec4<i32>(global2[_wgslsmith_index_u32(u_input.a, 31u)], 0i, global2[_wgslsmith_index_u32(20056u, 31u)], -1i)), _wgslsmith_div_u32(32020u, 1u), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.a, 30u)], global1[_wgslsmith_index_u32(21515u, 30u)]), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, 33553u), 30u)]))));
    var var_1 = func_1(vec2<bool>(false, global3[_wgslsmith_index_u32(u_input.a, 30u)])).a;
    let var_2 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-557f * _wgslsmith_f_op_f32(296f * _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(var_0, 30u)]))))), func_1(var_1.b.zy).a, ~0u ^ ~var_1.a.x, 533f, false);
    var var_3 = global0[_wgslsmith_index_u32(func_5(Struct_4(func_1(select(select(vec2<bool>(true, true), vec2<bool>(var_2.e, global3[_wgslsmith_index_u32(73033u, 30u)]), vec2<bool>(var_2.b.b.x, false)), vec2<bool>(var_1.b.x, var_2.b.b.x), vec2<bool>(global3[_wgslsmith_index_u32(79032u, 30u)], true))).a, var_0, var_0), select(31418i <= (firstTrailingBit(-2147483647i) << (0u % 32u)), var_0 != 4294967295u, true), var_2).x, 24u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(firstLeadingBit(_wgslsmith_dot_vec3_i32(select(vec3<i32>(var_1.c.x, var_2.b.c.x, 2147483647i), var_2.b.c.yxx, global3[_wgslsmith_index_u32(47332u, 30u)]), min(vec3<i32>(var_2.b.c.x, -1i, 18914i), var_1.c.wwx))), -2147483647i, global2[_wgslsmith_index_u32(var_1.a.x ^ ~1u, 31u)]), _wgslsmith_mod_i32(-2147483647i, max(-_wgslsmith_clamp_i32(var_2.b.c.x, var_1.c.x, 1i), ~countOneBits(-86191i))), var_1.a, ~max(~(vec4<i32>(-1i, var_2.b.c.x, 12869i, -2147483647i) ^ var_1.c), -(~var_2.b.c)), _wgslsmith_mult_u32(_wgslsmith_sub_u32(~var_0, var_2.b.a.x), countOneBits(var_2.b.a.x) | 44906u));
}

