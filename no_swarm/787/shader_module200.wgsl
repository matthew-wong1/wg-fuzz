struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 11> = array<vec4<f32>, 11>(vec4<f32>(-1135f, -2907f, 619f, -192f), vec4<f32>(-639f, 187f, 854f, -175f), vec4<f32>(515f, 1000f, 1488f, -135f), vec4<f32>(-500f, -2151f, -126f, -473f), vec4<f32>(-1180f, 1455f, -447f, -1218f), vec4<f32>(344f, 1003f, 253f, 1000f), vec4<f32>(-417f, -516f, 142f, -1024f), vec4<f32>(-918f, 1825f, -1147f, 929f), vec4<f32>(-581f, 507f, 650f, -1290f), vec4<f32>(-477f, 1200f, -213f, 1000f), vec4<f32>(773f, 1286f, -724f, 1983f));

var<private> global1: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(vec4<bool>(false, false, false, false)), Struct_2(vec4<bool>(false, false, false, true)), Struct_2(vec4<bool>(true, true, false, false)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: vec4<u32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -187f)) + -1537f))));
    var var_1 = var_0;
    global0 = array<vec4<f32>, 11>();
    global1 = array<Struct_2, 3>();
    var var_2 = countOneBits(arg_2.xz);
    return arg_1.a.x;
}

fn func_2(arg_0: f32) -> i32 {
    let var_0 = vec4<i32>(select(~firstLeadingBit(i32(-1i) * -31525i), select(_wgslsmith_sub_i32(49373i, i32(-1i) * -27594i), 1i, !any(vec4<bool>(true, true, true, false))), !func_3(~18340i, global1[_wgslsmith_index_u32(u_input.a | u_input.a, 3u)], vec4<u32>(u_input.a, u_input.a, 4895u, u_input.a))), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(-reverseBits(vec3<i32>(-34212i, 1i, 0i)), _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, 0i, 20914i) << (vec3<u32>(26353u, 30204u, u_input.a) % vec3<u32>(32u)), reverseBits(vec3<i32>(1i, -36529i, -35994i)))), ~(vec3<i32>(-1i) * -vec3<i32>(35289i, -1104i, 0i))), -45608i, _wgslsmith_add_i32(-1i, _wgslsmith_clamp_i32(-(1i >> (u_input.a % 32u)), -208i, max(_wgslsmith_dot_vec2_i32(vec2<i32>(-13970i, 0i), vec2<i32>(40549i, -1i)), 1i))));
    global0 = array<vec4<f32>, 11>();
    var var_1 = var_0.wz;
    var var_2 = Struct_3(vec2<i32>(_wgslsmith_dot_vec3_i32(~abs(var_0.ywy), _wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, var_1.x, 22524i), var_0.yzx ^ vec3<i32>(var_1.x, var_1.x, var_0.x))), (_wgslsmith_sub_i32(-2147483647i, var_0.x) ^ (var_1.x >> (65931u % 32u))) << (countOneBits(~80391u) % 32u)), Struct_1(all(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), false), true)), _wgslsmith_mult_i32(-var_1.x, var_0.x), -2147483647i, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1847f * arg_0), _wgslsmith_f_op_f32(sign(arg_0))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1547f, -661f) - vec2<f32>(-359f, -543f)) + _wgslsmith_div_vec2_f32(vec2<f32>(-458f, arg_0), vec2<f32>(-1113f, 161f))))));
    var var_3 = Struct_1(true, var_0.x, _wgslsmith_div_i32(_wgslsmith_mod_i32(~(-var_0.x), abs(-54259i)), var_0.x), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-420f, var_2.b.d.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(var_2.b.d, vec2<f32>(-2696f, var_2.b.d.x)))))))));
    return 19676i >> (select(39332u, u_input.a, var_2.b.a) % 32u);
}

fn func_4(arg_0: bool, arg_1: vec4<f32>, arg_2: i32, arg_3: Struct_2) -> Struct_3 {
    global1 = array<Struct_2, 3>();
    let var_0 = _wgslsmith_div_f32(arg_1.x, -1248f);
    global0 = array<vec4<f32>, 11>();
    var var_1 = vec3<i32>(0i, arg_2, -33069i);
    global1 = array<Struct_2, 3>();
    return Struct_3(var_1.zz, Struct_1(false, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2, 11174i), vec2<i32>(var_1.x, arg_2)), arg_2 >> (4294967295u % 32u)) >> (select(u_input.a, ~145183u, arg_0) % 32u), _wgslsmith_mult_i32(-66514i, _wgslsmith_dot_vec2_i32(~vec2<i32>(arg_2, var_1.x), vec2<i32>(arg_2, 25364i))), arg_1.xy));
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: Struct_3) -> Struct_1 {
    global0 = array<vec4<f32>, 11>();
    let var_0 = 2147483647i;
    return arg_3.b;
}

