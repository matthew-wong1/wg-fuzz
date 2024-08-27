struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
    d: vec2<i32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: Struct_1,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec3<bool>) -> Struct_3 {
    return Struct_3(global0.b, Struct_2(140f, global0.b, global0.c, _wgslsmith_mult_vec3_i32(global0.d, countOneBits(vec3<i32>(global0.d.x, global0.d.x, 0i) ^ vec3<i32>(1i, global0.d.x, u_input.d.x))), vec2<u32>(_wgslsmith_div_u32(4294967295u, _wgslsmith_mult_u32(u_input.c.x, global0.e.x)), min(max(4294967295u, 0u), max(5083u, u_input.c.x)))), true != all(arg_0.yx), u_input.a.zz);
}

fn func_3() -> Struct_2 {
    global0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -373f)), -1000f)) + _wgslsmith_f_op_f32(-global0.a)), func_2(vec3<bool>(_wgslsmith_mod_u32(36369u, global0.e.x) >= (global0.e.x << (global0.e.x % 32u)), true, true)).b.b, func_2(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), true)).a, _wgslsmith_sub_vec3_i32(u_input.a.zwz, global0.d), _wgslsmith_clamp_vec2_u32(func_2(vec3<bool>(true, true, u_input.c.x > 69780u)).b.e, reverseBits(_wgslsmith_mult_vec2_u32(global0.e, vec2<u32>(4294967295u, 4066u))), _wgslsmith_add_vec2_u32(u_input.c.ww, abs(firstTrailingBit(vec2<u32>(88904u, 96724u))))));
    let var_0 = global0.c.a;
    var var_1 = _wgslsmith_add_u32(u_input.c.x, ~_wgslsmith_dot_vec3_u32(~u_input.c.zzz ^ ~vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), ~(~u_input.c.zzw)));
    var var_2 = _wgslsmith_add_vec2_i32(-_wgslsmith_div_vec2_i32(vec2<i32>(-global0.d.x, -2147483647i), _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(global0.d.x, global0.d.x), u_input.d), vec2<i32>(u_input.b, -6724i))), vec2<i32>(_wgslsmith_sub_i32(~2147483647i, _wgslsmith_sub_i32(u_input.b | u_input.b, u_input.b)), 2147483647i));
    var var_3 = ~vec3<i32>(global0.d.x, -var_2.x, firstTrailingBit(min(-u_input.b, var_2.x | global0.d.x)));
    return func_2(!vec3<bool>(!all(vec3<bool>(true, true, true)), all(vec3<bool>(false, false, false)), any(vec4<bool>(false, false, false, true)))).b;
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: vec4<u32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, arg_1.b.b.b.b, arg_1.c.b) + vec3<f32>(-101f, global0.a, 696f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.b, global0.c.a, arg_1.d.a) + vec3<f32>(2066f, arg_1.b.b.c.b, global0.a))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(771f, global0.b.a, -610f), vec3<f32>(global0.b.a, 1116f, global0.b.a)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1.b.a.b, -1000f, 1000f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1627f, global0.c.a, -1654f) - vec3<f32>(181f, 1727f, arg_1.d.a)) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.c.b, 858f, arg_1.c.b), vec3<f32>(arg_1.d.b.b, global0.c.a, arg_1.d.c.a)))))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global0.a, global0.b.b)), -515f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_1.c.a))), !select(vec3<bool>(arg_1.b.c, arg_1.d.a == -2274f, all(vec3<bool>(arg_1.b.c, arg_1.b.c, arg_1.b.c))), !select(vec3<bool>(true, true, arg_1.b.c), vec3<bool>(true, arg_1.b.c, true), vec3<bool>(false, arg_1.b.c, arg_1.b.c)), !vec3<bool>(arg_1.b.c, arg_1.b.c, arg_1.b.c))));
    var var_1 = func_3().c;
    var var_2 = !arg_1.b.c;
    var var_3 = ~(~(abs(-33217i) & func_2(select(vec3<bool>(false, arg_1.b.c, true), vec3<bool>(false, arg_1.b.c, arg_1.b.c), vec3<bool>(false, true, arg_1.b.c))).b.d.x));
    var var_4 = func_2(vec3<bool>(all(!select(vec4<bool>(false, true, arg_1.b.c, arg_1.b.c), vec4<bool>(arg_1.b.c, true, false, arg_1.b.c), vec4<bool>(arg_1.b.c, false, arg_1.b.c, true))), !arg_1.b.c, arg_1.b.c)).b;
    return true;
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: vec4<i32>, arg_3: Struct_1) -> u32 {
    let var_0 = vec3<f32>(global0.c.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1))), _wgslsmith_f_op_f32(-arg_1))))), _wgslsmith_f_op_f32(exp2(arg_3.a)));
    let var_1 = func_4(~u_input.c.x, Struct_4(global0.e.x, func_2(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false)), global0.c, func_3(), ~abs(~4294967295u)), ~vec4<u32>(1049u, 78934u, ~4294967295u, u_input.c.x) << (_wgslsmith_add_vec4_u32(u_input.c, _wgslsmith_mult_vec4_u32(~u_input.c, u_input.c)) % vec4<u32>(32u)));
    global0 = Struct_2(-399f, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + arg_3.a))), -1556f), func_2(select(!vec3<bool>(true, var_1, true), !vec3<bool>(var_1, true, var_1), !select(vec3<bool>(true, var_1, var_1), vec3<bool>(var_1, var_1, false), vec3<bool>(var_1, var_1, false)))).a, vec3<i32>(firstTrailingBit(global0.d.x & u_input.d.x), global0.d.x, -u_input.a.x), select(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.e.x, 4579u, 22939u, u_input.c.x), u_input.c) >> ((43634u & global0.e.x) % 32u), _wgslsmith_div_u32(u_input.c.x & 1u, u_input.c.x)), vec2<u32>(countOneBits(33309u), 19211u), _wgslsmith_f_op_f32(abs(global0.a)) > _wgslsmith_f_op_f32(f32(-1f) * -2674f)));
    let var_2 = func_2(select(vec3<bool>(func_4(global0.e.x, Struct_4(global0.e.x, Struct_3(Struct_1(-2149f, var_0.x), Struct_2(var_0.x, Struct_1(arg_3.a, arg_3.a), Struct_1(1250f, 972f), u_input.a.xyz, global0.e), true, u_input.a.wx), Struct_1(arg_3.a, -137f), Struct_2(global0.a, arg_3, arg_0, arg_2.www, vec2<u32>(1u, 17763u)), u_input.c.x), u_input.c) || !var_1, (-820f == arg_3.a) | all(vec3<bool>(false, false, var_1)), false), select(select(vec3<bool>(var_1, var_1, false), select(vec3<bool>(true, false, var_1), vec3<bool>(var_1, var_1, var_1), var_1), 42041u < global0.e.x), select(!vec3<bool>(var_1, false, var_1), vec3<bool>(false, var_1, false), var_1), vec3<bool>(var_1, var_1, !var_1)), !(!(!vec3<bool>(var_1, var_1, var_1)))));
    global0 = func_3();
    return var_2.b.e.x;
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: Struct_2) -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.a))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.a.b) - _wgslsmith_f_op_f32(-arg_2.a))) + global0.c.a), arg_1.d.c, arg_1.d.b, global0.d, (global0.e | firstTrailingBit(vec2<u32>(u_input.c.x, 15370u))) & ~(~arg_0));
    let var_1 = vec4<u32>(u_input.c.x, func_1(func_3().b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d.a))), min(_wgslsmith_div_vec4_i32(firstLeadingBit(u_input.a), ~vec4<i32>(u_input.a.x, u_input.b, var_0.d.x, global0.d.x)), vec4<i32>(~(-1i), _wgslsmith_add_i32(arg_2.d.x, global0.d.x), arg_1.d.d.x, -49541i)), func_2(vec3<bool>(true, arg_1.b.c, true)).b.c), _wgslsmith_add_u32(arg_0.x, 22099u << (~(0u << (arg_1.e % 32u)) % 32u)), 0u);
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(301f * _wgslsmith_f_op_f32(ceil(-409f)))), _wgslsmith_f_op_f32(f32(-1f) * -1200f), arg_2.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-817f * arg_1.d.c.b)))) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.d.a), _wgslsmith_f_op_f32(min(780f, arg_2.b.a)))), -517f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-448f - -190f), _wgslsmith_f_op_f32(step(var_0.b.b, arg_2.c.a))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, 1384f, var_0.a, -1000f)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(357f, var_0.a, global0.a, global0.a))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(2570f, -652f, 735f, arg_2.c.a))), !vec4<bool>(false, true, true, arg_1.b.c))))));
    return Struct_2(arg_2.b.b, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(731f * global0.b.b), _wgslsmith_f_op_f32(497f * arg_1.d.a)))), arg_2.a), Struct_1(_wgslsmith_f_op_f32(floor(-1000f)), 1043f), global0.d, reverseBits(~vec2<u32>(~global0.e.x, _wgslsmith_dot_vec3_u32(var_1.yyx, vec3<u32>(var_1.x, 23311u, 51293u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec2<u32>(min(u_input.c.x, u_input.c.x), u_input.c.x ^ func_1(global0.b, global0.a, u_input.a, global0.c)) << (u_input.c.zw % vec2<u32>(32u)), Struct_4(func_2(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true))).b.e.x | ~func_3().e.x, func_2(vec3<bool>(global0.e.x < global0.e.x, true, any(vec3<bool>(true, true, false)))), func_3().c, Struct_2(global0.c.a, Struct_1(_wgslsmith_f_op_f32(max(global0.b.a, -998f)), _wgslsmith_f_op_f32(-global0.c.b)), func_3().c, vec3<i32>(abs(2147483647i), _wgslsmith_sub_i32(u_input.d.x, u_input.b), i32(-1i) * -17746i), vec2<u32>(1u, 83891u)), 0u & _wgslsmith_sub_u32(abs(global0.e.x), 1u)), func_3());
    var var_1 = var_0.d.x;
    var var_2 = vec3<bool>(all(vec2<bool>(true, false)), _wgslsmith_f_op_f32(var_0.b.b - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.c.b)) - 851f)) > -1520f, select(all(vec2<bool>(true, false)) | (any(vec4<bool>(false, false, false, true)) && true), true, any(vec3<bool>(true, true, func_4(1u, Struct_4(90400u, Struct_3(Struct_1(1000f, -124f), Struct_2(global0.c.a, var_0.b, global0.b, vec3<i32>(2528i, 42034i, 2147483647i), global0.e), true, vec2<i32>(-7289i, -1i)), Struct_1(-733f, global0.a), Struct_2(global0.b.b, Struct_1(-475f, global0.a), Struct_1(global0.b.a, var_0.b.a), vec3<i32>(u_input.d.x, 26043i, var_0.d.x), vec2<u32>(0u, global0.e.x)), global0.e.x), vec4<u32>(135464u, u_input.c.x, global0.e.x, 1u))))));
    var_0 = func_3();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32((-2147483647i >> (u_input.c.x % 32u)) << ((20996u ^ var_0.e.x) % 32u), 21453i), _wgslsmith_mult_i32(1i, _wgslsmith_mod_i32(~var_0.d.x, global0.d.x) | abs(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.d.x, -1i, u_input.d.x), u_input.a.zxy))), vec4<i32>(_wgslsmith_clamp_i32(-5522i, -max(0i, u_input.b), -abs(0i)), min(-global0.d.x, 1i), global0.d.x, var_0.d.x), _wgslsmith_div_f32(var_0.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.b))));
}

