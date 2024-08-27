struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec2<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
    c: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26>;

var<private> global1: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(Struct_1(vec4<bool>(true, true, false, true), 502f, vec2<i32>(i32(-2147483648), 1i), vec2<bool>(true, true)), Struct_1(vec4<bool>(false, false, false, false), 220f, vec2<i32>(i32(-2147483648), 0i), vec2<bool>(true, false)), vec2<bool>(true, true)), Struct_2(Struct_1(vec4<bool>(false, true, true, true), -178f, vec2<i32>(-29120i, 1i), vec2<bool>(true, true)), Struct_1(vec4<bool>(true, false, true, true), 383f, vec2<i32>(-18563i, 1i), vec2<bool>(true, true)), vec2<bool>(true, true)), Struct_2(Struct_1(vec4<bool>(true, true, true, true), -783f, vec2<i32>(i32(-2147483648), -32618i), vec2<bool>(false, false)), Struct_1(vec4<bool>(true, true, false, true), -645f, vec2<i32>(0i, i32(-2147483648)), vec2<bool>(true, true)), vec2<bool>(true, true)), Struct_2(Struct_1(vec4<bool>(true, true, true, true), 2067f, vec2<i32>(40366i, i32(-2147483648)), vec2<bool>(false, false)), Struct_1(vec4<bool>(false, false, false, true), -1179f, vec2<i32>(16965i, 26347i), vec2<bool>(false, true)), vec2<bool>(false, false)), Struct_2(Struct_1(vec4<bool>(false, false, false, true), -286f, vec2<i32>(-1i, -1i), vec2<bool>(false, false)), Struct_1(vec4<bool>(true, false, true, true), 1275f, vec2<i32>(20495i, -11858i), vec2<bool>(true, true)), vec2<bool>(false, false)), Struct_2(Struct_1(vec4<bool>(false, true, true, true), 114f, vec2<i32>(54824i, 2147483647i), vec2<bool>(false, false)), Struct_1(vec4<bool>(false, true, false, false), 617f, vec2<i32>(-35460i, -13670i), vec2<bool>(true, false)), vec2<bool>(true, false)), Struct_2(Struct_1(vec4<bool>(false, false, true, true), 1000f, vec2<i32>(1i, i32(-2147483648)), vec2<bool>(true, false)), Struct_1(vec4<bool>(true, false, false, false), 1693f, vec2<i32>(-1i, 2147483647i), vec2<bool>(false, true)), vec2<bool>(false, true)), Struct_2(Struct_1(vec4<bool>(true, true, false, false), -1000f, vec2<i32>(-21371i, 38235i), vec2<bool>(false, true)), Struct_1(vec4<bool>(false, false, true, false), -568f, vec2<i32>(0i, 18613i), vec2<bool>(true, true)), vec2<bool>(true, true)), Struct_2(Struct_1(vec4<bool>(false, true, true, false), 1526f, vec2<i32>(-54821i, -13955i), vec2<bool>(true, true)), Struct_1(vec4<bool>(true, false, true, false), -942f, vec2<i32>(-1i, 1560i), vec2<bool>(true, true)), vec2<bool>(true, false)), Struct_2(Struct_1(vec4<bool>(true, true, true, true), 1183f, vec2<i32>(2147483647i, 2147483647i), vec2<bool>(false, true)), Struct_1(vec4<bool>(false, true, false, false), -747f, vec2<i32>(6808i, 2147483647i), vec2<bool>(false, false)), vec2<bool>(false, true)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: vec2<f32>, arg_3: vec3<f32>) -> vec2<u32> {
    let var_0 = _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, ~select(abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24518u, 26u)], 26u)]), _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 26u)], 26u)], global0[_wgslsmith_index_u32(2591u, 26u)], global0[_wgslsmith_index_u32(13232u, 26u)]), arg_0.c.x)), ~select(vec2<u32>(1u, 1u) << ((vec2<u32>(global0[_wgslsmith_index_u32(28377u, 26u)], 76394u) | vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 26u)], 26u)], 1u)) % vec2<u32>(32u)), vec2<u32>(1u, global0[_wgslsmith_index_u32(firstLeadingBit(global0[_wgslsmith_index_u32(0u, 26u)]), 26u)]), vec2<bool>(false, arg_1)));
    let var_1 = ~firstTrailingBit(u_input.a.x) << (_wgslsmith_sub_u32(_wgslsmith_mult_u32(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(112213u, 26u)], 4294967295u), var_0)), var_0.x), var_0.x) % 32u);
    return select(vec2<u32>(~8761u, var_0.x), var_0, !vec2<bool>(true, all(arg_0.c))) | _wgslsmith_div_vec2_u32(countOneBits(select(_wgslsmith_add_vec2_u32(var_0, vec2<u32>(1u, global0[_wgslsmith_index_u32(var_0.x, 26u)])), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(58955u, 26u)], 26u)], 0u), vec2<bool>(arg_1, arg_1))), vec2<u32>(~var_0.x, 4294967295u) & (var_0 | ~var_0));
}

