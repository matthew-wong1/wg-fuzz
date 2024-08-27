struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<f32>) -> i32 {
    let var_0 = vec3<f32>(123f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - -1074f), arg_1.x);
    let var_1 = abs(_wgslsmith_clamp_vec4_i32(max(countOneBits(vec4<i32>(2147483647i, u_input.c, 18468i, -59501i)), max(vec4<i32>(-1i, -13211i, -26057i, u_input.c), vec4<i32>(-2147483647i, u_input.c, -20066i, -2814i))), ~(-vec4<i32>(u_input.c, 2147483647i, arg_0.a.a, u_input.c)), vec4<i32>(-2147483647i, _wgslsmith_sub_i32(u_input.c, -9380i), u_input.c, arg_0.a.a | -22739i))) << (vec4<u32>(~firstLeadingBit(u_input.a.x), u_input.b, abs(~1u), ~32107u) % vec4<u32>(32u));
    var var_2 = arg_1.x;
    var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1604f * 366f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -561f))), _wgslsmith_div_f32(478f, arg_1.x)), _wgslsmith_f_op_f32(-arg_1.x));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(377f, -284f, -7790i == u_input.c)), _wgslsmith_f_op_f32(round(-350f)))) + var_0.x);
    return var_1.x;
}

fn func_3(arg_0: i32) -> vec3<i32> {
    let var_0 = Struct_2(Struct_1(-arg_0, vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, u_input.c, 29444i, arg_0), vec4<i32>(arg_0, 2147483647i, 20904i, u_input.c)), min(vec4<i32>(u_input.c, arg_0, -27722i, -22981i), vec4<i32>(u_input.c, -843i, -9547i, u_input.c))), -(~8941i), arg_0 >> (countOneBits(4294967295u) % 32u)), ~(~(u_input.b & u_input.a.x))));
    var var_1 = var_0.a;
    var_1 = var_0.a;
    var var_2 = vec3<f32>(-189f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-324f, -738f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) + _wgslsmith_f_op_f32(round(911f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-1000f))))), _wgslsmith_f_op_f32(abs(2108f)));
    var var_3 = var_1.a | 63418i;
    return var_1.b;
}

fn func_1() -> f32 {
    var var_0 = countOneBits(_wgslsmith_add_vec3_i32(firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, 2147483647i, -1i), vec3<i32>(0i, -11285i, u_input.c))), vec3<i32>(0i, u_input.c, -8734i))) << (u_input.a.zyy % vec3<u32>(32u));
    var_0 = firstLeadingBit(abs(vec3<i32>(_wgslsmith_add_i32(var_0.x ^ -2147483647i, ~var_0.x), func_2(Struct_2(Struct_1(u_input.c, vec3<i32>(var_0.x, var_0.x, -47114i), u_input.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1034f))), -1i)));
    var_0 = vec3<i32>(firstLeadingBit(reverseBits(~var_0.x)), -2147483647i, -27135i);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-996f + _wgslsmith_f_op_f32(f32(-1f) * -1019f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(813f - -1222f), _wgslsmith_f_op_f32(f32(-1f) * -1221f))))) * 1000f);
    var_0 = _wgslsmith_sub_vec3_i32(~_wgslsmith_mult_vec3_i32(~vec3<i32>(9289i, -12378i, 2147483647i), firstLeadingBit(vec3<i32>(u_input.c, 0i, 2147483647i) | vec3<i32>(u_input.c, u_input.c, 1i))), max(~reverseBits(firstTrailingBit(vec3<i32>(1i, -25816i, u_input.c))), func_3(var_0.x)));
    return _wgslsmith_f_op_f32(var_1 - _wgslsmith_div_f32(var_1, var_1));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-803f, -1425f, _wgslsmith_f_op_f32(func_1())));
    let var_1 = Struct_2(Struct_1(-2147483647i, vec3<i32>(-u_input.c & (i32(-1i) * -2147483647i), u_input.c, u_input.c), _wgslsmith_mod_u32(~(u_input.a.x ^ 4294967295u), ~u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_div_f32(var_0.x, var_0.x)), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -995f)), -1000f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-384f, var_0.x, -1532f, var_0.x) - vec4<f32>(var_0.x, -506f, var_0.x, -800f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 388f, -1353f) + vec4<f32>(778f, -193f, 1872f, 289f)), true)), vec4<f32>(758f, var_0.x, -1756f, _wgslsmith_f_op_f32(round(-760f))), true && (var_1.a.a == u_input.c)))), var_1.a.a, vec4<i32>(~5769i, var_1.a.a, u_input.c, ~(-6333i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), 1f, _wgslsmith_f_op_f32(-147f * _wgslsmith_f_op_f32(func_1()))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1017f, var_0.x, 1068f, var_0.x) + vec4<f32>(var_0.x, var_0.x, -1357f, 212f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(228f, var_0.x, var_0.x, -1442f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 1329f, var_0.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(200f, 1487f, 366f, 1792f))))));
}

