struct Struct_1 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6>;

var<private> global1: vec4<f32>;

var<private> global2: array<Struct_1, 5>;

var<private> global3: vec4<bool> = vec4<bool>(false, false, true, true);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<i32>) -> vec2<i32> {
    var var_0 = reverseBits(~_wgslsmith_div_i32(2147483647i, u_input.b));
    var var_1 = global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(~(~37756u), 1u, ~(~0u), 6514u), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, 22658u), firstTrailingBit(vec4<u32>(u_input.a, 0u, 13664u, u_input.a))), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 38522u, 7172u, 0u), vec4<u32>(51263u, 1u, u_input.a, 1u)), vec4<u32>(68043u, 4294967295u, 65265u, 4294967295u) & vec4<u32>(0u, u_input.a, u_input.a, 521u)), 11235u, u_input.a)), 5u)];
    var_1 = Struct_1(abs(2147483647i), _wgslsmith_sub_u32(u_input.a, var_1.b));
    let var_2 = true;
    let var_3 = u_input.b;
    return _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(-var_1.a, 22211i), vec2<i32>(_wgslsmith_add_i32(abs(12034i), var_1.a), var_1.a)), arg_0);
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: bool) -> bool {
    let var_0 = global3.xz;
    global2 = array<Struct_1, 5>();
    var var_1 = false;
    let var_2 = _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(reverseBits(vec2<i32>(abs(2147483647i), i32(-1i) * -1i)), vec2<i32>(_wgslsmith_div_i32(arg_0.x, u_input.b), ~53932i) << (max(max(vec2<u32>(arg_1.b, u_input.a), vec2<u32>(65812u, u_input.a)), vec2<u32>(28752u, 4294967295u) ^ vec2<u32>(12002u, u_input.a)) % vec2<u32>(32u))), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1.a, countOneBits(14378i)), vec2<i32>(-1i, -29101i), arg_0));
    let var_3 = !(!global3.wxw);
    return _wgslsmith_f_op_f32(-global1.x) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1733f));
}

