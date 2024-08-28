struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct Struct_5 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 19>;

var<private> global1: array<f32, 4> = array<f32, 4>(-188f, 1030f, -107f, -651f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_5, arg_2: i32, arg_3: vec3<u32>) -> bool {
    let var_0 = Struct_2(true, Struct_1(arg_0.a.a.c), ~_wgslsmith_mod_u32(min(1u, ~arg_1.a.x), u_input.a), any(!vec4<bool>(!arg_0.a.a.d, true, true, select(false, arg_0.a.a.a, false))));
    global0 = array<Struct_3, 19>();
    global0 = array<Struct_3, 19>();
    global0 = array<Struct_3, 19>();
    var var_1 = _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~arg_0.a.a.b.a, 4u)]);
    return any(!select(!(!vec2<bool>(false, arg_0.a.a.d)), !vec2<bool>(arg_0.a.a.d, arg_0.a.a.d), !(arg_0.b.x < arg_2)));
}

fn func_2(arg_0: u32) -> Struct_5 {
    let var_0 = false;
    let var_1 = ~(~2147483647i);
    var var_2 = _wgslsmith_sub_vec3_u32(countOneBits(~vec3<u32>(arg_0, arg_0, u_input.a)), min(vec3<u32>(~1u, arg_0, arg_0), select(vec3<u32>(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(43674u, 1u), vec2<u32>(4294967295u, u_input.a)), max(4294967295u, u_input.a)), ~vec3<u32>(u_input.b.x, u_input.a, 4294967295u), select(!vec3<bool>(false, var_0, var_0), vec3<bool>(false, true, true), func_3(Struct_4(Struct_3(Struct_2(var_0, Struct_1(1u), u_input.b.x, false)), vec2<i32>(2147483647i, 61911i), 70798u, 98451u), Struct_5(vec2<u32>(4018u, u_input.a)), 26295i, vec3<u32>(1u, u_input.a, arg_0))))));
    var var_3 = abs(~(0i));
    let var_4 = u_input.b;
    return Struct_5(vec2<u32>(countOneBits(5394u), ~u_input.a));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: bool, arg_3: Struct_5) -> u32 {
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.a.x, u_input.b.x, ~1u, ~_wgslsmith_mod_u32(~arg_3.a.x, _wgslsmith_mult_u32(u_input.b.x, 1u))), ~countOneBits(_wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, 4294967295u, arg_3.a.x, arg_3.a.x), ~vec4<u32>(1784u, u_input.b.x, u_input.a, 11565u))));
    var var_1 = arg_1.xyz;
    global1 = array<f32, 4>();
    var var_2 = Struct_4(Struct_3(Struct_2(true, Struct_1(u_input.b.x), _wgslsmith_add_u32(u_input.a & 34922u, firstTrailingBit(u_input.b.x)), !any(arg_0.yz))), vec2<i32>(1i, 1i), firstLeadingBit(arg_3.a.x & _wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.a.x, 10230u, u_input.a, arg_3.a.x) | vec4<u32>(u_input.a, 1u, arg_3.a.x, 109788u), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, arg_3.a.x, arg_3.a.x, 0u), vec4<u32>(1u, u_input.a, 0u, 100330u)))), u_input.a);
    var_0 = 0u << (~var_2.c % 32u);
    return func_2(_wgslsmith_clamp_u32(8725u, abs(arg_3.a.x & arg_3.a.x), arg_3.a.x)).a.x;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: i32) -> Struct_5 {
    let var_0 = _wgslsmith_mult_u32(~4294967295u, abs(_wgslsmith_dot_vec2_u32(~u_input.b, u_input.b))) | ~1u;
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2492f, -338f, global1[_wgslsmith_index_u32(85605u, 4u)], -1315f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(1u, 4u)], 1662f, 658f, global1[_wgslsmith_index_u32(u_input.b.x, 4u)]) - vec4<f32>(global1[_wgslsmith_index_u32(0u, 4u)], -1121f, 559f, -1751f))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(618f, global1[_wgslsmith_index_u32(arg_0.a, 4u)], global1[_wgslsmith_index_u32(22617u, 4u)], 300f)))))), vec4<f32>(108f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -106f)))), _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(55631u, 4u)])), _wgslsmith_f_op_f32(floor(-452f))), true));
    global0 = array<Struct_3, 19>();
    var var_2 = Struct_2(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(~(~79698u), 4u)], _wgslsmith_f_op_f32(-var_1.x))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * global1[_wgslsmith_index_u32(105387u, 4u)]) - var_1.x)), arg_0, ~_wgslsmith_mult_u32(arg_0.a, firstTrailingBit(var_0) >> (_wgslsmith_mult_u32(arg_0.a, var_0) % 32u)), any(vec3<bool>(!(!arg_1.x), true, max(0u, u_input.b.x) > (u_input.a & var_0))));
    return Struct_5(abs(vec2<u32>(26688u, arg_0.a)));
}

fn func_1(arg_0: i32, arg_1: Struct_4) -> Struct_1 {
    let var_0 = -arg_0 != -arg_0;
    global1 = array<f32, 4>();
    let var_1 = _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(select(_wgslsmith_div_u32(arg_1.c, 4621u), ~u_input.a, var_0), arg_1.d, ~(~12833u), 1u), vec4<u32>(arg_1.c, u_input.b.x << ((u_input.b.x << (4294967295u % 32u)) % 32u), ~(~arg_1.a.a.b.a), u_input.b.x)), 4u)]));
    let var_2 = vec3<bool>(false, u_input.a > (reverseBits(80626u | arg_1.a.a.c) ^ _wgslsmith_div_u32(select(27917u, 0u, arg_1.a.a.d), _wgslsmith_sub_u32(4294967295u, u_input.b.x))), false);
    var var_3 = func_5(Struct_1(func_4(!vec4<bool>(arg_1.a.a.a, var_0, arg_1.a.a.a, var_0), vec4<f32>(var_1, 577f, var_1, 1510f), true, func_2(u_input.a)) << (arg_1.c % 32u)), vec2<bool>(!(!var_0), true), arg_1.b.x);
    return arg_1.a.a.b;
}

