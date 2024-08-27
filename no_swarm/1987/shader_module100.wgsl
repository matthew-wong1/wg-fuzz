struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = !(!select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), false), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true)), !select(vec2<bool>(false, false), vec2<bool>(false, true), true)));
    let var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-189f, arg_0.c.x), _wgslsmith_f_op_f32(exp2(var_1.b.x)), -385f, var_1.b.x) * vec4<f32>(_wgslsmith_div_f32(arg_0.c.x, -1073f), 164f, _wgslsmith_f_op_f32(arg_0.c.x * _wgslsmith_f_op_f32(sign(916f))), _wgslsmith_f_op_f32(abs(-549f)))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(-813f, arg_0.c.x)), 113f, _wgslsmith_f_op_f32(abs(1000f)), arg_0.b.x)))));
    let var_3 = !(!var_0.x);
    var var_4 = ~((vec2<u32>(u_input.a, _wgslsmith_add_u32(42699u, u_input.a)) & _wgslsmith_clamp_vec2_u32(~vec2<u32>(var_1.a, u_input.a), ~vec2<u32>(72277u, arg_0.a), vec2<u32>(var_1.a, 4294967295u))) & ~(~(~vec2<u32>(0u, var_1.a))));
    return vec4<bool>(false, true, true, false);
}

fn func_2(arg_0: i32) -> i32 {
    let var_0 = ~(~(~max(~28479u, ~u_input.a)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-829f)) - -1193f), _wgslsmith_f_op_f32(1033f + _wgslsmith_f_op_f32(floor(-247f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1705f + _wgslsmith_f_op_f32(f32(-1f) * -218f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(1000f)))))));
    let var_2 = Struct_1(reverseBits(var_0), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-645f, var_1.x, var_1.x, var_1.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -1028f, -775f, 301f)))) * vec4<f32>(681f, _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1023f - 312f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + var_1.x) + -1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1778f), _wgslsmith_div_f32(var_1.x, var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -1958f)), _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, -479f, 1000f, 417f), vec4<f32>(var_1.x, -108f, 136f, var_1.x)), func_3(Struct_1(u_input.a, vec4<f32>(-169f, 1071f, 169f, var_1.x), vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)))))));
    var_1 = vec2<f32>(var_2.b.x, -1000f);
    return 1i;
}

fn func_1(arg_0: f32, arg_1: u32) -> vec2<u32> {
    var var_0 = true;
    let var_1 = true;
    var var_2 = func_2(reverseBits(((i32(-1i) * -26435i) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-8837i, 2147483647i, -22868i, 21910i), vec4<i32>(-2147483647i, 1i, -2147483647i, -17262i))) << ((arg_1 & arg_1) % 32u)));
    var var_3 = -(_wgslsmith_mod_vec2_i32(select(vec2<i32>(658i, -68755i), vec2<i32>(1i, 1i), vec2<bool>(var_1, true)), vec2<i32>(1i, 1i)) ^ vec2<i32>(~abs(0i), 1i));
    let var_4 = Struct_1(arg_1, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(465f, arg_0, -168f, -573f) * vec4<f32>(1099f, -821f, arg_0, -1457f)), vec4<f32>(1f, 1f, 1f, 1f))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-327f, -661f, arg_0, arg_0)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-599f, arg_0, arg_0, arg_0), vec4<f32>(-1011f, -407f, 141f, 1018f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1222f, arg_0, -902f, 2556f) * vec4<f32>(1282f, -2005f, -971f, -752f))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-385f, arg_0, 1329f, 490f) * vec4<f32>(514f, arg_0, 679f, arg_0))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 452f, -1167f, 400f)))));
    return vec2<u32>(var_4.a, ~(~(~_wgslsmith_add_u32(var_4.a, u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1000f;
    let var_1 = _wgslsmith_sub_vec2_i32(vec2<i32>(~(i32(-1i) * -35932i), firstTrailingBit(_wgslsmith_mult_i32(1i, -23764i))), vec2<i32>(1404i, -2147483647i)) << (select(firstTrailingBit(~func_1(-158f, u_input.a)), select(vec2<u32>(u_input.a, u_input.a), ~(~vec2<u32>(u_input.a, 1u)), any(vec4<bool>(true, false, false, false)) | true), vec2<bool>(!select(false, false, true), any(vec4<bool>(false, true, false, false)))) % vec2<u32>(32u));
    let var_2 = vec3<i32>(~(-2147483647i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-606i, -7352i, 0i) ^ vec3<i32>(var_1.x, var_1.x, var_1.x), ~vec3<i32>(-20343i, 0i, -1i))), firstTrailingBit(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.x, -2147483647i, var_1.x, var_1.x), vec4<i32>(var_1.x, var_1.x, var_1.x, -50859i) & vec4<i32>(-7972i, var_1.x, var_1.x, -29792i)), vec4<i32>(59590i, _wgslsmith_sub_i32(9247i, 40223i), -var_1.x, 2147483647i))), -_wgslsmith_div_i32(-1i, 45548i));
    var_0 = -336f;
    let var_3 = vec4<i32>(37957i, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(var_1, vec2<i32>(var_1.x, 0i) << (~vec2<u32>(0u, 64263u) % vec2<u32>(32u))), _wgslsmith_div_i32(var_2.x, var_1.x)), abs(8934i), ~var_1.x);
    let var_4 = select(vec3<bool>(true, true, !any(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)))), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_3(Struct_1(63393u, vec4<f32>(640f, 506f, -922f, 710f), vec4<f32>(1546f, 609f, -553f, 603f))).x), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !func_3(Struct_1(u_input.a, vec4<f32>(-314f, 581f, -694f, -195f), vec4<f32>(269f, -625f, 739f, -272f))).wzy), vec3<bool>(false, any(vec3<bool>(true, true, 0u <= u_input.a)), all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), false))));
    let x = u_input.a;
    s_output = StorageBuffer(min((vec2<i32>(-2147483647i, 1i) ^ var_3.xw) & min(var_1, vec2<i32>(var_3.x, var_1.x)), -(var_1 >> (vec2<u32>(0u, 58390u) % vec2<u32>(32u)))) & vec2<i32>(var_2.x, var_3.x), ~(var_2.x << (min(u_input.a, u_input.a) % 32u)), vec2<f32>(690f, 1f), _wgslsmith_f_op_f32(round(1275f)));
}

