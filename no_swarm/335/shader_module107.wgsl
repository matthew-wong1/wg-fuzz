struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec3<f32>(-2653f, 1000f, -705f)), Struct_1(vec3<f32>(-1124f, -165f, -936f)));

var<private> global1: array<bool, 3>;

var<private> global2: u32 = 1u;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> f32 {
    global1 = array<bool, 3>();
    global1 = array<bool, 3>();
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-609f)), _wgslsmith_f_op_f32(f32(-1f) * -518f))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-246f * -1441f), _wgslsmith_f_op_f32(trunc(918f)), !global1[_wgslsmith_index_u32(0u, 3u)]))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1696f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-424f))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-113f + 1035f))))));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 49151u, ~u_input.c.x, 4294967295u) & _wgslsmith_mult_vec4_u32(max(vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, u_input.c.x)) | vec4<u32>(21975u, 42877u, u_input.c.x, 5566u), vec4<u32>(_wgslsmith_clamp_u32(4294967295u, 42260u, 72183u), ~29629u, 4294967295u, firstTrailingBit(u_input.c.x))), ~vec4<u32>(~u_input.c.x, ~_wgslsmith_clamp_u32(u_input.c.x, 84306u, 13718u), u_input.c.x, u_input.c.x)), 2u)];
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.a.x, -596f)) - var_0.a.x);
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: vec3<i32>) -> vec3<bool> {
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -986f) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3())))), arg_0, arg_0));
    var var_1 = global0[_wgslsmith_index_u32(u_input.c.x, 2u)];
    let var_2 = var_0;
    let var_3 = var_0;
    global0 = array<Struct_1, 2>();
    return select(vec3<bool>(true, (arg_2.x >= -12883i) | global1[_wgslsmith_index_u32(81524u, 3u)], any(select(vec4<bool>(global1[_wgslsmith_index_u32(28418u, 3u)], global1[_wgslsmith_index_u32(1u, 3u)], false, global1[_wgslsmith_index_u32(u_input.c.x, 3u)]), select(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.c.x, 3u)], false, global1[_wgslsmith_index_u32(u_input.c.x, 3u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.c.x, 3u)], global1[_wgslsmith_index_u32(u_input.c.x, 3u)], false), vec4<bool>(true, true, global1[_wgslsmith_index_u32(u_input.c.x, 3u)], global1[_wgslsmith_index_u32(u_input.c.x, 3u)])), false))), !select(vec3<bool>(global1[_wgslsmith_index_u32(7974u, 3u)] | false, true, global1[_wgslsmith_index_u32(firstLeadingBit(u_input.c.x), 3u)]), vec3<bool>(all(vec2<bool>(true, false)), true, global1[_wgslsmith_index_u32(u_input.c.x, 3u)] || global1[_wgslsmith_index_u32(6127u, 3u)]), !vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 3u)], global1[_wgslsmith_index_u32(5036u, 3u)], false)), !(!global1[_wgslsmith_index_u32(52887u, 3u)]));
}

fn func_2(arg_0: vec3<i32>) -> f32 {
    global2 = reverseBits(~0u);
    let var_0 = select(~abs(~vec3<u32>(4294967295u, u_input.c.x, u_input.c.x)), select(vec3<u32>(4294967295u, u_input.c.x, u_input.c.x) >> (~vec3<u32>(79891u, u_input.c.x, 35603u) % vec3<u32>(32u)), vec3<u32>(~u_input.c.x, 1u, 0u << (u_input.c.x % 32u)), func_4(_wgslsmith_f_op_f32(func_3()), u_input.a.x, -arg_0)), ~_wgslsmith_add_u32(u_input.c.x, u_input.c.x) < max(~u_input.c.x, 1u)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_div_u32(~u_input.c.x, u_input.c.x), 19243u, u_input.c.x), vec3<u32>(37200u, _wgslsmith_mult_u32(u_input.c.x, 1u), ~1u)) % vec3<u32>(32u));
    global0 = array<Struct_1, 2>();
    global2 = u_input.c.x;
    global1 = array<bool, 3>();
    return _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1409f, 1397f)) - -656f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-792f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
}

