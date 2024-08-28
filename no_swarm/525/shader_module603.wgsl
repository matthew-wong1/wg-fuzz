struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10>;

var<private> global1: array<vec3<f32>, 7> = array<vec3<f32>, 7>(vec3<f32>(-137f, -306f, 607f), vec3<f32>(-1282f, -2231f, -289f), vec3<f32>(982f, -636f, 1049f), vec3<f32>(-525f, -452f, 377f), vec3<f32>(-1229f, 1070f, -926f), vec3<f32>(1448f, 511f, 760f), vec3<f32>(-243f, -585f, 1196f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = vec4<i32>(u_input.d.x, ~(-2147483647i), u_input.d.x, -(~countOneBits(1i)));
    var var_1 = reverseBits(19814i) >> (arg_0 % 32u);
    let var_2 = _wgslsmith_mod_vec3_u32(max(vec3<u32>((u_input.b.x ^ global0[_wgslsmith_index_u32(134547u, 10u)]) | ~arg_0, arg_0, u_input.b.x), max(~(~vec3<u32>(u_input.a.x, 21487u, global0[_wgslsmith_index_u32(arg_0, 10u)])), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 4294967295u), u_input.b.wwx, vec3<u32>(global0[_wgslsmith_index_u32(1u, 10u)], 65841u, 61660u)) >> ((u_input.b.wwy | u_input.a) % vec3<u32>(32u)))), abs(select(_wgslsmith_add_vec3_u32(reverseBits(u_input.b.wyw), countOneBits(u_input.a)), ~vec3<u32>(23908u, 33089u, u_input.b.x), !arg_1.a.x && true)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(234f)) * -461f) + _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(sign(-315f))));
    var var_4 = vec2<u32>(~(~arg_0), ~firstLeadingBit(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.yy, vec2<u32>(arg_0, 4294967295u)) | ~u_input.a.x, 10u)]));
    return vec3<bool>(arg_2.a.x, arg_2.a.x, true);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(!func_3(u_input.a.x, Struct_1(vec3<bool>(false, true, true)), Struct_1(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false)))));
    var var_1 = ~(~(-vec3<i32>(min(-1i, 15396i), 2290i, _wgslsmith_div_i32(2147483647i, -2147483647i))));
    var_1 = select(_wgslsmith_mod_vec3_i32(abs(firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(var_1.x, var_1.x, 21590i), vec3<i32>(-2147483647i, 2147483647i, var_1.x)))), ~abs(vec3<i32>(-34457i, 1i, -56939i)) >> (_wgslsmith_mult_vec3_u32(u_input.c, u_input.c) % vec3<u32>(32u))), vec3<i32>(u_input.d.x, u_input.d.x, _wgslsmith_clamp_i32(var_1.x, _wgslsmith_mult_i32(-4847i, var_1.x), var_1.x << (global0[_wgslsmith_index_u32(u_input.b.x, 10u)] % 32u))) ^ select(countOneBits(reverseBits(vec3<i32>(-1i, u_input.d.x, var_1.x))), ~(vec3<i32>(u_input.d.x, u_input.d.x, var_1.x) | vec3<i32>(u_input.d.x, var_1.x, -11750i)), false), true && ((true | (-33755i != var_1.x)) | !var_0.a.x));
    var var_2 = u_input.d;
    let var_3 = Struct_1(vec3<bool>(false, true, var_0.a.x & var_0.a.x));
    return var_3;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_1 {
    global0 = array<u32, 10>();
    var var_0 = _wgslsmith_f_op_f32(1771f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -577f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-807f + -1048f) * _wgslsmith_f_op_f32(-497f + 613f)))));
    let var_1 = !all(vec2<bool>(arg_1.a.x, arg_1.a.x));
    var var_2 = Struct_1(vec3<bool>(!(!(arg_0.x < arg_0.x)), true, firstLeadingBit(0i) == max(arg_2.x, 38275i)));
    var var_3 = arg_1;
    return Struct_1(var_2.a);
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_1 {
    global0 = array<u32, 10>();
    let var_0 = func_2();
    global0 = array<u32, 10>();
    global0 = array<u32, 10>();
    let var_1 = var_0;
    return var_0;
}

