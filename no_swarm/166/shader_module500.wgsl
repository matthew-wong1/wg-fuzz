struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec4<bool>) -> bool {
    let var_0 = firstLeadingBit(countOneBits(~abs(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 40580u), vec2<u32>(49481u, u_input.c)))));
    return false;
}

fn func_3(arg_0: i32) -> vec4<f32> {
    let var_0 = vec2<i32>(i32(-1i) * -_wgslsmith_sub_i32(-1i, 2147483647i), ~0i);
    var var_1 = Struct_1(!vec2<bool>(true, -arg_0 <= abs(arg_0)), vec4<f32>(1f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1201f + _wgslsmith_div_f32(1034f, -1441f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -946f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1013f))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-522f))))), _wgslsmith_f_op_f32(sign(-511f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -810f), vec2<f32>(101f, 1858f)) + vec2<f32>(1f, 1f))), vec2<f32>(1f, 1f), vec2<bool>(all(vec4<bool>(false, false, true, true)), (11085i >= var_0.x) & all(vec3<bool>(false, false, false))))), -1526f, 71733u);
    var_1 = Struct_1(select(vec2<bool>(true, true), select(vec2<bool>(var_1.a.x, arg_0 == -4747i), vec2<bool>(true, true), all(vec3<bool>(var_1.a.x, var_1.a.x, true))), true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-526f, _wgslsmith_f_op_f32(sign(var_1.b.x)), var_1.d, var_1.c.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1063f, 2201f, -676f, -1133f), var_1.b))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -807f), _wgslsmith_f_op_f32(min(1273f, 921f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(595f, _wgslsmith_f_op_f32(-1000f + -619f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.x) + var_1.d) - var_1.c.x), -116f), _wgslsmith_sub_u32(~(~u_input.b), 29725u));
    let var_2 = -487f;
    let var_3 = abs(vec2<i32>(~0i, min(1i, 2147483647i)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.b - vec4<f32>(_wgslsmith_f_op_f32(max(var_2, -895f)), _wgslsmith_f_op_f32(f32(-1f) * -441f), _wgslsmith_div_f32(1099f, _wgslsmith_f_op_f32(var_2 + var_2)), _wgslsmith_f_op_f32(ceil(-1767f)))));
}

