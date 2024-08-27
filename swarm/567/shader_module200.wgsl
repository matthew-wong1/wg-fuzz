struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: i32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> i32 {
    let var_0 = (i32(-1i) * -1i) ^ (firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_div_i32(u_input.b, u_input.b), max(1i, 1i))) >> (_wgslsmith_clamp_u32(u_input.a, ~39473u, ~1u) % 32u));
    let var_1 = 61289u;
    var var_2 = u_input.a;
    var var_3 = !(!(-2147483647i >= _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(u_input.b, u_input.b, -1i)), vec3<i32>(var_0, u_input.b, u_input.b))));
    var var_4 = Struct_4(max(vec4<u32>(u_input.a, 4294967295u << (u_input.c.x % 32u), ~u_input.a, abs(firstLeadingBit(var_1))), _wgslsmith_mult_vec4_u32(select(vec4<u32>(var_1, 18944u, var_1, u_input.a), select(vec4<u32>(4683u, u_input.c.x, 1588u, var_1), vec4<u32>(27395u, 41620u, u_input.a, var_1), true), vec4<bool>(true, true, true, true)), ~countOneBits(vec4<u32>(47403u, var_1, u_input.c.x, 0u)))), vec4<f32>(1f, _wgslsmith_f_op_f32(min(-916f, 1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-1000f)))), _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(max(330f, -590f))))), -260f));
    return -(~(~(countOneBits(-3501i) << (~var_4.a.x % 32u))));
}

fn func_2() -> Struct_1 {
    let var_0 = func_3();
    var var_1 = var_0 & 13967i;
    var_1 = u_input.b;
    var_1 = _wgslsmith_dot_vec2_i32(~vec2<i32>(select(var_0 << (1u % 32u), -1i ^ u_input.b, true), -1i ^ u_input.b), _wgslsmith_sub_vec2_i32(~vec2<i32>(-39694i, var_0 & -15192i), vec2<i32>(_wgslsmith_mult_i32(var_0, u_input.b), abs(42845i)) | vec2<i32>(abs(-2147483647i), -1i)));
    var_1 = -(~u_input.b);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1872f + _wgslsmith_div_f32(-242f, -103f))))), -604f);
}

fn func_1() -> i32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(529f, -2200f, 799f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, -1017f, 476f)))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-362f, -186f, -502f))))), -(~vec4<i32>(29141i, u_input.b, u_input.b, -37365i) & vec4<i32>(-u_input.b, ~0i, u_input.b >> (u_input.a % 32u), u_input.b)), func_2(), _wgslsmith_add_vec3_i32(~(~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, -14989i, u_input.b), vec3<i32>(-36221i, u_input.b, u_input.b))), vec3<i32>(countOneBits(17030i), firstLeadingBit(~0i), func_3() | _wgslsmith_div_i32(u_input.b, u_input.b))));
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1570f, var_0.a.x, true)))));
    var var_2 = vec4<u32>(4294967295u, firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a) & vec3<u32>(u_input.a, u_input.c.x, 0u), ~abs(u_input.c))), u_input.a, ~_wgslsmith_dot_vec3_u32(~reverseBits(u_input.c), _wgslsmith_mod_vec3_u32(u_input.c, _wgslsmith_div_vec3_u32(vec3<u32>(38323u, 4294967295u, u_input.c.x), vec3<u32>(2378u, u_input.a, 32455u)))));
    let var_3 = vec4<i32>(reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(20063i, var_0.d.x), select(var_0.b.wx, var_0.d.xz, true))), -18942i, _wgslsmith_dot_vec4_i32(var_0.b, firstLeadingBit(var_0.b)), u_input.b) << (min(vec4<u32>(~_wgslsmith_mod_u32(u_input.c.x, var_2.x), ~abs(15171u), var_2.x ^ countOneBits(var_2.x), var_2.x), vec4<u32>(_wgslsmith_mult_u32(countOneBits(u_input.a), u_input.a), ~(~u_input.a), 27688u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, 0u, 31422u), firstLeadingBit(vec4<u32>(4294967295u, var_2.x, 35554u, 0u))))) % vec4<u32>(32u));
    var var_4 = _wgslsmith_mod_u32(4294967295u, countOneBits(u_input.a));
    return -1i;
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), arg_1.a < 226f)) && false;
    var var_1 = countOneBits(min(vec2<u32>(~4294967295u, _wgslsmith_mod_u32(67230u, ~1u)), countOneBits(u_input.c.yx)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b - arg_1.a))))), _wgslsmith_f_op_f32(arg_1.a * arg_1.b));
    let var_3 = Struct_1(2318f, -216f);
    var var_4 = select(select(vec4<bool>(var_0, true, var_0, any(select(vec2<bool>(var_0, false), vec2<bool>(var_0, var_0), var_0))), select(!select(vec4<bool>(true, true, var_0, var_0), vec4<bool>(false, var_0, var_0, var_0), vec4<bool>(false, false, var_0, var_0)), select(select(vec4<bool>(true, var_0, var_0, false), vec4<bool>(false, var_0, var_0, var_0), true), vec4<bool>(true, true, false, false), true), false), !var_0), !vec4<bool>(var_0, true, var_3.b <= var_3.a, 23426i < _wgslsmith_sub_i32(arg_0, arg_0)), select(vec4<bool>(all(!vec2<bool>(var_0, var_0)), var_0, !var_0 && !var_0, var_0), select(vec4<bool>(!var_0, any(vec3<bool>(var_0, var_0, false)), any(vec4<bool>(false, true, var_0, false)), var_0), vec4<bool>(var_0 | var_0, var_0, true, all(vec3<bool>(true, var_0, true))), vec4<bool>(u_input.b != u_input.b, all(vec3<bool>(true, var_0, true)), any(vec3<bool>(var_0, var_0, var_0)), true)), select(var_0, any(select(vec4<bool>(false, false, var_0, true), vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(var_0, var_0, var_0, var_0))), !all(vec2<bool>(false, var_0)))));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * var_2.b), var_3.b);
}

