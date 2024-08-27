struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 16> = array<vec4<f32>, 16>(vec4<f32>(-766f, -1032f, 1000f, -361f), vec4<f32>(141f, -1143f, -1828f, 321f), vec4<f32>(1000f, -2450f, 1027f, -2106f), vec4<f32>(-723f, -384f, 144f, -1000f), vec4<f32>(1993f, 1498f, -1257f, -379f), vec4<f32>(366f, 391f, 625f, -374f), vec4<f32>(-1741f, -1941f, -1000f, 1570f), vec4<f32>(745f, 1000f, 493f, 580f), vec4<f32>(-1356f, 1388f, 682f, -1242f), vec4<f32>(-370f, -517f, 1275f, 1617f), vec4<f32>(386f, 1016f, -2014f, 1323f), vec4<f32>(-353f, 428f, -382f, 417f), vec4<f32>(-1557f, 1789f, 577f, -1030f), vec4<f32>(184f, 1392f, -1000f, -437f), vec4<f32>(-417f, 472f, -1038f, 1389f), vec4<f32>(1000f, 482f, -546f, 1237f));

var<private> global1: bool;

var<private> global2: array<vec3<u32>, 2> = array<vec3<u32>, 2>(vec3<u32>(0u, 17664u, 4294967295u), vec3<u32>(1u, 75753u, 59737u));

var<private> global3: array<u32, 27> = array<u32, 27>(1u, 12140u, 1u, 51720u, 1u, 1u, 47147u, 0u, 2602u, 14675u, 0u, 1u, 1u, 4294967295u, 21584u, 12408u, 53548u, 4294967295u, 4294967295u, 41732u, 4294967295u, 1u, 4294967295u, 0u, 23101u, 4294967295u, 4294967295u);

var<private> global4: vec2<i32> = vec2<i32>(-60864i, -1i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: f32, arg_3: i32) -> f32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1071f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(333f * 885f))) - -1526f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(165f))))), arg_2)));
    global0 = array<vec4<f32>, 16>();
    let var_1 = reverseBits(_wgslsmith_sub_vec2_i32(u_input.d.zx, _wgslsmith_sub_vec2_i32(vec2<i32>(0i, abs(2147483647i)), u_input.b)));
    global4 = _wgslsmith_sub_vec2_i32(u_input.d.yx, vec2<i32>(-var_1.x, _wgslsmith_clamp_i32(firstLeadingBit(u_input.b.x), 31293i, _wgslsmith_mult_i32(global4.x, global4.x) >> (global3[_wgslsmith_index_u32(1u, 27u)] % 32u))));
    var var_2 = ~vec4<u32>(global3[_wgslsmith_index_u32(firstLeadingBit(global3[_wgslsmith_index_u32(73146u, 27u)] & global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(92366u, 27u)], 27u)], 27u)], 27u)], 27u)]) & 0u, 27u)], global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(~1u, 27u)], 1u) & global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(abs(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(5666u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 27u)], 27u)], 27u)]), 27u)], 27u)]), 27u)], 27u)], 27u)], min(6486u, max(1u, 27798u)), 20013u);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_div_f32(484f, arg_2));
}

