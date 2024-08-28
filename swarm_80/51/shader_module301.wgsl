struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: f32,
    c: f32,
    d: Struct_2,
    e: bool,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_clamp_u32(~(~u_input.b.x), 0u, u_input.b.x)), true, u_input.a.x);
    let var_1 = 1u;
    let var_2 = Struct_4(!select(vec4<bool>(true, var_0.b | false, true, true), !vec4<bool>(var_0.b, var_0.b, true, var_0.b), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -844f))), _wgslsmith_f_op_f32(-539f * 751f), true))), _wgslsmith_f_op_f32(select(1349f, _wgslsmith_f_op_f32(f32(-1f) * -935f), var_0.b)), Struct_2(var_0.a, ~_wgslsmith_clamp_u32(var_0.a.a, var_0.a.a, var_0.a.a) < ~1u, ~(~reverseBits(var_0.c))), !(_wgslsmith_mult_i32(select(var_0.c, u_input.a.x, var_0.b), 1i) >= _wgslsmith_dot_vec4_i32(u_input.a, -vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))));
    var_0 = Struct_2(var_0.a, true, _wgslsmith_mod_i32(4056i, ~(-23635i)));
    let var_3 = -2147483647i;
    return var_1 | (~0u & (~_wgslsmith_mod_u32(var_0.a.a, var_1) << (1u % 32u)));
}

fn func_2(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = Struct_5(select(vec3<u32>(53782u, arg_0.a, arg_0.a), ~(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, arg_0.a, 41859u), vec3<u32>(7579u, 2643u, 61669u))), !select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), vec3<bool>(false, true, true), true)));
    var_0 = Struct_5(_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_div_u32(~1u, countOneBits(4294967295u)), ~4294967295u, _wgslsmith_mult_u32(func_3(), abs(1u))), ~var_0.a));
    var_0 = Struct_5(~var_0.a);
    let var_1 = Struct_4(vec4<bool>(false, any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), false, true), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + -243f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1446f + 2507f)))), any(select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), true), vec4<bool>(true, false, true, true))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(1214f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(670f + 237f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1876f, -278f))))), Struct_2(arg_0, !(any(vec4<bool>(false, false, false, false)) | true), 0i), true);
    var_0 = Struct_5(reverseBits(vec3<u32>(0u, 4294967295u, ~(u_input.d.x ^ 4180u))));
    return var_1.a;
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: Struct_5) -> Struct_2 {
    let var_0 = arg_2;
    let var_1 = -793f;
    let var_2 = ~min(vec3<i32>(0i, i32(-1i) * -25115i, reverseBits(2147483647i)) ^ u_input.a.yww, vec3<i32>(_wgslsmith_add_i32(i32(-1i) * -2147483647i, 14240i >> (arg_1.d.a.a % 32u)), 2147483647i, -21828i));
    let var_3 = _wgslsmith_clamp_u32(4294967295u, ~(~u_input.c), 23519u);
    let var_4 = var_0;
    return Struct_2(Struct_1(~var_3), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -546f), -275f)) < -248f, var_2.x);
}

