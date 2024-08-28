struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<f32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = vec3<bool>(any(select(!select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(false, false)), any(vec3<bool>(false, true, true))))), max(u_input.a.x, u_input.a.x) == ~u_input.a.x, false);
    let var_1 = Struct_1(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1165f), -2011f), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(min(-1326f, 790f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1225f)) + _wgslsmith_f_op_f32(sign(-293f))) + -1576f), -480f), u_input.a.x, ~(~reverseBits(vec4<u32>(u_input.b.x, 11257u, u_input.c, 0u))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(2793f, var_1.a.x) * var_1.a.x), var_1.a.x) * _wgslsmith_f_op_f32(-1171f * _wgslsmith_f_op_f32(456f - var_1.a.x)));
    var var_3 = 4294967295u;
    let var_4 = vec3<i32>(~_wgslsmith_add_i32(u_input.a.x, u_input.a.x), u_input.a.x, -abs(_wgslsmith_div_i32(0i, -56316i)));
    return 1784f;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(317f, -1634f, -1072f, -992f))) - vec4<f32>(_wgslsmith_f_op_f32(772f - 1278f), _wgslsmith_f_op_f32(func_3()), 749f, -247f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(-772f)), _wgslsmith_f_op_f32(2519f - 1000f), _wgslsmith_f_op_f32(f32(-1f) * -720f), -890f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -482f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1521f, 274f))), 542f, _wgslsmith_f_op_f32(f32(-1f) * -2202f))));
    let var_1 = var_0.zwx;
    let var_2 = Struct_2(vec2<i32>(_wgslsmith_mod_i32(firstTrailingBit(2147483647i), min(~u_input.a.x, u_input.a.x)), 0i), Struct_1(_wgslsmith_f_op_vec4_f32(var_0 * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -200f, 768f, 428f) + vec4<f32>(var_0.x, var_0.x, var_1.x, 1831f)), _wgslsmith_f_op_vec4_f32(select(var_0, var_0, vec4<bool>(false, true, true, true)))))), -16745i, vec4<u32>(_wgslsmith_add_u32(u_input.b.x, u_input.c ^ u_input.b.x), ~(~u_input.b.x), 4294967295u, 99315u)));
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), var_1.x)), _wgslsmith_f_op_f32(max(var_2.b.a.x, _wgslsmith_f_op_f32(var_0.x + var_1.x))), -204f)), ~2147483647i, select(abs(~(~var_2.b.c)), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(abs(var_2.b.c), vec4<u32>(var_2.b.c.x, u_input.b.x, var_2.b.c.x, u_input.c)), ~vec4<u32>(37954u, var_2.b.c.x, var_2.b.c.x, 1u)), vec4<bool>(true, false, any(vec4<bool>(false, false, false, true)), any(vec4<bool>(false, true, false, true)))));
    var var_4 = ~(~14281i);
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-665f * -1298f), _wgslsmith_f_op_f32(362f - -220f))))), var_3.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) - _wgslsmith_f_op_f32(var_1.x - -1037f)), 1362f)), var_2.b.a.x), countOneBits(~var_2.b.b), min(abs(_wgslsmith_mult_vec4_u32(var_3.c, vec4<u32>(4294967295u, u_input.c, 74009u, 4294967295u))), var_3.c >> (vec4<u32>(abs(10681u), ~var_3.c.x, u_input.b.x, 47478u) % vec4<u32>(32u))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec2<f32>) -> Struct_2 {
    var var_0 = Struct_2(firstLeadingBit(-u_input.a.zz), arg_0);
    var_0 = Struct_2(_wgslsmith_mod_vec2_i32(var_0.a, _wgslsmith_mult_vec2_i32(~(vec2<i32>(20542i, var_0.a.x) ^ var_0.a), countOneBits(vec2<i32>(u_input.a.x, arg_0.b)))), func_2());
    var_0 = Struct_2(vec2<i32>(_wgslsmith_add_i32(-abs(var_0.a.x), var_0.b.b), firstLeadingBit(arg_0.b)), func_2());
    let var_1 = _wgslsmith_clamp_vec2_i32(~vec2<i32>(arg_1.b, _wgslsmith_mult_i32(~var_0.a.x, ~0i)), min(var_0.a, vec2<i32>(~1i, arg_1.b)), -max(~vec2<i32>(-21474i, 53750i), abs(~vec2<i32>(-1i, arg_1.b))));
    let var_2 = 841f;
    return Struct_2(var_0.a, arg_1);
}

