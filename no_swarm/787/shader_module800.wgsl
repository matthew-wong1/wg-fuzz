struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: u32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: bool,
}

struct Struct_3 {
    a: vec2<bool>,
    b: bool,
    c: Struct_2,
    d: u32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(true, vec4<i32>(i32(-2147483648), 0i, 10215i, -43443i), 12093u, vec4<i32>(38013i, 19617i, 20635i, -21498i)), Struct_1(true, vec4<i32>(-1i, -1i, 28445i, 2147483647i), 76580u, vec4<i32>(-3208i, i32(-2147483648), -70306i, -14497i)), Struct_1(true, vec4<i32>(-20520i, 0i, i32(-2147483648), i32(-2147483648)), 34046u, vec4<i32>(-54557i, 2147483647i, 9278i, 2147483647i)), Struct_1(true, vec4<i32>(2147483647i, 2147483647i, -18345i, i32(-2147483648)), 3232u, vec4<i32>(23783i, 8935i, 23209i, 1i)));

var<private> global1: Struct_3 = Struct_3(vec2<bool>(false, false), false, Struct_2(vec4<i32>(i32(-2147483648), 51653i, 0i, -1i), vec4<u32>(74353u, 1u, 40556u, 23206u), true), 0u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: f32) -> u32 {
    global1 = Struct_3(vec2<bool>(!(!arg_0.b.a && true), true), global1.b, arg_0.c.c, firstLeadingBit(arg_1.x));
    var var_0 = Struct_2(select(vec4<i32>(arg_0.b.d.x & firstTrailingBit(-1i), abs(-arg_0.c.c.a.x), 1i, abs(-4017i << (global1.c.b.x % 32u))), vec4<i32>(-5644i, arg_0.b.d.x, max(arg_0.c.c.a.x & global1.c.a.x, select(global1.c.a.x, arg_0.c.c.a.x, false)), firstLeadingBit(1i)), !arg_0.b.a), max(select(vec4<u32>(global1.c.b.x, global1.d, 40293u, 0u) | ~global1.c.b, arg_0.c.c.b, !vec4<bool>(arg_0.b.a, false, false, arg_0.b.a)), _wgslsmith_mult_vec4_u32(arg_0.c.c.b, global1.c.b)), true);
    global0 = array<Struct_1, 4>();
    var var_1 = arg_0.c;
    var var_2 = firstLeadingBit(~_wgslsmith_clamp_u32(0u, u_input.a.x, var_1.c.b.x)) >> (arg_1.x % 32u);
    return 22366u;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool) -> f32 {
    var var_0 = Struct_4(!global1.a, global0[_wgslsmith_index_u32(4294967295u, 4u)], Struct_3(global1.a, true, global1.c, 17737u));
    let var_1 = _wgslsmith_clamp_i32(-2147483647i, ~(~var_0.c.c.a.x), 1i);
    let var_2 = vec3<i32>(~(~0i), ~arg_1.b.x, arg_1.b.x);
    var_0 = Struct_4(global1.a, global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(arg_0.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 7859u, global1.c.b.x), _wgslsmith_mult_vec4_u32(global1.c.b, arg_0.b))), 4u)], Struct_3(!vec2<bool>(any(vec2<bool>(arg_2, var_0.a.x)), true), arg_2, global1.c, ~countOneBits(35530u & u_input.a.x)));
    var_0 = Struct_4(!vec2<bool>(true, var_0.c.c.c), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~firstTrailingBit(4294967295u)), _wgslsmith_dot_vec3_u32(min(~vec3<u32>(35295u, u_input.a.x, arg_1.c), ~global1.c.b.wxz), abs(var_0.c.c.b.yzx))), 4u)], var_0.c);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(805f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1174f))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-1782f)), _wgslsmith_f_op_f32(ceil(-299f)), false))));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<u32>) -> Struct_2 {
    let var_0 = ~(_wgslsmith_mod_vec2_i32(~abs(global1.c.a.yy), arg_0.a.yw) | max(-_wgslsmith_mult_vec2_i32(vec2<i32>(4690i, -1i), arg_0.a.zz), vec2<i32>(arg_0.a.x, -1i)));
    global0 = array<Struct_1, 4>();
    var var_1 = global1.c.a;
    let var_2 = arg_0;
    var var_3 = Struct_3(global1.a, _wgslsmith_f_op_f32(func_4(global1.c, Struct_1(true, -vec4<i32>(var_0.x, -1i, var_0.x, -1i), func_3(Struct_4(global1.a, global0[_wgslsmith_index_u32(global1.c.b.x, 4u)], Struct_3(vec2<bool>(arg_0.c, arg_0.c), var_2.c, Struct_2(vec4<i32>(5091i, 40453i, -2147483647i, var_2.a.x), global1.c.b, global1.a.x), global1.c.b.x)), arg_0.b.xx, -529f), var_2.a), any(select(vec3<bool>(false, false, arg_0.c), vec3<bool>(var_2.c, false, true), false)))) >= -793f, Struct_2(~_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, global1.c.a.x, global1.c.a.x, var_2.a.x), vec4<i32>(var_0.x, var_1.x, 0i, var_2.a.x)), vec4<u32>(27176u, firstTrailingBit(_wgslsmith_mult_u32(0u, global1.d)), 19030u, 4294967295u), arg_0.c != true), 0u);
    return Struct_2(-(~_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(global1.c.a.x, var_1.x, -1i, var_0.x)), _wgslsmith_mult_vec4_i32(global1.c.a, global1.c.a), global1.c.a)), vec4<u32>(_wgslsmith_mult_u32(38836u, _wgslsmith_mult_u32(var_2.b.x << (arg_0.b.x % 32u), ~global1.c.b.x)), (arg_0.b.x | min(global1.d, var_2.b.x)) ^ 0u, select(~var_2.b.x >> (6594u % 32u), u_input.a.x << (~1u % 32u), var_3.b || !var_3.a.x), ~(~(~arg_1.x))), false);
}

