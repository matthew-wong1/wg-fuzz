struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: Struct_1,
    d: i32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 18>;

var<private> global1: i32;

var<private> global2: array<f32, 11> = array<f32, 11>(1249f, 1313f, 267f, 1155f, -321f, -162f, -962f, -446f, -659f, 749f, 1437f);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec2<i32> {
    var var_0 = Struct_1(vec2<u32>((~0u | _wgslsmith_add_u32(u_input.d.x, 32378u)) >> ((countOneBits(1u) | _wgslsmith_mult_u32(8611u, u_input.a.x)) % 32u), ~49715u | ~_wgslsmith_mod_u32(u_input.a.x, u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(u_input.d.x, 11u)])), global2[_wgslsmith_index_u32(max(0u, u_input.d.x), 11u)]), global2[_wgslsmith_index_u32(1u, 11u)])), -74474i);
    let var_1 = _wgslsmith_div_vec3_u32(u_input.c, u_input.c ^ reverseBits(~(~u_input.d)));
    global0 = array<vec3<f32>, 18>();
    global0 = array<vec3<f32>, 18>();
    global0 = array<vec3<f32>, 18>();
    return _wgslsmith_div_vec2_i32(select(-countOneBits(~vec2<i32>(-70651i, -29190i)), ~(vec2<i32>(-1i) * -vec2<i32>(var_0.c, var_0.c)), -660f < _wgslsmith_div_f32(_wgslsmith_div_f32(1000f, var_0.b), _wgslsmith_f_op_f32(-864f - 1310f))), -firstTrailingBit(vec2<i32>(1i, -1i)) ^ ~_wgslsmith_add_vec2_i32(select(vec2<i32>(0i, var_0.c), vec2<i32>(2147483647i, var_0.c), false), vec2<i32>(var_0.c, var_0.c)));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_2) -> vec4<f32> {
    global1 = _wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_add_i32(~arg_3.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(35625i, -13407i, arg_2.c, arg_3.c.c), vec4<i32>(1i, 0i, 1i, arg_3.d))), -25549i) ^ -2147483647i, -_wgslsmith_clamp_i32(abs(1i), arg_1.c.c, arg_3.c.c));
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.c.b, arg_3.c.b, true)) + _wgslsmith_div_f32(-1474f, arg_0.x)), -376f, _wgslsmith_f_op_f32(-1572f * _wgslsmith_f_op_f32(abs(arg_3.c.b))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.x * arg_2.b), _wgslsmith_f_op_f32(sign(arg_0.x))))) - vec4<f32>(_wgslsmith_f_op_f32(arg_1.c.b + arg_0.x), arg_1.c.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(179f)))), _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(floor(arg_3.c.b)))))));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: bool, arg_3: vec4<u32>) -> i32 {
    var var_0 = _wgslsmith_clamp_i32(~arg_1.x, firstTrailingBit(arg_1.x), -reverseBits(arg_1.x) ^ 1i);
    let var_1 = -39390i;
    var var_2 = ~vec2<u32>(~(~13193u), abs(_wgslsmith_mod_u32(u_input.d.x >> (arg_3.x % 32u), reverseBits(u_input.b))));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.c, u_input.d), 18u)]), vec3<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_2.x, 11u)]), _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(u_input.b, 11u)], global2[_wgslsmith_index_u32(var_2.x, 11u)])), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(1u, 11u)], global2[_wgslsmith_index_u32(12128u, 11u)]))), Struct_2(func_3(), vec2<bool>(select(arg_2, arg_2, arg_2), any(vec3<bool>(arg_2, false, arg_2))), Struct_1(vec2<u32>(4294967295u, 4762u), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_3.x, 11u)] * global2[_wgslsmith_index_u32(var_2.x, 11u)]), arg_1.x), firstTrailingBit(~arg_0.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 11u)], global2[_wgslsmith_index_u32(26777u, 11u)], 654f, -515f)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 11u)], -354f, -467f, -823f))))), Struct_1(u_input.c.zy, global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(var_2.x, arg_3.x), 11u)], ~arg_1.x), Struct_2(arg_0.xx, vec2<bool>(true, true), Struct_1(~u_input.c.xz, -688f, arg_1.x | -78485i), 2147483647i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 11u)], global2[_wgslsmith_index_u32(var_2.x, 11u)], -1199f, global2[_wgslsmith_index_u32(8030u, 11u)]))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(649f, global2[_wgslsmith_index_u32(13679u, 11u)], global2[_wgslsmith_index_u32(79039u, 11u)], -1686f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(1u, 11u)], global2[_wgslsmith_index_u32(4294967295u, 11u)], global2[_wgslsmith_index_u32(27792u, 11u)], -1618f) - vec4<f32>(global2[_wgslsmith_index_u32(51075u, 11u)], 444f, 765f, global2[_wgslsmith_index_u32(u_input.d.x, 11u)]))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(789f, 200f, -1120f, 1549f) - vec4<f32>(global2[_wgslsmith_index_u32(arg_3.x, 11u)], 2214f, global2[_wgslsmith_index_u32(4294967295u, 11u)], global2[_wgslsmith_index_u32(arg_3.x, 11u)])), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(382f, -1089f, -974f, global2[_wgslsmith_index_u32(42601u, 11u)])))), any(select(vec3<bool>(arg_2, arg_2, false), vec3<bool>(arg_2, false, arg_2), true)))), vec4<bool>(arg_2, false, arg_2, true))));
    let var_4 = all(!select(!select(vec4<bool>(arg_2, true, true, true), vec4<bool>(false, arg_2, arg_2, false), arg_2), !vec4<bool>(false, arg_2, arg_2, arg_2), vec4<bool>(arg_2, arg_2, true, false)));
    return _wgslsmith_dot_vec2_i32((firstTrailingBit(vec2<i32>(arg_1.x, 2147483647i)) ^ vec2<i32>(arg_1.x, -1i)) | vec2<i32>(var_1, 0i), firstTrailingBit(firstTrailingBit(vec2<i32>(select(arg_1.x, arg_1.x, false), func_3().x))));
}

