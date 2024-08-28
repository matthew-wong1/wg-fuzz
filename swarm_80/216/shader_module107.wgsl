struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: vec3<i32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-27391i, i32(-2147483648), vec4<f32>(-1982f, 802f, 1186f, -1317f), vec3<i32>(-10328i, 1i, 2147483647i), 10199i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> vec3<i32> {
    var var_0 = vec4<i32>(-1i ^ ~min(global0.d.x, u_input.a), global0.e, _wgslsmith_sub_i32(-2147483647i, global0.e), global0.d.x);
    global0 = Struct_1(select(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(12632i, 58156i), ~var_0.x, u_input.b, var_0.x), ~select(vec4<i32>(31198i, u_input.b, 42941i, 31942i), vec4<i32>(var_0.x, 12316i, var_0.x, -19224i), vec4<bool>(arg_0, true, arg_0, arg_0))), arg_0), ~(-1i), global0.c, -vec3<i32>(9218i, ~countOneBits(var_0.x), firstLeadingBit(u_input.b) ^ _wgslsmith_div_i32(global0.a, global0.e)), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.b, -11748i, var_0.x, var_0.x), _wgslsmith_mod_vec4_i32(vec4<i32>(29114i, u_input.a, -1i, -2147483647i), vec4<i32>(-42541i, 1i, u_input.b, global0.d.x))), vec4<i32>(-11102i, abs(27478i), ~27214i, _wgslsmith_add_i32(global0.e, -53402i))));
    let var_1 = select(!select(select(!vec3<bool>(arg_0, false, false), !vec3<bool>(arg_0, false, arg_0), true), select(!vec3<bool>(arg_0, true, arg_0), !vec3<bool>(arg_0, arg_0, true), select(vec3<bool>(false, false, false), vec3<bool>(true, arg_0, false), vec3<bool>(false, false, arg_0))), vec3<bool>(true, true, true)), !(!(!(!vec3<bool>(arg_0, arg_0, arg_0)))), vec3<bool>(false, !all(select(vec2<bool>(true, arg_0), vec2<bool>(true, true), vec2<bool>(arg_0, false))), select(countOneBits(34226i), 1i, true) <= -1i));
    let var_2 = ~abs(~select(1u, 0u, var_1.x)) | _wgslsmith_div_u32(~(_wgslsmith_dot_vec4_u32(vec4<u32>(10114u, 0u, 22021u, 128766u), vec4<u32>(67136u, 14916u, 0u, 4294967295u)) | reverseBits(6399u)), 1u);
    let var_3 = Struct_2(Struct_1(global0.a, global0.d.x, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.c.x))), global0.c.x, _wgslsmith_f_op_f32(step(1054f, -147f)), global0.c.x), _wgslsmith_mult_vec3_i32(global0.d >> ((vec3<u32>(var_2, var_2, 4294967295u) & vec3<u32>(25068u, 130204u, var_2)) % vec3<u32>(32u)), abs(var_0.xww)), ~min(i32(-1i) * -1i, var_0.x)));
    return var_0.xyy;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> i32 {
    let var_0 = !(!(!vec3<bool>(54683i >= arg_0.d.x, true, true)));
    var var_1 = Struct_1(-firstTrailingBit(min(_wgslsmith_mult_i32(-6945i, 0i), ~0i)), min(global0.a, -arg_0.a), vec4<f32>(_wgslsmith_f_op_f32(381f - -1229f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c.x, -752f))), _wgslsmith_div_f32(arg_0.c.x, _wgslsmith_f_op_f32(-arg_2.a.c.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-196f, 499f) * 944f)))), ~func_3(any(!var_0.zy)), ~(arg_0.d.x >> ((firstTrailingBit(1u) << (firstTrailingBit(14257u) % 32u)) % 32u)));
    var var_2 = select(var_0.yy, var_0.yy, var_0.yx);
    global0 = arg_1;
    var var_3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.x, -530f, arg_2.a.c.x, var_1.c.x) - vec4<f32>(304f, arg_0.c.x, 650f, 428f)))))));
    return -1i;
}

