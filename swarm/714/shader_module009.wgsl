struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<bool>,
    d: vec2<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_3) -> vec3<f32> {
    var var_0 = arg_0.c;
    let var_1 = -(~_wgslsmith_div_vec4_i32(min(select(u_input.b, vec4<i32>(1i, -11610i, 1i, u_input.b.x), vec4<bool>(var_0.x, true, var_0.x, true)), u_input.b), reverseBits(vec4<i32>(u_input.a, -1i, 4490i, u_input.a))));
    let var_2 = !(!select(!vec4<bool>(arg_0.e.d, var_0.x, arg_0.e.a, var_0.x), select(!vec4<bool>(var_0.x, arg_0.e.a, false, true), vec4<bool>(false, true, var_0.x, var_0.x), vec4<bool>(true, true, arg_0.c.x, true)), select(!vec4<bool>(var_0.x, false, true, true), !vec4<bool>(true, var_0.x, arg_0.e.a, var_0.x), vec4<bool>(true, true, true, true))));
    var_0 = !var_2.xy;
    var_0 = var_2.yz;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-163f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(arg_0.d.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-273f)))))));
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: vec2<i32>, arg_3: vec3<f32>) -> vec3<bool> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-126f * -1408f) + _wgslsmith_f_op_f32(-arg_3.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.x, 916f))), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(false, select(true, true, false), true), true), Struct_1(~(~u_input.e), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.e) | vec2<u32>(u_input.e, u_input.c), vec2<u32>(1u, 1u)), u_input.e, 4294967295u)), !(!((34666u & u_input.e) > u_input.e)));
    let var_1 = select(true, false, true);
    var var_2 = all(vec3<bool>(select(all(vec4<bool>(true, false, var_0.a, var_1)) && var_0.b.x, all(select(vec2<bool>(false, false), var_0.b.xx, var_0.b.zz)), _wgslsmith_f_op_f32(-arg_3.x) != _wgslsmith_f_op_f32(-365f * -147f)), !(var_0.a && var_0.a) & false, true));
    var_2 = any(select(vec2<bool>(false, var_1), !vec2<bool>(var_0.a || false, var_0.b.x), !select(any(var_0.b.zx), select(false, var_0.b.x, var_1), false & var_1)));
    var var_3 = select(select(!(!(!vec3<bool>(var_1, var_0.a, var_1))), select(vec3<bool>(true, true, all(vec3<bool>(var_0.a, var_0.a, var_1))), select(!var_0.b, vec3<bool>(var_1, var_0.a, var_0.d), var_0.b.x || true), var_0.a), true), vec3<bool>(!all(!vec4<bool>(var_1, var_1, var_1, var_0.b.x)), true, true), !vec3<bool>(u_input.e != ~42241u, -1i == _wgslsmith_mult_i32(arg_1, arg_0), true));
    return select(!vec3<bool>(false, var_0.c.a <= 82173u, true), vec3<bool>(true, true, true), vec3<bool>(all(!select(vec2<bool>(var_3.x, true), vec2<bool>(var_1, var_0.b.x), vec2<bool>(true, true))), (arg_2.x & arg_0) < arg_1, any(vec4<bool>(select(var_0.a, var_0.d, false), all(vec4<bool>(true, true, false, true)), var_1, var_0.b.x))));
}

