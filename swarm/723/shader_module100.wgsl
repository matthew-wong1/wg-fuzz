struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<bool>,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: f32,
    d: f32,
    e: Struct_2,
}

struct Struct_5 {
    a: vec4<u32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(231f, -528f, -449f, 212f));

var<private> global1: array<f32, 17>;

var<private> global2: array<vec2<u32>, 11> = array<vec2<u32>, 11>(vec2<u32>(15917u, 16590u), vec2<u32>(84344u, 1u), vec2<u32>(1u, 0u), vec2<u32>(1u, 26717u), vec2<u32>(1u, 21769u), vec2<u32>(40685u, 1u), vec2<u32>(22543u, 2861u), vec2<u32>(4294967295u, 84886u), vec2<u32>(1283u, 1u), vec2<u32>(14044u, 23667u), vec2<u32>(66891u, 60159u));

var<private> global3: u32 = 51484u;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> u32 {
    let var_0 = !(!select(vec3<bool>(false, true, true), select(vec3<bool>(true, false, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), true), u_input.a == max(23325u, 1u)));
    global1 = array<f32, 17>();
    var var_1 = vec2<i32>(-1i) * -vec2<i32>(1i, 1i);
    global1 = array<f32, 17>();
    global0 = Struct_1(global0.a);
    return ~(~(~20291u));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_5(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(func_3(), max(u_input.a, 4294967295u), ~0u), vec3<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, 103846u, u_input.a), vec4<u32>(u_input.a, 0u, u_input.a, u_input.a)), max(26278u, u_input.a))), u_input.a, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(global2[_wgslsmith_index_u32(29446u, 11u)], vec2<u32>(11364u, 35224u), vec2<u32>(46946u, u_input.a)), ~global2[_wgslsmith_index_u32(39375u, 11u)]), ~(~vec2<u32>(u_input.a, u_input.a))), u_input.a), _wgslsmith_dot_vec2_u32(firstTrailingBit(global2[_wgslsmith_index_u32(1u, 11u)]), ~max(~vec2<u32>(52357u, u_input.a), _wgslsmith_clamp_vec2_u32(global2[_wgslsmith_index_u32(u_input.a, 11u)], global2[_wgslsmith_index_u32(61878u, 11u)], global2[_wgslsmith_index_u32(1u, 11u)]))));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 17u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.a | 40446u, 17u)], 2063f) - 1590f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-780f - _wgslsmith_f_op_f32(global0.a.x - global0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.a.x))))), true));
    let var_2 = Struct_2(-max(vec4<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(-2147483647i, -3277i)), 0i, ~(-2147483647i)), _wgslsmith_clamp_vec4_i32(~vec4<i32>(-30576i, 10440i, 2147483647i, 18307i), vec4<i32>(2147483647i, -4326i, 4079i, -19771i), _wgslsmith_sub_vec4_i32(vec4<i32>(-14437i, 0i, -23458i, -17818i), vec4<i32>(9873i, -23612i, 878i, 23863i)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-201f * _wgslsmith_div_f32(global0.a.x, global0.a.x)), 542f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - _wgslsmith_f_op_f32(287f * -1101f)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_1, global1[_wgslsmith_index_u32(40916u, 17u)])))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.a * vec4<f32>(-251f, global0.a.x, global1[_wgslsmith_index_u32(0u, 17u)], -1194f))))), -435f);
    var var_3 = select(vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 + var_1) * _wgslsmith_f_op_f32(global0.a.x - global1[_wgslsmith_index_u32(u_input.a, 17u)])) != global0.a.x, countOneBits(-1i ^ var_2.a.x) > var_2.a.x, _wgslsmith_dot_vec2_i32(-vec2<i32>(var_2.a.x, 59278i), min(var_2.a.yw, vec2<i32>(var_2.a.x, -13875i))) >= min(11109i, ~var_2.a.x)), vec3<bool>(true, !all(vec4<bool>(true, true, true, true)), false), select(select(vec3<bool>(false, any(vec3<bool>(false, false, false)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, all(vec2<bool>(false, true)))), vec3<bool>(any(vec3<bool>(true, false, false)), true, firstTrailingBit(24636u) >= 1u), vec3<bool>(true, _wgslsmith_f_op_f32(-1060f * 139f) <= _wgslsmith_f_op_f32(ceil(global0.a.x)), true)));
    var var_4 = Struct_1(vec4<f32>(var_1, _wgslsmith_f_op_f32(min(-1207f, var_2.c)), var_2.c, -323f));
    return Struct_2(~_wgslsmith_mult_vec4_i32(reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(-57700i, 2147483647i, var_2.a.x, -26350i), var_2.a)), vec4<i32>(1i, -33812i, min(var_2.a.x, 2147483647i), var_2.a.x & var_2.a.x)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1804f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1643f * var_4.a.x), _wgslsmith_div_f32(512f, var_4.a.x)), -729f, 331f))), -1000f);
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_4(func_2(), _wgslsmith_f_op_f32(f32(-1f) * -1097f), _wgslsmith_f_op_f32(ceil(-2427f)), 1250f, Struct_2(_wgslsmith_mult_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(13802i, -58122i, 2147483647i, -2147483647i), vec4<i32>(-2147483647i, 25660i, -2147483647i, -105i)), ~func_2().a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-621f, global1[_wgslsmith_index_u32(u_input.a, 17u)], 153f, -1000f))) * global0.a)), -1426f));
    let var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(371f - _wgslsmith_f_op_f32(f32(-1f) * -1344f)), var_0.b), global0.a.xw);
    let var_2 = _wgslsmith_add_u32(~_wgslsmith_add_u32(~_wgslsmith_sub_u32(58763u, u_input.a), u_input.a ^ 10795u), 25740u);
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(func_2().b)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_0.a.b.x, -244f, global1[_wgslsmith_index_u32(27327u, 17u)]) + var_0.a.b))), _wgslsmith_f_op_vec4_f32(step(global0.a, var_0.a.b)))));
    global0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(38145u, 17u)]) + _wgslsmith_f_op_f32(global0.a.x * global0.a.x))), _wgslsmith_f_op_f32(max(-1264f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(540f - -1352f)))), 1859f, -1000f));
    return func_2();
}

