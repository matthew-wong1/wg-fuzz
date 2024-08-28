struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 26> = array<vec2<i32>, 26>(vec2<i32>(2062i, -1i), vec2<i32>(30859i, 1i), vec2<i32>(19077i, 2147483647i), vec2<i32>(51450i, -28293i), vec2<i32>(-38318i, -25926i), vec2<i32>(-6394i, 1i), vec2<i32>(33713i, 13600i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(1i, -1i), vec2<i32>(6521i, -82263i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(37617i, -38624i), vec2<i32>(27940i, -28455i), vec2<i32>(-3279i, 2147483647i), vec2<i32>(i32(-2147483648), -15316i), vec2<i32>(19298i, 33080i), vec2<i32>(i32(-2147483648), -6960i), vec2<i32>(-65635i, i32(-2147483648)), vec2<i32>(95685i, 1i), vec2<i32>(14109i, -5310i), vec2<i32>(0i, 14746i), vec2<i32>(31663i, -33263i), vec2<i32>(2147483647i, -24237i), vec2<i32>(1i, 69633i), vec2<i32>(i32(-2147483648), -28107i), vec2<i32>(-1i, 0i));

var<private> global1: array<vec4<i32>, 30>;

var<private> global2: vec3<u32>;

var<private> global3: array<Struct_2, 32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: u32, arg_1: Struct_3) -> vec3<bool> {
    var var_0 = vec2<u32>(43581u, 2290u);
    global0 = array<vec2<i32>, 26>();
    global0 = array<vec2<i32>, 26>();
    var var_1 = !vec4<bool>(true, select(!(var_0.x < 1u), true, true), any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), true)) == any(vec2<bool>(true, true)), any(vec2<bool>(any(vec3<bool>(false, false, true)), true)));
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1005f, 1f)) - 210f)));
    return vec3<bool>(all(!vec4<bool>(var_1.x, false, true, !var_1.x)), false, firstTrailingBit(_wgslsmith_add_i32(u_input.a, _wgslsmith_clamp_i32(u_input.a, -7051i, arg_1.c.c.c.x))) > ~(u_input.a ^ abs(arg_1.c.c.b.x)));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_2) -> Struct_1 {
    let var_0 = -14836i;
    global2 = u_input.c;
    let var_1 = select(vec4<bool>(arg_0.x || arg_0.x, true, all(select(vec3<bool>(true, true, arg_0.x), vec3<bool>(true, true, true), arg_0.x)) && ((global2.x < u_input.b) && any(vec4<bool>(false, true, false, arg_0.x))), arg_0.x), vec4<bool>(all(!(!vec3<bool>(arg_0.x, true, false))), false, all(func_3(~u_input.b, Struct_3(Struct_1(42411u, arg_1.c.b, vec4<i32>(2147483647i, 1i, 0i, var_0)), global3[_wgslsmith_index_u32(59335u, 32u)], global3[_wgslsmith_index_u32(arg_1.b.x, 32u)]))), 72499u == ~_wgslsmith_mult_u32(5717u, u_input.c.x)), false);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1437f)) + _wgslsmith_f_op_f32(f32(-1f) * -2178f)))), 1580f, countOneBits(max(arg_1.c.c.x, u_input.a)) != arg_1.c.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(545f + -411f)))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1468f * 2623f)))));
    var var_3 = Struct_3(arg_1.c, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~global2.x, select(~u_input.b, ~global2.x, u_input.b >= arg_1.c.a)) ^ global2.x, 32u)], global3[_wgslsmith_index_u32(1u, 32u)]);
    return Struct_1(~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_3.a.a, global2.x, arg_1.b.x), firstTrailingBit(vec3<u32>(global2.x, global2.x, 78865u))), ~_wgslsmith_clamp_vec3_u32(u_input.c, arg_1.a.zzy, vec3<u32>(var_3.b.c.a, global2.x, var_3.a.a))), ~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a >> (4294967295u % 32u), -25442i, _wgslsmith_add_i32(-8114i, arg_1.c.c.x), 38514i), ~(vec4<i32>(var_0, 1i, 0i, 1891i) | var_3.b.c.b)), global1[_wgslsmith_index_u32(arg_1.b.x | ~(arg_1.c.a >> (0u % 32u)), 30u)]);
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: Struct_1) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, _wgslsmith_f_op_f32(-1060f + _wgslsmith_f_op_f32(step(944f, -1143f))), _wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1690f), -473f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-890f, 2001f, -1308f, -468f))), vec4<f32>(-1396f, -465f, -159f, -139f)), vec4<bool>(true, (arg_2.c.x << (arg_0.a.a % 32u)) != arg_2.c.x, true, true)))));
    let var_1 = ~(~vec3<u32>(4681u, global2.x, ~(~u_input.b)));
    var var_2 = arg_0.b.a;
    var_2 = vec4<u32>(19388u, ~(~(var_2.x << (29768u % 32u)) & 0u), _wgslsmith_div_u32(u_input.c.x, var_1.x), 36063u);
    var var_3 = _wgslsmith_f_op_f32(select(var_0.x, -402f, _wgslsmith_dot_vec3_i32(func_2(!vec2<bool>(true, arg_1), arg_0.b).c.xwx, countOneBits(vec3<i32>(arg_2.c.x, arg_0.b.c.b.x, arg_2.b.x))) < ~(~arg_2.b.x)));
    return countOneBits(~reverseBits(reverseBits(vec4<u32>(0u, global2.x, 4294967295u, arg_0.a.a)) & countOneBits(vec4<u32>(1u, u_input.c.x, 1u, u_input.c.x))));
}

