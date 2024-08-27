struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
    c: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
    c: vec2<u32>,
}

struct Struct_4 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<u32>, arg_1: i32, arg_2: i32, arg_3: bool) -> i32 {
    let var_0 = Struct_1(u_input.a.zy, arg_1);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(128f - -905f), -1000f, _wgslsmith_div_f32(461f, 897f)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-568f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -351f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(982f - 321f))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1263f, -2222f, 617f)), vec3<f32>(-1185f, 176f, -1143f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1103f, 557f, 1348f), vec3<f32>(150f, -561f, 1513f))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(976f, 609f, 195f), vec3<f32>(-312f, 981f, 765f))))), !(!vec3<bool>(true, true, arg_3))))));
    var_1 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_1.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.x, var_1.x), 594f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1014f, var_1.x)))))));
    let var_2 = firstLeadingBit(u_input.a.yz);
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * var_1.x)), _wgslsmith_f_op_f32(abs(var_1.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.x - var_1.x))))), var_1.x, ~u_input.a.xy);
    return ~1i;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<bool>) -> i32 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -450f), _wgslsmith_mod_i32(-(29419i << (arg_1.a.x % 32u)) & reverseBits(arg_1.b), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.b, arg_0.b, arg_1.b), arg_0.a, vec3<i32>(1i, -68756i, arg_1.b)), arg_0.a), func_3(vec4<u32>(arg_1.a.x, u_input.a.x, arg_1.a.x, u_input.a.x), ~(-1i), arg_0.a.x, arg_0.c >= arg_0.c), ~(-arg_0.b))));
    var var_1 = arg_0;
    var var_2 = arg_1;
    var_1 = Struct_2(vec3<i32>(var_1.b, i32(-1i) * -41355i, i32(-1i) * -_wgslsmith_clamp_i32(-1i, 45782i, var_0.b)), 19289i, _wgslsmith_f_op_f32(var_0.a - var_1.c));
    var var_3 = ~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 49501u, var_2.a.x) & u_input.a, _wgslsmith_div_vec3_u32(vec3<u32>(3299u, 0u, 48150u), vec3<u32>(75346u, 52471u, 36247u))), ~u_input.a.x, var_2.a.x), reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.a.x, var_2.a.x, arg_1.a.x, 28471u), vec4<u32>(var_2.a.x, u_input.a.x, 57434u, u_input.a.x)) & vec4<u32>(58193u, u_input.a.x, arg_1.a.x, u_input.a.x)));
    return var_1.a.x;
}

fn func_1() -> Struct_1 {
    let var_0 = u_input.a.yx;
    let var_1 = Struct_2(vec3<i32>(~(func_2(Struct_2(vec3<i32>(-52710i, -22099i, 2147483647i), 0i, 1252f), Struct_1(vec2<u32>(var_0.x, var_0.x), 30397i), vec2<bool>(true, true)) | -2147483647i), -1i, _wgslsmith_add_i32(abs(1i), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-8754i, 1i), vec2<i32>(2147483647i, 1i)), -30552i))), _wgslsmith_dot_vec2_i32(~_wgslsmith_add_vec2_i32(vec2<i32>(1i, -31226i), ~vec2<i32>(29002i, -1i)), vec2<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(-vec4<i32>(-10754i, 0i, -2147483647i, 1i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-19228i, 0i, 2147483647i, -1i), vec4<i32>(30759i, -50347i, 24042i, 23867i), vec4<i32>(2147483647i, 10109i, 11036i, 2147483647i))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(950f + -216f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1066f), -213f)));
    let var_2 = _wgslsmith_dot_vec4_i32(-_wgslsmith_sub_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(72598i, var_1.a.x, var_1.b, var_1.b), vec4<i32>(var_1.a.x, var_1.b, 0i, 0i)), abs(vec4<i32>(var_1.a.x, var_1.b, 0i, var_1.a.x) | vec4<i32>(1i, -1i, -39886i, -42151i))), vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(vec4<i32>(-7253i, var_1.b, 1i, 13806i), abs(vec4<i32>(-19766i, 2147483647i, -29501i, var_1.a.x))));
    var var_3 = var_1.a;
    let var_4 = Struct_4(-581f, (~_wgslsmith_add_i32(var_3.x, 1i) >> (abs(41167u) % 32u)) << (_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, var_0.x, u_input.a.x, 0u), ~vec4<u32>(1u, u_input.a.x, var_0.x, var_0.x)) % 32u));
    return Struct_1(abs(_wgslsmith_mult_vec2_u32(reverseBits(var_0), u_input.a.zx) << (_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.x, var_0.x), var_0), vec2<u32>(30493u, 1u)) % vec2<u32>(32u))), min(abs(var_4.b), ~var_4.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(-163f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1417f)));
    let var_1 = func_1();
    var var_2 = -433f;
    var var_3 = _wgslsmith_div_u32(32099u, 4294967295u);
    let var_4 = ~0u;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0 * var_0)))))));
    var var_5 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0 + var_0), _wgslsmith_f_op_f32(trunc(var_0)), _wgslsmith_f_op_f32(571f * -481f), _wgslsmith_f_op_f32(-var_0)))), -1000f, u_input.a.xy);
    let var_6 = Struct_2(vec3<i32>(func_2(Struct_2(vec3<i32>(1i, var_1.b, var_1.b), -2147483647i, _wgslsmith_f_op_f32(step(-937f, 318f))), var_1, select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)))), 6288i, reverseBits(var_1.b)), var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(324f, _wgslsmith_f_op_f32(-var_0), true))))));
    let var_7 = abs(_wgslsmith_clamp_u32(1u, _wgslsmith_sub_u32(~_wgslsmith_mod_u32(var_1.a.x, 82253u), ~u_input.a.x), u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_6.a.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.a.x, 85120u, var_4), vec3<u32>(0u, 45944u, var_4), vec3<u32>(44457u, 51115u, var_1.a.x)), ~vec3<u32>(1u, var_7, 57613u)), ~select(vec3<u32>(var_5.c.x, var_4, 8252u), vec3<u32>(var_5.c.x, var_1.a.x, var_7), true)) << (_wgslsmith_clamp_u32(_wgslsmith_mod_u32(1u << (var_5.c.x % 32u), var_4 | 1u), 43678u, func_1().a.x) % 32u), -(vec3<i32>(var_6.a.x | var_6.a.x, 1i, 0i) ^ -firstLeadingBit(vec3<i32>(var_1.b, -2147483647i, 45803i))), _wgslsmith_dot_vec3_i32((var_6.a ^ firstLeadingBit(var_6.a)) ^ var_6.a, var_6.a));
}

