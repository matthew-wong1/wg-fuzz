struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<u32>,
    d: vec3<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<u32>(25u, 15657u, 1u, 24044u));

var<private> global1: array<vec3<f32>, 32> = array<vec3<f32>, 32>(vec3<f32>(-1036f, -561f, -859f), vec3<f32>(417f, -314f, -1559f), vec3<f32>(735f, -1447f, 1000f), vec3<f32>(-1486f, -198f, 688f), vec3<f32>(-2153f, -343f, 2121f), vec3<f32>(-601f, 760f, 969f), vec3<f32>(369f, -860f, 1181f), vec3<f32>(-1079f, -297f, 1000f), vec3<f32>(-1634f, 1000f, 219f), vec3<f32>(-108f, -1049f, -1032f), vec3<f32>(-1448f, 744f, 810f), vec3<f32>(-759f, -783f, -1000f), vec3<f32>(1000f, -2355f, 1810f), vec3<f32>(-1792f, -299f, 1000f), vec3<f32>(169f, -587f, -1284f), vec3<f32>(-503f, 636f, -746f), vec3<f32>(1000f, 1336f, 993f), vec3<f32>(1049f, 306f, -1251f), vec3<f32>(-1307f, -1004f, 722f), vec3<f32>(-333f, 638f, 904f), vec3<f32>(-694f, -1522f, 1563f), vec3<f32>(272f, 2014f, -1736f), vec3<f32>(-1785f, 852f, -474f), vec3<f32>(-1986f, -1058f, 1393f), vec3<f32>(-1001f, -146f, 168f), vec3<f32>(-808f, 553f, 468f), vec3<f32>(-2469f, -1457f, 1807f), vec3<f32>(1000f, -2803f, 1176f), vec3<f32>(-3240f, -564f, 246f), vec3<f32>(565f, 125f, -492f), vec3<f32>(-1551f, 593f, -245f), vec3<f32>(-1018f, 385f, -273f));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = _wgslsmith_add_i32(~37548i, u_input.d) ^ u_input.c;
    var var_1 = Struct_2(vec4<u32>(arg_0.c.x, ~max(arg_0.c.x, global0.a.x) ^ (arg_1.c.x >> (~global0.a.x % 32u)), 1u, 52359u));
    var_1 = Struct_2(_wgslsmith_sub_vec4_u32(abs(var_1.a), vec4<u32>(16859u, ~var_1.a.x, _wgslsmith_clamp_u32(1u, _wgslsmith_sub_u32(arg_0.c.x, 0u), ~arg_0.c.x), ~firstTrailingBit(3763u))));
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1721f, 307f, arg_0.a) - vec3<f32>(arg_1.a, 1271f, arg_0.a)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1000f, arg_0.a) + global1[_wgslsmith_index_u32(global0.a.x, 32u)])))), u_input.a);
    let var_3 = _wgslsmith_add_u32(arg_1.c.x, ~(~(~abs(89690u))));
    return !(!arg_1.e.zy);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_3) -> i32 {
    var var_0 = Struct_2(global0.a);
    var_0 = Struct_2(var_0.a);
    global0 = Struct_2(~vec4<u32>(global0.a.x, 0u, global0.a.x & 1u, 78130u));
    var_0 = Struct_2(vec4<u32>(global0.a.x, _wgslsmith_clamp_u32(1u, ~var_0.a.x >> (~arg_0.c.x % 32u), global0.a.x), var_0.a.x, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.a.x, var_0.a.x, 0u), ~var_0.a.yxy)));
    var var_1 = arg_0;
    return arg_0.b;
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> f32 {
    let var_0 = true;
    var var_1 = 1i;
    let var_2 = Struct_1(_wgslsmith_div_f32(531f, _wgslsmith_f_op_f32(1483f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1994f)))), abs(arg_0), vec2<u32>(global0.a.x, _wgslsmith_mult_u32(global0.a.x, ~abs(0u))), !select(select(!vec3<bool>(var_0, false, var_0), !vec3<bool>(true, true, var_0), true), select(select(vec3<bool>(var_0, false, false), vec3<bool>(true, var_0, true), vec3<bool>(false, var_0, var_0)), !vec3<bool>(var_0, var_0, var_0), true), select(var_0, var_0, false)), vec3<bool>(!(false || var_0), var_0 || true, false));
    var var_3 = _wgslsmith_f_op_f32(-891f + -1652f);
    let var_4 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1860f, -750f, -341f)))) * global1[_wgslsmith_index_u32(var_2.c.x, 32u)]) + vec3<f32>(-1000f, _wgslsmith_f_op_f32(step(-936f, -1203f)), _wgslsmith_f_op_f32(var_2.a - 868f))), -arg_0);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * var_4.a.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.a.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-309f)))))));
}

