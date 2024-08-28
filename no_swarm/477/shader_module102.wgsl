struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<bool>,
    c: f32,
    d: vec3<bool>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(vec2<u32>(49265u, 0u), Struct_1(vec2<u32>(4294967295u, 0u)), Struct_2(vec2<f32>(-464f, 257f), vec3<f32>(-1911f, 966f, 868f), Struct_1(vec2<u32>(16524u, 5868u)), Struct_1(vec2<u32>(1u, 4294967295u)), false), false), Struct_3(vec2<u32>(1u, 62744u), Struct_1(vec2<u32>(0u, 851u)), Struct_2(vec2<f32>(2109f, -627f), vec3<f32>(-370f, -118f, 1643f), Struct_1(vec2<u32>(0u, 4294967295u)), Struct_1(vec2<u32>(1u, 19944u)), true), false), Struct_3(vec2<u32>(59631u, 0u), Struct_1(vec2<u32>(79686u, 15859u)), Struct_2(vec2<f32>(1000f, -2339f), vec3<f32>(-411f, -1000f, 394f), Struct_1(vec2<u32>(1u, 55855u)), Struct_1(vec2<u32>(3168u, 0u)), true), true), Struct_3(vec2<u32>(42326u, 4294967295u), Struct_1(vec2<u32>(1452u, 1u)), Struct_2(vec2<f32>(1264f, -1000f), vec3<f32>(342f, 2150f, 1521f), Struct_1(vec2<u32>(1u, 4294967295u)), Struct_1(vec2<u32>(36158u, 4294967295u)), false), true), Struct_3(vec2<u32>(1u, 5597u), Struct_1(vec2<u32>(26146u, 1u)), Struct_2(vec2<f32>(-377f, 1133f), vec3<f32>(-382f, 918f, -212f), Struct_1(vec2<u32>(83004u, 0u)), Struct_1(vec2<u32>(0u, 0u)), true), false), Struct_3(vec2<u32>(0u, 0u), Struct_1(vec2<u32>(50748u, 0u)), Struct_2(vec2<f32>(-186f, 210f), vec3<f32>(240f, -1389f, 266f), Struct_1(vec2<u32>(31624u, 4294967295u)), Struct_1(vec2<u32>(0u, 4294967295u)), false), false), Struct_3(vec2<u32>(51319u, 6527u), Struct_1(vec2<u32>(38500u, 0u)), Struct_2(vec2<f32>(545f, 1996f), vec3<f32>(1453f, -503f, 1328f), Struct_1(vec2<u32>(0u, 73248u)), Struct_1(vec2<u32>(41288u, 71051u)), true), false), Struct_3(vec2<u32>(1097u, 6437u), Struct_1(vec2<u32>(44754u, 1u)), Struct_2(vec2<f32>(585f, 182f), vec3<f32>(502f, -1630f, -1000f), Struct_1(vec2<u32>(12379u, 0u)), Struct_1(vec2<u32>(36041u, 4294967295u)), false), false), Struct_3(vec2<u32>(4294967295u, 17687u), Struct_1(vec2<u32>(11719u, 69546u)), Struct_2(vec2<f32>(-598f, 538f), vec3<f32>(-1000f, -1000f, 1270f), Struct_1(vec2<u32>(24526u, 0u)), Struct_1(vec2<u32>(34142u, 0u)), false), true), Struct_3(vec2<u32>(43684u, 69228u), Struct_1(vec2<u32>(56021u, 0u)), Struct_2(vec2<f32>(-259f, 874f), vec3<f32>(540f, 1000f, -144f), Struct_1(vec2<u32>(4294967295u, 11502u)), Struct_1(vec2<u32>(48933u, 1u)), true), false), Struct_3(vec2<u32>(22165u, 0u), Struct_1(vec2<u32>(1u, 16596u)), Struct_2(vec2<f32>(537f, 504f), vec3<f32>(-869f, -1138f, 1213f), Struct_1(vec2<u32>(33140u, 0u)), Struct_1(vec2<u32>(26312u, 4294967295u)), false), false), Struct_3(vec2<u32>(0u, 4294967295u), Struct_1(vec2<u32>(4294967295u, 61886u)), Struct_2(vec2<f32>(-1082f, 1583f), vec3<f32>(1000f, -2138f, -1000f), Struct_1(vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec2<u32>(37100u, 1u)), false), true));

var<private> global1: array<Struct_1, 23>;