fn func_5(arg_0: vec4<i32>) -> Struct_2 {
    global0 = array<vec3<f32>, 18>();
    let var_0 = ~vec4<u32>(1u, 30362u, u_input.c.x, abs(_wgslsmith_add_u32(28079u, 43749u << (u_input.b % 32u))));
    var var_1 = vec4<u32>(_wgslsmith_div_u32(30113u, firstTrailingBit(~var_0.x)), 0u, min(max(var_0.x, ~0u), var_0.x | u_input.b) ^ ~(~var_0.x), ~2720u);
    let var_2 = vec3<bool>(true, all(!(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), false))), any(vec3<bool>(true, true, true)) || all(select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), select(vec2<bool>(false, false), vec2<bool>(false, false), false), true)));
    var_1 = countOneBits((vec4<u32>(84913u, var_0.x, ~14342u, 1u) | vec4<u32>(countOneBits(0u), ~u_input.c.x, ~u_input.b, var_1.x)) & var_0);
    return Struct_2(firstTrailingBit(vec2<i32>(func_3().x >> (var_0.x % 32u), _wgslsmith_dot_vec4_i32(~arg_0, _wgslsmith_add_vec4_i32(vec4<i32>(-36994i, arg_0.x, 2147483647i, 2147483647i), vec4<i32>(-70488i, arg_0.x, -2147483647i, 2147483647i))))), var_2.zx, Struct_1(vec2<u32>(71228u, 4294967295u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(1u, 11u)])) + _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(26543u, 11u)]))) - _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_add_u32(var_1.x, 4294967295u), 11u)])), func_3().x), 40579i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(var_1.x, 11u)], -1220f, global2[_wgslsmith_index_u32(1u, 11u)], -624f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2[_wgslsmith_index_u32(1u, 11u)], -1000f, -559f, -1179f), vec4<f32>(global2[_wgslsmith_index_u32(1u, 11u)], global2[_wgslsmith_index_u32(u_input.a.x, 11u)], -2323f, -648f))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(658f, 2121f, -2466f, global2[_wgslsmith_index_u32(var_1.x, 11u)]) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(var_0.x, 11u)], global2[_wgslsmith_index_u32(u_input.c.x, 11u)], global2[_wgslsmith_index_u32(5503u, 11u)], 349f) - vec4<f32>(global2[_wgslsmith_index_u32(10501u, 11u)], 746f, global2[_wgslsmith_index_u32(31561u, 11u)], global2[_wgslsmith_index_u32(0u, 11u)]))))));
}

