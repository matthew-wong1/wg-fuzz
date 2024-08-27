struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 16> = array<vec2<i32>, 16>(vec2<i32>(-25796i, 1i), vec2<i32>(-44506i, -1i), vec2<i32>(34418i, 2147483647i), vec2<i32>(-1i, 2147483647i), vec2<i32>(51134i, -1i), vec2<i32>(-17691i, 52787i), vec2<i32>(-24766i, 30828i), vec2<i32>(-1i, -58242i), vec2<i32>(-8195i, 293i), vec2<i32>(-1i, 17391i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(26588i, -22087i), vec2<i32>(-1i, 23068i), vec2<i32>(-9223i, -1i), vec2<i32>(2147483647i, -1i), vec2<i32>(0i, -5929i));

var<private> global1: vec2<i32> = vec2<i32>(45948i, -4864i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>) -> vec2<i32> {
    global0 = array<vec2<i32>, 16>();
    let var_0 = !(abs(u_input.b) < firstTrailingBit(firstLeadingBit(firstTrailingBit(4294967295u))));
    var var_1 = _wgslsmith_div_u32(~6444u, abs(u_input.b)) < (~u_input.b << (_wgslsmith_dot_vec2_u32(~abs(vec2<u32>(24553u, u_input.b)), _wgslsmith_mod_vec2_u32(vec2<u32>(66279u, u_input.b) >> (vec2<u32>(u_input.b, 30488u) % vec2<u32>(32u)), vec2<u32>(u_input.b, u_input.b) | vec2<u32>(0u, 0u))) % 32u));
    var var_2 = min(~min(global0[_wgslsmith_index_u32(u_input.b, 16u)], min(global0[_wgslsmith_index_u32(u_input.b, 16u)], vec2<i32>(u_input.a.x, global1.x))) >> (vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, u_input.b), ~vec2<u32>(28158u, 31304u)), firstTrailingBit(50041u)) % vec2<u32>(32u)), u_input.a);
    var var_3 = select(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(74518u, 0u, 83322u, u_input.b)), ~vec4<u32>(u_input.b, u_input.b, 1u, u_input.b)) & ~_wgslsmith_add_u32(u_input.b, u_input.b), firstLeadingBit(u_input.b)), _wgslsmith_clamp_u32(70470u, 4294967295u, u_input.b & u_input.b), var_0);
    return u_input.a;
}

fn func_4(arg_0: u32, arg_1: vec2<i32>) -> vec2<i32> {
    let var_0 = -2147483647i;
    global1 = u_input.a;
    let var_1 = -1000f;
    var var_2 = select(!vec3<bool>(false, true, !all(vec4<bool>(false, false, false, false))), !select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true)), vec3<bool>(true, true, true), !any(vec3<bool>(true, true, false))), !select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true)), vec3<bool>(var_1 <= 1000f, true, all(vec3<bool>(true, true, true))), vec3<bool>(true, true, true)));
    var var_3 = min(_wgslsmith_mult_u32(min(u_input.b, 68891u), ~u_input.b), 4294967295u ^ u_input.b) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, arg_0, min(arg_0, u_input.b) ^ 16325u), vec3<u32>(_wgslsmith_mod_u32(u_input.b, abs(u_input.b)), _wgslsmith_dot_vec3_u32(select(vec3<u32>(4294967295u, arg_0, 27106u), vec3<u32>(0u, u_input.b, 29398u), true), min(vec3<u32>(4294967295u, arg_0, 1u), vec3<u32>(arg_0, u_input.b, u_input.b))), 1u));
    return _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(-vec2<i32>(-46653i, 2147483647i), u_input.a), global0[_wgslsmith_index_u32(0u, 16u)] & vec2<i32>(2147483647i, reverseBits(var_0))), _wgslsmith_add_vec2_i32(select(-abs(vec2<i32>(global1.x, 1i)), _wgslsmith_sub_vec2_i32(select(vec2<i32>(arg_1.x, var_0), u_input.a, var_2.zy), ~vec2<i32>(148i, -1i)), var_2.yx), -vec2<i32>(1i, var_0)));
}

