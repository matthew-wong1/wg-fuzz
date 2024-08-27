struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_2) -> i32 {
    let var_0 = 22301i;
    var var_1 = _wgslsmith_f_op_f32(-arg_1);
    let var_2 = Struct_3(arg_2);
    let var_3 = abs(-countOneBits(~_wgslsmith_div_vec3_i32(vec3<i32>(11298i, var_2.a.a, -1i), vec3<i32>(var_2.a.a, -2147483647i, u_input.a.x))));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), true)), 567f))), _wgslsmith_f_op_f32(ceil(647f)));
    return -_wgslsmith_sub_i32(2147483647i, ~_wgslsmith_div_i32(var_0, var_0) >> (var_2.a.d % 32u));
}

fn func_2() -> Struct_1 {
    var var_0 = true;
    var var_1 = _wgslsmith_add_i32(-21836i, -34957i);
    let var_2 = Struct_2(min(~u_input.a.x, func_3(select(vec2<u32>(4294967295u, 53512u), vec2<u32>(85848u, 38295u), vec2<bool>(false, false)), _wgslsmith_f_op_f32(min(global0.x, global0.x)), Struct_2(62976i, 90180u, u_input.a.x, 4294967295u)) | 0i), reverseBits(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(22904u, 105236u, 0u, 1u)), select(reverseBits(vec4<u32>(0u, 11170u, 8641u, 1u)), select(vec4<u32>(1u, 77775u, 6022u, 1u), vec4<u32>(2803u, 0u, 1u, 4294967295u), true), vec4<bool>(true, true, true, true)))), select(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 0i), ~vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), 0i, true), ~max(93244u, reverseBits(~6283u)));
    var var_3 = ~1u;
    var var_4 = !(!(!(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false)))));
    return Struct_1(~_wgslsmith_add_vec2_i32(vec2<i32>(abs(var_2.c), u_input.a.x), firstTrailingBit(vec2<i32>(var_2.a, u_input.a.x))));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec4<f32>) -> vec2<i32> {
    var var_0 = Struct_3(Struct_2(arg_1.a.x, ~1u, u_input.a.x, 0u));
    global0 = arg_2.wz;
    var var_1 = ~_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_div_u32(firstLeadingBit(var_0.a.d), 4294967295u), ~(var_0.a.d << (61637u % 32u)), 1u, _wgslsmith_add_u32(var_0.a.d, _wgslsmith_add_u32(var_0.a.b, 9361u))), ~select(countOneBits(vec4<u32>(0u, var_0.a.b, var_0.a.d, 4294967295u)), ~vec4<u32>(0u, var_0.a.b, var_0.a.d, 88314u), true));
    let var_2 = arg_1;
    var_1 = ~(((reverseBits(vec4<u32>(38544u, var_0.a.b, var_0.a.b, 4294967295u)) >> ((vec4<u32>(var_1.x, var_1.x, var_0.a.b, var_1.x) & vec4<u32>(0u, 4294967295u, var_0.a.b, 0u)) % vec4<u32>(32u))) & ((vec4<u32>(1263u, var_1.x, var_1.x, 4294967295u) ^ vec4<u32>(0u, var_1.x, var_0.a.d, 1u)) | ~vec4<u32>(var_0.a.b, var_0.a.b, var_0.a.d, 15819u))) << (abs(~vec4<u32>(4294967295u, 0u, var_1.x, 34043u)) % vec4<u32>(32u)));
    return ~u_input.a;
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: vec4<f32>, arg_3: Struct_3) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1)))), -233f), vec2<f32>(-318f, global0.x)));
    let var_0 = u_input.a.x == _wgslsmith_mod_i32(abs(arg_3.a.c & 2147483647i), 1i);
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(arg_2.wx)));
    let var_1 = arg_3.a.d & abs(0u);
    return arg_0;
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    return func_5(Struct_1(select(func_4(1i, func_2(), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 827f, 737f, -698f))), _wgslsmith_sub_vec2_i32(u_input.a, vec2<i32>(101357i, 35459i)) << (~vec2<u32>(27369u, 1u) % vec2<u32>(32u)), vec2<bool>(true, true))), global0.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-142f - _wgslsmith_f_op_f32(select(global0.x, 1000f, false))), -314f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f + global0.x))), -1605f)), Struct_3(Struct_2(~_wgslsmith_add_i32(1i, arg_0.x), 1u, 0i, ~1u)));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<f32>) -> vec2<u32> {
    let var_0 = _wgslsmith_div_vec4_i32(~(~vec4<i32>(_wgslsmith_mod_i32(-6620i, arg_1.a.x), -arg_0.a.x, func_3(vec2<u32>(15010u, 78634u), 1080f, Struct_2(2147483647i, 35771u, arg_1.a.x, 35357u)), 58881i)), vec4<i32>(-1i) * -vec4<i32>(arg_1.a.x, u_input.a.x, arg_0.a.x, countOneBits(u_input.a.x)));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3.xz) * vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * 782f)), _wgslsmith_f_op_f32(arg_3.x - _wgslsmith_f_op_f32(f32(-1f) * -1000f))), 686f));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x))) * 193f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-150f))));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(global0.x, -1942f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x - -943f) - _wgslsmith_f_op_f32(global0.x + global0.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1126f)))))));
    var var_1 = vec2<bool>(any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), !(16756u < _wgslsmith_dot_vec3_u32(vec3<u32>(31373u, 36146u, 30872u), vec3<u32>(4294967295u, 8171u, 4294967295u))));
    return _wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, 1u), ~select(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 1u), vec2<bool>(var_1.x, var_1.x)), ~vec2<u32>(1u, 1u)) << (countOneBits(vec2<u32>(1u, ~1u)) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(2284u, _wgslsmith_add_u32(0u, 25355u))), ~vec2<u32>(1u, 1u)));
}

