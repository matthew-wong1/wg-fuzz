struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec2<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: bool,
    d: vec3<f32>,
    e: vec4<i32>,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: f32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17> = array<i32, 17>(-1i, 20906i, 2147483647i, -11394i, 5758i, 2147483647i, 2147483647i, -10420i, -44043i, 0i, i32(-2147483648), 11363i, 23370i, 1i, -5759i, -22598i, -26347i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: f32) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1f, 1f)));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(func_3(true, global0[_wgslsmith_index_u32(0u, 17u)], 2022f))))));
    var var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-471f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.x, var_0.a.x) + -1000f)))));
    let var_2 = abs(vec3<u32>(45894u, _wgslsmith_mult_u32(abs(0u) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(32384u, 4294967295u), vec2<u32>(0u, 0u)), ~_wgslsmith_mod_u32(32267u, 3120u)), firstTrailingBit(16717u)));
    var var_3 = Struct_1(var_2, 40603u, 19035u, vec2<f32>(var_1.a.x, 1000f), !(!all(vec3<bool>(false, false, false)) & true));
    var_3 = Struct_1(vec3<u32>(countOneBits(0u), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~var_3.a, ~vec3<u32>(61045u, var_3.a.x, 22675u)), 6216u), _wgslsmith_mod_u32(52399u, ~(~var_2.x))), 4294967295u, 1u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(519f, -1594f))))), false);
    return Struct_2(Struct_1(~(~var_3.a), 470u, var_3.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(924f, _wgslsmith_f_op_f32(1535f * -122f)) - _wgslsmith_f_op_vec2_f32(-var_3.d)), true), 1i);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_3) -> Struct_4 {
    let var_0 = vec4<bool>(all(select(!vec2<bool>(arg_3.a.a.e, arg_3.c), !vec2<bool>(arg_3.c, true), select(select(vec2<bool>(true, true), vec2<bool>(arg_2.e, arg_0.e), true), select(vec2<bool>(arg_0.e, arg_2.e), vec2<bool>(arg_0.e, arg_2.e), vec2<bool>(false, false)), select(false, arg_2.e, arg_0.e)))), true, all(select(!vec2<bool>(true, arg_0.e), vec2<bool>(true, !arg_3.c), all(select(vec2<bool>(arg_3.c, true), vec2<bool>(arg_3.c, false), arg_3.c)))), !(min(countOneBits(0i), global0[_wgslsmith_index_u32(arg_3.a.a.a.x, 17u)] >> (arg_2.b % 32u)) > ~func_2().b));
    let var_1 = _wgslsmith_dot_vec3_i32(arg_3.e.xyy, vec3<i32>(16937i, ~arg_3.a.b, ~_wgslsmith_sub_i32(i32(-1i) * -15900i, -13434i)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(139f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1264f), _wgslsmith_f_op_f32(abs(-277f))))))) - _wgslsmith_f_op_f32(-arg_0.d.x));
    return Struct_4(_wgslsmith_f_op_vec2_f32(-arg_0.d));
}

