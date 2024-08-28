struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec2<u32>,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec4<bool>,
    d: vec2<u32>,
    e: i32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
    d: Struct_1,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_mod_i32(~_wgslsmith_dot_vec2_i32(u_input.b ^ select(u_input.b, u_input.b, vec2<bool>(true, false)), -(~vec2<i32>(1i, u_input.b.x))), ~u_input.b.x);
    var var_1 = Struct_2(vec2<f32>(1f, 1f), Struct_1(0i, select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false))), select(vec4<bool>(true, false, false, false), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true)), vec4<bool>(false, true, false, false)), !any(vec2<bool>(false, true))), _wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)) & reverseBits(countOneBits(vec2<u32>(u_input.a, 4294967295u))), all(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), false)), ~(1u ^ _wgslsmith_mult_u32(u_input.a, 1u))), vec4<bool>(false, !all(vec2<bool>(true, true)), false, !((i32(-1i) * -2147483647i) < abs(u_input.b.x))), vec2<u32>(~u_input.a, firstTrailingBit(u_input.a)), u_input.b.x);
    var var_2 = ~(~min(select(vec3<u32>(0u, 27969u, u_input.a), vec3<u32>(u_input.a, 75091u, u_input.a), vec3<bool>(var_1.b.d, var_1.b.d, var_1.c.x)), vec3<u32>(var_1.b.c.x, u_input.a, 76876u) & vec3<u32>(var_1.d.x, u_input.a, u_input.a))) << ((~vec3<u32>(_wgslsmith_div_u32(var_1.d.x, 1239u), _wgslsmith_mod_u32(var_1.d.x, u_input.a), 0u) | (vec3<u32>(~46042u, var_1.b.e, ~4294967295u) | vec3<u32>(~1u, 82698u, _wgslsmith_mult_u32(u_input.a, var_1.d.x)))) % vec3<u32>(32u));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1486f * var_1.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -152f) + _wgslsmith_f_op_f32(1109f * var_1.a.x)), -2073f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-434f, 347f, var_1.a.x), vec3<f32>(var_1.a.x, 2205f, 579f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-942f, var_1.a.x, 899f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1450f, 740f, 346f) + vec3<f32>(var_1.a.x, var_1.a.x, -1671f))))));
    var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(268f, -447f)) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(934f, var_1.a.x))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(var_3.yy, vec2<f32>(445f, 261f))) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-425f, var_3.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, var_1.a.x))))), Struct_1(select(-var_0, i32(-1i) * -2147483647i, 4294967295u != ~var_2.x), vec4<bool>(true, true, all(var_1.c.wz), var_1.c.x), _wgslsmith_mod_vec2_u32(vec2<u32>(~u_input.a, _wgslsmith_add_u32(u_input.a, 1u)), vec2<u32>(~4294967295u, var_1.d.x)), var_1.b.b.x, ~_wgslsmith_mod_u32(35627u, var_1.b.e)), !(!var_1.c), _wgslsmith_mult_vec2_u32(firstLeadingBit(var_2.zy), ~select(var_1.b.c, var_2.xz, var_1.b.b.xx)) | var_1.d, u_input.b.x);
    return select(~u_input.a, select(_wgslsmith_mod_u32(u_input.a, 0u), var_1.b.c.x, true), true);
}

fn func_2(arg_0: vec2<u32>) -> Struct_3 {
    var var_0 = func_3();
    var_0 = ~(~select(~(~arg_0.x), _wgslsmith_add_u32(u_input.a & 4294967295u, _wgslsmith_mod_u32(56834u, 543u)), any(vec4<bool>(false, true, false, true)) & true));
    return Struct_3(_wgslsmith_div_vec4_u32(select(~vec4<u32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), ~vec4<u32>(33162u, 4294967295u, arg_0.x, 100610u), true), ~vec4<u32>(40156u, arg_0.x, 73519u, u_input.a)) >> (firstTrailingBit(vec4<u32>(_wgslsmith_dot_vec2_u32(arg_0, vec2<u32>(4294967295u, 0u)), _wgslsmith_sub_u32(u_input.a, 4294967295u), arg_0.x, 3692u >> (0u % 32u))) % vec4<u32>(32u)), vec4<u32>(50730u, ~arg_0.x, ~1u, arg_0.x), ~(~1544u), Struct_1(-1i, select(select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true)), vec4<bool>(true, any(vec3<bool>(false, false, true)), 52866u >= u_input.a, true), false), arg_0, all(vec3<bool>(true, true, true)), 47019u), u_input.b);
}

