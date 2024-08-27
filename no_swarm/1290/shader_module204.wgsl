struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: i32,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 3>;

var<private> global1: vec2<u32> = vec2<u32>(396u, 55757u);

var<private> global2: f32;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: u32, arg_1: vec4<bool>) -> f32 {
    return global0[_wgslsmith_index_u32(1u, 3u)];
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_3) -> f32 {
    global1 = (vec2<u32>(reverseBits(18152u << (0u % 32u)), global1.x) ^ max(firstTrailingBit(vec2<u32>(global1.x, 18074u)) << ((vec2<u32>(7452u, 3163u) << (vec2<u32>(u_input.b, u_input.c) % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, 58335u), countOneBits(vec2<u32>(5014u, 33010u)), ~vec2<u32>(16720u, 0u)))) & vec2<u32>(select(1u, global1.x, !(!arg_3.c)), 1u);
    global0 = array<f32, 3>();
    global2 = -690f;
    let var_0 = _wgslsmith_mod_vec3_u32(min(reverseBits(~_wgslsmith_div_vec3_u32(vec3<u32>(global1.x, u_input.c, u_input.d), vec3<u32>(7726u, 1u, global1.x))), countOneBits(vec3<u32>(u_input.d, 37353u, 23557u)) | ~vec3<u32>(global1.x, 12246u, 30336u)), vec3<u32>(abs(u_input.c), global1.x, _wgslsmith_add_u32(global1.x >> (global1.x % 32u), ~1u) | ~(~u_input.d)));
    var var_1 = reverseBits(_wgslsmith_div_vec3_i32((vec3<i32>(4651i, -1i, arg_1.a.x) & abs(vec3<i32>(2147483647i, 28342i, -1i))) & -_wgslsmith_div_vec3_i32(vec3<i32>(u_input.e, 18980i, 0i), vec3<i32>(42992i, arg_1.a.x, 0i)), vec3<i32>(abs(arg_2.e), -41108i, arg_1.a.x)));
    return -260f;
}

fn func_1() -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(870f, -1000f, _wgslsmith_f_op_f32(select(1075f, _wgslsmith_f_op_f32(func_2(33412u, vec4<bool>(true, false, true, false))), 713u > global1.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(1u, 3u)], -430f, global0[_wgslsmith_index_u32(1u, 3u)]), vec3<f32>(-1733f, global0[_wgslsmith_index_u32(global1.x, 3u)], global0[_wgslsmith_index_u32(global1.x, 3u)])))), true)) - vec3<f32>(288f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(vec2<i32>(-20380i, u_input.a)), Struct_1(vec2<i32>(2147483647i, u_input.e)), Struct_2(vec4<f32>(-549f, -1000f, -1000f, global0[_wgslsmith_index_u32(5766u, 3u)]), vec4<f32>(global0[_wgslsmith_index_u32(global1.x, 3u)], global0[_wgslsmith_index_u32(global1.x, 3u)], -741f, global0[_wgslsmith_index_u32(1u, 3u)]), u_input.a, Struct_1(vec2<i32>(u_input.e, u_input.a)), -2147483647i), Struct_3(vec3<f32>(270f, global0[_wgslsmith_index_u32(22193u, 3u)], global0[_wgslsmith_index_u32(0u, 3u)]), vec2<f32>(510f, -582f), false))) + -1282f), -930f));
    global1 = abs(max(vec2<u32>(u_input.d, 1u) | vec2<u32>(global1.x, 11101u), vec2<u32>(global1.x, 25803u)) & _wgslsmith_sub_vec2_u32(~vec2<u32>(21660u, u_input.c), ~vec2<u32>(2242u, 4294967295u))) ^ firstTrailingBit(abs(vec2<u32>(u_input.d, ~u_input.d)));
    global0 = array<f32, 3>();
    let var_1 = -1000f;
    global1 = _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(31771u, ~global1.x), select(vec2<u32>(36076u, u_input.c), vec2<u32>(4294967295u, 18231u), vec2<bool>(true, false)) >> (~vec2<u32>(3548u, 24601u) % vec2<u32>(32u))), u_input.c), _wgslsmith_clamp_vec2_u32(countOneBits(vec2<u32>(global1.x, select(791u, u_input.d, true))), _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(3442u, 1u), ~vec2<u32>(1u, 4294967295u), vec2<u32>(32303u, global1.x)), ~(~vec2<u32>(u_input.d, u_input.d))), ~_wgslsmith_sub_vec2_u32(~vec2<u32>(21730u, u_input.b), select(vec2<u32>(4294967295u, u_input.b), vec2<u32>(global1.x, global1.x), false))));
    return ~(select(~vec3<u32>(u_input.d, u_input.c, 0u), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.b, global1.x), vec3<u32>(global1.x, 0u, global1.x)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false))) ^ vec3<u32>(_wgslsmith_add_u32(u_input.c, 12392u), 23883u, ~global1.x)) & ~vec3<u32>(16530u, global1.x, 3452u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(abs(vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.d, u_input.d, 0u), vec4<u32>(16081u, 23707u, global1.x, 33356u)), u_input.d, global1.x)), ~select(~max(vec3<u32>(u_input.c, global1.x, 97871u), vec3<u32>(91658u, u_input.b, 89364u)), func_1(), all(vec3<bool>(true, true, true))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(536f, global0[_wgslsmith_index_u32(u_input.c, 3u)], global0[_wgslsmith_index_u32(~firstLeadingBit(5283u), 3u)], _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1186f)))))), vec4<f32>(2254f, -1704f, global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(83477u, 0u >> (var_0.x % 32u)), 3u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0.x, 3u)] + 286f) * _wgslsmith_f_op_f32(-368f - 399f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(569f)) + -1221f))), countOneBits(~abs(26480i)), Struct_1(vec2<i32>(i32(-1i) * -46817i, 0i)), abs(abs(_wgslsmith_sub_i32(reverseBits(1i), ~u_input.e))));
    global0 = array<f32, 3>();
    var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~min(u_input.c, u_input.b), 3u)] * _wgslsmith_f_op_f32(1614f + _wgslsmith_f_op_f32(round(-695f)))), -886f, -1465f, _wgslsmith_f_op_f32(func_2(1u, vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.b.x, var_1.b.x, var_1.b.x, global0[_wgslsmith_index_u32(0u, 3u)]))), _wgslsmith_f_op_vec4_f32(-var_1.b), true)))), ~(-2147483647i), var_1.d, u_input.e);
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.b + vec4<f32>(_wgslsmith_f_op_f32(min(103f, 509f)), _wgslsmith_f_op_f32(518f + -1682f), _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(52962u, 3u)])), _wgslsmith_f_op_f32(select(-693f, 1145f, true))))), var_1.b, firstTrailingBit(var_1.e), Struct_1(var_1.d.a), -_wgslsmith_clamp_i32(u_input.a, -3808i, _wgslsmith_div_i32(var_1.e, ~u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(42731i, 0i) << ((vec2<u32>(global1.x, 4294967295u) >> (vec2<u32>(global1.x, var_0.x) % vec2<u32>(32u))) % vec2<u32>(32u))), -abs(abs(vec2<i32>(var_2.e, u_input.a)))), ((abs(vec2<i32>(var_1.c, 1i)) << (_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d, u_input.c), vec2<u32>(21832u, 17992u)) % vec2<u32>(32u))) & var_1.d.a) | firstLeadingBit(abs(var_1.d.a)));
}

