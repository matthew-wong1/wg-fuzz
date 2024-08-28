struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3>;

var<private> global1: i32 = -19754i;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<i32>) -> vec4<bool> {
    global1 = _wgslsmith_sub_i32(~(-u_input.c), abs(arg_0.x));
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1941f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(1f, -928f)), -1583f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2715f * 1422f)) - 391f))));
    global0 = array<bool, 3>();
    global0 = array<bool, 3>();
    var var_1 = Struct_2(vec3<u32>(11925u | u_input.a, ~reverseBits(~u_input.a), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(37929u, 60976u, u_input.d), select(vec3<u32>(67708u, u_input.d, u_input.a), vec3<u32>(u_input.a, 45670u, u_input.d), false)), ~1u)), vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, 0u << (u_input.d % 32u)), u_input.a), 3u)], global0[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(1u, 4294967295u)), 3u)], true, true), reverseBits(vec2<u32>(firstLeadingBit(8096u), max(countOneBits(u_input.d), reverseBits(98511u)))), _wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, u_input.d, 49442u)), select(max(~vec3<u32>(u_input.a, 1u, 1u), ~vec3<u32>(u_input.a, 66466u, u_input.a)), abs(select(vec3<u32>(4294967295u, 0u, u_input.a), vec3<u32>(u_input.d, u_input.a, 47434u), true)), vec3<bool>(select(global0[_wgslsmith_index_u32(u_input.d, 3u)], global0[_wgslsmith_index_u32(61702u, 3u)], global0[_wgslsmith_index_u32(0u, 3u)]), global0[_wgslsmith_index_u32(30571u, 3u)], !global0[_wgslsmith_index_u32(1u, 3u)]))), Struct_1((-vec4<i32>(30780i, u_input.c, arg_0.x, 0i) | vec4<i32>(28174i, arg_0.x, u_input.c, -1i)) ^ vec4<i32>(min(2147483647i, -47681i), 24150i, -arg_0.x, arg_0.x), true, -443f, _wgslsmith_clamp_vec4_i32(vec4<i32>(-arg_0.x, u_input.c << (1u % 32u), arg_0.x, 1i), vec4<i32>(-10475i, reverseBits(2147483647i), -1i, -29594i), select(-vec4<i32>(2147483647i, 0i, u_input.b, u_input.b), firstLeadingBit(vec4<i32>(1i, arg_0.x, -41918i, u_input.b)), !vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.d, 3u)], false)))));
    return vec4<bool>(false, true, any(var_1.b), any(vec4<bool>(!global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.d, u_input.a), 3u)], var_1.e.b, true, var_1.e.b)));
}

fn func_2() -> vec4<bool> {
    global1 = _wgslsmith_sub_i32(u_input.c, countOneBits(-1i));
    var var_0 = Struct_3(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.d, 3u)], global0[_wgslsmith_index_u32(14191u, 3u)]), Struct_1(~vec4<i32>(_wgslsmith_mult_i32(u_input.c, 1i), u_input.b, u_input.c, u_input.b), !global0[_wgslsmith_index_u32(~(u_input.a ^ u_input.d), 3u)], _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-151f)))))), (vec4<i32>(-1i) * -vec4<i32>(u_input.b, -2147483647i, u_input.c, 5786i)) ^ (_wgslsmith_sub_vec4_i32(vec4<i32>(-102968i, u_input.c, u_input.b, u_input.c), vec4<i32>(2147483647i, u_input.c, u_input.c, u_input.b)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, u_input.d, 6244u, u_input.d), vec4<u32>(64157u, 20768u, u_input.d, u_input.a)) % vec4<u32>(32u)))));
    return !select(!select(select(vec4<bool>(false, true, global0[_wgslsmith_index_u32(0u, 3u)], var_0.a.x), vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 3u)], var_0.a.x, true), var_0.b.b), func_3(vec2<i32>(var_0.b.a.x, 0i)), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 3u)], false, true, true)), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 3u)], true, true, u_input.b < 56194i), all(!var_0.a));
}

fn func_1(arg_0: i32, arg_1: i32) -> u32 {
    var var_0 = !vec4<bool>((all(vec4<bool>(true, global0[_wgslsmith_index_u32(31688u, 3u)], true, false)) | false) && global0[_wgslsmith_index_u32(u_input.a, 3u)], any(select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.a, 3u)], global0[_wgslsmith_index_u32(u_input.a, 3u)]), func_2(), select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(0u, 3u)], false), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(u_input.d, 3u)], false, false), vec4<bool>(global0[_wgslsmith_index_u32(1u, 3u)], true, true, true)))), !global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.d, u_input.a), 3u)], global0[_wgslsmith_index_u32(~(abs(u_input.d) ^ 0u), 3u)]);
    var var_1 = var_0.wzy;
    var_1 = !vec3<bool>(var_1.x, !var_0.x, any(var_0.zzy));
    var var_2 = firstLeadingBit((max(vec3<i32>(0i, arg_0, -32035i), min(vec3<i32>(0i, -3416i, arg_0), vec3<i32>(1i, 1140i, -35464i))) ^ firstLeadingBit(~vec3<i32>(arg_1, u_input.b, arg_0))) >> (vec3<u32>(~abs(71841u), ~31136u, min(u_input.d, 4294967295u)) % vec3<u32>(32u)));
    let var_3 = var_2.x;
    return u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 3>();
    global0 = array<bool, 3>();
    global0 = array<bool, 3>();
    global0 = array<bool, 3>();
    let var_0 = Struct_2(~vec3<u32>(_wgslsmith_sub_u32(~u_input.d, ~4294967295u), 4294967295u, 4294967295u), !vec4<bool>(!any(vec4<bool>(global0[_wgslsmith_index_u32(20009u, 3u)], true, true, true)), select(false, false, !global0[_wgslsmith_index_u32(8458u, 3u)]), !global0[_wgslsmith_index_u32(5717u, 3u)], !all(vec2<bool>(false, true))), vec2<u32>(0u, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, u_input.d), vec3<u32>(u_input.d, 35090u, u_input.a) << (vec3<u32>(26141u, 11980u, u_input.a) % vec3<u32>(32u)))), _wgslsmith_div_vec3_u32(~vec3<u32>(~u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(37783u, u_input.a, 79037u, u_input.a), vec4<u32>(0u, u_input.a, u_input.a, u_input.a)), func_1(u_input.c, 8839i)), firstTrailingBit(~vec3<u32>(8499u, u_input.a, u_input.a))), Struct_1(~(-vec4<i32>(u_input.c, u_input.c, u_input.c, 1218i) & vec4<i32>(u_input.c, 2147483647i, 0i, -2147483647i)), true, 1f, -firstTrailingBit(firstLeadingBit(vec4<i32>(-1i, -52509i, u_input.c, u_input.b)))));
    let var_1 = var_0.e;
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(1285f, 116f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c, 2283f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-692f, 636f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.e.c, var_0.e.c)))))));
}

