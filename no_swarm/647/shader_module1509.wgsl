struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec3<bool>,
    d: u32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_3, 3>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_2, arg_3: u32) -> f32 {
    let var_0 = arg_2.b.c.yx;
    let var_1 = Struct_4(arg_2.b, arg_2.b, arg_2.b.a.x);
    global0 = arg_0.x;
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -798f);
    var var_2 = select(select(~_wgslsmith_add_vec2_u32(vec2<u32>(var_1.a.d, var_1.b.d), ~vec2<u32>(arg_2.b.d, 4294967295u)), ~(~(~vec2<u32>(32983u, 0u))), true), firstTrailingBit(~vec2<u32>(u_input.a, _wgslsmith_mult_u32(21850u, 60262u))), !var_1.a.c.xx);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.a.b)));
}

fn func_2(arg_0: vec2<i32>, arg_1: i32, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = !(!select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec3<bool>(true, true, false))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(ceil(-1706f)), _wgslsmith_f_op_f32(func_3(vec3<f32>(930f, 685f, -125f), false, Struct_2(vec4<f32>(-1055f, 1476f, -264f, 904f), Struct_1(vec4<f32>(1000f, -875f, 947f, -797f), 490f, vec3<bool>(var_0.x, var_0.x, true), u_input.a, vec4<i32>(1i, 1491i, 1i, arg_0.x))), u_input.a)), _wgslsmith_f_op_f32(1760f * 779f), 135f), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(201f, 1507f, -879f, -893f)))))))), _wgslsmith_f_op_f32(711f * 1945f), select(!select(vec3<bool>(false, false, var_0.x), !vec3<bool>(var_0.x, true, var_0.x), !var_0.x), vec3<bool>(false, !(arg_2.x >= arg_2.x), -1324f > _wgslsmith_f_op_f32(select(2051f, 434f, true))), true), _wgslsmith_div_u32(firstLeadingBit(_wgslsmith_mod_u32(0u, arg_2.x)), u_input.a) ^ _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(arg_2, arg_2 ^ arg_2), arg_2), ~(-(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, 2147483647i, arg_1, arg_1), vec4<i32>(arg_1, arg_1, -2147483647i, arg_0.x)) ^ select(vec4<i32>(20672i, arg_1, -27295i, arg_1), vec4<i32>(arg_0.x, arg_0.x, -1i, -2147483647i), var_0.x))));
    var var_2 = reverseBits(max(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, var_1.d, var_1.d)), vec3<u32>(1u, u_input.a, arg_2.x) & _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, arg_2.x, 1u), arg_2)), ~(~1u)));
    let var_3 = global1[_wgslsmith_index_u32(5106u, 3u)];
    var var_4 = global1[_wgslsmith_index_u32(~(~(var_3.a.d | _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.d, var_1.d), vec2<u32>(arg_2.x, var_3.a.d)))), 3u)];
    return var_4.a;
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: Struct_3) -> Struct_2 {
    var var_0 = arg_0;
    let var_1 = arg_0.a.c.yz;
    var var_2 = vec3<u32>(~4294967295u, ~u_input.a, 99075u);
    var var_3 = _wgslsmith_f_op_f32(-var_0.a.b);
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(arg_0.b.a.x)))) * arg_0.b.a.x) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_2.a.b, _wgslsmith_f_op_f32(f32(-1f) * -1668f))) - -376f);
    return Struct_2(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.a.x - var_0.a.a.x), _wgslsmith_div_f32(-1417f, arg_2.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_2.a.a.yzw, arg_1, Struct_2(var_0.b.a, var_0.a), 1u)) * _wgslsmith_f_op_f32(arg_2.a.a.x + arg_0.b.b))), _wgslsmith_f_op_f32(func_3(func_2(~vec2<i32>(-2147483647i, var_0.b.e.x), -arg_0.a.e.x, vec3<u32>(16939u, 17646u, var_2.x)).a.zxx, false || arg_2.a.c.x, Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-216f, 776f, arg_0.c, var_0.c) + arg_0.a.a), Struct_1(var_0.a.a, 662f, arg_2.a.c, arg_2.a.d, arg_2.a.e)), u_input.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.b.b, _wgslsmith_f_op_f32(abs(arg_0.b.a.x)))), 672f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2.a.a.x)))), Struct_1(_wgslsmith_f_op_vec4_f32(-arg_0.b.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -907f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(755f * -135f) - arg_0.a.b)), !(!vec3<bool>(false, true, arg_2.a.c.x)), var_2.x, var_0.a.e));
}

