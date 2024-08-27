struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 16>;

var<private> global1: array<vec2<f32>, 15> = array<vec2<f32>, 15>(vec2<f32>(-133f, -228f), vec2<f32>(-274f, 1297f), vec2<f32>(301f, -826f), vec2<f32>(267f, -1427f), vec2<f32>(1090f, -2663f), vec2<f32>(-717f, -226f), vec2<f32>(1335f, 308f), vec2<f32>(-654f, 881f), vec2<f32>(-206f, -1084f), vec2<f32>(-526f, 1000f), vec2<f32>(960f, 332f), vec2<f32>(1998f, -474f), vec2<f32>(1260f, -124f), vec2<f32>(1227f, 886f), vec2<f32>(821f, -741f));

var<private> global2: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(1000f, vec3<u32>(4294967295u, 4294967295u, 84638u), 0i, 16385i, 44154u), Struct_1(-741f, vec3<u32>(0u, 45745u, 13991u), 1i, i32(-2147483648), 36719u), Struct_1(-111f, vec3<u32>(19362u, 0u, 4294967295u), 0i, 12210i, 30906u), Struct_1(683f, vec3<u32>(0u, 106896u, 0u), -11043i, -8683i, 301u), Struct_1(-2235f, vec3<u32>(25175u, 0u, 49282u), -1i, -14164i, 56485u), Struct_1(-399f, vec3<u32>(41267u, 84993u, 106697u), 47471i, 21816i, 67275u), Struct_1(-1000f, vec3<u32>(4294967295u, 18530u, 4787u), 1i, -15659i, 15223u), Struct_1(-549f, vec3<u32>(1u, 62109u, 1u), i32(-2147483648), -1i, 1u), Struct_1(-121f, vec3<u32>(655u, 51545u, 4294967295u), 2147483647i, 2147483647i, 0u), Struct_1(2128f, vec3<u32>(162082u, 0u, 1u), -9654i, 0i, 4294967295u), Struct_1(-240f, vec3<u32>(67736u, 0u, 53529u), 22240i, 59003i, 32296u), Struct_1(560f, vec3<u32>(13248u, 56363u, 11108u), 15143i, 25642i, 13845u), Struct_1(-1256f, vec3<u32>(12418u, 7887u, 70326u), 1i, 2147483647i, 9025u), Struct_1(2101f, vec3<u32>(58607u, 21749u, 2577u), 0i, 27440i, 0u), Struct_1(400f, vec3<u32>(20712u, 32963u, 24471u), 44790i, 46712i, 0u), Struct_1(1376f, vec3<u32>(1u, 4294967295u, 8695u), 1i, i32(-2147483648), 25539u), Struct_1(2737f, vec3<u32>(17903u, 0u, 54379u), 2147483647i, -33820i, 0u), Struct_1(-832f, vec3<u32>(0u, 4294967295u, 1u), 1i, -62044i, 17595u), Struct_1(-1303f, vec3<u32>(0u, 1u, 0u), 23079i, 0i, 4294967295u), Struct_1(1273f, vec3<u32>(38366u, 4294967295u, 19789u), i32(-2147483648), -1i, 1u), Struct_1(1000f, vec3<u32>(4294967295u, 1u, 11162u), -30532i, 1i, 1u), Struct_1(-751f, vec3<u32>(4294967295u, 11973u, 78700u), -12234i, 27958i, 4294967295u), Struct_1(-695f, vec3<u32>(0u, 1u, 1u), -1i, 36436i, 19051u), Struct_1(-413f, vec3<u32>(1u, 0u, 2444u), 2147483647i, 0i, 24010u));

var<private> global3: Struct_1 = Struct_1(947f, vec3<u32>(0u, 1u, 1u), 2147483647i, i32(-2147483648), 1u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: vec3<u32>, arg_1: i32, arg_2: vec3<f32>, arg_3: vec4<f32>) -> i32 {
    var var_0 = global2[_wgslsmith_index_u32(4294967295u, 24u)];
    var_0 = global2[_wgslsmith_index_u32(arg_0.x, 24u)];
    global0 = array<vec4<f32>, 16>();
    var var_1 = 1u;
    let var_2 = global2[_wgslsmith_index_u32(global3.b.x, 24u)];
    return var_0.d;
}

