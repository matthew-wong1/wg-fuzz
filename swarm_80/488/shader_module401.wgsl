struct Struct_1 {
    a: u32,
    b: bool,
    c: i32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<bool>,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec3<i32> {
    var var_0 = Struct_1(~min(u_input.b.x & u_input.b.x, _wgslsmith_div_u32(~u_input.b.x, ~u_input.c.x)), true & (!(u_input.b.x < u_input.b.x) == false), i32(-1i) * -1i, vec3<i32>(countOneBits(~_wgslsmith_mod_i32(u_input.d, u_input.d)), u_input.d, min(1i, -u_input.e)));
    var_0 = Struct_1(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~max(vec3<u32>(u_input.c.x, 4294967295u, 96071u), vec3<u32>(var_0.a, 1u, var_0.a)), ~vec3<u32>(2759u, u_input.b.x, 137017u)), 0u), !var_0.b, -39119i, select(vec3<i32>(u_input.a, -2147483647i, -(-2147483647i & u_input.e)), var_0.d, select(select(vec3<bool>(false, var_0.b, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, var_0.b, false)), !vec3<bool>(false, var_0.b, true)), vec3<bool>(var_0.b, var_0.b, true), false)));
    return _wgslsmith_sub_vec3_i32(var_0.d, vec3<i32>(i32(-1i) * -abs(1i), firstTrailingBit(-26886i), -u_input.a));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> u32 {
    var var_0 = Struct_3(min(~(i32(-1i) * -arg_1.e.d.x), _wgslsmith_mult_i32(47299i, firstTrailingBit(~1524i))), Struct_1(~_wgslsmith_div_u32(u_input.c.x, arg_0.b.a ^ 16919u), any(!vec4<bool>(false, arg_1.e.b, true, arg_1.e.b)) || !arg_1.e.b, arg_0.b.c, -(~arg_0.c.d)), Struct_1(arg_0.b.a, (~(-79586i) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.e.c, -72009i), arg_0.b.d.xy)) != (i32(-1i) * -arg_1.b.x), ~(arg_0.a >> (_wgslsmith_sub_u32(4294967295u, arg_1.e.a) % 32u)), vec3<i32>(i32(-1i) * -18773i, arg_1.e.c << (arg_0.b.a % 32u), ~1695i) & -vec3<i32>(arg_0.c.d.x, arg_1.b.x, arg_1.d.x)));
    let var_1 = arg_1;
    var_0 = arg_0;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-976f, _wgslsmith_f_op_f32(select(2130f, -395f, select(false, true, arg_0.c.b))))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1090f - -612f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(188f)), _wgslsmith_f_op_f32(f32(-1f) * -339f))))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(253f)) * _wgslsmith_f_op_f32(trunc(295f))) * -1533f), _wgslsmith_div_f32(-1300f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-431f)))), all(select(select(vec4<bool>(arg_1.c.x, var_1.c.x, false, var_0.c.b), vec4<bool>(false, var_1.c.x, arg_1.c.x, var_1.c.x), vec4<bool>(arg_0.c.b, true, false, false)), vec4<bool>(true, true, var_1.e.b, true), vec4<bool>(false, var_1.e.b, true, var_0.b.b))))));
    let var_3 = u_input.c.x;
    return 0u;
}

