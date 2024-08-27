struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec2<bool>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<bool>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec2<bool>(false, false), Struct_2(vec3<i32>(-1i, 5122i, -27254i), Struct_1(761f, 1697f), vec2<bool>(false, true), 48754i, Struct_1(623f, -287f)));

var<private> global1: array<bool, 25> = array<bool, 25>(true, true, false, false, false, true, true, true, true, false, true, true, false, false, false, false, true, false, false, true, true, false, true, false, true);

var<private> global2: array<Struct_4, 20>;

var<private> global3: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(2305f, -520f), Struct_1(-130f, 744f), Struct_1(356f, 1209f), Struct_1(476f, 683f), Struct_1(504f, -455f), Struct_1(470f, 304f), Struct_1(1686f, 114f), Struct_1(-431f, -562f), Struct_1(1274f, -212f), Struct_1(-1417f, -539f), Struct_1(1000f, -265f), Struct_1(-1000f, 198f), Struct_1(112f, -1158f), Struct_1(-950f, -1000f), Struct_1(-269f, -278f), Struct_1(1055f, 189f), Struct_1(991f, -198f), Struct_1(-121f, 253f), Struct_1(1030f, -907f));

var<private> global4: array<vec2<f32>, 6> = array<vec2<f32>, 6>(vec2<f32>(1962f, -284f), vec2<f32>(-1095f, 428f), vec2<f32>(-445f, 638f), vec2<f32>(1127f, -1000f), vec2<f32>(1169f, 463f), vec2<f32>(-435f, -188f));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> u32 {
    global3 = array<Struct_1, 19>();
    var var_0 = Struct_4(vec2<bool>(all(vec3<bool>(true, true, global1[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 25u)])), all(global0.b.c) | !global1[_wgslsmith_index_u32(~1u, 25u)]), Struct_2(~vec3<i32>(global0.b.d | -3850i, global0.b.a.x, _wgslsmith_mod_i32(u_input.a.x, -2147483647i)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1182f - -544f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.b.e.b)))), !(!(!vec2<bool>(true, global0.b.c.x))), select(select(select(u_input.a.x, 0i, false), ~u_input.a.x, all(global0.b.c)), _wgslsmith_mult_i32(~0i, firstTrailingBit(-1840i)), false), Struct_1(_wgslsmith_f_op_f32(select(-1000f, -801f, global0.b.c.x)), 1f)));
    let var_1 = _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(30604u << (1u % 32u), 1u)), vec2<u32>(_wgslsmith_mult_u32(1u, 7061u), min(11592u, 0u))), 1u);
    let var_2 = vec2<u32>(4294967295u, reverseBits(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_1, var_1), vec2<u32>(63399u, 79134u)), vec2<u32>(~1u, var_1 >> (48041u % 32u)))));
    var var_3 = Struct_5(var_0.b, select(vec4<bool>(global0.b.c.x, select(var_0.b.c.x, true, global1[_wgslsmith_index_u32(var_1, 25u)]), global1[_wgslsmith_index_u32(~var_1, 25u)], all(!vec4<bool>(true, global0.b.c.x, true, var_0.b.c.x))), !select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, global1[_wgslsmith_index_u32(var_2.x, 25u)], true, global1[_wgslsmith_index_u32(var_1, 25u)]), vec4<bool>(true, false, false, false)), !vec4<bool>(var_0.a.x, false, global0.a.x, var_0.b.c.x), true), false), Struct_3(_wgslsmith_sub_vec4_i32(vec4<i32>(-21883i, 50601i, 0i, u_input.a.x), ~vec4<i32>(global0.b.d, -1i, global0.b.a.x, -9633i)) >> (vec4<u32>(~var_1, var_1, countOneBits(var_2.x), var_2.x) % vec4<u32>(32u)), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(var_0.b.b.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.b.b))), 1604f));
    return var_1;
}