fn func_1(arg_0: vec2<u32>, arg_1: bool) -> vec4<i32> {
    global0 = Struct_1(global0.b, func_2(Struct_1(1i, ~(-1i), _wgslsmith_div_vec4_f32(vec4<f32>(1073f, global0.c.x, global0.c.x, global0.c.x), vec4<f32>(-312f, 795f, global0.c.x, -242f)), vec3<i32>(2147483647i, u_input.a, 7315i) | vec3<i32>(global0.d.x, u_input.b, global0.e), select(global0.d.x, 2147483647i, arg_1)), Struct_1(_wgslsmith_add_i32(u_input.b, 0i), max(u_input.b, 10973i), vec4<f32>(global0.c.x, -625f, global0.c.x, -1413f), firstLeadingBit(global0.d), firstTrailingBit(7729i)), Struct_2(Struct_1(1i, 0i, vec4<f32>(-293f, 870f, global0.c.x, global0.c.x), global0.d, 0i))) | u_input.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(527f, -195f, -1049f, global0.c.x) * global0.c), vec4<f32>(-863f, global0.c.x, global0.c.x, -745f)))), global0.c), abs(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, u_input.a, -18205i), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, 1i, -1i), vec3<i32>(-2147483647i, 2147483647i, u_input.b))) ^ vec3<i32>(2147483647i, -u_input.a, global0.e)), 2147483647i);
    var var_0 = select(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(72769u, 1u), arg_0), ~_wgslsmith_add_vec2_u32(arg_0, arg_0)), arg_0, true) ^ reverseBits(~arg_0);
    global0 = Struct_1(_wgslsmith_mod_i32(_wgslsmith_mult_i32(12640i, -1i) >> (_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, var_0.x, 81566u, arg_0.x), vec4<u32>(4294967295u, 0u, 15128u, 66489u)), vec4<u32>(1u, arg_0.x, 4294967295u, arg_0.x)) % 32u), _wgslsmith_add_i32(u_input.b, -abs(-20596i))), u_input.a, _wgslsmith_f_op_vec4_f32(-global0.c), select(vec3<i32>(20741i, 56970i, _wgslsmith_mult_i32(-41943i, -13444i)), global0.d, any(select(vec2<bool>(arg_1, true), vec2<bool>(true, true), true || arg_1))), abs(u_input.a));
    global0 = Struct_1(-2147483647i, u_input.a, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.c.x)))), _wgslsmith_f_op_f32(exp2(global0.c.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(659f - 759f) + _wgslsmith_div_f32(global0.c.x, 648f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1105f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(146f)) + global0.c.x))), vec3<i32>(-(1i & (2025i & global0.d.x)), _wgslsmith_add_i32(1i, _wgslsmith_dot_vec3_i32(~vec3<i32>(-12148i, 29009i, global0.d.x), select(global0.d, vec3<i32>(-17762i, -1i, u_input.b), false))), u_input.b), ~(~((i32(-1i) * -7545i) >> (countOneBits(1u) % 32u))));
    var var_1 = Struct_2(Struct_1(1i, _wgslsmith_add_i32(-global0.a, u_input.b), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.x, global0.c.x, global0.c.x, global0.c.x) + global0.c) * vec4<f32>(global0.c.x, global0.c.x, -496f, -486f)))), global0.d, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(global0.e, global0.a), 36145i, -11112i, -42129i), ~(vec4<i32>(1i, u_input.b, u_input.a, -7986i) << (vec4<u32>(arg_0.x, 20815u, var_0.x, 4294967295u) % vec4<u32>(32u))))));
    return vec4<i32>(var_1.a.d.x, 0i, ~(~(global0.d.x << (57780u % 32u))), abs(firstLeadingBit(1i)));
}

