struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
    c: i32,
    d: vec3<f32>,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<i32>(10618i, -11139i), vec2<i32>(-4974i, -10462i));

var<private> global1: array<vec4<i32>, 8> = array<vec4<i32>, 8>(vec4<i32>(-55951i, 0i, 1i, 0i), vec4<i32>(i32(-2147483648), -3616i, 26968i, -2277i), vec4<i32>(-36413i, 0i, 0i, 8483i), vec4<i32>(773i, -1i, 16162i, -36274i), vec4<i32>(0i, i32(-2147483648), i32(-2147483648), -13560i), vec4<i32>(-17609i, -1i, -56368i, -15187i), vec4<i32>(-35802i, 1i, 2147483647i, 1i), vec4<i32>(0i, 1i, i32(-2147483648), i32(-2147483648)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<i32>, arg_2: i32) -> f32 {
    global1 = array<vec4<i32>, 8>();
    global0 = Struct_3(arg_1.yy, firstTrailingBit(vec2<i32>(_wgslsmith_sub_i32(min(global0.a.x, u_input.c), -1i >> (u_input.d % 32u)), u_input.e.x)));
    let var_0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(385f - 791f)))), 2436f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-515f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(108f)))), 1f), false | (max(u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.d, u_input.d), vec3<u32>(u_input.a.x, 1u, 1u))) != 1u), 1u);
    let var_1 = global1[_wgslsmith_index_u32(1u, 8u)];
    global0 = Struct_3(reverseBits(-(vec2<i32>(1i, arg_1.x) ^ _wgslsmith_mod_vec2_i32(global0.b, var_1.yx))), -arg_1.zy);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-408f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -124f)), 1169f)))) * var_0.a.x);
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(-723f)), _wgslsmith_f_op_f32(621f * 763f), _wgslsmith_f_op_f32(636f * 242f))), vec3<f32>(1202f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<bool>(false, true), global1[_wgslsmith_index_u32(1u, 8u)], -53465i)) - _wgslsmith_f_op_f32(2170f + -734f)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(214f, 1924f), _wgslsmith_f_op_f32(f32(-1f) * -203f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1216f + -503f), _wgslsmith_f_op_f32(round(-1064f))))), _wgslsmith_f_op_f32(func_3(vec2<bool>(false, false), _wgslsmith_add_vec4_i32(~global1[_wgslsmith_index_u32(4294967295u, 8u)], vec4<i32>(u_input.c, -18520i, 19220i, global0.b.x)), -u_input.e.x << (0u % 32u))), 1830f), false));
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(990f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(-601f, var_0.x)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1f, 1467f)), _wgslsmith_f_op_f32(ceil(var_0.x)))))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-var_1), u_input.e.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(-var_0.x)))))), (9939u | abs(~u_input.d)) >= u_input.a.x);
    var var_3 = _wgslsmith_div_vec2_i32(~_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, global0.b.x), firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, global0.b.x), vec2<i32>(703i, global0.b.x)))), ~select(global0.a, _wgslsmith_add_vec2_i32(u_input.e.yz, abs(u_input.e.xx)), select(select(vec2<bool>(false, true), vec2<bool>(false, var_2.d), vec2<bool>(true, var_2.d)), !vec2<bool>(false, var_2.d), any(vec4<bool>(var_2.d, false, false, true)))));
    var var_4 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(826f)) * _wgslsmith_f_op_f32(-var_2.c)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(763f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.c * var_2.c))) - _wgslsmith_f_op_f32(step(var_2.c, _wgslsmith_f_op_f32(select(-132f, -320f, false)))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), var_1) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.a)) + -212f) - _wgslsmith_div_f32(_wgslsmith_div_f32(-873f, var_2.c), _wgslsmith_f_op_f32(-var_2.c))))));
    return Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(394f, -770f, var_1, -669f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1055f, 1000f, var_0.x, 528f) - vec4<f32>(-1829f, 921f, -370f, var_2.a))))), vec4<f32>(_wgslsmith_f_op_f32(select(var_2.a, 677f, false)), var_2.c, -1000f, _wgslsmith_f_op_f32(max(var_1, _wgslsmith_f_op_f32(sign(var_0.x))))), select(!(!vec4<bool>(var_2.d, var_2.d, var_2.d, false)), select(vec4<bool>(var_2.d, false, var_2.d, var_2.d), vec4<bool>(var_2.d, true, var_2.d, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, var_2.d, true, any(vec4<bool>(var_2.d, true, true, true)))))), var_2.d, 11132u);
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> Struct_4 {
    return Struct_4(Struct_3(vec2<i32>(_wgslsmith_mod_i32(countOneBits(global0.b.x), arg_1), _wgslsmith_add_i32(min(-2147483647i, -1946i), firstLeadingBit(arg_1))), vec2<i32>(global0.a.x, arg_1)), vec3<u32>(~(~(~arg_0.c)), 0u, ~arg_0.c), arg_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(ceil(-534f)), arg_0.a.x, 384f), arg_0.a.wzy))), firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-13778i, arg_1, 1i), select(vec3<i32>(arg_1, global0.b.x, u_input.e.x), u_input.e, false)), _wgslsmith_mult_i32(2147483647i, _wgslsmith_sub_i32(-49576i, arg_1)))));
}