fn func_2(arg_0: vec3<u32>) -> vec4<bool> {
    global2 = array<Struct_1, 5>();
    let var_0 = _wgslsmith_mult_i32(-(-20298i >> (u_input.a % 32u)), select(1i, u_input.b, func_4(func_3(vec2<i32>(u_input.b, u_input.b)) << (~vec2<u32>(3407u, arg_0.x) % vec2<u32>(32u)), global2[_wgslsmith_index_u32(0u, 5u)], false)));
    global0 = array<f32, 6>();
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0[_wgslsmith_index_u32(0u, 6u)], -1000f, -1406f, global0[_wgslsmith_index_u32(18225u, 6u)]))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1135f, global1.x, global1.x))))));
    let var_1 = Struct_1(-(i32(-1i) * -1i), 15077u);
    return select(!vec4<bool>(true, global3.x, any(select(vec4<bool>(true, false, true, global3.x), vec4<bool>(false, global3.x, global3.x, false), true)), true), !vec4<bool>(true, func_4(_wgslsmith_clamp_vec2_i32(vec2<i32>(3050i, 7135i), vec2<i32>(u_input.b, -1i), vec2<i32>(u_input.b, var_0)), Struct_1(var_0, u_input.a), true), true, global3.x & any(vec4<bool>(true, global3.x, global3.x, global3.x))), vec4<bool>(func_4(~(~vec2<i32>(2147483647i, var_0)), var_1, var_1.b > 0u), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 6u)])) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-525f - -749f), 197f), all(vec2<bool>(global3.x, global3.x)), true));
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = vec2<u32>(_wgslsmith_mod_u32(20408u, _wgslsmith_mod_u32(u_input.a << (14543u % 32u), _wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 32046u), global3.x), select(vec2<u32>(u_input.a, 86642u), vec2<u32>(20511u, u_input.a), false)))), 0u);
    let var_1 = select(select(!(!vec4<bool>(true, true, global3.x, global3.x)), !(!vec4<bool>(global3.x, global3.x, global3.x, true)), func_2(~vec3<u32>(var_0.x, 3187u, u_input.a) << (~vec3<u32>(25749u, 51028u, var_0.x) % vec3<u32>(32u)))), select(!select(!vec4<bool>(global3.x, global3.x, false, global3.x), vec4<bool>(false, false, true, global3.x), global1.x != 2284f), vec4<bool>(global3.x, select(all(global3.zwz), false, !global3.x), global3.x, global3.x), vec4<bool>(false, global3.x & all(global3.xzx), true, any(vec4<bool>(false, global3.x, global3.x, global3.x)))), vec4<bool>(func_2(firstTrailingBit(vec3<u32>(var_0.x, var_0.x, u_input.a)) & vec3<u32>(u_input.a, 136322u, 0u)).x, true, global3.x, true));
    let var_2 = Struct_1(i32(-1i) * -_wgslsmith_mod_i32(27424i, 39179i), min(var_0.x, _wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.a & var_0.x, 0u), _wgslsmith_clamp_u32(31474u, u_input.a ^ var_0.x, firstLeadingBit(72892u)))));
    global3 = !select(select(var_1, func_2(~vec3<u32>(var_2.b, 4294967295u, 4294967295u)), var_1), !func_2(~vec3<u32>(var_0.x, u_input.a, u_input.a)), var_1.x);
    global0 = array<f32, 6>();
    return Struct_1(~(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_2.a, var_2.a, 17063i), vec3<i32>(-60759i, 1i, 2147483647i)), -vec3<i32>(1i, u_input.b, var_2.a)) ^ (~u_input.b & ~u_input.b)), u_input.a << (~1u % 32u));
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = global2[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_2, 0u), vec2<u32>(arg_2, 72702u), vec2<u32>(37745u, arg_1.b)) >> (countOneBits(vec2<u32>(arg_2, arg_2)) % vec2<u32>(32u)), ~vec2<u32>(0u, arg_1.b) >> (~vec2<u32>(arg_1.b, 1u) % vec2<u32>(32u)))), 5u)];
    var var_1 = func_1(378f);
    let var_2 = arg_1;
    var_0 = func_1(_wgslsmith_f_op_f32(min(global1.x, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 6u)]))));
    let var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(4294967295u, 6u)])) + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_2.b, 6u)])), global0[_wgslsmith_index_u32(1u, 6u)])), 1613f), global1.xy);
    return Struct_1(-2147483647i, var_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec3<u32>(u_input.a ^ (countOneBits(u_input.a) | 0u), 75891u, ~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 63477u, 61640u, u_input.a), vec4<u32>(u_input.a, u_input.a, 40379u, 4294967295u)), abs(vec4<u32>(u_input.a, 63295u, u_input.a, 2272u))));
    global0 = array<f32, 6>();
    let var_1 = func_5(select(u_input.b, -1i, ~var_0.x == 48114u) << (4294967295u % 32u), func_1(858f), ~u_input.a, func_1(global0[_wgslsmith_index_u32(~54645u, 6u)]));
    var var_2 = func_5(func_5(u_input.b, Struct_1(u_input.b, var_0.x), ~(~u_input.a), func_5(-u_input.b, func_5(-53374i & var_1.a, func_1(global0[_wgslsmith_index_u32(var_1.b, 6u)]), max(var_0.x, 2837u), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_0.xz, var_0.xy), 5u)]), u_input.a, func_1(global1.x))).a, var_1, u_input.a, func_1(-253f));
    global3 = vec4<bool>(true, false, false, all(!vec2<bool>(true, global1.x != global0[_wgslsmith_index_u32(var_1.b, 6u)])));
    let var_3 = -1757f;
    var_2 = func_1(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_5(var_2.a, var_1, min(_wgslsmith_mult_u32(993u, 61068u), 1u >> (0u % 32u)), Struct_1(~u_input.b, ~38369u)).b, firstTrailingBit(_wgslsmith_mult_u32(~0u, ~var_2.b))), 6u)]);
    var_0 = vec3<u32>(~73217u, ~(~(~_wgslsmith_dot_vec2_u32(var_0.xy, vec2<u32>(6098u, 0u)))), var_1.b >> (_wgslsmith_clamp_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_1.b, 6655u), vec3<u32>(u_input.a, 1u, u_input.a)), u_input.a, countOneBits(max(var_1.b, 3232u))) % 32u));
    let var_4 = Struct_1(~(-2147483647i << ((var_0.x ^ 17623u) % 32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b, 4294967295u, _wgslsmith_div_u32(func_5(u_input.b, var_1, 46362u, var_1).b, _wgslsmith_dot_vec4_u32(vec4<u32>(20766u, 8394u, var_0.x, var_2.b), vec4<u32>(var_0.x, u_input.a, var_2.b, 80108u))), 93565u), vec4<u32>(~(~var_2.b), var_1.b, abs(abs(u_input.a)), _wgslsmith_clamp_u32(59715u, ~var_2.b, reverseBits(var_2.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f - var_3), _wgslsmith_f_op_f32(156f * global1.x), !global3.x)) + var_3), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(~abs(var_0.x), 6u)], _wgslsmith_f_op_f32(-1175f * _wgslsmith_f_op_f32(abs(101f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(149f - global0[_wgslsmith_index_u32(_wgslsmith_add_u32(var_2.b, var_0.x), 6u)])), global1.x));
}

