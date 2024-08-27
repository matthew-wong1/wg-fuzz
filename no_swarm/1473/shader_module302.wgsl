struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: bool,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8>;

var<private> global1: array<Struct_2, 11>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_2, arg_1: u32) -> f32 {
    global0 = array<f32, 8>();
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0.d.x, _wgslsmith_dot_vec2_u32(arg_0.d.yy | vec2<u32>(83633u, arg_0.d.x), arg_0.d.zz | vec2<u32>(arg_0.d.x, arg_0.d.x))), 8u)] + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) - _wgslsmith_f_op_f32(-1224f * 1063f))), global0[_wgslsmith_index_u32(9409u, 8u)]));
}

fn func_3() -> i32 {
    var var_0 = select(vec4<bool>(4294967295u > ~_wgslsmith_sub_u32(u_input.c, 19370u), true, all(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, true, true))), true), vec4<bool>((firstTrailingBit(u_input.c) <= 78241u) & all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true))), true, !(!select(false, true, true)), true), vec4<bool>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c, 8u)]) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(703f, 820f)) * global0[_wgslsmith_index_u32(u_input.c, 8u)]), true, false, any(vec3<bool>(true, false, false)) || false));
    var var_1 = ~abs(abs(vec3<u32>(_wgslsmith_add_u32(u_input.c, 44328u), 20053u, u_input.c)));
    global0 = array<f32, 8>();
    let var_2 = Struct_2(global0[_wgslsmith_index_u32(u_input.c, 8u)], ~vec2<u32>(~var_1.x | abs(17625u), 4294967295u), true, _wgslsmith_add_vec3_u32(max(vec3<u32>(6927u, 0u, var_1.x), _wgslsmith_add_vec3_u32(vec3<u32>(var_1.x, 1u, var_1.x), vec3<u32>(0u, var_1.x, var_1.x))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 0u, var_1.x), vec3<u32>(u_input.c, 4294967295u, 1u), vec3<u32>(1u, 25719u, u_input.c))) << (firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, var_1.x, 0u), firstLeadingBit(vec3<u32>(var_1.x, 16560u, u_input.c)))) % vec3<u32>(32u)));
    var_0 = !select(!vec4<bool>(var_2.c || false, false, var_0.x | var_0.x, !var_2.c), select(select(!vec4<bool>(var_0.x, true, true, false), vec4<bool>(var_2.c, var_2.c, true, true), select(vec4<bool>(true, var_2.c, true, true), vec4<bool>(var_2.c, false, false, var_2.c), true)), vec4<bool>(true, true, true, var_2.c), false), !(!(!vec4<bool>(var_2.c, false, var_2.c, false))));
    return reverseBits(~_wgslsmith_dot_vec4_i32(-vec4<i32>(1i, 5786i, -1i, 30852i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-6917i, 2147483647i, 0i, 1i), -vec4<i32>(u_input.b.x, -38744i, u_input.b.x, -27537i), vec4<i32>(41959i, u_input.a, u_input.a, 26586i))));
}

