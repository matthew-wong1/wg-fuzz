struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: vec2<bool>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: u32,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 17>;

var<private> global1: array<vec2<bool>, 1>;

var<private> global2: Struct_3 = Struct_3(8781i);

var<private> global3: array<f32, 32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: Struct_4) -> vec3<u32> {
    global3 = array<f32, 32>();
    var var_0 = ~23465u;
    var_0 = 23463u;
    var_0 = firstLeadingBit(~u_input.b);
    var var_1 = !(!select(select(vec4<bool>(arg_2.a.a.x, arg_2.c.a.x, true, false), vec4<bool>(arg_2.a.a.x, false, false, arg_2.b.c.x), vec4<bool>(false, arg_2.a.a.x, arg_2.c.a.x, arg_2.b.c.x)), vec4<bool>(any(vec3<bool>(true, arg_2.a.c.x, arg_2.b.a.x)), all(arg_2.c.a.yx), any(arg_2.a.a.xzy), arg_2.c.a.x), arg_2.b.a));
    return ~(~(~abs(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 4667u, arg_2.a.b.x), vec3<u32>(u_input.b, 14950u, 0u)))));
}

fn func_4(arg_0: vec3<u32>) -> vec2<u32> {
    let var_0 = Struct_4(Struct_1(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), true), firstTrailingBit(vec2<u32>(arg_0.x, u_input.b) | vec2<u32>(arg_0.x, u_input.b)), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.b, arg_0.x >> (38950u % 32u)), arg_0.x), 1u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + global3[_wgslsmith_index_u32(u_input.b, 32u)]) + _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(59322u, 32u)] - global3[_wgslsmith_index_u32(30044u, 32u)])) + 520f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-617f + global3[_wgslsmith_index_u32(u_input.b, 32u)]) * _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(arg_0.x, 32u)])))), Struct_1(!select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)), true), ~vec2<u32>(0u, ~0u), vec2<bool>(any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false))), true), global3[_wgslsmith_index_u32(reverseBits(_wgslsmith_div_u32(arg_0.x, _wgslsmith_dot_vec2_u32(arg_0.zz, arg_0.yx))), 32u)], _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.b, 32u)] * global3[_wgslsmith_index_u32(u_input.b, 32u)])), -1635f))), Struct_1(vec4<bool>(all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false)), true, true, any(vec4<bool>(true, true, true, true))), _wgslsmith_div_vec2_u32(arg_0.yz, arg_0.yy), global1[_wgslsmith_index_u32(~1u, 1u)], global3[_wgslsmith_index_u32(abs(arg_0.x), 32u)], global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b, 22496u), 32u)]));
    let var_1 = _wgslsmith_div_i32(~global2.a, u_input.a);
    let var_2 = -select(abs(vec4<i32>(global2.a, 1i, var_1, global2.a) ^ reverseBits(vec4<i32>(var_1, -2147483647i, global2.a, 2147483647i))), firstLeadingBit(-vec4<i32>(-2147483647i, var_1, 2715i, u_input.a)), var_0.a.a);
    global2 = Struct_3(_wgslsmith_mult_i32(-23508i, u_input.a >> (~u_input.b % 32u)));
    let var_3 = 752f;
    return vec2<u32>(_wgslsmith_mod_u32(~countOneBits(u_input.b), ~var_0.a.b.x), 86434u);
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: Struct_1) -> Struct_1 {
    global0 = array<vec2<i32>, 17>();
    global3 = array<f32, 32>();
    global1 = array<vec2<bool>, 1>();
    global1 = array<vec2<bool>, 1>();
    global0 = array<vec2<i32>, 17>();
    return Struct_1(arg_2.a, func_4(~func_3(vec3<i32>(arg_1.a, arg_1.a, u_input.a), vec3<i32>(-2147483647i, arg_0, arg_1.a), Struct_4(Struct_1(arg_2.a, arg_2.b, vec2<bool>(arg_2.a.x, false), 671f, global3[_wgslsmith_index_u32(arg_2.b.x, 32u)]), Struct_1(vec4<bool>(true, arg_2.c.x, false, arg_2.c.x), vec2<u32>(u_input.b, 4294967295u), vec2<bool>(false, false), arg_2.e, arg_2.e), Struct_1(vec4<bool>(true, arg_2.a.x, true, arg_2.a.x), vec2<u32>(u_input.b, arg_2.b.x), vec2<bool>(arg_2.c.x, arg_2.a.x), arg_2.e, 391f)))), vec2<bool>(false, !(any(vec4<bool>(true, arg_2.c.x, true, arg_2.c.x)) && arg_2.c.x)), -1040f, _wgslsmith_f_op_f32(372f + -869f));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_1) -> f32 {
    global1 = array<vec2<bool>, 1>();
    var var_0 = vec3<u32>(~abs(1u), max(arg_1.b.x, ~(~func_3(vec3<i32>(u_input.a, 4353i, 1i), vec3<i32>(global2.a, -1139i, 1i), arg_0).x)), 50422u);
    var var_1 = -u_input.a & (global2.a << (_wgslsmith_clamp_u32(49748u, var_0.x, ~u_input.b) % 32u));
    var var_2 = func_2(_wgslsmith_add_i32(-1i, (~global2.a | max(u_input.a, global2.a)) & -u_input.a), Struct_3(u_input.a), Struct_1(!vec4<bool>(!arg_1.c.x, arg_0.c.b.x <= arg_0.a.b.x, arg_1.c.x & false, any(vec4<bool>(false, false, false, true))), reverseBits(_wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(arg_1.b.x, arg_1.b.x)), func_3(vec3<i32>(u_input.a, u_input.a, -16480i), vec3<i32>(u_input.a, 1i, -2147483647i), arg_0).zy)), vec2<bool>(select(!arg_0.a.a.x, true, arg_1.d != arg_1.e), _wgslsmith_f_op_f32(arg_0.c.e * arg_0.a.e) == 487f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-529f)) + _wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(10021u, 32u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(695f)))));
    var var_3 = arg_0.c;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~(~(~44432u)), 32u)])));
}

