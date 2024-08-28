struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    let var_0 = ~firstLeadingBit(~u_input.a.xz);
    let var_1 = ~var_0;
    let var_2 = select(vec3<bool>(select(1i > _wgslsmith_mult_i32(u_input.c.x, u_input.b.x), all(vec2<bool>(false, true)), true), true && all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true))), select(-1i | u_input.c.x, u_input.c.x >> (10699u % 32u), true) < 31622i), vec3<bool>(true, -u_input.c.x > -2147483647i, true), select(all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), true, true));
    let var_3 = arg_2;
    let var_4 = Struct_1(0u);
    return any(select(!(!select(var_2, var_2, var_2)), select(var_2, vec3<bool>(!var_2.x, !var_2.x, false), select(var_2, !var_2, var_2)), var_2));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = vec3<bool>(func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2918f, -290f, -2620f)) - vec3<f32>(1107f, 1761f, 561f))), arg_0, arg_0), all(vec3<bool>(true, true, true)), all(vec2<bool>(all(vec2<bool>(true, true)) & all(vec4<bool>(true, false, false, true)), all(vec2<bool>(true, false)))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1308f, _wgslsmith_f_op_f32(round(534f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1175f) - -472f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-102f * -1255f))))));
    return Struct_1(~_wgslsmith_dot_vec2_u32(vec2<u32>(70140u, _wgslsmith_clamp_u32(1u, u_input.a.x, arg_0.a)), u_input.a.yy));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>) -> vec2<u32> {
    var var_0 = vec2<bool>(any(vec2<bool>(any(vec4<bool>(true, true, false, false)), false)), _wgslsmith_mod_i32(39984i, abs(~u_input.c.x)) != 11245i);
    var_0 = !select(select(select(!vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x)), !select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, true), vec2<bool>(false, var_0.x)), vec2<bool>(false, true)), !(!select(vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, var_0.x), var_0.x)), (21640u ^ u_input.a.x) > firstTrailingBit(u_input.a.x));
    var var_1 = _wgslsmith_sub_i32(1i, 2687i);
    let var_2 = select(reverseBits((-18526i & u_input.b.x) & countOneBits(u_input.b.x)) >= u_input.c.x, var_0.x, !var_0.x);
    var_0 = !select(select(!select(vec2<bool>(var_2, false), vec2<bool>(var_2, false), true), vec2<bool>(true, true), false), !(!select(vec2<bool>(true, var_0.x), vec2<bool>(true, var_0.x), var_0.x)), var_0.x);
    return vec2<u32>(arg_0.a, _wgslsmith_dot_vec2_u32(abs(u_input.a.yz), vec2<u32>(~(u_input.a.x >> (u_input.a.x % 32u)), _wgslsmith_dot_vec3_u32(~u_input.a.zyx, ~vec3<u32>(52673u, 0u, 65471u)))));
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = select(_wgslsmith_clamp_vec2_u32(~max(u_input.a.xy, vec2<u32>(4294967295u, u_input.a.x)), ~select(vec2<u32>(47185u, 27348u), firstLeadingBit(u_input.a.xw), arg_0.x), vec2<u32>(_wgslsmith_sub_u32(1u, min(u_input.a.x, u_input.a.x)), ~(~u_input.a.x))), countOneBits(func_4(func_2(Struct_1(u_input.a.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, u_input.b.x), vec4<i32>(-46831i, -21750i, 14976i, 1614i), u_input.b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-388f, -218f, 361f) * vec3<f32>(-199f, -1721f, -1000f))))), true && !all(!arg_0.xw));
    let var_1 = vec3<bool>(arg_0.x, !any(arg_0), arg_0.x);
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1421f, -784f, 620f, 1046f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, -700f, -451f, -1469f))), all(var_1))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(738f, 1000f, 1406f, 545f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2555f, 741f, -485f, 250f) - vec4<f32>(1011f, 211f, 1000f, 201f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(881f, 664f, 547f, -1686f), vec4<f32>(392f, 1000f, -143f, -1738f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-846f, -1265f, 166f, -955f)))))))));
    let var_3 = Struct_1(min(u_input.a.x, 56762u));
    let var_4 = var_2;
    return Struct_1(~(~(1u | var_3.a)));
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: bool, arg_3: u32) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-128f, _wgslsmith_f_op_f32(min(420f, -801f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * 1994f) + arg_1));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * arg_1)) + arg_1) * -849f));
    let var_2 = countOneBits(u_input.a.ywx);
    var_1 = -326f;
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1, -357f))))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) + vec2<f32>(-526f, -438f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) * vec2<f32>(252f, arg_1)))))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1, arg_1, _wgslsmith_f_op_f32(-205f + arg_1), _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(sign(arg_1)))))), func_2(arg_0, u_input.b).a);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(func_1(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), false)), _wgslsmith_f_op_f32(abs(470f)), !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -681f) + 606f) >= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-200f)), _wgslsmith_f_op_f32(-1148f + -219f), all(vec2<bool>(true, false))))), ~_wgslsmith_div_u32(9525u, min(35404u, u_input.a.x)));
}

