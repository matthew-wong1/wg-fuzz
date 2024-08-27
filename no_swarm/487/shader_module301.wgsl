struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: f32,
    d: vec3<f32>,
    e: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: vec3<bool>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: f32,
    c: vec2<i32>,
    d: vec4<f32>,
    e: f32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 4>;

var<private> global1: Struct_4;

var<private> global2: array<Struct_5, 22> = array<Struct_5, 22>(Struct_5(vec2<i32>(2147483647i, -7256i), vec2<u32>(86801u, 1u), vec3<u32>(0u, 22036u, 48171u)), Struct_5(vec2<i32>(1203i, -8829i), vec2<u32>(79069u, 1u), vec3<u32>(7156u, 18536u, 1u)), Struct_5(vec2<i32>(-10924i, 4105i), vec2<u32>(104514u, 49453u), vec3<u32>(31775u, 24361u, 0u)), Struct_5(vec2<i32>(0i, 61869i), vec2<u32>(1u, 0u), vec3<u32>(1u, 41371u, 1487u)), Struct_5(vec2<i32>(-1i, 1i), vec2<u32>(72154u, 37324u), vec3<u32>(24455u, 1u, 0u)), Struct_5(vec2<i32>(-6651i, 0i), vec2<u32>(0u, 1u), vec3<u32>(1u, 0u, 4294967295u)), Struct_5(vec2<i32>(-1i, -6025i), vec2<u32>(0u, 60338u), vec3<u32>(29836u, 37745u, 8253u)), Struct_5(vec2<i32>(2147483647i, 0i), vec2<u32>(4294967295u, 70863u), vec3<u32>(0u, 4294967295u, 4294967295u)), Struct_5(vec2<i32>(1i, -31644i), vec2<u32>(0u, 96799u), vec3<u32>(0u, 4294967295u, 39087u)), Struct_5(vec2<i32>(2147483647i, -14964i), vec2<u32>(13204u, 1u), vec3<u32>(4294967295u, 4294967295u, 23640u)), Struct_5(vec2<i32>(-1i, i32(-2147483648)), vec2<u32>(0u, 1u), vec3<u32>(31436u, 108750u, 1u)), Struct_5(vec2<i32>(-58374i, 1i), vec2<u32>(0u, 12498u), vec3<u32>(4294967295u, 4294967295u, 1u)), Struct_5(vec2<i32>(i32(-2147483648), -41858i), vec2<u32>(53507u, 10649u), vec3<u32>(4294967295u, 0u, 62362u)), Struct_5(vec2<i32>(2147483647i, i32(-2147483648)), vec2<u32>(75978u, 0u), vec3<u32>(176416u, 78569u, 30110u)), Struct_5(vec2<i32>(-37883i, 1i), vec2<u32>(4294967295u, 1u), vec3<u32>(4294967295u, 0u, 34698u)), Struct_5(vec2<i32>(0i, 0i), vec2<u32>(55896u, 25800u), vec3<u32>(1u, 73741u, 37558u)), Struct_5(vec2<i32>(2147483647i, 1i), vec2<u32>(4294967295u, 10982u), vec3<u32>(1u, 1u, 80084u)), Struct_5(vec2<i32>(-5240i, 6694i), vec2<u32>(9532u, 9208u), vec3<u32>(1u, 32282u, 13331u)), Struct_5(vec2<i32>(i32(-2147483648), 9538i), vec2<u32>(12658u, 51744u), vec3<u32>(4294967295u, 1u, 78988u)), Struct_5(vec2<i32>(79133i, 49004i), vec2<u32>(0u, 0u), vec3<u32>(18288u, 0u, 30625u)), Struct_5(vec2<i32>(2147483647i, i32(-2147483648)), vec2<u32>(0u, 39853u), vec3<u32>(0u, 0u, 62827u)), Struct_5(vec2<i32>(-14392i, 26868i), vec2<u32>(25488u, 67997u), vec3<u32>(45503u, 20024u, 25955u)));

