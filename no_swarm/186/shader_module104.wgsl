struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: u32,
    d: bool,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: bool,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
    c: bool,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<bool>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 5>;

var<private> global1: array<bool, 10> = array<bool, 10>(false, true, false, true, true, false, false, false, false, false);

var<private> global2: array<vec4<i32>, 23>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: f32, arg_1: u32) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), vec3<u32>(_wgslsmith_mod_u32(arg_1, 52377u), _wgslsmith_dot_vec3_u32((vec3<u32>(28223u, arg_1, arg_1) << (vec3<u32>(1u, 76532u, arg_1) % vec3<u32>(32u))) << (~vec3<u32>(arg_1, arg_1, 20531u) % vec3<u32>(32u)), ~countOneBits(vec3<u32>(33434u, arg_1, 7890u))), arg_1), abs(1u), true, vec2<i32>(i32(-1i) * -1i, -_wgslsmith_add_i32(-17444i, -42848i)));
    let var_1 = var_0;
    global1 = array<bool, 10>();
    var var_2 = var_0;
    var var_3 = vec2<f32>(-474f, -2095f);
    return -1000f;
}

fn func_2() -> u32 {
    global1 = array<bool, 10>();
    global1 = array<bool, 10>();
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(514f, 1u)) - -182f), vec3<u32>(1u, 1u, 1u), ~max(_wgslsmith_mod_u32(9358u, 23011u), abs(1u)), !(!any(vec3<bool>(false, global1[_wgslsmith_index_u32(0u, 10u)], true))), _wgslsmith_mult_vec2_i32(~vec2<i32>(2147483647i, -30549i) << (vec2<u32>(0u, 0u) % vec2<u32>(32u)), ~vec2<i32>(u_input.a, -1i))), _wgslsmith_clamp_vec2_i32(max(firstLeadingBit(vec2<i32>(u_input.b, u_input.b)), vec2<i32>(u_input.b, u_input.a) | vec2<i32>(u_input.a, -21870i)), ~max(vec2<i32>(-23925i, u_input.b), vec2<i32>(u_input.b, -1i)), -max(vec2<i32>(u_input.b, u_input.a), vec2<i32>(u_input.b, u_input.a))) | select(vec2<i32>(-1i) * -vec2<i32>(u_input.b, u_input.a), vec2<i32>(1i, 1i), select(vec2<bool>(global1[_wgslsmith_index_u32(0u, 10u)], true), select(vec2<bool>(false, false), vec2<bool>(false, true), global1[_wgslsmith_index_u32(0u, 10u)]), false)), false, global1[_wgslsmith_index_u32(~firstLeadingBit(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(44692u, 43349u, 49641u, 23146u), vec4<u32>(25709u, 0u, 4294967295u, 1u)), 4294967295u)), 10u)], Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-808f, _wgslsmith_f_op_f32(-797f - -1000f))) + _wgslsmith_f_op_f32(max(895f, _wgslsmith_f_op_f32(1089f - -1393f)))), vec3<u32>(1u, ~62974u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, 29713u, 0u))), ~_wgslsmith_div_u32(0u, 1u), global1[_wgslsmith_index_u32(0u, 10u)], vec2<i32>(abs(u_input.a), _wgslsmith_dot_vec4_i32(min(vec4<i32>(-1993i, u_input.a, 20357i, -1i), vec4<i32>(u_input.a, u_input.b, 1i, -22543i)), ~global2[_wgslsmith_index_u32(40602u, 23u)]))));
    return var_0.a.c;
}