fn func_2(arg_0: u32, arg_1: vec2<i32>, arg_2: u32) -> u32 {
    global0 = array<u32, 26>();
    var var_0 = min(_wgslsmith_div_vec2_u32(~(vec2<u32>(arg_2, global0[_wgslsmith_index_u32(arg_0, 26u)]) & vec2<u32>(29664u, 16661u)) << (~_wgslsmith_div_vec2_u32(vec2<u32>(1u, arg_2), vec2<u32>(arg_0, arg_0)) % vec2<u32>(32u)), ~vec2<u32>(_wgslsmith_mod_u32(arg_0, 0u), 1u)), _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(abs(abs(vec2<u32>(arg_0, 4294967295u))), _wgslsmith_div_vec2_u32(vec2<u32>(49143u, 1u), func_3(Struct_3(vec2<bool>(false, true), -1000f, vec4<bool>(true, true, true, false)), true, vec2<f32>(515f, 1473f), vec3<f32>(-1697f, 1563f, 974f)))), vec2<u32>(global0[_wgslsmith_index_u32(abs(arg_0), 26u)], 1u)));
    global0 = array<u32, 26>();
    let var_1 = Struct_3(vec2<bool>(true, ~abs(u_input.a.x) > 0i), _wgslsmith_f_op_f32(round(1f)), vec4<bool>(true, true, true, true));
    let var_2 = Struct_2(Struct_1(vec4<bool>(!(var_0.x <= global0[_wgslsmith_index_u32(14760u, 26u)]), true, var_1.a.x, true), _wgslsmith_f_op_f32(-var_1.b), vec2<i32>(~(~54285i), arg_1.x), select(var_1.c.yx, var_1.c.zw, all(vec2<bool>(true, var_1.c.x)) | var_1.c.x)), Struct_1(vec4<bool>(!any(var_1.c), var_1.a.x, _wgslsmith_sub_i32(-39212i, arg_1.x) != -u_input.a.x, all(vec4<bool>(true, var_1.a.x, true, var_1.a.x))), _wgslsmith_f_op_f32(floor(1000f)), firstTrailingBit(~vec2<i32>(arg_1.x, 14583i)), !vec2<bool>(true, !var_1.a.x)), select(vec2<bool>(var_1.a.x, true), select(vec2<bool>(true, var_1.a.x), !(!vec2<bool>(true, var_1.a.x)), var_1.c.x), !all(vec2<bool>(true, false))));
    return _wgslsmith_dot_vec3_u32(~(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_0.x, arg_2, 0u), vec4<u32>(4294967295u, arg_2, arg_2, 4294967295u)), func_3(var_1, true, vec2<f32>(-303f, var_2.a.b), vec3<f32>(-1000f, -625f, var_1.b)).x, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0, 26u)], 26u)]) | _wgslsmith_add_vec3_u32(abs(vec3<u32>(var_0.x, arg_0, var_0.x)), ~vec3<u32>(0u, 0u, 1u))), abs(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(1u, 26u)], global0[_wgslsmith_index_u32(0u, 26u)], 57222u, arg_2) << (vec4<u32>(global0[_wgslsmith_index_u32(81687u, 26u)], arg_2, arg_2, var_0.x) % vec4<u32>(32u)), ~vec4<u32>(var_0.x, global0[_wgslsmith_index_u32(16089u, 26u)], 1u, 1u)), _wgslsmith_add_u32(1u, var_0.x | 51373u), arg_2)));
}