fn func_5(arg_0: f32, arg_1: i32, arg_2: Struct_2, arg_3: f32) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_f32(min(arg_3, arg_2.a.x));
    let var_1 = Struct_4(vec4<u32>(u_input.c.x, 4294967295u, ~u_input.a, 1u), vec4<f32>(_wgslsmith_div_f32(arg_2.a.x, 1000f), _wgslsmith_f_op_f32(round(arg_3)), 1170f, 1f));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1277f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -401f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(911f))))))));
    let var_3 = countOneBits(_wgslsmith_mult_vec4_u32(var_1.a, vec4<u32>(41599u, u_input.c.x, abs(_wgslsmith_dot_vec2_u32(u_input.c.zx, vec2<u32>(u_input.c.x, 1u))), ~var_1.a.x)));
    let var_4 = Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(-365f, _wgslsmith_f_op_f32(f32(-1f) * -1396f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0 + -456f))) - -1135f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(114f + var_0)) + var_0));
    return StorageBuffer(_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2.a.x - -1088f))) + _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(337f, 1679f), _wgslsmith_f_op_f32(select(arg_2.c.b, 1975f, false)), all(vec4<bool>(false, false, false, true)))))), vec3<u32>(u_input.c.x, _wgslsmith_mod_u32(abs(u_input.a << (62019u % 32u)), 38166u), reverseBits(4294967295u)), ~u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1f + 1f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(893f * -266f), -696f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(509f + -246f), _wgslsmith_div_f32(339f, 1094f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1274f)), 253f), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-340f)))), 599f, 1682f, _wgslsmith_f_op_f32(435f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-558f)) - -188f))));
    let x = u_input.a;
    s_output = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1047f))))), u_input.b, Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(var_0.xyy))) + _wgslsmith_f_op_vec3_f32(-var_0.xyz)), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(2147483647i, u_input.b), _wgslsmith_add_i32(u_input.b, 2147483647i)), min(abs(u_input.b), -2147483647i), u_input.b, u_input.b >> (~u_input.a % 32u)), func_4(func_1(), func_2()), ~(-(vec3<i32>(u_input.b, u_input.b, 0i) >> (u_input.c % vec3<u32>(32u))))), _wgslsmith_f_op_f32(max(-1536f, func_2().b)));
}

