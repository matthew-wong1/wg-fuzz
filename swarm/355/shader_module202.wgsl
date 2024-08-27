struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8> = array<f32, 8>(2083f, 2128f, 201f, 880f, -442f, 658f, 1027f, -473f);

var<private> global1: array<vec2<i32>, 13>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global1 = array<vec2<i32>, 13>();
    global0 = array<f32, 8>();
    global1 = array<vec2<i32>, 13>();
    global0 = array<f32, 8>();
    let var_0 = u_input.b;
    return Struct_1(39469u, max(min(_wgslsmith_mult_i32(-14308i, -2147483647i << (arg_0.a % 32u)), min(-arg_1.b, -59190i)), u_input.a >> (var_0.x % 32u)), -(arg_0.b | _wgslsmith_add_i32(firstTrailingBit(-1i), -12457i)), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(arg_0.d, _wgslsmith_f_op_vec4_f32(trunc(arg_1.d))), vec4<f32>(arg_1.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1271f + global0[_wgslsmith_index_u32(32203u, 8u)])), arg_1.d.x, -345f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    let var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.c.x, 0u), 8u)];
    let var_1 = Struct_1(firstLeadingBit(_wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(u_input.b, vec4<u32>(1u, arg_1.a, 18561u, arg_2.a)), _wgslsmith_sub_vec4_u32(reverseBits(u_input.b), vec4<u32>(u_input.b.x, arg_1.a, arg_2.a, 38725u)))), 1i, 0i, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2.d * _wgslsmith_f_op_vec4_f32(round(arg_1.d))) - _wgslsmith_f_op_vec4_f32(arg_1.d * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1593f, 263f, -1333f, -2522f), vec4<f32>(arg_1.d.x, -947f, -543f, global0[_wgslsmith_index_u32(23295u, 8u)]), vec4<bool>(false, true, true, true))))))));
    var var_2 = any(vec3<bool>(true, false, (arg_2.c > _wgslsmith_mult_i32(u_input.a, arg_2.c)) & true));
    var var_3 = firstLeadingBit(arg_1.a);
    var var_4 = _wgslsmith_div_u32(~31271u, ~min(arg_2.a, 1u));
    return var_1.c;
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: i32) -> vec2<u32> {
    let var_0 = func_2(func_2(Struct_1(1u, -(i32(-1i) * -1i), select(~1i, abs(arg_2), any(vec2<bool>(true, false))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-971f, 140f, 1325f, arg_1) * vec4<f32>(arg_1, arg_1, arg_1, 1000f))))), Struct_1(45422u, _wgslsmith_add_i32(u_input.a, arg_2) >> (arg_0 % 32u), -13454i, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0[_wgslsmith_index_u32(arg_0, 8u)], arg_1, 168f, global0[_wgslsmith_index_u32(arg_0, 8u)]), vec4<f32>(arg_1, 1084f, global0[_wgslsmith_index_u32(1u, 8u)], 818f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.e.x, 8u)], -525f, global0[_wgslsmith_index_u32(u_input.d.x, 8u)], -390f) + vec4<f32>(679f, -1379f, arg_1, -135f))))), func_2(func_2(Struct_1(u_input.d.x, arg_2, 1i, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, 248f, global0[_wgslsmith_index_u32(u_input.e.x, 8u)], 3196f) - vec4<f32>(global0[_wgslsmith_index_u32(55872u, 8u)], 1000f, global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(1u, 8u)]))), Struct_1(arg_0, -1i, firstLeadingBit(-14064i), vec4<f32>(445f, 1175f, -745f, global0[_wgslsmith_index_u32(u_input.e.x, 8u)]))), func_2(func_2(Struct_1(1u, arg_2, u_input.a, vec4<f32>(global0[_wgslsmith_index_u32(arg_0, 8u)], 1542f, arg_1, 350f)), Struct_1(u_input.e.x, arg_2, arg_2, vec4<f32>(1000f, 1122f, -1733f, global0[_wgslsmith_index_u32(arg_0, 8u)]))), func_2(Struct_1(24234u, -13260i, -754i, vec4<f32>(global0[_wgslsmith_index_u32(u_input.e.x, 8u)], global0[_wgslsmith_index_u32(34423u, 8u)], arg_1, -956f)), Struct_1(1u, u_input.a, 1i, vec4<f32>(-1229f, arg_1, 367f, 1228f))))));
    let var_1 = ~(vec3<i32>(-1i) * -firstTrailingBit(vec3<i32>(u_input.a, var_0.b, u_input.a)));
    var var_2 = var_1.yy ^ vec2<i32>(-1i, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_2, 13659i, var_1.x, 39291i), select(vec4<i32>(u_input.a, var_1.x, -13801i, -55994i), vec4<i32>(arg_2, var_0.c, arg_2, var_1.x), false)), vec4<i32>(_wgslsmith_div_i32(-48267i, -1i), reverseBits(u_input.a), firstTrailingBit(var_1.x), var_0.c)));
    var var_3 = u_input.d.x;
    let var_4 = Struct_1(_wgslsmith_add_u32(1u, func_2(Struct_1(~arg_0, _wgslsmith_dot_vec3_i32(vec3<i32>(67735i, var_1.x, u_input.a), var_1), min(arg_2, u_input.a), _wgslsmith_f_op_vec4_f32(-var_0.d)), Struct_1(_wgslsmith_mult_u32(0u, 1u), _wgslsmith_clamp_i32(-1i, arg_2, var_2.x), _wgslsmith_mod_i32(var_1.x, var_1.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1, 777f, global0[_wgslsmith_index_u32(u_input.c.x, 8u)], 881f), var_0.d, vec4<bool>(false, false, false, true))))).a), min(25996i, _wgslsmith_div_i32(-1i, arg_2)), i32(-1i) * -1i, _wgslsmith_f_op_vec4_f32(var_0.d + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-969f, global0[_wgslsmith_index_u32(u_input.d.x, 8u)], 613f, -348f)))));
    return u_input.d;
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(_wgslsmith_mult_u32(countOneBits(64577u), 56698u), global0[_wgslsmith_index_u32(0u, 8u)], ~(func_3(-vec3<i32>(-29135i, u_input.a, -16689i), func_2(Struct_1(u_input.c.x, u_input.a, 2147483647i, vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(u_input.c.x, 8u)], -631f)), Struct_1(u_input.b.x, u_input.a, u_input.a, vec4<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 8u)], global0[_wgslsmith_index_u32(4294967295u, 8u)], -1152f, 1818f))), Struct_1(u_input.e.x, 19084i, u_input.a, vec4<f32>(941f, global0[_wgslsmith_index_u32(u_input.b.x, 8u)], global0[_wgslsmith_index_u32(u_input.d.x, 8u)], 277f))) << (u_input.c.x % 32u)));
    var var_1 = ~(vec3<i32>(min(_wgslsmith_div_i32(9536i, u_input.a), -64508i), func_3(countOneBits(vec3<i32>(-79494i, 0i, u_input.a)), func_2(Struct_1(u_input.e.x, u_input.a, -1i, vec4<f32>(global0[_wgslsmith_index_u32(2441u, 8u)], -822f, -253f, -937f)), Struct_1(u_input.c.x, 0i, -2147483647i, vec4<f32>(global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(0u, 8u)], -122f, global0[_wgslsmith_index_u32(u_input.b.x, 8u)]))), func_2(Struct_1(u_input.d.x, u_input.a, u_input.a, vec4<f32>(1776f, global0[_wgslsmith_index_u32(1u, 8u)], -721f, -422f)), Struct_1(var_0.x, u_input.a, 2147483647i, vec4<f32>(184f, -507f, global0[_wgslsmith_index_u32(u_input.c.x, 8u)], -1000f)))), -34126i) | firstTrailingBit(vec3<i32>(-1i) * -vec3<i32>(u_input.a, -8661i, u_input.a)));
    let var_2 = ~var_0.x >= min(max(u_input.c.x, ~25051u), 1u);
    let var_3 = min(~global1[_wgslsmith_index_u32(func_2(Struct_1(45954u, u_input.a, u_input.a, vec4<f32>(global0[_wgslsmith_index_u32(1u, 8u)], -1030f, global0[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(0u, 8u)])), Struct_1(1u, var_1.x, u_input.a, vec4<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 8u)], global0[_wgslsmith_index_u32(u_input.c.x, 8u)], -2920f, global0[_wgslsmith_index_u32(u_input.c.x, 8u)]))).a ^ ~35579u, 13u)], select(_wgslsmith_sub_vec2_i32(var_1.zz << (u_input.c % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(global1[_wgslsmith_index_u32(var_0.x, 13u)], vec2<i32>(10633i, u_input.a), vec2<i32>(u_input.a, var_1.x))), ~global1[_wgslsmith_index_u32(~u_input.c.x, 13u)], select(select(vec2<bool>(var_2, true), vec2<bool>(false, var_2), vec2<bool>(true, var_2)), vec2<bool>(var_2, var_2), select(vec2<bool>(false, var_2), vec2<bool>(var_2, var_2), vec2<bool>(var_2, true))))) << (~_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.x, 1u), _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.x, var_0.x), vec2<u32>(4294967295u, u_input.c.x)), _wgslsmith_add_vec2_u32(vec2<u32>(25445u, 6013u), u_input.e)), u_input.e ^ (vec2<u32>(var_0.x, 6169u) | u_input.d)) % vec2<u32>(32u));
    let var_4 = func_2(Struct_1(func_4(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.e.x, 8u)]), u_input.a | var_1.x).x << (1u % 32u), -1i, u_input.a, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 8u)] + 1021f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-362f + global0[_wgslsmith_index_u32(73759u, 8u)]), _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(u_input.b.x, 8u)])))), _wgslsmith_f_op_f32(max(1131f, global0[_wgslsmith_index_u32(~0u, 8u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(884f - global0[_wgslsmith_index_u32(0u, 8u)]) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 8u)])))), func_2(Struct_1(var_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_3.x, var_3.x, -36902i), vec3<i32>(22684i, -29006i, var_1.x)) ^ var_3.x, reverseBits(_wgslsmith_mod_i32(-1i, var_3.x)), vec4<f32>(_wgslsmith_f_op_f32(767f + 193f), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(25190u, u_input.b.x), 8u)], -435f, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(19831u, var_0.x), 8u)])), Struct_1((1u >> (u_input.b.x % 32u)) | u_input.e.x, _wgslsmith_div_i32(reverseBits(2147483647i), -var_1.x), firstTrailingBit(var_1.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 8u)], 672f, global0[_wgslsmith_index_u32(var_0.x, 8u)], global0[_wgslsmith_index_u32(6640u, 8u)])))));
    return func_2(Struct_1(var_0.x, var_1.x, -1i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_4.d) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(var_4.d)), vec4<f32>(var_4.d.x, -263f, var_4.d.x, var_4.d.x), var_2)))), var_4);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = vec2<bool>(select(any(select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)))), true, true), !any(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true), any(vec4<bool>(false, true, false, false)))));
    var var_2 = ~4294967295u;
    var_1 = select(vec2<bool>(all(select(vec2<bool>(true, var_1.x), vec2<bool>(true, true), true)), all(select(vec2<bool>(true, true), !vec2<bool>(var_1.x, var_1.x), !var_1.x))), select(vec2<bool>(true, true), vec2<bool>(var_1.x, true), vec2<bool>(true, false || (var_1.x & var_1.x))), vec2<bool>(true, any(vec3<bool>(all(vec4<bool>(false, var_1.x, var_1.x, var_1.x)), true, true))));
    var var_3 = vec3<u32>(u_input.d.x, ~(~_wgslsmith_add_u32(0u | u_input.d.x, _wgslsmith_mult_u32(var_0.a, 4294967295u))), _wgslsmith_mult_u32(abs(u_input.c.x), u_input.e.x));
    let var_4 = Struct_1(0u, -47242i, ~(-(~u_input.a ^ u_input.a)), _wgslsmith_f_op_vec4_f32(select(var_0.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(1000f, -469f), _wgslsmith_f_op_f32(437f + var_0.d.x), _wgslsmith_f_op_f32(-var_0.d.x), 1091f)), !(!select(vec4<bool>(var_1.x, true, false, var_1.x), vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(false, var_1.x, true, false))))));
    let x = u_input.a;
    s_output = StorageBuffer(func_2(func_2(func_1(), var_4), func_1()).d, var_0.a);
}

