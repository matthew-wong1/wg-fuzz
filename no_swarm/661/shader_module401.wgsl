struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec4<bool>,
    c: vec2<i32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 4> = array<Struct_4, 4>(Struct_4(false, vec4<bool>(false, true, false, true), vec2<i32>(-18924i, 8906i), false), Struct_4(false, vec4<bool>(false, true, false, true), vec2<i32>(i32(-2147483648), 41314i), false), Struct_4(false, vec4<bool>(false, false, false, true), vec2<i32>(i32(-2147483648), -18479i), false), Struct_4(true, vec4<bool>(false, false, false, true), vec2<i32>(2147483647i, -1i), false));

var<private> global1: vec3<bool>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>) -> vec2<f32> {
    global1 = !(!arg_0.yyy);
    let var_0 = global0[_wgslsmith_index_u32(56260u, 4u)];
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -975f) + 791f)));
    var_1 = -370f;
    let var_2 = any(vec4<bool>((u_input.b.x >> (~0u % 32u)) > var_0.c.x, var_0.d, all(vec3<bool>(true, any(vec3<bool>(true, true, var_0.a)), true)), !(!var_0.d || (u_input.a > u_input.b.x))));
    return _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 589f)))));
}

fn func_2() -> vec3<bool> {
    let var_0 = Struct_4(true, vec4<bool>(any(vec2<bool>(true, true)), select(global1.x, true | (u_input.a < u_input.b.x), true), !global1.x, all(global1.zx)), u_input.b.yz, !all(global1.xy));
    let var_1 = ~4294967295u;
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-480f, 340f))) - _wgslsmith_f_op_vec2_f32(func_3(var_0.b))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1303f, -435f)))) - vec2<f32>(1f, 1f)), Struct_1(~(~1u), _wgslsmith_add_vec4_i32(~vec4<i32>(0i, 27207i, 1i, u_input.b.x), ~_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.c.x, 20610i, u_input.b.x, var_0.c.x), vec4<i32>(var_0.c.x, u_input.a, -2147483647i, u_input.b.x))), firstLeadingBit(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-37933i, var_0.c.x, var_0.c.x, 19591i), vec4<i32>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x)), 1i)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_vec2_f32(func_3(!vec4<bool>(global1.x, var_0.a, false, false))).x)), -129f), Struct_1(var_1, vec4<i32>(17109i, ~(~u_input.a), u_input.b.x, firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -1i, var_0.c.x), vec3<i32>(u_input.b.x, -28599i, u_input.b.x)))), abs(vec2<i32>(-25509i, ~var_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(115f)), _wgslsmith_f_op_f32(f32(-1f) * -726f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1338f)))), max(var_1, firstTrailingBit(~var_1 >> (131026u % 32u))));
    global0 = array<Struct_4, 4>();
    return var_0.b.wwx;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: vec2<f32>) -> vec4<f32> {
    global1 = func_2();
    global1 = !select(vec3<bool>(all(!vec4<bool>(false, false, global1.x, false)), !(!global1.x), select(all(vec4<bool>(global1.x, global1.x, false, true)), global1.x, func_2().x)), vec3<bool>(-2159f > _wgslsmith_f_op_f32(max(-139f, arg_2.x)), false, false), arg_0.x <= 0u);
    var var_0 = Struct_2(_wgslsmith_div_vec2_f32(arg_2, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2) * vec2<f32>(arg_2.x, 376f))))), Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 66834u), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.x, 4294967295u), ~arg_0.zx)), vec4<i32>(-1i, 1i, 1i, -29884i), _wgslsmith_sub_vec2_i32(vec2<i32>(countOneBits(u_input.b.x), 50848i), firstLeadingBit(vec2<i32>(1i, u_input.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x + -1283f) - 1000f)), _wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_2.x, arg_2.x, global1.x)) - _wgslsmith_f_op_f32(-arg_2.x)))), Struct_1(1u, firstTrailingBit(-(~vec4<i32>(0i, -1i, u_input.b.x, 47381i))), arg_1 << (arg_0.zx % vec2<u32>(32u)), arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2.x + -455f))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.x))))), _wgslsmith_mult_u32(min(arg_0.x, 50405u), 107053u));
    global1 = vec3<bool>(false, global1.x, all(vec4<bool>(global1.x || all(global1.yx), 4294967295u < _wgslsmith_div_u32(0u, arg_0.x), false, false)));
    let var_1 = global1.x;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-625f, 1000f, var_0.a.x, var_0.b.d)), vec4<f32>(-656f, -1891f, -962f, 692f))))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: f32, arg_2: u32) -> vec4<bool> {
    var var_0 = Struct_2(arg_0.wy, Struct_1(~33047u, abs(vec4<i32>(2147483647i, _wgslsmith_mod_i32(u_input.a, 0i), _wgslsmith_dot_vec2_i32(u_input.b.xy, u_input.b.zy), ~u_input.a)), -vec2<i32>(u_input.a, u_input.a) & u_input.b.zx, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1))), 719f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-397f + _wgslsmith_f_op_f32(f32(-1f) * -1190f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.x, -462f))))), Struct_1(4294967295u, _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.b.x, 6444i, -1i), vec4<i32>(0i, u_input.b.x, u_input.b.x, u_input.a)), vec4<i32>(u_input.a, u_input.b.x, u_input.a, u_input.b.x)), vec4<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(9468i, 2147483647i, 46073i)), u_input.a, u_input.b.x)), vec2<i32>(~(~2147483647i), u_input.a), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(1100f, 957f)))))), -294f), _wgslsmith_div_u32(~(arg_2 >> (min(0u, arg_2) % 32u)), _wgslsmith_add_u32(~100571u, 1u >> ((arg_2 >> (arg_2 % 32u)) % 32u))));
    global1 = vec3<bool>(!global1.x, func_2().x, (i32(-1i) * -select(var_0.b.c.x, var_0.b.c.x, false)) > 28213i);
    var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(arg_1, arg_1)))) * var_0.c.e), arg_0.x), var_0.b, Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, arg_2) ^ vec2<u32>(var_0.d, 60209u), ~vec2<u32>(62183u, 39536u)), _wgslsmith_mod_vec2_u32(abs(vec2<u32>(arg_2, 46640u)), vec2<u32>(0u, 1u))), select(-vec4<i32>(-1i, 2147483647i, 0i, var_0.c.c.x), ~vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, u_input.a), select(select(vec4<bool>(global1.x, global1.x, global1.x, false), vec4<bool>(false, global1.x, true, true), vec4<bool>(global1.x, true, global1.x, global1.x)), !vec4<bool>(true, false, global1.x, global1.x), true)), abs(select(u_input.b.zz, _wgslsmith_add_vec2_i32(var_0.b.c, var_0.c.b.zw), select(vec2<bool>(global1.x, true), vec2<bool>(global1.x, false), global1.xz))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x * 625f) + _wgslsmith_f_op_f32(round(673f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-1236f, -396f)), _wgslsmith_f_op_f32(select(arg_1, var_0.a.x, global1.x)))))), 39103u);
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(arg_0.yw + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 887f)), arg_0.wy, func_2().xz))))), var_0.c, Struct_1(_wgslsmith_clamp_u32(~var_0.c.a, var_0.b.a, var_0.c.a), reverseBits(var_0.b.b), -vec2<i32>(-2147483647i, u_input.a & 69633i), 305f, arg_1), 1u);
    global1 = func_2();
    return vec4<bool>(any(!(!select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, global1.x, true), vec3<bool>(true, global1.x, global1.x)))), var_0.b.b.x == countOneBits(firstTrailingBit(4832i)), ~_wgslsmith_dot_vec2_i32(~var_1.c.b.wx, var_0.b.c | u_input.b.xx) <= ~(-var_0.b.c.x | abs(var_1.c.b.x)), false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 4>();
    var var_0 = ~vec2<u32>(2023u, abs(~46520u));
    global1 = vec3<bool>(global1.x, true, any(func_4(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(func_1(vec3<u32>(136710u, 1u, 4294967295u), u_input.b.xy, vec2<f32>(696f, -310f))))), _wgslsmith_f_op_f32(1860f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), 4294967295u)));
    let var_1 = ~(~(~(~var_0.x)));
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-517f, -748f) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_3(vec4<bool>(false, false, global1.x, false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1120f, -922f) * vec2<f32>(525f, -1897f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-303f, -1640f) * vec2<f32>(-1035f, -283f))), false)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-401f, 176f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-587f, -792f))))));
    var var_3 = _wgslsmith_f_op_f32(-var_2.x);
    var var_4 = Struct_4(global1.x, !vec4<bool>(true, false, true, select(true, any(vec3<bool>(global1.x, true, global1.x)), !global1.x)), -abs(vec2<i32>(min(u_input.a, 2147483647i), u_input.a)), func_2().x);
    let x = u_input.a;
    s_output = StorageBuffer(max(vec4<i32>(4696i, -735i, u_input.b.x, var_4.c.x), firstTrailingBit(_wgslsmith_sub_vec4_i32(~vec4<i32>(var_4.c.x, 32099i, -30169i, 18255i), vec4<i32>(0i, var_4.c.x, u_input.b.x, u_input.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(vec4<bool>(true || var_4.b.x, func_2().x, false, global1.x))).x * var_2.x));
}