fn func_1(arg_0: vec3<i32>) -> vec2<bool> {
    var var_0 = func_4(func_2(), min(-23713i, _wgslsmith_mult_i32(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, 0i), u_input.e.yx))) >> (u_input.a.x % 32u));
    var_0 = Struct_4(func_4(Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1329f, var_0.d.x, 832f, 429f)), 0i == global0.a.x, var_0.b.x << (func_4(Struct_2(vec4<f32>(var_0.d.x, -164f, 2709f, -561f), false, 1u), 2147483647i).b.x % 32u)), global0.b.x).a, abs(~vec3<u32>(u_input.d, u_input.d, var_0.b.x) & (select(vec3<u32>(var_0.b.x, var_0.b.x, var_0.b.x), var_0.b, true) >> (firstLeadingBit(vec3<u32>(u_input.b.x, var_0.b.x, var_0.b.x)) % vec3<u32>(32u)))), global0.a.x | (28500i << (u_input.b.x % 32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.d - _wgslsmith_f_op_vec3_f32(-var_0.d))), arg_0.x);
    let var_1 = 44953u;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.d.x, var_0.d.x) + 924f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.x) - _wgslsmith_f_op_f32(-1269f + -896f))) + _wgslsmith_div_f32(var_0.d.x, var_0.d.x)) < var_0.d.x;
    global1 = array<vec4<i32>, 8>();
    return !(!(!select(select(vec2<bool>(true, var_2), vec2<bool>(true, var_2), vec2<bool>(false, true)), vec2<bool>(var_2, true), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -2024f);
    var var_1 = Struct_3(-vec2<i32>(2099i, -_wgslsmith_sub_i32(2147483647i, 2147483647i)), vec2<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.a.x, 2147483647i, 2147483647i, u_input.c) >> (vec4<u32>(4294967295u, 66809u, u_input.d, 4294967295u) % vec4<u32>(32u)), select(global1[_wgslsmith_index_u32(0u, 8u)], vec4<i32>(2147483647i, -34462i, global0.a.x, global0.b.x), true))) | global0.b);
    let var_2 = true;
    var var_3 = select(~u_input.e.yz << (u_input.a.yz % vec2<u32>(32u)), vec2<i32>(global0.a.x, u_input.c), select(func_1(~(u_input.e ^ u_input.e)), vec2<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.e.x), vec2<i32>(global0.a.x, -38439i)) > abs(-1i), any(func_1(vec3<i32>(-1i, -71876i, var_1.b.x)))), !(!vec2<bool>(var_2, true))));
    var var_4 = _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(select(vec3<u32>(1u, func_4(Struct_2(vec4<f32>(-1033f, 982f, var_0, var_0), var_2, u_input.b.x), var_3.x).b.x, ~u_input.a.x), ~vec3<u32>(u_input.b.x, 22230u, u_input.b.x) >> (u_input.b.zww % vec3<u32>(32u)), var_2), vec3<u32>(~u_input.b.x, 1u, ~u_input.a.x) << (_wgslsmith_add_vec3_u32(u_input.b.xzw, ~u_input.a) % vec3<u32>(32u))), ~u_input.a | _wgslsmith_div_vec3_u32(u_input.b.yyx, min(~u_input.b.wyy, reverseBits(u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(select(-1i, u_input.e.x, 52601u < u_input.b.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec2<bool>(false, false), global1[_wgslsmith_index_u32(u_input.a.x, 8u)] >> (vec4<u32>(27694u, 31618u, u_input.a.x, u_input.b.x) % vec4<u32>(32u)), -2959i)), 529f))), 9955u);
}