fn func_6(arg_0: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(reverseBits(func_4(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1168f, 443f, -695f, 1936f) * vec4<f32>(-1000f, global1[_wgslsmith_index_u32(120441u, 4u)], global1[_wgslsmith_index_u32(u_input.b.x, 4u)], global1[_wgslsmith_index_u32(u_input.a, 4u)])), select(false, false, true), Struct_5(vec2<u32>(1u, 0u)))), 4u)])));
    let var_1 = Struct_4(Struct_3(Struct_2(true, func_1(0i, Struct_4(global0[_wgslsmith_index_u32(0u, 19u)], vec2<i32>(16599i, 2147483647i), u_input.b.x, arg_0.a)), _wgslsmith_mult_u32(~arg_0.a, 0u), any(vec4<bool>(true, true, false, true)))), ~vec2<i32>(_wgslsmith_sub_i32(-1i, 16096i), 1i) >> (_wgslsmith_sub_vec2_u32((u_input.b << (vec2<u32>(arg_0.a, 46713u) % vec2<u32>(32u))) >> (~u_input.b % vec2<u32>(32u)), abs(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.a, 32178u), u_input.b))) % vec2<u32>(32u)), arg_0.a, 4294967295u);
    var var_2 = true & (-831f == _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1000f, 1325f)))))));
    let var_3 = var_1.a.a.c;
    var var_4 = Struct_1(~(~(~(var_1.d & 34065u))));
    return arg_0.a;
}

fn func_7(arg_0: u32, arg_1: f32, arg_2: Struct_2) -> Struct_5 {
    var var_0 = func_1(_wgslsmith_mult_i32(-(i32(-1i) * -52989i), 1i) >> (~arg_2.b.a % 32u), Struct_4(global0[_wgslsmith_index_u32(func_5(func_1(0i, Struct_4(global0[_wgslsmith_index_u32(71301u, 19u)], vec2<i32>(27369i, 2147483647i), 0u, 4294967295u)), !vec2<bool>(arg_2.d, arg_2.d), 1i).a.x ^ u_input.a, 19u)], reverseBits(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, -53485i), ~vec2<i32>(72928i, -1i))), 29371u, arg_2.c));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-1085f - 546f), _wgslsmith_f_op_f32(-arg_1), -1355f, _wgslsmith_f_op_f32(exp2(arg_1)));
    var_0 = func_1(1i & _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -15272i, 0i), _wgslsmith_add_vec3_i32(vec3<i32>(1i, 0i, -1i), vec3<i32>(20798i, 0i, -22619i))), ~(-24195i >> (arg_2.b.a % 32u))), Struct_4(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(u_input.a, arg_0, 1u), arg_0, 4536u), 19u)], vec2<i32>(max(i32(-1i) * -15740i, 19391i), -1i), 4294967295u, ~(~59582u) << (_wgslsmith_clamp_u32(0u >> (u_input.b.x % 32u), u_input.a, ~47926u) % 32u)));
    global0 = array<Struct_3, 19>();
    let var_2 = firstLeadingBit(~abs(~firstLeadingBit(vec3<u32>(arg_0, u_input.a, var_0.a))));
    return func_5(arg_2.b, vec2<bool>(true, arg_0 > 62138u), 59141i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(u_input.a >> (28389u % 32u), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -878f)), Struct_2(!any(vec2<bool>(true, true)), Struct_1(u_input.b.x), _wgslsmith_mod_u32(func_6(func_1(-2147483647i, Struct_4(global0[_wgslsmith_index_u32(u_input.a, 19u)], vec2<i32>(0i, -26214i), 41235u, u_input.b.x))), u_input.a), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 33993u, 5112u), vec3<u32>(33955u, 0u, 69005u)) >= (u_input.b.x | 7352u)));
    var var_1 = Struct_4(Struct_3(Struct_2(true, Struct_1(1u), 106559u, true)), vec2<i32>(1i, 35696i) ^ (~vec2<i32>(76903i, -75840i) >> (max(abs(u_input.b), vec2<u32>(0u, 27040u) >> (u_input.b % vec2<u32>(32u))) % vec2<u32>(32u))), ~1u, u_input.b.x);
    let var_2 = reverseBits(vec4<i32>(var_1.b.x, _wgslsmith_mult_i32(-4336i, 1i), var_1.b.x, 19460i));
    let var_3 = Struct_3(var_1.a.a);
    global0 = array<Struct_3, 19>();
    var var_4 = vec3<u32>(_wgslsmith_mult_u32(abs(~(~u_input.b.x)), select(~(var_0.a.x << (4294967295u % 32u)), firstLeadingBit(~26888u), any(!vec4<bool>(var_1.a.a.a, var_3.a.a, var_1.a.a.a, false)))), ~var_0.a.x, var_1.d);
    let var_5 = -357i;
    var var_6 = 1i >> (1u % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u & var_0.a.x, 4u)] * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(37714u, 4u)], -532f)))))), 594f, 31364u, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~1u, 4u)] - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(func_7(var_4.x, global1[_wgslsmith_index_u32(var_4.x, 4u)], Struct_2(var_1.a.a.a, var_1.a.a.b, var_0.a.x, var_1.a.a.a)).a.x, 4u)] - _wgslsmith_f_op_f32(trunc(1019f)))))));
}

