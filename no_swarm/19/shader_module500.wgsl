struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: Struct_3,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_4, arg_1: i32, arg_2: vec3<bool>, arg_3: vec2<i32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-arg_0.a.x);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0, 934f)));
    var var_2 = Struct_1(arg_2.x, arg_1 <= arg_1);
    var_2 = arg_0.d.a.b;
    var var_3 = arg_0.d;
    return all(select(arg_2, vec3<bool>(arg_2.x, var_2.a, true), select(select(vec3<bool>(arg_0.d.a.c.a, arg_2.x, arg_0.e.b), arg_2, !vec3<bool>(var_3.a.e.a, var_3.b.b, true)), select(arg_2, vec3<bool>(var_3.a.e.b, true, true), arg_0.e.b), arg_2.x)));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: Struct_4) -> f32 {
    var var_0 = arg_0;
    var_0 = true;
    var_0 = true;
    let var_1 = Struct_3(Struct_2(Struct_1(any(!vec4<bool>(arg_0, false, arg_2.e.a, arg_2.e.b)), false), arg_2.d.a.e, Struct_1(_wgslsmith_f_op_f32(arg_2.d.a.d.x + arg_2.a.x) <= -574f, !(0u <= u_input.d.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.d.a.d.x, arg_2.a.x, _wgslsmith_f_op_f32(arg_2.d.a.d.x - arg_2.a.x), _wgslsmith_f_op_f32(sign(arg_2.a.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2.d.a.d - vec4<f32>(arg_2.d.a.d.x, arg_2.a.x, arg_2.a.x, arg_2.a.x)) * _wgslsmith_div_vec4_f32(arg_2.d.a.d, arg_2.d.a.d))), arg_2.d.b), Struct_1(arg_2.e.a && arg_0, arg_0 | false), arg_2.d.c);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2166f))));
}

