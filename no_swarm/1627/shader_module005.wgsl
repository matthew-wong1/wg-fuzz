struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 2>;

var<private> global1: vec4<f32>;

var<private> global2: array<i32, 10>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<i32>) -> f32 {
    global1 = vec4<f32>(-840f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(select(-1144f, global1.x, true)))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -430f))), _wgslsmith_f_op_f32(f32(-1f) * -1008f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(global1.x, arg_0.x, true)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -170f))), _wgslsmith_f_op_f32(floor(-1188f))))));
    var var_0 = vec2<i32>(u_input.a.x, global2[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(17123u, 2u)] ^ 0u), 10u)]);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(floor(-236f)), 0u >> (1u % 32u), -countOneBits(1i), _wgslsmith_div_i32(global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.b.x, 4294967295u), 10u)], -13509i) << (3018u % 32u));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(arg_0.x)))), _wgslsmith_f_op_f32(min(arg_0.x, -1417f))))), 4294967295u, countOneBits(2147483647i), _wgslsmith_mod_i32(abs(-21451i), -_wgslsmith_div_i32(-82706i, 1i) & global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~var_1.b, _wgslsmith_mod_u32(u_input.b.x, var_1.b)), 10u)]));
    global2 = array<i32, 10>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -812f)))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2) -> vec4<f32> {
    let var_0 = 6500i;
    var var_1 = u_input.b.x;
    let var_2 = (!(countOneBits(global2[_wgslsmith_index_u32(u_input.b.x, 10u)]) != max(global2[_wgslsmith_index_u32(0u, 10u)], global2[_wgslsmith_index_u32(u_input.b.x, 10u)])) || !select(u_input.c.x > -23759i, true, true)) | all(select(vec2<bool>(any(vec4<bool>(true, false, false, true)), true), vec2<bool>(true, true), any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)))));
    var var_3 = reverseBits(~(~abs(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 5733u, global0[_wgslsmith_index_u32(u_input.b.x, 2u)], u_input.b.x), vec4<u32>(42108u, u_input.b.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(46101u, 2u)], 2u)], 24589u)))));
    let var_4 = !(!all(vec2<bool>(true, false)));
    return _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-980f - 465f) + arg_1.a.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1727f) + _wgslsmith_f_op_f32(sign(152f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.a.x), -400f)))), _wgslsmith_f_op_f32(func_3(vec4<f32>(-651f, _wgslsmith_f_op_f32(f32(-1f) * -1995f), -974f, _wgslsmith_f_op_f32(global1.x + global1.x)), u_input.c)))));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1996f, global1.x, _wgslsmith_f_op_f32(f32(-1f) * -1845f), -880f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, _wgslsmith_f_op_f32(step(-460f, arg_1.a)), -1177f, _wgslsmith_f_op_f32(global1.x - arg_1.a)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.a * arg_1.a), _wgslsmith_f_op_f32(sign(global1.x)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1356f + 2680f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * 718f)), global1.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(Struct_2(vec2<f32>(-773f, -1083f)), Struct_2(global1.zx))))));
    let var_0 = vec4<bool>(!(u_input.b.x <= u_input.b.x), !(u_input.a.x != arg_1.c), all(vec3<bool>(true, true, true)), any(select(vec2<bool>(false, true), vec2<bool>(true, true), any(vec2<bool>(true, true)))));
    global2 = array<i32, 10>();
    let var_1 = Struct_2(vec2<f32>(144f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec4_f32(func_2(Struct_2(global1.yy), Struct_2(global1.zy))).x, 419f, true)))));
    let var_2 = var_1;
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: f32, arg_3: vec3<u32>) -> vec4<f32> {
    let var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(0i, firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -2147483647i, 2147483647i), firstLeadingBit(vec3<i32>(u_input.a.x, 2147483647i, -63272i)))), 0i, firstTrailingBit(max(_wgslsmith_mod_i32(-34226i, arg_0.d), 2147483647i))), vec4<i32>(arg_0.d << (~u_input.b.x % 32u), firstLeadingBit(u_input.c.x), -2147483647i, ~arg_0.d) ^ vec4<i32>(u_input.c.x, func_1(abs(arg_3.x), Struct_1(363f, arg_0.b, 0i, global2[_wgslsmith_index_u32(arg_0.b, 10u)])).c, abs(arg_0.d), ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 1i, arg_0.c, -1i), vec4<i32>(1i, u_input.a.x, arg_0.d, -2147483647i))));
    var var_1 = countOneBits(-1i);
    var_1 = abs(-19196i);
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.xx * global1.wx))), _wgslsmith_f_op_vec2_f32(-global1.xx), !(~(~u_input.b.x) == ~(~1u))));
    var var_3 = vec3<bool>(false, all(!arg_1.wzz), arg_1.x);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a), global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(495f + -754f) - _wgslsmith_f_op_f32(-global1.x)), 798f))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-674f, global1.x, arg_2, global1.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.a, 2515f, arg_0.a, 1000f)))) - vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(-arg_2), 1935f, 157f)), !all(select(arg_1, vec4<bool>(arg_1.x, false, var_3.x, arg_1.x), vec4<bool>(true, true, true, false))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(func_1(1u, Struct_1(global1.x, u_input.b.x, global2[_wgslsmith_index_u32(u_input.b.x, 10u)], global2[_wgslsmith_index_u32(48701u, 10u)])), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_f_op_f32(f32(-1f) * -2103f)), abs(u_input.b & vec3<u32>(global0[_wgslsmith_index_u32(13712u, 2u)], 1u, 591u))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.x, global1.x, -1212f, global1.x), vec4<f32>(global1.x, global1.x, global1.x, 574f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -1633f, global1.x, global1.x) - vec4<f32>(-202f, 246f, 810f, 1000f)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(146f, -508f, 1000f, global1.x), vec4<f32>(global1.x, 182f, -213f, -538f)))))));
    var var_0 = -u_input.c.x;
    var_0 = u_input.a.x;
    global2 = array<i32, 10>();
    let var_1 = func_1(1u, Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + global1.x) * _wgslsmith_div_f32(global1.x, global1.x)), global1.x)), ~_wgslsmith_dot_vec3_u32(u_input.b ^ u_input.b, u_input.b & vec3<u32>(global0[_wgslsmith_index_u32(28390u, 2u)], u_input.b.x, 4294967295u)), 32798i, 3463i));
    var_0 = global2[_wgslsmith_index_u32(~59u, 10u)];
    let var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(-260f, -1000f), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-610f, var_1.a), global1.zw)))))), vec2<f32>(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(global1.x)))) * _wgslsmith_f_op_f32(-var_1.a)))));
    global1 = vec4<f32>(-919f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<f32>(global1.x, 181f, global1.x, 1963f), u_input.c)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(global1.x))))), var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-1076f - 720f), true)))));
    let var_3 = _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(min(global0[_wgslsmith_index_u32(var_1.b, 2u)], 19208u), _wgslsmith_dot_vec3_u32(u_input.b >> (u_input.b % vec3<u32>(32u)), vec3<u32>(1u, 62657u, u_input.b.x))), ~4086u, u_input.b.x | 0u, global0[_wgslsmith_index_u32(var_1.b, 2u)]), ~(vec4<u32>(31069u, u_input.b.x, _wgslsmith_add_u32(4294967295u, u_input.b.x), _wgslsmith_sub_u32(var_1.b, 1u)) >> (vec4<u32>(4294967295u, u_input.b.x, 0u, var_1.b) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(u_input.b.yz & u_input.b.zz), var_1.c, ~firstTrailingBit(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(var_1.b, 2u)], 1u, var_3.x, 14759u), var_3), firstTrailingBit(vec4<u32>(var_1.b, 16603u, 1u, var_3.x)))), ~(~select(reverseBits(vec3<i32>(18251i, -2147483647i, 12074i)), abs(u_input.c), true)));
}

