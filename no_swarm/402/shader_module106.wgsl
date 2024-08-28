struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(1306f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * -1273f))));
    var var_1 = ~vec3<i32>(-_wgslsmith_clamp_i32(u_input.a, u_input.b.x, 8877i), u_input.b.x, min(select(u_input.a, u_input.a, true), 4270i)) << (_wgslsmith_add_vec3_u32(vec3<u32>(max(~33873u, ~1u), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(58116u, 25734u)), abs(vec2<u32>(9486u, 47627u))), 60065u), vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u));
    var var_2 = Struct_1(vec3<i32>(-2147483647i, ~_wgslsmith_dot_vec2_i32(min(u_input.b, vec2<i32>(var_1.x, var_1.x)), firstTrailingBit(var_1.xy)), var_1.x), ~(~var_1.x), vec2<i32>(max(-(u_input.a >> (4294967295u % 32u)), -var_1.x), 0i), 57829i, u_input.b);
    let var_3 = !select(select(vec3<bool>(any(vec4<bool>(true, false, false, false)), false, true), !select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), all(vec4<bool>(true, true, true, true))), vec3<bool>(true, true, false), !select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, false, false)));
    let var_4 = vec3<bool>(var_3.x, var_3.x == false, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 104815u), vec2<u32>(1u, 0u))) != ~4590u);
    return !(!var_3);
}

fn func_2(arg_0: vec3<f32>, arg_1: bool) -> Struct_2 {
    let var_0 = ~4294967295u;
    return Struct_2(!(!select(func_3(arg_0.x), select(vec3<bool>(arg_1, false, true), vec3<bool>(false, true, arg_1), false), false)), Struct_1(~abs(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x) << (vec3<u32>(4294967295u, var_0, var_0) % vec3<u32>(32u))), _wgslsmith_clamp_i32(31313i, -_wgslsmith_mult_i32(u_input.a, u_input.a), ~u_input.b.x), u_input.b & -vec2<i32>(2147483647i, 0i), ~countOneBits(-109009i), _wgslsmith_div_vec2_i32(u_input.b, vec2<i32>(u_input.a, u_input.b.x) ^ ~vec2<i32>(2147483647i, u_input.b.x))));
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = vec3<u32>(1u, arg_0.x, 13237u ^ (~(20626u & arg_0.x) ^ 0u));
    var var_1 = ~(~firstLeadingBit(vec3<u32>(~0u, arg_0.x, 1u)));
    var_0 = min(arg_0.yxy, firstLeadingBit(arg_0.xxy));
    let var_2 = func_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(-1061f, 1179f)), _wgslsmith_div_f32(1291f, -3151f), -227f)))), !(u_input.a < 1i));
    return Struct_1(vec3<i32>(0i, _wgslsmith_add_i32(u_input.a, -var_2.b.e.x | 22718i), -_wgslsmith_div_i32(~var_2.b.e.x, _wgslsmith_div_i32(-23066i, -1i))), _wgslsmith_add_i32(-28599i << (var_1.x % 32u), 20092i), var_2.b.a.yx, 1i, var_2.b.a.yz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(0i, u_input.a), max(u_input.a, -2147483647i), 0i), ~select(vec3<i32>(-16979i, 1969i, 2147483647i), vec3<i32>(1i, 1i, u_input.a), vec3<bool>(true, false, false))), 2147483647i, vec2<i32>(i32(-1i) * -u_input.b.x, _wgslsmith_sub_i32(abs(_wgslsmith_mult_i32(u_input.a, -26153i)), firstLeadingBit(abs(9239i)))), -2147483647i, ~_wgslsmith_mod_vec2_i32(vec2<i32>(abs(u_input.b.x), _wgslsmith_clamp_i32(-20804i, u_input.b.x, -36198i)), u_input.b));
    var var_1 = ~(~max(_wgslsmith_div_vec3_u32(vec3<u32>(34535u, 58514u, 1319u), ~vec3<u32>(1u, 33807u, 27459u)), vec3<u32>(~0u, ~8202u, ~1u)));
    var_1 = vec3<u32>(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(_wgslsmith_div_u32(var_1.x, 0u), firstTrailingBit(var_1.x), var_1.x | 28205u, 36695u)), countOneBits(abs(~vec4<u32>(18106u, 13250u, var_1.x, 24897u)))), _wgslsmith_mod_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<u32>(1u, 4294967295u, var_1.x, 0u))), max(var_1.x, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, 4294967295u, var_1.x), vec3<u32>(0u, 56134u, 67836u))))), ~_wgslsmith_div_u32(var_1.x, _wgslsmith_clamp_u32(_wgslsmith_add_u32(4294967295u, var_1.x), var_1.x, ~0u)));
    var_0 = func_1(~vec4<u32>(4294967295u, _wgslsmith_mult_u32(var_1.x, max(7024u, var_1.x)), ~var_1.x, var_1.x));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(1307f, 1387f)))) - 1f), _wgslsmith_f_op_f32(trunc(-372f)));
    var var_3 = 169f;
    var var_4 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, var_2.x)), vec3<f32>(932f, 394f, -184f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2.x, var_2.x, var_2.x)))))), all(func_3(var_2.x).xx) & false).a;
    var_1 = _wgslsmith_mod_vec3_u32(reverseBits(countOneBits(firstLeadingBit(vec3<u32>(var_1.x, var_1.x, 1u))) >> (max(vec3<u32>(6213u, 1u, var_1.x) ^ vec3<u32>(4294967295u, 40571u, var_1.x), abs(vec3<u32>(0u, 0u, var_1.x))) % vec3<u32>(32u))), select(~abs(vec3<u32>(7704u, 27352u, 4294967295u) | vec3<u32>(28104u, var_1.x, var_1.x)), firstTrailingBit(countOneBits(reverseBits(vec3<u32>(20897u, 26167u, var_1.x)))), all(!select(vec3<bool>(var_4.x, var_4.x, var_4.x), vec3<bool>(var_4.x, var_4.x, false), true))));
    var_1 = firstLeadingBit(vec3<u32>(max(21995u, 87161u) << (select(~var_1.x, abs(var_1.x), true) % 32u), _wgslsmith_div_u32(~var_1.x ^ ~var_1.x, _wgslsmith_mult_u32(4294967295u, ~var_1.x)), 14553u));
    let x = u_input.a;
    s_output = StorageBuffer(1u, ~((vec4<i32>(-1i) * -vec4<i32>(u_input.a, -2147483647i, 0i, u_input.b.x)) ^ vec4<i32>(_wgslsmith_div_i32(var_0.d, u_input.a), reverseBits(-2147483647i), 48150i, abs(-1i))), var_1.zy);
}