fn func_2() -> Struct_3 {
    global0 = Struct_4(vec2<bool>(global1[_wgslsmith_index_u32(1u << (1u % 32u), 25u)], global0.b.c.x), Struct_2(vec3<i32>(-1i, 1i << (_wgslsmith_mod_u32(0u, 48338u) % 32u), 2147483647i), global3[_wgslsmith_index_u32(func_3(), 19u)], select(select(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 25u)], false), global0.b.c, global1[_wgslsmith_index_u32(20096u, 25u)]), global0.b.c, !select(global0.b.c, global0.a, true)), select(~global0.b.a.x, firstLeadingBit(-1i), global0.a.x), Struct_1(1629f, global0.b.b.b)));
    global4 = array<vec2<f32>, 6>();
    var var_0 = countOneBits(1u);
    let var_1 = global0.b.a.x;
    var var_2 = Struct_5(global0.b, !vec4<bool>(true || all(vec2<bool>(false, global0.b.c.x)), global1[_wgslsmith_index_u32(1u, 25u)], false, true), Struct_3(vec4<i32>(_wgslsmith_mult_i32(abs(global0.b.a.x), -global0.b.a.x), u_input.a.x, _wgslsmith_clamp_i32(_wgslsmith_add_i32(u_input.a.x, 2147483647i), 2147483647i, global0.b.d), ~1i), Struct_1(_wgslsmith_f_op_f32(abs(global0.b.e.a)), _wgslsmith_f_op_f32(-1312f - _wgslsmith_f_op_f32(floor(-296f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1012f)))));
    return var_2.c;
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: vec2<i32>, arg_3: Struct_3) -> i32 {
    var var_0 = ~4294967295u;
    var var_1 = global0.b.b;
    global4 = array<vec2<f32>, 6>();
    let var_2 = Struct_5(Struct_2(_wgslsmith_clamp_vec3_i32(~global0.b.a, func_2().a.xxw, func_2().a.xxw), func_2().b, vec2<bool>(!arg_1.x | arg_0, all(vec4<bool>(arg_1.x, false, global1[_wgslsmith_index_u32(248u, 25u)], true))), _wgslsmith_dot_vec2_i32(-max(arg_2, u_input.a), arg_3.a.ww), global0.b.e), select(arg_1, arg_1, vec4<bool>(true, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 42577u, 4294967295u), vec4<u32>(60489u, 10252u, 107235u, 21203u)), 25u)], select(var_1.a <= 963f, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(83530u, 4294967295u), 25u)], arg_2.x < -1i), false)), func_2());
    let var_3 = global2[_wgslsmith_index_u32(firstLeadingBit(~_wgslsmith_add_u32(abs(1u), ~4294967295u)), 20u)];
    return ~42330i;
}

fn func_1(arg_0: vec4<i32>, arg_1: i32) -> bool {
    global2 = array<Struct_4, 20>();
    global2 = array<Struct_4, 20>();
    let var_0 = vec4<i32>(~(~_wgslsmith_add_i32(global0.b.d | 0i, _wgslsmith_mult_i32(u_input.a.x, arg_0.x))), _wgslsmith_mult_i32(~(-31967i), arg_0.x), 1i | (firstLeadingBit(u_input.a.x ^ -1i) | abs(global0.b.a.x)), -(func_4(global0.b.b.a != 2941f, vec4<bool>(global1[_wgslsmith_index_u32(0u, 25u)], true, global1[_wgslsmith_index_u32(1u, 25u)], false), global0.b.a.xx, func_2()) >> (1u % 32u)));
    let var_1 = -vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(reverseBits(arg_0.x), _wgslsmith_mult_i32(-1i, global0.b.a.x)), -(u_input.a.x & 0i)), select(firstLeadingBit(-45582i), global0.b.a.x, true), 53233i, arg_1);
    global2 = array<Struct_4, 20>();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<bool>(!(-1209f == _wgslsmith_f_op_f32(exp2(global0.b.b.b))), true, true, true), vec4<bool>(any(vec4<bool>(global0.a.x, global0.a.x, true, func_1(vec4<i32>(global0.b.a.x, u_input.a.x, global0.b.d, global0.b.a.x), global0.b.d))), true, all(!(!vec4<bool>(global0.a.x, false, global0.a.x, true))), true), true);
    global1 = array<bool, 25>();
    let var_1 = Struct_1(567f, global0.b.b.b);
    global1 = array<bool, 25>();
    global4 = array<vec2<f32>, 6>();
    let var_2 = Struct_3(-func_2().a, func_2().b, _wgslsmith_f_op_f32(f32(-1f) * -213f));
    let var_3 = !(!((global1[_wgslsmith_index_u32(0u, 25u)] && false) != !global0.b.c.x)) && (false | global0.b.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(-1i);
}

