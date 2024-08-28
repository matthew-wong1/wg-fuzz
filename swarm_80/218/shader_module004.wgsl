struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: bool,
    d: vec2<bool>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: i32,
    e: f32,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(12012i, 0i);

var<private> global1: Struct_1 = Struct_1(vec2<u32>(3310u, 37700u), vec3<f32>(175f, -531f, 598f), true, vec2<bool>(false, false), false);

var<private> global2: array<Struct_3, 15> = array<Struct_3, 15>(Struct_3(true, vec3<i32>(1i, -56203i, 31277i)), Struct_3(false, vec3<i32>(11887i, -31177i, 0i)), Struct_3(false, vec3<i32>(-1i, 1i, -3769i)), Struct_3(false, vec3<i32>(-54347i, -23918i, i32(-2147483648))), Struct_3(true, vec3<i32>(i32(-2147483648), 34292i, i32(-2147483648))), Struct_3(true, vec3<i32>(-22150i, -1i, 1i)), Struct_3(false, vec3<i32>(2147483647i, -11138i, -31396i)), Struct_3(false, vec3<i32>(20077i, 1i, -49999i)), Struct_3(false, vec3<i32>(27053i, -25019i, 4381i)), Struct_3(true, vec3<i32>(35775i, -1330i, 58502i)), Struct_3(true, vec3<i32>(-582i, -15661i, -2697i)), Struct_3(true, vec3<i32>(-9269i, 57127i, -12881i)), Struct_3(false, vec3<i32>(-43575i, 22239i, 1i)), Struct_3(true, vec3<i32>(0i, i32(-2147483648), -50033i)), Struct_3(true, vec3<i32>(2147483647i, 36658i, 1i)));

var<private> global3: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec2<u32>(1u, 4294967295u), vec3<f32>(603f, -1000f, -979f), true, vec2<bool>(false, false), true), Struct_1(vec2<u32>(4294967295u, 1u), vec3<f32>(428f, 1000f, -659f), true, vec2<bool>(true, true), false), Struct_1(vec2<u32>(4294967295u, 0u), vec3<f32>(447f, 1988f, -421f), true, vec2<bool>(true, false), true), Struct_1(vec2<u32>(0u, 4294967295u), vec3<f32>(1236f, -123f, 1062f), false, vec2<bool>(false, false), true), Struct_1(vec2<u32>(4294967295u, 31560u), vec3<f32>(755f, -799f, -1021f), false, vec2<bool>(false, false), false), Struct_1(vec2<u32>(0u, 76156u), vec3<f32>(-477f, -495f, -1000f), false, vec2<bool>(true, false), true), Struct_1(vec2<u32>(36536u, 4294967295u), vec3<f32>(1357f, -341f, 331f), false, vec2<bool>(false, true), true), Struct_1(vec2<u32>(4294967295u, 78721u), vec3<f32>(430f, 1321f, -841f), false, vec2<bool>(true, false), true), Struct_1(vec2<u32>(1u, 10273u), vec3<f32>(-791f, 1000f, -1059f), false, vec2<bool>(true, false), true), Struct_1(vec2<u32>(1u, 4294967295u), vec3<f32>(-778f, 906f, -1000f), true, vec2<bool>(false, false), true), Struct_1(vec2<u32>(12345u, 1u), vec3<f32>(1241f, -1258f, 1902f), true, vec2<bool>(false, true), true), Struct_1(vec2<u32>(0u, 72241u), vec3<f32>(-416f, 497f, 119f), false, vec2<bool>(true, false), false), Struct_1(vec2<u32>(4294967295u, 21868u), vec3<f32>(-132f, -741f, 160f), true, vec2<bool>(false, true), false), Struct_1(vec2<u32>(4294967295u, 0u), vec3<f32>(726f, 201f, -950f), false, vec2<bool>(true, true), false), Struct_1(vec2<u32>(26691u, 0u), vec3<f32>(893f, 1000f, -617f), true, vec2<bool>(true, false), false), Struct_1(vec2<u32>(41499u, 4294967295u), vec3<f32>(-1067f, -1660f, -607f), true, vec2<bool>(true, false), true), Struct_1(vec2<u32>(0u, 2945u), vec3<f32>(673f, 1501f, -198f), true, vec2<bool>(false, true), false), Struct_1(vec2<u32>(8821u, 8535u), vec3<f32>(-1000f, 794f, -287f), false, vec2<bool>(true, true), true), Struct_1(vec2<u32>(97549u, 61457u), vec3<f32>(-200f, -879f, -595f), false, vec2<bool>(false, false), false), Struct_1(vec2<u32>(1u, 0u), vec3<f32>(-1000f, 1557f, 829f), true, vec2<bool>(false, true), false), Struct_1(vec2<u32>(1u, 4294967295u), vec3<f32>(-729f, -169f, -393f), false, vec2<bool>(true, true), false), Struct_1(vec2<u32>(1u, 44098u), vec3<f32>(-747f, -1000f, -1254f), true, vec2<bool>(false, false), true), Struct_1(vec2<u32>(33400u, 0u), vec3<f32>(-1070f, 967f, 604f), false, vec2<bool>(true, true), true));

