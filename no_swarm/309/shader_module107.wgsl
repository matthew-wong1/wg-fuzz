struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: u32,
    b: vec2<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = Struct_3(1000f);
    let var_1 = var_0.a;
    let var_2 = var_0.a;
    var var_3 = Struct_4(u_input.a.x, select(select(vec2<bool>(true, true), vec2<bool>(false, true), !(arg_0.a.x <= -1i)), vec2<bool>(all(vec4<bool>(true, false, true, false)), false && all(vec2<bool>(false, false))), all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), true))), Struct_2(~(-_wgslsmith_mult_i32(-2147483647i, arg_0.a.x)), arg_0, ~(~countOneBits(arg_0.a))));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), var_0.a) + -838f)) + _wgslsmith_f_op_f32(f32(-1f) * -1576f));
    return _wgslsmith_div_u32(var_3.a, u_input.a.x);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: bool, arg_3: vec4<i32>) -> Struct_3 {
    let var_0 = false;
    let var_1 = vec4<bool>(any(select(vec3<bool>(var_0 & true, true, var_0 && var_0), !select(vec3<bool>(false, var_0, true), vec3<bool>(true, true, var_0), false), var_0)), !arg_2, (~(~1u) < func_3(Struct_1(arg_3.yzw))) || any(select(select(vec4<bool>(arg_2, arg_2, arg_2, true), vec4<bool>(arg_2, false, false, var_0), vec4<bool>(true, false, arg_2, true)), vec4<bool>(arg_2, arg_2, arg_2, false), any(vec2<bool>(var_0, arg_2)))), all(!select(select(vec3<bool>(arg_2, var_0, false), vec3<bool>(false, arg_2, true), vec3<bool>(arg_2, arg_2, var_0)), vec3<bool>(false, true, var_0), var_0)));
    let var_2 = Struct_1(arg_1);
    var var_3 = Struct_1(-_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(-1i, arg_3.x), arg_3.x, min(var_2.a.x, arg_3.x)), arg_3.zxx));
    let var_4 = Struct_2(_wgslsmith_div_i32(-_wgslsmith_add_i32(arg_3.x, abs(-2147483647i)), ~42537i), var_2, arg_1);
    return Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-1838f)))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-244f, 1000f)), -860f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-362f, -2092f)))))));
}

fn func_4(arg_0: Struct_3) -> Struct_3 {
    let var_0 = Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(firstLeadingBit(abs(3232i)), -7353i, 0i), firstLeadingBit(vec3<i32>(countOneBits(-20622i), _wgslsmith_mod_i32(1i, -21818i), select(76858i, 0i, false))), ~vec3<i32>(1i, 1i, 1i) << (~(~vec3<u32>(45647u, u_input.a.x, 29169u)) % vec3<u32>(32u))));
    let var_1 = Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(-68539i, var_0.a.x, ~abs(17248i)), vec3<i32>(-var_0.a.x, var_0.a.x, abs(43122i))));
    return Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(933f, -1000f)) + arg_0.a));
}

