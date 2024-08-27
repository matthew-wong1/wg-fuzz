struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: f32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec2<bool>,
    d: bool,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
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

var<private> global0: array<vec2<i32>, 30>;

var<private> global1: array<bool, 3> = array<bool, 3>(true, true, true);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: Struct_3) -> u32 {
    global0 = array<vec2<i32>, 30>();
    var var_0 = _wgslsmith_dot_vec3_u32(~arg_3.b.d, vec3<u32>(0u, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(1u, arg_0), abs(max(arg_3.c.e.x, arg_3.d)), _wgslsmith_mult_u32(arg_0, arg_0) << (~arg_0 % 32u)), arg_1.e.x));
    var var_1 = 18194i;
    global1 = array<bool, 3>();
    global1 = array<bool, 3>();
    return _wgslsmith_mod_u32(abs(arg_3.c.e.x), arg_0);
}

fn func_2() -> Struct_2 {
    let var_0 = vec4<f32>(645f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(f32(-1f) * -1766f), 122f);
    global1 = array<bool, 3>();
    let var_1 = var_0.x;
    let var_2 = global1[_wgslsmith_index_u32(~(~0u), 3u)];
    global0 = array<vec2<i32>, 30>();
    return Struct_2(var_1, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, 1i), -vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 0i)), vec4<i32>(u_input.a.x >> (17548u % 32u), -2147483647i >> (1u % 32u), firstLeadingBit(u_input.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.b.x), vec2<i32>(u_input.a.x, -22672i)))), ~(vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, u_input.a.x) << (vec4<u32>(73645u, 4294967295u, 0u, 4294967295u) % vec4<u32>(32u)))), vec2<bool>(true, false), any(!vec4<bool>(true, true, !global1[_wgslsmith_index_u32(85308u, 3u)], !global1[_wgslsmith_index_u32(25720u, 3u)])), ~_wgslsmith_div_vec3_u32(~vec3<u32>(4324u, 4294967295u, 1u), ~vec3<u32>(0u, 0u, 52343u)) & vec3<u32>(func_3(1u, Struct_2(var_1, u_input.b.x, vec2<bool>(global1[_wgslsmith_index_u32(47746u, 3u)], global1[_wgslsmith_index_u32(64792u, 3u)]), false, vec3<u32>(1u, 9020u, 4294967295u)), vec2<bool>(false, global1[_wgslsmith_index_u32(0u, 3u)]), Struct_3(vec2<u32>(19749u, 1u), Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(44063u, 3u)], global1[_wgslsmith_index_u32(79965u, 3u)], global1[_wgslsmith_index_u32(1u, 3u)], global1[_wgslsmith_index_u32(1u, 3u)]), 63711u, var_1, vec3<u32>(51530u, 8503u, 24037u)), Struct_2(348f, u_input.a.x, vec2<bool>(false, global1[_wgslsmith_index_u32(89640u, 3u)]), global1[_wgslsmith_index_u32(4294967295u, 3u)], vec3<u32>(8298u, 17160u, 4294967295u)), 0u)), ~62808u, 1u));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_1) -> u32 {
    global0 = array<vec2<i32>, 30>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.a))), _wgslsmith_f_op_f32(arg_1.a + _wgslsmith_f_op_f32(trunc(arg_2.c))), _wgslsmith_f_op_f32(arg_1.a - arg_1.a), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1444f * arg_2.c))));
    return (78984u >> (~arg_2.b % 32u)) | ~max(1u, 5405u);
}