fn func_2() -> Struct_1 {
    let var_0 = u_input.a;
    let var_1 = Struct_1(func_4(Struct_3(_wgslsmith_dot_vec2_i32(vec2<i32>(3129i, u_input.e), vec2<i32>(1i, 14882i)), Struct_1(u_input.b.x, false, 15316i, vec3<i32>(var_0, var_0, var_0)), Struct_1(4294967295u, false, u_input.d, vec3<i32>(-56358i, -1i, -35635i))), Struct_2(u_input.c.xz << (u_input.b.xx % vec2<u32>(32u)), func_3(), vec3<bool>(true, false, true), select(vec3<i32>(u_input.a, 2147483647i, u_input.a), vec3<i32>(u_input.e, 49815i, var_0), true), Struct_1(u_input.c.x, false, -1i, vec3<i32>(var_0, u_input.a, var_0)))) >> (~(firstTrailingBit(u_input.b.x) | u_input.c.x) % 32u), all(vec3<bool>(true, all(vec2<bool>(false, false)), true)) != true, abs(4106i), -(reverseBits(vec3<i32>(-1i, var_0, u_input.a)) ^ min(vec3<i32>(1i, u_input.a, u_input.a), vec3<i32>(-19680i, -36692i, u_input.a))) << (vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b.x, u_input.c.x, u_input.c.x), ~u_input.b), 1u, u_input.b.x) % vec3<u32>(32u)));
    let var_2 = Struct_2(vec2<u32>(1u, ~_wgslsmith_div_u32(~var_1.a, abs(var_1.a))), -max(vec3<i32>(2147483647i << (0u % 32u), var_1.d.x, -1i), vec3<i32>(var_0, 1533i, var_1.c >> (u_input.b.x % 32u))), select(!vec3<bool>(true, true && var_1.b, true), select(vec3<bool>(false, true, select(false, false, var_1.b)), !select(vec3<bool>(var_1.b, false, true), vec3<bool>(true, var_1.b, var_1.b), var_1.b), select(vec3<bool>(var_1.b, true, var_1.b), !vec3<bool>(false, var_1.b, var_1.b), vec3<bool>(true, true, true))), select(select(!vec3<bool>(var_1.b, false, var_1.b), vec3<bool>(true, true, true), any(vec3<bool>(var_1.b, true, var_1.b))), vec3<bool>(any(vec4<bool>(false, true, var_1.b, false)), true, false), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true))), var_1.d, Struct_1(u_input.b.x, !all(vec2<bool>(true, var_1.b)), _wgslsmith_sub_i32(_wgslsmith_sub_i32(-var_1.c, _wgslsmith_add_i32(u_input.e, -6415i)), -(i32(-1i) * -1i)), abs(vec3<i32>(_wgslsmith_mod_i32(u_input.d, -56844i), 18638i, i32(-1i) * -2147483647i))));
    let var_3 = var_2.c.zz;
    let var_4 = Struct_3(u_input.e, Struct_1(u_input.c.x >> (firstLeadingBit(~u_input.b.x) % 32u), var_1.b, -2147483647i, ~vec3<i32>(-7665i, var_0, _wgslsmith_div_i32(u_input.d, var_1.c))), var_1);
    return var_2.e;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec4<u32>, arg_3: vec3<i32>) -> f32 {
    let var_0 = Struct_3(_wgslsmith_mod_i32(u_input.a ^ arg_3.x, -8368i), arg_0, func_2());
    let var_1 = vec2<bool>(false, any(vec2<bool>(~arg_2.x >= ~arg_0.a, any(vec4<bool>(arg_0.b, var_0.b.b, false, true)) | var_0.b.b)));
    let var_2 = vec2<i32>(firstTrailingBit(var_0.a), 55640i ^ _wgslsmith_sub_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.c, arg_0.c, -7772i, u_input.d), vec4<i32>(var_0.c.c, arg_3.x, u_input.a, u_input.e)), func_3().x));
    var var_3 = var_0;
    let var_4 = Struct_3(max(-55257i, func_2().c), Struct_1(46435u, _wgslsmith_mult_u32(reverseBits(var_0.c.a), ~0u) != countOneBits(~var_3.c.a), -1i, -arg_3), var_0.c);
    return 281f;
}