fn func_7(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: bool) -> i32 {
    global0 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(2161f + -1229f))));
    var var_0 = ~vec4<u32>(arg_0.d, _wgslsmith_mod_u32(4850u, ~arg_0.b), arg_1.x, arg_0.b);
    let var_1 = reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(1u, ~47605u, arg_0.b, var_0.x), vec4<u32>(~(~arg_0.d), ~_wgslsmith_mod_u32(arg_0.b, var_0.x), 13169u, _wgslsmith_sub_u32(1u, _wgslsmith_clamp_u32(arg_1.x, 41285u, var_0.x)))));
    var_0 = _wgslsmith_div_vec4_u32(vec4<u32>(~min(1u << (arg_0.d % 32u), ~1u), ~(max(arg_1.x, 68420u) >> (~4294967295u % 32u)), 1u, var_1.x), vec4<u32>(_wgslsmith_mult_u32(~(~var_1.x), ~(~var_0.x)), ~(~4294967295u), _wgslsmith_div_u32(31396u, max(4294967295u, var_1.x)) >> (~30735u % 32u), var_0.x));
    let var_2 = Struct_3(arg_0);
    return arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -_wgslsmith_mod_vec3_i32(-vec3<i32>(11112i, u_input.a.x, -2147483647i), vec3<i32>(_wgslsmith_div_i32(u_input.a.x, u_input.a.x), _wgslsmith_mult_i32(10028i, u_input.a.x), -1i)) | vec3<i32>(~_wgslsmith_mult_i32(1i, min(u_input.a.x, -2147483647i)), func_7(Struct_2(u_input.a.x, 1u, u_input.a.x, _wgslsmith_mult_u32(18115u, 21863u)), func_6(Struct_1(u_input.a), func_1(vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i)), Struct_1(u_input.a), _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, 525f, global0.x, 635f), vec4<f32>(global0.x, -952f, 529f, global0.x))), Struct_1(u_input.a), false), -u_input.a.x);
    let var_1 = !vec4<bool>(true, _wgslsmith_f_op_f32(round(global0.x)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - -352f)), !any(vec4<bool>(true, false, false, true)) & !all(vec2<bool>(true, true)), false);
    let var_2 = func_2().a.x;
    var var_3 = var_0;
    global0 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(global0.x)), global0.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1763f - global0.x) * _wgslsmith_f_op_f32(max(-208f, global0.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.x, 570f, all(select(var_1.zyy, vec3<bool>(true, false, true), false)))) - _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1078f * global0.x)))));
    var var_4 = Struct_3(Struct_2(var_3.x, reverseBits(_wgslsmith_mult_u32(0u, 16109u)), ~u_input.a.x, ~4294967295u));
    let var_5 = vec3<i32>(~_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(var_4.a.a, 21282i, var_0.x, 70734i), vec4<i32>(-65217i, var_4.a.a, 24287i, var_4.a.a)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_3.x, var_2, 1i, var_3.x), vec4<i32>(var_3.x, var_3.x, var_4.a.a, 0i)) ^ select(vec4<i32>(-2109i, var_0.x, var_2, var_3.x), vec4<i32>(1i, 17287i, var_2, -27157i), vec4<bool>(false, false, true, var_1.x))), 38399i, ~func_5(func_5(func_2(), _wgslsmith_f_op_f32(floor(570f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1697f, 2060f, global0.x, -384f))), Struct_3(var_4.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -915f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1887f, global0.x, 1000f, global0.x) + vec4<f32>(global0.x, 1300f, 111f, -121f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1015f, global0.x, global0.x, 730f))), Struct_3(Struct_2(var_3.x, 19159u, 1i, 50751u))).a.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(min(5058u, var_4.a.d) & 15562u, max(14232u, abs(var_4.a.d)), abs(1u), min(~(~var_4.a.d), var_4.a.d << (var_4.a.d % 32u))), ~var_4.a.d, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(max(global0.x, global0.x)), -315f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1085f, global0.x))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, 1000f), vec2<f32>(global0.x, global0.x), false)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.x, -568f), vec2<f32>(global0.x, global0.x)))))))));
}

