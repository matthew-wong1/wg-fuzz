struct Struct_1 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<i32>) -> u32 {
    global0 = array<i32, 18>();
    let var_0 = (-2574i | u_input.d) ^ arg_0.x;
    let var_1 = ~(-1i);
    let var_2 = Struct_2(select(vec2<bool>(select(true, false, false) != all(vec2<bool>(true, true)), true), vec2<bool>(any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), true)), true), vec2<bool>(any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), false)), all(vec3<bool>(true, true, true)))), Struct_1(0i, firstLeadingBit(vec4<i32>(_wgslsmith_sub_i32(0i, 0i), global0[_wgslsmith_index_u32(20159u, 18u)], 0i, var_1))), Struct_1(-25537i, vec4<i32>(var_0, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.b, 0u), 18u)], reverseBits(~global0[_wgslsmith_index_u32(15169u, 18u)]), countOneBits(~(-1i)))), countOneBits(u_input.b));
    let var_3 = var_2;
    return var_3.d;
}

fn func_2(arg_0: i32, arg_1: vec2<f32>, arg_2: bool) -> i32 {
    let var_0 = ~firstTrailingBit(-_wgslsmith_mult_i32(u_input.c, -5291i));
    var var_1 = Struct_3(arg_1.x, ~(-_wgslsmith_add_i32(-4396i, u_input.c) << (_wgslsmith_mult_u32(~30725u, func_3(vec3<i32>(0i, arg_0, 34070i))) % 32u)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, -833f, arg_1.x) - vec3<f32>(-2381f, 2340f, arg_1.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-919f, var_1.a, 162f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.x, -1158f, arg_1.x), vec3<f32>(-342f, 2136f, arg_1.x))))))));
    let var_3 = _wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.e, 38075u), u_input.e);
    return global0[_wgslsmith_index_u32(34832u, 18u)];
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: vec2<u32>) -> Struct_3 {
    var var_0 = -1131f;
    let var_1 = ~vec4<i32>(_wgslsmith_clamp_i32(-func_2(u_input.c, vec2<f32>(883f, -521f), true), 0i, select(u_input.a.x, 0i, true) ^ (-8021i & global0[_wgslsmith_index_u32(17000u, 18u)])), _wgslsmith_dot_vec3_i32(min(-u_input.a, u_input.a), ~(~vec3<i32>(2147483647i, u_input.d, -6934i))), ~_wgslsmith_add_i32(1i, -11525i) >> (arg_2.x % 32u), _wgslsmith_sub_i32(_wgslsmith_mod_i32(-global0[_wgslsmith_index_u32(arg_2.x, 18u)], u_input.d), ~(i32(-1i) * -25745i)));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0))), reverseBits(~_wgslsmith_sub_i32(var_1.x, u_input.c)) >> ((~_wgslsmith_mod_u32(23661u, 52273u) & _wgslsmith_mult_u32(~u_input.b, abs(u_input.e))) % 32u));
    let var_3 = select(arg_2, ~(~vec2<u32>(u_input.e, ~arg_2.x)), all(!vec4<bool>(true, any(vec2<bool>(true, false)), true, -2147483647i <= u_input.d)));
    var_2 = Struct_3(-847f, var_1.x);
    return Struct_3(243f, global0[_wgslsmith_index_u32(arg_2.x, 18u)]);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: Struct_1) -> bool {
    var var_0 = select(arg_2.b, vec4<i32>(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(func_3(~arg_2.b.xww), 18u)], _wgslsmith_sub_i32(-global0[_wgslsmith_index_u32(1u, 18u)], 1i)), global0[_wgslsmith_index_u32(4294967295u, 18u)], arg_2.b.x, _wgslsmith_div_i32(i32(-1i) * -34683i, u_input.c | arg_0.b)), true);
    var var_1 = !(!select(vec3<bool>(arg_0.b != -1841i, true, all(vec2<bool>(false, false))), vec3<bool>(true, true, true), vec3<bool>(all(vec4<bool>(false, true, true, true)), any(vec2<bool>(true, false)), arg_2.a <= arg_2.b.x)));
    var var_2 = 33745u;
    var var_3 = Struct_2(vec2<bool>(var_1.x && any(!vec2<bool>(var_1.x, var_1.x)), arg_0.a >= _wgslsmith_f_op_f32(-func_1(arg_0.a, 1329f, vec2<u32>(u_input.e, 53314u)).a)), Struct_1(arg_0.b, arg_2.b), Struct_1(1i, _wgslsmith_add_vec4_i32(arg_2.b, -_wgslsmith_mult_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 18u)], arg_0.b, 19030i, -31597i), vec4<i32>(arg_0.b, 2147483647i, global0[_wgslsmith_index_u32(u_input.b, 18u)], arg_0.b)))), 11251u);
    var_2 = func_3(var_0.zxx);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 18>();
    global0 = array<i32, 18>();
    var var_0 = ~(~min(vec2<u32>(1u, u_input.b) & ~vec2<u32>(0u, 4294967295u), _wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.b), ~vec2<u32>(u_input.b, u_input.b))));
    let var_1 = all(vec4<bool>(any(vec3<bool>(any(vec3<bool>(false, false, false)), true, true)), any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true)) & func_4(func_1(-1168f, -1643f, vec2<u32>(0u, u_input.e)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1062f, 649f, 190f), vec3<f32>(-1416f, 215f, 1984f))), Struct_1(global0[_wgslsmith_index_u32(var_0.x, 18u)], vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 18u)], global0[_wgslsmith_index_u32(u_input.e, 18u)], 0i, global0[_wgslsmith_index_u32(0u, 18u)]))), func_4(Struct_3(_wgslsmith_f_op_f32(255f - -1837f), u_input.d), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1933f, -665f, 451f) * vec3<f32>(-1159f, -1113f, 1021f)), vec3<f32>(-1536f, -248f, 259f))), Struct_1(func_1(1711f, 1311f, vec2<u32>(var_0.x, 7386u)).b, firstTrailingBit(vec4<i32>(global0[_wgslsmith_index_u32(u_input.e, 18u)], -8297i, u_input.a.x, global0[_wgslsmith_index_u32(1u, 18u)])))), true));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1050f) >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1f)));
    var var_3 = var_0.x;
    let var_4 = func_1(106f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -211f))) - _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(-922f * 1801f), true))))), firstLeadingBit(vec2<u32>(~var_0.x, countOneBits(u_input.e))) & abs(vec2<u32>(var_0.x | u_input.e, var_0.x)));
    var var_5 = _wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, u_input.e, firstLeadingBit(_wgslsmith_add_u32(u_input.b, 4294967295u)) | ~u_input.e), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 50405u & var_0.x, 5808u), countOneBits(select(vec3<u32>(20151u, var_0.x, u_input.b) | vec3<u32>(u_input.b, 39497u, 0u), max(vec3<u32>(u_input.b, 30012u, 41144u), vec3<u32>(32598u, var_0.x, u_input.b)), !vec3<bool>(true, var_1, var_1)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(global0[_wgslsmith_index_u32(var_0.x, 18u)], _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a.zy, vec2<i32>(-18508i, 13448i)) ^ (u_input.a.zx | u_input.a.xy), vec2<i32>(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(var_0.x, 18u)], -2147483647i), ~u_input.d)), 9132i, ~(global0[_wgslsmith_index_u32(78871u & u_input.e, 18u)] ^ u_input.c)), -u_input.c, _wgslsmith_clamp_vec4_u32(vec4<u32>(~var_0.x, _wgslsmith_mod_u32(4294967295u, var_5.x), var_5.x, ~abs(4294967295u)), ~vec4<u32>(_wgslsmith_sub_u32(4294967295u, 4294967295u), _wgslsmith_mult_u32(var_5.x, 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.e), vec2<u32>(1u, 4294967295u)), u_input.e), vec4<u32>(_wgslsmith_div_u32(~var_5.x, 38239u), 0u, 0u, 4294967295u)));
}