fn func_5(arg_0: bool, arg_1: vec2<i32>, arg_2: vec3<f32>, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = vec4<f32>(arg_2.x, -1887f, _wgslsmith_f_op_f32(f32(-1f) * -635f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2.x, _wgslsmith_f_op_f32(step(arg_2.x, 843f)))) + -630f))));
    global2 = ~func_4(Struct_3(func_2(vec2<bool>(false, false), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c.x, 8011u), 32u)]), Struct_2(~arg_3, vec2<u32>(1u, u_input.b) | vec2<u32>(0u, u_input.c.x), Struct_1(4294967295u, global1[_wgslsmith_index_u32(4294967295u, 30u)], vec4<i32>(2147483647i, u_input.a, u_input.a, 0i))), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~u_input.c.yx, global2.zy), 32u)]), any(select(select(vec4<bool>(arg_0, true, false, arg_0), vec4<bool>(true, false, arg_0, false), arg_0), vec4<bool>(arg_0, true, false, arg_0), vec4<bool>(false, arg_0, arg_0, arg_0))), Struct_1(min(37505u, u_input.c.x) | (arg_3.x << (u_input.c.x % 32u)), -global1[_wgslsmith_index_u32(arg_3.x, 30u)], global1[_wgslsmith_index_u32(4294967295u, 30u)])).xxz;
    let var_1 = Struct_1(max(94822u, arg_3.x), global1[_wgslsmith_index_u32(1u, 30u)], ~reverseBits(global1[_wgslsmith_index_u32((86548u << (arg_3.x % 32u)) ^ arg_3.x, 30u)]));
    let var_2 = ~(arg_3 | arg_3);
    var var_3 = select(!select(func_3(abs(u_input.c.x), Struct_3(Struct_1(u_input.b, vec4<i32>(2147483647i, 0i, 1i, -1i), global1[_wgslsmith_index_u32(1u, 30u)]), Struct_2(arg_3, var_2.ww, var_1), Struct_2(var_2, u_input.c.zy, var_1))).yy, !vec2<bool>(arg_0, false), true), !vec2<bool>(-2147483647i > u_input.a, arg_0), (_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1315f + 896f))) > _wgslsmith_f_op_f32(-1317f - arg_2.x)) || true);
    return func_2(!vec2<bool>(!arg_0 && true, false), global3[_wgslsmith_index_u32(~(~arg_3.x), 32u)]);
}

