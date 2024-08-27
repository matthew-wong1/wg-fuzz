struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: Struct_2,
    d: u32,
    e: f32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: bool,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 21> = array<vec2<bool>, 21>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true));

var<private> global1: i32 = 4418i;

var<private> global2: f32 = -414f;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: f32) -> vec3<u32> {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.a, 510f, arg_2))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(736f, 875f, 1000f)))), vec3<f32>(_wgslsmith_f_op_f32(arg_1.d.b.a + 1797f), -272f, arg_2)))));
    global0 = array<vec2<bool>, 21>();
    var var_1 = var_0.xz;
    let var_2 = Struct_1(_wgslsmith_div_f32(1000f, -1358f));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, _wgslsmith_div_f32(-108f, 135f), arg_0.a, arg_2)));
    return _wgslsmith_mod_vec3_u32(~(~vec3<u32>(select(0u, 0u, arg_1.c), firstLeadingBit(89557u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a.x, 1u, arg_1.d.d, u_input.b), vec4<u32>(4294967295u, arg_1.d.d, arg_1.d.d, 4294967295u)))), arg_1.a);
}

fn func_4(arg_0: vec3<u32>) -> f32 {
    var var_0 = Struct_4(~_wgslsmith_mult_vec3_u32(~select(vec3<u32>(4294967295u, arg_0.x, 1u), vec3<u32>(u_input.b, arg_0.x, 1u), true), select(countOneBits(vec3<u32>(23887u, 41903u, 4294967295u)), ~vec3<u32>(31963u, 4294967295u, arg_0.x), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false)))), select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true)), select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), true), !select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false), vec3<bool>(true, any(vec3<bool>(false, false, true)), true)), vec3<bool>(false, false & all(vec4<bool>(true, false, false, true)), any(select(vec2<bool>(true, true), vec2<bool>(true, false), true)))), any(vec2<bool>(any(select(global0[_wgslsmith_index_u32(1u, 21u)], vec2<bool>(false, false), false)), true)), Struct_3(vec3<bool>(true, true, true), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-618f + -375f))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 121f))), min(firstTrailingBit(4294967295u), ~_wgslsmith_clamp_u32(arg_0.x, u_input.b, 1u)), _wgslsmith_f_op_f32(-691f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -376f) * 429f))));
    return -813f;
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-716f, 952f)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(141f, 1226f) * _wgslsmith_div_f32(1844f, -789f))), 661f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-364f, -934f)))) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -297f), _wgslsmith_div_f32(637f, 498f))))));
    var var_1 = Struct_3(vec3<bool>((~u_input.b | 1u) < _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1u, 4294967295u), vec3<u32>(4294967295u, u_input.b, 52327u)), ~u_input.b), true, all(global0[_wgslsmith_index_u32(u_input.b, 21u)])), Struct_2(1438f), Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-828f, -137f, true)) - _wgslsmith_f_op_f32(var_0.x * var_0.x))))), _wgslsmith_add_u32(u_input.b, _wgslsmith_mult_u32(28211u, reverseBits(28636u) | u_input.b)), _wgslsmith_f_op_f32(1071f + _wgslsmith_f_op_f32(func_4(func_3(Struct_1(var_0.x), Struct_4(vec3<u32>(0u, u_input.b, u_input.b), vec3<bool>(false, true, true), true, Struct_3(vec3<bool>(false, false, false), Struct_2(734f), Struct_2(var_0.x), u_input.b, var_0.x)), _wgslsmith_f_op_f32(1000f * -1000f))))));
    global2 = -449f;
    var var_2 = vec4<bool>(((u_input.a > u_input.a) || (any(global0[_wgslsmith_index_u32(var_1.d, 21u)]) | true)) && var_1.a.x, true, false, true || (all(global0[_wgslsmith_index_u32(4294967295u, 21u)]) && true));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(689f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-331f)) - _wgslsmith_f_op_f32(-398f + -1109f))))));
    return _wgslsmith_div_u32(func_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -756f))), Struct_4(func_3(Struct_1(var_1.e), Struct_4(vec3<u32>(u_input.b, var_1.d, 0u), var_2.www, true, Struct_3(vec3<bool>(var_2.x, true, true), var_1.c, var_1.c, 1u, 210f)), -179f) & ~vec3<u32>(var_1.d, u_input.b, 1541u), vec3<bool>(all(vec4<bool>(var_1.a.x, false, false, true)), !var_1.a.x, true), var_2.x, Struct_3(var_2.wxy, Struct_2(1562f), Struct_2(-150f), 1u, 648f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.a + _wgslsmith_f_op_f32(trunc(461f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))))).x, ~(~firstLeadingBit(0u)));
}