fn func_1(arg_0: u32, arg_1: Struct_3) -> f32 {
    var var_0 = !any(!select(select(arg_1.a.c, arg_1.a.c, vec3<bool>(arg_1.a.c.x, false, true)), !arg_1.a.c, !vec3<bool>(arg_1.a.c.x, false, arg_1.a.c.x)));
    global1 = array<Struct_3, 3>();
    var var_1 = func_4(Struct_4(func_2(vec2<i32>(-2147483647i, 1i | arg_1.a.e.x), arg_1.a.e.x, _wgslsmith_mult_vec3_u32(vec3<u32>(23072u, arg_0, 0u) ^ vec3<u32>(24749u, 4294967295u, u_input.a), vec3<u32>(arg_0, 4294967295u, arg_0))), arg_1.a, 107f), all(select(vec4<bool>(true, arg_0 <= arg_1.a.d, false, 0u == arg_1.a.d), select(!vec4<bool>(arg_1.a.c.x, true, arg_1.a.c.x, arg_1.a.c.x), vec4<bool>(false, arg_1.a.c.x, arg_1.a.c.x, false), true), !arg_1.a.c.x)), global1[_wgslsmith_index_u32(firstLeadingBit(firstTrailingBit(~(arg_1.a.d | 23655u))), 3u)]);
    var_0 = _wgslsmith_add_u32(select(0u, _wgslsmith_mod_u32(~var_1.b.d, min(64935u, 13908u)), any(vec3<bool>(arg_1.a.c.x, false, true))), ~arg_0) != ~(~15981u);
    var var_2 = ~arg_1.a.e.x;
    return _wgslsmith_f_op_f32(arg_1.b * var_1.b.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(4294967295u, global1[_wgslsmith_index_u32(u_input.a, 3u)]))), -943f)))), _wgslsmith_f_op_f32(max(-1552f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(326f))))), all(vec2<bool>(true, any(vec2<bool>(true, true)))) | true));
    var var_0 = _wgslsmith_mult_u32(9356u, abs(u_input.a) | ~u_input.a);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(390f + 688f), -987f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(108f * -570f), 211f)))), -1274f, _wgslsmith_f_op_f32(trunc(696f)), _wgslsmith_f_op_f32(f32(-1f) * -662f));
    var var_2 = true;
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(select(var_1, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1267f, var_1.x, false))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f + var_1.x))), var_1.x, var_1.x), all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true)), true)))), func_2(vec2<i32>(func_4(Struct_4(Struct_1(vec4<f32>(var_1.x, -578f, var_1.x, -472f), 290f, vec3<bool>(false, false, true), 1u, vec4<i32>(-1i, -70504i, 0i, -2147483647i)), Struct_1(var_1, 707f, vec3<bool>(true, true, true), 0u, vec4<i32>(-34514i, -2147483647i, 2147483647i, 0i)), 947f), func_4(Struct_4(Struct_1(vec4<f32>(var_1.x, -288f, var_1.x, 1712f), 1442f, vec3<bool>(true, false, false), 4294967295u, vec4<i32>(-13708i, 0i, 0i, -41365i)), Struct_1(var_1, -109f, vec3<bool>(true, true, false), 40038u, vec4<i32>(52917i, 4733i, 55299i, 1i)), 702f), false, Struct_3(Struct_1(var_1, var_1.x, vec3<bool>(false, true, false), u_input.a, vec4<i32>(-32392i, 47216i, -22158i, -1i)), 326f)).b.c.x, global1[_wgslsmith_index_u32(~4294967295u, 3u)]).b.e.x, _wgslsmith_div_i32(firstLeadingBit(-2147483647i), func_4(Struct_4(Struct_1(vec4<f32>(1546f, var_1.x, 1000f, -454f), var_1.x, vec3<bool>(false, false, false), u_input.a, vec4<i32>(25339i, 1i, 0i, 0i)), Struct_1(vec4<f32>(-437f, 1039f, 460f, var_1.x), 215f, vec3<bool>(true, true, true), u_input.a, vec4<i32>(1974i, 24098i, -1i, -11518i)), 515f), false, global1[_wgslsmith_index_u32(u_input.a, 3u)]).b.e.x)), _wgslsmith_add_i32(_wgslsmith_div_i32(~(-52859i), _wgslsmith_dot_vec4_i32(vec4<i32>(41898i, -1i, -15792i, -1i), vec4<i32>(11773i, -1i, -26387i, 39454i))), firstTrailingBit(~18614i)), vec3<u32>(firstLeadingBit(u_input.a), firstLeadingBit(u_input.a), u_input.a)));
    global1 = array<Struct_3, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