fn func_1() -> Struct_3 {
    let var_0 = func_5(false, (vec2<i32>(u_input.a, -19165i) ^ firstTrailingBit(abs(global0[_wgslsmith_index_u32(36913u, 26u)]))) | global0[_wgslsmith_index_u32(23341u, 26u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(472f, 210f, 343f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2303f, 650f, -1000f) + vec3<f32>(205f, -1024f, 404f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-124f, 1000f, -758f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-596f, _wgslsmith_f_op_f32(f32(-1f) * -1336f), -809f))), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(func_4(Struct_3(Struct_1(4294967295u, vec4<i32>(0i, 2147483647i, 0i, u_input.a), vec4<i32>(0i, u_input.a, u_input.a, 0i)), Struct_2(vec4<u32>(59844u, global2.x, global2.x, u_input.b), global2.zz, Struct_1(4294967295u, vec4<i32>(38030i, u_input.a, u_input.a, -12481i), vec4<i32>(u_input.a, -5424i, u_input.a, 1i))), Struct_2(vec4<u32>(u_input.c.x, global2.x, global2.x, 5597u), u_input.c.zx, Struct_1(1u, vec4<i32>(40104i, 6545i, 1i, u_input.a), global1[_wgslsmith_index_u32(global2.x, 30u)]))), all(vec3<bool>(true, true, true)), func_2(vec2<bool>(false, true), Struct_2(vec4<u32>(u_input.b, u_input.c.x, global2.x, 145360u), u_input.c.yy, Struct_1(15486u, global1[_wgslsmith_index_u32(36304u, 30u)], vec4<i32>(-9003i, 0i, u_input.a, 46569i))))), select(~vec4<u32>(52822u, u_input.c.x, u_input.c.x, u_input.c.x), _wgslsmith_sub_vec4_u32(vec4<u32>(global2.x, 1u, 0u, 1u), vec4<u32>(53818u, u_input.c.x, u_input.b, 1u)), true)), ~abs(abs(vec4<u32>(13006u, 52991u, 11743u, global2.x)))));
    var var_1 = -2185f;
    return Struct_3(func_2(vec2<bool>(true, !all(vec3<bool>(false, false, false))), Struct_2(vec4<u32>(4294967295u, global2.x, 60234u, u_input.b) | firstTrailingBit(vec4<u32>(32620u, u_input.b, 54061u, u_input.b)), global2.yz, Struct_1(var_0.a, vec4<i32>(var_0.c.x, u_input.a, var_0.c.x, 1i), vec4<i32>(u_input.a, var_0.c.x, 0i, var_0.c.x)))), Struct_2(~_wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, var_0.a, 1u, var_0.a), firstLeadingBit(vec4<u32>(9542u, var_0.a, 4294967295u, 32290u))), _wgslsmith_div_vec2_u32(min(u_input.c.yz | vec2<u32>(4294967295u, u_input.c.x), vec2<u32>(1u, u_input.c.x)), vec2<u32>(4294967295u, var_0.a)), var_0), Struct_2(vec4<u32>(_wgslsmith_div_u32(u_input.c.x, 0u) ^ _wgslsmith_mod_u32(66718u, var_0.a), var_0.a, global2.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, var_0.a, var_0.a, global2.x), vec4<u32>(var_0.a, 0u, 4294967295u, 44265u) >> (vec4<u32>(1u, 29053u, u_input.b, 0u) % vec4<u32>(32u)))), global2.zy, var_0));
}

fn func_6(arg_0: i32, arg_1: Struct_3, arg_2: i32, arg_3: vec4<f32>) -> bool {
    global0 = array<vec2<i32>, 26>();
    global3 = array<Struct_2, 32>();
    global0 = array<vec2<i32>, 26>();
    let var_0 = ~vec3<u32>(_wgslsmith_add_u32(15280u, 0u), countOneBits(39945u), 24606u);
    var var_1 = arg_1;
    return !all(vec4<bool>(true, arg_3.x <= -531f, true, true)) || any(select(func_3(func_2(vec2<bool>(true, true), global3[_wgslsmith_index_u32(0u, 32u)]).a, Struct_3(arg_1.a, var_1.c, Struct_2(vec4<u32>(79649u, u_input.c.x, 0u, arg_1.c.a.x), u_input.c.xx, var_1.c.c))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false), false));
}

