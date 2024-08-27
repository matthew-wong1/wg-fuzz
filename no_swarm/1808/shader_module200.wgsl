struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_2.x, 174f, -628f))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * arg_2.x)), -521f, arg_2.x)))));
    var var_1 = _wgslsmith_f_op_f32(-198f + -1459f);
    var_1 = arg_2.x;
    var_1 = _wgslsmith_f_op_f32(-arg_2.x);
    var_1 = _wgslsmith_f_op_f32(-var_0.x);
    return _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), -763f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(210f - 309f))))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: Struct_1) -> vec4<i32> {
    let var_0 = Struct_1(arg_3.a, u_input.c, arg_1.c & true);
    var var_1 = _wgslsmith_add_vec4_u32(vec4<u32>(~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, arg_1.a, var_0.a, var_0.a), arg_0), ~arg_1.a), 10725u, 1u, select(arg_0.x, _wgslsmith_div_u32(1u, ~arg_0.x), all(vec2<bool>(var_0.c, false)))), _wgslsmith_sub_vec4_u32(~reverseBits(min(vec4<u32>(arg_0.x, 30520u, 1u, arg_1.a), arg_0)), firstTrailingBit(arg_0)));
    let var_2 = var_0;
    var var_3 = vec4<i32>(var_2.b.x, 1i, countOneBits(~var_2.b.x), -2147483647i);
    var var_4 = Struct_1(4294967295u & _wgslsmith_add_u32(max(~106956u, arg_1.a), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(41644u, 27858u), vec2<u32>(var_0.a, 4294967295u)), _wgslsmith_dot_vec4_u32(arg_0, vec4<u32>(4294967295u, arg_1.a, var_1.x, arg_0.x)))), vec3<i32>(-(~var_2.b.x >> (var_1.x % 32u)), arg_3.b.x, ~var_0.b.x), true);
    return vec4<i32>(_wgslsmith_clamp_i32(2147483647i, 1i, 72865i), -1i, abs(~(arg_3.b.x | -1i)), ~0i);
}

fn func_2(arg_0: vec4<i32>) -> bool {
    var var_0 = Struct_1(~_wgslsmith_div_u32(_wgslsmith_div_u32(~91969u, max(43415u, 4294967295u)), 28166u), arg_0.xzw, true && (32719i < (arg_0.x << (1u % 32u))));
    let var_1 = func_4(~_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(4294967295u, var_0.a, 0u, var_0.a)) | vec4<u32>(var_0.a, var_0.a, var_0.a, 96909u), vec4<u32>(4294967295u, select(4294967295u, 1u, var_0.c), ~var_0.a, var_0.a)), Struct_1(var_0.a, countOneBits(vec3<i32>(var_0.b.x, -33389i ^ u_input.a.x, _wgslsmith_clamp_i32(-46869i, u_input.c.x, u_input.d))), var_0.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1342f, -1127f, 997f, 1164f))))) - vec4<f32>(_wgslsmith_f_op_f32(func_3(4294967295u, Struct_1(var_0.a, vec3<i32>(arg_0.x, u_input.c.x, u_input.c.x), true), vec3<f32>(453f, -1024f, -920f), Struct_1(var_0.a, vec3<i32>(var_0.b.x, 0i, -7783i), var_0.c))), -1196f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(308f - -246f)))), Struct_1(var_0.a | _wgslsmith_sub_u32(_wgslsmith_div_u32(var_0.a, 5753u), firstLeadingBit(var_0.a)), ~var_0.b, all(select(select(vec4<bool>(var_0.c, var_0.c, false, true), vec4<bool>(var_0.c, var_0.c, true, false), vec4<bool>(var_0.c, var_0.c, var_0.c, false)), !vec4<bool>(false, true, var_0.c, false), !vec4<bool>(var_0.c, false, true, false)))));
    let var_2 = vec3<bool>(var_0.c, false, true);
    let var_3 = vec3<i32>(-firstTrailingBit(arg_0.x), -(~_wgslsmith_mult_i32(abs(var_0.b.x), var_0.b.x)), var_0.b.x);
    var var_4 = var_0.a;
    return var_2.x;
}

fn func_1() -> i32 {
    let var_0 = u_input.a;
    let var_1 = min(countOneBits(~vec3<u32>(1u, 1u, max(44450u, 22711u))), ~min(~vec3<u32>(1u, 63947u, 0u) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 42639u, 1u), vec3<u32>(1886u, 4294967295u, 0u), vec3<u32>(1u, 38048u, 4294967295u)) % vec3<u32>(32u)), select(vec3<u32>(1u, 1u, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 62482u, 1u), vec3<u32>(0u, 1u, 47649u), vec3<u32>(0u, 1u, 11210u)), all(vec2<bool>(true, false)))));
    let var_2 = _wgslsmith_add_vec2_u32(var_1.zz, ~countOneBits(countOneBits(_wgslsmith_add_vec2_u32(var_1.yy, var_1.zx))));
    let var_3 = select(select(vec3<bool>(true, any(vec4<bool>(true, true, true, true)), true && all(vec2<bool>(true, true))), vec3<bool>(all(vec3<bool>(true, true, true)), ~var_0.x <= -2147483647i, var_1.x >= (var_2.x ^ var_2.x)), vec3<bool>(select(true, var_1.x >= 0u, all(vec2<bool>(true, false))), any(vec4<bool>(true, true, true, true)), all(vec3<bool>(true, true, true)))), select(vec3<bool>(true, select(true, false, true), func_2(u_input.b) | (1u == var_2.x)), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true)), false), !vec3<bool>(false & select(true, true, false), false, true));
    let var_4 = Struct_1(var_2.x, select(~firstTrailingBit(~vec3<i32>(u_input.d, 3174i, var_0.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, u_input.c.x, 2147483647i), ~_wgslsmith_sub_vec3_i32(vec3<i32>(0i, 2147483647i, 2147483647i), var_0)), !func_2(vec4<i32>(-24983i, u_input.a.x, var_0.x, -2147483647i))), true);
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_dot_vec3_u32(abs(~(~vec3<u32>(24349u, 77466u, 4294967295u))), ~countOneBits(vec3<u32>(1u, 1u, 1u))), firstTrailingBit(vec3<i32>(-1i) * -(~vec3<i32>(0i, -57323i, u_input.e))), true);
    let var_1 = var_0;
    var var_2 = Struct_1(0u, vec3<i32>(u_input.d, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(func_1(), 1i), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(18191i, -43391i, 2612i, var_1.b.x)), u_input.b | u_input.b), -(17759i | var_1.b.x)), func_4(firstTrailingBit(firstTrailingBit(vec4<u32>(var_1.a, 0u, 94438u, var_0.a))), var_1, vec4<f32>(_wgslsmith_f_op_f32(-721f * -2139f), -2082f, _wgslsmith_f_op_f32(-1000f - -350f), -1000f), Struct_1(12525u, vec3<i32>(var_1.b.x, var_1.b.x, -50620i) << (vec3<u32>(var_1.a, var_1.a, 1u) % vec3<u32>(32u)), var_1.c)).x), true);
    var_2 = Struct_1(4294967295u, u_input.b.wwz, true);
    var_2 = var_1;
    var_2 = var_0;
    let var_3 = _wgslsmith_f_op_f32(ceil(110f));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mult_i32(var_1.b.x, abs(-7838i))));
}