fn func_2(arg_0: Struct_2, arg_1: u32) -> i32 {
    var var_0 = arg_0.d;
    var var_1 = Struct_2(-(vec4<i32>(u_input.a.x, u_input.a.x, -1i, global4.x) >> (~vec4<u32>(597u, arg_1, arg_1, 0u) % vec4<u32>(32u))) | u_input.d, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x * 1005f)), _wgslsmith_f_op_f32(func_3(all(vec2<bool>(true, true)), Struct_1(arg_0.d.a), arg_0.b.x, -arg_0.a.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(arg_0.b.x)))))), arg_0.c, arg_0.d);
    global2 = array<vec3<u32>, 2>();
    let var_2 = abs(1i);
    var var_3 = arg_0;
    return ~var_3.a.x & -2147483647i;
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec4<f32>, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-arg_2.x);
    var_0 = arg_2.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 27u)], 16u)])), global0[_wgslsmith_index_u32(4294967295u, 16u)])));
    let var_2 = vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(_wgslsmith_add_i32(-15300i, 2147483647i), _wgslsmith_sub_i32(global4.x, 2147483647i), ~arg_3.x), _wgslsmith_add_i32(func_2(Struct_2(vec4<i32>(u_input.d.x, global4.x, -15905i, -1i), vec3<f32>(arg_2.x, var_1.x, -217f), Struct_1(arg_1), Struct_1(true)), 0u), firstTrailingBit(1i))), arg_3.x) & vec2<i32>(~0i, -1i);
    global2 = array<vec3<u32>, 2>();
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec4<i32>, arg_3: i32) -> f32 {
    global1 = arg_0.a;
    var var_0 = Struct_2(vec4<i32>(abs(arg_2.x), abs(1i << (~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(97049u, 27u)], 27u)] % 32u)), 15035i, abs(arg_2.x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1, _wgslsmith_f_op_f32(arg_1 * -1000f), _wgslsmith_f_op_f32(1000f * arg_1)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, arg_1))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1287f, arg_1, -1020f)))))), vec3<bool>(false, all(vec4<bool>(arg_0.a, arg_0.a, false, arg_0.a)), true))), Struct_1(true), func_1(arg_0, all(vec3<bool>(true, true, true)), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1 + -773f), arg_1)), _wgslsmith_div_f32(1363f, arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + arg_1) + arg_1), _wgslsmith_f_op_f32(round(495f))), _wgslsmith_sub_vec3_i32(~(vec3<i32>(arg_3, -2147483647i, arg_2.x) | arg_2.wwz), ~arg_2.zzw)));
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.x - -565f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + var_0.b.x) + -379f)), var_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(trunc(-314f))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(216f, 963f, var_0.d.a)), _wgslsmith_f_op_f32(var_0.b.x + 1158f)))))));
    var_1 = var_0.b.x;
    var var_2 = Struct_1(arg_0.a);
    return arg_1;
}

fn func_5(arg_0: f32) -> Struct_1 {
    global0 = array<vec4<f32>, 16>();
    return Struct_1(any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false)), vec3<bool>(any(vec4<bool>(true, true, true, false)), true, select(true, true, true)), vec3<bool>(false, all(vec4<bool>(false, true, false, false)), false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_1(Struct_1(true), false, vec4<f32>(1000f, 777f, -238f, -517f), vec3<i32>(u_input.d.x, global4.x, u_input.c)), _wgslsmith_div_f32(-1262f, 443f), vec4<i32>(1i, 24148i, -1i, u_input.b.x), -14470i)) - -1406f)));
    global4 = vec2<i32>(_wgslsmith_dot_vec3_i32(select(u_input.a, vec3<i32>(~global4.x, u_input.d.x ^ global4.x, global4.x ^ 1i), !select(vec3<bool>(var_0.a, var_0.a, var_0.a), vec3<bool>(false, false, var_0.a), vec3<bool>(var_0.a, true, false))), abs(vec3<i32>(abs(69425i), 9884i, select(5153i, 26965i, true)))), select(global4.x, reverseBits(10045i), any(select(vec4<bool>(false, var_0.a, var_0.a, true), vec4<bool>(false, true, true, false), vec4<bool>(var_0.a, false, var_0.a, var_0.a)))) & -firstTrailingBit(global4.x));
    let var_1 = var_0.a;
    let var_2 = ~_wgslsmith_mult_u32(~(global3[_wgslsmith_index_u32(abs(global3[_wgslsmith_index_u32(0u, 27u)]), 27u)] ^ 82683u), global3[_wgslsmith_index_u32(~countOneBits(global3[_wgslsmith_index_u32(4294967295u, 27u)] & global3[_wgslsmith_index_u32(4294967295u, 27u)]), 27u)]);
    let var_3 = select(vec4<bool>(!(!var_0.a), var_0.a, true, !any(vec3<bool>(var_1, false, false))), !select(select(select(vec4<bool>(true, var_1, var_0.a, var_0.a), vec4<bool>(var_1, false, true, false), var_1), !vec4<bool>(false, var_1, var_1, var_1), vec4<bool>(var_1, false, var_1, var_1)), vec4<bool>(func_5(1973f).a, !var_0.a, true, false), select(select(vec4<bool>(var_1, var_0.a, true, false), vec4<bool>(var_1, var_1, true, false), var_1), vec4<bool>(var_0.a, var_1, var_1, false), true)), var_0.a);
    global0 = array<vec4<f32>, 16>();
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(-498f, -1355f, -529f), vec3<f32>(-2090f, 2579f, 360f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1143f, 1130f, -984f)) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1343f, -253f, 176f)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1918f - 1180f)), _wgslsmith_f_op_f32(func_3(!var_1, func_5(-918f), -1813f, global4.x)), _wgslsmith_f_op_f32(-1811f + 2260f))) * vec3<f32>(-416f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-637f, 202f))))), -739f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(var_4.x, _wgslsmith_f_op_f32(floor(var_4.x))));
}

