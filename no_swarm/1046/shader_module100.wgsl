struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec3<u32>,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5>;

var<private> global1: i32 = -29695i;

var<private> global2: array<i32, 30> = array<i32, 30>(-1i, -1i, 2147483647i, -1i, -42635i, 1i, -1i, i32(-2147483648), i32(-2147483648), 2147483647i, 0i, 0i, i32(-2147483648), i32(-2147483648), -3395i, 2147483647i, 55069i, -1i, 1688i, -19740i, 0i, i32(-2147483648), -27977i, -1i, i32(-2147483648), i32(-2147483648), 2147483647i, 22320i, 15008i, 25085i);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3() -> u32 {
    return ~(~4294967295u);
}

fn func_4(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_1) -> vec2<u32> {
    let var_0 = Struct_1(!vec4<bool>(true, true, arg_2.a.x, true));
    var var_1 = var_0.a.x;
    var_1 = true;
    var var_2 = global0[_wgslsmith_index_u32(countOneBits(max(arg_1, u_input.d.x)), 5u)];
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1527f + -1119f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -194f))), -167f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-235f + 483f), _wgslsmith_f_op_f32(f32(-1f) * -879f), _wgslsmith_f_op_f32(round(1000f))))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1345f, -816f, 630f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-768f, 674f, -1144f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1061f, 254f, 768f), vec3<f32>(-498f, 916f, -408f), vec3<bool>(false, false, true))))))));
    return ~vec2<u32>(65627u, 4294967295u);
}

fn func_2(arg_0: i32, arg_1: vec4<i32>, arg_2: i32) -> f32 {
    var var_0 = vec2<u32>(countOneBits(~u_input.c.x), _wgslsmith_dot_vec2_u32(u_input.b.xz, u_input.d));
    global2 = array<i32, 30>();
    var_0 = min(vec2<u32>(u_input.b.x, 1u), ~vec2<u32>(1u, _wgslsmith_div_u32(4294967295u, 10435u)));
    var var_1 = all(!vec2<bool>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_0.x), vec2<u32>(var_0.x, 1u)) < abs(var_0.x), true));
    let var_2 = func_4(vec3<i32>(global2[_wgslsmith_index_u32(var_0.x, 30u)], global2[_wgslsmith_index_u32(select(func_3(), abs(u_input.d.x), true), 30u)] << (abs(0u & u_input.b.x) % 32u), ~_wgslsmith_clamp_i32(arg_1.x >> (0u % 32u), ~(-1i), _wgslsmith_div_i32(global2[_wgslsmith_index_u32(var_0.x, 30u)], global2[_wgslsmith_index_u32(4294967295u, 30u)]))), 4294967295u, global0[_wgslsmith_index_u32(~36943u, 5u)]);
    return 2450f;
}