var<private> global2: array<vec3<f32>, 5>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: vec3<bool>) -> vec2<f32> {
    let var_0 = -1000f;
    global0 = array<Struct_3, 12>();
    global0 = array<Struct_3, 12>();
    let var_1 = true;
    global2 = array<vec3<f32>, 5>();
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2367f, -1162f) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1419f), var_0)), -913f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0)))));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: Struct_3) -> Struct_4 {
    var var_0 = _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~u_input.c, ~abs(~u_input.c)), _wgslsmith_div_u32(79275u, arg_1.a.x));
    var_0 = ~_wgslsmith_mult_u32(arg_1.a.x, arg_2.b.a.x);
    global0 = array<Struct_3, 12>();
    global1 = array<Struct_1, 23>();
    var var_1 = u_input.a.xx;
    return Struct_4(Struct_3(vec2<u32>(abs(_wgslsmith_clamp_u32(arg_1.a.x, 46386u, 15379u)), arg_2.c.c.a.x), Struct_1(u_input.c.xx), arg_1.c, !arg_1.d), vec4<bool>(arg_1.d, arg_2.d, arg_2.d, true), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1201f))), select(select(!(!vec3<bool>(arg_2.d, arg_2.d, true)), vec3<bool>(arg_2.c.e, true, arg_1.d), select(select(vec3<bool>(true, false, arg_1.d), vec3<bool>(arg_1.c.e, arg_1.c.e, true), false), !vec3<bool>(arg_1.c.e, arg_2.d, arg_1.d), all(vec4<bool>(false, false, true, arg_2.d)))), !(!(!vec3<bool>(false, arg_1.c.e, true))), _wgslsmith_f_op_vec2_f32(func_2(vec3<bool>(true, true, arg_2.c.e))).x >= _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_2(vec3<bool>(false, false, arg_1.d))).x * _wgslsmith_f_op_f32(-arg_1.c.b.x))), arg_2);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec3<i32>) -> Struct_4 {
    global1 = array<Struct_1, 23>();
    global2 = array<vec3<f32>, 5>();
    var var_0 = 0u;
    global0 = array<Struct_3, 12>();
    global1 = array<Struct_1, 23>();
    return func_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1070f, -131f))))), _wgslsmith_f_op_vec2_f32(func_2(vec3<bool>(true, true, true)))), Struct_3(abs(~vec2<u32>(arg_0.a.x, 1u)) ^ _wgslsmith_clamp_vec2_u32(~vec2<u32>(4294967295u, 31725u), ~u_input.c.xz, vec2<u32>(arg_0.a.x, 27850u) << (vec2<u32>(u_input.c.x, arg_0.a.x) % vec2<u32>(32u))), Struct_1(firstLeadingBit(~vec2<u32>(0u, 1u))), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-812f, 1000f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 542f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global2[_wgslsmith_index_u32(97524u, 5u)] + global2[_wgslsmith_index_u32(arg_0.a.x, 5u)]) + _wgslsmith_div_vec3_f32(global2[_wgslsmith_index_u32(u_input.c.x, 5u)], vec3<f32>(-733f, -1252f, 707f))), Struct_1(~vec2<u32>(u_input.e, u_input.c.x)), Struct_1(_wgslsmith_mult_vec2_u32(u_input.c.xy, u_input.c.zx)), true), true), Struct_3(_wgslsmith_mult_vec2_u32(u_input.c.yy, firstLeadingBit(arg_0.a ^ vec2<u32>(arg_0.a.x, 27059u))), Struct_1(vec2<u32>(38549u | u_input.e, ~29352u)), Struct_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1039f, 886f), vec2<f32>(1000f, 1474f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-445f, -561f, -1000f))), Struct_1(arg_0.a), arg_0, true), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.x, -21261i), vec2<i32>(-1i, -2147483647i)) >= (0i << (countOneBits(u_input.e) % 32u))));
}

