struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: f32,
    c: u32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec4<u32>) -> vec3<u32> {
    global0 = select(true, true, true || any(select(vec2<bool>(true, true), vec2<bool>(false, false), false))) && all(!vec2<bool>(all(vec3<bool>(false, true, false)), true));
    var var_0 = Struct_2(u_input.b.x, vec2<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<u32>(arg_0.x, arg_0.x, 40460u, arg_0.x)), arg_0), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(arg_0.x, 1u, arg_0.x), 31666u)), 41723u), vec2<bool>(select(true, true, false) | false, !any(vec3<bool>(false, false, true))));
    let var_1 = var_0.c.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-398f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1445f)) + _wgslsmith_f_op_f32(-952f + -624f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-928f, -1070f)))))))))));
    let var_3 = arg_0.yw;
    return vec3<u32>(~(4294967295u >> (1u % 32u)), ~(~arg_0.x), ~arg_0.x) << (abs(~countOneBits(vec3<u32>(arg_0.x, var_0.b.x, 4294967295u)) >> (arg_0.yyz % vec3<u32>(32u))) % vec3<u32>(32u));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: vec3<f32>) -> u32 {
    let var_0 = Struct_1(arg_1.b.x, func_3(reverseBits(~(~vec4<u32>(4294967295u, arg_1.b.x, arg_0.x, arg_1.b.x)))));
    global0 = true;
    let var_1 = firstLeadingBit(-2147483647i);
    var var_2 = Struct_3(vec4<bool>(any(!(!vec4<bool>(arg_1.c.x, arg_1.c.x, false, arg_1.c.x))), true, !(!all(vec3<bool>(arg_1.c.x, false, arg_1.c.x))), true), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(arg_3.x)))), _wgslsmith_f_op_f32(-arg_3.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -441f) * _wgslsmith_f_op_f32(arg_3.x + 1141f)))), ~(~max(35952u, _wgslsmith_mod_u32(0u, 4294967295u))), u_input.b.xxy);
    var var_3 = _wgslsmith_div_u32(var_2.c, ~38708u);
    return select(4294967295u, 1u, any(var_2.a.xzz));
}

fn func_1() -> i32 {
    var var_0 = vec2<f32>(-2358f, _wgslsmith_f_op_f32(step(421f, -222f)));
    let var_1 = ~_wgslsmith_sub_u32(firstTrailingBit(4294967295u), _wgslsmith_div_u32(0u, func_2(vec2<u32>(1u, 1u), Struct_2(u_input.a, vec2<u32>(1u, 0u), vec2<bool>(false, true)), u_input.b.zz >> (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u)), vec3<f32>(var_0.x, 1000f, 797f))));
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * -752f) - var_0.x) * -199f)));
    var var_2 = u_input.b;
    var var_3 = ~_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(~(vec3<u32>(0u, var_1, var_1) << (vec3<u32>(var_1, 31927u, var_1) % vec3<u32>(32u))), ~reverseBits(vec3<u32>(var_1, 1u, 4294967295u))), vec3<u32>(4294967295u, 80595u, reverseBits(44668u) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_1, 15805u), vec3<u32>(48734u, var_1, 36257u))));
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(~(-_wgslsmith_dot_vec2_i32(vec2<i32>(2246i, 22051i) ^ vec2<i32>(u_input.a, -42413i), vec2<i32>(u_input.a, u_input.b.x))), _wgslsmith_dot_vec4_i32(((u_input.b ^ u_input.b) | _wgslsmith_mult_vec4_i32(u_input.b, vec4<i32>(-46753i, u_input.b.x, u_input.a, u_input.b.x))) ^ vec4<i32>(_wgslsmith_mod_i32(u_input.b.x, 38413i), -10063i, _wgslsmith_div_i32(-36314i, u_input.b.x), -2147483647i), _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(u_input.b, ~u_input.b), countOneBits(vec4<i32>(42581i, 34726i, -2147483647i, -8222i)))), ~(-(_wgslsmith_div_i32(u_input.b.x, u_input.a) >> (~12243u % 32u))), func_1());
    global0 = !select(all(vec4<bool>(true, false, select(false, true, false), false)), false, !select(false, true, true));
    global0 = true;
    var var_1 = 116473u;
    global0 = (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1377f + _wgslsmith_f_op_f32(f32(-1f) * -1193f))) >= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-815f, _wgslsmith_f_op_f32(139f - 1000f))), 817f, true))) | select(select(true, true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -257f) - -1088f) <= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(trunc(-1000f)))), !all(vec3<bool>(false, false, false)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1095f, -1224f, -1470f, 1774f) + vec4<f32>(544f, -885f, 1149f, 124f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2246f, 107f, -235f, 998f)), vec4<bool>(false, false, true, true)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec2<bool>(true, true))))));
    var var_3 = vec4<bool>(true, all(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)), any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false))), !select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false)), true)), (false || all(vec3<bool>(false, true, true))) && false);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, vec4<f32>(-256f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2075f), var_2.x))), var_2.x, _wgslsmith_f_op_f32(abs(-1000f))));
}