fn func_1() -> Struct_1 {
    let var_0 = func_5((~(~vec4<i32>(7796i, 0i, 2147483647i, 0i)) ^ vec4<i32>(_wgslsmith_add_i32(-1i, 2147483647i), select(17060i, -24304i, true), func_2(vec4<i32>(-28330i, -36831i, 0i, -19396i), vec2<i32>(1i, -1i), false, vec4<u32>(u_input.b, u_input.d.x, 116340u, u_input.b)), ~(-31289i))) & _wgslsmith_add_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(-1i, 16561i, 18148i, 1i), vec4<i32>(-41922i, 17181i, -7708i, 33927i)), vec4<i32>(reverseBits(-53906i), 1i, func_3().x, ~2147483647i)));
    var var_1 = select(!(!(!select(vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x), vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x), vec4<bool>(true, true, var_0.b.x, var_0.b.x)))), vec4<bool>(true, all(select(select(vec4<bool>(false, var_0.b.x, true, var_0.b.x), vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, true), false), !vec4<bool>(true, false, var_0.b.x, false), var_0.c.b < 1688f)), any(vec3<bool>(true, true, true)), func_5(-(~vec4<i32>(-2147483647i, -25522i, -40277i, 13694i))).b.x), vec4<bool>(var_0.b.x, (0u < _wgslsmith_dot_vec2_u32(vec2<u32>(12706u, 44209u), vec2<u32>(1u, 1u))) & (var_0.b.x == true), any(vec3<bool>(true, func_5(vec4<i32>(var_0.c.c, 0i, var_0.d, -2147483647i)).b.x, true)), !(!var_0.b.x)));
    let var_2 = var_0.c;
    let var_3 = var_0.c;
    global1 = var_0.c.c;
    return func_5(~(-(~vec4<i32>(var_2.c, -21251i, var_2.c, var_0.a.x) | vec4<i32>(var_0.a.x, var_3.c, var_2.c, 0i)))).c;
}

fn func_6(arg_0: Struct_1, arg_1: bool) -> u32 {
    global0 = array<vec3<f32>, 18>();
    var var_0 = Struct_1(vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.b, 4294967295u), _wgslsmith_div_u32(arg_0.a.x, 10467u)), 4294967295u), u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(19611u, 11u)], 1710f)))), arg_0.c);
    global2 = array<f32, 11>();
    var_0 = arg_0;
    global2 = array<f32, 11>();
    return _wgslsmith_mod_u32(~(~(~u_input.c.x ^ (arg_0.a.x >> (30368u % 32u)))), func_1().a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_mod_i32(1i, i32(-1i) * -618i);
    let var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(func_6(func_1(), false), _wgslsmith_dot_vec2_u32(firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c.x, 10046u), u_input.d.zx)), u_input.c.xz)), u_input.c.xx);
    var var_1 = -(((~0i << (u_input.b % 32u)) & -1125i) >> (~firstLeadingBit(abs(u_input.a.x)) % 32u));
    let var_2 = vec3<bool>(all(vec3<bool>(any(vec3<bool>(false, true, false)), true, true)) && !(_wgslsmith_clamp_i32(1i, -47037i, -1i) < ~(-1i)), true, func_5(vec4<i32>(1i, 1i, 1i, 1i)).b.x);
    global1 = -2147483647i;
    var var_3 = func_5(_wgslsmith_clamp_vec4_i32(firstTrailingBit(_wgslsmith_sub_vec4_i32(-vec4<i32>(1i, -13295i, 1i, -17731i), vec4<i32>(24475i, 1i, 45737i, -48394i))), ~(~_wgslsmith_mod_vec4_i32(vec4<i32>(0i, 1i, -2147483647i, -6275i), vec4<i32>(20471i, 12923i, -2147483647i, -1i))), -vec4<i32>(~5925i, 41387i, _wgslsmith_mult_i32(0i, -1056i), select(-17533i, 0i, true))));
    let var_4 = var_3.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-func_5(vec4<i32>(var_4.x, 2147483647i, var_4.x, -12054i)).c.b)))));
}

