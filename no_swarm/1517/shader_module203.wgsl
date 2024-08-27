struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: u32,
    d: f32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-543f, 920f, -840f, -1383f);

var<private> global1: array<bool, 11> = array<bool, 11>(true, false, true, true, true, false, true, true, false, false, false);

var<private> global2: array<vec4<bool>, 13> = array<vec4<bool>, 13>(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: f32, arg_3: f32) -> u32 {
    var var_0 = vec2<i32>(arg_0, u_input.b);
    return u_input.a.x;
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = select(u_input.c, 1u, all(arg_1.a.xx));
    let var_1 = arg_1.c;
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), -1186f, arg_1.d, _wgslsmith_f_op_f32(-global0.x)))));
    var var_2 = vec2<u32>(firstLeadingBit(~(25596u << (var_1 % 32u)) ^ 22399u), arg_1.c >> ((1u >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(15536u, 13819u), vec2<u32>(0u, 80976u)) % 32u)) % 32u));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1493f, -750f, arg_1.d, -1397f) + vec4<f32>(global0.x, arg_1.d, global0.x, global0.x))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d, global0.x, 694f, global0.x)), vec4<f32>(182f, global0.x, 1157f, -689f))))), vec4<f32>(-1202f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + arg_1.d) - 837f), -457f, _wgslsmith_f_op_f32(global0.x - global0.x)), select(global2[_wgslsmith_index_u32(u_input.a.x, 13u)], global2[_wgslsmith_index_u32(~u_input.a.x, 13u)], arg_1.b))));
    return select(select(vec4<bool>(true, !(global1[_wgslsmith_index_u32(u_input.a.x, 11u)] | true), !select(arg_1.b, false, arg_1.e.x), arg_1.a.x), vec4<bool>(all(arg_1.a), true, arg_1.e.x, select(28613u != arg_1.c, -580f <= global0.x, true)), !global2[_wgslsmith_index_u32(select(arg_1.c, 4294967295u, u_input.b >= -37325i), 13u)]), vec4<bool>(false & arg_1.a.x, true | (all(global2[_wgslsmith_index_u32(1u, 13u)]) | (true || arg_1.e.x)), !arg_1.e.x, any(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(min(var_1, 1u), ~var_1), 13u)])), global1[_wgslsmith_index_u32(var_1, 11u)]);
}

fn func_4(arg_0: i32, arg_1: vec3<f32>, arg_2: vec3<i32>, arg_3: vec4<bool>) -> vec4<i32> {
    let var_0 = vec3<bool>(any(select(vec2<bool>(true, arg_0 < -2147483647i), !(!arg_3.zz), select(vec2<bool>(arg_3.x, true), select(vec2<bool>(arg_3.x, arg_3.x), vec2<bool>(global1[_wgslsmith_index_u32(u_input.c, 11u)], true), arg_3.x), !global1[_wgslsmith_index_u32(47484u, 11u)]))), true, false);
    let var_1 = -(0i >> (~u_input.c % 32u));
    var var_2 = !var_0.x;
    let var_3 = Struct_2(Struct_1(!(!func_3(-2147483647i, Struct_1(arg_3.wyw, var_0.x, 30518u, global0.x, arg_3.zw)).xyz), all(vec2<bool>(var_0.x, true)), firstLeadingBit(countOneBits(_wgslsmith_mod_u32(0u, 40084u))), arg_1.x, vec2<bool>(all(var_0), func_3(_wgslsmith_div_i32(0i, -60955i), Struct_1(vec3<bool>(true, arg_3.x, false), arg_3.x, u_input.a.x, 522f, vec2<bool>(arg_3.x, false))).x)), Struct_1(!vec3<bool>(all(vec4<bool>(arg_3.x, arg_3.x, true, global1[_wgslsmith_index_u32(51015u, 11u)])), global1[_wgslsmith_index_u32(4294967295u, 11u)], var_0.x), all(arg_3.xyz), (u_input.a.x << (~u_input.c % 32u)) ^ u_input.a.x, global0.x, vec2<bool>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.a.x, u_input.a.x << (u_input.a.x % 32u)), 11u)], false)));
    var var_4 = var_3.a.d;
    return _wgslsmith_mult_vec4_i32(vec4<i32>(0i, arg_2.x, arg_0, 1i), _wgslsmith_mod_vec4_i32(-vec4<i32>(-7042i, select(var_1, arg_2.x, global1[_wgslsmith_index_u32(1u, 11u)]), -29495i, arg_0), vec4<i32>(arg_0, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(12i, -2147483647i), arg_2.zy), -vec2<i32>(2879i, -2147483647i)), var_1, -1i)));
}

