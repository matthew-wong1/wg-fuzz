struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: bool,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 29> = array<i32, 29>(16468i, 0i, -16394i, i32(-2147483648), 0i, -12983i, -81691i, -51014i, 2147483647i, -1i, 9582i, 47296i, 0i, 49124i, -10741i, 1i, -44369i, 0i, -43891i, i32(-2147483648), -1i, 0i, i32(-2147483648), 1i, 1i, 18793i, -1i, 2147483647i, 1i);

var<private> global1: array<Struct_1, 3>;

var<private> global2: array<vec2<f32>, 18>;

var<private> global3: vec4<i32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_f32(select(-1052f, _wgslsmith_div_f32(arg_1.b.x, 381f), false));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(arg_2.b, arg_3.b), _wgslsmith_f_op_f32(478f + 175f))))));
    let var_2 = arg_1.e.x;
    global1 = array<Struct_1, 3>();
    global2 = array<vec2<f32>, 18>();
    return all(!select(select(vec3<bool>(arg_1.d, false, false), !vec3<bool>(arg_1.d, arg_0, false), arg_1.d & arg_1.d), !select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(true, true, false), vec3<bool>(false, arg_1.d, arg_0)), !select(vec3<bool>(arg_1.d, true, arg_1.d), vec3<bool>(false, arg_1.d, false), true)));
}

fn func_2(arg_0: Struct_2) -> vec4<f32> {
    var var_0 = any(vec4<bool>(true, any(vec3<bool>(arg_0.d, func_3(false, Struct_2(arg_0.b, vec4<f32>(arg_0.a.x, arg_0.a.x, -2030f, -882f), vec3<f32>(arg_0.a.x, -478f, -1109f), arg_0.d, vec2<u32>(77096u, arg_0.e.x)), global1[_wgslsmith_index_u32(arg_0.e.x, 3u)], global1[_wgslsmith_index_u32(1u, 3u)]), !arg_0.d)), any(vec2<bool>(true, false)), false));
    let var_1 = arg_0.c;
    global2 = array<vec2<f32>, 18>();
    let var_2 = -u_input.e.zy;
    var var_3 = _wgslsmith_clamp_vec4_u32(~abs(~vec4<u32>(1u, u_input.b, 0u, arg_0.e.x)), vec4<u32>(select(_wgslsmith_mult_u32(u_input.a, 2352u), u_input.b, any(vec2<bool>(arg_0.d, arg_0.d)) & true), ~min(~u_input.b, _wgslsmith_dot_vec2_u32(arg_0.e, arg_0.e)), u_input.b, u_input.a), reverseBits(vec4<u32>(1u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.e.x, 12059u, u_input.c), vec3<u32>(48158u, arg_0.e.x, 0u)), _wgslsmith_div_u32(1u, 41326u), ~firstTrailingBit(u_input.b))));
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-arg_0.a), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.x, 1825f, -672f, -1739f) + arg_0.a))))))));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: i32, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = Struct_1(u_input.c | ~_wgslsmith_mult_u32(1u, _wgslsmith_div_u32(4294967295u, u_input.c)), arg_3.x);
    let var_1 = vec4<bool>(!arg_1.d, true, arg_1.d, (firstTrailingBit(global0[_wgslsmith_index_u32(1u << (arg_1.e.x % 32u), 29u)]) != _wgslsmith_div_i32(_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(65235u, 29u)], -18448i, 2147483647i), select(20338i, 14334i, arg_1.d))) && !(u_input.c <= min(72997u, 4294967295u)));
    var var_2 = vec4<bool>(true, !(true != func_3(true, arg_1, global1[_wgslsmith_index_u32(~arg_1.e.x, 3u)], Struct_1(4294967295u, arg_3.x))), arg_1.d, false);
    global2 = array<vec2<f32>, 18>();
    global1 = array<Struct_1, 3>();
    return Struct_1(var_0.a, _wgslsmith_f_op_f32(var_0.b * 1693f));
}

