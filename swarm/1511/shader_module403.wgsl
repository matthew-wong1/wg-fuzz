struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec4<i32>,
    e: vec2<bool>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_2) -> u32 {
    let var_0 = 36093i;
    var var_1 = (vec2<i32>(-1i) * -min(~vec2<i32>(arg_2.b.a, 25059i), vec2<i32>(var_0, u_input.b))) >> (vec2<u32>(29487u, ~_wgslsmith_mult_u32(arg_2.b.b, ~0u)) % vec2<u32>(32u));
    return firstTrailingBit(46530u);
}

fn func_4(arg_0: u32, arg_1: vec2<i32>, arg_2: bool) -> vec2<bool> {
    var var_0 = Struct_4(vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(arg_1, arg_1), arg_1 | arg_1), 1i, 1i, ~(-44452i | arg_1.x)) ^ ((-vec4<i32>(u_input.b, 1003i, arg_1.x, -18409i) & ~vec4<i32>(arg_1.x, u_input.b, arg_1.x, 52541i)) & -(~vec4<i32>(arg_1.x, u_input.b, -1i, u_input.b))), !select(!select(vec4<bool>(arg_2, arg_2, true, arg_2), vec4<bool>(arg_2, arg_2, arg_2, arg_2), vec4<bool>(arg_2, arg_2, true, arg_2)), vec4<bool>(true, !arg_2, false, !arg_2), !vec4<bool>(false, arg_2, true, arg_2)), -(~vec4<i32>(63631i, -49375i, ~arg_1.x, min(-7401i, u_input.c))));
    var_0 = Struct_4(~vec4<i32>(arg_1.x, ~(-2147483647i), _wgslsmith_dot_vec2_i32(arg_1, var_0.a.wy), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, var_0.a.x), -vec2<i32>(-1i, -2147483647i))), !(!select(var_0.b, var_0.b, false)), var_0.a);
    let var_1 = _wgslsmith_f_op_f32(-2240f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-659f)) * -1788f)) - -175f));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, 320f, -533f, var_1) + vec4<f32>(var_1, var_1, var_1, var_1)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1, 1343f, 682f, var_1), vec4<f32>(var_1, var_1, var_1, var_1))))))));
    let var_3 = Struct_1(u_input.c, min(select(1u << (~u_input.d.x % 32u), ~4294967295u ^ ~arg_0, true), _wgslsmith_div_u32(u_input.d.x, abs(7864u))));
    return !vec2<bool>(all(select(vec2<bool>(var_0.b.x, arg_2), !vec2<bool>(true, arg_2), var_0.b.yx)), var_0.b.x);
}

fn func_2(arg_0: vec4<i32>) -> Struct_3 {
    return Struct_3(Struct_1(((0i & u_input.c) >> (u_input.d.x % 32u)) << (u_input.a % 32u), ~4294967295u), ~u_input.d.x, Struct_1(2147483647i, 0u), -arg_0, !func_4(func_3(Struct_1(arg_0.x, u_input.a), vec2<bool>(true, true), Struct_2(u_input.d.x, Struct_1(-1i, 12599u))), vec2<i32>(58735i, -1i), all(vec3<bool>(true, true, true))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> Struct_2 {
    var var_0 = Struct_3(func_2(vec4<i32>(-arg_2.a ^ _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.a, 46445i, arg_0.c.a), vec3<i32>(0i, u_input.c, arg_2.a)), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(arg_0.d.xzw, arg_0.d.zxy), arg_0.d.x), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(arg_0.d.wz, arg_0.d.yx), vec2<i32>(1125i, 2147483647i)), ~_wgslsmith_dot_vec2_i32(arg_0.d.zz, vec2<i32>(2147483647i, arg_0.c.a)))).c, ~arg_0.a.b, func_2(vec4<i32>(arg_0.a.a, arg_1.a, 17046i, _wgslsmith_mod_i32(arg_0.c.a, 0i))).c, _wgslsmith_add_vec4_i32(abs(arg_0.d), reverseBits(~arg_0.d)), vec2<bool>(_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.a, 11647u), u_input.d.x) == 1u, true));
    var_0 = arg_0;
    var_0 = func_2(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(var_0.d.wzx, -arg_0.d.xzw), 44560i, _wgslsmith_mod_i32(arg_0.c.a, -6434i), 2147483647i), max(_wgslsmith_mod_vec4_i32(var_0.d, -vec4<i32>(0i, arg_1.a, 6109i, 1i)), -_wgslsmith_add_vec4_i32(vec4<i32>(-36520i, 21418i, 38615i, arg_2.a), var_0.d))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1022f, _wgslsmith_f_op_f32(min(407f, 271f)), _wgslsmith_f_op_f32(-502f * 990f), _wgslsmith_f_op_f32(ceil(-147f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-565f, _wgslsmith_f_op_f32(f32(-1f) * -1144f), -974f, -3205f))));
    var_0 = arg_0;
    return Struct_2(~(~arg_0.a.b), Struct_1(countOneBits(u_input.b) >> (1u % 32u), _wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 0u, arg_0.a.b, 0u), vec4<u32>(arg_0.b, u_input.a, 39194u, 98234u) ^ vec4<u32>(u_input.d.x, 0u, 4294967295u, 4294967295u)))));
}