var<private> global4: vec2<i32> = vec2<i32>(-1i, 14659i);

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> i32 {
    var var_0 = !select(vec2<bool>(arg_1.a.c, true), global1.d, global1.d);
    global3 = array<Struct_1, 23>();
    global4 = -u_input.a.yz >> (~arg_1.a.a % vec2<u32>(32u));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.b.x + -241f))))) * arg_1.c.b.x));
    let var_2 = Struct_3(arg_1.c.d.x, -_wgslsmith_clamp_vec3_i32(u_input.a, vec3<i32>(countOneBits(arg_1.d), 41991i, 1i), ~u_input.a));
    return _wgslsmith_dot_vec2_i32(-_wgslsmith_mult_vec2_i32(select(arg_1.b, vec2<i32>(2147483647i, -3695i), arg_1.a.d), vec2<i32>(global0.x, var_2.b.x)) ^ ~var_2.b.yy, _wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(i32(-1i) * -14913i, var_2.b.x)), abs(~(~var_2.b.xz))));
}

fn func_2(arg_0: f32, arg_1: vec3<u32>, arg_2: u32) -> vec3<u32> {
    var var_0 = -((_wgslsmith_mult_i32(global4.x, global4.x) << (abs(15447u) % 32u)) | _wgslsmith_mod_i32(u_input.a.x >> (arg_1.x % 32u), func_3(global1.e, Struct_2(global3[_wgslsmith_index_u32(arg_2, 23u)], u_input.a.xy, global3[_wgslsmith_index_u32(6212u, 23u)], -5337i, arg_0)))) < -2328i;
    var var_1 = _wgslsmith_div_f32(1149f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0 * global1.b.x), _wgslsmith_f_op_f32(exp2(arg_0)), global1.d.x)))));
    global0 = vec2<i32>(~(-firstTrailingBit(-38202i | u_input.a.x)), 16303i);
    let var_2 = Struct_1(global1.a, _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(global1.b, vec3<f32>(global1.b.x, global1.b.x, -790f)), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0 + arg_0))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0 + global1.b.x))), _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(step(711f, global1.b.x))))), true, select(global1.d, global1.d, !global1.d), false);
    var var_3 = !vec4<bool>(false, !(var_2.a.x != ~3066u), true, false);
    return firstTrailingBit(~arg_1);
}

fn func_1(arg_0: vec4<f32>) -> i32 {
    let var_0 = global1.b.x;
    global3 = array<Struct_1, 23>();
    global4 = reverseBits(u_input.a.yy);
    let var_1 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-668f))))), vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(select(vec3<u32>(37779u, 46625u, 1u), vec3<u32>(69183u, 76159u, global1.a.x), true), vec3<u32>(global1.a.x, global1.a.x, 16162u)), ~(~vec3<u32>(4294967295u, 33887u, global1.a.x))), firstTrailingBit(global1.a.x), global1.a.x), 125411u);
    return _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.a.xy | u_input.a.xx, _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -1i, u_input.a.x), vec3<i32>(global0.x, 0i, global0.x)), global4.x), -vec2<i32>(global4.x, 15811i))), global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(-vec2<i32>(func_1(vec4<f32>(-594f, 329f, global1.b.x, global1.b.x)), 2147483647i) | u_input.a.zx);
    var var_0 = -(~(~select(vec4<i32>(12823i, global4.x, 1i, global4.x), vec4<i32>(global4.x, -20246i, u_input.a.x, -2147483647i), vec4<bool>(true, false, global1.c, true)) << (~vec4<u32>(24674u, 17323u, 1u, global1.a.x) % vec4<u32>(32u))));
    global0 = min(_wgslsmith_clamp_vec2_i32(u_input.a.yz, vec2<i32>(func_3(global1.c, Struct_2(global3[_wgslsmith_index_u32(global1.a.x, 23u)], vec2<i32>(u_input.a.x, -32777i), Struct_1(global1.a, vec3<f32>(-1956f, -467f, global1.b.x), global1.e, global1.d, true), -1i, 326f)) | min(var_0.x, u_input.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 2147483647i, 6655i, -21664i) | vec4<i32>(-2147483647i, -46436i, 29770i, global4.x), vec4<i32>(-15480i, -1i, 2147483647i, -13096i))), ~u_input.a.yz), var_0.xx);
    global3 = array<Struct_1, 23>();
    var var_1 = -2147483647i ^ var_0.x;
    var var_2 = Struct_1(select(global1.a, global1.a, global1.d.x || (true && (4294967295u == global1.a.x))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x)), -1364f, global1.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(953f - 1501f), global1.b.x, _wgslsmith_f_op_f32(-global1.b.x))))), global1.e, !global1.d, all(select(!vec3<bool>(false, global1.d.x, true), select(select(vec3<bool>(false, true, true), vec3<bool>(global1.e, global1.e, global1.d.x), vec3<bool>(global1.c, true, false)), select(vec3<bool>(true, global1.d.x, global1.e), vec3<bool>(global1.c, true, global1.c), vec3<bool>(global1.d.x, false, global1.c)), true), any(select(vec4<bool>(global1.e, global1.d.x, true, global1.d.x), vec4<bool>(global1.e, false, global1.c, global1.c), true)))));
    let var_3 = global2[_wgslsmith_index_u32(var_2.a.x & (~(~global1.a.x >> (~var_2.a.x % 32u)) & _wgslsmith_mult_u32(~max(4294967295u, var_2.a.x), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(var_2.a, var_2.a), _wgslsmith_mod_u32(11542u, global1.a.x)))), 15u)];
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1470f, 245f, global1.b.x, -835f) - vec4<f32>(-1000f, -650f, var_2.b.x, global1.b.x)), vec4<f32>(1023f, -381f, var_2.b.x, 181f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(var_4.xy, var_4.wy)) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(var_4.wx))))), vec2<f32>(1000f, -1409f))));
}

