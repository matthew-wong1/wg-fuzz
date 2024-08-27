struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: f32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_5 {
    a: bool,
    b: vec2<i32>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: i32,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 16> = array<vec2<f32>, 16>(vec2<f32>(1235f, -356f), vec2<f32>(2307f, 1575f), vec2<f32>(1669f, 200f), vec2<f32>(1324f, -1044f), vec2<f32>(-387f, -1231f), vec2<f32>(-2013f, -1793f), vec2<f32>(336f, -236f), vec2<f32>(-776f, -165f), vec2<f32>(-805f, 974f), vec2<f32>(-419f, -1000f), vec2<f32>(-1000f, -1362f), vec2<f32>(-1540f, 1055f), vec2<f32>(-1069f, -609f), vec2<f32>(-453f, 1864f), vec2<f32>(335f, -672f), vec2<f32>(-416f, -1000f));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: i32, arg_1: vec4<bool>, arg_2: vec2<bool>) -> i32 {
    return 2147483647i;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: vec3<u32>) -> vec4<f32> {
    var var_0 = !vec3<bool>(arg_2.x, true, arg_1.b);
    return _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-632f)), -642f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1223f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(114f + 825f) + 1646f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-1213f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1039f + 2470f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-788f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-152f, 1074f)) + _wgslsmith_f_op_f32(-119f * -897f)), _wgslsmith_f_op_f32(ceil(962f)), _wgslsmith_f_op_f32(f32(-1f) * -687f)) + vec4<f32>(1f, 1f, 1f, 1f)), arg_1.b));
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(arg_0), arg_1, !vec2<bool>(arg_1.b | false, true), arg_1.a))));
    var var_1 = _wgslsmith_f_op_f32(floor(1f));
    let var_2 = var_0.xwy;
    let var_3 = select(select(select(vec4<bool>(all(vec2<bool>(true, arg_1.b)), arg_1.b, true, true), !(!vec4<bool>(false, arg_1.b, false, false)), vec4<bool>(true, true, var_0.x < var_0.x, true)), !(!select(vec4<bool>(arg_1.b, true, arg_1.b, false), vec4<bool>(arg_1.b, arg_1.b, arg_1.b, arg_1.b), arg_1.b)), all(select(!vec4<bool>(true, false, false, arg_1.b), !vec4<bool>(false, arg_1.b, false, arg_1.b), select(vec4<bool>(false, false, arg_1.b, arg_1.b), vec4<bool>(arg_1.b, false, arg_1.b, false), vec4<bool>(arg_1.b, true, false, true))))), select(!(!vec4<bool>(true, false, false, arg_1.b)), select(!(!vec4<bool>(true, arg_1.b, false, false)), !select(vec4<bool>(true, true, false, arg_1.b), vec4<bool>(arg_1.b, true, arg_1.b, arg_1.b), arg_1.b), false), !select(select(vec4<bool>(false, false, arg_1.b, arg_1.b), vec4<bool>(false, true, arg_1.b, false), vec4<bool>(arg_1.b, true, arg_1.b, arg_1.b)), select(vec4<bool>(false, arg_1.b, false, arg_1.b), vec4<bool>(arg_1.b, false, arg_1.b, false), false), select(vec4<bool>(false, true, false, arg_1.b), vec4<bool>(false, arg_1.b, arg_1.b, arg_1.b), vec4<bool>(false, false, false, arg_1.b)))), true || any(!vec2<bool>(arg_1.b, false)));
    let var_4 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1712f, 717f, -281f, var_0.x) * vec4<f32>(var_2.x, var_0.x, var_2.x, var_2.x)))))) + vec4<f32>(-1013f, var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -413f), 1f)), Struct_1(2677i), Struct_1(reverseBits(-44853i)), _wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(-14770i, 3186i, -2147483647i)) ^ max(vec3<i32>(arg_0, 2147483647i, arg_0), vec3<i32>(arg_0, -79280i, arg_0)), ~vec3<i32>(arg_0, 12976i, arg_0), vec3<i32>(arg_0, -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-33593i, arg_0, -66305i, -15187i), vec4<i32>(-29199i, arg_0, -41088i, arg_0)))) & -vec3<i32>(countOneBits(-37546i), min(2147483647i, arg_0), max(arg_0, arg_0)));
    return all(var_3);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(((abs(0i) << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 30236u), vec3<u32>(58816u, u_input.a, 2220u)) % 32u)) <= func_1(i32(-1i) * -10868i, vec4<bool>(true, true, true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true))) != any(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false))), !(!(!func_2(0i, Struct_2(vec3<u32>(0u, u_input.b, u_input.a), true)))));
    global0 = array<vec2<f32>, 16>();
    let var_1 = Struct_1(_wgslsmith_mult_i32(func_1(reverseBits(1i), vec4<bool>(var_0.x, any(vec2<bool>(true, var_0.x)), true, var_0.x), vec2<bool>(var_0.x, true)), -2147483647i));
    var var_2 = max(var_1.a, 2147483647i);
    global0 = array<vec2<f32>, 16>();
    let var_3 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1374f, -373f, 141f, 245f)))))), Struct_1(-37115i), var_1, ~(~firstTrailingBit(vec3<i32>(var_1.a, -5406i, var_1.a))) & vec3<i32>(15541i, -17162i, ~var_1.a));
    global0 = array<vec2<f32>, 16>();
    let var_4 = Struct_3(Struct_1(abs(_wgslsmith_mod_i32(-1i, var_1.a)) & _wgslsmith_mult_i32(_wgslsmith_sub_i32(var_3.d.x, 0i), var_1.a ^ var_3.b.a)), vec2<i32>(var_1.a, _wgslsmith_mult_i32(-73198i, -1i)), 851f);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~max(vec4<i32>(var_1.a, 72618i, var_1.a, var_3.b.a), vec4<i32>(var_1.a, var_1.a, 1i, var_4.b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_3.a.x - -508f), -224f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1535f - -107f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_3.a.x), -1000f)))), abs(-(~var_1.a)), var_1.a, vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(var_4.c)))), _wgslsmith_f_op_f32(min(-965f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec4_f32(func_3(var_3.b, Struct_2(vec3<u32>(u_input.b, u_input.b, 30775u), false), vec2<bool>(false, false), vec3<u32>(u_input.b, u_input.b, 0u))).x, var_4.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-1000f)))) * _wgslsmith_f_op_f32(-223f * _wgslsmith_f_op_f32(floor(var_4.c))))));
}