fn func_1(arg_0: vec2<bool>) -> Struct_2 {
    return func_5(func_2(vec4<i32>(-2147483647i, u_input.b, max(_wgslsmith_mod_i32(u_input.b, 17001i), u_input.b), u_input.b)), Struct_1(_wgslsmith_mult_i32(func_2(_wgslsmith_mod_vec4_i32(vec4<i32>(-36996i, 26440i, u_input.c, u_input.b), vec4<i32>(u_input.b, u_input.b, 43240i, u_input.b))).a.a, _wgslsmith_mult_i32(i32(-1i) * -1i, 33536i)), ~(~u_input.a) ^ u_input.d.x), Struct_1(1i, ~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 4294967295u), u_input.d.xy), vec2<u32>(36977u, u_input.d.x) << (u_input.d.yz % vec2<u32>(32u)))), !arg_0.x);
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    let var_0 = reverseBits(vec3<i32>(_wgslsmith_sub_i32(~arg_0.b.a, 1i), -1i, u_input.c));
    var var_1 = true;
    var_1 = true;
    var var_2 = func_1(vec2<bool>(!(_wgslsmith_f_op_f32(trunc(396f)) < _wgslsmith_div_f32(-931f, 653f)), !func_2(vec4<i32>(60889i, u_input.b, u_input.b, var_0.x) ^ vec4<i32>(28287i, u_input.c, 2147483647i, 0i)).e.x));
    let var_3 = Struct_4(vec4<i32>(u_input.b, var_2.b.a, reverseBits(-22134i), -3841i), vec4<bool>(!(~1i != min(arg_0.b.a, -7844i)), false, all(vec3<bool>(false, true, true)), func_2(vec4<i32>(5898i, var_2.b.a | u_input.b, var_0.x, _wgslsmith_div_i32(1i, u_input.b))).e.x), -_wgslsmith_clamp_vec4_i32(vec4<i32>(countOneBits(2147483647i), -var_2.b.a, arg_0.b.a, _wgslsmith_mod_i32(41141i, arg_0.b.a)), vec4<i32>(-1i) * -vec4<i32>(arg_0.b.a, -1i, -14724i, 8783i), firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.a, -2147483647i, u_input.c, u_input.b), vec4<i32>(35129i, 2147483647i, 34609i, -20748i)))));
    return Struct_1(var_2.b.a, ~_wgslsmith_add_u32(abs(~u_input.d.x), 0u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_6(func_1(vec2<bool>(true, true)), Struct_1(~u_input.c ^ _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.c, u_input.b), vec3<i32>(1i, -1i, 1i)), u_input.d.x)), 34398u, Struct_1(u_input.b, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(6454u, u_input.d.x)), _wgslsmith_add_vec2_u32(u_input.d.yz, vec2<u32>(1u, u_input.a) | u_input.d.yz))), -(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, u_input.c, u_input.c, u_input.b) >> (vec4<u32>(u_input.d.x, u_input.a, 62255u, 15718u) % vec4<u32>(32u)), vec4<i32>(27524i, u_input.b, u_input.b, u_input.c)) >> (vec4<u32>(73297u, u_input.d.x, u_input.a, 1u) % vec4<u32>(32u))), func_2(vec4<i32>(-1i, -1i, 1i, abs(max(u_input.b, 44774i)))).e);
    var var_1 = _wgslsmith_f_op_f32(426f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    var_1 = -491f;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-303f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2040f - 321f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-410f, _wgslsmith_f_op_f32(round(-154f))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 417f))))));
    let var_2 = select(var_0.e.x, false, func_2(var_0.d).e.x);
    var var_3 = _wgslsmith_add_i32(var_0.a.a, u_input.c);
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -509f);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(func_1(func_4(36830u ^ var_0.a.b, _wgslsmith_div_vec2_i32(vec2<i32>(-30076i, 0i), vec2<i32>(-1i, -2147483647i)), select(var_0.e.x, false, false))).b.a, 36354i, func_6(func_1(vec2<bool>(false, false)), func_1(vec2<bool>(true, false)).b).a), vec4<u32>(~func_1(var_0.e).a, 1u, 48492u, u_input.a) | (vec4<u32>(_wgslsmith_div_u32(u_input.a, 4294967295u), 1u, 72796u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_0.a.b), vec2<u32>(0u, 16069u))) & (firstTrailingBit(vec4<u32>(u_input.d.x, var_0.a.b, 117116u, u_input.a)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, var_0.c.b, u_input.d.x, 56936u), vec4<u32>(31718u, u_input.d.x, 4294967295u, 22771u)) % vec4<u32>(32u)))), _wgslsmith_mult_i32(6671i, min(-467i, var_0.c.a)) & func_5(func_2(var_0.d), Struct_1(i32(-1i) * -5105i, u_input.a), var_0.c, !(u_input.c == 13944i)).b.a, ~abs(-_wgslsmith_clamp_vec3_i32(var_0.d.zxx, vec3<i32>(u_input.b, -1i, 5630i), var_0.d.zzx)), vec4<i32>(var_0.c.a, 27574i, -88870i, -80396i));
}

