struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: bool,
    e: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec2<bool>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: vec4<bool>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: vec3<u32>, arg_3: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-arg_1.xz);
    var var_1 = !((i32(-1i) * -57593i) <= _wgslsmith_dot_vec2_i32(~max(vec2<i32>(-25341i, -1i), vec2<i32>(2147483647i, arg_3)), ~(~vec2<i32>(-17829i, arg_0.b.c))));
    var var_2 = ~min(-(~arg_3 >> (~arg_2.x % 32u)), 0i);
    var var_3 = arg_0.b.b ^ -_wgslsmith_mod_i32(arg_0.b.b, firstTrailingBit(max(-2147483647i, 0i)));
    var var_4 = _wgslsmith_f_op_f32(trunc(arg_0.b.a));
    return countOneBits(0u);
}

fn func_4(arg_0: u32, arg_1: vec3<u32>) -> i32 {
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-964f, -2382f)))), reverseBits(30830i), abs(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(1i, -54307i, -65996i)), vec3<i32>(1i, 1i, 1i))), select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(false, true), all(vec4<bool>(false, false, false, true))), vec2<bool>(any(vec4<bool>(false, true, true, true)), true))), Struct_1(_wgslsmith_f_op_f32(-264f - 354f), -24088i, -11320i, select(!select(vec2<bool>(false, false), vec2<bool>(false, true), false), select(vec2<bool>(true, true), vec2<bool>(true, false), arg_1.x <= u_input.b), all(vec2<bool>(true, true)))), 0i, select(!vec2<bool>(false, all(vec4<bool>(true, false, false, false))), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true))));
    let var_1 = firstLeadingBit(max(~vec3<u32>(arg_1.x, 31221u, arg_0), _wgslsmith_add_vec3_u32(vec3<u32>(arg_1.x, 23752u, 27741u), vec3<u32>(arg_1.x, arg_1.x, arg_0))) << (~u_input.a % vec3<u32>(32u))) & ~abs(vec3<u32>(1u ^ arg_0, ~52018u, arg_1.x));
    var var_2 = ~_wgslsmith_sub_vec3_u32(firstTrailingBit(var_1), firstLeadingBit(firstLeadingBit(vec3<u32>(45925u, 1u, 63858u))));
    let var_3 = -vec3<i32>(22250i, -_wgslsmith_add_i32(max(42502i, -2147483647i), var_0.c), -66470i);
    let var_4 = Struct_4(var_2.xy, Struct_1(-742f, ~(i32(-1i) * -2147483647i), var_0.c, select(select(vec2<bool>(false, false), vec2<bool>(var_0.a.d.x, var_0.b.d.x), vec2<bool>(true, true)), !select(vec2<bool>(var_0.b.d.x, var_0.a.d.x), var_0.d, false), _wgslsmith_f_op_f32(-var_0.a.a) <= _wgslsmith_f_op_f32(ceil(-910f)))));
    return 0i;
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: Struct_5, arg_3: bool) -> vec4<i32> {
    var var_0 = Struct_4(abs(_wgslsmith_div_vec2_u32(~vec2<u32>(0u, u_input.b), ~firstTrailingBit(u_input.a.xy))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1318f) * _wgslsmith_f_op_f32(458f + _wgslsmith_f_op_f32(-199f - 1163f))), func_4(func_3(Struct_4(vec2<u32>(u_input.a.x, 0u), Struct_1(-887f, -95465i, arg_0, vec2<bool>(arg_2.c.x, arg_3))), _wgslsmith_div_vec3_f32(arg_2.b.c, arg_2.b.c), u_input.a, 2147483647i), vec3<u32>(1u, u_input.a.x, arg_2.a)), 4887i, vec2<bool>(!arg_2.c.x, any(select(arg_2.b.e, arg_2.c.xx, arg_1)))));
    var var_1 = var_0.b;
    var_1 = var_0.b;
    var var_2 = u_input.a.yx;
    let var_3 = select(~_wgslsmith_div_i32(~var_0.b.c, 2714i), ~((_wgslsmith_div_i32(var_0.b.c, 0i) | -arg_2.b.b.x) | var_0.b.c), arg_2.b.c.x <= 315f);
    return vec4<i32>(var_3, arg_2.b.b.x, 36230i, ~1i);
}