fn func_1() -> vec3<bool> {
    let var_0 = func_4(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(847f)), -979f, _wgslsmith_f_op_f32(f32(-1f) * -620f), 1280f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(880f, -1000f, -1607f, -123f))), -2001i, reverseBits(~select(vec4<u32>(26036u, u_input.c, u_input.b.x, 4294967295u), vec4<u32>(u_input.c, 4294967295u, 15455u, 0u), false))), func_2(), vec4<bool>(false, all(vec4<bool>(false, true, true, true)), all(vec3<bool>(true, true, true)), false), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-280f, 531f) + vec2<f32>(-1920f, 583f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-948f, 210f))) - vec2<f32>(171f, -1255f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(517f, 843f), vec2<f32>(-1898f, -405f)))))));
    var var_1 = var_0.b;
    return vec3<bool>(!all(vec4<bool>(true, true, any(vec3<bool>(false, false, false)), true)), any(select(vec2<bool>(true, any(vec4<bool>(false, false, true, false))), vec2<bool>(10001i != var_1.b, u_input.a.x < 354i), select(vec2<bool>(true, false), vec2<bool>(true, true), false))), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), select(vec3<bool>(any(vec3<bool>(true, true, true)), true & (-2147483647i > u_input.a.x), false), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_1()), vec3<bool>(func_1().x, true, any(vec4<bool>(true, true, true, false))), vec3<bool>(all(vec2<bool>(true, true)), false, true))));
    var_0 = vec3<bool>(1u != _wgslsmith_sub_u32(39757u, select(u_input.b.x << (u_input.c % 32u), u_input.b.x, true)), true, true);
    let var_1 = ~32623u | reverseBits((8845u << (u_input.b.x % 32u)) >> (12062u % 32u));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(924f, -1144f, _wgslsmith_f_op_f32(-592f * -195f), -532f)))), max(_wgslsmith_mult_i32(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(7480i, u_input.a.x, -1i, u_input.a.x), vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x))) ^ u_input.a.x, u_input.a.x), _wgslsmith_add_vec4_u32(~vec4<u32>(1u, 2418u, 13825u, 4294967295u) ^ (vec4<u32>(19733u, u_input.b.x, u_input.b.x, 58103u) & vec4<u32>(4294967295u, u_input.c, var_1, var_1)), max(abs(vec4<u32>(107004u, 21725u, u_input.c, var_1)), vec4<u32>(55044u, var_1, var_1, u_input.c))) >> (abs((vec4<u32>(u_input.b.x, var_1, var_1, var_1) & vec4<u32>(0u, var_1, var_1, var_1)) & func_2().c) % vec4<u32>(32u)));
    let var_3 = func_4(Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-var_2.a), _wgslsmith_div_vec4_f32(var_2.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.x, var_2.a.x, -498f, 1870f) * var_2.a)))), countOneBits(countOneBits(u_input.a.x)) | -var_2.b, vec4<u32>(u_input.c, var_2.c.x, ~(~35939u), ~min(u_input.b.x, 4294967295u))), func_4(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1165f, var_2.a.x, var_2.a.x, -1076f)), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.a.zy, u_input.a.zz), _wgslsmith_mod_vec2_i32(u_input.a.yy, u_input.a.xz)), ~abs(var_2.c)), var_2, vec4<bool>(true, all(!vec3<bool>(var_0.x, true, var_0.x)), true, (var_0.x & var_0.x) & true), var_2.a.xy).b, !select(!vec4<bool>(var_0.x, var_0.x, false, true), select(!vec4<bool>(var_0.x, var_0.x, var_0.x, true), !vec4<bool>(var_0.x, true, true, false), select(vec4<bool>(false, true, false, var_0.x), vec4<bool>(var_0.x, false, true, true), vec4<bool>(false, false, var_0.x, true))), _wgslsmith_div_u32(4294967295u, var_2.c.x) <= ~var_1), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1924f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x - var_2.a.x)))));
    var var_4 = -1000f;
    var var_5 = ~var_3.b.c.x & _wgslsmith_mod_u32(~var_2.c.x, ~var_1);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_add_i32(-28267i, -var_2.b), _wgslsmith_div_i32(func_4(var_2, var_2, vec4<bool>(false, false, var_0.x, true), vec2<f32>(var_2.a.x, var_3.b.a.x)).a.x, ~var_2.b)) ^ max(_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, u_input.a.x), u_input.a.xy), var_3.a), ~abs(vec2<i32>(1i, var_2.b))), _wgslsmith_mod_i32(reverseBits(~(-2147483647i)), -(~1i)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-var_2.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1716f, var_2.a.x, var_2.a.x))))) - _wgslsmith_f_op_vec3_f32(func_2().a.xzx - var_3.b.a.xzw)), _wgslsmith_div_f32(-1299f, -2471f));
}

