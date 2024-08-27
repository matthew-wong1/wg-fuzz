struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: i32,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_3) -> vec3<bool> {
    let var_0 = firstTrailingBit(_wgslsmith_dot_vec3_u32(~countOneBits(~vec3<u32>(arg_1.a, arg_1.a, u_input.a)), ~select(~vec3<u32>(u_input.a, 4294967295u, u_input.a), ~vec3<u32>(u_input.a, 4294967295u, arg_1.a), arg_1.b.zyx)));
    return arg_1.d.a.xwx;
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: vec3<bool>) -> u32 {
    var var_0 = _wgslsmith_div_i32(u_input.e.x, arg_2.c);
    var_0 = _wgslsmith_sub_i32(-12036i, -1390i);
    var var_1 = Struct_1(vec4<bool>(!all(select(vec2<bool>(true, true), vec2<bool>(false, arg_3.x), arg_2.b.x)), !all(select(vec4<bool>(arg_3.x, true, true, true), vec4<bool>(true, arg_3.x, arg_3.x, false), arg_2.b)), true, all(vec3<bool>(true, true, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2.d.b + arg_2.d.b) * arg_2.d.c) + _wgslsmith_div_vec4_f32(vec4<f32>(1000f, arg_2.d.c.x, arg_2.d.b.x, arg_2.d.c.x), _wgslsmith_div_vec4_f32(arg_2.d.c, arg_2.d.c))) - vec4<f32>(-1000f, -121f, arg_2.d.c.x, -914f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2.d.b) - vec4<f32>(1972f, arg_2.d.b.x, 1005f, arg_1.x)))), arg_2.d.c));
    let var_2 = u_input.d.x;
    let var_3 = _wgslsmith_f_op_f32(-arg_1.x);
    return u_input.a;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: f32) -> bool {
    let var_0 = 8280u;
    var var_1 = Struct_3(var_0, arg_0.a, -((~arg_1.c ^ _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.e.x, 3489i), vec3<i32>(u_input.d.x, u_input.d.x, arg_1.c))) >> (func_4(_wgslsmith_f_op_vec3_f32(arg_1.d.c.yyw * arg_0.c.zzw), _wgslsmith_div_vec3_f32(vec3<f32>(arg_2, -324f, arg_0.c.x), arg_0.c.xxw), arg_1, func_3(false, arg_1)) % 32u)), arg_0, true);
    var var_2 = select(arg_1.b.xwx, arg_1.d.a.zxz, var_1.d.a.wyx);
    var var_3 = ~_wgslsmith_div_i32(~(-_wgslsmith_mod_i32(-1i, 2147483647i)), _wgslsmith_clamp_i32(u_input.e.x, _wgslsmith_clamp_i32(arg_1.c, 0i, -2147483647i) ^ -1i, -9850i));
    var var_4 = arg_1;
    return 23749u > ~(~var_0);
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> Struct_2 {
    let var_0 = ~(-u_input.b.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(arg_2.c.xyz + arg_2.c.xyy);
    var var_2 = countOneBits(select(~vec3<u32>(~24380u, firstLeadingBit(53916u), _wgslsmith_div_u32(27285u, arg_1.b)), ~max(vec3<u32>(u_input.a, u_input.a, 43936u), vec3<u32>(u_input.a, 0u, u_input.a) & vec3<u32>(arg_1.b, 4294967295u, 0u)), true));
    let var_3 = 1i;
    var_2 = ~_wgslsmith_mod_vec3_u32((firstLeadingBit(vec3<u32>(11906u, 43587u, arg_1.b)) | vec3<u32>(arg_1.b, arg_1.b, 1u)) >> (~(~vec3<u32>(u_input.a, 1u, arg_1.b)) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32((vec3<u32>(0u, arg_1.b, 38637u) & vec3<u32>(u_input.a, var_2.x, var_2.x)) << (min(vec3<u32>(arg_1.b, arg_1.b, 4294967295u), vec3<u32>(4294967295u, 1u, var_2.x)) % vec3<u32>(32u)), vec3<u32>(min(arg_1.b, 4284u), var_2.x ^ u_input.a, u_input.a | 0u)));
    return Struct_2(abs(-18718i), reverseBits(arg_1.b) | min(arg_1.b, 44806u));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: vec2<bool>) -> Struct_2 {
    let var_0 = arg_1.b;
    let var_1 = !select(vec2<bool>(true, arg_3.x), vec2<bool>(!arg_3.x, arg_3.x), select(select(!arg_3, arg_3, true), func_3(arg_3.x, Struct_3(32191u, vec4<bool>(false, arg_3.x, false, arg_3.x), u_input.b.x, Struct_1(vec4<bool>(arg_3.x, true, false, true), vec4<f32>(1638f, 796f, 506f, -344f), vec4<f32>(212f, 858f, 805f, 1059f)), true)).yy, select(!arg_3, !arg_3, !arg_3.x)));
    let var_2 = Struct_3(arg_0.b, !select(vec4<bool>(any(vec4<bool>(arg_3.x, arg_3.x, false, arg_3.x)), false, arg_3.x, arg_3.x), !vec4<bool>(true, arg_3.x, true, arg_3.x), !vec4<bool>(arg_3.x, false, false, var_1.x)), _wgslsmith_mult_i32(2147483647i, arg_0.a | 23434i) ^ arg_2.x, Struct_1(select(select(!vec4<bool>(true, true, arg_3.x, false), select(vec4<bool>(true, var_1.x, false, false), vec4<bool>(false, var_1.x, true, var_1.x), var_1.x), true), vec4<bool>(arg_3.x, 1i > arg_1.a, all(vec3<bool>(false, true, arg_3.x)), all(vec2<bool>(true, false))), arg_3.x || true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1300f, -1073f, 1637f, 225f)) + vec4<f32>(1307f, 501f, -280f, -563f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-492f, -1000f, -603f, 428f) + vec4<f32>(-1512f, 574f, -170f, -2126f)) + _wgslsmith_div_vec4_f32(vec4<f32>(-1716f, -159f, 935f, 1599f), vec4<f32>(713f, 227f, -1007f, 373f))) - vec4<f32>(_wgslsmith_f_op_f32(951f + 729f), _wgslsmith_f_op_f32(-130f - -197f), _wgslsmith_f_op_f32(sign(-2590f)), -1016f))), false);
    let var_3 = max(-_wgslsmith_mult_vec3_i32(u_input.d, vec3<i32>(-3344i, ~(-1i), -39773i)), u_input.b.wxw);
    return func_5(!select(!var_2.b.zwz, !(!var_2.d.a.zwz), vec3<bool>(select(false, false, var_1.x), true, true)), arg_1, var_2.d, Struct_1(var_2.d.a, vec4<f32>(_wgslsmith_div_f32(var_2.d.c.x, _wgslsmith_f_op_f32(round(123f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.d.b.x + -586f) - -187f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d.c.x)), var_2.d.c.x), _wgslsmith_div_vec4_f32(var_2.d.c, vec4<f32>(_wgslsmith_f_op_f32(step(var_2.d.c.x, 852f)), _wgslsmith_div_f32(396f, 778f), var_2.d.c.x, _wgslsmith_div_f32(-1000f, 2699f)))));
}

