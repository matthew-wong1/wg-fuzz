struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: Struct_1,
    d: vec4<u32>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<f32>,
    d: vec2<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec3<u32>(24595u, 4294967295u, 0u), 178f, true), vec2<u32>(47559u, 10127u), Struct_1(vec3<u32>(0u, 3091u, 37384u), 1552f, false), Struct_1(vec3<u32>(36814u, 4294967295u, 4294967295u), -1045f, true), 1u);

var<private> global1: array<vec2<u32>, 22> = array<vec2<u32>, 22>(vec2<u32>(53090u, 1u), vec2<u32>(1u, 18043u), vec2<u32>(110484u, 2855u), vec2<u32>(39822u, 0u), vec2<u32>(2596u, 0u), vec2<u32>(1u, 3778u), vec2<u32>(7529u, 4294967295u), vec2<u32>(39197u, 63012u), vec2<u32>(36474u, 0u), vec2<u32>(0u, 16456u), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(0u, 92151u), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 96240u), vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<u32>(0u, 24307u), vec2<u32>(59342u, 0u), vec2<u32>(0u, 1u), vec2<u32>(10521u, 1u), vec2<u32>(24210u, 32596u));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> vec3<u32> {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(global0.a.b, 585f), _wgslsmith_f_op_f32(global0.c.b + -264f), _wgslsmith_f_op_f32(max(-1875f, -1168f))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -212f), -1846f, 119f)) * vec3<f32>(_wgslsmith_f_op_f32(global0.c.b * _wgslsmith_f_op_f32(min(global0.c.b, global0.d.b))), 885f, -862f)), !select(select(select(vec4<bool>(global0.a.c, global0.c.c, true, global0.d.c), vec4<bool>(true, false, global0.d.c, global0.c.c), vec4<bool>(false, false, global0.c.c, global0.a.c)), select(vec4<bool>(global0.c.c, global0.d.c, false, global0.c.c), vec4<bool>(global0.a.c, true, global0.d.c, global0.c.c), vec4<bool>(global0.a.c, false, global0.d.c, false)), global0.a.c), vec4<bool>(any(vec2<bool>(global0.c.c, false)), all(vec4<bool>(false, global0.a.c, global0.d.c, global0.d.c)), -1i < u_input.b, true), vec4<bool>(true, true, true, true)), global0.a, vec4<u32>(~global0.c.a.x, u_input.a.x, global0.d.a.x, ~(~(u_input.a.x << (0u % 32u)))), global0.c.c);
    var var_1 = var_0;
    var_1 = Struct_3(var_1.a, !var_1.b, global0.c, vec4<u32>(~(~0u), 0u & _wgslsmith_dot_vec2_u32(~var_1.d.wz, global0.c.a.yx), _wgslsmith_add_u32(~abs(var_0.c.a.x), 15596u), var_1.c.a.x | var_1.c.a.x), all(!var_0.b));
    var_1 = var_0;
    global1 = array<vec2<u32>, 22>();
    return vec3<u32>(firstTrailingBit(global0.e), 4294967295u, 25327u);
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: bool, arg_3: vec4<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1239f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -771f) * 1f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1437f, global0.a.b)), -379f))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2289f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-137f * -635f)))));
    var var_1 = !arg_1.c;
    let var_2 = Struct_1(reverseBits(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-905f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - arg_0))), ~1u <= ~_wgslsmith_dot_vec3_u32(u_input.a >> (u_input.a % vec3<u32>(32u)), ~arg_1.a));
    var_0 = all(arg_3.yww);
    var var_3 = true;
    return Struct_2(var_2, vec2<u32>(~abs(1u), 26102u), global0.d, Struct_1(arg_1.a, _wgslsmith_f_op_f32(arg_1.b * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b) + -1553f)), !var_2.c), global0.e);
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: f32) -> Struct_1 {
    var var_0 = func_2(-1256f, Struct_1(~(~u_input.a) ^ (~u_input.a ^ ~u_input.a), 1481f, (false | global0.a.c) && false), arg_0.c, vec4<bool>(arg_0.c, u_input.b >= u_input.b, true, all(vec3<bool>(true, false, true))));
    let var_1 = var_0.a;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, -897f, arg_2))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b, -1831f, global0.d.b) * vec3<f32>(-1060f, var_1.b, var_0.a.b)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, global0.a.b, -717f)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-266f, 333f, arg_1)) - vec3<f32>(1f, 1f, 1f))))));
    let var_3 = Struct_2(var_0.d, _wgslsmith_mod_vec2_u32(~(~var_1.a.zz), firstTrailingBit(var_0.c.a.xz)) & ~_wgslsmith_mod_vec2_u32(~global0.a.a.zy, vec2<u32>(var_0.d.a.x, var_1.a.x)), func_2(var_1.b, Struct_1(func_3(), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-arg_0.b)), var_1.c & (arg_0.c && false)), select(true, true, !all(vec4<bool>(true, var_1.c, false, global0.a.c))), !select(!vec4<bool>(arg_0.c, false, arg_0.c, arg_0.c), !vec4<bool>(false, arg_0.c, global0.a.c, false), var_1.a.x <= 25995u)).c, global0.c, arg_0.a.x);
    global0 = func_2(func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(arg_0.b)))), global0.c, var_3.a.c != !any(vec2<bool>(var_3.c.c, var_0.a.c)), vec4<bool>(global0.c.c || true, global0.c.c, true, true)).d.b, Struct_1(global0.d.a, var_0.a.b, var_0.c.c), true, !(!vec4<bool>(all(vec3<bool>(var_1.c, arg_0.c, var_0.c.c)), true, !arg_0.c, all(vec2<bool>(var_1.c, global0.a.c)))));
    return var_0.d;
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> f32 {
    global1 = array<vec2<u32>, 22>();
    let var_0 = _wgslsmith_div_vec2_i32(firstTrailingBit(~(-(vec2<i32>(-2147483647i, u_input.b) & vec2<i32>(-4423i, u_input.b)))), max(abs(vec2<i32>(1i, countOneBits(u_input.b))), vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i, 10701i, 2147483647i, u_input.b), vec4<i32>(1i, u_input.b, 1749i, u_input.b)), select(vec4<i32>(u_input.b, u_input.b, -2147483647i, u_input.b), vec4<i32>(2147483647i, 2147483647i, -23732i, u_input.b), vec4<bool>(true, arg_1.c.c, arg_1.a.c, arg_3.c))), 2147483647i)));
    let var_1 = vec4<u32>(18780u, countOneBits(1u) & arg_1.b.x, 1u, ((abs(u_input.a.x) | global0.e) >> (_wgslsmith_mult_u32(arg_1.b.x, ~arg_1.c.a.x) % 32u)) & ~(firstTrailingBit(arg_2.e) << (~arg_3.a.x % 32u)));
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(150f, global0.a.b, -101f) + vec3<f32>(global0.a.b, arg_3.b, arg_0)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-466f, arg_2.a.b, arg_0)) - vec3<f32>(1804f, 252f, -1589f)) * vec3<f32>(_wgslsmith_f_op_f32(-arg_3.b), global0.c.b, -2067f)), false)), !select(vec4<bool>(true, !global0.a.c, u_input.b < 0i, arg_3.c), vec4<bool>(arg_1.c.c && false, true, arg_3.c | false, arg_3.c), true), arg_3, _wgslsmith_div_vec4_u32(abs(~(vec4<u32>(1u, var_1.x, 4294967295u, 0u) << (var_1 % vec4<u32>(32u)))), vec4<u32>(firstTrailingBit(0u << (global0.e % 32u)), 47160u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 65800u, 2338u, global0.b.x), ~vec4<u32>(0u, 1u, 22364u, 0u)), _wgslsmith_dot_vec3_u32(select(arg_2.a.a, vec3<u32>(arg_2.c.a.x, 0u, u_input.a.x), false), select(vec3<u32>(64768u, 1u, 20769u), global0.a.a, arg_1.a.c)))), _wgslsmith_f_op_f32(-arg_0) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(345f)) + _wgslsmith_f_op_f32(ceil(1514f)))));
    global1 = array<vec2<u32>, 22>();
    return 1634f;
}