fn func_5(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: Struct_4) -> Struct_2 {
    let var_0 = vec4<f32>(arg_0.a.x, 1f, _wgslsmith_div_f32(-310f, _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1376f, arg_0.a.x) * 678f))), arg_0.a.x);
    var var_1 = ~vec4<u32>(~0u, 4294967295u, countOneBits(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(53138u, 17630u, 108306u)), vec3<u32>(49988u, 1u, 12884u))), ~82181u);
    var var_2 = arg_1.x;
    let var_3 = Struct_3(Struct_2(Struct_1(vec3<u32>(var_1.x, var_1.x, ~0u), reverseBits(4294967295u), ~var_1.x, var_0.zz, true), countOneBits(arg_1.x) >> ((firstTrailingBit(var_1.x) | reverseBits(var_1.x)) % 32u)), vec3<u32>(var_1.x, var_1.x, ~_wgslsmith_div_u32(~74723u, var_1.x & 27065u)), (var_1.x << (_wgslsmith_sub_u32(_wgslsmith_add_u32(30675u, var_1.x), 4294967295u) % 32u)) > ~(~(57457u & var_1.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_2.a.x, arg_0.a.x, 543f), _wgslsmith_f_op_vec3_f32(max(var_0.wwz, var_0.yzz))) * var_0.wxw) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(var_0.yxx)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1287f, arg_2.a.x, 1851f) + var_0.zyy)))))), vec4<i32>(reverseBits(_wgslsmith_dot_vec3_i32(-vec3<i32>(14704i, arg_1.x, -12767i), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, arg_1.x, arg_1.x), vec3<i32>(arg_1.x, u_input.a.x, -35876i), vec3<i32>(arg_1.x, u_input.a.x, -8054i)))), arg_1.x, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(0i, u_input.a.x) ^ 1i, -9662i, -(arg_1.x & u_input.a.x)), _wgslsmith_sub_i32(-7678i, -(~46308i))));
    global0 = array<i32, 17>();
    return var_3.a;
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec4<i32>, arg_3: vec2<i32>) -> i32 {
    var var_0 = Struct_3(func_5(Struct_4(arg_0.d), arg_3, func_4(Struct_1(vec3<u32>(0u, 4294967295u, 1u), arg_0.a.x, 1u, _wgslsmith_f_op_vec2_f32(round(arg_0.d)), true), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d.x, 605f, arg_0.d.x)))), Struct_1(firstLeadingBit(arg_0.a), ~arg_0.b, select(arg_0.b, arg_0.b, arg_0.e), arg_0.d, true), Struct_3(func_2(), arg_0.a, true, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1627f, -750f, -982f))), -arg_2))), ~vec3<u32>(_wgslsmith_div_u32(1u, 4684u), 1u, arg_0.b), true, vec3<f32>(arg_0.d.x, arg_0.d.x, -955f), arg_2);
    var_0 = Struct_3(var_0.a, var_0.a.a.a, false, _wgslsmith_f_op_vec3_f32(-var_0.d), firstLeadingBit(-(vec4<i32>(-1i, -2147483647i, -18267i, arg_1) ^ vec4<i32>(-27071i, -1i, -1i, global0[_wgslsmith_index_u32(12254u, 17u)]))));
    global0 = array<i32, 17>();
    var var_1 = vec3<f32>(func_5(func_4(func_2().a, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.d.x, arg_0.d.x, arg_0.d.x))), arg_0, Struct_3(func_5(Struct_4(vec2<f32>(3777f, -741f)), vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(arg_0.b, 17u)]), Struct_4(vec2<f32>(arg_0.d.x, -272f))), _wgslsmith_div_vec3_u32(var_0.a.a.a, arg_0.a), 2147483647i <= u_input.a.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.d.x, var_0.d.x, 136f) + vec3<f32>(var_0.d.x, var_0.d.x, 322f)), var_0.e)), vec2<i32>(global0[_wgslsmith_index_u32(firstTrailingBit(abs(1u)), 17u)], max(_wgslsmith_add_i32(u_input.a.x, -2117i), 2147483647i)), Struct_4(var_0.d.zx)).a.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.a.a.d.x))) * 2886f), _wgslsmith_f_op_f32(-739f + var_0.a.a.d.x));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(~u_input.a.x, -1i | u_input.a.x, 1i, -2147483647i)), -vec4<i32>(func_1(Struct_1(vec3<u32>(29045u, 91220u, 11835u), 1u, 1u, vec2<f32>(-368f, 739f), false), u_input.a.x, vec4<i32>(u_input.a.x, global0[_wgslsmith_index_u32(20768u, 17u)], 17232i, -1i), u_input.a), ~u_input.a.x, -14433i, u_input.a.x)), ~(-2147483647i), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(25127u, 17u)], -28529i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, global0[_wgslsmith_index_u32(1u, 17u)])), _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, u_input.a.x, -566i), vec3<i32>(1i, -1i, global0[_wgslsmith_index_u32(15581u, 17u)]) >> (vec3<u32>(1u, 0u, 1u) % vec3<u32>(32u)))), reverseBits(min(_wgslsmith_div_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(29508u, 17u)], u_input.a.x, 90833i), vec3<i32>(global0[_wgslsmith_index_u32(1u, 17u)], u_input.a.x, -36752i)), vec3<i32>(0i, global0[_wgslsmith_index_u32(4294967295u, 17u)], global0[_wgslsmith_index_u32(1009u, 17u)]) & vec3<i32>(22948i, 1i, 2147483647i)))));
    global0 = array<i32, 17>();
    var var_1 = ~(~53348u);
    var var_2 = Struct_1(vec3<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(func_5(Struct_4(vec2<f32>(-375f, 1000f)), vec2<i32>(13732i, u_input.a.x), Struct_4(vec2<f32>(-1426f, -1000f))).a.c, 23859u), abs(~1u)), ~func_2().a.b, func_2().a.a.x), countOneBits(firstTrailingBit(reverseBits(1u))) | 1u, 1u, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-690f, -703f) + vec2<f32>(214f, 1221f)))), func_5(func_4(func_2().a, vec3<f32>(-1719f, 512f, -606f), Struct_1(vec3<u32>(4294967295u, 77220u, 0u), 52345u, 31070u, vec2<f32>(1436f, 800f), false), Struct_3(Struct_2(Struct_1(vec3<u32>(27264u, 32344u, 4294967295u), 42255u, 1u, vec2<f32>(-2491f, 117f), false), global0[_wgslsmith_index_u32(4294967295u, 17u)]), vec3<u32>(0u, 13275u, 0u), true, vec3<f32>(840f, -740f, 1444f), vec4<i32>(-1i, var_0.x, 13498i, -15693i))), vec2<i32>(2147483647i, ~2205i), Struct_4(vec2<f32>(-784f, 1115f))).a.d, true)), true);
    var var_3 = firstLeadingBit(vec4<i32>(global0[_wgslsmith_index_u32(~25792u, 17u)], select(u_input.a.x, reverseBits(_wgslsmith_mult_i32(u_input.a.x, -17588i)), ~0u != ~var_2.c), var_0.x, ~_wgslsmith_add_i32(var_0.x, 16933i >> (var_2.c % 32u))));
    var var_4 = func_5(func_4(Struct_1(vec3<u32>(~var_2.c, abs(var_2.b), var_2.b), ~var_2.a.x, ~(var_2.a.x >> (var_2.a.x % 32u)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(func_3(var_2.e, var_0.x, var_2.d.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.d.x, -804f) - vec2<f32>(-309f, -1000f)))), any(!vec3<bool>(true, var_2.e, var_2.e))), vec3<f32>(1627f, func_4(func_2().a, vec3<f32>(-598f, -498f, var_2.d.x), func_2().a, Struct_3(Struct_2(Struct_1(var_2.a, 75936u, 60026u, vec2<f32>(1183f, 975f), var_2.e), 14513i), var_2.a, var_2.e, vec3<f32>(var_2.d.x, var_2.d.x, var_2.d.x), vec4<i32>(2147483647i, var_0.x, -21886i, -44864i))).a.x, _wgslsmith_f_op_f32(f32(-1f) * -319f)), func_2().a, Struct_3(func_2(), ~_wgslsmith_add_vec3_u32(var_2.a, var_2.a), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-896f, 590f, var_2.d.x), vec3<f32>(var_2.d.x, -1676f, var_2.d.x))), ~(~vec4<i32>(var_3.x, global0[_wgslsmith_index_u32(4294967295u, 17u)], -28410i, 28313i)))), select(var_3.zx, _wgslsmith_mod_vec2_i32(min(_wgslsmith_clamp_vec2_i32(vec2<i32>(47804i, var_0.x), var_0.yx, u_input.a), select(var_3.zx, vec2<i32>(-1476i, 7936i), false)), vec2<i32>(reverseBits(-48864i), 1056i)), select(!vec2<bool>(var_2.e, var_2.e), select(!vec2<bool>(var_2.e, var_2.e), select(vec2<bool>(var_2.e, true), vec2<bool>(var_2.e, true), true), vec2<bool>(var_2.e, var_2.e)), !(false & var_2.e))), Struct_4(vec2<f32>(func_2().a.d.x, var_2.d.x)));
    global0 = array<i32, 17>();
    var var_5 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_4.a.d.x, 234f, var_4.a.e)), var_2.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-690f + var_4.a.d.x))))) - var_2.d);
    let x = u_input.a;
    s_output = StorageBuffer(-(~(~vec4<i32>(-86971i, -39785i, -3199i, var_4.b))) | -select(vec4<i32>(-7706i, 0i, -1i, -57921i), min(vec4<i32>(-26371i, var_3.x, -2147483647i, var_3.x), vec4<i32>(var_3.x, var_0.x, var_0.x, var_3.x)), select(vec4<bool>(var_4.a.e, var_4.a.e, true, var_4.a.e), vec4<bool>(true, true, var_2.e, true), var_2.e)), -(59309i ^ var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_4.a.d.x))), 28116i, _wgslsmith_mult_vec3_i32(min(var_3.ywx, vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 17u)], var_0.x | -21446i, global0[_wgslsmith_index_u32(0u, 17u)])), select(-vec3<i32>(-9202i, global0[_wgslsmith_index_u32(18277u, 17u)], -32619i) & select(vec3<i32>(-1i, var_3.x, -1i), var_3.wzy, var_2.e), abs(~vec3<i32>(var_3.x, var_3.x, -3830i)), 0u < (var_2.a.x | 4294967295u))));
}