fn func_4(arg_0: vec2<bool>, arg_1: u32, arg_2: vec4<f32>, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2.x, _wgslsmith_f_op_f32(f32(-1f) * -2394f)))), arg_3.x, countOneBits(vec2<u32>(_wgslsmith_mod_u32(57669u, _wgslsmith_mult_u32(4294967295u, global0.a.x)), arg_1)), select(vec3<bool>(true, true, true), select(!select(vec3<bool>(false, true, arg_0.x), vec3<bool>(arg_0.x, true, true), vec3<bool>(arg_0.x, arg_0.x, true)), !select(vec3<bool>(true, true, false), vec3<bool>(true, arg_0.x, true), vec3<bool>(arg_0.x, true, true)), select(select(vec3<bool>(false, arg_0.x, false), vec3<bool>(true, arg_0.x, true), vec3<bool>(arg_0.x, false, arg_0.x)), vec3<bool>(arg_0.x, false, arg_0.x), select(vec3<bool>(true, arg_0.x, true), vec3<bool>(arg_0.x, true, false), false))), vec3<bool>(arg_0.x, reverseBits(1u) < (global0.a.x & global0.a.x), true)), vec3<bool>(arg_0.x, false, true));
    var var_1 = vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.b, u_input.b) & vec4<i32>(arg_3.x, 2937i, arg_3.x, u_input.d), u_input.b), u_input.b), var_0.b);
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, arg_2.x, -107f) * global1[_wgslsmith_index_u32(var_0.c.x, 32u)]))))), i32(-1i) * -56626i);
    global1 = array<vec3<f32>, 32>();
    var_1 = _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(arg_3.xz, u_input.b.xz, u_input.b.wx), reverseBits(vec2<i32>(abs(39771i), _wgslsmith_mult_i32(u_input.a, var_0.b)))), u_input.b.zz >> (global0.a.zy % vec2<u32>(32u)), select(firstLeadingBit(_wgslsmith_div_vec2_i32(abs(arg_3.zx), countOneBits(vec2<i32>(var_1.x, var_2.b)))), -arg_3.yy, any(!select(vec4<bool>(true, arg_0.x, arg_0.x, false), vec4<bool>(arg_0.x, false, false, arg_0.x), vec4<bool>(var_0.d.x, true, var_0.e.x, var_0.d.x)))));
    return Struct_1(_wgslsmith_f_op_f32(arg_2.x - -396f), i32(-1i) * -9012i, vec2<u32>(global0.a.x, ~(~_wgslsmith_clamp_u32(39348u, 0u, 0u))), select(vec3<bool>(true, var_0.e.x, !(var_0.e.x || var_0.e.x)), vec3<bool>(true, arg_0.x, arg_0.x), vec3<bool>(any(var_0.e.xy), func_1(Struct_1(217f, 0i, var_0.c, vec3<bool>(arg_0.x, var_0.e.x, var_0.d.x), var_0.d), Struct_1(var_0.a, var_0.b, vec2<u32>(4294967295u, global0.a.x), var_0.d, vec3<bool>(var_0.e.x, var_0.e.x, false))).x | true, !(!arg_0.x))), vec3<bool>(arg_0.x, !arg_0.x, var_0.e.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2147483647i;
    global0 = Struct_2(countOneBits(global0.a));
    let var_1 = func_4(!select(!func_1(Struct_1(-902f, u_input.c, vec2<u32>(global0.a.x, 1u), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), Struct_1(-782f, -1i, vec2<u32>(global0.a.x, global0.a.x), vec3<bool>(true, true, true), vec3<bool>(true, false, true))), vec2<bool>(true, true), 1i >= func_2(Struct_1(-2014f, u_input.d, vec2<u32>(4294967295u, 59239u), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), Struct_3(global1[_wgslsmith_index_u32(global0.a.x, 32u)], -39252i), Struct_3(vec3<f32>(-805f, -504f, -542f), u_input.b.x))), global0.a.x, vec4<f32>(194f, _wgslsmith_f_op_f32(func_3(_wgslsmith_div_i32(45299i | u_input.d, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -26252i, 1i), vec3<i32>(1i, u_input.a, -21939i))), Struct_2(_wgslsmith_clamp_vec4_u32(global0.a, vec4<u32>(global0.a.x, 4294967295u, 1u, global0.a.x), vec4<u32>(global0.a.x, global0.a.x, global0.a.x, 4294967295u))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2161f) - _wgslsmith_f_op_f32(-902f * 1374f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -238f) + _wgslsmith_f_op_f32(func_3(u_input.a, Struct_2(global0.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-858f + -547f) + -1087f)))), vec3<i32>(_wgslsmith_clamp_i32(firstLeadingBit(_wgslsmith_clamp_i32(26834i, u_input.b.x, -15541i)), max(18149i, func_2(Struct_1(-1659f, u_input.d, vec2<u32>(global0.a.x, 4294967295u), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), Struct_3(global1[_wgslsmith_index_u32(global0.a.x, 32u)], 8311i), Struct_3(global1[_wgslsmith_index_u32(4619u, 32u)], u_input.a))), u_input.b.x), ~u_input.b.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.d), vec2<i32>(u_input.d, -70782i)), -18246i) << (_wgslsmith_dot_vec3_u32(vec3<u32>(global0.a.x, global0.a.x, 10229u), vec3<u32>(global0.a.x, 76354u, global0.a.x)) % 32u)));
    global0 = Struct_2(~(vec4<u32>(_wgslsmith_dot_vec4_u32(global0.a, vec4<u32>(var_1.c.x, 0u, global0.a.x, 0u)), _wgslsmith_div_u32(var_1.c.x, var_1.c.x), global0.a.x, ~var_1.c.x) >> (vec4<u32>(_wgslsmith_mod_u32(var_1.c.x, 8944u), _wgslsmith_mod_u32(0u, var_1.c.x), ~global0.a.x, min(1u, global0.a.x)) % vec4<u32>(32u))));
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_1.a)), _wgslsmith_f_op_f32(sign(1097f)), all(!var_1.e.yx))))));
    global1 = array<vec3<f32>, 32>();
    var var_3 = -select(vec3<i32>(var_1.b, _wgslsmith_mult_i32(u_input.c, var_1.b) | abs(1217i), _wgslsmith_mod_i32(-1i << (1u % 32u), 1i)), -(vec3<i32>(-1i) * -u_input.b.yzw), all(select(var_1.d, var_1.e, var_1.e)));
    global0 = Struct_2(_wgslsmith_div_vec4_u32(global0.a, global0.a));
    let var_4 = vec2<i32>(~var_3.x, abs(-((var_1.b | 2147483647i) >> (global0.a.x % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(-35142i, Struct_2(vec4<u32>(var_1.c.x, var_1.c.x, var_1.c.x, var_1.c.x)))), var_1.a)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -131f))), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -295f)))));
}