fn func_5(arg_0: f32, arg_1: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(floor(arg_1));
    var var_1 = true;
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1069f)) * arg_1), _wgslsmith_f_op_f32(-752f + _wgslsmith_f_op_f32(select(global0.c.b, arg_0, global0.d.c)))))), vec4<bool>(global0.a.c, 64867u < global0.e, _wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.b, u_input.b, -20837i), vec3<i32>(u_input.b, -1i, u_input.b), vec3<bool>(true, global0.d.c, true)), -vec3<i32>(1i, 2147483647i, 21024i)) <= firstLeadingBit(~1i), true), global0.c, _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 0u & _wgslsmith_mod_u32(u_input.a.x, u_input.a.x), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 107012u), vec2<u32>(u_input.a.x, 37349u)), ~(~1u)), vec4<u32>(_wgslsmith_mod_u32(u_input.a.x, 19101u), ~global0.c.a.x, ~(~3739u), _wgslsmith_dot_vec3_u32(u_input.a ^ vec3<u32>(global0.b.x, global0.c.a.x, global0.a.a.x), vec3<u32>(63856u, 24222u, 4294967295u) & vec3<u32>(u_input.a.x, 0u, u_input.a.x)))), false);
    let var_3 = Struct_2(var_2.c, reverseBits(vec2<u32>(~44688u, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x))) & global0.c.a.yx, func_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + global0.d.b) * _wgslsmith_f_op_f32(abs(736f))))), global0.a, all(vec4<bool>(true, true, true, true)), vec4<bool>(!func_2(-712f, global0.c, global0.a.c, vec4<bool>(var_2.e, global0.d.c, var_2.c.c, global0.d.c)).a.c, !var_2.b.x, global0.d.c, false)).d, global0.c, 50607u);
    var var_4 = var_2.b.wzy;
    return Struct_1(vec3<u32>(firstTrailingBit(~0u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(11228u, 4294967295u, var_3.b.x, var_2.c.a.x), vec4<u32>(9318u, var_3.b.x, 1u, u_input.a.x)) % 32u)), reverseBits(global0.e), var_2.c.a.x ^ var_2.d.x), var_3.d.b, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec2<i32>(u_input.b, -5825i), vec2<i32>(_wgslsmith_div_i32(u_input.b, _wgslsmith_mult_i32(u_input.b, -27364i)), 2147483647i), true);
    let var_1 = ~vec2<i32>(-((u_input.b | var_0.x) & ~var_0.x), 1i);
    var var_2 = Struct_2(global0.d, ~vec2<u32>(~(u_input.a.x << (10409u % 32u)), ~(~7156u)), func_5(-629f, _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1252f, global0.d.b))), Struct_2(Struct_1(global0.c.a, -300f, true), _wgslsmith_add_vec2_u32(global0.a.a.xy, global1[_wgslsmith_index_u32(0u, 22u)]), func_1(global0.d, -289f, -1254f), func_1(Struct_1(vec3<u32>(u_input.a.x, u_input.a.x, global0.d.a.x), global0.c.b, true), 645f, global0.d.b), u_input.a.x >> (36335u % 32u)), func_2(_wgslsmith_f_op_f32(trunc(866f)), Struct_1(global0.c.a, global0.c.b, true), global0.d.c, select(vec4<bool>(global0.d.c, false, global0.c.c, true), vec4<bool>(true, true, global0.d.c, global0.a.c), vec4<bool>(global0.c.c, global0.a.c, true, true))), Struct_1(global0.a.a, _wgslsmith_f_op_f32(f32(-1f) * -1373f), global0.d.c | global0.c.c)))), Struct_1(u_input.a, func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.b)), -620f).b, false), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global0.d.a.x, 20965u), global0.c.a ^ vec3<u32>(global0.d.a.x, global0.c.a.x, u_input.a.x)) | u_input.a.x);
    global1 = array<vec2<u32>, 22>();
    global0 = Struct_2(global0.d, firstLeadingBit(global0.b), func_1(func_1(func_1(func_1(var_2.c, global0.d.b, -755f), 108f, _wgslsmith_f_op_f32(global0.c.b + -108f)), 361f, func_1(Struct_1(vec3<u32>(1u, global0.d.a.x, u_input.a.x), 883f, global0.d.c), -1843f, _wgslsmith_f_op_f32(trunc(var_2.c.b))).b), -2707f, 752f), Struct_1(~var_2.c.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1558f * global0.c.b)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.b))), func_5(global0.d.b, var_2.d.b).c), var_2.b.x);
    global0 = Struct_2(Struct_1(_wgslsmith_mult_vec3_u32(~firstTrailingBit(u_input.a), _wgslsmith_add_vec3_u32(u_input.a, global0.d.a)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1600f)))), (2147483647i | -var_1.x) >= reverseBits(u_input.b)), vec2<u32>(~19963u, countOneBits(32342u) >> (global0.e % 32u)), func_2(-2630f, Struct_1(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(757u, u_input.a.x, u_input.a.x), vec3<u32>(10081u, global0.e, 64655u)), ~vec3<u32>(var_2.b.x, global0.a.a.x, u_input.a.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(692f + var_2.d.b), _wgslsmith_f_op_f32(-1324f * var_2.d.b))), any(select(vec3<bool>(false, var_2.d.c, var_2.c.c), vec3<bool>(global0.a.c, var_2.d.c, var_2.a.c), vec3<bool>(var_2.c.c, false, var_2.c.c)))), false, select(!(!vec4<bool>(global0.a.c, var_2.a.c, false, true)), select(select(vec4<bool>(true, global0.d.c, global0.c.c, false), vec4<bool>(var_2.a.c, false, var_2.c.c, global0.d.c), false), !vec4<bool>(true, var_2.c.c, global0.a.c, false), var_1.x > u_input.b), !select(vec4<bool>(global0.a.c, false, true, true), vec4<bool>(false, false, global0.d.c, global0.c.c), vec4<bool>(false, false, false, false)))).c, global0.c, var_2.d.a.x);
    var var_3 = u_input.a.x << (~u_input.a.x % 32u);
    let var_4 = select(firstLeadingBit(~vec4<u32>(u_input.a.x, global0.d.a.x, u_input.a.x, var_2.a.a.x)) ^ ~(~vec4<u32>(37191u, 1u, var_2.a.a.x, 45955u)), ~vec4<u32>(abs(~43671u), var_2.b.x, _wgslsmith_add_u32(1u, ~4294967295u), 50500u), true);
    let var_5 = func_2(-972f, var_2.a, global0.c.c, vec4<bool>(false, all(vec2<bool>(25897u > var_2.d.a.x, true)), true, any(select(!vec3<bool>(true, var_2.d.c, global0.c.c), select(vec3<bool>(var_2.c.c, true, false), vec3<bool>(global0.a.c, false, var_2.c.c), vec3<bool>(false, global0.c.c, false)), true)))).c;
    let x = u_input.a;
    s_output = StorageBuffer(var_1, ~(min(~(-30170i), ~36394i) | ~abs(var_1.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.b, _wgslsmith_f_op_f32(733f + 420f), _wgslsmith_div_f32(var_2.a.b, global0.a.b), _wgslsmith_f_op_f32(abs(global0.d.b)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(229f, var_5.b, 176f, global0.a.b), vec4<f32>(-403f, var_2.c.b, -405f, 1670f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1125f, var_5.b, var_5.b, global0.d.b) * vec4<f32>(-241f, 1866f, 453f, global0.c.b))))), vec2<f32>(-532f, global0.c.b), vec4<i32>(-var_0.x, _wgslsmith_mult_i32(_wgslsmith_div_i32(i32(-1i) * -1i, u_input.b >> (global0.d.a.x % 32u)), select(var_1.x, -2147483647i, true) ^ firstTrailingBit(u_input.b)), _wgslsmith_mult_i32(var_1.x ^ -2147483647i, -20880i), -var_1.x));
}

