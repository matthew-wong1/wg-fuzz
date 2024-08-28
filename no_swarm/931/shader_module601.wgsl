struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(-61976i), Struct_1(-18538i), Struct_1(23932i), Struct_1(40850i), Struct_1(-1i), Struct_1(-1i), Struct_1(2147483647i), Struct_1(27366i), Struct_1(2147483647i), Struct_1(i32(-2147483648)), Struct_1(17954i), Struct_1(1i), Struct_1(-1i), Struct_1(i32(-2147483648)), Struct_1(42872i), Struct_1(0i), Struct_1(-13078i), Struct_1(-280i), Struct_1(1i), Struct_1(i32(-2147483648)), Struct_1(-60436i), Struct_1(38821i), Struct_1(0i), Struct_1(2147483647i), Struct_1(i32(-2147483648)), Struct_1(i32(-2147483648)));

var<private> global1: u32 = 12426u;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<bool>) -> bool {
    var var_0 = countOneBits(arg_0.wxy);
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(355f, -211f, 999f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 805f, 245f)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1938f, 461f, 1000f), vec3<f32>(-904f, -557f, -1000f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-789f, -1000f, 984f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(170f, -660f, 1356f), vec3<f32>(383f, -283f, -1135f)))) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-229f, _wgslsmith_f_op_f32(1000f + -517f), 1049f), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(-1606f, 1607f, 1635f), vec3<f32>(1294f, 195f, 802f))))))));
    var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1153f, 129f) + _wgslsmith_f_op_f32(391f * -1000f)), -1953f, -388f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)));
    let var_2 = Struct_2(arg_1.x, global0[_wgslsmith_index_u32(reverseBits(~_wgslsmith_mod_u32(~33435u, 1u)), 26u)], abs(countOneBits(20700i)), ~vec2<u32>(abs(u_input.b), u_input.b), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~max(vec4<u32>(u_input.b, 1u, 1u, 4294967295u), vec4<u32>(u_input.b, 0u, 4294967295u, 74628u)), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b, 4294967295u, 1u, u_input.b), ~vec4<u32>(u_input.b, 0u, 1u, u_input.b))), 26u)]);
    global1 = 4294967295u;
    return false;
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = any(!vec4<bool>(true, false, false, func_3(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0, u_input.a.x, 2147483647i, arg_0), vec4<i32>(-28987i, arg_1.a, 28366i, -2147483647i)), vec4<bool>(false, true, true, false))));
    global1 = u_input.b;
    var var_1 = Struct_2(true, global0[_wgslsmith_index_u32(~u_input.b | _wgslsmith_dot_vec2_u32(~vec2<u32>(3694u, u_input.b), _wgslsmith_mult_vec2_u32(abs(vec2<u32>(u_input.b, 12176u)), select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 26593u), true))), 26u)], arg_0, select(vec2<u32>(22876u, 28461u), _wgslsmith_div_vec2_u32(vec2<u32>(~u_input.b, u_input.b), vec2<u32>(~u_input.b, _wgslsmith_div_u32(u_input.b, 0u))), !(!select(vec2<bool>(true, var_0), vec2<bool>(true, true), vec2<bool>(var_0, true)))), Struct_1(arg_1.a));
    global0 = array<Struct_1, 26>();
    let var_2 = -290f;
    return select(reverseBits(-_wgslsmith_sub_vec4_i32(vec4<i32>(20766i, u_input.a.x, var_1.c, u_input.c), vec4<i32>(arg_1.a, var_1.e.a, -42914i, arg_0)) & _wgslsmith_add_vec4_i32(vec4<i32>(var_1.b.a, arg_0, arg_0, arg_0), -vec4<i32>(var_1.b.a, arg_0, arg_1.a, 0i))), vec4<i32>(-20166i, ~(-2147483647i), _wgslsmith_sub_i32(1i, 17663i >> (1u % 32u)), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.c, -3701i), _wgslsmith_dot_vec4_i32(select(vec4<i32>(-2147483647i, arg_0, -1i, arg_1.a), vec4<i32>(u_input.c, -30496i, u_input.c, arg_1.a), false), _wgslsmith_add_vec4_i32(vec4<i32>(var_1.e.a, arg_0, 0i, 8487i), vec4<i32>(arg_0, u_input.a.x, 1i, 16843i))), _wgslsmith_div_i32(-u_input.a.x, 1i))), var_0);
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = arg_0.x;
    global1 = _wgslsmith_mod_u32(firstTrailingBit(~reverseBits(arg_1.d.x ^ 6255u)), arg_1.d.x);
    let var_1 = Struct_1(~_wgslsmith_add_i32(9149i, -1i));
    var var_2 = Struct_2(any(!select(vec3<bool>(true, arg_3.x, true), select(vec3<bool>(arg_1.a, true, arg_1.a), vec3<bool>(false, arg_3.x, true), vec3<bool>(true, arg_3.x, arg_1.a)), false)), var_1, _wgslsmith_clamp_i32(~abs(-32192i), -1i, abs(-26165i)), arg_1.d, arg_1.b);
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-1200f))));
    return arg_1.b;
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: bool, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec3_i32(~_wgslsmith_mod_vec3_i32(arg_3, _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(arg_3, vec3<i32>(2147483647i, -2147483647i, 24248i)), _wgslsmith_mod_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, arg_0, u_input.c)))), u_input.a);
    let var_1 = ~vec2<u32>(0u, u_input.b);
    global0 = array<Struct_1, 26>();
    let var_2 = !(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1480f - -1000f), _wgslsmith_f_op_f32(f32(-1f) * -167f))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-842f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-256f))))));
    let var_3 = arg_1;
    return Struct_1(var_0.x);
}