fn func_1(arg_0: i32) -> Struct_1 {
    global1 = array<vec3<f32>, 7>();
    var var_0 = func_5(func_4(vec3<i32>(abs(~arg_0), -1i >> (u_input.a.x % 32u), _wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, arg_0, -20130i, -2147483647i), vec4<i32>(u_input.d.x, arg_0, -2147483647i, -8065i))), func_2(), _wgslsmith_div_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(-25077i, arg_0, u_input.d.x), ~(-vec3<i32>(15742i, 10823i, 2147483647i)))), -vec4<i32>(u_input.d.x, select(1i, ~arg_0, false), 39288i, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.d, vec2<i32>(arg_0, 1i)), ~(-53691i))));
    let var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(4294967295u, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, u_input.c.x), 10u)]), u_input.b.x, 1u), 7u)]))));
    var var_2 = func_2();
    var_0 = Struct_1(vec3<bool>(true && func_3(20405u, Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(var_0.a.x, var_0.a.x, true))).x, true, !var_0.a.x));
    return func_5(func_5(Struct_1(var_2.a), vec4<i32>(arg_0, _wgslsmith_clamp_i32(u_input.d.x, arg_0, _wgslsmith_dot_vec4_i32(vec4<i32>(-2917i, u_input.d.x, 2982i, arg_0), vec4<i32>(u_input.d.x, arg_0, -1i, u_input.d.x))), min(-31219i, ~arg_0), ~(-2147483647i) & _wgslsmith_clamp_i32(u_input.d.x, -41504i, u_input.d.x))), vec4<i32>(~_wgslsmith_mult_i32(-15538i, -52408i ^ u_input.d.x), arg_0, ~((arg_0 >> (24269u % 32u)) | 51835i), -(i32(-1i) * -12057i)));
}

fn func_6(arg_0: Struct_1, arg_1: vec2<bool>) -> vec3<bool> {
    let var_0 = arg_0.a.x && true;
    global0 = array<u32, 10>();
    global1 = array<vec3<f32>, 7>();
    global1 = array<vec3<f32>, 7>();
    var var_1 = 11060u;
    return vec3<bool>(false, (!any(arg_0.a) | true) || false, all(!func_5(arg_0, ~vec4<i32>(-21529i, -5212i, u_input.d.x, u_input.d.x)).a.yz));
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec2<i32>) -> Struct_1 {
    global0 = array<u32, 10>();
    var var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2177f, 1305f) - vec2<f32>(1978f, -1224f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-928f, -1857f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-437f, _wgslsmith_f_op_f32(-1000f * 1659f)), vec2<f32>(_wgslsmith_f_op_f32(-761f * -1608f), -535f), !(!arg_1.a.x))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1000f) - vec2<f32>(_wgslsmith_f_op_f32(ceil(727f)), _wgslsmith_f_op_f32(trunc(-139f)))))));
    let var_1 = arg_1.a;
    var var_2 = ~0u;
    var var_3 = select(vec4<bool>(!(any(vec4<bool>(false, arg_0.a.x, var_1.x, true)) || !arg_0.a.x), true, func_4(vec3<i32>(~(-6305i), countOneBits(u_input.d.x), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 7165i, arg_3.x, 0i), vec4<i32>(-1i, -18980i, -2147483647i, u_input.d.x))), Struct_1(func_1(arg_3.x).a), -vec3<i32>(arg_3.x, u_input.d.x, arg_3.x)).a.x, (_wgslsmith_f_op_f32(var_0.x - var_0.x) < -169f) || arg_1.a.x), vec4<bool>(any(func_5(Struct_1(vec3<bool>(arg_0.a.x, arg_1.a.x, arg_1.a.x)), vec4<i32>(2147483647i, -1762i, u_input.d.x, arg_3.x)).a) || !var_1.x, false, true, false), true);
    return Struct_1(arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-470f, -1157f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-1343f, -1223f), vec2<f32>(-1018f, 1895f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1293f, 653f) - vec2<f32>(-383f, 349f)), select(false, true, false))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(171f, -964f))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, -368f), vec2<f32>(-1056f, 483f), false)))))));
    let var_1 = func_7(Struct_1(vec3<bool>(true, true, true)), Struct_1(func_6(func_1(8768i), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true)))), u_input.b.wz, u_input.d);
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(select(661f, var_0.x, true))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.x, 582f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-930f, -784f) * vec2<f32>(756f, var_0.x))))))) - _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(abs(var_0.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(842f, 459f) * vec2<f32>(var_0.x, var_0.x)) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.x, 861f), vec2<f32>(var_0.x, -1226f))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)) * _wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, 886f), vec2<f32>(var_0.x, var_0.x)))))));
    var var_2 = ~u_input.d.x == 2147483647i;
    var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec4_u32(u_input.b, firstTrailingBit(u_input.b)) | vec4<u32>(~_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 4294967295u), countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 7362u, 10569u, 11369u), u_input.b)), 5670u, 0u), vec4<f32>(1087f, 1239f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(floor(1169f)), func_7(Struct_1(vec3<bool>(false, var_1.a.x, false)), func_7(Struct_1(vec3<bool>(var_1.a.x, true, true)), var_1, u_input.b.zx, u_input.d), ~u_input.b.zw, select(u_input.d, vec2<i32>(u_input.d.x, 13577i), var_1.a.x)).a.x)), var_0.x));
}