fn func_1(arg_0: vec3<f32>) -> StorageBuffer {
    let var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(747f + -636f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec3<i32>(u_input.b.x, u_input.d, -1i))) + _wgslsmith_f_op_f32(select(534f, arg_0.x, global1[_wgslsmith_index_u32(4294967295u, 3u)]))) - _wgslsmith_f_op_f32(arg_0.x - -1022f)) + _wgslsmith_f_op_f32(max(-1401f, _wgslsmith_f_op_f32(max(-1228f, _wgslsmith_f_op_f32(-arg_0.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-802f * _wgslsmith_div_f32(arg_0.x, 115f))));
    var var_1 = u_input.c.x;
    let var_2 = select(vec3<bool>((_wgslsmith_mod_u32(1434u, u_input.c.x) << (u_input.c.x % 32u)) <= countOneBits(38699u), !((-563f >= var_0.x) & (u_input.b.x < -2147483647i)), global1[_wgslsmith_index_u32(u_input.c.x, 3u)]), select(vec3<bool>(false, any(select(vec2<bool>(global1[_wgslsmith_index_u32(49427u, 3u)], global1[_wgslsmith_index_u32(52786u, 3u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.c.x, 3u)]), global1[_wgslsmith_index_u32(1u, 3u)])), true), vec3<bool>(global1[_wgslsmith_index_u32(4262u, 3u)], any(func_4(-302f, u_input.b.x, vec3<i32>(20704i, -74083i, u_input.d))), false), select(vec3<bool>(true, true || global1[_wgslsmith_index_u32(u_input.c.x, 3u)], global1[_wgslsmith_index_u32(u_input.c.x, 3u)]), !(!vec3<bool>(global1[_wgslsmith_index_u32(102582u, 3u)], global1[_wgslsmith_index_u32(u_input.c.x, 3u)], false)), global1[_wgslsmith_index_u32(1u, 3u)])), global1[_wgslsmith_index_u32(~1u & _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(u_input.c.x, u_input.c.x), 46122u, _wgslsmith_sub_u32(4294967295u, u_input.c.x), u_input.c.x), abs(~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x))), 3u)]);
    let var_3 = global0[_wgslsmith_index_u32(min(1u | u_input.c.x, _wgslsmith_add_u32(min(~u_input.c.x, u_input.c.x), 1u)) & 8073u, 2u)];
    var var_4 = !select(!(!select(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.c.x, 3u)], var_2.x, true), vec4<bool>(var_2.x, var_2.x, var_2.x, true), vec4<bool>(false, true, global1[_wgslsmith_index_u32(u_input.c.x, 3u)], false))), !vec4<bool>(u_input.c.x < u_input.c.x, var_2.x, !global1[_wgslsmith_index_u32(0u, 3u)], true), !select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 3u)], false, true, false), vec4<bool>(false, var_2.x, false, var_2.x), func_4(1771f, u_input.b.x, vec3<i32>(u_input.b.x, u_input.b.x, u_input.d)).x));
    return StorageBuffer(u_input.c.x, ~(_wgslsmith_mod_u32(82905u, min(u_input.c.x, 1u)) ^ ~1u), u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true & (_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-1000f, -344f, global1[_wgslsmith_index_u32(72155u, 3u)])), _wgslsmith_f_op_f32(ceil(962f))))) <= -1477f);
    var var_1 = -_wgslsmith_div_i32(u_input.d, 0i);
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~0u, 0u, ~1u, 0u), firstTrailingBit(vec4<u32>((u_input.c.x << (19755u % 32u)) << (_wgslsmith_div_u32(u_input.c.x, u_input.c.x) % 32u), _wgslsmith_add_u32(24950u, u_input.c.x), firstTrailingBit(~u_input.c.x), u_input.c.x))), 2u)];
    var var_3 = !(!(!select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 3u)], true), select(vec2<bool>(var_0, true), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 3u)], global1[_wgslsmith_index_u32(4294967295u, 3u)]), false), vec2<bool>(false, var_0))));
    var_3 = !select(vec2<bool>(!global1[_wgslsmith_index_u32(max(16092u, u_input.c.x), 3u)], true), vec2<bool>(true, true), !(!select(vec2<bool>(var_0, true), vec2<bool>(true, false), vec2<bool>(true, global1[_wgslsmith_index_u32(57464u, 3u)]))));
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) + -1782f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.a.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.a.x)))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-571f, 2793f, 160f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.x, var_2.a.x, var_2.a.x)) - vec3<f32>(var_2.a.x, 1749f, -794f))))));
}