fn func_1(arg_0: vec2<f32>) -> Struct_3 {
    var var_0 = func_4(1i, Struct_4(func_2(Struct_1(u_input.b.x)), arg_0.x, 825f, Struct_2(Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(66683u, u_input.d.x, 1u), vec3<u32>(u_input.c, u_input.b.x, 11426u))), any(vec2<bool>(true, true)), u_input.a.x), all(vec2<bool>(true, true))), Struct_5(~(~vec3<u32>(59892u, 1u, u_input.b.x))));
    var_0 = func_4(var_0.c, Struct_4(select(func_2(func_4(25347i, Struct_4(vec4<bool>(var_0.b, var_0.b, var_0.b, false), arg_0.x, 1910f, Struct_2(Struct_1(300u), true, var_0.c), false), Struct_5(vec3<u32>(5412u, 3110u, var_0.a.a))).a), !(!vec4<bool>(true, var_0.b, var_0.b, var_0.b)), select(vec4<bool>(true, var_0.b, var_0.b, var_0.b), !vec4<bool>(var_0.b, true, false, var_0.b), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x))), arg_0.x, Struct_2(var_0.a, _wgslsmith_add_u32(27293u, u_input.c) >= u_input.b.x, firstLeadingBit(_wgslsmith_add_i32(var_0.c, u_input.a.x))), select(var_0.b, false, true && var_0.b) != (-191f > _wgslsmith_f_op_f32(step(arg_0.x, arg_0.x)))), Struct_5(select(reverseBits(vec3<u32>(14595u, 0u, var_0.a.a) & vec3<u32>(1u, 0u, u_input.c)), vec3<u32>(var_0.a.a, 30086u, 1u) | abs(vec3<u32>(u_input.d.x, 30693u, var_0.a.a)), var_0.a.a < 4294967295u)));
    var_0 = Struct_2(Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(select(vec3<u32>(38391u, 6906u, var_0.a.a), vec3<u32>(26990u, 23636u, 23152u), false), vec3<u32>(1u, 40897u, u_input.d.x)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.c, 26696u), vec3<u32>(var_0.a.a, 4294967295u, 0u)), ~16462u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 80455u, u_input.c), vec3<u32>(107479u, var_0.a.a, 0u))))), !(firstTrailingBit(u_input.c) >= u_input.b.x), _wgslsmith_mod_i32(var_0.c, var_0.c));
    var_0 = func_4(abs(-select(_wgslsmith_dot_vec4_i32(vec4<i32>(37655i, 17595i, -1i, u_input.a.x), vec4<i32>(1i, -1i, 2147483647i, -2147483647i)), 40894i, 87682u <= var_0.a.a)), Struct_4(vec4<bool>(!any(vec3<bool>(var_0.b, true, true)), var_0.b, true, !select(var_0.b, false, true)), _wgslsmith_f_op_f32(floor(804f)), arg_0.x, func_4(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 0i), ~vec2<i32>(-26302i, 1i)), Struct_4(!vec4<bool>(false, var_0.b, var_0.b, var_0.b), -884f, arg_0.x, func_4(-1224i, Struct_4(vec4<bool>(var_0.b, false, true, var_0.b), arg_0.x, -1000f, Struct_2(var_0.a, false, -5832i), var_0.b), Struct_5(vec3<u32>(u_input.b.x, u_input.d.x, var_0.a.a))), var_0.b), Struct_5(vec3<u32>(var_0.a.a, var_0.a.a, var_0.a.a))), -1i > ~(-1i | var_0.c)), Struct_5(reverseBits(~(~vec3<u32>(u_input.d.x, 4294967295u, 17859u)))));
    var var_1 = vec4<i32>(0i, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a), _wgslsmith_sub_i32(0i, select(2147483647i, 18142i, _wgslsmith_f_op_f32(-1000f - arg_0.x) == _wgslsmith_f_op_f32(-714f + 450f))), 0i << (~(~var_0.a.a ^ (8132u & var_0.a.a)) % 32u));
    return Struct_3(Struct_2(Struct_1(reverseBits(u_input.b.x)), true, var_1.x), func_4(-1i << ((abs(18266u) | firstTrailingBit(1u)) % 32u), Struct_4(!(!vec4<bool>(false, true, false, var_0.b)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.x + -233f), arg_0.x)), -509f, Struct_2(var_0.a, true, 1i), true), Struct_5(abs(vec3<u32>(var_0.a.a, 57049u, var_0.a.a)) & (vec3<u32>(u_input.c, u_input.b.x, u_input.b.x) >> (vec3<u32>(4294967295u, 1u, var_0.a.a) % vec3<u32>(32u))))).a);
}