fn func_4(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: f32) -> vec3<u32> {
    global1 = array<f32, 17>();
    let var_0 = global0.a.ywx;
    let var_1 = ~_wgslsmith_sub_vec4_u32(abs(~vec4<u32>(u_input.a, u_input.a, 55586u, u_input.a)) << ((firstLeadingBit(vec4<u32>(u_input.a, 21805u, 19474u, 1u)) & ~vec4<u32>(4294967295u, 0u, u_input.a, u_input.a)) % vec4<u32>(32u)), ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a, 85421u, u_input.a, 27103u), abs(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a)), abs(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a))));
    global2 = array<vec2<u32>, 11>();
    let var_2 = ~var_1.zz;
    return vec3<u32>(1u, abs(4294967295u), 4294967295u);
}

fn func_5(arg_0: f32, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = global2[_wgslsmith_index_u32(reverseBits(~u_input.a), 11u)];
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.a.x, 706f, global0.a.x, -1712f), vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 17u)], -474f, 1186f, -473f))) + _wgslsmith_f_op_vec4_f32(-global0.a)) * global0.a)), Struct_2(-vec4<i32>(arg_1.x, arg_1.x, -1i, 52506i) ^ ((vec4<i32>(1i, arg_1.x, arg_1.x, -23972i) ^ vec4<i32>(arg_1.x, -2147483647i, -2147483647i, arg_1.x)) >> (countOneBits(vec4<u32>(21651u, 3159u, 1u, u_input.a)) % vec4<u32>(32u))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-1659f, global0.a.x)))), _wgslsmith_f_op_f32(-global0.a.x), global0.a.x, global1[_wgslsmith_index_u32(abs(u_input.a), 17u)]), 539f), vec2<bool>(true, true), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(11862u, 17u)], global1[_wgslsmith_index_u32(var_0.x, 17u)], -619f, 542f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(911f, -1470f, 1870f, global0.a.x), vec4<f32>(global1[_wgslsmith_index_u32(var_0.x, 17u)], global1[_wgslsmith_index_u32(4294967295u, 17u)], global1[_wgslsmith_index_u32(u_input.a, 17u)], arg_0), true))))), vec3<bool>(true, true, true));
    var var_2 = Struct_3(Struct_1(vec4<f32>(1f, 986f, _wgslsmith_f_op_f32(exp2(global0.a.x)), func_2().b.x)), var_1.b, vec2<bool>(any(select(select(var_1.c, vec2<bool>(false, false), false), vec2<bool>(true, true), true)), var_1.c.x), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.a.x, global0.a.x, arg_0, -227f)))))), !select(vec3<bool>(true, true, true), !select(vec3<bool>(false, var_1.e.x, var_1.e.x), vec3<bool>(true, false, var_1.e.x), false), select(select(vec3<bool>(var_1.c.x, false, false), vec3<bool>(false, var_1.e.x, false), var_1.e), var_1.e, 1u > u_input.a)));
    var var_3 = Struct_4(var_2.b, var_2.d.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1056f - -388f), var_1.b.c), _wgslsmith_div_f32(1195f, _wgslsmith_f_op_f32(global0.a.x + -831f)))))), -1566f, var_1.b);
    var var_4 = (vec2<i32>(1i, 0i) ^ (vec2<i32>(var_3.e.a.x, -1673i) ^ abs(_wgslsmith_div_vec2_i32(vec2<i32>(var_3.e.a.x, 30033i), vec2<i32>(0i, -23366i))))) & firstLeadingBit(arg_1.yx);
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<u32>, 11>();
    var var_0 = func_5(global1[_wgslsmith_index_u32(~countOneBits(u_input.a), 17u)], vec3<i32>(1i, 1i, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(0i, 0i, 23537i), vec3<i32>(-1i, 35748i, 0i)), _wgslsmith_div_vec3_i32(vec3<i32>(11249i, -1i, -2147483647i), vec3<i32>(-30465i, -50885i, 27564i)))) >> (func_4(Struct_4(func_1(), global1[_wgslsmith_index_u32(u_input.a, 17u)], -891f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a, 17u)] + global1[_wgslsmith_index_u32(u_input.a, 17u)]), func_1()), global0.a.wy, -812f) % vec3<u32>(32u)));
    let var_1 = 16769i;
    var_0 = func_5(-237f, -vec3<i32>(~countOneBits(var_1), -31559i, -4607i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(25198i, -31123i, var_1) << (~vec3<u32>(u_input.a, 1u, u_input.a) % vec3<u32>(32u)), vec3<i32>(-var_1, 2147483647i, countOneBits(2147483647i))), vec3<i32>(abs(39145i), 1i, var_1)));
}

