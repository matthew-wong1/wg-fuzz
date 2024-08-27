struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec2<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> bool {
    var var_0 = arg_1.d;
    let var_1 = _wgslsmith_div_vec3_i32(vec3<i32>(~arg_1.a, arg_1.a, _wgslsmith_mod_i32(2147483647i >> ((0u ^ arg_1.b) % 32u), arg_1.a)), vec3<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(27068i, 33945i), _wgslsmith_clamp_i32(1i, u_input.c, -21528i)), -reverseBits(arg_1.a), _wgslsmith_mult_i32(u_input.c | ~arg_1.a, _wgslsmith_div_i32(arg_1.a & arg_1.a, ~u_input.c))));
    return any(!(!vec2<bool>(all(vec3<bool>(arg_1.c.x, false, arg_0)), any(arg_1.c))));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec2<f32>, arg_3: vec4<bool>) -> u32 {
    var var_0 = vec3<f32>(224f, -169f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(784f, arg_2.x))) - arg_0.a)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-var_0.x));
    var var_2 = arg_3.x;
    var_2 = all(arg_3.zyw);
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, -802f, var_1.a)))))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, -1510f, arg_0.a)))))));
    return ~u_input.a.x;
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(~u_input.b, ~3409u, _wgslsmith_mult_u32(_wgslsmith_div_u32(56962u, u_input.b), u_input.a.x), u_input.a.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(10253u, u_input.b, u_input.b), vec3<u32>(u_input.a.x, 23546u, u_input.a.x)) % 32u)), ~vec4<u32>(32431u, u_input.b, 4294967295u, ~u_input.a.x)) ^ vec4<u32>(func_4(Struct_1(-1000f), func_3(true, Struct_2(-24891i, 1u, vec2<bool>(false, true), Struct_1(524f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1123f, -513f), vec2<f32>(-1109f, -655f))), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), true)), 16408u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(24346u, 29300u, 31858u), vec3<u32>(u_input.a.x, 45239u, 54002u)) & 1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, u_input.b, u_input.a.x) ^ reverseBits(vec3<u32>(1u, 4294967295u, 4294967295u)), ~(~vec3<u32>(49720u, u_input.b, 28037u))));
    var var_1 = Struct_2(19628i, 1u, vec2<bool>(true, true), Struct_1(-1000f));
    var var_2 = ~(~select(~0u, ~var_0.x, any(vec3<bool>(var_1.c.x, false, var_1.c.x)))) < var_1.b;
    var var_3 = Struct_2(max(u_input.c, var_1.a), 21402u, !(!vec2<bool>(any(vec2<bool>(var_1.c.x, false)), true)), Struct_1(521f));
    var var_4 = !(!(!(!(!vec3<bool>(var_1.c.x, true, false)))));
    return Struct_2(~(-var_1.a), 0u, vec2<bool>(func_3(all(select(vec3<bool>(true, false, true), vec3<bool>(var_4.x, true, var_4.x), vec3<bool>(false, false, true))), Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 2147483647i, -10382i), vec3<i32>(u_input.c, var_3.a, var_1.a)), 29531u, var_3.c, Struct_1(var_1.d.a))), true || var_4.x), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-645f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_3.d.a))), var_3.c.x))));
}

fn func_1(arg_0: f32) -> bool {
    var var_0 = func_2();
    let var_1 = ~_wgslsmith_add_u32(0u << ((u_input.a.x << ((14931u ^ u_input.b) % 32u)) % 32u), _wgslsmith_sub_u32(~u_input.a.x, 22332u));
    let var_2 = 15662u;
    let var_3 = select(select(!vec2<bool>(true, !var_0.c.x), vec2<bool>(var_0.c.x, false), _wgslsmith_f_op_f32(-var_0.d.a) > var_0.d.a), var_0.c, !any(vec4<bool>(true, !var_0.c.x, var_0.c.x, true)));
    let var_4 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-381f, _wgslsmith_f_op_f32(arg_0 + arg_0)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.d.a, var_0.d.a))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2096f, 1458f))), vec2<bool>(var_3.x & true, var_0.c.x != var_0.c.x)))), vec2<f32>(arg_0, arg_0), vec2<bool>(var_3.x, 0u != var_2)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_mod_i32(u_input.c, min(~(-40403i), -1i)) & u_input.c, ~firstTrailingBit(~1u), select(vec2<bool>(true, true), vec2<bool>(true, (u_input.c & u_input.c) == ~0i), vec2<bool>(any(vec4<bool>(false, false, false, true)), !func_1(228f))), func_2().d);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -569f);
    var var_2 = func_2();
    var var_3 = vec3<u32>(var_0.b ^ (~23909u | (_wgslsmith_mod_u32(4294967295u, 1u) ^ var_2.b)), 1u, 42804u & _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_mod_u32(_wgslsmith_mod_u32(var_2.b, 4294967295u), var_0.b)));
    var_0 = Struct_2(var_2.a, 4294967295u, var_2.c, var_0.d);
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(sign(var_2.d.a)), _wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.d.a, -1300f))), true)) + vec2<f32>(var_0.d.a, var_0.d.a)) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-var_2.d.a), 885f))));
    var var_5 = select(!select(select(select(vec3<bool>(var_2.c.x, true, var_2.c.x), vec3<bool>(var_2.c.x, true, true), var_0.c.x), vec3<bool>(false, true, var_2.c.x), vec3<bool>(var_0.c.x, var_0.c.x, var_2.c.x)), vec3<bool>(var_0.c.x, var_2.c.x, !var_2.c.x), false), !select(select(!vec3<bool>(var_0.c.x, false, true), !vec3<bool>(var_0.c.x, var_2.c.x, var_2.c.x), var_0.c.x | false), vec3<bool>(var_2.c.x, var_2.c.x, var_2.c.x), false), var_0.a <= ~var_0.a);
    let var_6 = Struct_1(123f);
    var var_7 = _wgslsmith_f_op_f32(f32(-1f) * -564f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-569f * _wgslsmith_f_op_f32(exp2(var_6.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(313f * var_0.d.a) * _wgslsmith_f_op_f32(325f - var_0.d.a))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1669f, var_1)))))), u_input.c << (1u % 32u), var_1);
}