fn func_1(arg_0: vec3<f32>, arg_1: i32) -> Struct_1 {
    let var_0 = func_6(func_5(vec3<bool>(true, func_2(Struct_1(vec4<bool>(true, false, false, false), vec4<f32>(arg_0.x, 1000f, arg_0.x, -381f), vec4<f32>(arg_0.x, 675f, 156f, arg_0.x)), Struct_3(1u, vec4<bool>(false, false, false, false), u_input.b.x, Struct_1(vec4<bool>(false, true, true, false), vec4<f32>(arg_0.x, arg_0.x, 1703f, arg_0.x), vec4<f32>(arg_0.x, 140f, -121f, 1278f)), false), _wgslsmith_f_op_f32(f32(-1f) * -1401f)), true), Struct_2(1i, ~u_input.a ^ 1u), Struct_1(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1407f, 145f, arg_0.x, 800f))), vec4<f32>(1848f, arg_0.x, 1243f, 459f))), vec4<f32>(_wgslsmith_div_f32(arg_0.x, 387f), 1702f, _wgslsmith_f_op_f32(max(-1079f, arg_0.x)), _wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)))), Struct_1(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(391f, arg_0.x, 807f, arg_0.x)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1482f, -2481f, arg_0.x, -2222f)))))), Struct_2(_wgslsmith_div_i32(u_input.c, ~(arg_1 << (u_input.a % 32u))), ~0u | (0u & ~u_input.a)), vec2<i32>(_wgslsmith_div_i32(arg_1, firstTrailingBit(u_input.e.x)), -47828i), !select(func_3(all(vec4<bool>(true, false, true, true)), Struct_3(u_input.a, vec4<bool>(true, false, false, false), u_input.e.x, Struct_1(vec4<bool>(true, false, true, true), vec4<f32>(arg_0.x, -1482f, -160f, -1000f), vec4<f32>(375f, arg_0.x, arg_0.x, arg_0.x)), true)).zy, vec2<bool>(select(true, false, true), all(vec4<bool>(false, true, true, false))), vec2<bool>(true, true)));
    let var_1 = vec4<bool>(select((i32(-1i) * -39911i) != firstLeadingBit(select(-38629i, var_0.a, true)), !func_3(true, Struct_3(u_input.a, vec4<bool>(false, true, true, false), arg_1, Struct_1(vec4<bool>(true, false, false, false), vec4<f32>(arg_0.x, 1168f, 462f, 647f), vec4<f32>(arg_0.x, arg_0.x, -1170f, -1562f)), true)).x, !(_wgslsmith_add_u32(u_input.a, u_input.a) <= var_0.b)), func_3(false, Struct_3(0u, select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), false)), -select(arg_1, 0i, true), Struct_1(vec4<bool>(false, false, true, false), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(609f, 1000f, -527f, arg_0.x), vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -1296f), vec4<bool>(false, true, true, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-790f, 1653f, -591f, -103f))), true)).x, !(!all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true))), !any(vec2<bool>(true, true)));
    let var_2 = all(vec3<bool>(false != func_2(Struct_1(var_1, vec4<f32>(-1416f, arg_0.x, 1000f, arg_0.x), vec4<f32>(arg_0.x, 412f, arg_0.x, arg_0.x)), Struct_3(var_0.b, vec4<bool>(var_1.x, var_1.x, false, true), -88155i, Struct_1(vec4<bool>(var_1.x, true, var_1.x, false), vec4<f32>(arg_0.x, -1183f, 922f, 686f), vec4<f32>(-2253f, arg_0.x, arg_0.x, arg_0.x)), false), _wgslsmith_f_op_f32(-arg_0.x)), var_1.x, true));
    var var_3 = var_2;
    let var_4 = all(select(vec2<bool>(true, (arg_1 < u_input.b.x) || true), vec2<bool>(any(select(vec3<bool>(var_1.x, var_2, var_2), var_1.wxx, vec3<bool>(false, var_2, var_2))), true), _wgslsmith_f_op_f32(select(540f, 570f, true)) <= arg_0.x));
    return Struct_1(var_1, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-583f, arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(406f)) + _wgslsmith_f_op_f32(arg_0.x - arg_0.x)), arg_0.x))), vec4<f32>(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(496f + _wgslsmith_f_op_f32(floor(arg_0.x)))), arg_0.x, _wgslsmith_f_op_f32(arg_0.x + 460f), -2160f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(step(-360f, -444f));
    let var_1 = _wgslsmith_mod_vec2_i32(-u_input.e, u_input.d.zz);
    let var_2 = Struct_3(30303u, vec4<bool>(true, true, true, true), abs(u_input.d.x), func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-258f, var_0, var_0))), var_1.x & -_wgslsmith_mult_i32(-17756i, -1i)), !(false & all(select(vec2<bool>(true, false), vec2<bool>(true, true), true))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d.b, var_2.d.c.wz, ~min(min(~vec4<u32>(81515u, 4294967295u, u_input.a, 4294967295u), reverseBits(vec4<u32>(64697u, 37628u, u_input.a, var_2.a))), select(vec4<u32>(u_input.a, 4385u, var_2.a, 1u), countOneBits(vec4<u32>(1u, 51630u, 63166u, 62944u)), select(var_2.b, vec4<bool>(var_2.d.a.x, false, false, var_2.d.a.x), vec4<bool>(true, true, false, var_2.b.x)))));
}