fn func_1(arg_0: vec3<f32>, arg_1: u32) -> Struct_1 {
    let var_0 = Struct_1(select(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), false)), vec2<bool>(true, true), !vec2<bool>(func_2(vec4<bool>(false, false, true, false)), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1281f, -370f, arg_0.x, arg_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-733f, -160f, -647f, arg_0.x)))) - _wgslsmith_f_op_vec4_f32(func_3(16060i))), _wgslsmith_f_op_vec2_f32(-arg_0.yy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_add_u32(_wgslsmith_div_u32(arg_1, 1u ^ firstTrailingBit(77923u)), _wgslsmith_mod_u32(75118u, arg_1)));
    let var_1 = select(vec4<u32>(_wgslsmith_sub_u32(~(~arg_1), 1u), 1u, arg_1, 55078u), min(vec4<u32>(~select(arg_1, arg_1, true), select(_wgslsmith_div_u32(1u, var_0.e), arg_1, var_0.a.x), ~_wgslsmith_sub_u32(arg_1, u_input.c), ~arg_1), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1 & 1u, ~4294967295u, _wgslsmith_clamp_u32(u_input.a, 6418u, 31708u), 105635u), ~(~vec4<u32>(arg_1, 48880u, u_input.a, 20877u)), vec4<u32>(47058u, ~var_0.e, ~u_input.a, reverseBits(58614u)))), vec4<bool>(!(!var_0.a.x && !var_0.a.x), true && var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + var_0.b.x) - _wgslsmith_div_f32(arg_0.x, var_0.d)) <= _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.b.x, var_0.b.x))), max(u_input.a, 86160u) > min(_wgslsmith_add_u32(44595u, 113831u), 1u)));
    let var_2 = vec4<u32>(_wgslsmith_add_u32(reverseBits(8032u), _wgslsmith_clamp_u32(arg_1 ^ 35558u, firstLeadingBit(var_0.e), firstTrailingBit(var_0.e)) ^ firstLeadingBit(var_1.x)), 0u, arg_1 << (u_input.a % 32u), ~select(1u, 1u, false));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d)));
    let var_4 = var_0;
    return var_0;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<i32>) -> vec2<bool> {
    var var_0 = arg_3.x;
    var var_1 = Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(func_1(vec3<f32>(-790f, -1878f, arg_1.b.x), u_input.b).b.x, _wgslsmith_f_op_f32(-arg_1.d), 281f, _wgslsmith_f_op_f32(trunc(arg_1.c.x))))), _wgslsmith_f_op_vec2_f32(-arg_2.b.wx), arg_1.d, 85549u);
    let var_2 = -2147483647i;
    var_1 = Struct_1(func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1351f, var_1.b.x, -1000f)) - vec3<f32>(-836f, var_1.d, _wgslsmith_f_op_f32(-494f - arg_1.b.x))), 29986u).a, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_1(var_1.b.wyx, 4294967295u).b - vec4<f32>(1000f, -1638f, 156f, var_1.b.x)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(396f, arg_2.b.x)), -655f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_2.b.x, 702f))), arg_1.c.x))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-510f, -633f)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(arg_2.b.yz)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(429f, -1037f)))))), 526f, arg_2.e);
    var var_3 = func_2(!select(select(vec4<bool>(false, false, false, true), vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, true), false), !(!vec4<bool>(arg_1.a.x, true, arg_2.a.x, arg_2.a.x)), !(!vec4<bool>(false, arg_1.a.x, arg_2.a.x, arg_2.a.x))));
    return vec2<bool>(!arg_1.a.x, select(true | (arg_1.a.x && arg_1.a.x), any(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), arg_2.a.x)), any(select(select(vec4<bool>(true, true, arg_2.a.x, true), vec4<bool>(arg_1.a.x, true, arg_2.a.x, true), arg_2.a.x), select(vec4<bool>(true, arg_1.a.x, arg_1.a.x, arg_2.a.x), vec4<bool>(var_1.a.x, arg_1.a.x, true, true), vec4<bool>(var_1.a.x, true, arg_2.a.x, false)), vec4<bool>(true, true, false, arg_1.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(vec2<bool>(true, true), func_4(~(~vec3<u32>(u_input.c, u_input.c, 1188u)), func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(157f, 241f, -120f)), 0u), func_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(868f, -163f, -830f))), 56484u), ~vec3<i32>(1i, 1i, -5933i) | _wgslsmith_clamp_vec3_i32(vec3<i32>(-16588i, -1i, 13728i), vec3<i32>(5261i, 0i, 52727i), vec3<i32>(2147483647i, -2147483647i, -1i))), true), func_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -470f, -142f) + vec3<f32>(839f, 676f, 422f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(2003f, -432f, -1944f))), select(true, false, false))))), firstLeadingBit(u_input.b)).b, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1132f, -906f) - vec2<f32>(-900f, -502f)))))), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -487f) * -1186f)), _wgslsmith_dot_vec4_u32(~vec4<u32>(countOneBits(u_input.b), 15012u << (u_input.b % 32u), 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(20885u, 35965u), vec2<u32>(1117u, 0u))), vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(32124u, 18063u, u_input.a, 4294967295u), firstLeadingBit(vec4<u32>(0u, 0u, u_input.a, u_input.a))), 4294967295u, u_input.c, u_input.a)));
    var var_1 = var_0;
    var_1 = func_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-943f - -295f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(var_0.c.x, 349f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1356f) - _wgslsmith_f_op_f32(-var_0.d))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(select(var_0.c.x, var_0.d, true)), _wgslsmith_f_op_f32(445f + var_0.d), 487f), _wgslsmith_div_vec3_f32(var_1.b.zxw, var_0.b.xxz))), var_0.a.x)), ~var_1.e);
    var var_2 = -1i;
    var_2 = ~_wgslsmith_sub_i32(-(i32(-1i) * -7104i), _wgslsmith_mult_i32(-45998i, 44616i));
    let var_3 = Struct_1(!(!select(vec2<bool>(var_0.a.x, false), vec2<bool>(var_0.a.x, false), !vec2<bool>(var_1.a.x, var_0.a.x))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.c.x)) + _wgslsmith_f_op_f32(sign(1877f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -708f) - _wgslsmith_f_op_f32(f32(-1f) * -243f)), _wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_div_f32(1302f, -531f)), var_1.c.x), var_0.b)), _wgslsmith_f_op_vec2_f32(ceil(var_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(var_0.c.x))))), _wgslsmith_clamp_u32(~4294967295u, min(76612u, 31396u), 9271u));
    let var_4 = select(~var_0.e, _wgslsmith_div_u32(0u, var_1.e) ^ ~select(0u, 86360u, var_3.a.x), var_1.a.x) << (65094u % 32u);
    var_2 = ~_wgslsmith_sub_i32(-15163i, 1i);
    var var_5 = Struct_1(select(!vec2<bool>(true, var_3.a.x), select(vec2<bool>(true, false), select(vec2<bool>(var_3.a.x, var_1.a.x), var_0.a, func_1(var_1.b.yzx, 1u).a), true), func_2(!vec4<bool>(var_1.a.x, true, false, var_3.a.x))), vec4<f32>(-1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(var_0.c.x)))))), var_3.c.x, -951f), vec2<f32>(_wgslsmith_div_f32(var_0.d, _wgslsmith_f_op_f32(var_3.b.x + _wgslsmith_f_op_f32(-var_3.c.x))), var_1.b.x), var_0.b.x, var_4);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(~(max(vec3<u32>(var_4, var_5.e, u_input.a), vec3<u32>(4294967295u, 83952u, var_1.e)) ^ ~vec3<u32>(106687u, var_4, var_5.e)), vec3<u32>(firstLeadingBit(var_5.e) ^ 8169u, 3917u, _wgslsmith_dot_vec2_u32(max(vec2<u32>(8967u, var_4), vec2<u32>(90026u, 0u)), ~vec2<u32>(34634u, u_input.a)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, var_0.c.x) + var_3.c))))), 14645u);
}