fn func_2(arg_0: i32, arg_1: vec4<u32>, arg_2: f32, arg_3: bool) -> Struct_1 {
    let var_0 = 0u;
    var var_1 = arg_3;
    var var_2 = Struct_1(1u, ~(~arg_1.zxz));
    var var_3 = all(func_4(firstLeadingBit(44569i), 0i, ~vec2<i32>(arg_0, 53444i), _wgslsmith_f_op_vec3_f32(func_3(Struct_3(arg_1.zz, vec3<u32>(29869u, var_0, var_0), vec2<bool>(arg_3, true), vec2<f32>(arg_2, -193f), Struct_2(false, vec3<bool>(false, false, false), Struct_1(4294967295u, vec3<u32>(1u, 0u, 4294967295u)), false)))))) & (arg_3 | true);
    var_2 = Struct_1(_wgslsmith_add_u32(107971u, var_2.a) << (select(~1191u, 1u, all(vec2<bool>(true, true))) % 32u), vec3<u32>(var_2.a, 26960u, ~arg_1.x));
    return Struct_1(45291u, _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(~5024u, arg_1.x, _wgslsmith_add_u32(arg_1.x, arg_1.x)), vec3<u32>(var_2.b.x, var_2.a, arg_1.x) & firstTrailingBit(vec3<u32>(arg_1.x, 0u, 1u)), arg_1.wzw), var_2.b, ~arg_1.xwx));
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    var var_0 = 55556u;
    var_0 = ~1u;
    var var_1 = select(select(vec4<bool>(!arg_0.d, u_input.b.x > u_input.d.x, any(select(vec4<bool>(arg_0.d, false, arg_0.b.x, arg_0.d), vec4<bool>(true, arg_0.a, false, arg_0.b.x), vec4<bool>(false, true, arg_0.b.x, arg_0.d))), select(true, arg_0.b.x, true)), select(select(!vec4<bool>(arg_0.b.x, true, true, false), vec4<bool>(false, arg_0.a, arg_0.d, true), all(vec2<bool>(true, true))), !select(vec4<bool>(arg_0.b.x, arg_0.a, false, arg_0.a), vec4<bool>(false, true, arg_0.d, false), vec4<bool>(true, true, false, false)), !(u_input.e >= 17551u)), vec4<bool>(!func_4(2147483647i, u_input.a, vec2<i32>(u_input.d.x, -1i), vec3<f32>(-2536f, -805f, 1716f)).x, func_4(~(-2147483647i), ~u_input.b.x, vec2<i32>(u_input.d.x, -63235i), _wgslsmith_f_op_vec3_f32(vec3<f32>(-678f, -964f, -607f) + vec3<f32>(-197f, 179f, 1607f))).x, all(vec4<bool>(true, true, true, true)), true)), vec4<bool>(true | (_wgslsmith_f_op_f32(390f + 1939f) >= _wgslsmith_f_op_f32(ceil(938f))), u_input.c > arg_0.c.b.x, arg_0.a, all(!select(vec4<bool>(arg_0.b.x, false, true, arg_0.d), vec4<bool>(arg_0.d, arg_0.a, arg_0.a, true), true))), reverseBits(1i) >= -(~u_input.b.x));
    var var_2 = Struct_3(arg_0.c.b.zx, arg_0.c.b, !arg_0.b.zz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1301f)) - _wgslsmith_f_op_f32(max(-1781f, 737f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(842f)), 1399f)))), arg_0);
    let var_3 = arg_0.c;
    return var_2.e;
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_1) -> vec2<i32> {
    var var_0 = Struct_2(true, func_4(~_wgslsmith_mult_i32(-u_input.a, 2147483647i), 0i, vec2<i32>(~u_input.b.x, -u_input.b.x << (~7301u % 32u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(751f, arg_0.x, arg_0.x), vec3<f32>(arg_0.x, arg_0.x, arg_0.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(850f, 676f, 393f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, arg_0.x) + vec3<f32>(1543f, -1650f, arg_0.x)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.x, arg_0.x, 908f)))))), func_2(u_input.b.x, reverseBits(~vec4<u32>(arg_1.c.b.x, 27642u, 1u, arg_1.c.a)) | countOneBits(~vec4<u32>(arg_2.b.x, arg_1.c.a, 40840u, arg_2.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + arg_0.x) * -214f), !(!func_4(-6776i, 16556i, u_input.d.xy, vec3<f32>(900f, arg_0.x, arg_0.x)).x)), true);
    var var_1 = arg_1;
    let var_2 = !vec3<bool>(true, all(vec4<bool>(false, true, all(var_1.b), false)), true);
    var var_3 = arg_1;
    var var_4 = vec3<i32>(2756i, abs(_wgslsmith_add_i32(-14153i, ~(-24026i) >> (min(var_1.c.a, 0u) % 32u))), ~_wgslsmith_mod_i32(-_wgslsmith_mod_i32(15214i, u_input.d.x), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, u_input.b.x), vec2<i32>(u_input.d.x, -1i))));
    return u_input.b.wx;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: bool) -> Struct_2 {
    let var_0 = vec4<bool>(true, !arg_1.x | true, ((~17473i >= _wgslsmith_clamp_i32(u_input.b.x, -2147483647i, -1i)) || true) || arg_2, arg_2);
    var var_1 = -firstLeadingBit(_wgslsmith_mult_vec2_i32(u_input.d.yx, u_input.b.zw) | u_input.b.xw);
    var var_2 = func_6(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(trunc(1235f)), -1000f), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-225f, 909f))))))), func_5(Struct_2(var_0.x, !var_0.yzy, func_2(-22887i, vec4<u32>(4294967295u, 4294967295u, 6881u, arg_0.a), -1616f, false), true)), func_2(_wgslsmith_mult_i32(~u_input.a, firstLeadingBit(-1i)), vec4<u32>(~69335u, 4294967295u, ~4294967295u, 1u), _wgslsmith_f_op_f32(-1149f * _wgslsmith_f_op_f32(2204f - 712f)), ~arg_0.b.x > (arg_0.b.x | arg_0.a))) | _wgslsmith_div_vec2_i32(u_input.b.wx, _wgslsmith_mult_vec2_i32(vec2<i32>(var_1.x, 15109i), u_input.d.zy));
    var var_3 = func_5(Struct_2(arg_2, func_5(func_5(func_5(Struct_2(false, vec3<bool>(arg_1.x, false, true), Struct_1(u_input.e, vec3<u32>(25851u, arg_0.a, 0u)), true)))).b, func_2(var_1.x, _wgslsmith_add_vec4_u32(vec4<u32>(arg_0.b.x, 0u, arg_0.b.x, 1u), vec4<u32>(arg_0.a, u_input.c, u_input.e, arg_0.b.x) << (vec4<u32>(arg_0.a, arg_0.a, 4294967295u, arg_0.a) % vec4<u32>(32u))), _wgslsmith_f_op_f32(max(-1295f, _wgslsmith_f_op_f32(trunc(1131f)))), !select(var_0.x, arg_1.x, true)), func_5(Struct_2(true, func_4(1i, 5940i, u_input.d.yy, vec3<f32>(629f, -1201f, 2022f)), func_2(u_input.b.x, vec4<u32>(16147u, 43404u, u_input.e, 0u), -538f, arg_2), true)).a)).c;
    let var_4 = ~_wgslsmith_dot_vec4_i32(select(abs(u_input.b), vec4<i32>(-769i, firstLeadingBit(u_input.b.x), countOneBits(-55435i), firstTrailingBit(u_input.d.x)), select(select(vec4<bool>(true, arg_1.x, var_0.x, true), vec4<bool>(var_0.x, arg_2, true, arg_1.x), var_0.x), !var_0, true)), firstLeadingBit(select(vec4<i32>(-35451i, -2147483647i, 29343i, -26400i), u_input.b, vec4<bool>(false, false, arg_2, false))));
    return Struct_2(!select(arg_2, all(arg_1), !(!arg_2)), !func_5(Struct_2(true | var_0.x, select(arg_1, arg_1, var_0.xwz), Struct_1(65623u, var_3.b), u_input.c > arg_0.a)).b, Struct_1(~_wgslsmith_dot_vec4_u32(vec4<u32>(62977u, 33913u, u_input.c, u_input.e) & vec4<u32>(0u, u_input.e, 0u, 119108u), firstLeadingBit(vec4<u32>(var_3.a, u_input.c, 11982u, 4294967295u))), arg_0.b), any(!vec2<bool>(arg_1.x, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.c, _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, u_input.e, 22543u), ~vec3<u32>(4391u, u_input.c >> (u_input.c % 32u), u_input.c)));
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1711f, 1f) * vec2<f32>(_wgslsmith_f_op_f32(abs(-243f)), 221f));
    var var_2 = func_1(Struct_1(75209u, ~vec3<u32>(~47021u, u_input.e, u_input.e)), !(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x))))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)));
    var_0 = var_2.c;
    let var_3 = (vec4<i32>(min(_wgslsmith_dot_vec2_i32(u_input.d.xy, vec2<i32>(11671i, -31748i)), ~(-11765i)), u_input.b.x, _wgslsmith_div_i32(u_input.a, max(u_input.d.x, u_input.d.x)), u_input.b.x) | vec4<i32>(min(u_input.a, i32(-1i) * -1i), -u_input.b.x | firstLeadingBit(u_input.d.x), u_input.a, u_input.b.x)) | ~(-abs(vec4<i32>(1i, u_input.d.x, u_input.a, u_input.b.x)));
    let var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(152f, var_1.x));
    var var_5 = var_2.d;
    var_0 = func_5(Struct_2(!var_2.b.x, vec3<bool>(all(var_2.b.xz) & true, true, true), Struct_1(var_0.a, ~var_0.b), all(vec4<bool>(true, var_2.c.b.x < u_input.e, var_2.d, true)))).c;
    var var_6 = var_4.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, ~u_input.a, ~(~var_0.b.x), vec3<i32>(min(min(-64269i, select(5393i, -16721i, true)), ~u_input.a), -2147483647i, countOneBits(reverseBits(u_input.d.x)) >> ((func_5(Struct_2(false, vec3<bool>(var_2.a, var_2.b.x, var_2.a), var_2.c, true)).c.a & 4294967295u) % 32u)));
}

