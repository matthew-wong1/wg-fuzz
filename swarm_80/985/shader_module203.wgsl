struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec4<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1, arg_3: u32) -> u32 {
    return u_input.e;
}

fn func_4(arg_0: vec2<u32>, arg_1: i32) -> bool {
    let var_0 = abs(_wgslsmith_div_u32(arg_0.x, _wgslsmith_dot_vec4_u32(~(vec4<u32>(arg_0.x, u_input.e, u_input.d, arg_0.x) << (vec4<u32>(1u, 4294967295u, 0u, arg_0.x) % vec4<u32>(32u))), ~vec4<u32>(u_input.e, u_input.a, 100039u, u_input.d))));
    let var_1 = true;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(533f + -294f) + _wgslsmith_f_op_f32(ceil(210f)))))), -1000f, -1132f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1222f, 1141f, true)), -1754f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(826f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -404f) - -1870f)));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(130f, var_2.x, -260f, var_2.x)) + vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x)))));
    var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.x, var_2.x, 3072f, var_2.x), vec4<f32>(-1585f, -112f, var_2.x, var_2.x), var_1)) - vec4<f32>(-1090f, var_2.x, var_2.x, -368f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.x, 670f, -422f, var_2.x), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.x, 165f, 1145f, var_2.x), vec4<f32>(var_2.x, -976f, 802f, 862f))), vec4<bool>(var_1, false, var_1, var_1)))))));
    return !(1u > (~func_3(var_1, Struct_2(var_2.x), Struct_1(var_2.x, vec4<i32>(-41046i, arg_1, u_input.b.x, -2147483647i), vec4<u32>(0u, 9860u, 1u, u_input.d)), 0u) ^ (var_0 << (_wgslsmith_sub_u32(0u, u_input.a) % 32u))));
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    var var_0 = Struct_2(-1000f);
    var var_1 = func_4(~vec2<u32>(_wgslsmith_sub_u32(2095u, 1u) << (1u % 32u), func_3(arg_0.a == arg_0.a, Struct_2(-126f), arg_0, countOneBits(arg_0.c.x))), u_input.b.x);
    var_1 = 2147483647i <= -_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(-50945i, -61118i, 2147483647i)), arg_0.b.zzw), _wgslsmith_mod_i32(4090i >> (arg_0.c.x % 32u), arg_0.b.x));
    var var_2 = vec3<bool>(any(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)))), true, false);
    var var_3 = arg_0;
    return Struct_2(_wgslsmith_f_op_f32(round(var_3.a)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> Struct_2 {
    return func_2(arg_1);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<i32>) -> u32 {
    var var_0 = -678f;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(205f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -484f) * -627f));
    let var_2 = func_5(func_2(Struct_1(_wgslsmith_f_op_f32(-609f - -1143f), -vec4<i32>(u_input.b.x, 1i, 12319i, arg_1.x), _wgslsmith_mod_vec4_u32(~vec4<u32>(1u, u_input.d, 13112u, u_input.a), firstTrailingBit(vec4<u32>(21551u, u_input.e, 78656u, 30702u))))), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(733f, 2180f, true))), 1f, 1u != ~arg_0.x)), _wgslsmith_mult_vec4_i32(-vec4<i32>(-12690i, -15543i, -54264i, 26364i), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.x, u_input.c, -1i, arg_1.x), _wgslsmith_add_vec4_i32(arg_1, vec4<i32>(arg_1.x, u_input.b.x, -63887i, u_input.c)))), _wgslsmith_mult_vec4_u32(vec4<u32>(53234u, ~arg_0.x, arg_0.x, 54813u), _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.e, 64963u, 49273u, arg_0.x), vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a), vec4<u32>(arg_0.x, 1u, 6013u, 4294967295u)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, 1u, 71147u, 0u), vec4<u32>(arg_0.x, u_input.d, arg_0.x, u_input.d))))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.a)));
    let var_4 = ~arg_0.x;
    return _wgslsmith_add_u32(4632u, _wgslsmith_clamp_u32(~(~_wgslsmith_add_u32(u_input.d, 17552u)), ~(~1u), ~18620u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(false, ~46553u >= reverseBits(~_wgslsmith_mult_u32(0u, u_input.d)), func_1(max(vec2<u32>(1u, u_input.a) ^ vec2<u32>(50693u, 4294967295u), firstLeadingBit(vec2<u32>(u_input.e, 2420u))), _wgslsmith_sub_vec4_i32(-vec4<i32>(-2147483647i, 2147483647i, u_input.b.x, 0i), vec4<i32>(u_input.c, 48646i, 47026i, -30729i))) <= 8732u, any(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(f32(-1f) * -240f)), -1255f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -521f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1047f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(2063f)) + _wgslsmith_f_op_f32(-1652f - -786f)) - _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1694f, _wgslsmith_f_op_f32(round(565f))), _wgslsmith_f_op_f32(-1f)))));
    let var_2 = 1313f;
    var_0 = !(!(!(!(!vec4<bool>(true, var_0.x, var_0.x, var_0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1262f, 1214f, var_1), vec3<f32>(var_1, var_1, -1783f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, -436f, 877f) * vec3<f32>(190f, -1100f, 341f))))), select(firstLeadingBit(u_input.c | countOneBits(u_input.c)), -u_input.c, var_0.x), min(vec4<i32>(1i, -23901i, 1i, min(-2072i, -1i)), ~vec4<i32>(51543i, -36398i, u_input.c, u_input.c)) << (min(vec4<u32>(69709u, 1u, u_input.e, u_input.e) | vec4<u32>(16225u, 20580u, u_input.d, 1u), max(~vec4<u32>(30525u, u_input.d, 32305u, 4294967295u), abs(vec4<u32>(u_input.e, u_input.e, 50590u, 0u)))) % vec4<u32>(32u)), vec3<u32>(u_input.a & 0u, _wgslsmith_div_u32(func_1(_wgslsmith_add_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(1u, 0u)), vec4<i32>(u_input.c, -50144i, u_input.c, -1i)), min(~u_input.a, max(u_input.a, u_input.e))), u_input.a));
}