fn func_5(arg_0: vec4<i32>, arg_1: bool, arg_2: vec3<bool>) -> i32 {
    let var_0 = u_input.a.yy;
    let var_1 = Struct_4(reverseBits(vec2<u32>(5869u, 0u)) & max(u_input.a.zy, vec2<u32>(var_0.x, 60228u)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 287f)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(540f, -832f, true)), -1483f))), _wgslsmith_div_i32(13337i, max(arg_0.x & arg_0.x, abs(1i))), _wgslsmith_mult_i32(2147483647i, func_2(~1i, false, Struct_5(4294967295u, Struct_2(vec2<f32>(-1438f, -766f), arg_0, vec3<f32>(-1729f, 141f, -354f), true, arg_2.zx), vec4<bool>(arg_1, arg_2.x, false, arg_1), arg_0), true).x), arg_2.yz));
    let var_2 = arg_2;
    let var_3 = ~_wgslsmith_mult_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(0u, var_1.a.x, 4294967295u, var_0.x)), ~vec4<u32>(99879u, 4294967295u, var_1.a.x, u_input.a.x)), vec4<u32>(_wgslsmith_mult_u32(var_0.x, 4294967295u), u_input.b, min(u_input.b, 4294967295u), 1u)));
    var var_4 = _wgslsmith_f_op_f32(floor(var_1.b.a));
    return -arg_0.x;
}

fn func_6(arg_0: i32, arg_1: vec3<bool>, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-223f - 1409f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(705f, 1476f)))), -(select(vec4<i32>(19129i, arg_2.x, -2147483647i, 2147483647i), -vec4<i32>(-1i, arg_2.x, arg_0, 1i), !vec4<bool>(true, true, arg_1.x, false)) & ~vec4<i32>(arg_0, arg_0, arg_0, arg_2.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(414f, -1228f, -146f))))), any(!arg_1), select(select(select(!arg_1.xz, !vec2<bool>(false, arg_1.x), !arg_1.zx), select(arg_1.yx, select(arg_1.xx, arg_1.xz, arg_1.x), arg_1.yy), vec2<bool>(any(vec2<bool>(false, arg_1.x)), true != arg_1.x)), vec2<bool>(true, _wgslsmith_f_op_f32(ceil(-683f)) < 1000f), !arg_1.xz));
    var var_1 = 1033f;
    var_1 = var_0.a.x;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) - -1000f))), ~_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(reverseBits(var_0.b.yy), _wgslsmith_sub_vec2_i32(var_0.b.wx, vec2<i32>(1i, arg_2.x))), -2147483647i), _wgslsmith_dot_vec4_i32(~var_0.b, vec4<i32>(-1i, _wgslsmith_mult_i32(arg_2.x, arg_0) << (u_input.a.x % 32u), arg_2.x, 63579i)), vec2<bool>(true, true));
    var var_3 = Struct_5(_wgslsmith_mod_u32(u_input.a.x, firstTrailingBit(34040u)), var_0, vec4<bool>(true, ((arg_0 >= var_0.b.x) | false) && true, !(var_2.d.x && select(true, var_2.d.x, arg_1.x)), false), var_0.b);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-1664f, -280f)))) + 709f)), -(min(_wgslsmith_sub_i32(16003i, -37194i), reverseBits(0i)) ^ var_2.b), -35595i, !select(select(!var_0.e, !var_0.e, var_3.c.yw), var_2.d, arg_0 < var_2.b));
}

