struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec2<f32>,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec3<f32>,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec4<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool) -> vec2<bool> {
    let var_0 = select(!(!vec4<bool>(!arg_0, any(vec4<bool>(true, false, false, false)), u_input.a > u_input.a, arg_0)), !vec4<bool>(true, true, ~1u == firstLeadingBit(u_input.a), arg_0), vec4<bool>(true | all(vec2<bool>(false, false)), arg_0, !(0i >= _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.b, 5209i, 1i), vec4<i32>(0i, u_input.c, u_input.b, 16144i))), any(select(select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, false), arg_0), !vec2<bool>(false, arg_0), select(vec2<bool>(arg_0, arg_0), vec2<bool>(false, arg_0), vec2<bool>(true, arg_0))))));
    let var_1 = -455f;
    var var_2 = countOneBits(~firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_mod_u32(66667u, u_input.a), u_input.a)));
    var var_3 = -128f;
    var var_4 = abs(u_input.c & ~abs(2147483647i));
    return vec2<bool>(all(!var_0.zx), arg_0);
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: Struct_1) -> bool {
    let var_0 = _wgslsmith_clamp_vec2_u32(vec2<u32>(abs(24771u), ~4294967295u), select(countOneBits(vec2<u32>(33173u, ~arg_1)), vec2<u32>(arg_1, firstLeadingBit(arg_1)), func_3(true)), ~vec2<u32>(~arg_1, 14350u));
    return true;
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    var var_0 = ~u_input.a;
    let var_1 = Struct_2(15241u, func_2(false, u_input.a, Struct_1(-1896f, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(591f, 1000f, 254f))))) & false, vec2<f32>(_wgslsmith_f_op_f32(1978f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1670f - -672f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-369f, -221f))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, -1765f), vec2<f32>(368f, -941f))) * vec2<f32>(306f, -1000f)))))));
    var var_2 = Struct_2(u_input.a, var_1.b, _wgslsmith_f_op_vec2_f32(-var_1.d), var_1.d);
    var_2 = var_1;
    let var_3 = -12843i;
    return Struct_1(_wgslsmith_f_op_f32(floor(var_2.d.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-284f, 277f, _wgslsmith_f_op_f32(-1701f * 1052f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(~1u, _wgslsmith_f_op_f32(round(934f)) > -508f, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(513f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1877f - 409f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-858f - 552f), _wgslsmith_f_op_f32(sign(1551f))))));
    let var_1 = func_1(vec4<i32>(max(_wgslsmith_dot_vec3_i32(vec3<i32>(-13193i, u_input.c, u_input.c), vec3<i32>(0i, -1i, u_input.c)), min(u_input.c, u_input.b)), u_input.c, -(~2147483647i), -2147483647i) & select(vec4<i32>(u_input.b, 1i, 2147483647i, u_input.b) << (~vec4<u32>(var_0.a, 32844u, 4294967295u, u_input.a) % vec4<u32>(32u)), -_wgslsmith_mult_vec4_i32(vec4<i32>(24909i, u_input.c, u_input.c, 2147483647i), vec4<i32>(u_input.c, 11648i, 1i, u_input.b)), true));
    let var_2 = Struct_3(Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.b.x + var_0.d.x))))), var_1.b), -891f, var_1.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.a))))), _wgslsmith_f_op_f32(-func_1(~vec4<i32>(-2147483647i, u_input.c, -42973i, u_input.b)).a)), var_0);
    var var_3 = !var_0.b;
    let var_4 = var_2.e;
    var var_5 = _wgslsmith_mod_vec3_u32(~abs(vec3<u32>(var_2.e.a, abs(var_2.e.a), 29404u)), countOneBits(vec3<u32>(var_2.e.a, u_input.a, 0u)));
    var_5 = vec3<u32>(0u, ~(~17209u), min(~_wgslsmith_clamp_u32(26926u | var_4.a, _wgslsmith_mod_u32(75165u, 4294967295u), _wgslsmith_sub_u32(4294967295u, 0u)), 4294967295u));
    var var_6 = vec4<bool>(false, !(_wgslsmith_dot_vec4_u32(select(vec4<u32>(var_4.a, var_0.a, u_input.a, var_5.x), vec4<u32>(var_5.x, 1u, 50346u, u_input.a), true), vec4<u32>(1u, 81029u, var_5.x, 0u) << (vec4<u32>(1u, var_0.a, 4294967295u, var_0.a) % vec4<u32>(32u))) != var_2.e.a), var_4.b, true);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_clamp_vec3_i32(select(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, u_input.b, -2147483647i), _wgslsmith_mod_vec3_i32(vec3<i32>(-13068i, -12673i, 0i), vec3<i32>(u_input.c, u_input.c, 2147483647i))), vec3<i32>(u_input.c, 0i, _wgslsmith_dot_vec3_i32(vec3<i32>(-40412i, 33531i, 15438i), vec3<i32>(0i, -1i, u_input.c))), ~var_4.a < 1u), vec3<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c, 2147483647i, -2147483647i, -47297i), vec4<i32>(1i, u_input.c, -26144i, u_input.b)), 41191i, select(-u_input.b, 2147483647i, !var_4.b)), -(countOneBits(vec3<i32>(-1i, -1i, u_input.c)) >> (~vec3<u32>(1u, 0u, 1u) % vec3<u32>(32u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(809f, 589f, var_1.a, 673f), vec4<f32>(var_1.a, var_4.c.x, var_1.a, 136f), false)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1372f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a, var_1.b.x) * -1000f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(var_4.d.x)))), var_2.c.x) + vec4<f32>(1394f, var_2.c.x, _wgslsmith_f_op_f32(-var_4.c.x), 258f)), _wgslsmith_f_op_vec2_f32(-var_1.b.yx));
}