fn func_2() -> Struct_1 {
    let var_0 = func_4(firstTrailingBit(0u), func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-313f, 1000f, -1290f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(696f, -1177f, 1144f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(850f, 589f, -223f))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1190f, 1617f, -1235f), vec3<f32>(-212f, -937f, -347f), true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(-128f)), _wgslsmith_div_f32(554f, 213f), -1000f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(691f, 353f, -709f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1813f, 638f, -1000f))))))))));
    var var_2 = var_1.x;
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-937f, var_1.x)))) - _wgslsmith_f_op_f32(ceil(var_1.x))), vec3<bool>(any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false))), !all(vec3<bool>(false, false, false)), true)), var_0.x, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.x, var_1.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_1.zy, var_1.xz, true)))), var_1.zz));
    let var_4 = Struct_1(var_3.c.x, !select(var_3.a.b, var_3.a.b, var_3.a.b));
    return Struct_1(_wgslsmith_f_op_f32(max(var_1.x, var_3.a.a)), vec3<bool>(false, all(!(!vec4<bool>(var_3.a.b.x, true, false, var_4.b.x))), abs(u_input.a.x) == u_input.a.x));
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(-2147483647i, _wgslsmith_dot_vec4_i32(-countOneBits(vec4<i32>(u_input.a.x, 1i, -2147483647i, global1.x)), _wgslsmith_mult_vec4_i32(select(vec4<i32>(-1i, global1.x, global1.x, -1i), vec4<i32>(global1.x, -1i, 1i, -1i), true), vec4<i32>(-1i, 0i, -30330i, 1i) ^ vec4<i32>(global1.x, 19199i, global1.x, 9714i)))), firstTrailingBit(~u_input.a.x));
    global1 = -countOneBits(vec2<i32>(1i, -1i));
    global1 = (~_wgslsmith_clamp_vec2_i32(~vec2<i32>(-1i, 0i), global0[_wgslsmith_index_u32(~75320u, 16u)], global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, 1u), 16u)]) << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))) | -vec2<i32>(global1.x, global1.x);
    var var_1 = Struct_2(Struct_1(811f, vec3<bool>(any(vec4<bool>(true, false, false, false)), false, all(vec3<bool>(true, true, true)))), -15873i, vec2<f32>(1083f, 692f));
    let var_2 = -38440i;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_mod_u32(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 0u), vec3<u32>(u_input.b, 3077u, 0u))), u_input.b));
    global1 = func_4(~u_input.b, func_4(_wgslsmith_clamp_u32(countOneBits(41536u), u_input.b, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, u_input.b), ~vec2<u32>(1u, u_input.b))), -abs(u_input.a | vec2<i32>(global1.x, u_input.a.x))));
    var var_1 = _wgslsmith_f_op_f32(var_0.a + 391f);
    global0 = array<vec2<i32>, 16>();
    var var_2 = _wgslsmith_mod_vec4_u32(min(max(_wgslsmith_clamp_vec4_u32(vec4<u32>(47469u, u_input.b, 4294967295u, u_input.b) & vec4<u32>(u_input.b, u_input.b, 38252u, 44074u), vec4<u32>(32667u, 54401u, 1u, 0u), abs(vec4<u32>(u_input.b, 58889u, u_input.b, u_input.b))), vec4<u32>(4294967295u, u_input.b, firstTrailingBit(u_input.b), 1u)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 0u, u_input.b, 57253u), vec4<u32>(u_input.b, 1u, u_input.b, u_input.b)), firstTrailingBit(113656u), u_input.b, ~0u) << (_wgslsmith_sub_vec4_u32(vec4<u32>(9551u, u_input.b, 16964u, u_input.b), _wgslsmith_div_vec4_u32(vec4<u32>(30451u, u_input.b, u_input.b, u_input.b), vec4<u32>(1u, u_input.b, u_input.b, u_input.b))) % vec4<u32>(32u))), ~vec4<u32>(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u, u_input.b, u_input.b)), ~vec3<u32>(u_input.b, 1u, u_input.b)), u_input.b, ~u_input.b, 1u));
    var var_3 = func_1(_wgslsmith_mult_u32(~_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 23548u, u_input.b, u_input.b), vec4<u32>(4294967295u, 4294967295u, u_input.b, u_input.b))), _wgslsmith_add_u32(var_2.x, 4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(-2261f)), abs(vec2<u32>(0u, ~u_input.b)), ~3091i, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_0.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, var_0.a)))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-592f)), 625f))));
}

