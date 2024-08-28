struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<f32>,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: Struct_2,
    d: vec2<f32>,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: i32 = 0i;

var<private> global2: array<vec2<i32>, 8>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> vec3<i32> {
    var var_0 = Struct_4(_wgslsmith_dot_vec3_u32(select(u_input.c.yyy, vec3<u32>(u_input.c.x, arg_0.b.b, u_input.a.x) | vec3<u32>(u_input.a.x, 47560u, u_input.a.x), vec3<bool>(2147483647i > u_input.b.x, arg_0.e.b > 21464u, arg_0.b.c.x)), vec3<u32>(~min(6334u, u_input.c.x), 14804u, arg_0.b.b)), firstTrailingBit(~4294967295u), -vec4<i32>(u_input.b.x, arg_0.e.a.x, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(u_input.b, u_input.b), -vec3<i32>(2147483647i, -1i, 0i)), -u_input.b.x), true);
    var var_1 = Struct_4(1u, ~11046u, var_0.c, true);
    var_0 = Struct_4(23451u, ~0u, vec4<i32>(_wgslsmith_dot_vec4_i32(-var_0.c, vec4<i32>(var_0.c.x, -13682i, var_0.c.x, 29556i)), arg_0.d.x, firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, var_1.c.x, 1i), vec3<i32>(var_0.c.x, 10307i, arg_0.d.x))), 0i << (~var_1.b % 32u)) | -(vec4<i32>(arg_0.e.a.x, arg_0.b.a.x, -1i, var_0.c.x) >> (~u_input.c % vec4<u32>(32u))), var_0.d);
    var var_2 = any(!(!vec4<bool>(arg_0.b.c.x, var_1.d, var_0.d, false))) | !(true & var_0.d);
    let var_3 = var_0.c.x;
    return firstTrailingBit(_wgslsmith_add_vec3_i32(select(select(var_1.c.xzz, select(arg_0.b.a, vec3<i32>(var_0.c.x, u_input.b.x, var_1.c.x), arg_0.e.c.wyy), var_1.d), var_1.c.wwz, select(vec3<bool>(true, var_1.d, true), arg_0.e.c.ywx, true)), countOneBits(vec3<i32>(arg_0.d.x, 51226i, u_input.b.x)) << (~u_input.a % vec3<u32>(32u))));
}

fn func_4(arg_0: i32, arg_1: vec3<i32>) -> vec3<i32> {
    global0 = any(!(!(!select(vec2<bool>(false, false), vec2<bool>(true, false), false))));
    global0 = any(!select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)))) && any(vec2<bool>(true, true));
    global0 = true;
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -532f);
    var var_1 = select(vec3<bool>(!(!all(vec4<bool>(false, true, false, true))), true, all(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), false))), vec3<bool>(false, !(!all(vec3<bool>(true, false, false))), true), !any(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false), true)));
    return select(abs(_wgslsmith_sub_vec3_i32(firstTrailingBit(_wgslsmith_add_vec3_i32(u_input.b, u_input.b)), u_input.b)), -u_input.b, any(!select(!vec3<bool>(var_1.x, false, var_1.x), !vec3<bool>(var_1.x, false, true), !var_1.x)));
}

fn func_2(arg_0: vec2<f32>) -> Struct_2 {
    var var_0 = Struct_1(countOneBits(func_4(_wgslsmith_add_i32(_wgslsmith_mod_i32(31189i, 7908i), firstTrailingBit(0i)), -func_3(Struct_2(-227f, Struct_1(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), 1u, vec4<bool>(false, true, true, false)), vec3<f32>(arg_0.x, arg_0.x, arg_0.x), u_input.b, Struct_1(vec3<i32>(40674i, u_input.b.x, -2147483647i), u_input.a.x, vec4<bool>(true, true, true, true))), 4294967295u))), _wgslsmith_dot_vec3_u32(select(reverseBits(vec3<u32>(57502u, 29061u, u_input.c.x)), max(_wgslsmith_div_vec3_u32(u_input.c.wyz, vec3<u32>(u_input.a.x, 0u, u_input.a.x)), u_input.a | u_input.c.ywz), true), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(50588u, u_input.c.x), u_input.c.xy) << (~u_input.a.x % 32u), 1u, u_input.a.x)), vec4<bool>(any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false))), true, false, false));
    var var_1 = arg_0.x;
    var var_2 = vec3<i32>(-abs(i32(-1i) * -var_0.a.x), var_0.a.x, abs(-max(~38618i, u_input.b.x)));
    return Struct_2(arg_0.x, Struct_1(~(~(~var_0.a)), ~31363u, select(!vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, true), var_0.c, select(var_0.c, select(vec4<bool>(false, var_0.c.x, var_0.c.x, true), vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, true), var_0.c.x), vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(1132f)), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.x + 896f))))), vec3<i32>(-1i) * -vec3<i32>(-2147483647i, firstLeadingBit(var_2.x), u_input.b.x), Struct_1(vec3<i32>(i32(-1i) * -2147483647i, var_0.a.x, -1i), 34105u, var_0.c));
}