var<private> global3: vec4<bool>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_4, arg_3: i32) -> i32 {
    global1 = Struct_4(vec3<bool>(global1.c.x <= -47097i, false | arg_0.b, any(arg_2.a.xz)), 168f, vec2<i32>(reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(36725i, 39731i, arg_3, arg_2.c.x) | vec4<i32>(35671i, u_input.c, 0i, global1.c.x), u_input.a)), -7128i), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1542f, arg_2.b, 663f, arg_2.d.x) + vec4<f32>(681f, -267f, arg_2.d.x, global1.e)))))), global1.d)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(arg_2.b)))));
    global2 = array<Struct_5, 22>();
    let var_0 = global2[_wgslsmith_index_u32(countOneBits(u_input.b), 22u)];
    global1 = global0[_wgslsmith_index_u32(0u, 4u)];
    let var_1 = _wgslsmith_sub_i32(-arg_2.c.x, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(countOneBits(u_input.a), _wgslsmith_div_vec4_i32(~vec4<i32>(arg_3, 67748i, arg_2.c.x, 2147483647i), vec4<i32>(arg_3, -38416i, -1i, global1.c.x))), u_input.a));
    return min(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.a, u_input.a | abs(u_input.a)), abs(vec4<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-6279i, -2147483647i), vec2<i32>(u_input.a.x, arg_3)), -1i, var_0.a.x >> (22489u % 32u)))), -4288i);
}