fn func_2(arg_0: vec4<u32>, arg_1: u32, arg_2: i32, arg_3: u32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(func_4(true, min(countOneBits(arg_2), -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -15787i, 0i), vec3<i32>(-59024i, 1i, 9636i)) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, 4294967295u), vec2<u32>(47957u, 0u)) % 32u)), Struct_4(vec2<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -842f) - _wgslsmith_f_op_f32(-667f * -207f))), vec4<u32>(1u, ~(~arg_1), firstTrailingBit(1u << (arg_0.x % 32u)), ~0u), select(~vec2<i32>(arg_2, 2147483647i), countOneBits(vec2<i32>(u_input.c, 2147483647i)), true) | max(vec2<i32>(15082i, arg_2), ~vec2<i32>(u_input.b, 2147483647i)), Struct_3(Struct_2(Struct_1(false, false), Struct_1(true, false), Struct_1(false, false), _wgslsmith_f_op_vec4_f32(-vec4<f32>(441f, -181f, 733f, -996f)), Struct_1(true, true)), Struct_1(true, select(true, false, false)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, u_input.b, arg_2, 0i), vec4<i32>(arg_2, arg_2, -1i, arg_2)), ~(-11518i), max(u_input.b, 0i), u_input.b)), Struct_1(func_3(Struct_4(vec2<f32>(986f, -237f), vec4<u32>(4294967295u, 1u, arg_3, arg_3), vec2<i32>(arg_2, arg_2), Struct_3(Struct_2(Struct_1(false, false), Struct_1(false, true), Struct_1(false, true), vec4<f32>(-827f, 219f, 750f, -346f), Struct_1(false, true)), Struct_1(false, false), vec4<i32>(arg_2, arg_2, arg_2, -1i)), Struct_1(false, true)), ~(-19761i), vec3<bool>(true, true, true), vec2<i32>(-2147483647i, 28297i)), !func_3(Struct_4(vec2<f32>(1128f, -1491f), arg_0, vec2<i32>(arg_2, u_input.c), Struct_3(Struct_2(Struct_1(false, false), Struct_1(false, false), Struct_1(false, false), vec4<f32>(-191f, 505f, -713f, -1238f), Struct_1(true, false)), Struct_1(true, true), vec4<i32>(u_input.a, -21068i, 64475i, arg_2)), Struct_1(false, false)), u_input.a, vec3<bool>(true, false, true), vec2<i32>(u_input.a, u_input.a))))));
    let var_1 = vec4<bool>(true, true, all(!(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)))), all(!select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), vec3<bool>(false, true, true), true)));
    var var_2 = -(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(arg_2, arg_2), vec2<i32>(-1i, u_input.b)), max(vec2<i32>(-419i, 2147483647i), vec2<i32>(arg_2, -369i))), ~(-vec2<i32>(35758i, u_input.c))) | 11925i);
    var var_3 = Struct_3(Struct_2(Struct_1(true, !all(var_1.wxy)), Struct_1(var_1.x, var_1.x), Struct_1(var_1.x, 1u >= _wgslsmith_dot_vec4_u32(arg_0, vec4<u32>(4294967295u, arg_0.x, 1u, 0u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, -278f, 1000f) + vec4<f32>(2128f, 1009f, 2575f, -1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 1087f, var_0, -1046f)), var_1))), Struct_1(var_1.x, true)), Struct_1(_wgslsmith_f_op_f32(select(2021f, _wgslsmith_div_f32(-1131f, var_0), all(var_1))) == var_0, true), ~(-vec4<i32>(0i, arg_2, -46630i, u_input.a)) >> (arg_0 % vec4<u32>(32u)));
    var_2 = var_3.c.x;
    return ~var_3.c.x;
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(reverseBits(arg_0), -938i), 3881i), vec2<i32>(-1i, func_2(firstLeadingBit(vec4<u32>(37900u, 1u, u_input.e, 1u)), 1u ^ u_input.d.x, -43162i, 1u))), (vec2<i32>(21924i, u_input.a) & select(vec2<i32>(u_input.b, arg_0), select(vec2<i32>(0i, arg_0), vec2<i32>(arg_0, arg_0), false), vec2<bool>(true, true))) >> (~vec2<u32>(13443u, _wgslsmith_add_u32(21772u, u_input.e)) % vec2<u32>(32u)));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(898f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-1547f))))), -177f);
    var var_2 = vec3<i32>(-u_input.a, -firstTrailingBit(_wgslsmith_mult_i32(-49643i >> (u_input.e % 32u), -17774i)), abs(var_0.x ^ u_input.a));
    let var_3 = Struct_1(false, _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.x)) + _wgslsmith_div_f32(var_1.x, 830f))) == var_1.x);
    var var_4 = _wgslsmith_add_vec3_i32(~(vec3<i32>(33238i, -1i, arg_0) & vec3<i32>(9349i, u_input.b, var_0.x)) << (_wgslsmith_mult_vec3_u32(u_input.d >> (vec3<u32>(29012u, u_input.e, u_input.d.x) % vec3<u32>(32u)), ~u_input.d) % vec3<u32>(32u)), -abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.x, -35576i, 1i), vec3<i32>(var_2.x, -30232i, arg_0), vec3<i32>(-1i, var_0.x, -19921i)))) ^ (reverseBits(_wgslsmith_mod_vec3_i32(-vec3<i32>(arg_0, 0i, arg_0), _wgslsmith_add_vec3_i32(vec3<i32>(-2759i, u_input.c, -20157i), vec3<i32>(1i, u_input.a, arg_0)))) << ((countOneBits(vec3<u32>(u_input.d.x, 0u, u_input.d.x)) | vec3<u32>(4294967295u, 53774u, ~6611u)) % vec3<u32>(32u)));
    return Struct_2(var_3, Struct_1(var_3.b, false), Struct_1(var_3.b, false), vec4<f32>(var_1.x, var_1.x, -302f, _wgslsmith_f_op_f32(func_4(all(vec3<bool>(var_3.b, var_3.b, var_3.b)), 0i, Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -696f)), firstTrailingBit(vec4<u32>(u_input.d.x, u_input.e, u_input.e, u_input.d.x)), vec2<i32>(-27720i, -2147483647i) ^ var_4.yx, Struct_3(Struct_2(var_3, var_3, var_3, vec4<f32>(-274f, var_1.x, 1471f, -1000f), Struct_1(false, var_3.b)), var_3, vec4<i32>(u_input.c, 0i, 0i, arg_0)), Struct_1(false, true))))), var_3);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(-1954i);
    let var_1 = func_1(~_wgslsmith_clamp_i32(_wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.c, 18203i), 0i), u_input.c, 559i));
    let var_2 = _wgslsmith_add_u32(~60055u, u_input.e);
    let var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(192f, var_1.d.x))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(var_1.d.xw, var_1.d.zz)) - var_1.d.zx) + var_1.d.ww)), ~(~vec4<u32>(1u, u_input.d.x >> (4294967295u % 32u), u_input.e, ~u_input.d.x)), select(select(~vec2<i32>(u_input.c, 1i), -vec2<i32>(0i, 1i), vec2<bool>(false, var_1.c.b)), ~(vec2<i32>(-5718i, u_input.a) | vec2<i32>(-33690i, 41264i)), vec2<bool>(true, all(vec4<bool>(true, true, true, var_1.c.b)))) << (vec2<u32>(firstLeadingBit(~21677u), var_2) % vec2<u32>(32u)), Struct_3(var_1, func_1(_wgslsmith_mult_i32(-var_0, 1i)).b, vec4<i32>(-(u_input.b | u_input.a), min(firstLeadingBit(-4247i), _wgslsmith_mult_i32(0i, u_input.b)), u_input.a, 1i & _wgslsmith_dot_vec3_i32(vec3<i32>(var_0, u_input.b, 5330i), vec3<i32>(u_input.c, u_input.c, 47574i)))), Struct_1(false, func_1(firstTrailingBit(u_input.b)).e.b));
    let var_4 = true;
    let var_5 = var_3.d;
    var var_6 = var_3.b.zzw;
    var_6 = firstLeadingBit(countOneBits(u_input.d) << (_wgslsmith_mult_vec3_u32(u_input.d, vec3<u32>(countOneBits(u_input.e), abs(13085u), countOneBits(39396u))) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.zz);
}

