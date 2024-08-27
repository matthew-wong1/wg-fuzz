struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

var<private> global1: bool = true;

var<private> global2: i32 = 8454i;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec4<u32> {
    global2 = -43380i;
    global0 = array<Struct_1, 4>();
    global2 = ~_wgslsmith_mult_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 28409i, 0i) ^ vec3<i32>(u_input.a, 2147483647i, -15841i), vec3<i32>(-2147483647i, u_input.a, 0i)), -2147483647i), -1i);
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(689f * 1889f), -1289f, 330f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(977f, -1075f) - _wgslsmith_f_op_f32(-2030f * -1600f)))))));
    var var_1 = _wgslsmith_div_vec2_i32(min(_wgslsmith_mult_vec2_i32(-vec2<i32>(u_input.a, u_input.b.x), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, 7702i), vec2<i32>(-29451i, u_input.b.x) << (vec2<u32>(27925u, 21699u) % vec2<u32>(32u)))), _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, 19923i), u_input.b), _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, u_input.a), u_input.b)), countOneBits(-vec2<i32>(u_input.b.x, -3224i)), u_input.b)), _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(u_input.b, select(countOneBits(vec2<i32>(-56586i, u_input.b.x)), u_input.b, true)), vec2<i32>(-1i) * -(~vec2<i32>(-17876i, -40352i))));
    return select(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, firstTrailingBit(3290u), ~max(_wgslsmith_dot_vec2_u32(vec2<u32>(24820u, 1u), vec2<u32>(70509u, 53264u)), ~64788u), _wgslsmith_dot_vec2_u32(~select(vec2<u32>(60119u, 35555u), vec2<u32>(1u, 13173u), vec2<bool>(true, true)), vec2<u32>(min(110260u, 0u), 1u))), vec4<bool>(all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), false)) && true, true, true, any(vec3<bool>(true, true, true))));
}

fn func_2(arg_0: i32) -> i32 {
    var var_0 = Struct_1(vec4<i32>(-1i) * -vec4<i32>(u_input.a << (1u % 32u), ~arg_0, arg_0, arg_0), vec2<bool>(select(all(vec4<bool>(true, false, true, true)), true, false), true), _wgslsmith_div_u32(_wgslsmith_clamp_u32(3225u, 39244u, _wgslsmith_add_u32(~4294967295u, 1u << (1u % 32u))), 0u));
    var var_1 = _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(func_3(), (vec4<u32>(25321u, 62894u, 30302u, 0u) | vec4<u32>(var_0.c, var_0.c, 26648u, var_0.c)) & ~vec4<u32>(99955u, var_0.c, 67874u, var_0.c)), _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(4294967295u, var_0.c, 0u), var_0.c, _wgslsmith_mod_u32(var_0.c, 4294967295u), 0u), ~vec4<u32>(0u, var_0.c, 4294967295u, 0u), select(vec4<u32>(0u, 8166u, var_0.c, 0u) >> (vec4<u32>(64444u, var_0.c, 1u, var_0.c) % vec4<u32>(32u)), countOneBits(vec4<u32>(var_0.c, var_0.c, var_0.c, 1u)), true))), vec4<u32>(var_0.c, _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, var_0.c, var_0.c), ~vec3<u32>(4294967295u, 16377u, var_0.c)) ^ 4294967295u, func_3().x << (69213u % 32u), var_0.c));
    let var_2 = -vec3<i32>(-_wgslsmith_add_i32(-arg_0, ~arg_0), (-arg_0 | 0i) ^ -2147483647i, 40601i);
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~var_1.xxw, vec3<u32>(var_1.x, var_1.x, 0u) & var_1.yzx), var_1.yzw) ^ _wgslsmith_div_u32(4294967295u, _wgslsmith_div_u32(var_0.c, 13290u)), max(max(4294967295u, var_0.c), ~1u)), 4u)];
    let var_4 = Struct_1(var_0.a, vec2<bool>(any(!(!vec3<bool>(var_3.b.x, var_0.b.x, var_0.b.x))), any(select(select(vec3<bool>(false, true, var_0.b.x), vec3<bool>(var_3.b.x, var_0.b.x, false), var_0.b.x), select(vec3<bool>(var_0.b.x, var_3.b.x, var_0.b.x), vec3<bool>(false, false, var_0.b.x), var_3.b.x), true))), ~11519u);
    return -_wgslsmith_sub_i32(_wgslsmith_clamp_i32(var_2.x, _wgslsmith_mult_i32(-2147483647i, var_3.a.x) >> (abs(var_1.x) % 32u), i32(-1i) * -3689i), countOneBits(abs(_wgslsmith_mod_i32(-1i, 23988i))));
}