fn func_1(arg_0: vec4<i32>) -> vec3<bool> {
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_5(Struct_4(Struct_1(vec4<bool>(true, true, false, true), vec2<u32>(u_input.b, 20401u), global1[_wgslsmith_index_u32(u_input.b, 1u)], global3[_wgslsmith_index_u32(81472u, 32u)], 437f), Struct_1(vec4<bool>(true, true, true, false), vec2<u32>(0u, u_input.b), vec2<bool>(true, false), 2187f, -1586f), func_2(-2147483647i, Struct_3(47506i), Struct_1(vec4<bool>(false, true, false, false), vec2<u32>(u_input.b, 17339u), global1[_wgslsmith_index_u32(1u, 1u)], -1012f, 990f))), Struct_1(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true)), vec2<u32>(1u, 1u), vec2<bool>(false, true), _wgslsmith_f_op_f32(round(558f)), -1372f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1229f * _wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(4294967295u, 32u)], 473f, false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1394f)), -653f), true | any(vec4<bool>(true, true, false, false)))), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~u_input.b, 32u)] + _wgslsmith_f_op_f32(f32(-1f) * -131f)), _wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(~u_input.b, 32u)], global3[_wgslsmith_index_u32(2744u, 32u)]))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 32u)]), global3[_wgslsmith_index_u32(~4294967295u, 32u)], 816f, -1141f), vec4<f32>(_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(10574u, 32u)], -849f)), global3[_wgslsmith_index_u32(~u_input.b, 32u)], global3[_wgslsmith_index_u32(~u_input.b, 32u)], _wgslsmith_f_op_f32(min(2366f, 1000f)))) * vec4<f32>(global3[_wgslsmith_index_u32(66227u, 32u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(4294967295u, 32u)] * 1552f)), -918f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -301f) - _wgslsmith_div_f32(847f, 1000f)))));
    global1 = array<vec2<bool>, 1>();
    let var_1 = -1220f;
    let var_2 = ~(~(~func_3(arg_0.zxy, arg_0.yyw, Struct_4(Struct_1(vec4<bool>(false, true, true, true), vec2<u32>(u_input.b, 4294967295u), global1[_wgslsmith_index_u32(0u, 1u)], var_0.x, -362f), Struct_1(vec4<bool>(true, false, false, true), vec2<u32>(9492u, u_input.b), vec2<bool>(false, true), var_0.x, -724f), Struct_1(vec4<bool>(true, false, false, false), vec2<u32>(u_input.b, u_input.b), global1[_wgslsmith_index_u32(1u, 1u)], 1376f, var_1))).x));
    global1 = array<vec2<bool>, 1>();
    return vec3<bool>(!all(!(!global1[_wgslsmith_index_u32(var_2, 1u)])), !all(func_2(arg_0.x, Struct_3(-18946i), func_2(-2147483647i, Struct_3(global2.a), Struct_1(vec4<bool>(false, false, false, false), vec2<u32>(var_2, 4294967295u), vec2<bool>(true, true), global3[_wgslsmith_index_u32(20802u, 32u)], global3[_wgslsmith_index_u32(u_input.b, 32u)]))).a), func_2(2147483647i, Struct_3(-1i), Struct_1(!func_2(-6787i, Struct_3(global2.a), Struct_1(vec4<bool>(true, true, true, true), vec2<u32>(30408u, 1u), global1[_wgslsmith_index_u32(u_input.b, 1u)], var_0.x, 1000f)).a, vec2<u32>(u_input.b ^ u_input.b, 0u >> (u_input.b % 32u)), vec2<bool>(true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - var_0.x)), var_0.x)).c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(-(~reverseBits(vec3<i32>(u_input.a, 1i, 1i))));
    let var_1 = vec4<bool>(!(!all(vec2<bool>(true, true))), true, any(func_1(~vec4<i32>(var_0.x, -2147483647i, var_0.x, global2.a))) | all(func_1(vec4<i32>(36211i, 44963i, global2.a, 17352i)).xx), any(select(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(select(1u, u_input.b, true), ~4294967295u), 1u)], select(vec2<bool>(true, true), global1[_wgslsmith_index_u32(reverseBits(u_input.b), 1u)], true), true)));
    global1 = array<vec2<bool>, 1>();
    var var_2 = vec3<u32>(~(~_wgslsmith_div_u32(~24524u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 66027u), vec2<u32>(4294967295u, u_input.b)))), ~(~(~1u)), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(4294967295u, u_input.b), _wgslsmith_clamp_u32(u_input.b, 31683u, u_input.b)), firstLeadingBit(select(1u, 4294967295u, var_1.x))), ~(abs(vec2<u32>(u_input.b, u_input.b)) >> (select(vec2<u32>(7330u, u_input.b), vec2<u32>(1403u, u_input.b), var_1.x) % vec2<u32>(32u)))));
    let var_3 = vec4<i32>(-max(u_input.a, _wgslsmith_sub_i32(var_0.x, -var_0.x)), var_0.x, 55729i << (1u % 32u), ~(-2147483647i));
    let var_4 = Struct_2(Struct_1(var_1, ~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 27659u), ~var_2.xz), global1[_wgslsmith_index_u32(68442u, 1u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~1u, 32u)] - _wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(1u, 32u)]))) * -1170f), _wgslsmith_f_op_f32(f32(-1f) * -563f)));
    global1 = array<vec2<bool>, 1>();
    let var_5 = select(!select(!vec3<bool>(var_1.x, var_4.a.a.x, true), func_2(7756i, Struct_3(45855i), func_2(-2147483647i, Struct_3(-1i), Struct_1(vec4<bool>(true, var_4.a.c.x, false, true), vec2<u32>(var_4.a.b.x, var_2.x), vec2<bool>(var_1.x, false), global3[_wgslsmith_index_u32(var_4.a.b.x, 32u)], 791f))).a.wxz, false), var_1.zwy, vec3<bool>(true, 37110i == min(~var_3.x, i32(-1i) * -2147483647i), all(!(!var_1.wwx))));
    let var_6 = ~var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec3<u32>(_wgslsmith_mult_u32(firstLeadingBit(var_2.x), u_input.b), min(~var_2.x, min(u_input.b, 4294967295u)), func_4(firstLeadingBit(vec3<u32>(var_6, u_input.b, 4294967295u))).x)), vec2<f32>(602f, -459f), reverseBits(_wgslsmith_div_u32(0u, 21354u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(379f * -1394f)))), _wgslsmith_sub_vec4_i32(~var_3, firstTrailingBit(~(~var_3))));
}

