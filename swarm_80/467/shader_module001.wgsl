struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: u32,
    e: vec4<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 21>;

var<private> global1: array<u32, 9>;

var<private> global2: array<vec2<i32>, 25>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: i32, arg_3: Struct_1) -> i32 {
    var var_0 = ~vec4<u32>(1u, 33885u, abs(select(arg_3.c, 4294967295u, false)), arg_1.b.x) >> (~_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(24531u, 4294967295u, global1[_wgslsmith_index_u32(arg_1.b.x, 9u)], 4294967295u) | arg_1.b, countOneBits(arg_1.b), arg_1.b), ~reverseBits(arg_1.b)) % vec4<u32>(32u));
    global1 = array<u32, 9>();
    let var_1 = arg_0.zxy;
    global1 = array<u32, 9>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), var_1.x) + arg_1.a));
    return _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.a.x, 24954i, -794i, u_input.a.x), min(vec4<i32>(-2147483647i, -34709i, arg_3.a.x, 4891i), vec4<i32>(2147483647i, 0i, 12651i, 0i))), -select(vec4<i32>(arg_2, 1i, u_input.a.x, 29611i), u_input.a, vec4<bool>(true, true, true, false))), arg_3.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(firstTrailingBit(-1i), select(1i, -2147483647i, false), _wgslsmith_mult_i32(-2147483647i, arg_2)), _wgslsmith_mod_vec3_i32(~u_input.a.ywx, max(vec3<i32>(-1i, 16126i, -2147483647i), vec3<i32>(51183i, arg_3.a.x, arg_3.a.x)))), 2147483647i), vec4<i32>(_wgslsmith_mult_i32(firstLeadingBit(-1i), 1i) << (arg_3.b % 32u), _wgslsmith_clamp_i32(abs(-15941i), max(-2147483647i, -2147483647i), 19164i), 2147483647i, ~(firstTrailingBit(0i) & 0i)));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec2<i32>, arg_3: bool) -> vec3<bool> {
    var var_0 = -2147483647i;
    let var_1 = Struct_2(arg_0.a, func_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1483f, -602f, 140f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1141f, 1167f, -433f, 1639f) - vec4<f32>(-656f, 313f, -873f, -1000f)))), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -101f), _wgslsmith_add_vec4_u32(~vec4<u32>(arg_0.d, global1[_wgslsmith_index_u32(0u, 9u)], 0u, arg_0.a.d), ~vec4<u32>(58144u, 1u, 0u, 6197u))), -66775i, arg_0.a), (i32(-1i) * -11115i) >= u_input.a.x, arg_0.a.b, -u_input.a);
    global0 = array<vec3<bool>, 21>();
    let var_2 = Struct_1(vec2<i32>(-28699i ^ _wgslsmith_clamp_i32(arg_2.x >> (arg_0.a.d % 32u), 1i, u_input.a.x), ~(i32(-1i) * -68819i) << (global1[_wgslsmith_index_u32(countOneBits(reverseBits(global1[_wgslsmith_index_u32(4294967295u, 9u)])), 9u)] % 32u)), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(1u, ~var_1.a.c, 4950u), _wgslsmith_mod_u32(25076u, firstTrailingBit(arg_0.a.c))), global1[_wgslsmith_index_u32(var_1.a.d, 9u)], ~(0u | _wgslsmith_dot_vec4_u32(vec4<u32>(24335u, var_1.d, 43024u, var_1.d), vec4<u32>(0u, arg_0.d, arg_0.a.c, 15975u)))), ~_wgslsmith_dot_vec4_u32(select(_wgslsmith_sub_vec4_u32(vec4<u32>(43662u, global1[_wgslsmith_index_u32(56924u, 9u)], var_1.d, var_1.d), vec4<u32>(arg_0.a.c, arg_0.a.d, 56763u, 0u)), ~vec4<u32>(var_1.a.d, 9090u, 4294967295u, 44282u), vec4<bool>(true, arg_0.c, var_1.c, false)), _wgslsmith_mult_vec4_u32(vec4<u32>(54253u, var_1.a.d, 50641u, global1[_wgslsmith_index_u32(4294967295u, 9u)]), vec4<u32>(4294967295u, arg_0.a.b, 1u, 4294967295u)) & ~vec4<u32>(global1[_wgslsmith_index_u32(arg_0.a.b, 9u)], 30613u, 1u, 0u)), 14397u);
    var var_3 = _wgslsmith_dot_vec2_u32(vec2<u32>(select(~var_2.c >> (var_2.d % 32u), 0u, any(select(arg_1.zw, arg_1.ww, arg_1.zy))), abs(~28883u)), ~(~max(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, var_1.a.b), vec2<u32>(18652u, arg_0.a.c)), ~vec2<u32>(global1[_wgslsmith_index_u32(arg_0.d, 9u)], 1u))));
    return vec3<bool>(!((any(arg_1.zx) & true) && true), arg_3 || arg_1.x, false);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec3<bool>) -> vec2<u32> {
    global2 = array<vec2<i32>, 25>();
    let var_0 = Struct_3(_wgslsmith_f_op_f32(floor(-400f)), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(~global1[_wgslsmith_index_u32(arg_0.x, 9u)], 1u), ~_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(arg_1.c, 9u)], 4294967295u), ~arg_1.d, _wgslsmith_dot_vec3_u32(arg_0.wzy, vec3<u32>(arg_0.x, arg_0.x, arg_1.d))), arg_0));
    global0 = array<vec3<bool>, 21>();
    var var_1 = vec3<i32>(arg_1.a.x, arg_1.a.x, 1i & arg_1.a.x);
    let var_2 = arg_2.x;
    return vec2<u32>(33915u, _wgslsmith_dot_vec2_u32(~(~reverseBits(arg_0.zx)), _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(1u, 23828u), _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(var_0.b.x, 9u)]), var_0.b.zw)), var_0.b.zx, _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.x, var_0.b.x), var_0.b.wy))));
}