fn func_2() -> u32 {
    global0 = array<f32, 8>();
    var var_0 = _wgslsmith_sub_vec4_i32(~vec4<i32>(-19618i, u_input.a, func_3(), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(55538i, 1529i), u_input.b), u_input.b)), reverseBits(vec4<i32>(max(-u_input.b.x, u_input.b.x), -18837i, u_input.b.x, 2147483647i)));
    let var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(reverseBits(1i), ~2147483647i, var_0.x), var_0.wzy);
    var_0 = _wgslsmith_clamp_vec4_i32(reverseBits(~_wgslsmith_mult_vec4_i32(vec4<i32>(0i, -21967i, -1i, u_input.a) & vec4<i32>(var_1.x, u_input.b.x, var_0.x, 2147483647i), vec4<i32>(2147483647i, -1i, -1i, u_input.b.x))), _wgslsmith_div_vec4_i32(-select(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, u_input.b.x, -25968i, 2147483647i), vec4<i32>(-1i, var_1.x, u_input.b.x, 48478i), vec4<i32>(-17193i, var_1.x, 1i, -1i)), vec4<i32>(u_input.b.x, -15038i, -6071i, 21019i), false), vec4<i32>(-(~1i), u_input.b.x, _wgslsmith_sub_i32(select(u_input.b.x, var_1.x, false), i32(-1i) * -38066i), _wgslsmith_clamp_i32(u_input.b.x, 17841i, _wgslsmith_mod_i32(u_input.b.x, var_1.x)))), ~vec4<i32>(var_1.x, var_1.x | -var_0.x, 13545i, -(i32(-1i) * -2147483647i)));
    let var_2 = global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32((u_input.c ^ ~59597u) ^ u_input.c, _wgslsmith_sub_u32(u_input.c, ~(~10339u))), 11u)];
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    let var_1 = -2147483647i;
    global1 = array<Struct_2, 11>();
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(var_0, 8u)], global0[_wgslsmith_index_u32(u_input.c, 8u)])), _wgslsmith_f_op_f32(func_1(Struct_2(global0[_wgslsmith_index_u32(90014u, 8u)], vec2<u32>(var_0, u_input.c), true, vec3<u32>(89294u, u_input.c, 58032u)), var_0)))), vec2<u32>(1u, select(func_2(), _wgslsmith_dot_vec2_u32(~vec2<u32>(var_0, 4294967295u), vec2<u32>(u_input.c, var_0)), !(0u > u_input.c))), true, _wgslsmith_clamp_vec3_u32(abs(abs(~vec3<u32>(var_0, 0u, var_0))), ~vec3<u32>(_wgslsmith_sub_u32(4294967295u, 4294967295u), 15522u, countOneBits(28771u)), select(vec3<u32>(var_0, ~u_input.c, 52091u), vec3<u32>(u_input.c, 1u, _wgslsmith_add_u32(1u, 5272u)), select(true, false, true) || true)));
    var var_3 = min(var_2.d.x, u_input.c);
    let var_4 = var_2;
    let var_5 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(4294967295u, 8u)])))) + _wgslsmith_f_op_f32(select(var_4.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.a))), var_2.b.x < firstTrailingBit(u_input.c)))), vec2<u32>(_wgslsmith_dot_vec3_u32(~_wgslsmith_clamp_vec3_u32(var_4.d, vec3<u32>(var_4.d.x, var_2.b.x, var_4.b.x), vec3<u32>(var_4.b.x, var_2.d.x, var_0)), vec3<u32>(0u, 1u, 1u) >> (vec3<u32>(var_0, 0u, var_2.d.x) % vec3<u32>(32u))), 28629u), all(vec2<bool>(false, all(!vec3<bool>(var_2.c, var_4.c, var_4.c)))), abs(vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(5383u, 0u, 34380u, var_0), vec4<u32>(var_2.d.x, var_0, 72145u, u_input.c)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, var_2.b.x, 4294967295u, 48909u), vec4<u32>(u_input.c, 34002u, 45038u, var_2.b.x))), abs(_wgslsmith_clamp_u32(4294967295u, 1u, 1u)), var_0)));
    var var_6 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -163f) - _wgslsmith_f_op_f32(-1334f * var_5.a)), var_4.a, _wgslsmith_f_op_f32(step(var_2.a, _wgslsmith_div_f32(var_2.a, -723f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<i32>(2274i, _wgslsmith_clamp_i32(2147483647i, min(u_input.b.x, u_input.b.x), ~u_input.b.x), 1i, ~(~u_input.a)), firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, var_1, -790i, u_input.a), vec4<i32>(2147483647i, -3269i, -33062i, 38284i)) | -vec4<i32>(1i, 17201i, 0i, var_1)), all(select(!vec2<bool>(var_4.c, true), !vec2<bool>(var_4.c, true), select(false, true, true)))));
}

