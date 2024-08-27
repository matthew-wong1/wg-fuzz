struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>) -> vec2<i32> {
    let var_0 = Struct_1(_wgslsmith_div_u32(arg_0.x, ~arg_0.x), ~_wgslsmith_mult_vec3_u32(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.x, arg_0.x, arg_0.x), vec3<u32>(arg_0.x, arg_0.x, arg_0.x), vec3<u32>(arg_0.x, 46123u, arg_0.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.x, 3629u, arg_0.x), vec3<u32>(30148u, arg_0.x, 42732u)), any(vec4<bool>(true, true, true, true))), select(vec3<u32>(arg_0.x, arg_0.x, 4294967295u), ~vec3<u32>(arg_0.x, 79460u, 0u), vec3<bool>(true, false, false))), _wgslsmith_f_op_vec3_f32(vec3<f32>(639f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-1593f, -1443f, false)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-1502f)), _wgslsmith_f_op_f32(min(-410f, -533f))))) + vec3<f32>(_wgslsmith_f_op_f32(769f * -693f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1529f), _wgslsmith_f_op_f32(f32(-1f) * -366f)), _wgslsmith_f_op_f32(select(-467f, _wgslsmith_f_op_f32(844f - -950f), false)))));
    let var_1 = select(vec2<bool>(max(~1u, ~var_0.a) == ~(~arg_0.x), false), select(vec2<bool>(true, true), !select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(false, false)), vec2<bool>(all(vec4<bool>(true, true, true, true)), true)), true);
    let var_2 = abs(u_input.b.xw);
    var var_3 = Struct_2(Struct_1(~_wgslsmith_div_u32(arg_0.x, 46672u), _wgslsmith_sub_vec3_u32(~var_0.b, ~_wgslsmith_sub_vec3_u32(var_0.b, vec3<u32>(1u, 4294967295u, var_0.b.x))), _wgslsmith_f_op_vec3_f32(select(var_0.c, _wgslsmith_f_op_vec3_f32(exp2(var_0.c)), vec3<bool>(var_1.x, true, true)))));
    let var_4 = var_3.a;
    return abs(-(~((u_input.b.zw >> (arg_0 % vec2<u32>(32u))) ^ u_input.b.wz)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>) -> i32 {
    var var_0 = u_input.b;
    var_0 = reverseBits(vec4<i32>(74044i, firstTrailingBit(28903i << (arg_0.b.x % 32u)) | u_input.b.x, 51009i, ~_wgslsmith_mod_i32(max(-1i, u_input.b.x), ~(-1i))));
    var_0 = -u_input.b;
    var var_1 = func_3(firstTrailingBit(~select(vec2<u32>(arg_0.b.x, arg_0.b.x), vec2<u32>(1u, arg_0.a), false))) & u_input.b.yz;
    var_1 = -func_3(abs(~_wgslsmith_mod_vec2_u32(arg_0.b.yy, vec2<u32>(0u, arg_0.b.x))));
    return -31719i;
}

fn func_1(arg_0: Struct_3, arg_1: u32) -> vec4<u32> {
    var var_0 = vec2<i32>(-u_input.b.x, u_input.a << (98253u % 32u));
    var_0 = vec2<i32>(func_2(Struct_1(3783u, vec3<u32>(84195u, arg_1, arg_1), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.x, -1372f, arg_0.a.x) * vec3<f32>(1000f, arg_0.c, 353f))))), select(arg_0.b.wz, !(!vec2<bool>(arg_0.b.x, arg_0.b.x)), true)), 11983i);
    var var_1 = Struct_1(arg_1, vec3<u32>(reverseBits(4294967295u), ~arg_1, arg_1), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c, -669f, _wgslsmith_f_op_f32(arg_0.a.x - arg_0.c))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(539f, 1047f, arg_0.a.x) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-504f, 101f, 1000f)))))));
    let var_2 = Struct_1(~abs(min(max(var_1.a, 761u), firstLeadingBit(arg_1))), vec3<u32>(arg_1, 17617u, 14300u), _wgslsmith_f_op_vec3_f32(-var_1.c));
    var_0 = _wgslsmith_sub_vec2_i32(firstLeadingBit(countOneBits(vec2<i32>(_wgslsmith_mult_i32(var_0.x, u_input.b.x), abs(52125i)))), vec2<i32>(max(i32(-1i) * -64715i, -_wgslsmith_mod_i32(33819i, 2147483647i)), u_input.b.x));
    return abs(vec4<u32>(16773u, 69698u, 33620u, ~_wgslsmith_dot_vec2_u32(abs(var_2.b.yz), ~var_1.b.xy)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~min(~countOneBits(func_1(Struct_3(vec2<f32>(-472f, -933f), vec4<bool>(false, true, false, true), -1294f), 8333u)), firstTrailingBit(min(vec4<u32>(1u, 1u, 1u, 1u), countOneBits(vec4<u32>(57593u, 0u, 0u, 0u)))));
    var var_1 = u_input.a ^ 46159i;
    let x = u_input.a;
    s_output = StorageBuffer((vec4<i32>(-1i) * -(vec4<i32>(u_input.b.x, 0i, 0i, 13889i) ^ u_input.b)) | (select(u_input.b, reverseBits(vec4<i32>(u_input.b.x, u_input.b.x, 2204i, u_input.b.x)), vec4<bool>(false, false, false, true)) << (((vec4<u32>(1u, 9908u, 28409u, 1u) & var_0) | select(vec4<u32>(var_0.x, 28470u, 4294967295u, 4294967295u), var_0, false)) % vec4<u32>(32u))), countOneBits(select(u_input.b.zwz, ~u_input.b.zzz, true)) ^ vec3<i32>(24048i, abs(~u_input.b.x), countOneBits(1i)));
}