fn func_1(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: bool) -> f32 {
    var var_0 = func_4(func_2(_wgslsmith_mod_vec2_u32(~arg_1.yx, u_input.a), arg_2.c, all(vec3<bool>(arg_3, any(vec2<bool>(arg_3, arg_3)), arg_3)), vec4<i32>(_wgslsmith_dot_vec2_i32(~arg_2.c.xy, arg_2.c.zy & vec2<i32>(arg_2.c.x, 21562i)), firstLeadingBit(_wgslsmith_mult_i32(arg_2.b.a.x, 26513i)), arg_2.c.x, (8236i | arg_2.a) & arg_2.c.x)));
    let var_1 = arg_2.c.x;
    let var_2 = arg_3;
    var var_3 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.a, -569f))), vec2<f32>(var_0.a, var_0.a), !vec2<bool>(var_2, true))) - vec2<f32>(_wgslsmith_f_op_f32(-316f - var_0.a), _wgslsmith_f_op_f32(var_0.a - var_0.a))))));
    var var_4 = Struct_1(~reverseBits(_wgslsmith_sub_vec3_i32(-vec3<i32>(arg_2.a, -8997i, arg_2.b.a.x), vec3<i32>(1i, -47175i, -2147483647i))));
    return _wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(-var_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -46945i;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-965f, 1000f, -1195f, -1129f) + vec4<f32>(339f, -2001f, 216f, 1169f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-279f, 1342f, 1464f, 2608f))))))));
    var_1 = vec4<f32>(var_1.x, -104f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1f - var_1.x))), _wgslsmith_f_op_f32(ceil(var_1.x)));
    var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1292f, -935f, -851f, -2781f)), vec4<f32>(var_1.x, var_1.x, 2454f, var_1.x))) - vec4<f32>(_wgslsmith_f_op_f32(-829f * var_1.x), var_1.x, 853f, var_1.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_1(u_input.a.x, vec4<u32>(1u, 4294967295u, u_input.a.x, 28267u), Struct_2(var_0, Struct_1(vec3<i32>(var_0, var_0, var_0)), vec3<i32>(-42235i, -1i, 31182i)), true)), _wgslsmith_f_op_f32(select(1490f, var_1.x, true)), _wgslsmith_f_op_f32(-var_1.x), 1959f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 435f, 930f, var_1.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1448f, var_1.x, var_1.x, -461f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, -928f, 129f) + vec4<f32>(-382f, var_1.x, var_1.x, var_1.x))) * vec4<f32>(var_1.x, _wgslsmith_f_op_f32(ceil(var_1.x)), var_1.x, _wgslsmith_f_op_f32(-395f - var_1.x)))));
    var var_2 = Struct_1(-_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(7924i, 9633i, var_0, var_0), vec4<i32>(var_0, var_0, -8154i, -1i)), 33287i), select(min(vec3<i32>(var_0, var_0, 2147483647i), vec3<i32>(1i, var_0, var_0)), ~vec3<i32>(1i, var_0, var_0), true)));
    var_2 = Struct_1(var_2.a);
    let var_3 = select(vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 45070u, u_input.a.x) ^ vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 11268u), vec3<u32>(u_input.a.x, 37118u, u_input.a.x))), vec3<u32>(u_input.a.x, func_3(Struct_1(vec3<i32>(-43765i, var_0, -1i))), ~87959u)), ~u_input.a.x, _wgslsmith_div_u32(u_input.a.x, u_input.a.x), u_input.a.x), ~vec4<u32>(_wgslsmith_add_u32(2116u, ~u_input.a.x), (u_input.a.x | 54302u) >> (1u % 32u), _wgslsmith_mult_u32(1u, u_input.a.x | 1u), u_input.a.x ^ _wgslsmith_mod_u32(u_input.a.x, u_input.a.x)), vec4<bool>(true, any(select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(false, false), u_input.a.x < 1u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + var_1.x) - 124f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) != _wgslsmith_f_op_f32(-398f - _wgslsmith_f_op_f32(func_1(4294967295u, vec4<u32>(u_input.a.x, 39549u, 4294967295u, 1u), Struct_2(var_0, Struct_1(vec3<i32>(var_2.a.x, 2147483647i, 30332i)), vec3<i32>(var_2.a.x, var_0, 2147483647i)), true)))));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(ceil(var_1.x)), _wgslsmith_f_op_f32(-1132f - 1269f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.x, 518f, var_1.x, var_1.x))) * vec4<f32>(-110f, var_1.x, 626f, var_1.x)), vec4<bool>(true, true, true, true))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(798f, var_1.x, 1081f, var_1.x)), vec4<f32>(1000f, var_1.x, -1429f, -932f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1093f, var_1.x, var_1.x, 678f)))), false))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-789f, -1000f, var_1.x, 2240f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, 2456f) * vec4<f32>(-1691f, 1998f, 1187f, var_1.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x) + vec4<f32>(var_1.x, -556f, var_1.x, -1017f)) - vec4<f32>(-741f, var_1.x, var_1.x, var_1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1059f, -724f, var_1.x, var_1.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(797f, ~var_3.x << (var_3.x % 32u));
}