fn func_1(arg_0: vec2<f32>, arg_1: u32, arg_2: f32) -> vec3<f32> {
    let var_0 = func_4(~u_input.e.x, Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 836f, arg_2, arg_0.x) + vec4<f32>(-450f, 455f, arg_2, 1000f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(Struct_2(vec4<f32>(arg_2, arg_2, arg_0.x, arg_0.x), vec4<f32>(1856f, -1867f, arg_0.x, 992f), vec3<f32>(380f, -1297f, arg_0.x), true, vec2<u32>(arg_1, arg_1)))) * vec4<f32>(arg_0.x, 1000f, arg_2, -815f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-736f, arg_2, -1029f, arg_2), vec4<f32>(289f, 765f, -375f, arg_0.x), vec4<bool>(true, false, true, true))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1208f, -231f, -369f, arg_2), vec4<f32>(arg_2, arg_2, arg_2, -1043f), true))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-401f, -1523f, -254f, arg_2))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2026f * -1070f)), _wgslsmith_f_op_f32(sign(arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.x)) + 465f)), !(func_3(true, Struct_2(vec4<f32>(arg_0.x, arg_2, arg_0.x, arg_2), vec4<f32>(841f, 811f, 1231f, arg_2), vec3<f32>(645f, arg_0.x, 1185f), true, vec2<u32>(arg_1, 4904u)), global1[_wgslsmith_index_u32(1u, 3u)], global1[_wgslsmith_index_u32(1u, 3u)]) | true), abs(reverseBits(vec2<u32>(67272u, arg_1))) & (~vec2<u32>(arg_1, 846u) & vec2<u32>(u_input.a, arg_1))), reverseBits(-1i), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1104f, -792f, -1572f, arg_2) + vec4<f32>(-165f, -1449f, -716f, arg_0.x))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(939f, arg_2)), -243f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.x, arg_2, false))), arg_2))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec4_f32(func_2(Struct_2(vec4<f32>(140f, arg_0.x, 1000f, -874f), vec4<f32>(241f, var_0.b, -575f, 484f), vec3<f32>(-1000f, 1594f, -204f), false, vec2<u32>(u_input.d, arg_1)))).x, -218f)), _wgslsmith_f_op_f32(round(arg_2))));
    var var_2 = abs(~_wgslsmith_div_u32(var_0.a, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a, arg_1, var_0.a), vec3<u32>(0u, 53162u, 0u)))) >> (~arg_1 % 32u);
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), 1172f);
    var var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(func_4(0i, Struct_2(vec4<f32>(arg_2, var_1.x, var_1.x, var_0.b), vec4<f32>(var_1.x, var_1.x, var_1.x, var_3.x), vec3<f32>(1212f, 1277f, var_3.x), false, vec2<u32>(4294967295u, 93117u)), _wgslsmith_dot_vec2_i32(global3.zx, global3.yy), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2369f, var_1.x, var_1.x, var_0.b))).b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 453f)), _wgslsmith_div_f32(var_1.x, 1067f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x - arg_0.x) - _wgslsmith_f_op_f32(arg_2 * -204f))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-364f, var_3.x, arg_0.x, var_0.b) * vec4<f32>(-1063f, 1000f, arg_2, arg_0.x)) - vec4<f32>(arg_0.x, var_3.x, var_0.b, arg_0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, var_1.x, -741f, -1000f), vec4<f32>(-382f, arg_0.x, -786f, 1198f)) - _wgslsmith_div_vec4_f32(vec4<f32>(2105f, arg_0.x, var_0.b, -530f), vec4<f32>(var_1.x, -829f, -1978f, -182f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1217f, -511f, -1677f, -307f)))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(552f, -832f, 1006f, arg_2) * vec4<f32>(-216f, var_0.b, var_0.b, 411f)))))), vec3<f32>(_wgslsmith_f_op_f32(sign(var_1.x)), -714f, _wgslsmith_f_op_f32(1032f - _wgslsmith_f_op_f32(round(var_3.x)))), !(_wgslsmith_f_op_vec4_f32(func_2(Struct_2(vec4<f32>(937f, -578f, 908f, -2780f), vec4<f32>(1000f, arg_2, -272f, var_1.x), vec3<f32>(107f, var_0.b, 1000f), false, vec2<u32>(0u, 128u)))).x == var_3.x) | false, vec2<u32>(arg_1 & 5395u, _wgslsmith_div_u32(arg_1, select(abs(0u), ~u_input.a, true))));
    return var_4.b.yww;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(891f, 398f, -1273f, -133f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(934f, -1048f, -287f, 1203f)), vec4<bool>(false, true, false, false))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-427f, 1192f, 2031f, -1094f) - vec4<f32>(-2186f, 1020f, -359f, 925f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-401f, 679f, 1237f, 652f)), vec4<bool>(true, true, true, true)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(2421f, -266f, -169f, 357f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-966f, 900f, 499f, -359f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-140f, -646f, -521f, -1337f))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-151f, -205f, 1271f, 1549f), vec4<f32>(1901f, 968f, -417f, 1000f), vec4<bool>(false, false, false, false)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-236f, -395f, -2252f, 392f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 551f, -1070f, 2357f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-477f, -513f, -429f, -336f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-285f, -187f, -315f, -978f) - vec4<f32>(-1000f, -774f, 1508f, -1664f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(vec2<f32>(1000f, -170f), min(u_input.b, u_input.c), _wgslsmith_f_op_f32(ceil(-519f)))) * vec3<f32>(101f, _wgslsmith_f_op_f32(trunc(1070f)), -1000f)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(571f, -385f, -1255f) * vec3<f32>(2164f, -292f, -123f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-351f, 453f, -1000f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(198f, 491f, 487f))))), false, ~(~vec2<u32>(u_input.c, _wgslsmith_div_u32(u_input.a, u_input.a))));
    var var_1 = _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(u_input.e ^ vec4<i32>(global3.x, u_input.e.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global3.x, -27490i, 1918i), vec4<i32>(u_input.e.x, global0[_wgslsmith_index_u32(0u, 29u)], global0[_wgslsmith_index_u32(0u, 29u)], u_input.e.x)), ~u_input.e.x), vec4<i32>(-8745i, -_wgslsmith_add_i32(-7729i, 4370i), global3.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global3.x, 2461i, 0i), vec3<i32>(global3.x, global0[_wgslsmith_index_u32(0u, 29u)], u_input.e.x)))), -abs(-2147483647i));
    let var_2 = Struct_2(vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_2(Struct_2(vec4<f32>(var_0.c.x, var_0.c.x, -1000f, var_0.a.x), vec4<f32>(-1296f, 308f, -1000f, -661f), var_0.b.yxz, var_0.d, vec2<u32>(var_0.e.x, var_0.e.x)))).x - 442f))), _wgslsmith_f_op_vec4_f32(func_2(Struct_2(_wgslsmith_f_op_vec4_f32(-var_0.a), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-492f, 438f, var_0.c.x, -300f))), _wgslsmith_f_op_vec3_f32(func_1(var_0.c.xy, var_0.e.x, var_0.c.x)), all(vec3<bool>(false, var_0.d, var_0.d)), vec2<u32>(1u, u_input.c)))).x, 1564f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b.x, 127f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-739f, -953f)), _wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(-602f + var_0.c.x))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_div_f32(var_0.b.x, var_0.a.x), _wgslsmith_f_op_f32(var_0.b.x - var_0.c.x), var_0.b.x))), !(_wgslsmith_sub_u32(var_0.e.x, var_0.e.x) == u_input.d))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, 902f, var_0.b.x) * _wgslsmith_f_op_vec3_f32(var_0.c + var_0.b.wwx)))), !var_0.d && true, vec2<u32>(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(4294967295u, u_input.a, var_0.e.x) & vec3<u32>(var_0.e.x, var_0.e.x, 0u)), _wgslsmith_add_vec3_u32(vec3<u32>(1u, var_0.e.x, u_input.a), ~vec3<u32>(var_0.e.x, 4294967295u, 30638u))), var_0.e.x));
    let var_3 = var_2.d;
    global2 = array<vec2<f32>, 18>();
    var_1 = global0[_wgslsmith_index_u32(~(~(~4294967295u)), 29u)];
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.e.zx), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(abs(-278f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-385f)))))));
}

