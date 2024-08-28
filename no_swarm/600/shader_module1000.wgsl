struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_3,
    d: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: vec4<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<i32>) -> vec2<bool> {
    let var_0 = vec4<bool>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1369f + -1412f) * -1182f))) == _wgslsmith_f_op_f32(1f + 372f), true, true, all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)), true)));
    let var_1 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(103f)) * -1236f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-137f + 467f), -227f)), _wgslsmith_f_op_f32(select(-1065f, _wgslsmith_f_op_f32(f32(-1f) * -1950f), select(all(vec3<bool>(var_0.x, true, false)), var_0.x, all(vec2<bool>(true, var_0.x))))), 736f), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2224f - 1861f), _wgslsmith_f_op_f32(abs(-1000f)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-622f)))), 322f)));
    var var_2 = Struct_3(Struct_1(-(~arg_0.yx), vec2<bool>((-1101f == var_1.x) | any(var_0.zy), all(select(var_0.zw, var_0.xw, var_0.x))), select(vec4<bool>(!var_0.x, 0u < u_input.b.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x & var_0.x, all(vec3<bool>(false, false, true)), !var_0.x), vec4<bool>(all(var_0), true, false, true))), Struct_1(_wgslsmith_add_vec2_i32(-(~vec2<i32>(44171i, u_input.c.x)), u_input.c), var_0.zw, !vec4<bool>(-2147483647i != arg_0.x, any(vec4<bool>(false, var_0.x, false, false)), false, true)), 0u, true, Struct_1(_wgslsmith_mult_vec2_i32(~vec2<i32>(71802i, u_input.d), select(u_input.c, vec2<i32>(1i, arg_0.x) << (vec2<u32>(u_input.a, u_input.b.x) % vec2<u32>(32u)), var_0.x)), var_0.xw, vec4<bool>(var_0.x, true, true, var_0.x)));
    var_2 = Struct_3(Struct_1((vec2<i32>(-1i) * -arg_0.yx) | arg_0.yy, select(select(var_2.e.c.xz, select(var_0.ww, vec2<bool>(var_0.x, true), vec2<bool>(var_2.a.b.x, true)), select(vec2<bool>(false, var_0.x), var_2.b.c.xw, vec2<bool>(false, var_0.x))), vec2<bool>(u_input.c.x > var_2.a.a.x, !var_0.x), var_0.x), !select(vec4<bool>(var_2.e.c.x, var_2.d, var_0.x, var_2.b.b.x), !vec4<bool>(true, var_2.a.b.x, var_2.a.c.x, true), vec4<bool>(false, var_0.x, var_2.d, false))), Struct_1(u_input.c ^ -(~u_input.c), vec2<bool>(any(var_0.xx), var_2.e.c.x), !select(var_2.a.c, select(var_2.e.c, vec4<bool>(false, true, false, var_2.e.b.x), var_0.x), vec4<bool>(var_0.x, var_2.b.c.x, var_0.x, true))), var_2.c, false, var_2.a);
    var_2 = Struct_3(Struct_1(reverseBits(~u_input.c), vec2<bool>(var_0.x, any(vec2<bool>(var_2.e.b.x, var_2.a.c.x))), select(var_2.e.c, var_0, vec4<bool>(!var_0.x, true == var_2.d, arg_0.x <= 2147483647i, var_2.a.b.x))), Struct_1(vec2<i32>(var_2.e.a.x, firstTrailingBit(i32(-1i) * -1i)), var_0.wz, select(!var_2.e.c, var_0, !vec4<bool>(var_0.x, var_0.x, false, false))), ~(min(reverseBits(89193u), _wgslsmith_add_u32(u_input.a, 49089u)) >> (var_2.c % 32u)), true, var_2.b);
    return !var_2.e.c.xw;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(4294967295u, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-903f, 250f, -1396f, -798f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -150f, 288f, 720f) - vec4<f32>(1599f, 1244f, 113f, -377f)) + vec4<f32>(-128f, -2257f, 1003f, -1000f))))), false, Struct_1(min(-(u_input.c & u_input.c), _wgslsmith_sub_vec2_i32(~u_input.c, vec2<i32>(0i, u_input.d))), func_3(~vec3<i32>(1i, 1i, 1i)), !vec4<bool>(true, all(vec2<bool>(true, true)), false, true)));
    var var_1 = vec4<i32>(-2147483647i, reverseBits(_wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.c.x, 37144i), -u_input.d)), 13869i, u_input.c.x);
    var var_2 = -vec3<i32>(-firstLeadingBit(37386i), countOneBits(-(~u_input.d)), _wgslsmith_dot_vec3_i32(vec3<i32>(50499i, -2147483647i, 1i), _wgslsmith_mult_vec3_i32(var_1.wxy, var_1.yxw)));
    var_2 = vec3<i32>(var_2.x, ~(var_1.x | 1i), -u_input.c.x);
    let var_3 = select(vec4<bool>(false, true, -2147483647i > _wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.c.x, var_1.x), u_input.d), true & all(!var_0.d.c.wzz)), !(!vec4<bool>(false, !var_0.d.b.x, !var_0.d.b.x, var_0.c)), select(vec4<bool>(false, true, true, !(var_0.b.x >= -741f)), !(!var_0.d.c), 2147483647i != reverseBits(var_1.x | var_1.x)));
    return Struct_1(vec2<i32>(-(-59184i << (~4294967295u % 32u)), min(var_1.x, firstTrailingBit(2147483647i))), vec2<bool>(true, any(var_0.d.c.zx)), var_0.d.c);
}

fn func_1(arg_0: bool, arg_1: vec2<f32>) -> Struct_5 {
    return Struct_5(arg_0, ~(~(~(~vec4<i32>(u_input.c.x, u_input.d, 37579i, 2147483647i)))), func_2());
}

