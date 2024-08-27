struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec4<f32>,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1() -> i32 {
    var var_0 = !all(vec4<bool>(-2147483647i < _wgslsmith_dot_vec3_i32(vec3<i32>(16892i, 8955i, 0i), vec3<i32>(22753i, 26695i, 0i)), true, true, true));
    var_0 = all(!vec4<bool>(true, all(vec3<bool>(true, true, true)), false, true));
    var_0 = -2147483647i == abs(_wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -1i, _wgslsmith_sub_i32(-2147483647i, 0i)), max(firstLeadingBit(vec2<i32>(-8043i, -1i)), max(vec2<i32>(2147483647i, -26055i), vec2<i32>(-29729i, -1i)))));
    return -(~(~(-1i)));
}

fn func_3() -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-627f * _wgslsmith_f_op_f32(ceil(1246f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1453f - -926f)))));
    let var_1 = Struct_3(vec3<i32>(1i, 1i, firstTrailingBit(_wgslsmith_sub_i32(firstTrailingBit(-2147483647i), ~15057i))), any(select(vec4<bool>(false, u_input.a <= u_input.a, true, true), vec4<bool>(false, true, all(vec3<bool>(false, true, true)), true), vec4<bool>(true, false, false, true))), true);
    var var_2 = Struct_2(vec3<f32>(1f, _wgslsmith_f_op_f32(abs(1f)), _wgslsmith_f_op_f32(round(1f))), 27916u, -664f);
    var var_3 = select(!(!(!(!vec3<bool>(var_1.b, var_1.b, false)))), vec3<bool>(!any(select(vec2<bool>(var_1.b, false), vec2<bool>(true, var_1.c), false)), var_1.b, !var_1.c), vec3<bool>(any(vec3<bool>(false, true, all(vec2<bool>(true, var_1.c)))), true, true));
    let var_4 = reverseBits(u_input.b.zwz & vec3<u32>(u_input.b.x, 95093u >> (var_2.b % 32u), ~var_2.b));
    return u_input.b.zx;
}

fn func_4(arg_0: bool, arg_1: vec2<u32>) -> vec4<bool> {
    return !vec4<bool>(arg_1.x > u_input.b.x, arg_0 && arg_0, arg_0, arg_0);
}

