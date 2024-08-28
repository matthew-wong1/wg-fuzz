struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23>;

var<private> global1: vec4<u32>;

var<private> global2: f32 = 644f;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2() -> u32 {
    global2 = -546f;
    global0 = array<Struct_2, 23>();
    global1 = ~countOneBits(((vec4<u32>(99565u, u_input.a.x, global1.x, global1.x) ^ vec4<u32>(4294967295u, 1u, global1.x, 4294967295u)) | ~vec4<u32>(0u, u_input.a.x, 1u, global1.x)) << (_wgslsmith_add_vec4_u32(vec4<u32>(12031u, 17235u, global1.x, 47883u) ^ vec4<u32>(u_input.a.x, 35308u, global1.x, global1.x), _wgslsmith_mod_vec4_u32(vec4<u32>(global1.x, global1.x, 54479u, 4294967295u), vec4<u32>(1u, u_input.a.x, 4294967295u, global1.x))) % vec4<u32>(32u)));
    var var_0 = global0[_wgslsmith_index_u32(global1.x, 23u)];
    global0 = array<Struct_2, 23>();
    return _wgslsmith_dot_vec2_u32(select(vec2<u32>(~16500u, _wgslsmith_mult_u32(global1.x, select(global1.x, u_input.a.x, true))), u_input.a.xz, vec2<bool>(true, true)), _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(~u_input.a.x, ~global1.x), vec2<u32>(~var_0.a, global1.x)), _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 0u), global1.zx, var_0.b.b), countOneBits(abs(global1.yw)))));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: vec2<u32>, arg_3: f32) -> vec3<bool> {
    let var_0 = 1u;
    global1 = _wgslsmith_add_vec4_u32(select(abs(~(vec4<u32>(u_input.a.x, 7170u, 0u, 6664u) << (vec4<u32>(0u, arg_0, global1.x, arg_2.x) % vec4<u32>(32u)))), vec4<u32>(~abs(564u), _wgslsmith_dot_vec4_u32(vec4<u32>(18907u, 28687u, var_0, var_0), vec4<u32>(4294967295u, global1.x, global1.x, 33352u)), arg_0 << (global1.x % 32u), ~_wgslsmith_mult_u32(global1.x, u_input.a.x)), true), vec4<u32>(_wgslsmith_sub_u32(~97013u, 78891u), ~_wgslsmith_dot_vec3_u32(global1.xyy, u_input.a), global1.x, ~firstTrailingBit(global1.x)) << (vec4<u32>(1u, var_0, _wgslsmith_dot_vec3_u32(countOneBits(u_input.a), u_input.a), arg_2.x) % vec4<u32>(32u)));
    let var_1 = Struct_2(~(1u | u_input.a.x), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, arg_3, -192f, arg_3))), _wgslsmith_clamp_vec2_u32(global1.xw, ~arg_2 | abs(vec2<u32>(arg_0, arg_2.x)), ~u_input.a.yx), reverseBits(-u_input.b), min(_wgslsmith_mult_u32(1u << (arg_0 % 32u), global1.x), 15254u), 80187u));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1.b.a.x), arg_3, arg_3));
    global1 = countOneBits(_wgslsmith_mod_vec4_u32(firstLeadingBit(~vec4<u32>(u_input.a.x, 62102u, 23164u, 54586u)), vec4<u32>(0u, var_1.b.e, arg_2.x, var_1.b.d))) ^ ~(~_wgslsmith_mult_vec4_u32(~vec4<u32>(arg_0, 22295u, 1u, 4294967295u), ~vec4<u32>(global1.x, 0u, global1.x, var_1.b.e)));
    return vec3<bool>(true, true, true);
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: bool) -> u32 {
    global0 = array<Struct_2, 23>();
    global1 = vec4<u32>(21496u, arg_1.b.x, ~_wgslsmith_sub_u32(~func_2(), u_input.a.x), select(6555u, global1.x, !(!arg_3)));
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(sign(-1424f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) * -972f), _wgslsmith_f_op_f32(min(arg_1.a.x, _wgslsmith_f_op_f32(min(arg_2.x, 147f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.a * arg_1.a)), arg_1.a, false)))), arg_1.b, _wgslsmith_sub_i32(_wgslsmith_div_i32(arg_1.c, abs(countOneBits(2147483647i))), -2147483647i << (0u % 32u)), select(135214u, u_input.a.x, arg_3), firstTrailingBit(~(~1u)));
    let var_1 = !(true | arg_3);
    var var_2 = reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_add_i32(-25380i, var_0.c), ~(-1i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, arg_1.c, -67772i, arg_1.c), vec4<i32>(arg_1.c, u_input.b, -1i, u_input.b))), vec3<i32>(1i, 1i, -29713i)) << (select(_wgslsmith_mod_vec3_u32(u_input.a, arg_0 ^ u_input.a), reverseBits(vec3<u32>(u_input.a.x, 51995u, 4294967295u)), func_3(11274u, -u_input.b, global1.yw, -2043f)) % vec3<u32>(32u)));
    return 58475u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 23>();
    global1 = vec4<u32>(46307u ^ func_1(vec3<u32>(u_input.a.x, global1.x, 1u), Struct_1(vec4<f32>(-662f, 216f, 2376f, 877f), vec2<u32>(2477u, 52416u), u_input.b, u_input.a.x, 53165u), _wgslsmith_f_op_vec3_f32(vec3<f32>(-164f, 600f, 3064f) + vec3<f32>(-178f, -1000f, 735f)), true), 7627u, 0u, u_input.a.x) ^ _wgslsmith_mult_vec4_u32(reverseBits(abs(select(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 1u), vec4<u32>(46973u, u_input.a.x, u_input.a.x, 0u), true))), countOneBits(firstLeadingBit(vec4<u32>(4294967295u, 4294967295u, 10350u, global1.x)) >> ((vec4<u32>(global1.x, u_input.a.x, 21141u, global1.x) ^ vec4<u32>(1u, 1u, u_input.a.x, global1.x)) % vec4<u32>(32u))));
    global1 = _wgslsmith_mod_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, global1.x, 1u, 16177u), vec4<u32>(global1.x, 1u, u_input.a.x, 14409u)), min(firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(25849u, global1.x, 1u, 41465u), vec4<u32>(u_input.a.x, global1.x, 0u, u_input.a.x), vec4<u32>(u_input.a.x, global1.x, global1.x, u_input.a.x))), vec4<u32>(20221u, global1.x, 0u, global1.x) << (select(vec4<u32>(1u, 0u, u_input.a.x, global1.x), vec4<u32>(1u, global1.x, global1.x, u_input.a.x), true) % vec4<u32>(32u)))) | reverseBits(select(~select(vec4<u32>(4294967295u, 14183u, 1u, u_input.a.x), vec4<u32>(45380u, 1u, global1.x, u_input.a.x), true), ~(vec4<u32>(4294967295u, u_input.a.x, global1.x, u_input.a.x) >> (vec4<u32>(u_input.a.x, 412u, 4294967295u, global1.x) % vec4<u32>(32u))), select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), false), vec4<bool>(true, true, true, true))));
    var var_0 = func_1(global1.wwz, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(680f, -157f, 566f, 351f) * vec4<f32>(-1577f, -963f, -373f, 437f)) - vec4<f32>(-208f, -1217f, -1743f, -1345f))), ~u_input.a.yy, 1i, ~109424u, abs(~(~6456u))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(220f, -785f, -429f)) + _wgslsmith_div_vec3_f32(vec3<f32>(772f, 601f, -1000f), vec3<f32>(-422f, 1208f, 819f))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(433f, 2312f, 422f)))))), vec3<f32>(_wgslsmith_f_op_f32(max(-509f, 452f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-463f, 1000f) * _wgslsmith_div_f32(-1291f, 139f)), 531f))), all(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), true)));
    let var_1 = true;
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1476f, var_2.x, var_2.x, -1002f)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-454f, -906f, -1000f, var_2.x)))))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(744f - var_2.x), _wgslsmith_f_op_f32(var_2.x * -1214f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec4<f32>(_wgslsmith_f_op_f32(var_2.x - var_2.x), _wgslsmith_f_op_f32(sign(392f)), -617f, _wgslsmith_f_op_f32(var_2.x + 396f))))), (abs(vec2<u32>(u_input.a.x, 18702u)) << (_wgslsmith_add_vec2_u32(~global1.zx, max(vec2<u32>(u_input.a.x, 1u), vec2<u32>(18946u, 3583u))) % vec2<u32>(32u))) ^ (_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), ~vec2<u32>(u_input.a.x, 18694u)) >> (_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(global1.x, global1.x), global1.yz), max(vec2<u32>(global1.x, global1.x), global1.ww)) % vec2<u32>(32u))), 31709i, _wgslsmith_add_u32(~(~firstTrailingBit(u_input.a.x)), 6913u), _wgslsmith_dot_vec3_u32(min(~(~vec3<u32>(15747u, 1u, u_input.a.x)), ~vec3<u32>(35225u, u_input.a.x, 0u) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 34597u), global1.wzx)), min(countOneBits(vec3<u32>(0u, 1u, 0u)), u_input.a << (_wgslsmith_mult_vec3_u32(global1.xyw, vec3<u32>(32125u, u_input.a.x, global1.x)) % vec3<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.zy);
}