fn func_5(arg_0: bool, arg_1: bool, arg_2: vec4<i32>, arg_3: Struct_2) -> f32 {
    var var_0 = arg_3.b.c;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(arg_3.b.d, global0.x, true)))))), _wgslsmith_f_op_f32(-global0.x)));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: vec2<bool>, arg_3: vec3<i32>) -> f32 {
    let var_0 = func_2(firstTrailingBit(u_input.b), _wgslsmith_f_op_f32(step(-1618f, 424f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) * global0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -658f), global0.x));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(!any(arg_2), !(!arg_2.x), func_4(2147483647i, global0.yyz, countOneBits(arg_3), func_3(-4339i, Struct_1(vec3<bool>(arg_0, arg_0, global1[_wgslsmith_index_u32(88344u, 11u)]), global1[_wgslsmith_index_u32(34902u, 11u)], 1u, global0.x, vec2<bool>(arg_2.x, global1[_wgslsmith_index_u32(var_0, 11u)])))), Struct_2(Struct_1(vec3<bool>(arg_2.x, true, arg_2.x), false, u_input.c, -869f, vec2<bool>(arg_2.x, arg_0)), Struct_1(vec3<bool>(global1[_wgslsmith_index_u32(1u, 11u)], global1[_wgslsmith_index_u32(var_0, 11u)], global1[_wgslsmith_index_u32(u_input.c, 11u)]), false, u_input.a.x, -1000f, arg_2)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.x))))), 999f, global0.x, global0.x);
    let var_1 = Struct_1(vec3<bool>(arg_0, all(global2[_wgslsmith_index_u32(arg_1, 13u)]), true), firstTrailingBit(select(arg_3.x, arg_3.x << (0u % 32u), all(vec4<bool>(true, arg_2.x, false, false)))) > ((~u_input.b & arg_3.x) << (func_2(_wgslsmith_add_i32(5389i, u_input.b), _wgslsmith_f_op_f32(-global0.x), global0.x, _wgslsmith_div_f32(global0.x, -876f)) % 32u)), ~select(_wgslsmith_mod_u32(~var_0, arg_1), ~func_2(-48743i, global0.x, 690f, -1144f), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_3(arg_3.x, Struct_1(vec3<bool>(false, global1[_wgslsmith_index_u32(588u, 11u)], arg_0), arg_2.x, var_0, 678f, arg_2)).x, false, abs(~vec4<i32>(-2147483647i, 0i, arg_3.x, arg_3.x)), Struct_2(Struct_1(vec3<bool>(false, arg_2.x, arg_2.x), true, arg_1, -114f, vec2<bool>(true, true)), Struct_1(vec3<bool>(arg_0, arg_2.x, true), true, u_input.c, global0.x, arg_2))))), vec2<bool>(true, false));
    var var_2 = var_1;
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1458f, _wgslsmith_f_op_f32(round(var_1.d)), _wgslsmith_f_op_f32(-global0.x), -2727f) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1113f, -675f, global0.x, var_1.d)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.d, global0.x, var_2.d, global0.x) + vec4<f32>(136f, 1990f, global0.x, var_2.d)))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(sign(4110f)), _wgslsmith_div_f32(var_1.d, -1380f), -1000f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-397f, var_2.d, var_1.d, var_1.d) - vec4<f32>(1567f, -248f, 553f, -386f)) + vec4<f32>(-1175f, -1000f, 1196f, global0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(489f, -1229f, global0.x, global0.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.d, var_2.d, var_1.d, global0.x))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(arg_3.x < u_input.b, true, vec4<i32>(-6311i, u_input.b, arg_3.x, u_input.b), Struct_2(var_1, var_1))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.d, -1121f))) - global0.x) + _wgslsmith_f_op_f32(-1546f - -427f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 568f, _wgslsmith_div_f32(global0.x, global0.x), global0.x) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1987f, 507f, 1994f, -1000f), vec4<f32>(global0.x, global0.x, -429f, -941f)) - vec4<f32>(828f, global0.x, 731f, -116f))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -275f, global0.x, -372f)))))))));
    global1 = array<bool, 11>();
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(667f, global0.x))))), global0.x, _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, -1032f))), global0.x);
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-1828f)), global0.x))), _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1344f - global0.x))), global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(u_input.a.x, 11u)], u_input.a.x, vec2<bool>(false, false), vec3<i32>(-1i, u_input.b, 4497i))))) - -1000f)) + _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(1595f, _wgslsmith_f_op_f32(round(547f))), _wgslsmith_f_op_f32(f32(-1f) * -250f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(abs(-592f)), 504f, _wgslsmith_f_op_f32(global0.x * global0.x), -470f)))));
    var var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(1393f)))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, global0.x) * global0.x))), _wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x)) ^ 4294967295u, 11u)], 1u, !vec2<bool>(true, any(vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 11u)], global1[_wgslsmith_index_u32(u_input.c, 11u)], false, true))), select(vec3<i32>(2670i, u_input.b, u_input.b) | vec3<i32>(1i, u_input.b, 35574i), vec3<i32>(-u_input.b, u_input.b, firstLeadingBit(-1i)), vec3<bool>(true, u_input.b <= u_input.b, 0u != u_input.c)))));
    var_0 = global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(-(~(-u_input.b)), _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(round(1f))), vec3<i32>(~u_input.b, u_input.b, (_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.b, u_input.b, 26165i), vec4<i32>(2147483647i, u_input.b, -2147483647i, -2147483647i)) << ((u_input.a.x | 53057u) % 32u)) ^ (abs(u_input.b) << (~40327u % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(false, _wgslsmith_mult_u32(4294967295u | u_input.a.x, u_input.c), select(func_3(-8923i, Struct_1(vec3<bool>(global1[_wgslsmith_index_u32(20111u, 11u)], true, false), global1[_wgslsmith_index_u32(u_input.c, 11u)], u_input.c, -1483f, vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 11u)]))).zy, vec2<bool>(true, true), true), ~(-vec3<i32>(50379i, 1i, 0i))))), global0.x);
}

