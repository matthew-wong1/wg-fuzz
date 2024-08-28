struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: bool,
    d: i32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_4) -> u32 {
    let var_0 = Struct_4(firstLeadingBit(vec3<i32>(countOneBits(~u_input.c), 37879i, _wgslsmith_div_i32(arg_2.a.x, ~arg_2.a.x))), Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-300f))))), -254f, ~(~_wgslsmith_add_vec3_u32(vec3<u32>(65636u, 4294967295u, 0u), u_input.b))));
    let var_1 = ~select(arg_1, vec3<i32>(~var_0.a.x, reverseBits(var_0.a.x), max(7948i, 2147483647i)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false), select(false, false, false))) ^ (~(~(-vec3<i32>(0i, 29117i, arg_2.a.x))) & arg_1);
    let var_2 = select(select(!vec2<bool>(any(vec3<bool>(false, true, false)), arg_1.x >= -2147483647i), vec2<bool>((var_0.a.x < -2147483647i) | true, true && any(vec3<bool>(false, false, false))), vec2<bool>(-517f <= _wgslsmith_f_op_f32(arg_2.b.a + -471f), all(vec3<bool>(true, true, true)))), !select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(false, true)), select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true), any(vec3<bool>(true, true, false))), !vec2<bool>(true, any(vec2<bool>(false, false))), vec2<bool>(false, !any(vec2<bool>(false, true)))));
    var var_3 = arg_1.x;
    var var_4 = Struct_3(vec3<u32>(firstTrailingBit(~0u), 0u << (1u % 32u), arg_2.b.c.x | ~var_0.b.c.x), var_0.b, Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-374f + 948f), arg_2.b.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(925f, arg_2.b.a)) + _wgslsmith_f_op_f32(-243f * -536f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(643f * arg_2.b.b))), vec3<u32>(1u, abs(4294967295u), max(~24160u, reverseBits(4294967295u)))), Struct_2(var_0.b.b, _wgslsmith_f_op_f32(trunc(225f)), ~_wgslsmith_sub_vec3_u32(abs(arg_2.b.c), select(vec3<u32>(0u, 79403u, 4294967295u), vec3<u32>(u_input.d.x, var_0.b.c.x, var_0.b.c.x), var_2.x))));
    return ~34357u;
}

