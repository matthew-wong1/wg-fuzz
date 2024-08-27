struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -32655i;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: Struct_3, arg_3: f32) -> bool {
    let var_0 = u_input.d.x;
    global0 = var_0;
    global0 = 0i;
    let var_1 = arg_0;
    var var_2 = _wgslsmith_mult_vec4_u32(select(max(reverseBits(vec4<u32>(18823u, u_input.c.x, u_input.c.x, 1u)), vec4<u32>(_wgslsmith_clamp_u32(109008u, 26647u, 1u), ~1u, 1u, ~u_input.c.x)), vec4<u32>(u_input.c.x, ~1u, _wgslsmith_add_u32(5449u, _wgslsmith_sub_u32(u_input.c.x, u_input.c.x)), u_input.c.x), select(vec4<bool>(var_0 > -1i, select(var_1.a.x, false, true), arg_1 && arg_0.a.x, false), vec4<bool>(var_1.a.x, true, true, any(vec2<bool>(var_1.a.x, arg_2.a.x))), select(vec4<bool>(arg_0.a.x, true, false, var_1.a.x), vec4<bool>(false, arg_0.a.x, arg_0.a.x, false), true))), abs(_wgslsmith_add_vec4_u32(~firstTrailingBit(vec4<u32>(1u, 42140u, 4294967295u, u_input.c.x)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 30624u, 40828u, 54080u), vec4<u32>(32776u, 26313u, u_input.c.x, u_input.c.x)))));
    return true;
}

fn func_2(arg_0: vec2<f32>, arg_1: i32, arg_2: i32, arg_3: vec2<bool>) -> bool {
    global0 = ~((_wgslsmith_mod_i32(4199i, u_input.b) << (29646u % 32u)) ^ ~countOneBits(arg_2)) & abs(reverseBits(_wgslsmith_sub_i32(arg_2, arg_1)) | countOneBits(u_input.a));
    let var_0 = Struct_3(!(!(!vec3<bool>(arg_3.x, true, arg_3.x))));
    let var_1 = Struct_3(var_0.a);
    global0 = arg_2;
    var var_2 = Struct_2(vec4<bool>(_wgslsmith_div_i32(~arg_1, arg_2) == u_input.a, all(vec3<bool>(false, !arg_3.x, !arg_3.x)), func_3(Struct_3(vec3<bool>(arg_3.x, false, true)), select(arg_3.x & arg_3.x, !arg_3.x, false & var_0.a.x), Struct_3(!var_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.x)) * _wgslsmith_f_op_f32(arg_0.x - arg_0.x))), true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, 506f, -1863f, 1279f), vec4<f32>(arg_0.x, -1214f, arg_0.x, 1000f), vec4<bool>(true, arg_3.x, true, true)))) + vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(round(arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, arg_0.x) + _wgslsmith_f_op_f32(arg_0.x * -1163f)))));
    return true;
}

fn func_1(arg_0: vec4<u32>, arg_1: f32) -> Struct_3 {
    let var_0 = select(!any(vec2<bool>(true, func_2(vec2<f32>(arg_1, arg_1), u_input.e, u_input.a, vec2<bool>(true, true)))), func_3(Struct_3(vec3<bool>(any(vec3<bool>(false, true, true)), true, true)), false, Struct_3(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true)), 837f), !all(vec4<bool>(true, true, true, true)));
    global0 = u_input.b;
    let var_1 = Struct_2(!vec4<bool>(!var_0, any(vec2<bool>(true, true)), false, true), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), -526f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1)) + _wgslsmith_f_op_f32(arg_1 * 478f)))), _wgslsmith_f_op_f32(-arg_1)));
    global0 = abs(u_input.d.x & -1i);
    global0 = _wgslsmith_mod_i32(_wgslsmith_div_i32(-_wgslsmith_clamp_i32(u_input.e >> (arg_0.x % 32u), u_input.e, ~14668i), _wgslsmith_clamp_i32(-abs(2147483647i), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(16734i, u_input.e, 2147483647i), ~u_input.d.x), _wgslsmith_mod_i32(~u_input.e, u_input.b))), _wgslsmith_sub_i32(27686i, ~(~1i)));
    return Struct_3(vec3<bool>(true, true, true));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: f32, arg_3: Struct_3) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_2, -790f, 1661f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(733f + arg_2)), _wgslsmith_f_op_f32(-1f), 1092f, _wgslsmith_f_op_f32(f32(-1f) * -692f)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(ceil(798f)), -964f, _wgslsmith_div_f32(arg_2, 718f), -1390f)))));
    var var_1 = Struct_3(arg_3.a);
    let var_2 = Struct_3(!(!(!(!var_1.a))));
    let var_3 = var_0.yy;
    let var_4 = Struct_2(select(!vec4<bool>(true, true, var_2.a.x, !var_2.a.x), !(!(!vec4<bool>(true, var_2.a.x, var_2.a.x, arg_3.a.x))), _wgslsmith_f_op_f32(806f - _wgslsmith_f_op_f32(abs(arg_2))) == _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(493f + -1387f), _wgslsmith_f_op_f32(sign(var_3.x))))), _wgslsmith_f_op_vec4_f32(-var_0));
    return -u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mult_i32(0i, _wgslsmith_sub_i32(u_input.b, _wgslsmith_mult_i32(func_4(28477i, _wgslsmith_f_op_f32(abs(2577f)), _wgslsmith_f_op_f32(f32(-1f) * -668f), func_1(vec4<u32>(3333u, u_input.c.x, 0u, u_input.c.x), 417f)), func_4(~u_input.e, _wgslsmith_f_op_f32(1214f + 892f), _wgslsmith_f_op_f32(f32(-1f) * -537f), Struct_3(vec3<bool>(true, true, true))))));
    let var_0 = Struct_2(vec4<bool>(false, any(vec3<bool>(true, true, true)), false, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-700f, 1656f)), -1621f, _wgslsmith_f_op_f32(max(443f, 323f)), _wgslsmith_div_f32(1000f, -1000f)), vec4<f32>(1677f, _wgslsmith_f_op_f32(166f - -613f), _wgslsmith_f_op_f32(max(447f, -1985f)), _wgslsmith_f_op_f32(step(1127f, 524f))))));
    let var_1 = ~(vec2<u32>(u_input.c.x, _wgslsmith_mult_u32(~1u, _wgslsmith_div_u32(1u, u_input.c.x))) >> (~u_input.c % vec2<u32>(32u)));
    var var_2 = var_0;
    var_2 = Struct_2(var_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.b) + _wgslsmith_f_op_vec4_f32(-var_2.b)))));
    global0 = ~(-(u_input.d.x | countOneBits(max(u_input.a, u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec4<i32>(u_input.e, _wgslsmith_dot_vec4_i32(~vec4<i32>(0i, 1i, u_input.a, u_input.d.x), vec4<i32>(-52673i, -2147483647i, u_input.e, 17489i)), u_input.b, u_input.e)));
}

