struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
    c: bool,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: u32,
    d: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
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

var<private> global0: bool;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    let var_0 = !select(arg_1.b.yw, arg_1.b.xx, 8022i > (0i << (min(arg_1.c.x, arg_1.c.x) % 32u)));
    global0 = all(arg_1.b.xw);
    var var_1 = all(var_0);
    let var_2 = -670f;
    let var_3 = ~_wgslsmith_sub_vec2_u32(arg_0.c, vec2<u32>(arg_1.c.x, ~arg_0.c.x));
    return u_input.c.x;
}

fn func_2() -> f32 {
    var var_0 = ~_wgslsmith_div_vec4_u32(max(~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 0u, 33215u, u_input.a), vec4<u32>(u_input.a, 89179u, 60816u, u_input.b)), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.a, 22600u, u_input.b), ~vec4<u32>(1u, u_input.a, 1u, u_input.a), abs(vec4<u32>(1u, 52839u, 4294967295u, 4124u)))), vec4<u32>(u_input.a, _wgslsmith_div_u32(~u_input.b, _wgslsmith_add_u32(96288u, u_input.b)), firstLeadingBit(~0u), ~9922u & _wgslsmith_sub_u32(u_input.b, 0u)));
    let var_1 = ~vec3<i32>(abs(~func_3(Struct_1(vec2<f32>(-959f, -619f), vec4<bool>(true, false, false, true), vec2<u32>(u_input.b, var_0.x)), Struct_1(vec2<f32>(-1650f, -1000f), vec4<bool>(true, false, false, false), vec2<u32>(4294967295u, 35050u)))), u_input.c.x, -15971i);
    let var_2 = _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1443f - 2615f) - 1958f), -108f)) + _wgslsmith_f_op_f32(f32(-1f) * -136f)));
    var var_3 = ~(~(~1u));
    var_3 = abs(var_0.x) & countOneBits(_wgslsmith_mult_u32(~_wgslsmith_sub_u32(var_0.x, u_input.b), 1u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(114f, var_2)))));
}

fn func_1(arg_0: u32, arg_1: bool) -> vec4<i32> {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1236f, 1244f, 340f, -1000f))), vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_2()), 549f, 865f, 1000f) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1154f, _wgslsmith_f_op_f32(-1592f + 597f), -1048f, _wgslsmith_f_op_f32(f32(-1f) * -429f))))));
    global0 = any(vec4<bool>(all(vec4<bool>(all(vec2<bool>(arg_1, false)), true, true, false)), true, true, select(true, arg_1, false)));
    let var_1 = ~(~vec4<u32>(select(_wgslsmith_clamp_u32(u_input.b, 0u, 4294967295u), ~u_input.a, true), (u_input.b << (u_input.a % 32u)) >> (arg_0 % 32u), reverseBits(u_input.b), 4294967295u));
    global0 = ~(-9585i) > (min(~_wgslsmith_add_i32(u_input.c.x, u_input.c.x), countOneBits(1i)) << (u_input.a % 32u));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.yy), select(select(!vec4<bool>(arg_1, false, arg_1, arg_1), select(select(vec4<bool>(arg_1, arg_1, arg_1, false), vec4<bool>(arg_1, false, true, arg_1), true), !vec4<bool>(arg_1, arg_1, arg_1, false), !vec4<bool>(false, true, arg_1, arg_1)), select(vec4<bool>(false, arg_1, arg_1, true), select(vec4<bool>(false, arg_1, arg_1, true), vec4<bool>(arg_1, true, arg_1, false), true), true)), vec4<bool>(arg_1, arg_1, arg_1, -25288i >= _wgslsmith_dot_vec2_i32(u_input.c.xx, vec2<i32>(26191i, u_input.c.x))), arg_1), ~_wgslsmith_add_vec2_u32(min(~var_1.yw, ~var_1.wy), abs(_wgslsmith_div_vec2_u32(var_1.xy, var_1.zz))));
    return -vec4<i32>(_wgslsmith_mod_i32(~16838i, _wgslsmith_div_i32(-u_input.c.x, abs(12997i))), select((i32(-1i) * -40672i) ^ u_input.c.x, abs(-16950i), true), func_3(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(109f, -1181f) + vec2<f32>(278f, var_2.a.x)), !var_2.b, _wgslsmith_clamp_vec2_u32(var_2.c, vec2<u32>(var_1.x, var_2.c.x), vec2<u32>(u_input.b, arg_0))), Struct_1(var_2.a, select(vec4<bool>(var_2.b.x, var_2.b.x, arg_1, var_2.b.x), vec4<bool>(false, true, var_2.b.x, arg_1), true), vec2<u32>(23466u, 64333u))), _wgslsmith_mult_i32(u_input.c.x, -17081i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (_wgslsmith_add_i32((i32(-1i) * -2147483647i) << (~u_input.a % 32u), firstLeadingBit(_wgslsmith_mult_i32(u_input.c.x, u_input.c.x))) | (-18359i ^ u_input.c.x)) << (_wgslsmith_dot_vec2_u32(abs(~(~vec2<u32>(1u, 17013u))), abs(abs(abs(vec2<u32>(79294u, 0u))))) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, -2147483647i)), func_1(u_input.a, false)) ^ vec4<i32>(~19077i, _wgslsmith_add_i32(-4672i, u_input.c.x), max(18651i, u_input.c.x), countOneBits(1i))));
}