fn func_5(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: vec4<bool>, arg_3: vec3<bool>) -> bool {
    let var_0 = Struct_1(1u, arg_3.x, reverseBits(1i), firstLeadingBit(countOneBits(firstTrailingBit(vec3<i32>(-87030i, -46940i, -7555i)) << (~u_input.b % vec3<u32>(32u)))));
    let var_1 = var_0;
    var var_2 = select(vec2<bool>(!var_0.b, arg_3.x), select(select(!arg_3.zx, !(!vec2<bool>(false, var_1.b)), func_2().b), arg_2.zy, arg_2.wz), vec2<bool>(true, !(any(arg_2.yww) & var_0.b)));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 891f, 383f, 2023f)))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, -464f, arg_0.x, 430f), vec4<f32>(-857f, arg_0.x, arg_0.x, arg_0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-489f, 1000f, arg_0.x, 1409f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, -908f, arg_0.x)))))));
    let var_4 = _wgslsmith_mod_i32(11388i, var_1.d.x);
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(-2147483647i >= _wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.e, -38851i), u_input.e)) | func_5(_wgslsmith_div_vec3_f32(vec3<f32>(878f, _wgslsmith_f_op_f32(select(-622f, 448f, false)), _wgslsmith_f_op_f32(120f - -628f)), vec3<f32>(_wgslsmith_f_op_f32(-1184f - 778f), _wgslsmith_f_op_f32(f32(-1f) * -524f), _wgslsmith_f_op_f32(func_1(Struct_1(28130u, true, 2147483647i, vec3<i32>(0i, u_input.a, -25055i)), vec3<f32>(-791f, -1000f, 1039f), vec4<u32>(107383u, u_input.c.x, u_input.b.x, 93684u), vec3<i32>(33786i, 64143i, 17743i))))), select(vec2<u32>(u_input.b.x, ~u_input.c.x), _wgslsmith_mult_vec2_u32(u_input.b.zy, vec2<u32>(6023u, 28934u) << (u_input.c.zy % vec2<u32>(32u))), select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, false), false), all(vec4<bool>(false, false, false, true)))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true || any(vec2<bool>(false, true))), select(vec3<bool>(all(vec2<bool>(false, false)), any(vec2<bool>(false, false)), func_2().b), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true))));
    let var_1 = true;
    var var_2 = !select(vec2<bool>(true, true), vec2<bool>(!(39887u != u_input.b.x), true), true);
    let var_3 = select(select(select(select(!vec4<bool>(false, false, var_1, true), vec4<bool>(var_2.x, true, var_0, var_2.x), var_2.x), vec4<bool>(any(vec3<bool>(true, true, var_1)), var_1, !var_0, any(vec2<bool>(var_1, false))), !vec4<bool>(var_2.x, true, false, true)), select(select(vec4<bool>(false, false, var_0, true), !vec4<bool>(false, false, false, var_0), false), !select(vec4<bool>(var_2.x, var_0, false, true), vec4<bool>(var_0, var_1, var_0, false), var_0), _wgslsmith_mod_i32(-2147483647i, -82i) == _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, 2147483647i, u_input.d), vec3<i32>(-1i, -2147483647i, 0i))), var_0), vec4<bool>(var_0, true, var_0, var_0), select(all(select(vec3<bool>(var_2.x, var_1, true), vec3<bool>(var_0, false, false), !vec3<bool>(var_2.x, false, true))), u_input.a <= 2147483647i, var_1));
    var_2 = select(!select(!var_3.wx, vec2<bool>(all(vec2<bool>(var_3.x, true)), true), !(var_3.x != var_0)), !(!var_3.yz), var_3.wy);
    var_2 = select(select(select(vec2<bool>(var_2.x, !var_1), vec2<bool>(var_1, !var_3.x), vec2<bool>(!var_0, all(var_3.zy))), select(!var_3.zx, select(var_3.xy, !var_3.zx, true), !select(vec2<bool>(var_0, true), vec2<bool>(false, var_3.x), var_3.yy)), any(var_3.yyy)), vec2<bool>(var_1, true), var_3.xy);
    var_2 = var_3.xx;
    var_2 = !var_3.yw;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 237f)), 1f));
    let x = u_input.a;
    s_output = StorageBuffer(~(u_input.b.x ^ (u_input.b.x << (0u % 32u))) >> (0u % 32u), _wgslsmith_f_op_f32(ceil(var_4)), func_3().zz, ~(u_input.e << (3878u % 32u)));
}