fn func_1(arg_0: Struct_2) -> Struct_3 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1251f) * arg_0.a.x) - arg_0.a.x), arg_0.a.x);
    let var_1 = ~_wgslsmith_clamp_i32(u_input.b.x, arg_0.b.a, _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(u_input.b.x, 0i, -34628i)), vec3<i32>(arg_0.e, arg_0.b.a, 25873i))) & (30299i << (1u % 32u));
    let var_2 = arg_0.b;
    var var_3 = true;
    return func_2(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 2435u), ~(~var_2.c) | arg_0.b.c));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_3, arg_3: Struct_3) -> vec4<bool> {
    let var_0 = _wgslsmith_dot_vec3_i32(~abs(firstLeadingBit(vec3<i32>(15271i, -1i, -14687i))), -(firstLeadingBit(~vec3<i32>(0i, u_input.b.x, arg_2.d.a)) & vec3<i32>(countOneBits(29611i), arg_2.e.x, u_input.b.x)));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(368f, -133f), vec2<f32>(918f, -411f)))), vec2<bool>(arg_0.e > arg_0.e, true && arg_0.d)))), func_1(Struct_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1653f, 909f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-269f, -618f))))), Struct_1(func_1(Struct_2(vec2<f32>(-859f, 1240f), arg_3.d, arg_3.d.b, vec2<u32>(59968u, 9196u), u_input.b.x)).d.a, func_2(arg_3.d.c).d.b, ~arg_2.b.yw, true, 0u), vec4<bool>(arg_2.d.b.x, false && arg_3.d.b.x, true, !arg_2.d.b.x), _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(arg_2.a.wx, arg_3.d.c), vec2<u32>(1u, u_input.a)), -3286i)).d, arg_2.d.b, arg_0.c, _wgslsmith_sub_i32(-1i, ~_wgslsmith_dot_vec3_i32(~vec3<i32>(arg_3.e.x, u_input.b.x, arg_3.d.a), vec3<i32>(-7216i, arg_1, arg_1))));
    var var_2 = arg_3;
    var var_3 = vec3<bool>(arg_0.b.x, true, false);
    var var_4 = Struct_1(arg_1, vec4<bool>(var_2.e.x <= -1i, all(arg_2.d.b), !arg_0.b.x, func_2(vec2<u32>(abs(4294967295u), arg_3.d.e)).d.d), vec2<u32>(~_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_3.c, 4294967295u), ~vec2<u32>(0u, 4294967295u)), 0u), any(!vec4<bool>(var_1.c.x, 2147483647i < var_1.b.a, var_2.e.x >= 2147483647i, true)), 1u);
    return vec4<bool>(false, !(1u < func_1(var_1).d.c.x), any(arg_0.b), arg_2.d.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-1f), 1000f), vec2<f32>(_wgslsmith_f_op_f32(-449f + _wgslsmith_f_op_f32(f32(-1f) * -3237f)), _wgslsmith_f_op_f32(-1201f * _wgslsmith_f_op_f32(-1341f - 738f))))), Struct_1(-2147483647i, !vec4<bool>(false, true, 21569u <= u_input.a, u_input.b.x != u_input.b.x), abs(vec2<u32>(0u, u_input.a)), false, 21898u >> (~(~u_input.a) % 32u)), !(!func_4(Struct_1(2147483647i, vec4<bool>(true, false, false, true), vec2<u32>(0u, 17521u), true, 1u), -1i, func_1(Struct_2(vec2<f32>(-815f, -1610f), Struct_1(u_input.b.x, vec4<bool>(false, false, true, true), vec2<u32>(u_input.a, u_input.a), true, u_input.a), vec4<bool>(false, true, true, true), vec2<u32>(u_input.a, u_input.a), 44107i)), func_1(Struct_2(vec2<f32>(857f, 751f), Struct_1(26379i, vec4<bool>(true, false, false, false), vec2<u32>(u_input.a, 28117u), false, u_input.a), vec4<bool>(false, true, false, false), vec2<u32>(u_input.a, 59089u), u_input.b.x)))), min(~reverseBits(func_2(vec2<u32>(u_input.a, 1u)).d.c), abs(vec2<u32>(u_input.a, 4777u)) >> (vec2<u32>(~4294967295u, 44141u >> (u_input.a % 32u)) % vec2<u32>(32u))), 59836i);
    var var_1 = var_0.a.x;
    var var_2 = ~vec4<u32>(1u, var_0.d.x, _wgslsmith_sub_u32(_wgslsmith_div_u32(~u_input.a, _wgslsmith_sub_u32(36135u, 26796u)), ~31319u), ~_wgslsmith_add_u32(80121u, var_0.d.x));
    var_2 = reverseBits(~vec4<u32>(4294967295u, _wgslsmith_div_u32(~var_0.d.x, 77589u), 1u, 1u));
    var var_3 = -(~0i);
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<u32>(_wgslsmith_mod_u32(34883u, u_input.a), ~var_2.x, 15353u << (var_0.b.c.x % 32u), ~1u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(807f, var_0.a.x, var_0.a.x)))), firstTrailingBit(~vec4<i32>(~(-2147483647i), -1i, ~10381i, func_1(var_0).e.x)), _wgslsmith_clamp_vec3_u32(~(~vec3<u32>(var_0.d.x, var_0.d.x, 34500u)), ~abs(var_2.xwx), _wgslsmith_mult_vec3_u32(max(vec3<u32>(97282u, var_0.b.e, 1u), vec3<u32>(57114u, var_0.d.x, var_2.x)), ~_wgslsmith_add_vec3_u32(var_2.xxz, vec3<u32>(0u, var_2.x, 0u)))));
}