fn func_5(arg_0: Struct_2, arg_1: u32) -> u32 {
    return func_2(Struct_2(-vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 2415i, global1.c.a.x, global1.c.a.x), vec4<i32>(33810i, 21498i, arg_0.a.x, arg_0.a.x)), -2147483647i, ~global1.c.a.x, arg_0.a.x), vec4<u32>(0u, arg_1, func_3(Struct_4(global1.a, Struct_1(arg_0.c, vec4<i32>(-2147483647i, -1i, -1i, global1.c.a.x), arg_1, global1.c.a), Struct_3(vec2<bool>(global1.b, arg_0.c), true, arg_0, 1u)), _wgslsmith_add_vec2_u32(global1.c.b.yw, arg_0.b.zx), _wgslsmith_div_f32(314f, -925f)), ~1u), false), global1.c.b.xxz).b.x;
}

fn func_1(arg_0: f32) -> Struct_3 {
    global0 = array<Struct_1, 4>();
    let var_0 = false;
    global1 = Struct_3(global1.a, any(!(!vec3<bool>(var_0, global1.c.c, true))), global1.c, min(func_5(func_2(global1.c, _wgslsmith_add_vec3_u32(global1.c.b.yxz, vec3<u32>(u_input.a.x, global1.c.b.x, 0u))), _wgslsmith_mod_u32(min(50172u, global1.c.b.x), 29352u)), _wgslsmith_mod_u32(~u_input.a.x, abs(u_input.a.x) | _wgslsmith_add_u32(40495u, u_input.a.x))));
    global1 = Struct_3(!vec2<bool>(var_0, global1.b), false, global1.c, func_2(Struct_2(vec4<i32>(-2147483647i, -global1.c.a.x, _wgslsmith_mod_i32(0i, global1.c.a.x), ~global1.c.a.x), global1.c.b, false), ~u_input.a >> (u_input.a % vec3<u32>(32u))).b.x);
    global1 = Struct_3(global1.a, true, global1.c, reverseBits(~u_input.a.x));
    return Struct_3(!select(!vec2<bool>(false, var_0), vec2<bool>(var_0, true), any(vec2<bool>(var_0, global1.b))), !((u_input.a.x & (u_input.a.x >> (global1.d % 32u))) <= 9456u), Struct_2(abs(reverseBits(vec4<i32>(global1.c.a.x, 32526i, global1.c.a.x, global1.c.a.x) >> (global1.c.b % vec4<u32>(32u)))), firstTrailingBit(global1.c.b), false), _wgslsmith_add_u32(min(6454u, reverseBits(func_5(Struct_2(global1.c.a, vec4<u32>(4537u, 9678u, u_input.a.x, 0u), global1.b), global1.c.b.x))), 22401u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(1634f)), _wgslsmith_f_op_f32(-1000f * 331f), global1.a.x && false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(221f + 149f) + _wgslsmith_f_op_f32(f32(-1f) * -716f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -373f), 1f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-348f, _wgslsmith_f_op_f32(404f + 1719f), _wgslsmith_f_op_f32(round(-228f))))));
    var var_1 = func_1(_wgslsmith_f_op_f32(min(var_0.x, var_0.x)));
    global0 = array<Struct_1, 4>();
    var_1 = Struct_3(vec2<bool>(all(!select(vec4<bool>(var_1.c.c, var_1.c.c, false, global1.b), vec4<bool>(true, global1.c.c, var_1.c.c, true), vec4<bool>(true, false, var_1.c.c, true))), true), false, func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x)))).c, _wgslsmith_sub_u32(12636u, var_1.d));
    var var_2 = func_2(global1.c, vec3<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4957u, var_1.c.b.x, 1u), u_input.a), global1.d), ~_wgslsmith_add_u32(_wgslsmith_mult_u32(var_1.c.b.x, 0u), ~var_1.c.b.x), 1005u)).a;
    let var_3 = Struct_2(var_1.c.a, countOneBits(select(vec4<u32>(_wgslsmith_div_u32(global1.d, u_input.a.x), 61846u, 0u, var_1.c.b.x), vec4<u32>(_wgslsmith_div_u32(u_input.a.x, 32798u), ~0u, _wgslsmith_mod_u32(84428u, 24256u), global1.c.b.x), false)), select(global1.c.c, func_1(1352f).b, 25043i < _wgslsmith_div_i32(_wgslsmith_mult_i32(0i, var_2.x), 0i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.yy) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1064f, 1722f)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 879f)))))), global1.c.a.ywx, global1.c.a.xyy);
}