fn func_1() -> f32 {
    var var_0 = -select(vec3<i32>(37769i, -u_input.b.x, -u_input.a), vec3<i32>(func_2(-u_input.a), u_input.a, 2815i), select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true)));
    var var_1 = !select(vec4<bool>(all(vec3<bool>(true, true, true)) || select(false, false, true), false | all(vec3<bool>(false, false, true)), false, select(true, true, all(vec4<bool>(true, true, true, false)))), select(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), true), vec4<bool>(true, true, true, true)), false);
    global0 = array<Struct_1, 4>();
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(min(1096f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-277f, _wgslsmith_f_op_f32(min(-495f, -2277f)))))), -547f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-231f, -1633f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-2010f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -300f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -384f))))));
    var var_3 = vec3<bool>(false & all(vec4<bool>(true, all(var_1.wzz), true, all(var_1.xyz))), true, !(!all(!vec4<bool>(true, true, var_1.x, var_1.x))));
    return _wgslsmith_f_op_f32(1166f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1241f + var_2.x)) - var_2.x) * _wgslsmith_f_op_f32(round(-1714f))));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec4<u32>) -> u32 {
    let var_0 = arg_1;
    var var_1 = Struct_1(vec4<i32>(~(_wgslsmith_sub_i32(-85701i, var_0.a.x) & (arg_1.a.x << (arg_1.c % 32u))), -18910i, -(~18298i << (firstLeadingBit(arg_1.c) % 32u)), ~(~(-var_0.a.x))), arg_1.b, _wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_0.c), arg_2.xy), ~_wgslsmith_add_u32(var_0.c, 4294967295u | var_0.c)));
    let var_2 = any(vec2<bool>(true, false));
    global0 = array<Struct_1, 4>();
    let var_3 = all(!vec3<bool>(true, var_1.b.x, false));
    return _wgslsmith_add_u32(max(~4294967295u, ~(firstLeadingBit(57086u) & _wgslsmith_dot_vec4_u32(vec4<u32>(41867u, 27754u, arg_2.x, arg_2.x), arg_2))), ~(~(~(arg_2.x ^ var_1.c))));
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> StorageBuffer {
    var var_0 = vec3<bool>(true, true, true);
    let var_1 = vec2<i32>(-_wgslsmith_dot_vec3_i32((arg_1.a.xzz ^ arg_1.a.zwx) & (vec3<i32>(arg_0, arg_3.a.x, arg_1.a.x) << (vec3<u32>(arg_1.c, arg_3.c, 0u) % vec3<u32>(32u))), ~arg_3.a.zxy), 0i);
    let var_2 = -5944i;
    var var_3 = !(!vec2<bool>(!arg_3.b.x, var_0.x));
    let var_4 = vec2<bool>(abs(var_2) != abs(_wgslsmith_add_i32(-44478i, -7839i)), select(var_0.x, true, false));
    return StorageBuffer(_wgslsmith_f_op_f32(max(-523f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -335f))))), ~(firstTrailingBit(~1u) & arg_3.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-2568f, _wgslsmith_f_op_f32(f32(-1f) * -281f)))));
    global1 = u_input.b.x > -10694i;
    var var_1 = vec4<bool>(!any(vec4<bool>(true, all(vec4<bool>(false, true, true, false)), false, select(true, false, false))), true, false | (!all(vec3<bool>(true, true, false)) & select(true, false, true)), select(true, true, true));
    global0 = array<Struct_1, 4>();
    var var_2 = 4294967295u;
    global2 = 1i;
    global0 = array<Struct_1, 4>();
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-816f, -1748f))))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)) + vec2<f32>(var_0, var_0)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)))));
    let x = u_input.a;
    s_output = func_5(u_input.a >> (func_4(_wgslsmith_f_op_f32(func_1()), Struct_1(max(vec4<i32>(26963i, u_input.a, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, 13900i, 2147483647i)), vec2<bool>(var_1.x, var_1.x), _wgslsmith_clamp_u32(3610u, 4294967295u, 76202u)), vec4<u32>(1u, 1u, 1u, 1u)) % 32u), global0[_wgslsmith_index_u32(func_4(_wgslsmith_f_op_f32(func_1()), global0[_wgslsmith_index_u32(~min(27367u, func_3().x), 4u)], vec4<u32>(1u, 1u, 1u, 1u)), 4u)], global0[_wgslsmith_index_u32(abs(countOneBits(min(~86620u, ~0u))), 4u)], global0[_wgslsmith_index_u32((_wgslsmith_mod_u32(4294967295u, 1u) << (_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(3612u, 1u, 0u, 8533u), vec4<u32>(609u, 0u, 1u, 56683u)), firstTrailingBit(4294967295u)) % 32u)) & ~1u, 4u)]);
}

