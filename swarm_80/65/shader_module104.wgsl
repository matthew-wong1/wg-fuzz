struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(true, true, true, true), vec2<u32>(13420u, 7426u), true, -9032i);

var<private> global1: array<i32, 3> = array<i32, 3>(1i, 19002i, -3391i);

var<private> global2: u32;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: Struct_1) -> i32 {
    global2 = 8361u;
    let var_0 = -1i;
    var var_1 = true;
    let var_2 = arg_2;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2132f) - _wgslsmith_f_op_f32(round(576f))));
    return min(var_2.d, -22875i);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec4<u32>, arg_3: vec2<u32>) -> vec4<i32> {
    global0 = arg_0;
    global0 = Struct_1(select(vec4<bool>(any(!global0.a.zzw), true, !global0.a.x, false), !(!global0.a), 1334f < _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1606f, 275f)))), ~(~vec2<u32>(u_input.e, arg_0.b.x)) & (vec2<u32>(1u, 0u) >> (firstLeadingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.b.x, arg_2.x), vec2<u32>(arg_1, arg_2.x))) % vec2<u32>(32u))), !any(arg_0.a.xy), ~_wgslsmith_div_i32(_wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(111270u, 3u)], -global0.d, ~global1[_wgslsmith_index_u32(u_input.e, 3u)]), max(~25362i, min(-1662i, 0i))));
    let var_0 = arg_2.x;
    global2 = ~1u;
    global0 = arg_0;
    return _wgslsmith_mod_vec4_i32(min(countOneBits(vec4<i32>(arg_0.d, firstLeadingBit(2147483647i), firstLeadingBit(arg_0.d), arg_0.d)), ~select(reverseBits(vec4<i32>(5793i, global0.d, -43623i, global0.d)), -vec4<i32>(-19891i, -2147483647i, 2147483647i, 4142i), global0.a)), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, ~2147483647i), vec2<i32>(-1i) * -vec2<i32>(-14181i, 20763i)), min(0i, -2147483647i), 1i, 1i));
}

fn func_1(arg_0: bool, arg_1: vec2<bool>) -> vec4<i32> {
    let var_0 = 63946i & _wgslsmith_add_i32(countOneBits(func_2(_wgslsmith_f_op_f32(261f + 636f), _wgslsmith_f_op_f32(trunc(516f)), Struct_1(global0.a, vec2<u32>(433u, 38996u), false, -2147483647i))), abs(-u_input.a));
    global2 = firstTrailingBit(29780u);
    var var_1 = ~((firstTrailingBit(3249i) & min(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, 30500u, 0u), 3u)], i32(-1i) * -34643i)) << (global0.b.x % 32u));
    return _wgslsmith_mod_vec4_i32(func_3(Struct_1(!vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x), ~global0.b, any(vec2<bool>(global0.c, true)), 13564i), ~_wgslsmith_clamp_u32(global0.b.x, u_input.d ^ global0.b.x, ~15733u), ~(~(vec4<u32>(29367u, u_input.e, u_input.e, 97361u) ^ vec4<u32>(4294967295u, global0.b.x, 8441u, 9324u))), ~firstTrailingBit(vec2<u32>(global0.b.x, u_input.d))), ~_wgslsmith_add_vec4_i32(firstTrailingBit(~vec4<i32>(var_0, -10343i, global1[_wgslsmith_index_u32(global0.b.x, 3u)], 34980i)), select(_wgslsmith_add_vec4_i32(vec4<i32>(6538i, 2147483647i, -14173i, global1[_wgslsmith_index_u32(0u, 3u)]), vec4<i32>(global0.d, global0.d, 1i, u_input.b)), _wgslsmith_add_vec4_i32(vec4<i32>(25571i, 0i, u_input.b, 1i), vec4<i32>(-15192i, 9753i, global1[_wgslsmith_index_u32(global0.b.x, 3u)], global0.d)), all(vec3<bool>(false, false, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 3>();
    global2 = ~1u;
    let var_0 = Struct_1(!global0.a, ~vec2<u32>(reverseBits(global0.b.x | 1u), ~_wgslsmith_clamp_u32(0u, 1u, u_input.d)), 4294967295u > (_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global0.b.x, global0.b.x, 13596u), vec3<u32>(20056u, 4294967295u, 13430u)), vec3<u32>(u_input.e, global0.b.x, global0.b.x)) & _wgslsmith_sub_u32(_wgslsmith_mult_u32(global0.b.x, u_input.d), select(34451u, 4294967295u, true))), -global1[_wgslsmith_index_u32(u_input.d ^ u_input.e, 3u)]);
    var var_1 = select(_wgslsmith_add_vec4_i32(max(~vec4<i32>(global1[_wgslsmith_index_u32(var_0.b.x, 3u)], 22905i, global0.d, 1i), -vec4<i32>(-38272i, -29158i, 39821i, 2147483647i)), _wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(var_0.d, 25122i, 1i, u_input.a)), _wgslsmith_mult_vec4_i32(vec4<i32>(global0.d, global1[_wgslsmith_index_u32(u_input.d, 3u)], global1[_wgslsmith_index_u32(var_0.b.x, 3u)], 25883i), vec4<i32>(var_0.d, -2147483647i, 31511i, -2147483647i)))), ~(~vec4<i32>(-14460i, global1[_wgslsmith_index_u32(33819u, 3u)], -1i, var_0.d)), !(!vec4<bool>(false, false, var_0.a.x, global0.a.x))) ^ _wgslsmith_div_vec4_i32(func_1(false, vec2<bool>(global0.a.x, true)) >> ((~vec4<u32>(97662u, 28291u, 0u, u_input.d) ^ ~vec4<u32>(1u, 11292u, 84372u, 4294967295u)) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(global1[_wgslsmith_index_u32(48322u, 3u)], global0.d, 2147483647i, -1i)), abs(vec4<i32>(-28416i, u_input.a, global0.d, -52197i))), func_1(true, vec2<bool>(var_0.a.x, global0.a.x))));
    global0 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(853f * -215f), 615f, any(vec4<bool>(global0.c, true, var_0.a.x, false)))))) * _wgslsmith_f_op_f32(387f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(679f, -588f, 687f, 567f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-562f, 673f, 2865f, -889f)))), vec4<f32>(_wgslsmith_f_op_f32(trunc(150f)), -545f, _wgslsmith_f_op_f32(1060f + -393f), 1288f), !(global1[_wgslsmith_index_u32(global0.b.x, 3u)] < 9695i))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(604f, 1330f, -780f, -1000f) * vec4<f32>(-903f, 335f, -1907f, -1374f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(574f, -285f, -1781f, -174f))))), global0.d, ~(-func_1(global0.c | false, !var_0.a.xz).wwz));
}