fn func_2(arg_0: Struct_1) -> vec3<i32> {
    var var_0 = 23359u;
    let var_1 = select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec3<bool>(any(vec2<bool>(true, true)), true, true)) & true);
    var var_2 = !var_1.x;
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-865f, 1225f))), 1438f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -645f)))), 38772u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1195f + _wgslsmith_f_op_f32(-727f * 144f)) - _wgslsmith_f_op_f32(abs(-930f))));
    let var_4 = select(!func_4(true, func_3()), !vec4<bool>(!(true == var_1.x), true, var_1.x, any(select(vec4<bool>(false, true, var_1.x, false), vec4<bool>(var_1.x, var_1.x, false, true), false))), func_4(!all(vec2<bool>(var_1.x, var_1.x)), vec2<u32>(var_3.b, abs(var_3.b) & firstTrailingBit(var_3.b))));
    return -_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(arg_0.c, 2147483647i), arg_0.b, -(~(-1i))), vec3<i32>(arg_0.c, 1i, i32(-1i) * -1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(~_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_div_i32(2147483647i, 12890i), func_1(), 31784i, _wgslsmith_sub_i32(-13309i, 43213i)), vec4<i32>(-19238i, firstTrailingBit(23725i), -1i, -1i)));
    var_0 = vec4<i32>(var_0.x, firstTrailingBit(1i), 1i, var_0.x);
    let var_1 = Struct_3(func_2(Struct_1(vec4<u32>(u_input.a, _wgslsmith_sub_u32(u_input.a, 1u), 0u, 52222u), var_0.x, 28527i, ~(u_input.b.xzx | vec3<u32>(35378u, 13668u, u_input.b.x)))), all(vec2<bool>(true, all(vec4<bool>(true, false, true, false)) && true)), func_4(all(vec3<bool>(true, true, true)), u_input.b.zw ^ (vec2<u32>(41912u, 0u) | _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.xx))).x);
    let var_2 = select(firstLeadingBit(u_input.b), ~countOneBits(abs(u_input.b)), any(func_4(var_1.c, _wgslsmith_mult_vec2_u32(u_input.b.wy, vec2<u32>(u_input.a, 0u))).ww)) ^ select(vec4<u32>(50295u, 3833u, ~19610u, u_input.a), ~vec4<u32>(func_3().x, u_input.b.x ^ u_input.b.x, 31536u, 4294967295u), func_4(!any(vec4<bool>(var_1.c, var_1.c, var_1.c, true)), vec2<u32>(~46662u, _wgslsmith_mult_u32(u_input.a, u_input.a))).x);
    var var_3 = Struct_1(~var_2, min(firstLeadingBit(func_1()), var_1.a.x >> (~reverseBits(u_input.a) % 32u)), _wgslsmith_dot_vec3_i32(-vec3<i32>(select(var_0.x, -12056i, var_1.b), var_1.a.x, ~var_0.x), vec3<i32>(~var_1.a.x, -9163i, var_1.a.x)), _wgslsmith_div_vec3_u32(select(_wgslsmith_mult_vec3_u32(vec3<u32>(var_2.x, u_input.a, var_2.x), vec3<u32>(u_input.a, 0u, 0u)), max(vec3<u32>(1u, var_2.x, u_input.b.x), vec3<u32>(var_2.x, 0u, 62239u)), select(vec3<bool>(var_1.b, false, false), vec3<bool>(false, var_1.b, var_1.b), vec3<bool>(true, false, var_1.b))), vec3<u32>(~32681u, ~65102u, u_input.a | var_2.x)) >> (vec3<u32>(func_3().x, _wgslsmith_dot_vec4_u32(var_2, vec4<u32>(var_2.x, 44069u, 27605u, 71628u) >> (vec4<u32>(48418u, var_2.x, var_2.x, u_input.b.x) % vec4<u32>(32u))), 1u) % vec3<u32>(32u)));
    var var_4 = _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-8217i, select(firstTrailingBit(var_1.a.x), -16500i, var_1.c), var_0.x, var_1.a.x), ~(-_wgslsmith_clamp_vec4_i32(vec4<i32>(-49532i, 0i, var_1.a.x, 4586i), vec4<i32>(var_0.x, var_1.a.x, var_3.b, var_0.x), vec4<i32>(-29054i, var_0.x, 37162i, var_1.a.x)))), abs(min(vec4<i32>(var_0.x, ~0i, -48988i, var_0.x), select(vec4<i32>(var_3.b, 1i, var_3.c, var_0.x), vec4<i32>(var_1.a.x, var_1.a.x, 1i, 55070i), var_1.b) << (vec4<u32>(u_input.b.x, 0u, u_input.a, 0u) % vec4<u32>(32u)))));
    var var_5 = var_1.a.x;
    let var_6 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - 915f)), _wgslsmith_f_op_f32(-436f - -1000f), 1000f), u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1200f))));
    var var_7 = ~(-vec3<i32>(~var_1.a.x, _wgslsmith_mult_i32(var_3.b, 33593i), ~0i) ^ var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(select(~vec4<u32>(13260u, var_2.x, var_6.b, 4294967295u) << (var_3.a % vec4<u32>(32u)), ~_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.b, var_3.a), var_3.a), !vec4<bool>(all(vec3<bool>(var_1.c, true, var_1.b)), true, !var_1.b, any(vec4<bool>(var_1.c, var_1.b, false, var_1.b)))), _wgslsmith_f_op_f32(f32(-1f) * -578f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-435f, -474f, var_6.c, var_6.c))) - vec4<f32>(_wgslsmith_f_op_f32(1000f + -918f), var_6.a.x, _wgslsmith_f_op_f32(step(-513f, var_6.c)), 204f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(975f, 1000f, 203f, var_6.a.x))))), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 0u, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(var_2, u_input.b), 48133u)), vec3<u32>(max(40821u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 849u, 50607u), vec3<u32>(4294967295u, var_3.d.x, var_3.d.x))), var_2.x, var_6.b & 1u)), _wgslsmith_add_i32(~_wgslsmith_mod_i32(2147483647i, var_3.c), -1i));
}