fn func_5(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: vec2<f32>) -> vec3<i32> {
    let var_0 = -vec4<i32>(~(u_input.a.x & firstLeadingBit(u_input.a.x)), u_input.a.x, u_input.a.x, firstTrailingBit(_wgslsmith_clamp_i32(0i, ~u_input.a.x, 2147483647i)));
    let var_1 = arg_1.x;
    let var_2 = Struct_2(Struct_1(vec2<i32>(var_0.x, _wgslsmith_sub_i32(countOneBits(var_0.x), var_0.x)), 1u, global1[_wgslsmith_index_u32(var_1 ^ arg_1.x, 9u)], ~_wgslsmith_mod_u32(~6446u, arg_1.x)), _wgslsmith_sub_i32(reverseBits(var_0.x), -39473i), true, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(10244u, 1u, var_1, global1[_wgslsmith_index_u32(34236u, 9u)]), vec4<u32>(73050u, global1[_wgslsmith_index_u32(var_1, 9u)], 3546u, var_1)), vec4<u32>(global1[_wgslsmith_index_u32(var_1, 9u)], 30001u, 0u, global1[_wgslsmith_index_u32(var_1, 9u)]), _wgslsmith_mod_vec4_u32(vec4<u32>(var_1, var_1, arg_1.x, var_1), vec4<u32>(0u, 60538u, 46366u, global1[_wgslsmith_index_u32(4294967295u, 9u)]))), _wgslsmith_clamp_vec4_u32(select(vec4<u32>(28479u, global1[_wgslsmith_index_u32(6189u, 9u)], arg_1.x, arg_1.x), vec4<u32>(var_1, arg_1.x, 32478u, 4161u), vec4<bool>(false, true, false, true)), vec4<u32>(1u, arg_1.x, 0u, 1788u), _wgslsmith_mod_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(var_1, 9u)], 29810u, arg_1.x, arg_1.x), vec4<u32>(var_1, 1u, 66972u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1, 9u)], 9u)])))), 1u, min(min(27545u, var_1) << (countOneBits(global1[_wgslsmith_index_u32(0u, 9u)]) % 32u), ~(arg_1.x & global1[_wgslsmith_index_u32(37360u, 9u)]))), vec4<i32>(~u_input.a.x, u_input.a.x, u_input.a.x, 19891i));
    let var_3 = var_2;
    global2 = array<vec2<i32>, 25>();
    return reverseBits(select(abs(var_0.xyz & vec3<i32>(var_2.a.a.x, 0i, var_2.e.x)), ~var_0.wxy, !(_wgslsmith_dot_vec4_i32(u_input.a, var_3.e) < var_2.b)));
}