fn func_1() -> u32 {
    let var_0 = vec3<u32>(_wgslsmith_mod_u32(func_4(vec2<i32>(_wgslsmith_mod_i32(u_input.a.x, -1i), 1i), func_2(), Struct_1(!vec4<bool>(false, false, global1[_wgslsmith_index_u32(1u, 3u)], false), ~110528u, func_2().a, vec3<u32>(1u, 1u, 1u))), ~1u), (func_3(abs(39233u), Struct_2(-1305f, -1i, vec2<bool>(global1[_wgslsmith_index_u32(12546u, 3u)], global1[_wgslsmith_index_u32(1u, 3u)]), global1[_wgslsmith_index_u32(4294967295u, 3u)], vec3<u32>(1u, 13775u, 1u)), !vec2<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 3u)]), Struct_3(vec2<u32>(1u, 4294967295u), Struct_1(vec4<bool>(true, global1[_wgslsmith_index_u32(15587u, 3u)], false, false), 24417u, 526f, vec3<u32>(0u, 1u, 4294967295u)), Struct_2(-1000f, -1i, vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 3u)], false), global1[_wgslsmith_index_u32(2760u, 3u)], vec3<u32>(30876u, 1u, 1u)), 1u)) ^ _wgslsmith_mult_u32(firstTrailingBit(24595u), 1370u)) ^ ~min(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(80247u, 4294967295u)), 1u), ~(~firstLeadingBit(select(1u, 21050u, global1[_wgslsmith_index_u32(0u, 3u)]))));
    let var_1 = Struct_3(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(min(vec4<u32>(4294967295u, var_0.x, var_0.x, 45721u), vec4<u32>(var_0.x, var_0.x, var_0.x, 0u)), vec4<u32>(4294967295u, var_0.x, 0u, var_0.x)), min(~var_0.x, _wgslsmith_mod_u32(40397u, 4294967295u))), countOneBits(~(1u >> (var_0.x % 32u)))), Struct_1(!(!vec4<bool>(true, global1[_wgslsmith_index_u32(var_0.x, 3u)], global1[_wgslsmith_index_u32(4294967295u, 3u)], global1[_wgslsmith_index_u32(var_0.x, 3u)])), _wgslsmith_add_u32(var_0.x, var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-265f)) + _wgslsmith_f_op_f32(min(-534f, -129f))), abs(var_0)), func_2(), func_3(countOneBits(4294967295u), Struct_2(_wgslsmith_f_op_f32(1330f * -1000f), 2147483647i, vec2<bool>(global1[_wgslsmith_index_u32(73108u, 3u)], global1[_wgslsmith_index_u32(var_0.x, 3u)]), global1[_wgslsmith_index_u32(var_0.x, 3u)], vec3<u32>(0u, var_0.x, 11021u) | _wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, 36065u, 35073u), var_0)), select(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 3u)], false), !vec2<bool>(false, global1[_wgslsmith_index_u32(36883u, 3u)]), !(!vec2<bool>(true, global1[_wgslsmith_index_u32(1u, 3u)]))), Struct_3(~var_0.yy, Struct_1(vec4<bool>(false, global1[_wgslsmith_index_u32(var_0.x, 3u)], global1[_wgslsmith_index_u32(36454u, 3u)], true), 1u, -260f, var_0 >> (vec3<u32>(var_0.x, var_0.x, 998u) % vec3<u32>(32u))), Struct_2(-1283f, -12945i | u_input.b.x, select(vec2<bool>(global1[_wgslsmith_index_u32(var_0.x, 3u)], false), vec2<bool>(global1[_wgslsmith_index_u32(var_0.x, 3u)], global1[_wgslsmith_index_u32(0u, 3u)]), global1[_wgslsmith_index_u32(var_0.x, 3u)]), false, vec3<u32>(33940u, var_0.x, 67581u)), ~6958u)));
    let var_2 = false;
    var var_3 = 373f;
    let var_4 = -240f;
    return func_2().e.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 30>();
    let var_0 = abs(vec4<u32>(4294967295u, ~1u, abs(_wgslsmith_add_u32(~4294967295u, func_1())), 30815u));
    let var_1 = Struct_1(select(vec4<bool>(true, true, select(any(vec2<bool>(false, true)), true, true), true), select(select(!vec4<bool>(global1[_wgslsmith_index_u32(var_0.x, 3u)], global1[_wgslsmith_index_u32(49081u, 3u)], true, true), select(vec4<bool>(true, global1[_wgslsmith_index_u32(var_0.x, 3u)], false, global1[_wgslsmith_index_u32(0u, 3u)]), vec4<bool>(global1[_wgslsmith_index_u32(var_0.x, 3u)], global1[_wgslsmith_index_u32(var_0.x, 3u)], global1[_wgslsmith_index_u32(30955u, 3u)], false), vec4<bool>(global1[_wgslsmith_index_u32(var_0.x, 3u)], true, global1[_wgslsmith_index_u32(var_0.x, 3u)], global1[_wgslsmith_index_u32(0u, 3u)])), select(vec4<bool>(true, true, global1[_wgslsmith_index_u32(var_0.x, 3u)], true), vec4<bool>(global1[_wgslsmith_index_u32(var_0.x, 3u)], global1[_wgslsmith_index_u32(0u, 3u)], false, false), vec4<bool>(true, false, global1[_wgslsmith_index_u32(var_0.x, 3u)], false))), select(select(vec4<bool>(false, false, global1[_wgslsmith_index_u32(22402u, 3u)], true), vec4<bool>(global1[_wgslsmith_index_u32(var_0.x, 3u)], global1[_wgslsmith_index_u32(0u, 3u)], global1[_wgslsmith_index_u32(var_0.x, 3u)], false), false), select(vec4<bool>(global1[_wgslsmith_index_u32(var_0.x, 3u)], true, global1[_wgslsmith_index_u32(4294967295u, 3u)], false), vec4<bool>(true, true, global1[_wgslsmith_index_u32(var_0.x, 3u)], false), false), select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 3u)], global1[_wgslsmith_index_u32(4294967295u, 3u)], global1[_wgslsmith_index_u32(var_0.x, 3u)], global1[_wgslsmith_index_u32(var_0.x, 3u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(var_0.x, 3u)], false, global1[_wgslsmith_index_u32(0u, 3u)]), global1[_wgslsmith_index_u32(1u, 3u)])), true), global1[_wgslsmith_index_u32(func_1(), 3u)]), _wgslsmith_clamp_u32(var_0.x ^ 17622u, func_2().e.x, ~49896u), -1632f, firstLeadingBit(var_0.xzx));
    let x = u_input.a;
    s_output = StorageBuffer(var_0);
}