fn func_5(arg_0: vec3<f32>, arg_1: u32, arg_2: bool, arg_3: vec3<u32>) -> Struct_1 {
    global1 = reverseBits(~u_input.a);
    var var_0 = countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(abs(_wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a)), firstTrailingBit(-2147483647i), 1i), _wgslsmith_mod_vec3_i32(~(~vec3<i32>(u_input.a, 1i, u_input.a)), reverseBits(vec3<i32>(-44436i, 13426i, u_input.a) | vec3<i32>(22900i, u_input.a, u_input.a)))));
    var var_1 = true;
    var var_2 = Struct_2(arg_0.x);
    var var_3 = any(select(vec3<bool>(any(vec3<bool>(arg_2, true, false)), any(select(vec3<bool>(arg_2, false, arg_2), vec3<bool>(arg_2, false, false), arg_2)), arg_2), vec3<bool>(false, arg_2, !(!arg_2)), !all(!vec3<bool>(arg_2, true, arg_2))));
    return Struct_1(-909f);
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: f32) -> vec3<bool> {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a + arg_0.a));
    let var_0 = vec3<bool>(false, !all(vec4<bool>(true, true, true, true)), !(true || ((arg_0.a < 2515f) & true)));
    global1 = ~_wgslsmith_sub_i32(-4518i << (u_input.b % 32u), -u_input.a);
    var var_1 = arg_0;
    var var_2 = _wgslsmith_clamp_vec4_i32(~(-(~reverseBits(vec4<i32>(u_input.a, u_input.a, u_input.a, arg_1)))), ~(~max(vec4<i32>(0i, arg_1, -1i, -2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_1, -49317i, u_input.a, arg_1), vec4<i32>(-30460i, 0i, -1i, 2147483647i)))), ~(((vec4<i32>(arg_1, -5647i, u_input.a, -27481i) ^ vec4<i32>(u_input.a, arg_1, u_input.a, u_input.a)) << (countOneBits(vec4<u32>(4294967295u, 1u, 68355u, u_input.b)) % vec4<u32>(32u))) >> (((vec4<u32>(u_input.b, 0u, u_input.b, u_input.b) << (vec4<u32>(u_input.b, u_input.b, 36045u, 0u) % vec4<u32>(32u))) & firstLeadingBit(vec4<u32>(210u, 41724u, 42837u, 9316u))) % vec4<u32>(32u))));
    return vec3<bool>(false, !all(select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), !vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(false, var_0.x, false, var_0.x))), var_0.x);
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: vec4<i32>, arg_3: vec4<bool>) -> vec3<bool> {
    global0 = array<vec2<bool>, 21>();
    let var_0 = 1u;
    global0 = array<vec2<bool>, 21>();
    global0 = array<vec2<bool>, 21>();
    global0 = array<vec2<bool>, 21>();
    return !func_6(func_5(vec3<f32>(_wgslsmith_div_f32(arg_0.b.a, -233f), _wgslsmith_f_op_f32(arg_1 + -748f), _wgslsmith_div_f32(arg_0.c.a, arg_1)), 1u, arg_0.a.x, vec3<u32>(1u, var_0 | 4294967295u, func_2())), u_input.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(1063f, _wgslsmith_f_op_f32(-1612f + arg_0.e), true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(countOneBits(~select(vec3<u32>(u_input.b, 24068u, 4294967295u), vec3<u32>(0u, 15166u, u_input.b), true) >> (vec3<u32>(29754u, u_input.b, u_input.b) % vec3<u32>(32u))), func_1(Struct_3(vec3<bool>(false, u_input.b >= 33436u, u_input.a < 52356i), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1136f)), Struct_2(-431f), min(21492u, countOneBits(8928u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(353f, 1503f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(297f)) - -949f), _wgslsmith_div_vec4_i32(~vec4<i32>(u_input.a, 1i, -1i, u_input.a), _wgslsmith_div_vec4_i32(-vec4<i32>(-14448i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, -1i, u_input.a))), vec4<bool>(1i == -u_input.a, false, false, true)), !(!any(vec4<bool>(true, true, true, true))), Struct_3(vec3<bool>(true && any(vec4<bool>(false, false, false, true)), any(vec3<bool>(false, true, true)), _wgslsmith_f_op_f32(step(-873f, -2384f)) != -1117f), Struct_2(-943f), Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2316f), _wgslsmith_f_op_f32(-267f - 557f)))), u_input.b, 1000f));
    var var_1 = reverseBits(countOneBits(vec3<u32>(1u, 4097u, ~0u)));
    global0 = array<vec2<bool>, 21>();
    var_0 = Struct_4(var_0.a, var_0.d.a, all(select(!vec2<bool>(var_0.b.x, false), var_0.b.zx, var_0.d.a.x)), var_0.d);
    let var_2 = i32(-1i) * -u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(-vec4<i32>(var_2, var_2, _wgslsmith_dot_vec3_i32(vec3<i32>(var_2, u_input.a, var_2), vec3<i32>(0i, 1i, 1i)), var_2), abs(vec4<i32>(81670i, u_input.a, 2147483647i, 1i)), vec4<i32>(1i, var_2, (u_input.a >> (70693u % 32u)) | -2147483647i, var_2)), 2147483647i, abs(~vec2<u32>(7743u, 42966u)) >> (~(~vec2<u32>(0u, 60289u) >> (vec2<u32>(var_1.x, u_input.b) % vec2<u32>(32u))) % vec2<u32>(32u)), ~(abs(vec4<u32>(u_input.b, 1u, 0u, 0u)) & reverseBits(~vec4<u32>(4294967295u, 81900u, 98947u, 8303u))));
}