fn func_1(arg_0: vec3<u32>) -> i32 {
    let var_0 = Struct_4(~u_input.a.xz, func_6(func_5(~func_2(2147483647i, false, Struct_5(0u, Struct_2(vec2<f32>(500f, -834f), vec4<i32>(1i, 27010i, 35567i, 0i), vec3<f32>(796f, 598f, -524f), true, vec2<bool>(true, true)), vec4<bool>(true, true, false, true), vec4<i32>(-1i, 37522i, 0i, -11110i)), false), any(vec2<bool>(true, true)), select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), select(true, true, false))), vec3<bool>(true, true, true), vec2<i32>(1i, 1i)));
    let var_1 = !select(select(vec4<bool>(var_0.b.d.x, func_6(var_0.b.b, vec3<bool>(var_0.b.d.x, var_0.b.d.x, true), vec2<i32>(-2147483647i, -1i)).d.x, all(vec2<bool>(var_0.b.d.x, var_0.b.d.x)), true), vec4<bool>(var_0.b.d.x, var_0.b.d.x, !var_0.b.d.x, !var_0.b.d.x), var_0.b.a < _wgslsmith_f_op_f32(-530f + var_0.b.a)), !(!(!vec4<bool>(true, false, var_0.b.d.x, var_0.b.d.x))), select(select(!vec4<bool>(var_0.b.d.x, true, var_0.b.d.x, var_0.b.d.x), !vec4<bool>(var_0.b.d.x, var_0.b.d.x, false, false), var_0.b.d.x), !vec4<bool>(false, var_0.b.d.x, false, var_0.b.d.x), false));
    var var_2 = vec2<bool>(var_0.b.d.x, var_0.b.d.x);
    var var_3 = _wgslsmith_f_op_f32(var_0.b.a - _wgslsmith_div_f32(767f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1298f, var_0.b.a)))));
    var_2 = var_0.b.d;
    return func_4(~_wgslsmith_mod_u32(~var_0.a.x, ~(~4294967295u)), firstLeadingBit(vec3<u32>(u_input.b, var_0.a.x, _wgslsmith_mult_u32(1u, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-731f, _wgslsmith_dot_vec4_i32(vec4<i32>(select(52067i, 2147483647i, false), 30992i, 0i, ~(-25944i)) ^ vec4<i32>(1i, 23302i, _wgslsmith_mod_i32(1i, 12661i), func_1(vec3<u32>(1766u, 79993u, 1u))), ~(-vec4<i32>(18606i, -30254i, 62670i, 18550i))), -42506i, vec2<bool>(true, true));
    var var_1 = vec4<i32>(countOneBits(-569i), var_0.c, -var_0.c, -1i);
    let var_2 = abs(~vec4<u32>(34811u, u_input.b >> (u_input.b % 32u), ~0u, func_3(Struct_4(vec2<u32>(23426u, 36006u), Struct_1(-1583f, var_1.x, var_0.c, var_0.d)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-541f, var_0.a, 1134f), vec3<f32>(var_0.a, var_0.a, 771f), vec3<bool>(false, var_0.d.x, var_0.d.x))), u_input.a, var_1.x)));
    var var_3 = select(vec3<u32>(_wgslsmith_clamp_u32(~0u, ~1111u, select(var_2.x, u_input.b, false)) & (reverseBits(u_input.a.x) << (~var_2.x % 32u)), ~firstLeadingBit(_wgslsmith_dot_vec4_u32(var_2, var_2)), 0u), reverseBits(vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 692u), min(vec2<u32>(21899u, u_input.a.x), vec2<u32>(u_input.b, u_input.b))), func_3(Struct_4(vec2<u32>(var_2.x, 1u), Struct_1(-455f, var_1.x, 1i, vec2<bool>(var_0.d.x, var_0.d.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, 307f, var_0.a)), var_2.zxw, var_0.b), ~(~6854u))), select(false, false, !all(select(vec2<bool>(false, true), vec2<bool>(true, var_0.d.x), var_0.d.x))));
    var var_4 = select(var_1.wy, var_1.xx, select(var_0.d, var_0.d, var_0.d));
    var var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-770f + _wgslsmith_f_op_f32(-974f + -1000f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.a))));
    var_0 = func_6(var_0.c, vec3<bool>(false, all(var_0.d), !(var_0.a <= -1208f)), vec2<i32>(var_0.b << (0u % 32u), _wgslsmith_div_i32(-6606i, _wgslsmith_clamp_i32(var_0.c, 34024i, func_4(var_2.x, u_input.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec3<i32>(2316i, func_6(var_1.x, vec3<bool>(false, var_0.d.x, true), vec2<i32>(var_0.b, -27719i)).c, var_0.c) ^ (-vec3<i32>(0i, 27391i, var_4.x) << (vec3<u32>(var_3.x, 26018u, var_3.x) % vec3<u32>(32u)))));
}