fn func_1(arg_0: u32) -> vec3<u32> {
    var var_0 = _wgslsmith_mod_u32(_wgslsmith_mult_u32(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, 1u), abs(vec3<u32>(1u, u_input.a, 1u)))), 1u), 52351u);
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-542f - _wgslsmith_f_op_f32(f32(-1f) * -454f)) + _wgslsmith_f_op_f32(f32(-1f) * -273f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1731f) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-2771f)), 683f)))), true));
    var_1 = _wgslsmith_f_op_f32(select(632f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1447f)), _wgslsmith_f_op_f32(min(811f, -1053f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1364f))))), true));
    var var_2 = Struct_3(_wgslsmith_add_vec2_i32(vec2<i32>(~1i, 14026i), ~(~_wgslsmith_clamp_vec2_i32(vec2<i32>(5239i, -1i), vec2<i32>(-12063i, -1i), vec2<i32>(2147483647i, -82410i)))), func_5(u_input.a, Struct_2(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), true)), vec2<bool>(true, true), func_4(true, vec4<f32>(_wgslsmith_f_op_f32(round(858f)), 382f, _wgslsmith_f_op_f32(step(398f, 1768f)), 1186f), func_2(-1000f), global1[_wgslsmith_index_u32(min(u_input.a, arg_0) << (0u % 32u), 3u)])));
    var var_3 = Struct_2(vec4<bool>(120037u < select(28193u, ~arg_0, var_2.b.a), var_2.b.a, var_2.b.a || !any(vec2<bool>(var_2.b.a, true)), func_4(false, vec4<f32>(var_2.b.d.x, func_4(var_2.b.a, global0[_wgslsmith_index_u32(u_input.a, 11u)], 0i, global1[_wgslsmith_index_u32(arg_0, 3u)]).b.d.x, 1094f, _wgslsmith_f_op_f32(var_2.b.d.x - var_2.b.d.x)), ~var_2.a.x, Struct_2(vec4<bool>(var_2.b.a, true, false, true))).b.a));
    return abs(_wgslsmith_add_vec3_u32(vec3<u32>(1u, ~arg_0, ~53817u), ~(~vec3<u32>(u_input.a, u_input.a, 1u))) | _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(4294967295u, 7956u), _wgslsmith_div_u32(4294967295u, u_input.a), u_input.a), ~vec3<u32>(1u, 1u, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -576f;
    global0 = array<vec4<f32>, 11>();
    let var_1 = -34095i << (_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(func_1(11946u), vec3<u32>(u_input.a, 61660u, 14150u)) >> (~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(u_input.a, 1u, u_input.a)) % 32u), abs(~abs(u_input.a))) % 32u);
    let var_2 = _wgslsmith_f_op_f32(func_5(~u_input.a, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(1330u, u_input.a), vec2<u32>(u_input.a, u_input.a)), _wgslsmith_add_u32(56342u, u_input.a)), 3u)], !select(vec2<bool>(true, false), vec2<bool>(false, false), true), Struct_3(select(~vec2<i32>(var_1, -23726i), vec2<i32>(var_1, -621i) | vec2<i32>(2147483647i, var_1), true), func_5(~4294967295u, global1[_wgslsmith_index_u32(4294967295u, 3u)], vec2<bool>(true, true), func_4(true, global0[_wgslsmith_index_u32(1u, 11u)], 0i, Struct_2(vec4<bool>(true, false, true, false)))))).d.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_4(true, vec4<f32>(-205f, -424f, -369f, -1000f), 0i, global1[_wgslsmith_index_u32(u_input.a, 3u)]).b.d.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-153f)) * _wgslsmith_div_f32(-2739f, 1170f))))));
    global1 = array<Struct_2, 3>();
    global1 = array<Struct_2, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 58999u, 1u) << (countOneBits(vec3<u32>(u_input.a, 4294967295u, u_input.a)) % vec3<u32>(32u)), vec3<u32>(u_input.a, 43491u, u_input.a) << (~vec3<u32>(u_input.a, u_input.a, 47759u) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_4(var_1 == -32087i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1285f, 129f, var_2, -1000f)), var_1 | -27293i, global1[_wgslsmith_index_u32(0u, 3u)]).b.d.x)), abs(abs(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a, 1u, 28481u, u_input.a), ~vec4<u32>(55737u, u_input.a, u_input.a, u_input.a)))));
}