fn func_5(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: f32) -> Struct_5 {
    var var_0 = vec2<u32>(~u_input.d.x << (~(select(40157u, u_input.b.x, arg_0.a.b) | min(arg_0.b.a, 0u)) % 32u), ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(func_3(), arg_0.b.a << (4294967295u % 32u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b.a, 1u, 0u, 4294967295u), vec4<u32>(u_input.c, 13012u, 0u, 89674u))));
    let var_1 = Struct_4(vec4<bool>(firstLeadingBit(0u) == _wgslsmith_mod_u32(~12590u, arg_0.b.a), any(select(vec3<bool>(false, false, arg_0.a.b), select(vec3<bool>(false, true, false), vec3<bool>(true, false, arg_0.a.b), arg_0.a.b), !arg_0.a.b)), func_2(arg_0.a.a).x, arg_0.a.b), _wgslsmith_f_op_f32(max(337f, -236f)), _wgslsmith_f_op_f32(floor(565f)), Struct_2(Struct_1(arg_0.b.a), true, func_4(u_input.a.x ^ arg_1.x, Struct_4(!vec4<bool>(arg_0.a.b, false, arg_0.a.b, arg_0.a.b), 1384f, _wgslsmith_f_op_f32(step(arg_2, arg_2)), arg_0.a, true), Struct_5(vec3<u32>(0u, var_0.x, 17877u) | vec3<u32>(1u, 1u, u_input.d.x))).c), select(false, all(func_2(Struct_1(arg_0.a.a.a)).wyz), true));
    let var_2 = arg_0;
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(abs(-1836f)), _wgslsmith_f_op_f32(abs(var_1.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.b)))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(895f + -1000f), var_1.b))), 362f);
    var var_4 = Struct_1(_wgslsmith_mult_u32(114894u, arg_0.a.a.a));
    return Struct_5(vec3<u32>(firstTrailingBit(~1u), 4294967295u, var_2.a.a.a & var_2.a.a.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1441f, _wgslsmith_f_op_f32(step(-213f, 1158f))))), _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.a, ~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, -77899i, u_input.a.x, -3719i), u_input.a), u_input.a), abs(vec4<i32>(77295i >> (1u % 32u), abs(u_input.a.x), firstTrailingBit(u_input.a.x), _wgslsmith_add_i32(-19443i, u_input.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(904f * -2051f))))));
    let var_1 = abs(max(-(vec3<i32>(u_input.a.x, u_input.a.x, 1i) & (u_input.a.zyx >> (vec3<u32>(var_0.a.x, u_input.b.x, var_0.a.x) % vec3<u32>(32u)))), vec3<i32>(2147483647i, u_input.a.x, u_input.a.x ^ (u_input.a.x | 7630i))));
    let var_2 = Struct_4(!vec4<bool>(true && func_1(vec2<f32>(1215f, 941f)).a.b, false, false, false), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(490f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * 417f), Struct_2(Struct_1(var_0.a.x), true, select(var_1.x, firstLeadingBit(_wgslsmith_dot_vec2_i32(u_input.a.wx, var_1.xz)), all(vec4<bool>(true, false, false, true)) || true)), true);
    var var_3 = select(vec3<u32>(u_input.d.x, ~(~_wgslsmith_clamp_u32(4294967295u, var_2.d.a.a, var_0.a.x)), _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, var_0.a.x, u_input.c), var_0.a)), ~(var_0.a & vec3<u32>(abs(u_input.d.x), abs(var_0.a.x), 29874u)), var_2.a.yyz);
    var var_4 = countOneBits(select(firstTrailingBit(-(~u_input.a.xzy)), select(-firstTrailingBit(var_1), ~(~u_input.a.zzy), var_2.a.x), select(var_2.a.ywy, select(!vec3<bool>(var_2.d.b, false, var_2.d.b), !vec3<bool>(false, var_2.a.x, var_2.e), var_2.d.b), var_2.a.xzz)));
    var var_5 = _wgslsmith_div_vec3_u32(abs(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.d.x, 0u, 72261u), vec3<u32>(u_input.c, var_0.a.x, 1u)), vec3<u32>(1u, 41961u, var_0.a.x))) << (min(vec3<u32>(~1u, ~var_0.a.x, func_3()), ~var_0.a) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(~var_0.a, vec3<u32>(var_0.a.x, func_4(~u_input.a.x, var_2, func_5(Struct_3(Struct_2(var_2.d.a, var_2.d.b, 0i), Struct_1(u_input.d.x)), vec4<i32>(2147483647i, -2147483647i, var_4.x, var_2.d.c), var_2.b)).a.a, _wgslsmith_clamp_u32(~0u, 31850u, _wgslsmith_mod_u32(var_0.a.x, 56873u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(149f, _wgslsmith_f_op_f32(var_2.b + _wgslsmith_f_op_f32(f32(-1f) * -361f)), 1000f, _wgslsmith_f_op_f32(select(-911f, 1113f, true))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b, var_2.c, var_2.c, -1926f) - vec4<f32>(-232f, -1000f, var_2.b, var_2.c)))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-722f, var_2.c, var_2.c, -638f))))), var_2.c);
}