fn func_1() -> Struct_2 {
    global1 = u_input.b;
    var var_0 = func_5(_wgslsmith_mod_i32(max(select(u_input.c, 0i, false) & 1i, ~(i32(-1i) * -1i)), _wgslsmith_clamp_i32(-u_input.c, 0i, -1i) & u_input.a.x), func_4(vec4<f32>(_wgslsmith_f_op_f32(min(1941f, _wgslsmith_f_op_f32(-223f * -959f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -634f)), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -943f))), Struct_2(_wgslsmith_add_u32(u_input.b, u_input.b) == 84600u, global0[_wgslsmith_index_u32(u_input.b | ~75896u, 26u)], u_input.c, ~vec2<u32>(14573u, u_input.b), Struct_1(firstLeadingBit(u_input.a.x))), func_2(_wgslsmith_dot_vec3_i32(u_input.a, u_input.a), Struct_1(16109i)) | abs(_wgslsmith_sub_vec4_i32(vec4<i32>(-8115i, u_input.c, 10565i, 0i), vec4<i32>(u_input.c, 46061i, -43897i, -1i))), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.b, 34641u, 57447u), ~vec3<u32>(7621u, 12126u, 1u), ~vec3<u32>(1u, 4294967295u, 0u)), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.b) & vec3<u32>(31400u, u_input.b, 50773u), _wgslsmith_add_vec3_u32(vec3<u32>(5145u, 60499u, u_input.b), vec3<u32>(1u, 32272u, u_input.b)))) != (max(~4294967295u, 3461u) & (~74371u & _wgslsmith_mult_u32(4294967295u, u_input.b))), reverseBits(u_input.a));
    let var_1 = _wgslsmith_add_u32(~18068u, firstLeadingBit(~(~(~u_input.b))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(1880f, 925f), vec2<f32>(1000f, -1927f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-121f, -366f) - vec2<f32>(343f, -143f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1989f, -976f))))) - vec2<f32>(_wgslsmith_f_op_f32(step(107f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-711f, -1487f)), _wgslsmith_f_op_f32(-697f - -1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(314f + 530f))))));
    let var_3 = Struct_2(true, global0[_wgslsmith_index_u32(var_1, 26u)], var_0.a, _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(41881u, u_input.b), vec2<u32>(1u, ~var_1)), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 21653u), abs(~vec2<u32>(u_input.b, 39166u)))), Struct_1(u_input.c));
    return Struct_2(false | (-1000f < _wgslsmith_f_op_f32(var_2.x * var_2.x)), func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(304f, var_2.x, var_2.x, var_2.x)))), var_3, vec4<i32>(var_3.e.a, 12479i, var_0.a, _wgslsmith_mod_i32(u_input.c, _wgslsmith_dot_vec2_i32(u_input.a.yx, vec2<i32>(0i, -10822i)))), !vec2<bool>(all(vec2<bool>(var_3.a, false)), true)), 23634i, vec2<u32>(1u, ~firstTrailingBit(1u << (var_3.d.x % 32u))), func_5(var_3.b.a, global0[_wgslsmith_index_u32(countOneBits(reverseBits(38512u)), 26u)], var_3.a, func_2(-(~5598i), func_4(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.x, var_2.x, -1000f, -1119f), vec4<f32>(2089f, var_2.x, var_2.x, var_2.x))), var_3, _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, var_3.b.a, 27246i, u_input.c), vec4<i32>(var_3.c, var_3.b.a, var_3.c, 57139i)), select(vec2<bool>(false, false), vec2<bool>(var_3.a, false), true))).yyz));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = Struct_1(-12385i << (~firstTrailingBit(_wgslsmith_clamp_u32(u_input.b, 0u, var_0.d.x)) % 32u));
    let var_2 = any(!select(!select(vec4<bool>(var_0.a, true, false, true), vec4<bool>(var_0.a, false, var_0.a, false), vec4<bool>(var_0.a, false, true, false)), !vec4<bool>(true, true, var_0.a, false), var_0.a));
    var var_3 = _wgslsmith_sub_u32(~var_0.d.x, u_input.b);
    global0 = array<Struct_1, 26>();
    let var_4 = vec4<bool>(any(vec3<bool>(any(vec3<bool>(var_0.a, false, var_2)), true, var_0.a != var_0.a)) & true, all(select(select(vec4<bool>(true, true, false, true), vec4<bool>(var_2, false, var_0.a, var_2), false), vec4<bool>(var_2, true, var_2, var_0.a), var_0.a)) || true, ~func_1().d.x == var_0.d.x, func_1().a);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_0.d.x, ~u_input.b | (0u & (0u ^ var_0.d.x)), u_input.b << (~(~85976u) % 32u), 31306u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(471f, 1000f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1830f, -519f) - vec2<f32>(-1613f, 431f)));
}

