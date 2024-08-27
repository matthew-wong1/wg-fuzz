struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec4<f32>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: u32,
}

struct Struct_3 {
    a: bool,
    b: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<u32>,
    d: vec2<f32>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 25>;

var<private> global1: Struct_5 = Struct_5(Struct_3(false, 33222i));

var<private> global2: array<i32, 23> = array<i32, 23>(2147483647i, -15151i, -1i, i32(-2147483648), 14917i, 2147483647i, 1i, 27026i, -49692i, -1i, -1i, 10705i, i32(-2147483648), 34838i, 11747i, 1i, 38780i, 2147483647i, -1i, -2141i, -65219i, 28983i, 1i);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec2<f32>) -> f32 {
    global2 = array<i32, 23>();
    var var_0 = arg_0.x;
    var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - arg_0.x) * -1330f))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-442f * arg_0.x) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -755f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, global1.a.a)) - _wgslsmith_f_op_f32(1220f - arg_0.x))))));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: Struct_1, arg_3: Struct_3) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.d * 231f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2.a.x, _wgslsmith_f_op_f32(-711f + arg_2.c.x))) + arg_2.a.x) + _wgslsmith_f_op_f32(select(arg_2.a.x, arg_2.d, true))));
    global2 = array<i32, 23>();
    let var_1 = -373f;
    let var_2 = arg_2.a;
    global0 = array<vec4<u32>, 25>();
    return reverseBits(u_input.a.x);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: vec4<u32>) -> u32 {
    var var_0 = ~vec3<i32>(global1.a.b, u_input.b.x, 2147483647i);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(arg_1.x)))), arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, arg_1.x)) + _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(arg_1.zz + arg_1.zz)))) * arg_1.x));
    var_1 = arg_1.x;
    var var_2 = Struct_1(arg_1.xy, all(!select(!vec4<bool>(true, true, global1.a.a, true), vec4<bool>(true, true, global1.a.a, global1.a.a), vec4<bool>(true, false, false, global1.a.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(arg_1.x)), -1000f, arg_1.x, _wgslsmith_f_op_f32(arg_1.x * 2059f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-336f, 1194f, arg_1.x, arg_1.x), vec4<f32>(-677f, arg_1.x, arg_1.x, 1120f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2564f * 339f)), !(max(1u, func_3(-1i, true, Struct_1(vec2<f32>(arg_1.x, -202f), global1.a.a, vec4<f32>(659f, arg_1.x, arg_1.x, 867f), 107f, global1.a.a), Struct_3(false, 9835i))) >= arg_2.x));
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-999f, -1000f)))) <= 1058f;
    return 169u;
}

fn func_4(arg_0: u32, arg_1: u32) -> bool {
    let var_0 = Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -338f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, -341f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(899f, -2212f) + vec2<f32>(138f, -947f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1405f, 958f) + vec2<f32>(609f, -1047f))))), global1.a.a, vec4<f32>(_wgslsmith_f_op_f32(-1713f + 539f), -1373f, _wgslsmith_f_op_f32(min(1261f, _wgslsmith_f_op_f32(-1391f - 1066f))), 945f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -2491f))), true), Struct_2(Struct_1(vec2<f32>(-982f, 950f), all(!vec2<bool>(global1.a.a, global1.a.a)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(473f, -270f, -1526f, -358f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-487f, 474f, -560f, 347f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(406f, 921f)) - 441f), !global1.a.a), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-233f, 1000f))), !(!global1.a.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-752f, 898f, -1127f, -625f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2256f, -1000f)), true), vec3<u32>(u_input.a.x, max(1u, ~arg_0), 1u), arg_1), vec2<u32>(_wgslsmith_mult_u32(19016u, ~arg_0), 3498u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, -1625f))))));
    let var_1 = Struct_5(Struct_3(var_0.b.b.e, _wgslsmith_add_i32(global1.a.b, _wgslsmith_div_i32(-2147483647i, countOneBits(global2[_wgslsmith_index_u32(50774u, 23u)])))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1529f) * _wgslsmith_f_op_f32(ceil(1168f))) - var_0.b.b.a.x) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-187f + -1000f), 249f))));
    return all(vec3<bool>(global1.a.a, all(select(vec4<bool>(false, global1.a.a, var_0.b.a.e, true), select(vec4<bool>(global1.a.a, var_1.a.a, false, true), vec4<bool>(var_1.a.a, var_0.b.b.b, global1.a.a, false), false), select(vec4<bool>(global1.a.a, var_0.a.b, true, var_0.b.a.b), vec4<bool>(var_1.a.a, global1.a.a, false, global1.a.a), true))), all(!vec4<bool>(global1.a.a, global1.a.a, var_0.b.a.e, false))));
}