fn func_7(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: vec3<f32>) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_2.x, _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(min(-1160f, _wgslsmith_f_op_f32(-arg_2.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, 989f))))));
    var var_1 = global2.x;
    let var_2 = vec3<i32>(~27763i, ~(~_wgslsmith_sub_i32(arg_1.x, arg_1.x)), abs(u_input.a)) | (vec3<i32>(-reverseBits(-1i), u_input.a, countOneBits(u_input.a & arg_1.x)) << (_wgslsmith_sub_vec3_u32(~(~vec3<u32>(37685u, global2.x, global2.x)), u_input.c) % vec3<u32>(32u)));
    global1 = array<vec4<i32>, 30>();
    global3 = array<Struct_2, 32>();
    return max(_wgslsmith_div_vec4_u32(~max(vec4<u32>(u_input.c.x, global2.x, global2.x, 0u) ^ vec4<u32>(22928u, u_input.c.x, 0u, global2.x), vec4<u32>(global2.x, 5649u, 0u, global2.x) >> (vec4<u32>(u_input.b, 1u, 1u, 52535u) % vec4<u32>(32u))), ~vec4<u32>(u_input.c.x, abs(u_input.b), 0u ^ u_input.b, u_input.c.x)), ~(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, global2.x, 0u, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(global2.x, u_input.c.x, 55706u, global2.x), vec4<u32>(8837u, 1u, u_input.c.x, global2.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 397f;
    var var_1 = func_7(vec2<bool>(!(68839u == reverseBits(u_input.b)), func_6(28351i, func_1(), -2147483647i, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1443f, 1000f, 1913f, 403f), vec4<f32>(var_0, var_0, var_0, var_0))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1785f, var_0, var_0, var_0)))))), global0[_wgslsmith_index_u32(u_input.c.x, 26u)], _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2273f, var_0, var_0)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, 678f)))))));
    var var_2 = -1i;
    global3 = array<Struct_2, 32>();
    let var_3 = i32(-1i) * -func_5(any(vec3<bool>(true, true, true)), vec2<i32>(u_input.a, i32(-1i) * -84081i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-279f, var_0, var_0)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(922f, 1125f, 1971f)))), ~select(vec4<u32>(var_1.x, 0u, 31852u, u_input.b), vec4<u32>(4294967295u, global2.x, u_input.c.x, u_input.c.x), false)).b.x;
    let var_4 = vec2<bool>(func_6(func_1().a.b.x, Struct_3(func_1().c.c, Struct_2(vec4<u32>(var_1.x, u_input.b, var_1.x, 24771u), var_1.yx, Struct_1(u_input.b, global1[_wgslsmith_index_u32(0u, 30u)], global1[_wgslsmith_index_u32(var_1.x, 30u)])), func_1().c), reverseBits(_wgslsmith_mod_i32(-10076i, _wgslsmith_sub_i32(58103i, 0i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -789f, var_0, -1532f), vec4<f32>(1034f, -1114f, var_0, 1081f), vec4<bool>(true, false, true, true))), _wgslsmith_f_op_vec4_f32(vec4<f32>(392f, var_0, var_0, 1000f) + vec4<f32>(var_0, var_0, var_0, -929f)), true)))), true);
    let var_5 = -2147483647i;
    let var_6 = 13596i;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(_wgslsmith_mod_u32(global2.x, global2.x) << (global2.x % 32u))), u_input.a, select(-(~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, u_input.a, 0i), vec3<i32>(var_6, u_input.a, var_6), vec3<i32>(var_6, 22704i, 2147483647i))), _wgslsmith_mult_vec3_i32(~_wgslsmith_clamp_vec3_i32(vec3<i32>(var_5, var_5, -26925i), vec3<i32>(-8371i, -54727i, -9883i), vec3<i32>(1i, -1i, u_input.a)), _wgslsmith_div_vec3_i32(-vec3<i32>(-8025i, var_5, u_input.a), ~vec3<i32>(var_3, 2147483647i, var_3))), false));
}

