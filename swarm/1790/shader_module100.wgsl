struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<f32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2>;

var<private> global1: array<vec2<bool>, 23>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = true;
    var var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(1u, reverseBits(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(4294967295u, 0u, 3447u, 0u)), vec4<u32>(1u, 1u, 1u, 1u))), countOneBits(4294967295u), 0u), reverseBits(vec4<u32>(1u, countOneBits(~1u), ~min(1u, 19102u), abs(1u))));
    global0 = array<Struct_1, 2>();
    let var_2 = Struct_2(global0[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(4294967295u, 1u)) >> (countOneBits(abs(~1u)) % 32u), 2u)], ~countOneBits(firstTrailingBit(vec3<u32>(4294967295u, 16346u, 1u))), _wgslsmith_mult_u32(1u, countOneBits(~_wgslsmith_clamp_u32(41558u, 87094u, 8617u))), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 23943u, 4294967295u), ~vec4<u32>(0u, 4294967295u, 32797u, 0u)), reverseBits(1u), ~abs(0u)), select(vec3<u32>(60614u, 82502u, 27312u), abs(vec3<u32>(0u, 44014u, 4294967295u)), !arg_0.a.xxy) | ~(~vec3<u32>(1u, 30477u, 0u))));
    global1 = array<vec2<bool>, 23>();
    return 64233u | _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, countOneBits(var_2.d), 1u), _wgslsmith_clamp_vec3_u32(~var_2.b, ~(var_2.b >> (vec3<u32>(0u, var_2.b.x, 41689u) % vec3<u32>(32u))), ~var_2.b ^ var_2.b));
}

fn func_2() -> Struct_2 {
    global0 = array<Struct_1, 2>();
    var var_0 = global0[_wgslsmith_index_u32(1u, 2u)];
    var var_1 = var_0.b.x;
    var_1 = -15905i;
    var var_2 = global0[_wgslsmith_index_u32(4294967295u, 2u)];
    return Struct_2(Struct_1(vec4<bool>(!(var_2.b.x < var_2.b.x), true, false, true), vec3<i32>(-9125i, abs(reverseBits(var_2.b.x)), _wgslsmith_dot_vec3_i32(~vec3<i32>(-54426i, -2147483647i, -9354i), var_2.b << (vec3<u32>(1u, 1u, 1129u) % vec3<u32>(32u))))), ~vec3<u32>(_wgslsmith_clamp_u32(1u, ~4294967295u, func_3(Struct_1(var_2.a, var_2.b))), ~66614u, 1u), 1u, func_3(Struct_1(var_0.a, -vec3<i32>(2147483647i, var_2.b.x, 7520i))));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: u32, arg_3: vec4<bool>) -> i32 {
    global1 = array<vec2<bool>, 23>();
    global0 = array<Struct_1, 2>();
    var var_0 = vec4<i32>(~(-(~arg_0.a.b.x)), i32(-1i) * -72110i, u_input.a, _wgslsmith_mult_i32(-firstLeadingBit(u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.b.x, -u_input.a, -18311i, abs(-24161i)), firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(-30705i, u_input.a, -1i, arg_0.a.b.x), vec4<i32>(1i, u_input.a, arg_0.a.b.x, 15873i))))));
    var var_1 = Struct_1(!arg_0.a.a, vec3<i32>(min(-1i, u_input.a), func_2().a.b.x, -1i));
    var_1 = arg_0.a;
    return 1i;
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> Struct_2 {
    var var_0 = vec4<bool>(~func_4(func_2(), 25656u, arg_0.c & 0u, !arg_0.a.a) <= 2147483647i, !all(!global1[_wgslsmith_index_u32(countOneBits(10085u), 23u)]), true, !arg_0.a.a.x && (27101u != _wgslsmith_sub_u32(~arg_0.b.x, arg_0.b.x)));
    let var_1 = ~vec4<u32>(~arg_0.d, arg_0.d, abs(_wgslsmith_mult_u32(arg_0.c, arg_0.d)) & (~arg_0.b.x << (arg_0.b.x % 32u)), arg_0.d);
    var_0 = vec4<bool>(true, !arg_0.a.a.x && func_2().a.a.x, false, !select(arg_0.a.a.x, true, arg_0.b.x == var_1.x) & false);
    var var_2 = func_2();
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(1000f)), 1156f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1160f, -1714f)), _wgslsmith_f_op_f32(-757f - _wgslsmith_f_op_f32(f32(-1f) * -915f))))));
    return func_2();
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1) -> bool {
    global1 = array<vec2<bool>, 23>();
    var var_0 = firstLeadingBit(arg_0.a.b);
    var var_1 = 34611u;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_i32(-u_input.a, u_input.a >> (~19129u % 32u));
    let var_1 = select(!select(select(vec3<bool>(false, false, false), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), func_5(func_1(Struct_2(global0[_wgslsmith_index_u32(0u, 2u)], vec3<u32>(121081u, 37893u, 22994u), 73521u, 3383u), var_0), false, func_2().a)), vec3<bool>(true, true, func_5(func_2(), select(true, true, true), global0[_wgslsmith_index_u32(65626u, 2u)])), false);
    global1 = array<vec2<bool>, 23>();
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-1117f, -1000f)))), -685f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2923f, -1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1098f, -1190f)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(389f, 1743f) - vec2<f32>(1011f, -530f)))))));
    let var_3 = func_1(func_2(), u_input.a);
    global1 = array<vec2<bool>, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 49485u, 21135u, var_3.b.x), vec4<u32>(1u, 34609u, var_3.d, var_3.d)), vec4<u32>(var_3.c, var_3.c, var_3.b.x, var_3.d) & vec4<u32>(var_3.c, var_3.c, 15241u, var_3.c))), 390f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(381f, var_2.x, var_2.x), vec3<f32>(-393f, -467f, -1323f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-332f, var_2.x, var_2.x)))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, 2520f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-835f, var_2.x, -1126f))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1142f), _wgslsmith_f_op_f32(trunc(var_2.x)), _wgslsmith_f_op_f32(var_2.x + var_2.x)))), ~(~(~vec4<u32>(var_3.d, 0u, var_3.b.x, 0u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(491f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -658f)))) - _wgslsmith_f_op_f32(ceil(var_2.x))));
}

