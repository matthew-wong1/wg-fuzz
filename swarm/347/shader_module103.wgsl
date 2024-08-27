struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: f32) -> u32 {
    var var_0 = Struct_1(arg_2.a, arg_2.b);
    var_0 = arg_2;
    var_0 = arg_2;
    var_0 = arg_2;
    var_0 = arg_2;
    return ~(firstLeadingBit(u_input.a.x) & _wgslsmith_div_u32(1u, ~(~u_input.a.x)));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(vec2<u32>(func_3(_wgslsmith_sub_i32(select(0i, 1i, false), -1i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-903f, -1395f, -581f, -851f)), Struct_1(-vec4<i32>(-1i, 1i, 14906i, -50393i), firstLeadingBit(vec3<i32>(2147483647i, 2179i, 28217i))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(1541f))))), abs(22682u)), true, Struct_1(vec4<i32>(-(32014i << (1u % 32u)), reverseBits(max(-61914i, 57514i)), 1i, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(0i, -2147483647i, -1i, 0i)), -vec4<i32>(1i, -2147483647i, -45587i, 8909i))), -vec3<i32>(firstLeadingBit(-21572i), 2147483647i, _wgslsmith_sub_i32(0i, -19191i))), ~4294967295u);
    let var_1 = var_0.b;
    let var_2 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-523f - -544f) * -557f), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-645f - -305f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(764f, -289f)), -1274f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-254f)) + _wgslsmith_f_op_f32(-328f - -349f))))));
    let var_3 = var_0;
    var var_4 = abs(var_0.c.b.x);
    return Struct_2(~countOneBits(~abs(vec2<u32>(var_0.d, 5002u))), var_1, Struct_1(vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(var_0.c.b, var_0.c.a.yyx), -36808i), _wgslsmith_clamp_i32(1i ^ var_0.c.b.x, -17337i, i32(-1i) * -25566i), -2147483647i, 19737i), _wgslsmith_mult_vec3_i32(-_wgslsmith_mult_vec3_i32(var_3.c.b, var_0.c.b), firstLeadingBit(firstTrailingBit(vec3<i32>(var_0.c.b.x, 1i, var_3.c.a.x))))), ~_wgslsmith_add_u32(abs(4294967295u), _wgslsmith_dot_vec2_u32(var_0.a & u_input.a.xx, vec2<u32>(var_0.d, u_input.a.x))));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_2, arg_3: f32) -> i32 {
    return -40767i;
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: vec2<bool>) -> vec3<u32> {
    var var_0 = Struct_2(u_input.a.yx, false, Struct_1(_wgslsmith_mult_vec4_i32((vec4<i32>(-32858i, 19999i, -629i, 0i) >> (vec4<u32>(arg_1, 50140u, u_input.a.x, arg_1) % vec4<u32>(32u))) & -vec4<i32>(16026i, 2147483647i, -4869i, -40785i), vec4<i32>(_wgslsmith_clamp_i32(2147483647i, 0i, -31678i), select(20005i, 44376i, false), 1i, 9093i)), vec3<i32>(min(abs(-49865i), max(-1i, 11749i)), 2147483647i, func_4(_wgslsmith_div_u32(26899u, u_input.a.x), true, func_2(), _wgslsmith_f_op_f32(round(-1305f))))), u_input.a.x);
    var_0 = func_2();
    var var_1 = var_0.c.a.x;
    var_0 = Struct_2(_wgslsmith_sub_vec2_u32(reverseBits(select(vec2<u32>(4294967295u, 0u), ~vec2<u32>(u_input.a.x, 1u), arg_2)), vec2<u32>(~_wgslsmith_mult_u32(4294967295u, arg_1), ~var_0.d ^ arg_1)), var_0.b, func_2().c, _wgslsmith_add_u32(u_input.a.x, u_input.a.x));
    let var_2 = any(select(select(select(vec4<bool>(arg_0, false, var_0.b, arg_2.x), !vec4<bool>(true, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(false, false, false, true)), select(!vec4<bool>(arg_0, arg_0, arg_0, var_0.b), select(vec4<bool>(arg_0, true, arg_0, arg_2.x), vec4<bool>(arg_2.x, var_0.b, false, var_0.b), vec4<bool>(var_0.b, false, var_0.b, var_0.b)), true || var_0.b), true), !vec4<bool>(true, any(vec4<bool>(true, false, true, true)), true, !arg_2.x), var_0.b));
    return ~min(u_input.a, vec3<u32>(1u, 1u, u_input.a.x));
}

fn func_5(arg_0: u32) -> bool {
    let var_0 = Struct_2(select(firstTrailingBit(~(u_input.a.xy & vec2<u32>(16853u, u_input.a.x))), ~(~u_input.a.zz), true), all(select(select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(false, false)), !select(vec2<bool>(true, false), vec2<bool>(true, true), false), true)), func_2().c, arg_0);
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-1273f - -1267f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1347f, 1000f)) * _wgslsmith_f_op_f32(f32(-1f) * -991f)), _wgslsmith_f_op_f32(select(464f, _wgslsmith_f_op_f32(-1510f * -312f), true)))))));
    let var_2 = !select(vec3<bool>(true, var_0.b, var_0.b), select(vec3<bool>(all(vec2<bool>(true, var_0.b)), -200f < var_1.x, var_0.b), !(!vec3<bool>(var_0.b, false, var_0.b)), true), any(!vec3<bool>(var_0.b, false, var_0.b)));
    var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_1.x) * vec3<f32>(1350f, var_1.x, var_1.x)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-478f, 477f, 748f) - vec3<f32>(1014f, var_1.x, -1350f)))), true)) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - var_1.x)), _wgslsmith_f_op_f32(trunc(-557f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + -1665f) * _wgslsmith_f_op_f32(1124f - 483f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(var_1.x)), _wgslsmith_f_op_f32(var_1.x * var_1.x), _wgslsmith_f_op_f32(-var_1.x))), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_1.x, var_1.x))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * 1130f) - _wgslsmith_f_op_f32(-664f - -665f))))));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, var_1.x, -454f), vec3<f32>(-1731f, -1000f, -629f), vec3<bool>(true, var_2.x, var_0.b)))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), -159f, _wgslsmith_f_op_f32(ceil(var_1.x))) + vec3<f32>(_wgslsmith_div_f32(484f, var_1.x), _wgslsmith_f_op_f32(abs(-787f)), 366f))));
    return var_0.c.a.x > var_0.c.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(select(_wgslsmith_dot_vec3_u32(vec3<u32>(48012u, u_input.a.x, u_input.a.x), func_1(false, u_input.a.x, vec2<bool>(true, false))), u_input.a.x, all(vec3<bool>(false, true, false)) | true)) | any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)));
    var_0 = all(vec2<bool>(func_5(u_input.a.x), false));
    var var_1 = Struct_2(vec2<u32>(u_input.a.x, 2063u), u_input.a.x == u_input.a.x, func_2().c, _wgslsmith_mod_u32(~70877u, u_input.a.x));
    var var_2 = ~(~var_1.a.x);
    var var_3 = func_2().c;
    let x = u_input.a;
    s_output = StorageBuffer(select(var_3.b, (vec3<i32>(-1i) * -var_1.c.a.wzx) ^ var_3.a.wxz, any(select(vec4<bool>(var_1.b, true, true, false), select(vec4<bool>(false, var_1.b, var_1.b, true), vec4<bool>(var_1.b, var_1.b, var_1.b, var_1.b), true), !vec4<bool>(var_1.b, var_1.b, false, false)))), vec3<u32>(u_input.a.x, 0u, u_input.a.x ^ (~var_1.a.x >> (~69459u % 32u))));
}

