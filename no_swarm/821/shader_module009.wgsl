struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec3<i32> {
    global0 = ~(~(_wgslsmith_add_i32(u_input.b, firstTrailingBit(1i)) >> (_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(11480u, u_input.a)), vec2<u32>(4294967295u, 35851u)) % 32u)));
    var var_0 = !(!select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec3<bool>(false, true, false)), true), (u_input.b ^ 41617i) == -u_input.b));
    var_0 = vec3<bool>((8532i != (_wgslsmith_dot_vec2_i32(vec2<i32>(-88771i, 0i), vec2<i32>(-60144i, -21070i)) & _wgslsmith_add_i32(24347i, -2147483647i))) | false, true, var_0.x);
    return vec3<i32>(u_input.b, _wgslsmith_mod_i32((u_input.b ^ ~u_input.b) >> (min(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 23650u, u_input.a, 18215u), vec4<u32>(16225u, 15630u, u_input.a, 15022u)), u_input.a) % 32u), 20124i), -u_input.b | ~2147483647i);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<i32>) -> vec3<i32> {
    global0 = -(~(~u_input.b) >> (abs(0u | ~u_input.a) % 32u));
    let var_0 = Struct_1(arg_3, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -863f), _wgslsmith_f_op_f32(abs(arg_1.b.x)), arg_0.b.x, _wgslsmith_f_op_f32(arg_0.b.x - arg_0.b.x)))) - _wgslsmith_f_op_vec4_f32(-arg_0.b)));
    global0 = ~reverseBits(abs(2147483647i));
    let var_1 = !vec4<bool>(true, (_wgslsmith_dot_vec4_u32(vec4<u32>(55348u, u_input.a, u_input.a, 60706u), vec4<u32>(25433u, u_input.a, 1u, 7934u)) ^ (u_input.a | 8727u)) <= (_wgslsmith_mult_u32(6116u, u_input.a) ^ abs(u_input.a)), false, true);
    var var_2 = Struct_1(_wgslsmith_clamp_vec3_i32(var_0.a, vec3<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(arg_1.a.x, 0i, 59642i, 0i), -vec4<i32>(arg_2.a.x, arg_2.a.x, arg_2.a.x, arg_2.a.x)), select(min(arg_3.x, 12890i), firstTrailingBit(arg_3.x), all(vec3<bool>(false, var_1.x, false))), _wgslsmith_mult_i32(-44295i, _wgslsmith_div_i32(-1i, var_0.a.x))), -vec3<i32>(arg_2.a.x ^ arg_3.x, _wgslsmith_mult_i32(arg_2.a.x, arg_1.a.x), max(58937i, arg_1.a.x))), arg_1.b);
    return var_0.a;
}

fn func_2(arg_0: u32) -> f32 {
    let var_0 = 17496i;
    global0 = u_input.b;
    var var_1 = reverseBits(1i);
    let var_2 = vec4<bool>((u_input.a > _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0, arg_0, arg_0), vec3<u32>(4294967295u, 1u, 44529u))) || !all(vec3<bool>(true, true, true)), true, any(vec3<bool>(true, true, true)), true);
    var var_3 = Struct_1(-func_4(Struct_1(~vec3<i32>(var_0, var_0, u_input.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(-740f, -1927f, -1134f, -304f) + vec4<f32>(-1128f, 1000f, -1581f, 1851f))), Struct_1(select(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(82322i, var_0, 30392i), var_2.xzw), vec4<f32>(-1455f, 714f, -1847f, -1247f)), Struct_1(func_3(), vec4<f32>(558f, -650f, -836f, 520f)), abs(~vec3<i32>(10626i, 1i, u_input.b))), vec4<f32>(_wgslsmith_f_op_f32(select(-2582f, _wgslsmith_f_op_f32(f32(-1f) * -1095f), true)), _wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_f32(min(-661f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-372f + 171f) + -1546f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-796f * 235f))) * _wgslsmith_f_op_f32(-507f * -440f))));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(var_3.b.x)))), -137f));
}

fn func_1(arg_0: f32) -> f32 {
    global0 = -2147483647i;
    let var_0 = u_input.b;
    let var_1 = Struct_1((vec3<i32>(-1i) * -vec3<i32>(var_0, var_0, u_input.b)) ^ vec3<i32>(-var_0, ~_wgslsmith_mult_i32(var_0, u_input.b), -11505i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1372f, _wgslsmith_f_op_f32(func_2(u_input.a)), _wgslsmith_div_f32(arg_0, -120f), -145f), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, arg_0) * vec4<f32>(-969f, 1090f, arg_0, -791f))))))));
    global0 = _wgslsmith_mult_i32(abs(firstTrailingBit(var_0) & min(u_input.b, u_input.b)) ^ (-53319i << (min(_wgslsmith_mod_u32(u_input.a, 4294967295u), _wgslsmith_sub_u32(u_input.a, u_input.a)) % 32u)), var_1.a.x);
    var var_2 = -abs(-vec4<i32>(1i, var_1.a.x, 45597i, -21803i)) | countOneBits(abs(countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, 65614i, 15815i, 2147483647i), vec4<i32>(-33892i, -8608i, -1i, var_0)))));
    return _wgslsmith_div_f32(_wgslsmith_div_f32(var_1.b.x, var_1.b.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(698f, _wgslsmith_f_op_f32(min(-978f, _wgslsmith_f_op_f32(-arg_0)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (firstTrailingBit(~(~47208u)) ^ max(1u, u_input.a)) | u_input.a;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1441f - 617f))))), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -330f)))))), 1145f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(u_input.a))));
    let var_2 = Struct_1(vec3<i32>(u_input.b, -_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, u_input.b), vec2<i32>(u_input.b, u_input.b)), vec2<i32>(u_input.b, u_input.b) << (vec2<u32>(1u, u_input.a) % vec2<u32>(32u))), -2147483647i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, -919f) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.x, 152f, var_1.x, 407f))))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1007f, var_1.x, _wgslsmith_f_op_f32(-223f * -359f), _wgslsmith_f_op_f32(trunc(var_1.x))), vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(var_1.x - 192f), _wgslsmith_f_op_f32(-1139f + 1527f))))));
    var_0 = 74634u;
    var var_3 = var_2;
    var_0 = abs(u_input.a);
    let var_4 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(var_3.b.xzw))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(var_3.b.wyx + vec3<f32>(var_3.b.x, 1093f, -171f)))) + _wgslsmith_f_op_vec3_f32(min(var_3.b.zxw, vec3<f32>(var_2.b.x, var_3.b.x, 1557f)))), _wgslsmith_f_op_vec3_f32(round(var_1)))));
    let var_5 = min(~firstLeadingBit(vec4<u32>(5739u, ~u_input.a, u_input.a ^ 4294967295u, 51363u)), ~abs(~vec4<u32>(4294967295u, u_input.a, 38546u, u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(func_3().xx >> (_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.a, u_input.a), _wgslsmith_clamp_vec2_u32(var_5.yx, vec2<u32>(100789u, u_input.a), var_5.wy), ~vec2<u32>(u_input.a, var_5.x)) % vec2<u32>(32u))));
}