fn func_1(arg_0: bool) -> u32 {
    let var_0 = -599f;
    let var_1 = u_input.a.zzw | func_5(vec2<f32>(_wgslsmith_f_op_f32(-var_0), var_0), ~func_4(~vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 9u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 9u)], 9u)], 9u)], 9u)], global1[_wgslsmith_index_u32(22437u, 9u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 9u)], 9u)]), Struct_1(u_input.a.zy, 31611u, 33178u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 9u)], 9u)], 9u)]), _wgslsmith_f_op_vec3_f32(vec3<f32>(-297f, 565f, 1461f) * vec3<f32>(999f, var_0, var_0)), func_2(Struct_2(Struct_1(u_input.a.zx, global1[_wgslsmith_index_u32(4294967295u, 9u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(98851u, 9u)], 9u)], 9u)], global1[_wgslsmith_index_u32(4294967295u, 9u)]), 1i, arg_0, 12412u, vec4<i32>(u_input.a.x, -1i, -2147483647i, u_input.a.x)), vec4<bool>(arg_0, arg_0, arg_0, true), vec2<i32>(0i, u_input.a.x), false)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0, 241f))));
    global1 = array<u32, 9>();
    var var_2 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0)) - _wgslsmith_f_op_f32(max(1526f, var_0)))), var_0, 643f)));
    let var_3 = vec2<bool>(true, false);
    return 9501u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(select(u_input.a.xw, vec2<i32>(u_input.a.x, u_input.a.x), vec2<bool>(true, true)), global1[_wgslsmith_index_u32(~(~32686u & _wgslsmith_add_u32(106572u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 9u)])), 9u)], global1[_wgslsmith_index_u32(1u, 9u)], ~(_wgslsmith_mod_u32(15731u, 40810u) << (1u % 32u))), ~u_input.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1736f - -863f))))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2079f)))), 78985u, u_input.a);
    let var_1 = var_0;
    global1 = array<u32, 9>();
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1301f * 2031f), _wgslsmith_div_f32(-1602f, -1504f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -991f)))))));
    global1 = array<u32, 9>();
    global1 = array<u32, 9>();
    let var_3 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2))))) * -420f), _wgslsmith_clamp_vec4_u32(vec4<u32>(~func_1(var_1.c), 4294967295u, ~max(var_1.a.d, 55180u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, global1[_wgslsmith_index_u32(var_0.a.c, 9u)]), vec2<u32>(var_0.d, global1[_wgslsmith_index_u32(var_0.d, 9u)])) & func_4(vec4<u32>(4294967295u, 82165u, var_1.a.b, 7836u), var_1.a, vec3<f32>(671f, var_2, var_2), vec3<bool>(var_0.c, var_0.c, false)).x), _wgslsmith_add_vec4_u32(firstTrailingBit(~vec4<u32>(var_0.a.c, 2785u, var_0.a.c, 1u)), select(select(vec4<u32>(4294967295u, var_0.d, global1[_wgslsmith_index_u32(1u, 9u)], var_0.a.d), vec4<u32>(var_1.a.b, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(26375u, 9u)], 9u)], 28750u, var_0.a.b), vec4<bool>(false, var_1.c, var_1.c, var_0.c)), vec4<u32>(33332u, var_1.d, global1[_wgslsmith_index_u32(var_0.a.b, 9u)], var_0.a.b) ^ vec4<u32>(1u, global1[_wgslsmith_index_u32(var_1.d, 9u)], 19232u, global1[_wgslsmith_index_u32(4294967295u, 9u)]), var_0.c)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(75613u, 9u)], 1u, 4294967295u, var_0.d), vec4<u32>(var_1.d, global1[_wgslsmith_index_u32(22636u, 9u)], var_1.d, 131629u)) >> ((_wgslsmith_mult_vec4_u32(vec4<u32>(0u, var_0.d, 4294967295u, var_1.a.d), vec4<u32>(var_0.a.b, 4294967295u, 0u, global1[_wgslsmith_index_u32(4294967295u, 9u)])) & select(vec4<u32>(1u, global1[_wgslsmith_index_u32(0u, 9u)], 0u, 0u), vec4<u32>(var_1.a.d, var_0.a.b, 77029u, var_1.a.b), vec4<bool>(var_1.c, true, var_1.c, var_1.c))) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b);
}