fn func_1(arg_0: vec3<i32>, arg_1: bool, arg_2: bool, arg_3: vec3<bool>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-223f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1932f, 249f) - _wgslsmith_f_op_f32(1354f * 1168f)))), _wgslsmith_f_op_f32(-625f * _wgslsmith_f_op_f32(func_2(arg_0.x | -2147483647i, vec4<i32>(arg_0.x, arg_0.x, arg_0.x, 2147483647i) >> (vec4<u32>(u_input.a, u_input.c.x, 1u, 65938u) % vec4<u32>(32u)), global2[_wgslsmith_index_u32(u_input.b.x, 30u)] >> (1u % 32u))))));
    var var_1 = arg_3.x;
    global0 = array<Struct_1, 5>();
    var var_2 = 1565f;
    var_1 = true;
    return u_input.b.x;
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    global0 = array<Struct_1, 5>();
    var var_0 = _wgslsmith_f_op_f32(min(1144f, _wgslsmith_div_f32(arg_2.d, _wgslsmith_f_op_f32(-arg_2.d))));
    global2 = array<i32, 30>();
    var var_1 = vec2<i32>(max(_wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-30187i, -2147483647i, 1i, 19355i), vec4<i32>(global2[_wgslsmith_index_u32(43811u, 30u)], 1080i, 2147483647i, 2147483647i)), -global2[_wgslsmith_index_u32(47717u, 30u)]), ~max(arg_0.x, global2[_wgslsmith_index_u32(u_input.c.x, 30u)])), abs(firstLeadingBit(countOneBits(global2[_wgslsmith_index_u32(u_input.d.x, 30u)])))), ~10812i);
    let var_2 = Struct_1(!select(select(arg_2.e.a, vec4<bool>(true, false, arg_1.a.x, arg_1.a.x), select(arg_1.a, arg_1.a, vec4<bool>(false, arg_2.a, arg_1.a.x, arg_1.a.x))), !select(vec4<bool>(arg_2.a, true, true, arg_1.a.x), arg_2.e.a, arg_2.a), !select(arg_1.a, vec4<bool>(false, false, true, arg_1.a.x), vec4<bool>(arg_1.a.x, true, arg_2.a, arg_1.a.x))));
    return arg_2.e;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 5>();
    var var_0 = func_5(_wgslsmith_add_vec2_i32(~vec2<i32>(global2[_wgslsmith_index_u32(func_1(vec3<i32>(22627i, -2147483647i, 54008i), false, true, vec3<bool>(false, false, true)), 30u)], _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(u_input.d.x, 30u)], global2[_wgslsmith_index_u32(u_input.c.x, 30u)])), vec2<i32>(global2[_wgslsmith_index_u32(9234u, 30u)] << (u_input.b.x % 32u), 0i) | vec2<i32>(_wgslsmith_mult_i32(global2[_wgslsmith_index_u32(4294967295u, 30u)], 0i), _wgslsmith_add_i32(global2[_wgslsmith_index_u32(5604u, 30u)], 0i))), Struct_1(vec4<bool>(true, true, true, true)), Struct_2(true, u_input.c.x, countOneBits(vec3<u32>(4294967295u, u_input.b.x, u_input.d.x) & abs(vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x))), 639f, global0[_wgslsmith_index_u32(func_4(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(14406i, -87087i, -14621i), vec3<i32>(global2[_wgslsmith_index_u32(1u, 30u)], global2[_wgslsmith_index_u32(u_input.d.x, 30u)], global2[_wgslsmith_index_u32(u_input.b.x, 30u)])), max(vec3<i32>(2147483647i, -25319i, 31706i), vec3<i32>(0i, 5166i, global2[_wgslsmith_index_u32(72289u, 30u)]))), _wgslsmith_div_u32(~u_input.b.x, u_input.d.x), global0[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 5u)]).x, 5u)]));
    let var_1 = Struct_2(func_5(select(~firstLeadingBit(vec2<i32>(-25784i, global2[_wgslsmith_index_u32(6547u, 30u)])), vec2<i32>(global2[_wgslsmith_index_u32(0u, 30u)], global2[_wgslsmith_index_u32(u_input.d.x, 30u)]) >> (vec2<u32>(0u, 0u) % vec2<u32>(32u)), func_5(max(vec2<i32>(18218i, global2[_wgslsmith_index_u32(0u, 30u)]), vec2<i32>(-1i, global2[_wgslsmith_index_u32(4294967295u, 30u)])), func_5(vec2<i32>(-1i, global2[_wgslsmith_index_u32(10215u, 30u)]), global0[_wgslsmith_index_u32(u_input.a, 5u)], Struct_2(false, u_input.a, u_input.c, 368f, Struct_1(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x)))), Struct_2(var_0.a.x, u_input.c.x, vec3<u32>(4294967295u, u_input.a, 0u), 541f, global0[_wgslsmith_index_u32(4294967295u, 5u)])).a.x), global0[_wgslsmith_index_u32(1u, 5u)], Struct_2(true, u_input.c.x ^ 1u, _wgslsmith_clamp_vec3_u32(u_input.b, ~u_input.c, vec3<u32>(u_input.b.x, u_input.a, u_input.a)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-142f + -329f))), func_5(firstTrailingBit(vec2<i32>(36881i, -64233i)), global0[_wgslsmith_index_u32(4294967295u, 5u)], Struct_2(false, 4294967295u, vec3<u32>(u_input.a, u_input.b.x, u_input.c.x), -1082f, global0[_wgslsmith_index_u32(u_input.c.x, 5u)])))).a.x, u_input.d.x, select(vec3<u32>(11842u, 71870u, ~u_input.a) & ~(u_input.b << (u_input.b % vec3<u32>(32u))), u_input.c, func_5((vec2<i32>(global2[_wgslsmith_index_u32(u_input.c.x, 30u)], global2[_wgslsmith_index_u32(36155u, 30u)]) ^ vec2<i32>(global2[_wgslsmith_index_u32(u_input.c.x, 30u)], global2[_wgslsmith_index_u32(57143u, 30u)])) << (~vec2<u32>(u_input.b.x, 4294967295u) % vec2<u32>(32u)), Struct_1(vec4<bool>(false, false, var_0.a.x, var_0.a.x)), Struct_2(true, ~u_input.c.x, vec3<u32>(u_input.a, 1u, 16098u), -1000f, Struct_1(vec4<bool>(true, var_0.a.x, var_0.a.x, false)))).a.wxz), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(622f * -244f)) + _wgslsmith_f_op_f32(sign(-170f))), func_5(vec2<i32>(-1i, global2[_wgslsmith_index_u32(~(~u_input.d.x), 30u)]), func_5(select(_wgslsmith_clamp_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(4294967295u, 30u)], global2[_wgslsmith_index_u32(4294967295u, 30u)]), vec2<i32>(-7217i, global2[_wgslsmith_index_u32(u_input.a, 30u)]), vec2<i32>(global2[_wgslsmith_index_u32(u_input.a, 30u)], global2[_wgslsmith_index_u32(u_input.b.x, 30u)])), _wgslsmith_add_vec2_i32(vec2<i32>(-3712i, 0i), vec2<i32>(global2[_wgslsmith_index_u32(131101u, 30u)], 5991i)), vec2<bool>(false, var_0.a.x)), func_5(vec2<i32>(global2[_wgslsmith_index_u32(71625u, 30u)], global2[_wgslsmith_index_u32(u_input.b.x, 30u)]), global0[_wgslsmith_index_u32(4294967295u, 5u)], Struct_2(true, 4294967295u, vec3<u32>(25908u, 0u, u_input.c.x), 1065f, Struct_1(var_0.a))), Struct_2(select(false, false, true), u_input.c.x, vec3<u32>(u_input.c.x, u_input.a, u_input.a), _wgslsmith_f_op_f32(f32(-1f) * -298f), global0[_wgslsmith_index_u32(4440u, 5u)])), Struct_2(var_0.a.x, ~(~58190u), u_input.c, _wgslsmith_f_op_f32(func_2(global2[_wgslsmith_index_u32(~u_input.d.x, 30u)], reverseBits(vec4<i32>(-38941i, 1i, global2[_wgslsmith_index_u32(u_input.c.x, 30u)], global2[_wgslsmith_index_u32(u_input.a, 30u)])), 2147483647i)), func_5(vec2<i32>(2147483647i, 3844i), global0[_wgslsmith_index_u32(u_input.d.x, 5u)], Struct_2(true, u_input.b.x, vec3<u32>(u_input.c.x, 15783u, u_input.d.x), -393f, global0[_wgslsmith_index_u32(6410u, 5u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec4<u32>(u_input.d.x, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.a, u_input.a, u_input.b.x, u_input.b.x)), max(vec4<u32>(11491u, 96026u, u_input.c.x, var_1.c.x), vec4<u32>(0u, var_1.c.x, var_1.c.x, 1u))), u_input.c.x, ~var_1.b)), ~2274u, countOneBits(firstLeadingBit(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a, 16189u, 4294967295u, var_1.c.x), vec4<u32>(var_1.c.x, var_1.b, var_1.c.x, 0u)))), ~(~(1u << (_wgslsmith_mult_u32(u_input.b.x, u_input.a) % 32u))));
}