fn func_4(arg_0: vec3<u32>, arg_1: u32, arg_2: vec3<f32>, arg_3: Struct_4) -> Struct_2 {
    global2 = array<vec3<f32>, 5>();
    var var_0 = all(select(!arg_3.d, !(!arg_3.d), arg_3.d)) && !(_wgslsmith_mod_u32(~arg_0.x, 0u) != u_input.e);
    var var_1 = func_1(arg_3.e.b, vec4<i32>(2147483647i, 0i, u_input.d | countOneBits(u_input.d), -firstTrailingBit(u_input.b)) ^ (_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-5711i, 2147483647i, u_input.b, u_input.d), vec4<i32>(u_input.a.x, -3231i, -46384i, u_input.a.x)), vec4<i32>(2147483647i, 2147483647i, u_input.b, u_input.d) << (vec4<u32>(arg_3.a.a.x, arg_3.a.a.x, arg_3.a.b.a.x, 66576u) % vec4<u32>(32u))) | ~(~vec4<i32>(u_input.a.x, 25706i, u_input.b, u_input.b))), select(vec3<i32>(1752i, countOneBits(u_input.a.x), ~2147483647i) | u_input.a, reverseBits(u_input.a), true)).a.c;
    var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.a.c.a.x, arg_3.e.c.a.x))), vec2<f32>(func_1(var_1.d, vec4<i32>(u_input.b, u_input.d, u_input.b, u_input.a.x), u_input.a).e.c.b.x, _wgslsmith_f_op_f32(ceil(var_1.a.x))), all(select(arg_3.b.xw, vec2<bool>(var_1.e, var_1.e), arg_3.b.zz)))) - arg_3.e.c.b.zz), func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_2.yx, arg_2.xy) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.b.x, 1049f), arg_3.e.c.a))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.a + vec2<f32>(var_1.a.x, 912f)))), func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, arg_3.e.c.a.x) + vec2<f32>(233f, -332f))), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(func_1(Struct_1(vec2<u32>(var_1.c.a.x, 22653u)), vec4<i32>(-20876i, -23531i, 1i, u_input.b), u_input.a).e.c.d.a.x, max(arg_1, arg_0.x)), 12u)], Struct_3(~arg_3.e.a, arg_3.a.c.c, Struct_2(vec2<f32>(arg_2.x, -945f), vec3<f32>(arg_2.x, arg_3.a.c.b.x, 237f), arg_3.e.b, arg_3.e.c.d, false), !arg_3.a.d)).e, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_3.a.a.x, ~75527u), 12u)]).e.c.b, func_1(var_1.d, _wgslsmith_clamp_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, u_input.a.x, u_input.a.x, u_input.b), vec4<i32>(u_input.b, u_input.b, 0i, u_input.b)), _wgslsmith_div_vec4_i32(~vec4<i32>(u_input.b, -29243i, u_input.b, u_input.b), vec4<i32>(u_input.a.x, -26765i, 16545i, 18183i)), _wgslsmith_div_vec4_i32(-vec4<i32>(-33997i, 25779i, u_input.d, u_input.a.x), ~vec4<i32>(u_input.d, u_input.a.x, u_input.a.x, u_input.d))), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.d, -24708i, u_input.d), vec3<i32>(29657i, u_input.d, u_input.a.x) >> (u_input.c % vec3<u32>(32u))), u_input.a)).e.c.d, Struct_1(vec2<u32>(_wgslsmith_mult_u32(~123068u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, u_input.e), vec2<u32>(arg_1, 7838u))), reverseBits(max(arg_3.a.a.x, arg_1)))), any(vec3<bool>(true, var_1.a.x >= 1343f, any(arg_3.b))) || var_1.e);
    global1 = array<Struct_1, 23>();
    return Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(197f + var_1.a.x), _wgslsmith_f_op_f32(min(var_1.a.x, -373f))), _wgslsmith_f_op_f32(trunc(-1679f)))), arg_3.e.c.b, func_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.e.c.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2.x)) + -563f)), func_1(func_3(_wgslsmith_div_vec2_f32(vec2<f32>(-584f, var_1.b.x), vec2<f32>(928f, 228f)), global0[_wgslsmith_index_u32(u_input.e << (78890u % 32u), 12u)], global0[_wgslsmith_index_u32(74257u, 12u)]).e.b, -vec4<i32>(50554i, 81446i, u_input.d, u_input.d), abs(u_input.a) ^ vec3<i32>(-2147483647i, u_input.a.x, 2147483647i)).a, func_1(arg_3.a.b, firstLeadingBit(vec4<i32>(2147483647i, u_input.d, 13906i, u_input.a.x)), _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d, u_input.a.x, 12236i), vec3<i32>(u_input.a.x, u_input.a.x, 0i), u_input.a), abs(vec3<i32>(0i, u_input.a.x, 1i)))).e).e.c.d, global1[_wgslsmith_index_u32(~1u, 23u)], false);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_4, arg_2: f32, arg_3: Struct_3) -> Struct_3 {
    let var_0 = 42558u;
    let var_1 = Struct_1(select(_wgslsmith_sub_vec2_u32(~vec2<u32>(var_0, arg_3.a.x) ^ func_1(arg_1.e.b, vec4<i32>(u_input.a.x, 0i, u_input.b, 26155i), vec3<i32>(u_input.b, 1i, u_input.b)).a.c.c.a, abs(arg_0.c.a)), u_input.c.yz, !arg_1.d.xx));
    var var_2 = func_1(arg_3.c.c, (vec4<i32>(u_input.d, -44535i, _wgslsmith_mult_i32(-2147483647i, u_input.d), _wgslsmith_mult_i32(6182i, u_input.a.x)) & vec4<i32>(u_input.d, _wgslsmith_mult_i32(8376i, u_input.a.x), _wgslsmith_div_i32(u_input.b, -21870i), _wgslsmith_dot_vec3_i32(u_input.a, u_input.a))) ^ ~min(vec4<i32>(u_input.d, -2147483647i, 1i, u_input.a.x) | vec4<i32>(1i, -34844i, -15383i, 2147483647i), firstLeadingBit(vec4<i32>(u_input.b, 2147483647i, 3017i, -57181i))), vec3<i32>(_wgslsmith_div_i32(u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, -3472i), _wgslsmith_sub_vec2_i32(u_input.a.xz, vec2<i32>(u_input.a.x, u_input.a.x)))), min(u_input.b, reverseBits(_wgslsmith_mult_i32(u_input.a.x, 1i))), _wgslsmith_dot_vec3_i32(abs(u_input.a), u_input.a))).e.c;
    var var_3 = func_3(arg_1.a.c.a, arg_3, func_3(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.x, 520f)))), func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b.x, -1139f)), func_3(vec2<f32>(arg_3.c.a.x, arg_3.c.a.x), global0[_wgslsmith_index_u32(1u, 12u)], arg_1.a).e, func_3(arg_0.b.yz, Struct_3(vec2<u32>(var_0, 42039u), var_1, arg_3.c, true), Struct_3(vec2<u32>(var_1.a.x, arg_0.d.a.x), Struct_1(vec2<u32>(arg_1.a.b.a.x, 4294967295u)), Struct_2(vec2<f32>(arg_2, arg_3.c.a.x), arg_0.b, var_1, Struct_1(var_1.a), arg_3.c.e), arg_3.d)).a).e, global0[_wgslsmith_index_u32(9588u, 12u)]).a).d.x || (arg_3.c.d.a.x <= arg_3.c.d.a.x);
    global1 = array<Struct_1, 23>();
    return Struct_3(vec2<u32>(~abs(_wgslsmith_add_u32(var_1.a.x, u_input.c.x)), arg_0.c.a.x ^ (abs(var_2.d.a.x) | ~4294967295u)), arg_0.c, func_1(func_3(func_4(vec3<u32>(19710u, 0u, u_input.e), 1u, _wgslsmith_f_op_vec3_f32(-arg_0.b), arg_1).a, func_3(_wgslsmith_f_op_vec2_f32(arg_0.a * vec2<f32>(arg_3.c.a.x, 2123f)), func_1(arg_0.c, vec4<i32>(19170i, u_input.a.x, u_input.b, u_input.d), u_input.a).e, func_1(var_2.d, vec4<i32>(2147483647i, u_input.d, u_input.b, u_input.a.x), vec3<i32>(u_input.a.x, u_input.b, u_input.a.x)).a).e, func_3(_wgslsmith_f_op_vec2_f32(-var_2.b.xy), Struct_3(arg_0.c.a, Struct_1(arg_0.c.a), arg_3.c, arg_0.e), Struct_3(arg_3.b.a, arg_3.b, Struct_2(arg_1.a.c.b.zx, vec3<f32>(1345f, arg_3.c.a.x, -1874f), var_2.d, arg_1.e.c.d, true), true)).a).a.b, ~(-vec4<i32>(23756i, -393i, u_input.d, 1i)), u_input.a).a.c, !(!(!(true && arg_0.e))));
}