fn func_1(arg_0: vec3<u32>, arg_1: f32, arg_2: u32) -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(arg_0.x & firstTrailingBit(~arg_2), 10u)];
    let var_1 = Struct_2(Struct_1(1010f, min(_wgslsmith_clamp_vec3_u32(arg_0, arg_0, ~vec3<u32>(arg_0.x, arg_0.x, arg_2)), vec3<u32>(41183u, ~17278u, func_2())), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, abs(arg_0.x), 1u, ~arg_2), ~vec4<u32>(13004u, 62865u, 0u, arg_2) << (vec4<u32>(0u, arg_0.x, arg_2, arg_0.x) % vec4<u32>(32u))), true, firstLeadingBit(~firstTrailingBit(vec2<i32>(u_input.b, u_input.b)))), _wgslsmith_mod_vec2_i32(vec2<i32>(37768i, u_input.a), (vec2<i32>(u_input.b, 75654i) << (arg_0.zy % vec2<u32>(32u))) ^ select(countOneBits(vec2<i32>(u_input.b, u_input.b)), _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, 0i), vec2<i32>(58980i, -18099i)), global1[_wgslsmith_index_u32(countOneBits(70947u), 10u)])), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~reverseBits(abs(vec3<u32>(arg_0.x, 1u, arg_0.x))), max(~vec3<u32>(7651u, arg_2, arg_0.x), ~(arg_0 & arg_0))), 10u)], global1[_wgslsmith_index_u32(0u, 10u)], Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1))))), ~vec3<u32>(13535u, _wgslsmith_dot_vec2_u32(arg_0.yx, vec2<u32>(arg_2, arg_0.x)), arg_2 & 35720u), _wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(22007u, arg_0.x, 113105u, arg_0.x), vec4<u32>(arg_0.x, arg_0.x, arg_0.x, arg_2)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2, 757u, 22180u, arg_0.x), vec4<u32>(46702u, 1u, arg_2, arg_0.x))), _wgslsmith_f_op_f32(-2944f * -1512f) == _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1))), firstLeadingBit(countOneBits(_wgslsmith_div_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(u_input.b, 10463i))))));
    global0 = array<Struct_4, 5>();
    global0 = array<Struct_4, 5>();
    let var_2 = _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(var_1.e.a - var_1.e.a));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec3<bool>(global1[_wgslsmith_index_u32(~28772u, 10u)], all(select(vec3<bool>(true, true, global1[_wgslsmith_index_u32(0u, 10u)]), select(vec3<bool>(false, global1[_wgslsmith_index_u32(68724u, 10u)], false), vec3<bool>(false, true, true), vec3<bool>(false, true, global1[_wgslsmith_index_u32(1u, 10u)])), global1[_wgslsmith_index_u32(~20523u, 10u)])), !(all(vec4<bool>(global1[_wgslsmith_index_u32(91920u, 10u)], global1[_wgslsmith_index_u32(86219u, 10u)], global1[_wgslsmith_index_u32(4294967295u, 10u)], global1[_wgslsmith_index_u32(4294967295u, 10u)])) | any(vec2<bool>(false, true))));
    global1 = array<bool, 10>();
    let var_1 = 11782u;
    var var_2 = var_1;
    var var_3 = 14383u;
    var var_4 = _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_add_u32(func_1(vec3<u32>(var_1, 4294967295u, var_1), _wgslsmith_f_op_f32(-391f + -202f), reverseBits(1u)), var_1 | _wgslsmith_add_u32(var_1, 44726u)), ~var_1 ^ 1u), ~abs(max(_wgslsmith_add_vec2_u32(vec2<u32>(91935u, var_1), vec2<u32>(72939u, 25283u)), ~vec2<u32>(var_1, 9644u))));
    var_4 = vec2<u32>(0u, select(var_1, ~77170u, global1[_wgslsmith_index_u32(4294967295u, 10u)]));
    var var_5 = Struct_4(Struct_3(_wgslsmith_f_op_f32(923f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(1664f)), _wgslsmith_f_op_f32(f32(-1f) * -130f)))), select(var_0.zx, vec2<bool>(!var_0.x, true), var_0.zz), var_0.x, -724f, Struct_2(Struct_1(_wgslsmith_f_op_f32(trunc(-1567f)), vec3<u32>(94072u, var_1, 41553u), _wgslsmith_sub_u32(var_1, 1u), !var_0.x, vec2<i32>(-15337i, u_input.a)), max(countOneBits(vec2<i32>(u_input.b, u_input.b)), vec2<i32>(0i, -76520i)), !all(vec3<bool>(true, true, global1[_wgslsmith_index_u32(var_1, 10u)])), (u_input.a ^ u_input.a) != 0i, Struct_1(_wgslsmith_f_op_f32(sign(1656f)), _wgslsmith_mod_vec3_u32(vec3<u32>(var_1, 1u, 4294967295u), vec3<u32>(4294967295u, 70825u, 11450u)), ~var_1, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, var_1), 10u)], reverseBits(vec2<i32>(-61536i, 59999i))))), var_0, _wgslsmith_f_op_f32(sign(722f)));
    let var_6 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_5.c)) + _wgslsmith_f_op_f32(958f - var_5.a.d)) - 1000f), 1728f), ~(~var_5.a.e.e.b), ~(~(~4756u)), var_5.a.c || true, -vec2<i32>(57523i, u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_5.a.d, var_6.a)) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_5.a.a, -496f)))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(430f, var_5.a.e.a.a, var_5.c)))), vec3<f32>(var_6.a, _wgslsmith_f_op_f32(min(var_5.c, var_5.c)), _wgslsmith_f_op_f32(f32(-1f) * -118f)), var_6.d)))), var_6.e.x, vec4<u32>(465u, ~(~22400u), ~(~_wgslsmith_div_u32(var_4.x, 2883u)), var_1), -(var_5.a.e.e.e.x & _wgslsmith_div_i32(-19615i, ~2147483647i)));
}