fn func_5(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: bool, arg_3: vec3<u32>) -> Struct_3 {
    var var_0 = -2147483647i > (countOneBits(u_input.b.x) >> (~countOneBits(1665u) % 32u));
    global2 = array<vec2<i32>, 8>();
    var var_1 = ~countOneBits(arg_3.x) & u_input.c.x;
    var var_2 = vec4<bool>(!(!select(true, all(arg_0.c.e.c), true)), reverseBits(reverseBits(u_input.c.x << (u_input.a.x % 32u))) != 4294967295u, arg_2, select(true, select(arg_0.a.b.c.x, true, !arg_2), select(true, arg_0.a.b.c.x, arg_0.c.e.c.x)));
    let var_3 = arg_2;
    return arg_0;
}

fn func_1() -> f32 {
    global2 = array<vec2<i32>, 8>();
    var var_0 = func_5(Struct_3(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-792f, 1008f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1086f, -767f, 556f))), func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1136f, 1000f), vec2<f32>(1317f, 527f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(634f, 266f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(183f, 1483f), vec2<f32>(-757f, -1983f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1150f, 219f) * vec2<f32>(1063f, -423f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-112f, -130f, 1522f) - vec3<f32>(-752f, 372f, 1485f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(555f, -194f, -542f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-188f, 775f, -474f) * vec3<f32>(621f, 598f, -1159f)))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(659f, 460f, -173f) + vec3<f32>(-1049f, -1295f, -1305f)))), vec3<f32>(961f, _wgslsmith_f_op_f32(max(-1000f, 126f)), 1f)))), true, firstLeadingBit(u_input.c.xzw));
    let var_1 = (i32(-1i) * -18943i) < firstTrailingBit(-41901i & _wgslsmith_sub_i32(20556i, _wgslsmith_mod_i32(2147483647i, u_input.b.x)));
    global1 = 1i;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.d.x))), 1083f, true)))), Struct_1(~_wgslsmith_add_vec3_i32(-var_0.a.e.a, var_0.a.b.a), _wgslsmith_clamp_u32(~(~1u), max(~var_0.a.b.b, u_input.c.x ^ 23155u), 0u), func_2(var_0.d).e.c), _wgslsmith_f_op_vec3_f32(-var_0.b), ~var_0.a.d, func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.c.x, -611f)))) - var_0.c.c.zx)).b);
    return 1021f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1()))) * _wgslsmith_f_op_f32(-966f + -965f)) + _wgslsmith_f_op_f32(f32(-1f) * -175f)), Struct_1(~reverseBits(~u_input.b), 15399u, func_2(vec2<f32>(_wgslsmith_f_op_f32(round(-371f)), _wgslsmith_f_op_f32(ceil(861f)))).e.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1065f, 1121f) - vec3<f32>(1019f, 140f, 575f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1993f, 110f, -263f)))))), u_input.b, Struct_1(_wgslsmith_div_vec3_i32(u_input.b, vec3<i32>(2147483647i, 20087i, u_input.b.x) ^ u_input.b), 39717u, !vec4<bool>(true, true, all(vec4<bool>(true, false, false, true)), true)));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1188f, var_0.c.x, 372f, 196f)))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1598f - var_0.c.x), var_0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x - var_0.c.x) - _wgslsmith_f_op_f32(-var_0.a)), -196f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-610f, var_0.a, var_0.c.x, 2585f))))));
    global1 = 1i;
    var var_2 = vec3<bool>(select(var_0.e.c.x, select(all(!vec2<bool>(var_0.b.c.x, var_0.e.c.x)), ~var_0.e.a.x >= (u_input.b.x << (u_input.c.x % 32u)), true), var_0.e.b == abs(~u_input.a.x)), var_0.e.c.x, !(false | var_0.b.c.x));
    let var_3 = var_1.wx;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.e.b);
}