fn func_4(arg_0: Struct_5, arg_1: i32) -> Struct_4 {
    var var_0 = firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, ~0u, 84303u ^ u_input.b.x, ~u_input.a), ~firstLeadingBit(vec4<u32>(4294967295u, 0u, 40829u, u_input.a)))) << (_wgslsmith_add_vec4_u32(vec4<u32>(~(u_input.a << (0u % 32u)), _wgslsmith_add_u32(max(u_input.b.x, u_input.a), 4294967295u), u_input.b.x >> (abs(u_input.b.x) % 32u), max(abs(1u), u_input.a)), _wgslsmith_div_vec4_u32(vec4<u32>(select(u_input.b.x, u_input.a, false), u_input.a | 59812u, u_input.b.x & 4294967295u, 4294967295u), reverseBits(vec4<u32>(1u, u_input.a, u_input.b.x, u_input.b.x) >> (vec4<u32>(1u, u_input.b.x, 0u, u_input.b.x) % vec4<u32>(32u))))) % vec4<u32>(32u));
    let var_1 = Struct_2(~firstLeadingBit(_wgslsmith_div_u32(countOneBits(60729u), ~0u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-375f, 601f, -1777f, -719f)))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(202f, 548f, -678f, -203f))))), true, func_2());
    var var_2 = vec3<u32>(~(~var_0.x), abs(var_1.a), var_0.x);
    var var_3 = Struct_1(_wgslsmith_clamp_vec2_i32(var_1.d.a & -_wgslsmith_clamp_vec2_i32(arg_0.b.ww, var_1.d.a, var_1.d.a), _wgslsmith_mod_vec2_i32(~_wgslsmith_div_vec2_i32(var_1.d.a, arg_0.b.zy), arg_0.b.wz), ~var_1.d.a), vec2<bool>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1559f), var_1.b.x)) < _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-745f)))), var_1.c), !vec4<bool>(select(false, true == arg_0.a, func_3(arg_0.b.xyz).x), !(!var_1.c), var_1.d.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 14190u, var_1.a, 3127u), vec4<u32>(var_2.x, 23325u, 1u, var_2.x)) == _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), var_2.zy)));
    let var_4 = arg_0.c;
    return Struct_4(func_1(any(!var_3.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.x, var_1.b.x)) + vec2<f32>(684f, _wgslsmith_f_op_f32(var_1.b.x - 1576f)))).c, select(select(!(!var_1.d.c.wzw), func_1(arg_0.a, var_1.b.zz).c.c.zyx, any(arg_0.c.c.xzw)), !vec3<bool>(true, 454f > var_1.b.x, var_0.x >= 1u), arg_0.c.c.xyx), Struct_3(Struct_1(-(~var_4.a), select(var_1.d.b, vec2<bool>(false, var_3.c.x), vec2<bool>(var_4.b.x, var_3.c.x)), !vec4<bool>(false, false, false, var_3.b.x)), var_1.d, _wgslsmith_mod_u32(46337u, 4294967295u), all(func_2().b), func_2()), var_4);
}

fn func_5(arg_0: Struct_4) -> StorageBuffer {
    var var_0 = !func_3((~vec3<i32>(18133i, arg_0.c.e.a.x, 0i) & min(vec3<i32>(u_input.d, -1i, -2147483647i), vec3<i32>(arg_0.c.a.a.x, 5232i, 1i))) & (vec3<i32>(1402i, -1i, 8415i) << (u_input.b % vec3<u32>(32u))));
    var var_1 = -2147483647i;
    var_0 = vec2<bool>(all(vec3<bool>(u_input.b.x > max(u_input.b.x, u_input.a), all(arg_0.a.c), _wgslsmith_sub_i32(11409i, arg_0.c.b.a.x) < reverseBits(u_input.d))), true);
    let var_2 = ~(_wgslsmith_sub_vec4_u32(select(vec4<u32>(u_input.a, u_input.b.x, 31691u, 32422u), firstLeadingBit(vec4<u32>(arg_0.c.c, arg_0.c.c, arg_0.c.c, arg_0.c.c)), arg_0.c.a.c), ~firstLeadingBit(vec4<u32>(arg_0.c.c, 57798u, 0u, 56723u))) << (vec4<u32>(1u ^ arg_0.c.c, ~0u, arg_0.c.c, arg_0.c.c) % vec4<u32>(32u)));
    let var_3 = !select(arg_0.b, func_4(func_1(33622u < u_input.b.x, vec2<f32>(-107f, -436f)), _wgslsmith_dot_vec4_i32(vec4<i32>(-45251i, 2147483647i, 2147483647i, -1i), vec4<i32>(arg_0.c.a.a.x, u_input.c.x, u_input.d, arg_0.c.b.a.x))).a.c.zzw, func_2().c.x);
    return StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-163f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(-210f - _wgslsmith_f_op_f32(f32(-1f) * -1276f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -673f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-353f)) * _wgslsmith_f_op_f32(193f - 190f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-396f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(countOneBits(max(u_input.b, vec3<u32>(1378u, u_input.a, 41801u))) << (vec3<u32>(~1u, 1u, u_input.b.x) % vec3<u32>(32u)), u_input.b), _wgslsmith_add_vec3_u32(~firstTrailingBit(vec3<u32>(0u, 0u, 26564u)), _wgslsmith_div_vec3_u32(u_input.b, ~max(vec3<u32>(u_input.b.x, 0u, 48584u), u_input.b))));
    var var_1 = false;
    let x = u_input.a;
    s_output = func_5(func_4(func_1(true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-429f, -480f)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(552f, -2254f), vec2<f32>(-723f, -2372f))))), -u_input.d));
}

