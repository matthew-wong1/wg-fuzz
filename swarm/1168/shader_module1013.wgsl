struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 1> = array<i32, 1>(-27028i);

var<private> global1: array<bool, 3>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec4<i32>) -> f32 {
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1957f - arg_0.d), arg_0.d));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global1 = array<bool, 3>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_0, vec2<bool>(false, arg_0.e), vec4<i32>(global0[_wgslsmith_index_u32(arg_0.b, 1u)], u_input.c, global0[_wgslsmith_index_u32(0u, 1u)], 1i)))), _wgslsmith_f_op_f32(abs(914f))) * 1092f), 3976u ^ countOneBits(arg_0.b), 18511i, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(arg_0.d)))) + arg_0.d))), arg_0.e);
    var var_1 = arg_0;
    var var_2 = _wgslsmith_dot_vec4_i32(max(max(_wgslsmith_sub_vec4_i32(-vec4<i32>(-40066i, var_1.c, global0[_wgslsmith_index_u32(4294967295u, 1u)], u_input.c), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, 2147483647i, u_input.c, u_input.c), vec4<i32>(arg_0.c, 16317i, global0[_wgslsmith_index_u32(arg_0.b, 1u)], 0i))), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, 0i, -19769i, arg_0.c), firstTrailingBit(vec4<i32>(17471i, arg_0.c, -1i, -38237i)))), min(abs(vec4<i32>(global0[_wgslsmith_index_u32(24329u, 1u)], u_input.c, 0i, u_input.c)), countOneBits(vec4<i32>(1i, u_input.c, -1i, 2147483647i)))), firstTrailingBit(vec4<i32>(33344i, u_input.c & -17057i, _wgslsmith_div_i32(i32(-1i) * -10057i, global0[_wgslsmith_index_u32(4294967295u, 1u)]), ~(-global0[_wgslsmith_index_u32(var_0.b, 1u)]))));
    global1 = array<bool, 3>();
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(838f * var_0.d)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2217f - -340f))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(var_0.d))))), max(_wgslsmith_dot_vec3_u32(firstTrailingBit(_wgslsmith_mod_vec3_u32(u_input.b, u_input.b)), firstLeadingBit(u_input.a)), _wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.b.yx >> (u_input.a.yx % vec2<u32>(32u))), select(u_input.b.yy, select(vec2<u32>(4294967295u, var_1.b), vec2<u32>(18388u, 20729u), vec2<bool>(var_1.e, var_1.e)), vec2<bool>(false, false)))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.b.zz), reverseBits(vec2<u32>(1485u, u_input.a.x))), 0u), 1u)], -642f, all(select(select(select(vec2<bool>(var_0.e, false), vec2<bool>(var_1.e, true), arg_0.e), vec2<bool>(var_1.e, global1[_wgslsmith_index_u32(var_0.b, 3u)]), !var_1.e), !vec2<bool>(arg_0.e, true), (var_0.a > arg_0.d) | select(false, arg_0.e, global1[_wgslsmith_index_u32(74075u, 3u)]))));
}

