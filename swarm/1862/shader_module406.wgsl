struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec3<f32>,
}

struct Struct_4 {
    a: f32,
    b: vec3<i32>,
    c: i32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_4,
    c: vec3<u32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 29607u;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: Struct_4) -> bool {
    global0 = _wgslsmith_mult_u32(1u, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(1216u, 59705u, u_input.b, u_input.b), ~(~vec4<u32>(4294967295u, u_input.b, 26822u, u_input.b))));
    let var_0 = vec3<i32>(u_input.a, u_input.a, ~(-2147483647i));
    var var_1 = !(all(select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), false)) && true);
    return u_input.b < u_input.b;
}

fn func_3(arg_0: u32, arg_1: Struct_5, arg_2: Struct_1) -> f32 {
    var var_0 = Struct_2(!vec4<bool>(true, select(true, true, any(vec4<bool>(false, false, true, true))), true, true), Struct_1(_wgslsmith_f_op_f32(ceil(arg_2.a)), max(-1i, firstTrailingBit(_wgslsmith_sub_i32(arg_2.b, u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.a, arg_1.b.a) - -112f)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1.b.a, arg_1.b.a, arg_2.d.x)))))))), ~(vec2<u32>(41827u, max(0u, 37651u)) | ~_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, arg_0), arg_1.c.zz)));
    var_0 = Struct_2(vec4<bool>(func_2(arg_1.b), true, true, all(var_0.a)), Struct_1(_wgslsmith_div_f32(arg_1.b.a, 1f), arg_1.d, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(var_0.b.c, -1000f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.b.d - arg_2.d)) * var_0.b.d)), ~(~arg_1.c.xy));
    var var_1 = vec4<i32>(_wgslsmith_add_i32(u_input.a, _wgslsmith_dot_vec3_i32(~select(vec3<i32>(22897i, u_input.a, -35395i), vec3<i32>(-55172i, u_input.a, u_input.a), var_0.a.ywz), arg_1.b.b)), -75058i, _wgslsmith_clamp_i32(-2147483647i, ~0i, var_0.b.b), ~var_0.b.b);
    var_1 = vec4<i32>(~countOneBits(-arg_2.b), _wgslsmith_add_i32(var_1.x << (max(1u, 0u) % 32u), var_1.x) | -1i, arg_1.d, -21466i);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1904f, arg_2.a, 1000f, 659f))))) + vec4<f32>(var_0.b.d.x, arg_1.b.a, _wgslsmith_f_op_f32(282f * _wgslsmith_f_op_f32(-arg_1.b.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1712f) - _wgslsmith_f_op_f32(select(var_0.b.a, var_0.b.a, false))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2.d.x, 543f, arg_1.b.a, arg_1.b.a))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1748f, var_0.b.a, -438f, 903f), vec4<f32>(-374f, 1123f, arg_2.d.x, -919f))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(277f, var_0.b.d.x, arg_2.d.x, var_0.b.c), vec4<f32>(var_0.b.c, var_0.b.a, 683f, var_0.b.a)))), vec4<bool>(!var_0.a.x, any(var_0.a), false, !var_0.a.x))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(max(var_0.b.d.x, 438f)), _wgslsmith_f_op_f32(-237f + arg_1.b.a), _wgslsmith_div_f32(-933f, arg_2.d.x), _wgslsmith_f_op_f32(575f + -1082f))))));
    return _wgslsmith_f_op_f32(ceil(arg_2.d.x));
}

fn func_1(arg_0: u32, arg_1: vec3<i32>, arg_2: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-arg_2);
    var var_1 = (_wgslsmith_dot_vec3_i32(~(vec3<i32>(0i, -24369i, -41336i) | arg_1), ~abs(vec3<i32>(10131i, u_input.a, -19785i))) << (_wgslsmith_add_u32(~(u_input.b >> (46293u % 32u)), _wgslsmith_mult_u32(_wgslsmith_mult_u32(0u, 1u), 44183u)) % 32u)) == (~_wgslsmith_mult_i32(u_input.a, u_input.a & 0i) | ~countOneBits(_wgslsmith_div_i32(-1i, 1238i)));
    global0 = ~abs(u_input.b);
    var_1 = (any(vec3<bool>(true, true, true)) & func_2(Struct_4(-1000f, _wgslsmith_sub_vec3_i32(arg_1, vec3<i32>(-15761i, arg_1.x, arg_1.x)), 1i))) & false;
    var var_2 = arg_1;
    return Struct_1(arg_2, ~(-firstTrailingBit(max(1i, arg_1.x))), -873f, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(682f, -477f, var_0) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 599f, var_0))))), vec3<f32>(761f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.b, Struct_5(vec3<u32>(arg_0, arg_0, arg_0), Struct_4(1009f, arg_1, 1i), vec3<u32>(4294967295u, 1u, 16941u), 23263i), Struct_1(var_0, u_input.a, arg_2, vec3<f32>(1153f, 2676f, -2137f))))))));
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> vec4<bool> {
    return select(vec4<bool>(true, false, !(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(2147483647i, -43257i)) > u_input.a), false), select(vec4<bool>(false, false, true, !(0i > u_input.a)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), false)), true)), !all(vec4<bool>(true, true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 4294967295u;
    var var_0 = ~(reverseBits(~_wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.b, u_input.b), vec3<u32>(1u, u_input.b, u_input.b))) << (select(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 36004u, u_input.b), ~vec3<u32>(u_input.b, u_input.b, u_input.b)), vec3<u32>(~1u, 4294967295u, 1u), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))) % vec3<u32>(32u)));
    var var_1 = select(func_4(var_0.x, func_1(countOneBits(u_input.b), -(vec3<i32>(u_input.a, 8480i, 0i) | vec3<i32>(u_input.a, -45442i, 1i)), -118f)), func_4(~5233u, func_1(~var_0.x, abs(vec3<i32>(u_input.a, u_input.a, u_input.a)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-215f, 570f)))))), vec4<bool>(true, true, true, true));
    var_1 = !vec4<bool>(var_1.x, true || var_1.x, var_1.x, any(vec2<bool>(var_1.x, false)));
    let var_2 = ~vec4<i32>(-u_input.a, 2147483647i, 32707i & u_input.a, -(func_1(0u, vec3<i32>(0i, u_input.a, 51658i), 139f).b >> (var_0.x % 32u)));
    var var_3 = func_1(~(~(~var_0.x)), ~(min(vec3<i32>(0i, 2147483647i, u_input.a), vec3<i32>(var_2.x, var_2.x, 1i)) | vec3<i32>(_wgslsmith_mod_i32(43470i, -2147483647i), -2147483647i, 2147483647i)), 537f);
    var var_4 = func_1(_wgslsmith_mult_u32(u_input.b, _wgslsmith_sub_u32(~var_0.x, ~var_0.x) | ~1u), _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(~var_2.x, min(var_3.b, u_input.a)), _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(u_input.a, 2147483647i, u_input.a)), vec3<i32>(10616i, u_input.a, -70185i)), abs(var_2.x) << (u_input.b % 32u)), ~max(var_2.xyx, vec3<i32>(-26497i, 1i, u_input.a)) << (vec3<u32>(~4294967295u, u_input.b, u_input.b) % vec3<u32>(32u))), -245f);
    var var_5 = var_2.xx;
    let x = u_input.a;
    s_output = StorageBuffer(-1325f, var_2.x, reverseBits(firstLeadingBit(_wgslsmith_div_i32(var_5.x, 2147483647i))) << (reverseBits(104138u) % 32u), (u_input.b << (~(4294967295u ^ u_input.b) % 32u)) | 1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.d.x) + var_3.d.x));
}

