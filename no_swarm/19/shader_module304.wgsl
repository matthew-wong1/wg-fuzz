struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec4<bool>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(abs((2819u >> ((27576u | u_input.a) % 32u)) | 1u), vec4<i32>(-1i, _wgslsmith_add_i32(i32(-1i) * -2147483647i, u_input.c), u_input.c, -15906i), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, any(vec4<bool>(true, true, false, false)), all(vec2<bool>(true, true)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-863f, -318f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(353f)), 1f), -260f)));
    let var_1 = Struct_1(~var_0.a, -vec4<i32>(firstTrailingBit(2147483647i), _wgslsmith_mult_i32(~var_0.b.x, var_0.b.x), 2147483647i, -u_input.c), vec4<bool>(var_0.c.x, false, !(!var_0.c.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(f32(-1f) * -1700f), true)) <= _wgslsmith_f_op_f32(f32(-1f) * -1142f)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.x - _wgslsmith_div_f32(276f, var_0.d.x))), var_0.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.d.x), _wgslsmith_f_op_f32(-1764f - _wgslsmith_f_op_f32(abs(-348f)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.d.x, var_0.d.x, 1938f) + var_0.d.wyx)) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(773f, -446f, var_0.d.x))))));
    let var_3 = ~(reverseBits(vec4<u32>(~var_1.a, var_0.a, 1u, 0u)) << (max(min(vec4<u32>(var_0.a, var_1.a, 49092u, 23893u), vec4<u32>(var_1.a, var_0.a, 27430u, var_0.a)) | ~vec4<u32>(27550u, 4294967295u, var_0.a, u_input.b.x), vec4<u32>(var_1.a, abs(50704u), 1u, 4294967295u)) % vec4<u32>(32u)));
    let var_4 = var_1.b.x;
    return 18435u;
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = !(!(arg_3.d.x >= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_3.d.x + arg_3.d.x)))));
    var var_1 = arg_3;
    let var_2 = vec3<u32>(~703u, _wgslsmith_div_u32(~arg_3.a, ~func_3()), 1u);
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.d.x - var_1.d.x), -663f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d.x + var_1.d.x)), var_1.d.x))) >= var_1.d.x;
    var_3 = var_1.c.x;
    return Struct_1(abs(var_1.a), _wgslsmith_add_vec4_i32(arg_3.b, max(vec4<i32>(arg_3.b.x, firstTrailingBit(1i), arg_1, var_1.b.x & var_1.b.x), abs(firstTrailingBit(vec4<i32>(u_input.c, arg_3.b.x, 0i, -1i))))), var_1.c, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-358f, var_1.d.x, -181f, arg_3.d.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(arg_3.d, arg_3.d, vec4<bool>(false, var_0, arg_3.c.x, var_0))) - _wgslsmith_f_op_vec4_f32(arg_3.d - var_1.d))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(arg_3.d - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_3.d.x, -711f, -823f, -1000f), var_1.d, true))), var_1.d)))));
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_1) -> f32 {
    let var_0 = func_2(~(~53730u), firstTrailingBit(~func_2(u_input.b.x << (1u % 32u), ~(-1i), u_input.b.x, arg_2).b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(select(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.a, arg_2.a, arg_2.a), vec3<u32>(0u, u_input.a, 50423u)), ~arg_2.a, any(vec4<bool>(arg_0, arg_0, false, arg_0))), 0u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(14636u, arg_2.a, 0u, u_input.b.x), vec4<u32>(arg_2.a, 0u, u_input.a, 59324u)) % 32u), ~max(24479u, 4294967295u)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, arg_2.a, 76969u), ~vec3<u32>(4294967295u, 4294967295u, arg_2.a)) >> (max(vec3<u32>(arg_2.a, arg_2.a, 1u) >> (vec3<u32>(4294967295u, arg_2.a, 4906u) % vec3<u32>(32u)), ~vec3<u32>(u_input.b.x, arg_2.a, u_input.a)) % vec3<u32>(32u))), arg_2);
    var var_1 = var_0.d.xx;
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))), -740f)) * _wgslsmith_f_op_f32(trunc(-511f)))));
    var var_3 = !vec3<bool>(false, true, _wgslsmith_f_op_f32(-2103f * -679f) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(floor(arg_2.d.x))));
    var_2 = _wgslsmith_f_op_f32(-var_1.x);
    return _wgslsmith_f_op_f32(-var_1.x);
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: f32) -> vec3<i32> {
    return firstLeadingBit(arg_2);
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = func_5(_wgslsmith_div_f32(622f, _wgslsmith_div_f32(-543f, _wgslsmith_f_op_f32(-411f + -125f))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(true, 827f, func_2(u_input.b.x, u_input.c, u_input.b.x, Struct_1(0u, vec4<i32>(2147483647i, -2147483647i, u_input.c, -24572i), vec4<bool>(false, false, false, true), vec4<f32>(168f, -426f, 685f, 100f))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(482f + -1553f), _wgslsmith_div_f32(1774f, -722f))), func_2(_wgslsmith_sub_u32(u_input.a, 37u), u_input.c, ~(39283u | (u_input.b.x & arg_0)), func_2(arg_0, firstTrailingBit(0i), u_input.b.x, Struct_1(4294967295u | u_input.a, vec4<i32>(48977i, u_input.c, -1i, u_input.c), func_2(arg_0, -2147483647i, arg_0, Struct_1(15019u, vec4<i32>(2147483647i, 0i, u_input.c, 2147483647i), vec4<bool>(true, false, false, false), vec4<f32>(600f, -2056f, 1425f, 1468f))).c, vec4<f32>(-1777f, 955f, 219f, 237f)))), abs(~reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, u_input.c, 78499i), vec3<i32>(1i, 34580i, 22041i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1170f))))));
    return func_2(_wgslsmith_mult_u32(1u, 44235u), 6046i, ~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 0u, arg_0), firstLeadingBit(vec4<u32>(0u, u_input.a, 39444u, 1u))), 9088u), Struct_1(~_wgslsmith_clamp_u32(~arg_0, ~56917u, _wgslsmith_div_u32(52389u, 4294967295u)), vec4<i32>(u_input.c, var_0.x, _wgslsmith_dot_vec2_i32(~var_0.xy, vec2<i32>(1i, 16702i)), _wgslsmith_sub_i32(u_input.c, _wgslsmith_dot_vec3_i32(var_0, vec3<i32>(var_0.x, 2147483647i, 0i)))), select(select(vec4<bool>(true, false, false, false), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true)), vec4<bool>(false, false, true, true)), !func_2(arg_0, u_input.c, u_input.a, Struct_1(0u, vec4<i32>(0i, var_0.x, var_0.x, var_0.x), vec4<bool>(false, true, true, true), vec4<f32>(241f, -703f, -821f, -381f))).c, vec4<bool>(true, true, true, true)), vec4<f32>(-990f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1202f, 673f))), -388f, 268f)));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> f32 {
    var var_0 = select(arg_0.c.yy, !arg_0.c.xx, true && (false | all(vec2<bool>(arg_2.c.x, arg_2.c.x))));
    var_0 = select(func_2(52797u, 71480i, _wgslsmith_mod_u32(4294967295u, arg_0.a & 18108u), func_2(_wgslsmith_clamp_u32(20987u, func_2(0u, -2147483647i, arg_0.a, arg_2).a, firstTrailingBit(arg_2.a)), arg_1.b.x, _wgslsmith_add_u32(~arg_1.a, arg_1.a), arg_2)).c.xz, arg_1.c.xw, false);
    var var_1 = arg_1;
    var var_2 = max(u_input.b.x >> (7900u % 32u), 0u) << (firstLeadingBit(~3343u) % 32u);
    let var_3 = u_input.c;
    return _wgslsmith_f_op_f32(f32(-1f) * -701f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_6(func_1(u_input.a), Struct_1(4294967295u, vec4<i32>(u_input.c, u_input.c, -44986i, u_input.c), vec4<bool>(true, false, true, true), vec4<f32>(-612f, -464f, 2839f, 389f)), func_1(var_0), _wgslsmith_div_f32(-602f, 145f)))))), -2011f));
    var var_2 = u_input.b.x;
    let var_3 = u_input.c;
    let var_4 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mult_vec2_u32(u_input.b, ~u_input.b & (u_input.b ^ vec2<u32>(0u, u_input.a)))));
}