fn func_2(arg_0: vec3<u32>) -> Struct_3 {
    let var_0 = u_input.d.x;
    var var_1 = _wgslsmith_mod_u32(arg_0.x, 18266u) & abs(abs(1u));
    var var_2 = select(~firstTrailingBit(~(arg_0.x ^ 1736u)), _wgslsmith_sub_u32(~(55964u | u_input.a.x), func_3(~1u, abs(vec3<i32>(u_input.c, u_input.c, u_input.c) >> (arg_0 % vec3<u32>(32u))), Struct_4(vec3<i32>(-11736i, 15355i, u_input.c), Struct_2(1523f, 1000f, u_input.d)))), all(vec2<bool>(all(vec2<bool>(false, true)), true)));
    var_2 = 56271u;
    let var_3 = Struct_3(firstTrailingBit(u_input.b), Struct_2(-567f, _wgslsmith_f_op_f32(abs(2119f)), ~(~vec3<u32>(arg_0.x, 48584u, 1u)) | abs(_wgslsmith_mult_vec3_u32(u_input.b, u_input.d))), Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(614f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-3004f, -680f))))), _wgslsmith_mult_vec3_u32(u_input.b, _wgslsmith_div_vec3_u32(select(u_input.b, vec3<u32>(12874u, arg_0.x, 10924u), vec3<bool>(false, true, false)), reverseBits(vec3<u32>(0u, 4294967295u, 8640u))))), Struct_2(-235f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(354f * 263f))), vec3<u32>(abs(91242u), 0u, _wgslsmith_dot_vec2_u32(arg_0.xz, u_input.b.xx))));
    return var_3;
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: Struct_3, arg_3: Struct_2) -> vec4<bool> {
    var var_0 = select(func_3(1u, select(~vec3<i32>(u_input.c, u_input.c, u_input.c), _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, 0i, 43846i), vec3<i32>(-2944i, u_input.c, 2147483647i)), vec3<i32>(0i, 122i, 14305i)), 13882u <= select(0u, arg_1, true)), Struct_4(vec3<i32>(u_input.c, u_input.c, _wgslsmith_div_i32(-38672i, 1451i)), arg_3)), ~arg_3.c.x, _wgslsmith_mult_u32(1u, arg_3.c.x) < (_wgslsmith_clamp_u32(46374u, _wgslsmith_add_u32(arg_1, u_input.a.x), 28458u) & (36815u >> ((arg_2.d.c.x << (92903u % 32u)) % 32u))));
    var_0 = max(~(firstTrailingBit(_wgslsmith_sub_u32(arg_1, 1u)) & firstLeadingBit(countOneBits(arg_3.c.x))), u_input.d.x);
    let var_1 = arg_3;
    var var_2 = Struct_4(abs(vec3<i32>(-38082i, u_input.c, ~(u_input.c & 2147483647i))), func_2(~countOneBits(select(arg_3.c, vec3<u32>(u_input.a.x, var_1.c.x, arg_1), vec3<bool>(false, false, true)))).d);
    var_2 = Struct_4(-vec3<i32>(-29208i | u_input.c, countOneBits(var_2.a.x), var_2.a.x), Struct_2(arg_3.b, var_1.b, ~(~min(vec3<u32>(49345u, arg_2.d.c.x, arg_3.c.x), vec3<u32>(13625u, arg_1, 4294967295u)))));
    return vec4<bool>(any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), false)), select(any(vec4<bool>(false, true, false, true)), true, arg_2.b.c.x >= 1u))), false, any(!vec3<bool>(var_2.a.x >= -6011i, true, var_2.a.x < var_2.a.x)), !((_wgslsmith_dot_vec2_u32(arg_2.a.yy, arg_2.d.c.yx) < arg_3.c.x) && !(-4355i > u_input.c)));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: vec4<u32>, arg_3: u32) -> bool {
    let var_0 = u_input.c;
    return true & all(select(vec4<bool>(true, true, true, true), func_4(_wgslsmith_f_op_f32(-arg_1), 27711u << (0u % 32u), func_2(vec3<u32>(u_input.a.x, u_input.d.x, u_input.b.x)), func_2(arg_2.ywz).d), vec4<bool>(any(vec2<bool>(false, true)), all(vec2<bool>(true, false)), func_4(-477f, 27959u, Struct_3(vec3<u32>(4294967295u, 88483u, arg_2.x), Struct_2(-1816f, -1454f, u_input.d), Struct_2(arg_1, arg_0, vec3<u32>(u_input.d.x, 56951u, arg_3)), Struct_2(809f, arg_0, arg_2.xwy)), Struct_2(-3147f, arg_0, vec3<u32>(0u, arg_2.x, arg_3))).x, any(vec2<bool>(false, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !all(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false)), func_1(1125f, -182f, vec4<u32>(u_input.a.x, 31208u, 4294967295u, u_input.a.x), u_input.d.x) != all(vec4<bool>(true, true, true, false))));
    var var_1 = 481f;
    let var_2 = max(vec4<u32>(abs(12534u), u_input.d.x, 0u & max(u_input.d.x, u_input.b.x), firstLeadingBit(~u_input.a.x)) << ((~vec4<u32>(4294967295u, 141080u, u_input.a.x, u_input.b.x) << (~abs(vec4<u32>(u_input.a.x, u_input.d.x, 1u, u_input.d.x)) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<u32>(u_input.d.x, ~reverseBits(~1u), countOneBits(4294967295u & select(u_input.b.x, 97890u, var_0)), _wgslsmith_mult_u32(_wgslsmith_sub_u32(~1u, countOneBits(u_input.d.x)), ~(~u_input.a.x))));
    let var_3 = ~_wgslsmith_dot_vec4_u32(var_2, ~abs(vec4<u32>(u_input.b.x, 41703u, u_input.a.x, 41682u))) | _wgslsmith_sub_u32(abs(~u_input.a.x ^ var_2.x), 4209u);
    let var_4 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-756f, 122f))))) * _wgslsmith_f_op_f32(348f + _wgslsmith_f_op_f32(select(func_2(vec3<u32>(var_2.x, u_input.d.x, 610u)).d.a, _wgslsmith_f_op_f32(sign(1881f)), true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), vec3<u32>(func_3(firstTrailingBit(_wgslsmith_add_u32(var_2.x, var_2.x)), vec3<i32>(u_input.c, u_input.c, 2147483647i), Struct_4(vec3<i32>(0i, 26834i, u_input.c), func_2(vec3<u32>(84997u, var_3, var_2.x)).b)), var_2.x, min(var_3, 84383u)));
    var var_5 = 37674u;
    var_5 = 26279u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(var_4.b, var_4.b, false)), _wgslsmith_f_op_f32(-var_4.a), _wgslsmith_f_op_f32(var_4.a - -2589f), _wgslsmith_f_op_f32(f32(-1f) * -305f))))), select(vec2<i32>(min(-2147483647i, u_input.c), _wgslsmith_dot_vec4_i32(vec4<i32>(-22891i, -1i, -33482i, 3782i), vec4<i32>(u_input.c, 1i, u_input.c, 47597i))) << (~u_input.d.yx % vec2<u32>(32u)), ~max(vec2<i32>(u_input.c, -1i), vec2<i32>(u_input.c, u_input.c)), all(vec2<bool>(true, true))));
}