fn func_1(arg_0: Struct_1) -> u32 {
    var var_0 = func_2(arg_0);
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d, arg_0.a)) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(702f, -448f)))) - vec2<f32>(_wgslsmith_f_op_f32(abs(679f)), _wgslsmith_f_op_f32(-var_0.a))), vec2<f32>(_wgslsmith_f_op_f32(step(589f, 307f)), _wgslsmith_f_op_f32(f32(-1f) * -858f)), -1216f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d * arg_0.d)))), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.a, -783f, false))), _wgslsmith_f_op_f32(-1460f - var_0.a))), _wgslsmith_f_op_f32(-var_0.d)), select(!vec2<bool>(true, var_0.e), select(vec2<bool>(any(vec2<bool>(var_0.e, global1[_wgslsmith_index_u32(41770u, 3u)])), false), !vec2<bool>(global1[_wgslsmith_index_u32(7649u, 3u)], false), all(vec4<bool>(var_0.e, global1[_wgslsmith_index_u32(arg_0.b, 3u)], true, false))), select(select(!vec2<bool>(global1[_wgslsmith_index_u32(1u, 3u)], false), !vec2<bool>(var_0.e, global1[_wgslsmith_index_u32(u_input.d, 3u)]), false), vec2<bool>(var_0.e, !global1[_wgslsmith_index_u32(25159u, 3u)]), vec2<bool>(!global1[_wgslsmith_index_u32(var_0.b, 3u)], arg_0.e)))));
    var_0 = arg_0;
    global1 = array<bool, 3>();
    var var_2 = _wgslsmith_dot_vec3_i32(~_wgslsmith_mult_vec3_i32(max(vec3<i32>(-39369i, var_0.c, 0i) ^ vec3<i32>(var_0.c, -1i, -1i), ~vec3<i32>(0i, 52637i, arg_0.c)), -vec3<i32>(arg_0.c, 2147483647i, 0i) << (u_input.b % vec3<u32>(32u))), _wgslsmith_mult_vec3_i32(~reverseBits(_wgslsmith_div_vec3_i32(vec3<i32>(0i, arg_0.c, var_0.c), vec3<i32>(var_0.c, -1i, 0i))), select(-select(vec3<i32>(global0[_wgslsmith_index_u32(73368u, 1u)], -3577i, arg_0.c), vec3<i32>(-26472i, -28018i, 2147483647i), vec3<bool>(arg_0.e, arg_0.e, global1[_wgslsmith_index_u32(4294967295u, 3u)])), vec3<i32>(var_0.c ^ -32636i, ~u_input.c, _wgslsmith_clamp_i32(-72640i, 24333i, -1i)), true)));
    return ~48519u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(~_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(70077u, 1u), 1u)], min(-40626i, 1i)), 0i, _wgslsmith_div_i32(abs(max(global0[_wgslsmith_index_u32(u_input.b.x, 1u)], global0[_wgslsmith_index_u32(u_input.a.x, 1u)])), max(_wgslsmith_sub_i32(0i, -2147483647i), min(63735i, 1i))), -54638i) << (min(vec4<u32>(u_input.a.x, ~_wgslsmith_mod_u32(u_input.d, u_input.a.x), select(func_1(Struct_1(475f, u_input.d, global0[_wgslsmith_index_u32(u_input.a.x, 1u)], 1352f, true)), ~u_input.d, true), _wgslsmith_div_u32(~u_input.a.x, u_input.a.x)), ~max(~vec4<u32>(4294967295u, 4294967295u, 4294967295u, u_input.a.x), ~vec4<u32>(u_input.a.x, u_input.a.x, 88655u, u_input.a.x))) % vec4<u32>(32u));
    var var_1 = !select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 3u)], !global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 81828u), u_input.b), 3u)]), !(!(!vec2<bool>(global1[_wgslsmith_index_u32(35901u, 3u)], true))), all(vec3<bool>(!global1[_wgslsmith_index_u32(u_input.d, 3u)], global1[_wgslsmith_index_u32(1u, 3u)], false)));
    var var_2 = 2147483647i < -global0[_wgslsmith_index_u32(36608u, 1u)];
    var var_3 = Struct_1(1064f, u_input.b.x, -(~abs(var_0.x) & u_input.c), 1949f, false);
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(225f * -169f), 1204f, _wgslsmith_f_op_f32(func_3(Struct_1(var_3.a, var_3.b, u_input.c, var_3.a, true), vec2<bool>(false, global1[_wgslsmith_index_u32(47954u, 3u)]), vec4<i32>(-1294i, 2147483647i, -2147483647i, -31427i))), 1f))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, var_3.b, 43983u, var_3.b), vec4<u32>(1u, var_3.b, u_input.d, u_input.d))), 101354u, var_3.c, _wgslsmith_div_vec2_i32(var_0.yy, _wgslsmith_div_vec2_i32(countOneBits(~vec2<i32>(u_input.c, -9133i)), _wgslsmith_add_vec2_i32(~vec2<i32>(1i, -27605i), var_0.zw))), ~(~var_3.b) ^ reverseBits(var_3.b));
}