fn func_4(arg_0: f32, arg_1: vec3<u32>) -> vec2<i32> {
    let var_0 = ~3619u;
    global1 = array<Struct_2, 10>();
    var var_1 = global1[_wgslsmith_index_u32(func_3(Struct_3(vec2<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), false && all(vec2<bool>(true, false))), -1010f, select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true)))), !all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false))) || true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0, arg_0), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(146f, arg_0), vec2<f32>(arg_0, -1125f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, arg_0), vec2<f32>(519f, arg_0), vec2<bool>(true, true)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -123f), 627f, _wgslsmith_div_f32(arg_0, arg_0)))))).x, 10u)];
    global1 = array<Struct_2, 10>();
    let var_2 = _wgslsmith_mod_vec3_i32(select(-select(-vec3<i32>(31416i, u_input.a.x, 2147483647i), select(vec3<i32>(u_input.a.x, u_input.a.x, 1i), vec3<i32>(var_1.b.c.x, var_1.a.c.x, -1i), false), !vec3<bool>(var_1.b.a.x, false, var_1.c.x)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-56709i, u_input.a.x, 2147483647i), ~(-vec3<i32>(-2147483647i, -1i, var_1.a.c.x)), ~(-vec3<i32>(2147483647i, u_input.a.x, 0i))), var_1.a.a.xyx), ~(~(-(~vec3<i32>(u_input.a.x, var_1.b.c.x, var_1.a.c.x)))));
    return vec2<i32>(min(_wgslsmith_mod_i32(_wgslsmith_div_i32(var_2.x, -6403i), _wgslsmith_div_i32(0i, var_2.x)) | var_1.b.c.x, u_input.a.x ^ u_input.a.x), 0i);
}

fn func_1(arg_0: vec3<f32>) -> vec3<i32> {
    var var_0 = firstLeadingBit(_wgslsmith_mod_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, u_input.a.x) >> ((vec2<u32>(global0[_wgslsmith_index_u32(35329u, 26u)], 8851u) >> (vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 26u)], 26u)], 26u)]) % vec2<u32>(32u))) % vec2<u32>(32u))));
    var_0 = func_4(_wgslsmith_f_op_f32(-1145f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.x, arg_0.x))))), countOneBits(vec3<u32>(func_2(50833u, vec2<i32>(1i, -1i), global0[_wgslsmith_index_u32(38067u, 26u)]) ^ ~0u, ~global0[_wgslsmith_index_u32(~12774u, 26u)], global0[_wgslsmith_index_u32(1u & global0[_wgslsmith_index_u32(14117u, 26u)], 26u)] | 4294967295u)));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -1567f, arg_0.x)), arg_0))) - vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), 414f, arg_0.x));
    global1 = array<Struct_2, 10>();
    global0 = array<u32, 26>();
    return firstTrailingBit(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(~firstTrailingBit(vec3<i32>(21517i, u_input.a.x, -12082i)), ~(vec3<i32>(0i, var_0.x, u_input.a.x) >> (vec3<u32>(0u, 80880u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 26u)], 26u)], 26u)], 26u)], 26u)], 26u)], 26u)]) % vec3<u32>(32u)))), ~reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.x, 0i, -32137i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 26>();
    let var_0 = vec3<i32>(-2147483647i, -7834i ^ _wgslsmith_dot_vec3_i32(func_1(_wgslsmith_div_vec3_f32(vec3<f32>(1243f, -1330f, -908f), vec3<f32>(-1000f, -668f, -924f))), -firstLeadingBit(vec3<i32>(u_input.a.x, 0i, u_input.a.x))), 1999i);
    let x = u_input.a;
    s_output = StorageBuffer(1i, global0[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(~global0[_wgslsmith_index_u32(func_3(Struct_3(vec2<bool>(false, false), -575f, vec4<bool>(true, false, true, true)), true, vec2<f32>(1152f, 436f), vec3<f32>(1128f, -223f, 559f)).x, 26u)], ~reverseBits(1u))), 26u)], func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(973f, 1208f, 100f))))).x);
}

