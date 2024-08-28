struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: Struct_2) -> vec3<f32> {
    var var_0 = arg_2;
    let var_1 = max(~(u_input.a.x ^ (u_input.b.x >> (u_input.c.x % 32u))), firstTrailingBit(min(u_input.b.x, u_input.b.x)) ^ (u_input.b.x & (u_input.a.x & 79233i))) ^ 31216i;
    var var_2 = arg_2;
    let var_3 = var_1;
    var var_4 = vec3<u32>(_wgslsmith_mult_u32(~_wgslsmith_sub_u32(~13112u, 97949u), 33057u), max(select(4294967295u, 1u, select(arg_1, !arg_1, false)), ~(_wgslsmith_dot_vec3_u32(vec3<u32>(15465u, 40556u, var_0.a), arg_2.b.xxz) << (~2299u % 32u))), _wgslsmith_mult_u32(firstTrailingBit(select(abs(var_0.b.x), _wgslsmith_div_u32(9147u, var_0.a), select(false, arg_1, false))), var_0.b.x));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -918f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(arg_0, 539f)))), _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(782f, 427f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0), vec3<f32>(arg_0, 320f, -762f))))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1126f, -2453f)) + _wgslsmith_f_op_f32(300f * arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0, 1106f, arg_1)) - -1502f), 1f)));
}

fn func_4(arg_0: vec3<f32>) -> vec2<bool> {
    let var_0 = -317f;
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-812f, 1472f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(385f))), _wgslsmith_f_op_f32(-367f * _wgslsmith_f_op_f32(round(arg_0.x)))) + _wgslsmith_f_op_vec3_f32(arg_0 - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_0, arg_0, vec3<bool>(true, false, true)))))), vec3<i32>(min(u_input.a.x, max(~u_input.a.x, _wgslsmith_mod_i32(u_input.b.x, 0i))), ~min(~u_input.a.x, -1i), abs(u_input.b.x)), ~vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 93831i), u_input.b) ^ ~(-1i), u_input.b.x, ~7584i));
    var var_2 = !(!any(vec4<bool>(true, false, false, false))) && !(!(!select(false, false, true)));
    let var_3 = _wgslsmith_div_f32(1257f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(829f, true, Struct_2(u_input.c.x, vec4<u32>(u_input.c.x, u_input.c.x, 1u, 50589u)))).x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.a.x, arg_0.x)) * _wgslsmith_f_op_f32(floor(653f)))), _wgslsmith_f_op_f32(-1054f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0), var_1.a.x)))));
    var var_4 = firstLeadingBit(max(var_1.b.x, 0i));
    return select(vec2<bool>(any(vec3<bool>(true, true, true)) & all(vec4<bool>(true, false, false, false)), false | all(vec2<bool>(true, true))), select(!vec2<bool>(true, select(true, false, true)), vec2<bool>(any(vec4<bool>(true, true, true, true)), true && (var_1.c.x != 1i)), select(vec2<bool>(true, select(true, true, true)), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true))), true);
}

fn func_2(arg_0: i32) -> Struct_2 {
    let var_0 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2235f, -1322f, _wgslsmith_f_op_f32(f32(-1f) * -1449f)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(873f, true, Struct_2(4294967295u, vec4<u32>(35971u, 8462u, u_input.c.x, u_input.c.x)))), _wgslsmith_div_vec3_f32(vec3<f32>(-724f, -316f, -1139f), vec3<f32>(-469f, 255f, -260f))))));
    let var_1 = -7093i;
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -950f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-518f * 2227f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))))), firstLeadingBit(firstTrailingBit(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(0i, var_1, arg_0), u_input.b), -u_input.b))), u_input.a);
    return Struct_2(_wgslsmith_add_u32(u_input.c.x, 1u), vec4<u32>(u_input.c.x, ~(~u_input.c.x), u_input.c.x ^ ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 92742u, u_input.c.x, u_input.c.x), vec4<u32>(11868u, u_input.c.x, 14424u, 65058u)), ~u_input.c.x));
}

fn func_1() -> Struct_4 {
    let var_0 = func_2(u_input.b.x << (74304u % 32u));
    let var_1 = vec3<u32>(max(_wgslsmith_add_u32(_wgslsmith_mod_u32(0u, ~4697u), 1u), 4294967295u), var_0.a, 4294967295u);
    var var_2 = 1285f;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1150f)));
    var var_3 = Struct_2(select(u_input.c.x, 0u, select(true, true, (u_input.b.x < 2147483647i) | all(vec2<bool>(false, false)))), var_0.b);
    return Struct_4(Struct_3(vec3<f32>(_wgslsmith_f_op_f32(abs(1671f)), 1287f, _wgslsmith_f_op_f32(ceil(937f))), u_input.b, _wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(u_input.b.x, u_input.b.x, u_input.a.x)), _wgslsmith_sub_vec3_i32(u_input.b, u_input.b) >> (~var_3.b.xwx % vec3<u32>(32u)), -(~vec3<i32>(-17607i, -10478i, u_input.b.x)))), Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-575f - -563f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec3_f32(func_3(1128f, true, Struct_2(0u, var_0.b))).x, _wgslsmith_f_op_f32(-808f - -1201f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(843f, false, Struct_2(63648u, var_0.b))).x + _wgslsmith_f_op_f32(sign(1000f)))), vec3<i32>(~min(u_input.a.x, u_input.a.x), ~_wgslsmith_clamp_i32(0i, u_input.a.x, u_input.a.x), -5996i), vec3<i32>(33689i, u_input.b.x, ~firstLeadingBit(0i))), _wgslsmith_f_op_f32(abs(-267f)) != _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1290f, -606f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(162009u, vec4<u32>(u_input.c.x, (1126u >> (0u % 32u)) >> (u_input.c.x % 32u), 25029u, u_input.c.x));
    let var_1 = func_1();
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(429f + _wgslsmith_f_op_vec3_f32(func_3(var_1.b.a.x, var_1.c, Struct_2(var_0.b.x, var_0.b))).x))))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.a.x), func_1().a.a.x) + -163f) * -1869f) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-332f * var_1.b.a.x), func_1().b.a.x)) * 1772f);
    let var_4 = ~(~(~_wgslsmith_add_vec3_u32(vec3<u32>(var_0.b.x, var_0.a, u_input.c.x), var_0.b.zxz))) & vec3<u32>(u_input.c.x, 1u, ~61920u);
    var_2 = 975f;
    var_2 = var_1.a.a.x;
    let var_5 = var_1.a.b.x;
    let var_6 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -785f));
    let x = u_input.a;
    s_output = StorageBuffer(-1285f, var_4.x);
}