fn func_3(arg_0: vec3<f32>) -> i32 {
    var var_0 = select(select(vec3<bool>(true, select(true, any(vec2<bool>(false, true)), 47065u <= u_input.b), ~u_input.d.x == 15192u), select(vec3<bool>(false, true, 1u > u_input.d.x), vec3<bool>(true, u_input.b >= 19241u, true), vec3<bool>(all(vec4<bool>(false, true, true, false)), all(vec2<bool>(false, false)), -71449i > global3.c)), vec3<bool>(true, all(vec2<bool>(true, true)), true)), vec3<bool>(!any(select(vec2<bool>(true, false), vec2<bool>(true, false), true)), true, false), all(!select(vec3<bool>(false, true, false), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true))));
    global3 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(9104u, global3.e ^ abs(u_input.b)), 24u)];
    let var_1 = ~u_input.a;
    var var_2 = Struct_1(_wgslsmith_div_f32(1524f, _wgslsmith_f_op_f32(-global3.a)), abs(~vec3<u32>(u_input.b, _wgslsmith_sub_u32(u_input.d.x, global3.b.x), _wgslsmith_add_u32(global3.e, 4294967295u))), u_input.c.x, (_wgslsmith_mult_i32(abs(36605i), _wgslsmith_div_i32(89735i, var_1.x)) >> (~1u % 32u)) << (~_wgslsmith_dot_vec3_u32(global3.b, ~global3.b) % 32u), select(_wgslsmith_dot_vec3_u32(abs(max(u_input.d.wyw, u_input.d.zww)), ~abs(global3.b)), ~u_input.d.x, true));
    var_2 = global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(4294967295u ^ ~_wgslsmith_clamp_u32(var_2.e, global3.b.x, global3.b.x), ~(~4294967295u ^ ~u_input.d.x)), 24u)];
    return _wgslsmith_sub_i32(max(-firstTrailingBit(~71540i), u_input.c.x), -8835i >> ((u_input.d.x << ((_wgslsmith_mult_u32(var_2.b.x, var_2.b.x) << (global3.b.x % 32u)) % 32u)) % 32u));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> vec3<i32> {
    global0 = array<vec4<f32>, 16>();
    global0 = array<vec4<f32>, 16>();
    return u_input.c.zww;
}