fn func_4(arg_0: bool, arg_1: vec4<i32>, arg_2: i32, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = select(select(select(select(select(vec3<bool>(false, arg_0, true), vec3<bool>(arg_0, arg_0, true), vec3<bool>(true, arg_0, arg_0)), !vec3<bool>(arg_0, true, arg_0), select(vec3<bool>(false, true, arg_0), vec3<bool>(true, false, arg_0), arg_0)), select(vec3<bool>(true, false, true), vec3<bool>(true, arg_0, arg_0), !vec3<bool>(true, true, arg_0)), true), !select(vec3<bool>(arg_0, true, true), select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(false, true, false), arg_0), !arg_0), vec3<bool>(false, all(vec4<bool>(false, true, arg_0, arg_0)) & true, true)), select(!vec3<bool>(true, all(vec4<bool>(arg_0, true, arg_0, true)), arg_0), select(!(!vec3<bool>(arg_0, arg_0, arg_0)), select(!vec3<bool>(false, arg_0, arg_0), select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, true, arg_0), false), false), !select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, arg_0, arg_0), arg_0)), select(select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(arg_0, arg_0, false), vec3<bool>(true, arg_0, arg_0)), vec3<bool>(true, all(vec4<bool>(true, arg_0, true, arg_0)), true), select(select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, true, false), vec3<bool>(true, arg_0, arg_0)), select(vec3<bool>(arg_0, false, false), vec3<bool>(arg_0, true, true), vec3<bool>(arg_0, arg_0, arg_0)), !vec3<bool>(false, arg_0, arg_0)))), true);
    var var_1 = _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, 14977i, _wgslsmith_sub_i32(func_2(Struct_1(-1338i, -2147483647i, vec4<f32>(1060f, global0.c.x, global0.c.x, global0.c.x), global0.d, 22368i), Struct_1(arg_2, arg_1.x, vec4<f32>(global0.c.x, -207f, 2123f, 670f), vec3<i32>(-27022i, -2147483647i, 0i), 38915i), Struct_2(Struct_1(u_input.a, arg_2, vec4<f32>(global0.c.x, global0.c.x, global0.c.x, global0.c.x), arg_1.xyy, arg_1.x))), arg_2)), -func_3(any(vec4<bool>(true, true, false, false))));
    var var_2 = abs(var_1.x);
    var_0 = select(vec3<bool>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) * 1113f) <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(global0.c.x, global0.c.x)))), !any(select(var_0.xy, var_0.yy, vec2<bool>(arg_0, true)))), vec3<bool>(arg_0, !all(vec3<bool>(true, arg_0, arg_0)), true), var_0.x);
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-580f + global0.c.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-675f)), global0.c.x)))), _wgslsmith_f_op_f32(floor(global0.c.x)), -335f) - vec3<f32>(-508f, _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(sign(-760f))), _wgslsmith_div_f32(-756f, 988f)));
    return Struct_1(_wgslsmith_mod_i32(arg_1.x, -_wgslsmith_dot_vec3_i32(~vec3<i32>(var_1.x, 21599i, -34252i), vec3<i32>(23858i, 40090i, global0.e))), ~15387i, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-global0.c))), arg_1.wwy, u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(-65656i, global0.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.c + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(605f, -123f, global0.c.x, 855f)))))) + global0.c), global0.d, -5055i);
    global0 = func_4(!all(vec2<bool>(any(vec2<bool>(false, false)), true)), ~_wgslsmith_div_vec4_i32(-(~vec4<i32>(-24755i, 45730i, 1i, u_input.a)), -func_1(vec2<u32>(11776u, 0u), true)), global0.e, vec3<u32>(4294967295u, ~(~1u), ~abs(0u)));
    global0 = func_4(false | any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), vec4<i32>(u_input.b, i32(-1i) * -1i, ~(-_wgslsmith_clamp_i32(1i, global0.b, global0.d.x)), -(~(i32(-1i) * -5222i))), -27656i, vec3<u32>(select(_wgslsmith_mult_u32(abs(22541u), firstTrailingBit(4294967295u)), reverseBits(~51541u), !any(vec2<bool>(false, false))), ~(~max(0u, 25289u)), 1u));
    var var_0 = vec2<i32>(global0.a, ~global0.e);
    let var_1 = (10232u >> (~(~14830u ^ firstTrailingBit(60959u)) % 32u)) & 1u;
    var var_2 = firstLeadingBit(min(func_1(~vec2<u32>(4294967295u, var_1), true).zy, ~global0.d.yz | vec2<i32>(var_0.x, global0.b)) >> (~vec2<u32>(_wgslsmith_div_u32(var_1, var_1), _wgslsmith_dot_vec2_u32(vec2<u32>(49978u, 43738u), vec2<u32>(1u, var_1))) % vec2<u32>(32u)));
    let var_3 = global0.d.yz;
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(vec2<u32>(2803u, 0u & var_1)), 15388u, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1001f, -181f)))));
}