fn func_6(arg_0: Struct_3, arg_1: bool) -> Struct_4 {
    global0 = array<Struct_3, 12>();
    global1 = array<Struct_1, 23>();
    global2 = array<vec3<f32>, 5>();
    global1 = array<Struct_1, 23>();
    global2 = array<vec3<f32>, 5>();
    return Struct_4(func_5(arg_0.c, func_1(Struct_1(_wgslsmith_mod_vec2_u32(u_input.c.xz, vec2<u32>(arg_0.a.x, 0u))), vec4<i32>(i32(-1i) * -1i, ~(-13976i), 18206i, u_input.a.x & 2147483647i), min(-vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.d, -2147483647i, -27i))), arg_0.c.b.x, Struct_3(reverseBits(arg_0.a), func_4(vec3<u32>(22302u, u_input.c.x, arg_0.a.x), ~4294967295u, global2[_wgslsmith_index_u32(select(u_input.e, 4294967295u, false), 5u)], func_1(global1[_wgslsmith_index_u32(18030u, 23u)], vec4<i32>(1i, u_input.b, u_input.d, u_input.d), u_input.a)).d, Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(1463f, arg_0.c.a.x) - vec2<f32>(arg_0.c.b.x, -161f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(733f, -773f, -1446f)), func_5(arg_0.c, Struct_4(Struct_3(u_input.c.zy, Struct_1(arg_0.c.c.a), Struct_2(vec2<f32>(-421f, arg_0.c.a.x), global2[_wgslsmith_index_u32(u_input.c.x, 5u)], Struct_1(vec2<u32>(93316u, arg_0.c.d.a.x)), arg_0.b, arg_1), false), vec4<bool>(true, false, arg_0.d, true), arg_0.c.a.x, vec3<bool>(arg_1, arg_0.c.e, false), global0[_wgslsmith_index_u32(1u, 12u)]), 132f, global0[_wgslsmith_index_u32(0u, 12u)]).c.d, func_4(u_input.c, u_input.c.x, arg_0.c.b, Struct_4(global0[_wgslsmith_index_u32(1u, 12u)], vec4<bool>(arg_1, true, true, arg_0.c.e), arg_0.c.b.x, vec3<bool>(arg_0.c.e, arg_1, false), global0[_wgslsmith_index_u32(u_input.e, 12u)])).d, func_5(Struct_2(vec2<f32>(459f, arg_0.c.b.x), arg_0.c.b, global1[_wgslsmith_index_u32(arg_0.b.a.x, 23u)], global1[_wgslsmith_index_u32(u_input.c.x, 23u)], false), Struct_4(arg_0, vec4<bool>(false, arg_0.c.e, true, arg_0.d), 1808f, vec3<bool>(arg_0.d, true, arg_1), global0[_wgslsmith_index_u32(arg_0.b.a.x, 12u)]), arg_0.c.a.x, global0[_wgslsmith_index_u32(0u, 12u)]).d), func_3(vec2<f32>(arg_0.c.b.x, -1000f), Struct_3(u_input.c.zz, Struct_1(u_input.c.xy), arg_0.c, arg_1), arg_0).d.x)), !(!select(!vec4<bool>(arg_0.c.e, arg_0.c.e, arg_0.d, arg_1), select(vec4<bool>(arg_1, arg_0.c.e, arg_1, true), vec4<bool>(false, arg_1, true, arg_1), vec4<bool>(true, arg_1, false, arg_1)), arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-func_4(vec3<u32>(32184u, 0u, u_input.e), arg_0.c.c.a.x, vec3<f32>(arg_0.c.a.x, arg_0.c.b.x, arg_0.c.a.x), Struct_4(Struct_3(arg_0.a, arg_0.c.d, arg_0.c, arg_0.d), vec4<bool>(false, false, arg_1, arg_1), arg_0.c.a.x, vec3<bool>(arg_0.d, true, true), Struct_3(vec2<u32>(u_input.e, 65322u), arg_0.b, Struct_2(vec2<f32>(-994f, -532f), arg_0.c.b, Struct_1(vec2<u32>(5352u, 19375u)), arg_0.c.c, false), arg_1))).a.x)))), func_3(arg_0.c.b.yz, func_5(arg_0.c, Struct_4(func_5(Struct_2(arg_0.c.a, vec3<f32>(arg_0.c.a.x, -626f, arg_0.c.a.x), global1[_wgslsmith_index_u32(0u, 23u)], arg_0.c.d, true), Struct_4(Struct_3(vec2<u32>(u_input.e, 72577u), Struct_1(vec2<u32>(1u, arg_0.a.x)), arg_0.c, arg_1), vec4<bool>(false, true, false, true), 865f, vec3<bool>(false, true, arg_1), global0[_wgslsmith_index_u32(30055u, 12u)]), -1564f, arg_0), select(vec4<bool>(arg_1, true, true, false), vec4<bool>(arg_0.d, arg_1, arg_1, false), vec4<bool>(true, arg_1, false, false)), _wgslsmith_f_op_f32(f32(-1f) * -782f), vec3<bool>(arg_0.d, arg_0.c.e, arg_0.d), func_1(Struct_1(u_input.c.yz), vec4<i32>(u_input.d, u_input.d, 16419i, -3111i), vec3<i32>(u_input.b, -1i, u_input.a.x)).a), -1000f, func_3(func_4(vec3<u32>(19203u, u_input.e, 10912u), 49323u, arg_0.c.b, Struct_4(global0[_wgslsmith_index_u32(18180u, 12u)], vec4<bool>(arg_0.c.e, arg_0.c.e, arg_0.c.e, true), arg_0.c.a.x, vec3<bool>(arg_0.c.e, arg_1, arg_0.d), Struct_3(arg_0.c.c.a, Struct_1(u_input.c.xx), arg_0.c, arg_1))).a, global0[_wgslsmith_index_u32(~u_input.c.x, 12u)], arg_0).e), Struct_3(select(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), vec2<u32>(u_input.c.x, 42863u)), arg_0.b.a, -1053f != arg_0.c.a.x), func_4(u_input.c, _wgslsmith_dot_vec3_u32(u_input.c, u_input.c), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.c.a.x, arg_0.c.a.x, 468f))), func_3(arg_0.c.a, global0[_wgslsmith_index_u32(1u, 12u)], Struct_3(vec2<u32>(1u, arg_0.a.x), global1[_wgslsmith_index_u32(11181u, 23u)], Struct_2(vec2<f32>(713f, 548f), global2[_wgslsmith_index_u32(u_input.e, 5u)], global1[_wgslsmith_index_u32(10692u, 23u)], Struct_1(u_input.c.zz), true), true))).c, func_3(vec2<f32>(arg_0.c.b.x, arg_0.c.b.x), func_1(Struct_1(vec2<u32>(45111u, 56618u)), vec4<i32>(-2147483647i, u_input.d, 22489i, u_input.d), u_input.a).e, func_3(arg_0.c.a, global0[_wgslsmith_index_u32(u_input.e, 12u)], Struct_3(u_input.c.xx, Struct_1(vec2<u32>(0u, u_input.e)), Struct_2(vec2<f32>(arg_0.c.a.x, arg_0.c.a.x), arg_0.c.b, arg_0.c.d, arg_0.b, false), false)).e).e.c, arg_1)).b.xxz, func_3(_wgslsmith_f_op_vec2_f32(abs(arg_0.c.a)), func_3(arg_0.c.a, Struct_3(vec2<u32>(u_input.c.x, arg_0.a.x), func_4(u_input.c, 76250u, vec3<f32>(arg_0.c.b.x, arg_0.c.b.x, arg_0.c.b.x), Struct_4(arg_0, vec4<bool>(false, arg_1, false, true), arg_0.c.b.x, vec3<bool>(arg_1, true, arg_0.c.e), global0[_wgslsmith_index_u32(41337u, 12u)])).d, arg_0.c, arg_0.d), func_5(func_4(vec3<u32>(u_input.e, u_input.e, arg_0.a.x), u_input.e, arg_0.c.b, Struct_4(global0[_wgslsmith_index_u32(1u, 12u)], vec4<bool>(arg_0.c.e, false, false, arg_1), 199f, vec3<bool>(false, false, true), Struct_3(arg_0.c.c.a, global1[_wgslsmith_index_u32(0u, 23u)], Struct_2(arg_0.c.b.yz, vec3<f32>(2106f, -1048f, arg_0.c.a.x), arg_0.b, global1[_wgslsmith_index_u32(u_input.e, 23u)], arg_1), false))), func_3(arg_0.c.b.xy, Struct_3(vec2<u32>(arg_0.a.x, 18162u), Struct_1(vec2<u32>(u_input.c.x, u_input.c.x)), arg_0.c, arg_1), Struct_3(vec2<u32>(arg_0.a.x, 29546u), Struct_1(arg_0.a), Struct_2(arg_0.c.b.zy, vec3<f32>(-454f, arg_0.c.a.x, 806f), Struct_1(vec2<u32>(arg_0.a.x, arg_0.b.a.x)), Struct_1(vec2<u32>(arg_0.c.d.a.x, u_input.c.x)), true), arg_0.c.e)), _wgslsmith_f_op_f32(ceil(arg_0.c.a.x)), func_5(arg_0.c, Struct_4(arg_0, vec4<bool>(arg_0.d, arg_0.c.e, false, true), arg_0.c.b.x, vec3<bool>(false, true, true), global0[_wgslsmith_index_u32(34042u, 12u)]), arg_0.c.a.x, Struct_3(u_input.c.zz, arg_0.b, Struct_2(arg_0.c.b.yz, vec3<f32>(-1046f, -1451f, arg_0.c.b.x), global1[_wgslsmith_index_u32(arg_0.b.a.x, 23u)], global1[_wgslsmith_index_u32(14379u, 23u)], false), false)))).e, func_5(func_5(func_3(arg_0.c.b.xz, arg_0, arg_0).e.c, Struct_4(global0[_wgslsmith_index_u32(u_input.e, 12u)], vec4<bool>(arg_0.c.e, true, true, arg_1), 1440f, vec3<bool>(arg_0.c.e, arg_1, false), global0[_wgslsmith_index_u32(u_input.c.x, 12u)]), _wgslsmith_f_op_f32(1463f - -797f), func_1(Struct_1(u_input.c.xy), vec4<i32>(u_input.d, 13341i, 1i, 34823i), u_input.a).e).c, Struct_4(Struct_3(u_input.c.yy, Struct_1(vec2<u32>(8369u, 89187u)), Struct_2(vec2<f32>(-1033f, arg_0.c.a.x), vec3<f32>(510f, arg_0.c.b.x, arg_0.c.b.x), global1[_wgslsmith_index_u32(u_input.c.x, 23u)], Struct_1(vec2<u32>(arg_0.c.c.a.x, 0u)), arg_1), false), func_1(Struct_1(vec2<u32>(arg_0.c.c.a.x, u_input.c.x)), vec4<i32>(u_input.d, u_input.a.x, 1i, 0i), u_input.a).b, _wgslsmith_f_op_f32(-arg_0.c.b.x), func_3(arg_0.c.b.xx, arg_0, Struct_3(vec2<u32>(arg_0.c.d.a.x, arg_0.c.d.a.x), arg_0.c.c, Struct_2(arg_0.c.b.xx, vec3<f32>(arg_0.c.b.x, -1678f, 855f), Struct_1(vec2<u32>(6571u, 31918u)), Struct_1(vec2<u32>(u_input.c.x, 4294967295u)), false), false)).d, global0[_wgslsmith_index_u32(arg_0.c.c.a.x >> (u_input.c.x % 32u), 12u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.c.a.x))), global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(1u, 0u), 12u)])).e);
}

