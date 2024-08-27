struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: u32,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: u32) -> vec4<bool> {
    var var_0 = Struct_4(_wgslsmith_clamp_vec2_u32(countOneBits(countOneBits(vec2<u32>(14917u, arg_1.b) >> (vec2<u32>(arg_2, 29294u) % vec2<u32>(32u)))), ~vec2<u32>(select(0u, 1u, false), 21107u), ~(~vec2<u32>(arg_2, u_input.b)) >> (~(~vec2<u32>(arg_1.a, arg_1.a)) % vec2<u32>(32u))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-arg_0.b.xz);
    return arg_0.c;
}

fn func_2(arg_0: i32, arg_1: vec3<f32>) -> vec2<u32> {
    var var_0 = Struct_4(vec2<u32>(_wgslsmith_add_u32(~69555u, _wgslsmith_clamp_u32(0u, 13340u << (u_input.d % 32u), u_input.d << (u_input.d % 32u))), ~_wgslsmith_mod_u32(u_input.d, _wgslsmith_mult_u32(u_input.d, 40750u))));
    let var_1 = Struct_2(~var_0.a.x, var_0.a.x, -1088f, Struct_1(!all(!vec4<bool>(global0.x, false, global0.x, false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2231f, arg_1.x, arg_1.x, arg_1.x))), !(!vec4<bool>(global0.x, true, global0.x, global0.x))), Struct_1(true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2407f, arg_1.x, arg_1.x, 892f))))), func_3(Struct_1(any(global0.yz), _wgslsmith_div_vec4_f32(vec4<f32>(1022f, 109f, arg_1.x, -812f), vec4<f32>(arg_1.x, arg_1.x, 195f, arg_1.x)), !vec4<bool>(global0.x, global0.x, global0.x, global0.x)), Struct_3(min(1u, u_input.b), 1u), ~(~25432u))));
    global0 = !vec4<bool>(var_1.d.a, any(select(global0.zy, vec2<bool>(true, true), any(vec2<bool>(true, var_1.d.c.x)))), var_1.d.a, !global0.x);
    let var_2 = !vec3<bool>(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(sign(arg_1.x))) < _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.d.b.x))), true && (!var_1.d.c.x & true), false);
    let var_3 = Struct_3(~abs(~var_0.a.x), firstLeadingBit(countOneBits(8840u)));
    return vec2<u32>(u_input.d, ~(~1u));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_3) -> bool {
    let var_0 = Struct_4(arg_0);
    let var_1 = select(any(!vec2<bool>(any(vec3<bool>(global0.x, global0.x, false)), arg_1.b > 0u)), global0.x, all(func_3(Struct_1(true, vec4<f32>(-1000f, -998f, 935f, -1804f), vec4<bool>(false, true, false, global0.x)), Struct_3(794u & arg_1.a, 17510u), u_input.b).wx));
    var var_2 = firstLeadingBit(u_input.a) >> (_wgslsmith_add_u32(_wgslsmith_div_u32(4294967295u, u_input.b), countOneBits((var_0.a.x & 0u) >> (arg_0.x % 32u))) % 32u);
    let var_3 = Struct_1(!any(vec3<bool>(true, var_1, true)) & ((u_input.c << (0u % 32u)) >= ~0i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), func_3(Struct_1(true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(229f, 1849f, -539f, 1815f)))), vec4<bool>(var_1 == var_1, true, !var_1, true)), arg_1, 10817u));
    var var_4 = Struct_2(u_input.a, ~(u_input.b | abs(var_0.a.x)) & _wgslsmith_dot_vec3_u32(firstLeadingBit(abs(vec3<u32>(1u, 7862u, arg_0.x))), ~_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.x, arg_1.b, 4294967295u), vec3<u32>(1u, var_0.a.x, arg_0.x))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_3.b.x, _wgslsmith_f_op_f32(f32(-1f) * -535f)), 654f)), Struct_1(!all(select(global0.zy, var_3.c.wx, vec2<bool>(var_1, global0.x))), vec4<f32>(var_3.b.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-309f, -575f) * _wgslsmith_f_op_f32(floor(var_3.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_3.b.x, 240f)) + _wgslsmith_f_op_f32(select(var_3.b.x, -1589f, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(403f * 1000f) + _wgslsmith_f_op_f32(f32(-1f) * -1708f))), var_3.c), var_3);
    return false;
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = vec3<bool>(!func_4(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0, 0u), vec2<u32>(13682u, 23338u)), func_2(u_input.c, vec3<f32>(-463f, -180f, -1102f)), vec2<u32>(1u, 1u)), Struct_3(~u_input.b, arg_0)), global0.x, func_3(Struct_1(_wgslsmith_f_op_f32(ceil(-578f)) != _wgslsmith_f_op_f32(step(790f, -1413f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(535f, 929f, 684f, -945f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1155f, -459f, 223f, -342f))), vec4<bool>(global0.x, global0.x, false, !global0.x)), Struct_3(~(u_input.b >> (25927u % 32u)), u_input.a), arg_0).x);
    var var_1 = Struct_4(vec2<u32>(_wgslsmith_dot_vec3_u32((vec3<u32>(u_input.b, 40256u, arg_0) >> (vec3<u32>(2797u, u_input.d, 41210u) % vec3<u32>(32u))) << (~vec3<u32>(arg_0, arg_0, arg_0) % vec3<u32>(32u)), ~vec3<u32>(39454u, arg_0, arg_0) ^ ~vec3<u32>(23088u, 1u, 0u)), _wgslsmith_dot_vec2_u32(vec2<u32>(85382u, u_input.b), vec2<u32>(_wgslsmith_mult_u32(1u, u_input.d), 12230u))));
    let var_2 = -((vec2<i32>(_wgslsmith_clamp_i32(0i, 26239i, 46134i), u_input.c) | ~countOneBits(vec2<i32>(u_input.c, u_input.c))) << (_wgslsmith_add_vec2_u32(var_1.a, vec2<u32>(1u, 30323u) | _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, var_1.a.x), var_1.a)) % vec2<u32>(32u)));
    var var_3 = Struct_1(min(_wgslsmith_add_i32(-21650i, ~u_input.c), _wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.c, -6560i, var_2.x), 32187i & u_input.c)) <= (u_input.c ^ var_2.x), vec4<f32>(-115f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-135f * _wgslsmith_div_f32(-1000f, 328f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1786f + _wgslsmith_f_op_f32(f32(-1f) * -1749f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -601f) + -109f)), 218f), func_3(Struct_1(true || select(false, var_0.x, var_0.x), vec4<f32>(_wgslsmith_div_f32(-555f, -1723f), _wgslsmith_f_op_f32(1666f * -115f), _wgslsmith_f_op_f32(step(408f, 983f)), 367f), vec4<bool>(!var_0.x, true, all(vec4<bool>(global0.x, false, true, true)), any(vec3<bool>(true, global0.x, var_0.x)))), Struct_3(var_1.a.x, (arg_0 & 37149u) >> (arg_0 % 32u)), arg_0));
    var_3 = Struct_1(var_0.x, var_3.b, !(!select(vec4<bool>(true, global0.x, global0.x, true), !vec4<bool>(true, false, var_0.x, false), var_3.a)));
    return Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1320f) <= var_3.b.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_3.b + var_3.b), _wgslsmith_f_op_vec4_f32(round(var_3.b))) * vec4<f32>(_wgslsmith_f_op_f32(var_3.b.x - 463f), _wgslsmith_f_op_f32(292f + var_3.b.x), _wgslsmith_f_op_f32(var_3.b.x + 1000f), _wgslsmith_f_op_f32(-var_3.b.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1498f, 1418f, -1000f, 123f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3.b.x, 1555f, -1000f, -288f), vec4<f32>(1076f, var_3.b.x, -942f, var_3.b.x), var_3.c))))), !select(vec4<bool>(true, global0.x || false, true, all(global0.wxx)), !var_3.c, select(!vec4<bool>(true, false, global0.x, global0.x), var_3.c, var_3.b.x < 392f)));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: u32, arg_3: Struct_3) -> vec3<f32> {
    let var_0 = Struct_1(global0.x, arg_0.b, select(vec4<bool>(global0.x, !global0.x, _wgslsmith_div_f32(142f, arg_0.b.x) < -514f, true), vec4<bool>(arg_1.x, true, (arg_3.b != arg_3.a) | all(vec4<bool>(false, arg_0.a, true, false)), all(arg_1) & !global0.x), arg_1));
    var var_1 = vec4<i32>(-(~19482i), countOneBits(~2147483647i), _wgslsmith_mod_i32(~(u_input.c | 2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 1795i, -27819i), vec3<i32>(u_input.c, u_input.c, u_input.c)), _wgslsmith_dot_vec2_i32(vec2<i32>(-30849i, -4487i), vec2<i32>(33406i, u_input.c)), ~(-1i)), abs(~vec4<i32>(10743i, u_input.c, u_input.c, u_input.c)))), i32(-1i) * -u_input.c);
    var var_2 = min(1u, func_2(_wgslsmith_clamp_i32(-var_1.x, var_1.x ^ _wgslsmith_add_i32(u_input.c, 29269i), var_1.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-1033f, 276f), _wgslsmith_f_op_f32(814f + 464f), -550f) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.b.x, -1001f, -1000f), vec3<f32>(var_0.b.x, 204f, var_0.b.x))))).x);
    var_2 = u_input.a;
    let var_3 = arg_0.b.x;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(func_1(0u).b.yyw, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_0.b.zwy))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_5(func_1(_wgslsmith_mult_u32(~4294967295u, ~u_input.d)), vec4<bool>(!global0.x, true, true, func_4(_wgslsmith_add_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(u_input.a, u_input.a)), Struct_3(75189u, 69203u))), 1u, Struct_3(_wgslsmith_add_u32(func_2(u_input.c, vec3<f32>(600f, 1623f, 658f)).x, 2064u | u_input.d), select(0u, 30378u, !global0.x)))));
    var var_1 = vec2<i32>(-1i) * -(vec2<i32>(-1i) * -abs(vec2<i32>(-44440i, u_input.c)));
    let var_2 = vec4<bool>(true, global0.x, !(!any(global0.zw)), !global0.x);
    let var_3 = var_0.x;
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(round(894f)), _wgslsmith_f_op_f32(abs(var_0.x)));
    var var_5 = reverseBits(var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(~(~(~vec3<u32>(37952u, 0u, 94677u))), firstTrailingBit(_wgslsmith_div_vec3_u32(abs(vec3<u32>(u_input.d, u_input.d, 93612u)), vec3<u32>(u_input.d, u_input.a, u_input.a)))), ~(vec2<u32>(select(66162u, u_input.a, global0.x), firstTrailingBit(u_input.d)) & ~(vec2<u32>(u_input.b, 451u) & vec2<u32>(u_input.b, u_input.a))), _wgslsmith_f_op_f32(var_4.x - _wgslsmith_f_op_f32(exp2(var_0.x))));
}

