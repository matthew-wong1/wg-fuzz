struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 17>;

var<private> global1: array<f32, 3>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_2) -> vec3<f32> {
    var var_0 = Struct_2(Struct_1(!select(select(vec2<bool>(arg_2.a.a.x, arg_2.a.a.x), vec2<bool>(true, false), vec2<bool>(true, false)), !arg_2.a.a, arg_2.a.a.x | true), ~_wgslsmith_mult_vec4_u32(~arg_2.a.b, vec4<u32>(arg_2.a.b.x, arg_2.b, arg_2.a.b.x, arg_2.a.b.x)), 20129i, countOneBits(min(_wgslsmith_mod_i32(arg_1.x, -41018i), 1i))), _wgslsmith_add_u32(79211u, ~(~_wgslsmith_clamp_u32(102717u, 7386u, 21107u))), arg_0, vec2<i32>(-1i) * -_wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(arg_2.d, vec2<i32>(arg_1.x, 0i)), arg_2.d, arg_1.yx));
    let var_1 = Struct_1(!select(var_0.a.a, vec2<bool>(var_0.a.a.x, false), !any(vec3<bool>(true, var_0.a.a.x, false))), var_0.a.b, 23037i, arg_2.c);
    var_0 = Struct_2(var_1, (u_input.c >> (firstLeadingBit(1u) % 32u)) << (1u % 32u), min(abs(firstLeadingBit(var_0.a.d)) >> (~(~63009u) % 32u), arg_1.x), -arg_1.xx);
    var var_2 = var_1;
    var_2 = Struct_1(!var_2.a, vec4<u32>(_wgslsmith_mod_u32(min(1u, abs(var_2.b.x)), ~(~1u)), arg_2.b, ~51157u, ~_wgslsmith_mult_u32(1u << (var_2.b.x % 32u), 4294967295u >> (arg_2.b % 32u))), -65866i, ~(~(~var_1.d)));
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(2064f - global1[_wgslsmith_index_u32(4294967295u, 3u)]), 1000f, _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(16644u, 3u)])))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-562f, global1[_wgslsmith_index_u32(14246u, 3u)], global1[_wgslsmith_index_u32(0u, 3u)]) + vec3<f32>(global1[_wgslsmith_index_u32(52757u, 3u)], -1922f, global1[_wgslsmith_index_u32(u_input.e, 3u)])))))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c, 3u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(67552u, 3u)] * global1[_wgslsmith_index_u32(u_input.b.x, 3u)]))), global1[_wgslsmith_index_u32(~abs(min(1u, var_1.b.x)), 3u)])));
}

fn func_2(arg_0: vec4<i32>) -> vec4<i32> {
    var var_0 = Struct_2(Struct_1(vec2<bool>(false, true), _wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(u_input.e, u_input.d.x, u_input.e, 39390u)) ^ select(vec4<u32>(77814u, u_input.c, u_input.d.x, 87797u), vec4<u32>(u_input.c, 35800u, u_input.c, u_input.d.x), vec4<bool>(false, false, false, false)), _wgslsmith_div_vec4_u32(vec4<u32>(11092u, u_input.c, 24270u, 39866u), vec4<u32>(u_input.d.x, 53889u, u_input.d.x, u_input.e))), -arg_0.x, reverseBits(arg_0.x) ^ u_input.a), 1u, i32(-1i) * -8260i, arg_0.yy);
    var var_1 = Struct_1(var_0.a.a, vec4<u32>(var_0.b, 4294967295u, 4294967295u, u_input.b.x), 1i, var_0.c);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_mult_i32(var_0.d.x, 1i), _wgslsmith_sub_vec3_i32(-arg_0.zyy, firstTrailingBit(vec3<i32>(-3753i, -2147483647i, 2147483647i))), Struct_2(Struct_1(vec2<bool>(var_1.a.x, var_1.a.x), var_1.b, 26677i, var_0.c), abs(16844u), 27425i, vec2<i32>(var_1.c, var_1.c) >> (vec2<u32>(u_input.b.x, 0u) % vec2<u32>(32u))))), vec3<f32>(global1[_wgslsmith_index_u32(var_0.a.b.x | 38408u, 3u)], _wgslsmith_f_op_f32(sign(806f)), global1[_wgslsmith_index_u32(~min(u_input.b.x, 0u), 3u)])));
    global0 = array<Struct_2, 17>();
    var var_3 = global0[_wgslsmith_index_u32(var_1.b.x, 17u)];
    return vec4<i32>(1i, 2147483647i, -1i, ~2147483647i);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec2<u32>, arg_3: vec4<u32>) -> u32 {
    let var_0 = ~(~_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_2, ~vec2<u32>(arg_2.x, arg_2.x), u_input.d.xx), ~vec2<u32>(44172u, u_input.d.x)));
    var var_1 = _wgslsmith_mod_i32(-_wgslsmith_mod_i32(arg_0.d, u_input.a), min(-1i, arg_0.c)) >= ~u_input.a;
    let var_2 = _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, i32(-1i) * -21273i, 0i, -2147483647i), ~(-vec4<i32>(-88496i, u_input.a, 1i, u_input.a)), vec4<i32>(-abs(arg_0.c), -2147483647i, -2147483647i, 28112i)) & func_2(-reverseBits(vec4<i32>(arg_0.d, 45562i, arg_0.c, -2147483647i)));
    global0 = array<Struct_2, 17>();
    var_1 = arg_1.x;
    return 2497u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 3>();
    global0 = array<Struct_2, 17>();
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1053f, -811f, _wgslsmith_f_op_f32(-1308f + _wgslsmith_f_op_f32(trunc(-1403f))), _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(u_input.d.x ^ u_input.b.x, 3u)])))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 3u)], -1901f, -664f, global1[_wgslsmith_index_u32(1612u, 3u)]), vec4<f32>(-1785f, 978f, global1[_wgslsmith_index_u32(u_input.e, 3u)], global1[_wgslsmith_index_u32(u_input.b.x, 3u)]), vec4<bool>(false, true, true, false)))) * vec4<f32>(573f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.e, 3u)]), global1[_wgslsmith_index_u32(func_1(Struct_1(vec2<bool>(true, true), vec4<u32>(u_input.e, u_input.c, u_input.e, u_input.c), -10119i, u_input.a), vec4<bool>(true, true, true, true), vec2<u32>(0u, u_input.c), vec4<u32>(18485u, u_input.c, u_input.b.x, 49404u)), 3u)], global1[_wgslsmith_index_u32(~0u, 3u)]))));
    let var_1 = 1i;
    var var_2 = _wgslsmith_dot_vec3_i32(countOneBits(max(vec3<i32>(var_1, min(u_input.a, 2147483647i), -1i), -firstLeadingBit(vec3<i32>(var_1, -1773i, var_1)))), abs(_wgslsmith_add_vec3_i32(~reverseBits(vec3<i32>(-1i, 1i, var_1)), ~_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, var_1, 2147483647i), vec3<i32>(var_1, -2147483647i, var_1)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(u_input.e, 3u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, -586f)) * _wgslsmith_f_op_f32(197f + var_0.x)))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-316f, global1[_wgslsmith_index_u32(abs(9323u), 3u)])))), u_input.d, 31021i);
}