fn func_7(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_4, arg_3: vec4<f32>) -> i32 {
    var var_0 = func_6(Struct_3(~func_1(func_3(vec2<f32>(-204f, 197f), global0[_wgslsmith_index_u32(24768u, 12u)], global0[_wgslsmith_index_u32(arg_0.x, 12u)]).e.b, _wgslsmith_add_vec4_i32(vec4<i32>(0i, u_input.d, u_input.b, u_input.d), vec4<i32>(15773i, u_input.a.x, u_input.a.x, 10499i)), vec3<i32>(u_input.d, u_input.a.x, u_input.a.x)).e.a, Struct_1(~countOneBits(arg_2.e.b.a)), func_5(func_6(Struct_3(vec2<u32>(4294967295u, arg_0.x), global1[_wgslsmith_index_u32(arg_0.x, 23u)], Struct_2(vec2<f32>(-814f, arg_1), arg_2.e.c.b, global1[_wgslsmith_index_u32(arg_2.e.a.x, 23u)], Struct_1(vec2<u32>(arg_2.e.a.x, arg_0.x)), false), arg_2.d.x), true).e.c, func_3(_wgslsmith_f_op_vec2_f32(arg_3.xx + arg_3.zz), arg_2.e, func_1(arg_2.e.c.c, vec4<i32>(u_input.d, 0i, -2147483647i, u_input.d), u_input.a).e), arg_1, func_3(vec2<f32>(arg_1, arg_2.a.c.a.x), Struct_3(vec2<u32>(8298u, arg_2.a.a.x), Struct_1(vec2<u32>(4294967295u, 4294967295u)), arg_2.a.c, arg_2.b.x), Struct_3(vec2<u32>(4294967295u, arg_0.x), global1[_wgslsmith_index_u32(4294967295u, 23u)], Struct_2(vec2<f32>(-1000f, arg_2.a.c.b.x), global2[_wgslsmith_index_u32(arg_2.a.c.d.a.x, 5u)], arg_2.a.c.c, Struct_1(arg_2.a.b.a), false), true)).e).c, true), arg_2.a.d).a.c.d;
    var_0 = func_1(func_4(vec3<u32>(_wgslsmith_mult_u32(u_input.e << (29115u % 32u), ~4294967295u), var_0.a.x, arg_0.x), ~(~(~var_0.a.x)), arg_2.a.c.b, Struct_4(arg_2.e, vec4<bool>(true, any(arg_2.d), true & arg_2.a.d, false), _wgslsmith_f_op_f32(-arg_1), !vec3<bool>(arg_2.b.x, true, false), Struct_3(func_3(vec2<f32>(arg_2.a.c.b.x, arg_2.c), global0[_wgslsmith_index_u32(var_0.a.x, 12u)], Struct_3(vec2<u32>(arg_2.e.c.c.a.x, 47895u), Struct_1(vec2<u32>(arg_0.x, 5430u)), Struct_2(arg_3.xw, global2[_wgslsmith_index_u32(0u, 5u)], global1[_wgslsmith_index_u32(35785u, 23u)], arg_2.e.b, true), false)).e.b.a, func_4(vec3<u32>(arg_2.a.a.x, arg_0.x, 4294967295u), 0u, vec3<f32>(arg_1, arg_1, -180f), arg_2).c, func_3(vec2<f32>(arg_1, 735f), arg_2.a, arg_2.e).e.c, u_input.b < -1882i))).d, vec4<i32>(-(0i << (_wgslsmith_sub_u32(52724u, arg_2.e.a.x) % 32u)), -1i, -u_input.b, _wgslsmith_clamp_i32(-abs(23654i), -1i, _wgslsmith_mult_i32(reverseBits(-2621i), reverseBits(u_input.a.x)))), vec3<i32>(u_input.b, abs(~u_input.a.x), _wgslsmith_clamp_i32(-2147483647i, firstLeadingBit(u_input.a.x) ^ ~(-52353i), 0i))).e.b;
    global1 = array<Struct_1, 23>();
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x))))));
    global1 = array<Struct_1, 23>();
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(u_input.e, 12u)];
    let var_1 = firstTrailingBit(var_0.a);
    var var_2 = func_7(u_input.c.yz, var_0.c.a.x, func_6(func_5(func_4(_wgslsmith_add_vec3_u32(vec3<u32>(17325u, 74277u, 52003u), vec3<u32>(7300u, var_0.a.x, var_1.x)), ~29733u, _wgslsmith_f_op_vec3_f32(-var_0.c.b), func_1(var_0.b, vec4<i32>(u_input.b, -888i, u_input.a.x, 0i), vec3<i32>(6742i, u_input.b, 1i))), Struct_4(func_1(Struct_1(vec2<u32>(13081u, 1u)), vec4<i32>(66389i, u_input.b, -47971i, u_input.d), vec3<i32>(-45940i, 0i, u_input.d)).e, vec4<bool>(var_0.c.e, true, var_0.c.e, var_0.c.e), _wgslsmith_f_op_f32(f32(-1f) * -1560f), select(vec3<bool>(false, var_0.d, true), vec3<bool>(true, var_0.d, true), false), Struct_3(vec2<u32>(var_0.b.a.x, 21497u), global1[_wgslsmith_index_u32(0u, 23u)], var_0.c, false)), -128f, Struct_3(func_3(var_0.c.b.yy, Struct_3(vec2<u32>(var_1.x, 1u), Struct_1(vec2<u32>(u_input.c.x, 1u)), Struct_2(vec2<f32>(var_0.c.b.x, -931f), vec3<f32>(var_0.c.b.x, -219f, -466f), Struct_1(vec2<u32>(u_input.e, 1u)), var_0.c.c, false), true), global0[_wgslsmith_index_u32(var_0.c.d.a.x, 12u)]).e.c.c.a, global1[_wgslsmith_index_u32(~var_1.x, 23u)], var_0.c, var_0.d)), false), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(798f, var_0.c.a.x, -1337f, -1595f)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.c.b.x, var_0.c.a.x, var_0.c.a.x, var_0.c.b.x), vec4<f32>(494f, -1084f, var_0.c.a.x, var_0.c.a.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.b.x, var_0.c.b.x, var_0.c.b.x, var_0.c.b.x)))))));
    let var_3 = -2147483647i ^ _wgslsmith_dot_vec2_i32(-u_input.a.xz | vec2<i32>(u_input.b, reverseBits(u_input.d)), u_input.a.xx);
    let var_4 = true;
    let var_5 = ~(-(~countOneBits(~u_input.b)));
    let var_6 = var_0.c.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(select(func_5(var_0.c, func_1(Struct_1(vec2<u32>(u_input.e, var_0.b.a.x)), ~vec4<i32>(u_input.b, -4574i, u_input.a.x, var_5), vec3<i32>(-2147483647i, u_input.a.x, var_3)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + var_0.c.b.x)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(27380u, var_1.x, var_0.c.c.a.x, u_input.e), vec4<u32>(4294967295u, var_1.x, 4294967295u, 46961u)), countOneBits(vec4<u32>(4294967295u, 1u, u_input.e, u_input.c.x))), 12u)]).c.d.a, ~(u_input.c.yz ^ var_0.a) | var_0.c.c.a, var_4), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f)))) - var_0.c.a.x), ~(~select(vec4<u32>(33999u, 1u, var_1.x, u_input.e) << (vec4<u32>(var_1.x, var_0.a.x, var_0.a.x, var_1.x) % vec4<u32>(32u)), vec4<u32>(1u, 12248u, 7960u, u_input.e), func_6(global0[_wgslsmith_index_u32(u_input.e, 12u)], true).b)), ~var_0.c.d.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(249f - var_0.c.a.x) * _wgslsmith_f_op_f32(var_0.c.b.x * var_0.c.b.x)), _wgslsmith_f_op_f32(-827f + _wgslsmith_f_op_f32(var_0.c.b.x - var_0.c.b.x)), _wgslsmith_div_f32(var_0.c.a.x, 1081f))));
}