fn func_2() -> Struct_2 {
    global1 = Struct_4(global3.yyw, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) + _wgslsmith_f_op_f32(min(global1.e, global1.b))), -vec2<i32>(func_3(Struct_2(global3.xz, global1.a.x, global3.zww, vec4<bool>(global1.a.x, global1.a.x, global3.x, false)), countOneBits(vec4<u32>(0u, 15357u, u_input.b, u_input.b)), global0[_wgslsmith_index_u32(u_input.b, 4u)], ~(-49375i)), _wgslsmith_mult_i32(~u_input.c, _wgslsmith_clamp_i32(-7083i, u_input.a.x, -1i))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global1.d.x), 901f, _wgslsmith_f_op_f32(-global1.d.x), _wgslsmith_f_op_f32(f32(-1f) * -1504f)) * vec4<f32>(global1.b, _wgslsmith_f_op_f32(f32(-1f) * -915f), _wgslsmith_f_op_f32(f32(-1f) * -778f), _wgslsmith_f_op_f32(select(-404f, -272f, true)))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-440f * 166f) + -1208f)), global1.e)));
    global3 = select(vec4<bool>(all(select(select(vec2<bool>(false, true), vec2<bool>(true, global1.a.x), true), select(global3.zx, global3.yy, vec2<bool>(global3.x, true)), global1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) * global1.b) == 430f, (true & global1.a.x) | global3.x, !any(select(global1.a.xx, vec2<bool>(true, false), true))), !(!(!select(vec4<bool>(global3.x, false, global1.a.x, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, global3.x, global3.x)))), select(select(!vec4<bool>(true, true, false, global3.x), select(select(vec4<bool>(global3.x, global1.a.x, global3.x, global1.a.x), vec4<bool>(global3.x, global1.a.x, global3.x, false), global1.a.x), !vec4<bool>(false, global3.x, false, false), select(vec4<bool>(global1.a.x, global1.a.x, global1.a.x, global1.a.x), vec4<bool>(true, true, global3.x, true), vec4<bool>(false, true, global1.a.x, global1.a.x))), vec4<bool>(0u < u_input.b, select(false, false, true), true, global3.x)), vec4<bool>(false, any(!vec3<bool>(global1.a.x, global1.a.x, global3.x)), all(!vec3<bool>(false, true, global3.x)), (15755u > u_input.b) || true), global3.x));
    let var_0 = ~(~(~vec2<u32>(2298u, 42264u) & select(vec2<u32>(55033u, u_input.b), vec2<u32>(u_input.b, 46253u), vec2<bool>(global3.x, false)))) | firstTrailingBit(reverseBits(min(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 6308u))) >> (_wgslsmith_div_vec2_u32(vec2<u32>(0u, 4294967295u) | vec2<u32>(69957u, u_input.b), vec2<u32>(u_input.b, 1u) ^ vec2<u32>(0u, 4979u)) % vec2<u32>(32u)));
    global3 = !(!(!vec4<bool>(true, true, global1.b > global1.e, global1.a.x != true)));
    global2 = array<Struct_5, 22>();
    return Struct_2(vec2<bool>(global1.a.x, true), false, global3.ywx, select(!vec4<bool>(false, global1.c.x <= 32542i, global3.x, true), vec4<bool>(any(!global3.xy), true, all(vec3<bool>(false, global3.x, global1.a.x)), false), global3.x));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: vec4<f32>) -> u32 {
    let var_0 = any(!func_2().d.yxy);
    global1 = global0[_wgslsmith_index_u32(0u, 4u)];
    global0 = array<Struct_4, 4>();
    let var_1 = func_2();
    let var_2 = global0[_wgslsmith_index_u32(u_input.b, 4u)];
    return ~(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(0u, 7319u)), ~max(vec2<u32>(u_input.b, 8409u), vec2<u32>(96378u, u_input.b))) & (~(~u_input.b) << (~(u_input.b >> (1u % 32u)) % 32u)));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: Struct_1, arg_3: Struct_2) -> vec4<u32> {
    global1 = Struct_4(!arg_2.a, -107f, firstLeadingBit(-vec2<i32>(u_input.a.x, -2147483647i) << (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u))) ^ vec2<i32>(-_wgslsmith_clamp_i32(global1.c.x, 1i, -7193i), -global1.c.x), global1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1209f)));
    let var_0 = vec2<bool>(false, all(arg_3.c));
    let var_1 = vec2<bool>(true, arg_3.b);
    let var_2 = vec2<u32>(max(func_4(Struct_3(min(vec2<i32>(0i, global1.c.x), arg_2.b), Struct_2(vec2<bool>(var_1.x, true), true, vec3<bool>(false, false, arg_3.b), vec4<bool>(var_1.x, true, arg_3.d.x, var_1.x)), arg_3, func_2()), _wgslsmith_f_op_f32(-arg_2.d.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d.x, 575f, 1214f, global1.b) - vec4<f32>(1727f, -340f, arg_2.d.x, arg_2.d.x)) + global1.d)), 4294967295u), func_4(Struct_3(reverseBits(~arg_2.b), Struct_2(global3.wy, var_0.x, arg_3.c, arg_3.d), func_2(), Struct_2(vec2<bool>(global3.x, true), arg_3.b, !arg_3.d.xxz, vec4<bool>(true, false, global3.x, true))), _wgslsmith_f_op_f32(-arg_2.c), _wgslsmith_f_op_vec4_f32(floor(global1.d))));
    global1 = Struct_4(!func_2().c, _wgslsmith_f_op_f32(-arg_2.d.x), ~u_input.a.wx, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(global1.d, global1.d)) * _wgslsmith_f_op_vec4_f32(abs(global1.d))) - global1.d))), _wgslsmith_f_op_f32(sign(-712f)));
    return ~(~select(~(vec4<u32>(24878u, u_input.b, 4294967295u, 29434u) >> (vec4<u32>(68371u, arg_0, var_2.x, arg_0) % vec4<u32>(32u))), countOneBits(select(vec4<u32>(u_input.b, 43194u, 10229u, u_input.b), vec4<u32>(var_2.x, 4294967295u, u_input.b, 99424u), vec4<bool>(true, arg_3.c.x, global1.a.x, false))), !all(vec2<bool>(true, var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(_wgslsmith_sub_u32(~(~u_input.b), ~(~u_input.b)), u_input.b), max(_wgslsmith_add_i32(_wgslsmith_clamp_i32(global1.c.x, 2147483647i, u_input.c), min(global1.c.x, -1i)) ^ -6804i, 30665i), _wgslsmith_div_vec4_u32(~_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(67228u, 115359u, 122751u, 6096u), vec4<u32>(u_input.b, u_input.b, 1642u, 0u)), vec4<u32>(u_input.b, 1u, 7216u, 37206u)), select(func_1(0u, global1.a.x, Struct_1(vec3<bool>(true, global1.a.x, global3.x), vec2<i32>(global1.c.x, u_input.a.x), global1.b, vec3<f32>(-1016f, global1.e, global1.d.x), global1.c.x), Struct_2(global3.zy, global1.a.x, vec3<bool>(global3.x, true, global3.x), vec4<bool>(true, false, false, false))) | ~vec4<u32>(18894u, 1u, u_input.b, 2682u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 0u, u_input.b, u_input.b), vec4<u32>(0u, u_input.b, 43715u, 22640u)) >> ((vec4<u32>(1u, 4294967295u, u_input.b, 1u) ^ vec4<u32>(4294967295u, 37545u, 0u, 0u)) % vec4<u32>(32u)), all(select(vec2<bool>(global1.a.x, true), global3.yy, global1.a.xx)))), firstTrailingBit(vec3<u32>(u_input.b, 1u, 1u)), _wgslsmith_div_u32(firstLeadingBit(u_input.b), reverseBits(_wgslsmith_add_u32(u_input.b, ~u_input.b))));
}

