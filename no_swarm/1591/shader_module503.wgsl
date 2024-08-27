struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec3<f32>,
    d: vec3<f32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 17> = array<vec2<bool>, 17>(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec2<i32>) -> i32 {
    var var_0 = arg_0;
    var var_1 = all(select(vec3<bool>(true, any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), true), select(vec3<bool>(true, true, true), vec3<bool>(false, arg_2.x < -1i, false), any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false))), -502f == _wgslsmith_f_op_f32(floor(var_0.a.x))));
    let var_2 = min(arg_0.e.x, -1i);
    var var_3 = 1i;
    var var_4 = arg_0;
    return var_0.e.x & -_wgslsmith_clamp_i32(~var_2, ~reverseBits(var_4.e.x), countOneBits(-1i));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: u32) -> vec3<f32> {
    global0 = array<vec2<bool>, 17>();
    var var_0 = vec2<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(-2147483647i, -51538i), -arg_0), ~(-2147483647i));
    let var_1 = vec3<bool>(true, true, !any(vec4<bool>(true, true, true, true)));
    let var_2 = _wgslsmith_mult_i32(-_wgslsmith_div_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, -1i, 2147483647i), vec3<i32>(var_0.x, var_0.x, var_0.x)), ~arg_0), var_0.x);
    global0 = array<vec2<bool>, 17>();
    return vec3<f32>(arg_1, _wgslsmith_f_op_f32(step(arg_1, _wgslsmith_f_op_f32(-arg_1))), arg_1);
}

fn func_2(arg_0: bool) -> f32 {
    var var_0 = ~(firstLeadingBit(u_input.c) ^ (~1u >> (u_input.c % 32u)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-449f, 279f), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -650f)), _wgslsmith_f_op_f32(f32(-1f) * -923f))));
    var var_2 = Struct_1(vec4<f32>(-685f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(-var_1.x)))), -1208f, var_1.x), var_1.x, _wgslsmith_f_op_vec3_f32(func_4(-func_3(Struct_1(var_1, -667f, vec3<f32>(-413f, var_1.x, 600f), vec3<f32>(var_1.x, 1227f, 1044f), vec3<i32>(2147483647i, -2147483647i, -1i)), u_input.c, vec2<i32>(-74299i, 1i)) ^ func_3(Struct_1(vec4<f32>(-1935f, -1000f, 1359f, var_1.x), var_1.x, var_1.zyw, vec3<f32>(172f, var_1.x, var_1.x), vec3<i32>(-36010i, 5425i, 0i)), select(1u, 106958u, false), _wgslsmith_div_vec2_i32(vec2<i32>(-1i, -1i), vec2<i32>(-1559i, 15445i))), var_1.x, u_input.c)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(var_1.wwy * vec3<f32>(_wgslsmith_f_op_f32(sign(var_1.x)), 680f, var_1.x)), var_1.zxx)), vec3<i32>(i32(-1i) * -34645i, _wgslsmith_mod_i32(1i, 2147483647i), max(4678i, 1i)));
    var_0 = reverseBits(~(~(~u_input.a.x)));
    var var_3 = vec4<f32>(-604f, _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.x + 197f))), any(!vec4<bool>(false, false, arg_0, false)))), -192f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.c.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.x)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + 111f));
}

fn func_1() -> vec3<f32> {
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2896f + 1031f)), _wgslsmith_f_op_f32(-299f + _wgslsmith_f_op_f32(floor(1761f))))), 2458f, -687f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1875f + -830f))))), _wgslsmith_f_op_f32(func_2(false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(767f + 1183f), _wgslsmith_f_op_f32(round(2063f)), -1143f) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, 252f, -412f))))))), vec3<f32>(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(f32(-1f) * -175f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(658f, _wgslsmith_f_op_f32(floor(946f)))))), _wgslsmith_f_op_f32(f32(-1f) * -488f)), reverseBits(vec3<i32>(1i, 1i, 1i)));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1138f, _wgslsmith_f_op_vec3_f32(func_4(-40105i, _wgslsmith_f_op_f32(554f * var_0.c.x), _wgslsmith_div_u32(62288u, 20041u))).x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1684f))), -1000f)), _wgslsmith_f_op_f32(abs(438f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_0.d))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.c))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1000f, var_0.c.x, var_0.d.x), _wgslsmith_f_op_vec3_f32(ceil(var_0.d)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, 658f, var_0.c.x)))), _wgslsmith_f_op_vec3_f32(var_0.d * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(var_0.d)))), !select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true))))), min(_wgslsmith_mult_vec3_i32(var_0.e, vec3<i32>(countOneBits(2147483647i), abs(var_0.e.x), -var_0.e.x)), vec3<i32>(abs(1i), var_0.e.x, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-18181i, -2147483647i, var_0.e.x, -2147483647i), vec4<i32>(var_0.e.x, var_0.e.x, var_0.e.x, 1i)), vec4<i32>(var_0.e.x, var_0.e.x, var_0.e.x, var_0.e.x) & vec4<i32>(-53731i, -32200i, -1392i, var_0.e.x)))));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.b)) - var_0.d.x), _wgslsmith_f_op_vec3_f32(abs(var_0.a.yzy)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1184f), var_0.b), 1728f, _wgslsmith_f_op_f32(min(var_0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -518f)))))), vec3<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(-7482i, var_0.e.x), vec2<i32>(var_0.e.x, var_0.e.x) & vec2<i32>(var_0.e.x, var_0.e.x)), abs(var_0.e.x), firstTrailingBit(var_0.e.x | _wgslsmith_div_i32(var_0.e.x, var_0.e.x))));
    var var_1 = _wgslsmith_clamp_u32(abs(u_input.a.x | u_input.c), select(~u_input.c, _wgslsmith_mult_u32(max(max(u_input.c, u_input.a.x), u_input.b.x), firstTrailingBit(1u)), true), u_input.a.x);
    var_1 = ~(~38185u);
    return vec3<f32>(var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.a.x))), var_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 17>();
    let var_0 = vec3<i32>(1i, 1i, _wgslsmith_div_i32(~(~(-1i << (1u % 32u))), _wgslsmith_dot_vec2_i32(~vec2<i32>(0i, -1i), _wgslsmith_sub_vec2_i32(-vec2<i32>(25016i, 3145i), vec2<i32>(22582i, 64139i)))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-263f, -135f, 1591f, 1431f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -514f, 477f, 1038f) + vec4<f32>(-1432f, 395f, -467f, 242f)), true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-143f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-158f - -2249f), -1698f, _wgslsmith_f_op_f32(f32(-1f) * -1316f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1()) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(var_0.x, 571f, u_input.c)) - _wgslsmith_f_op_vec3_f32(func_4(31468i, 840f, u_input.a.x))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-699f, _wgslsmith_f_op_f32(select(-437f, -249f, false)), -928f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(738f, 1425f, 890f) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-521f, 162f, -1087f), vec3<f32>(-1949f, -103f, -1250f))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 242f, 2119f) - vec3<f32>(-881f, -961f, -1043f)), _wgslsmith_f_op_vec3_f32(func_4(var_0.x, 836f, u_input.b.x)))))), firstTrailingBit(countOneBits(var_0)) | vec3<i32>(var_0.x, var_0.x, reverseBits(var_0.x)));
    var var_2 = 1530f;
    global0 = array<vec2<bool>, 17>();
    var var_3 = var_1;
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_vec3_f32(func_1()).x)), -575f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(1985f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-887f + var_3.a.x))), var_3.e.x);
}