fn func_5(arg_0: vec4<bool>, arg_1: i32, arg_2: bool) -> Struct_5 {
    var var_0 = u_input.a.x | 111655u;
    let var_1 = _wgslsmith_div_vec3_i32(reverseBits(firstTrailingBit(reverseBits(vec3<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 23u)], 2147483647i, global1.a.b)))) << (abs(~vec3<u32>(0u, u_input.a.x, u_input.a.x)) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(-vec3<i32>(arg_1, 75653i, global1.a.b), -vec3<i32>(u_input.b.x, -1i, global1.a.b) & _wgslsmith_div_vec3_i32(vec3<i32>(global1.a.b, 22718i, 4954i), vec3<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 23u)], u_input.b.x, global1.a.b))) << (u_input.a.www % vec3<u32>(32u)));
    var var_2 = arg_0.yx;
    let var_3 = var_1.x;
    var_0 = _wgslsmith_mult_u32(abs(max(func_1(~vec3<i32>(global2[_wgslsmith_index_u32(0u, 23u)], -9271i, 7247i), vec3<f32>(-637f, -249f, 1287f), _wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(13233u, 82140u, u_input.a.x, 4294967295u))), _wgslsmith_dot_vec2_u32(u_input.a.zy, ~vec2<u32>(u_input.a.x, 58113u)))), _wgslsmith_mod_u32(~0u, u_input.a.x));
    return Struct_5(Struct_3(var_2.x, 22726i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_div_vec2_u32(vec2<u32>(~u_input.a.x, ~0u) >> (u_input.a.zz % vec2<u32>(32u)), firstTrailingBit(u_input.a.yy & u_input.a.zx));
    var var_1 = func_5(vec4<bool>(all(select(vec4<bool>(true, global1.a.a, global1.a.a, true), !vec4<bool>(true, global1.a.a, global1.a.a, global1.a.a), select(vec4<bool>(global1.a.a, global1.a.a, true, true), vec4<bool>(global1.a.a, global1.a.a, true, global1.a.a), global1.a.a))), global1.a.a, func_4(countOneBits(24153u), _wgslsmith_mult_u32(func_1(vec3<i32>(global2[_wgslsmith_index_u32(var_0.x, 23u)], -20976i, 38184i), vec3<f32>(-376f, 1048f, -169f), u_input.a), u_input.a.x)), true), _wgslsmith_add_i32(firstLeadingBit(i32(-1i) * -5423i), 35818i), all(select(select(!vec3<bool>(true, global1.a.a, global1.a.a), vec3<bool>(false, false, true), true), !(!vec3<bool>(false, false, global1.a.a)), vec3<bool>(global1.a.a, func_4(var_0.x, var_0.x), true))));
    global1 = Struct_5(Struct_3(any(vec4<bool>(all(vec2<bool>(global1.a.a, global1.a.a)), global1.a.a, global1.a.a, func_5(vec4<bool>(false, global1.a.a, false, false), -3650i, true).a.a)), _wgslsmith_div_i32(_wgslsmith_add_i32(abs(global1.a.b), _wgslsmith_sub_i32(global2[_wgslsmith_index_u32(u_input.a.x, 23u)], var_1.a.b)), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.a.b, global2[_wgslsmith_index_u32(0u, 23u)], var_1.a.b, -1i), vec4<i32>(u_input.b.x, -28251i, u_input.b.x, global2[_wgslsmith_index_u32(u_input.a.x, 23u)])), _wgslsmith_mod_i32(0i, 40301i)))));
    var var_2 = select(u_input.a.x, _wgslsmith_clamp_u32((9109u | var_0.x) ^ ~1u, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(u_input.a.zxx, u_input.a.zxy), abs(13778u)), u_input.a.x), !all(!vec4<bool>(var_1.a.a, false, var_1.a.a, global1.a.a))) >= (~firstTrailingBit(var_0.x >> (0u % 32u)) << (func_1(vec3<i32>(-15976i, _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(var_0.x, 23u)], -5223i), firstTrailingBit(var_1.a.b)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(213f, -208f, -393f)))), global0[_wgslsmith_index_u32(~var_0.x, 25u)] | (u_input.a | vec4<u32>(u_input.a.x, var_0.x, 66955u, u_input.a.x))) % 32u));
    var var_3 = vec2<bool>(!global1.a.a, any(vec2<bool>(any(vec2<bool>(false, global1.a.a)), any(select(vec2<bool>(global1.a.a, global1.a.a), vec2<bool>(false, true), vec2<bool>(false, var_1.a.a))))));
    var_3 = select(!(!select(!vec2<bool>(true, global1.a.a), vec2<bool>(var_3.x, true), vec2<bool>(true, false))), select(select(select(select(vec2<bool>(var_1.a.a, global1.a.a), vec2<bool>(true, global1.a.a), var_3.x), vec2<bool>(var_1.a.a, true), all(vec2<bool>(global1.a.a, false))), vec2<bool>(all(vec4<bool>(global1.a.a, false, var_3.x, global1.a.a)), !var_1.a.a), vec2<bool>(!global1.a.a, true)), vec2<bool>(true, true), true), true);
    let var_4 = global1.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(7719i, ~(17779u ^ var_0.x) >> (_wgslsmith_div_u32(_wgslsmith_div_u32(~u_input.a.x, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(var_0.x, u_input.a.x, u_input.a.x, u_input.a.x))), 1u) % 32u));
}