fn func_5(arg_0: i32, arg_1: vec3<i32>, arg_2: f32, arg_3: vec3<bool>) -> Struct_1 {
    global2 = array<Struct_1, 24>();
    let var_0 = global2[_wgslsmith_index_u32(~46538u, 24u)];
    var var_1 = ~_wgslsmith_mult_vec4_u32(u_input.d, ~vec4<u32>(4294967295u, ~11812u, 1u, u_input.d.x));
    global0 = array<vec4<f32>, 16>();
    let var_2 = select(!(!vec2<bool>(arg_3.x, true)), select(arg_3.yx, !select(!arg_3.zy, select(arg_3.yx, vec2<bool>(false, false), vec2<bool>(true, arg_3.x)), arg_3.xy), false), arg_3.yy);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-690f, arg_2)), select(select(_wgslsmith_mult_vec3_u32(vec3<u32>(11510u, 43100u, var_1.x), var_1.xwx), var_0.b ^ vec3<u32>(17627u, var_0.e, global3.e), arg_3.x || true) & u_input.d.zwz, vec3<u32>(_wgslsmith_div_u32(78708u, _wgslsmith_sub_u32(4294967295u, global3.b.x)), global3.b.x, 4294967295u), vec3<bool>(!all(vec2<bool>(true, false)), var_0.e > u_input.b, any(vec2<bool>(var_2.x, false)))), -1i, select(_wgslsmith_mod_i32(u_input.c.x, _wgslsmith_add_i32(arg_0, i32(-1i) * -11441i)), _wgslsmith_mod_i32(-2147483647i, arg_0), any(vec2<bool>(var_2.x, u_input.d.x < var_1.x))), 1u);
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> vec2<bool> {
    var var_0 = vec4<bool>(false, all(vec3<bool>(true, true, true)), arg_2, !arg_2);
    let var_1 = func_5(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(global3.d, arg_0.c), u_input.c.x), -func_2(u_input.d.ywx, u_input.c.x, vec3<f32>(global3.a, 1087f, global3.a), global0[_wgslsmith_index_u32(global3.e, 16u)])), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, firstLeadingBit(2147483647i)), -firstLeadingBit(u_input.c.zx))), func_4(arg_2, min(1i, firstTrailingBit(global3.d)), global2[_wgslsmith_index_u32(global3.b.x, 24u)], Struct_1(_wgslsmith_f_op_f32(ceil(arg_0.a)), ~countOneBits(arg_0.b), -36384i, func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1109f, global3.a, arg_0.a) * vec3<f32>(arg_0.a, 1320f, global3.a))), 1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-914f, arg_0.a, false)) + _wgslsmith_f_op_f32(floor(arg_0.a))) * -699f)), vec3<bool>(_wgslsmith_f_op_f32(-941f * arg_0.a) < _wgslsmith_f_op_f32(-global3.a), all(vec4<bool>(any(var_0.wy), !arg_2, all(vec3<bool>(arg_2, var_0.x, false)), var_0.x && true)), var_0.x));
    let var_2 = _wgslsmith_div_u32(0u << (_wgslsmith_mult_u32(u_input.d.x << (1u % 32u), ~0u) % 32u), 0u & ~_wgslsmith_add_u32(global3.b.x, var_1.e));
    var var_3 = var_1;
    var var_4 = vec3<i32>(func_4(global3.c <= -arg_1, (firstTrailingBit(-1i) << (global3.b.x % 32u)) >> ((_wgslsmith_sub_u32(var_2, u_input.b) & abs(4294967295u)) % 32u), Struct_1(-702f, _wgslsmith_add_vec3_u32(arg_0.b, vec3<u32>(0u, global3.b.x, var_2)), _wgslsmith_add_i32(arg_0.c | u_input.c.x, ~arg_0.d), countOneBits(var_3.d) & global3.d, arg_0.e), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.a))), vec3<u32>(4294967295u, 14818u, ~var_2), max(-2147483647i, u_input.c.x | var_1.c), _wgslsmith_mod_i32(_wgslsmith_sub_i32(1i, 0i), -1i), var_1.b.x)).x, _wgslsmith_div_i32(arg_0.c, func_2(var_1.b, reverseBits(arg_1), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a, arg_0.a, arg_0.a)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(-1451f, global3.a, arg_0.a, var_3.a), vec4<f32>(var_3.a, arg_0.a, var_1.a, global3.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, 1000f, arg_0.a, arg_0.a)))))), max(-var_1.d, u_input.c.x));
    return select(var_0.wx, select(!select(!vec2<bool>(var_0.x, arg_2), var_0.yy, vec2<bool>(true, true)), !(!(!vec2<bool>(arg_2, false))), any(select(var_0.wyx, select(var_0.yxy, vec3<bool>(var_0.x, arg_2, arg_2), false), false))), select(!any(!var_0.yxx), 49989u > global3.e, true));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 24>();
    global0 = array<vec4<f32>, 16>();
    global0 = array<vec4<f32>, 16>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1302f, _wgslsmith_f_op_f32(step(1562f, global3.a)), _wgslsmith_f_op_f32(min(263f, global3.a))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(select(global1[_wgslsmith_index_u32(countOneBits(min(_wgslsmith_dot_vec3_u32(vec3<u32>(33339u, 0u, 0u) ^ vec3<u32>(u_input.d.x, u_input.b, 1u), abs(u_input.d.wxw)), ~(~0u))), 15u)], _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-1075f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a)), global3.a)), !select(vec2<bool>(false, -2147483647i < u_input.a.x), !func_1(Struct_1(1468f, vec3<u32>(u_input.b, global3.e, 36159u), 0i, -1i, 1u), 2147483647i, false), select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, true), func_1(global2[_wgslsmith_index_u32(u_input.d.x, 24u)], u_input.a.x, true)))));
    var_1 = vec2<f32>(_wgslsmith_div_f32(var_1.x, 1000f), _wgslsmith_f_op_f32(f32(-1f) * -896f));
    var var_2 = global3.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(~(~4294967295u), 15u)] + var_0.yx), u_input.c.wx, abs(u_input.a ^ u_input.c.wx), u_input.b);
}

