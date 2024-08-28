struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: vec4<f32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec2<bool>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<u32>,
    c: vec4<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1000f;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> vec4<f32> {
    var var_0 = -9811i;
    var var_1 = Struct_4(Struct_3(vec2<i32>(-1i >> (u_input.d.x % 32u), -13695i) & _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(2147483647i, u_input.a))), ~min(vec4<u32>(1u, u_input.c.x, firstTrailingBit(u_input.c.x), u_input.d.x), ~vec4<u32>(29679u, u_input.c.x, u_input.c.x, 57560u) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, 4294967295u, u_input.d.x, 1u), vec4<u32>(4294967295u, u_input.c.x, 44349u, u_input.d.x)) % vec4<u32>(32u))), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>((u_input.c.x != u_input.d.x) || true, false, true, !any(vec2<bool>(true, false))), vec4<bool>(true, true, true, true)), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-942f, -1214f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1478f, -1038f), vec2<f32>(-394f, 673f), true)), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)))), vec3<bool>(true, true, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(187f, 438f, -1472f, 1839f) + vec4<f32>(804f, 1378f, 884f, -759f)), max(~(-7345i), _wgslsmith_mult_i32(u_input.a, 63220i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-204f, -157f, 251f, 603f))), select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(false, true)), !select(vec2<bool>(true, false), vec2<bool>(false, true), true)), Struct_1(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1080f, 1000f))), vec3<bool>(true, true, true), vec4<f32>(859f, 180f, _wgslsmith_f_op_f32(-496f * 1000f), _wgslsmith_f_op_f32(238f - -649f)), u_input.b & 1i), 1i));
    var_0 = _wgslsmith_dot_vec2_i32(-_wgslsmith_mult_vec2_i32(var_1.a.a | vec2<i32>(u_input.b, 28546i), vec2<i32>(-var_1.a.a.x, _wgslsmith_clamp_i32(0i, u_input.b, 12798i))), ~var_1.a.a);
    var var_2 = true;
    let var_3 = _wgslsmith_sub_vec3_i32(min((-vec3<i32>(4493i, 19558i, var_1.a.a.x) >> (_wgslsmith_mod_vec3_u32(var_1.b.zyw, vec3<u32>(var_1.b.x, var_1.b.x, 1u)) % vec3<u32>(32u))) ^ _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, 2147483647i, u_input.b), vec3<i32>(22033i, var_1.d.d.d, 2147483647i)), abs(vec3<i32>(2147483647i, -43066i, 32746i))), ~countOneBits(vec3<i32>(var_1.d.a.d, 7007i, 1i))), ~vec3<i32>(firstLeadingBit(~var_1.d.e), ~(~(-17338i)), var_1.a.a.x));
    return var_1.d.a.c;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-128f, 1240f, -1098f, 1778f))))) * vec4<f32>(_wgslsmith_f_op_f32(373f - -1000f), -1540f, _wgslsmith_div_f32(-1198f, -195f), -1308f)) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(567f, 1007f)), -990f, _wgslsmith_f_op_f32(-1000f - 1217f), _wgslsmith_f_op_f32(-858f + 1128f)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -172f), _wgslsmith_div_f32(-1234f, -181f), -947f, _wgslsmith_f_op_f32(936f + -886f)))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(func_3()), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1658f, 1685f, -669f, 697f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-945f, -1105f, -958f, 1626f), vec4<f32>(715f, -284f, 1296f, -1000f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(324f, 1189f, -787f, 805f) + vec4<f32>(536f, 504f, 1514f, -520f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(212f, -1000f, 1137f, 533f), _wgslsmith_div_vec4_f32(vec4<f32>(-308f, -1016f, 2906f, 355f), vec4<f32>(693f, -148f, 184f, 537f)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)))), true)))));
    global0 = _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, -541f), _wgslsmith_f_op_f32(select(-168f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(185f, 472f, true)))), true & (min(4294967295u, u_input.c.x) <= ~4294967295u))));
    global0 = -611f;
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(var_0.x)))), -1349f) - var_0.wz), select(vec3<bool>(!any(vec3<bool>(false, true, true)), all(vec2<bool>(false, false)), any(vec4<bool>(true, true, true, true))), select(vec3<bool>(true, true, any(vec4<bool>(true, true, true, false))), vec3<bool>(u_input.d.x > 1u, true, all(vec2<bool>(true, false))), (u_input.b & 39878i) >= firstLeadingBit(u_input.a)), select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false), vec3<bool>(false, false, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true)), vec3<bool>(true, true, true), vec3<bool>(false, u_input.b <= u_input.b, all(vec3<bool>(true, false, false))))), _wgslsmith_f_op_vec4_f32(func_3()), u_input.b);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-967f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(1632f - var_0.x))))));
    return var_1;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: Struct_3) -> Struct_1 {
    global0 = 696f;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-629f)));
    var var_0 = 1f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1146f)) * 1214f);
    var var_1 = abs(vec3<i32>(-(~2147483647i), -_wgslsmith_add_i32(arg_1.x, arg_1.x), u_input.a)) >> (reverseBits(select(~(~vec3<u32>(u_input.d.x, u_input.c.x, 1u)), ~(vec3<u32>(u_input.d.x, u_input.c.x, u_input.d.x) | vec3<u32>(u_input.c.x, u_input.c.x, u_input.d.x)), !select(false, false, false))) % vec3<u32>(32u));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(firstLeadingBit(countOneBits(select(~vec4<i32>(2147483647i, u_input.a, u_input.a, 1i), abs(vec4<i32>(-2147483647i, 1465i, u_input.b, u_input.a)), true))), vec4<i32>(reverseBits(-(~(-21775i))), u_input.a, 0i, 41592i ^ select(1i | u_input.a, u_input.b, true)), Struct_3(~reverseBits(vec2<i32>(-6371i, u_input.b) >> (u_input.c % vec2<u32>(32u)))));
    var var_1 = ~vec3<i32>(-var_0.d, ~u_input.b, 0i);
    var_1 = ~vec3<i32>(~(-_wgslsmith_div_i32(2147483647i, 2147483647i)), _wgslsmith_dot_vec4_i32(countOneBits(abs(vec4<i32>(-40942i, u_input.a, var_0.d, 2147483647i))), ~vec4<i32>(-4374i, 2147483647i, var_0.d, var_0.d)), ~var_0.d);
    var_1 = firstTrailingBit(-reverseBits(~vec3<i32>(-21090i, u_input.b, -2147483647i)));
    var var_2 = _wgslsmith_sub_u32(u_input.c.x, 19543u);
    let var_3 = Struct_2(func_2(), var_0.c, func_1(reverseBits(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, -16300i, -6277i, 70043i), vec4<i32>(11372i, 15796i, -73490i, 15049i)), vec4<i32>(u_input.a, u_input.a, 0i, -36310i) >> (vec4<u32>(52610u, 4294967295u, 3574u, u_input.d.x) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, var_1.x, 2147483647i, var_1.x), vec4<i32>(u_input.a, var_0.d, -33646i, var_1.x)))), vec4<i32>(min(1i, -2147483647i), -_wgslsmith_dot_vec4_i32(vec4<i32>(-11323i, u_input.a, 0i, var_1.x), vec4<i32>(-26298i, var_0.d, 32583i, 2147483647i)), 2147483647i, -12352i), Struct_3(countOneBits(~var_1.yx))).b.yz, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.a.x * -571f), var_0.c.x) + _wgslsmith_f_op_vec2_f32(-var_0.c.ww)), var_0.b, var_0.c, -((i32(-1i) * -41087i) << (u_input.d.x % 32u))), -7695i);
    var var_4 = Struct_4(Struct_3(var_1.xz), ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d.x, _wgslsmith_dot_vec2_u32(u_input.c, u_input.d), ~4294967295u, 0u), ~vec4<u32>(4294967295u, 94364u, u_input.d.x, u_input.d.x)), select(vec4<bool>(any(vec3<bool>(var_0.b.x, var_0.b.x, var_3.d.b.x)), any(vec4<bool>(true, var_0.b.x, var_0.b.x, var_3.a.b.x)) || true, all(vec4<bool>(var_3.c.x, true, var_3.d.b.x, false)), true), !select(select(vec4<bool>(false, var_3.c.x, true, false), vec4<bool>(true, var_0.b.x, true, var_0.b.x), var_0.b.x), select(vec4<bool>(var_0.b.x, var_3.c.x, var_0.b.x, var_3.a.b.x), vec4<bool>(false, false, var_0.b.x, true), vec4<bool>(var_0.b.x, false, var_0.b.x, false)), select(vec4<bool>(false, false, false, var_3.d.b.x), vec4<bool>(false, var_0.b.x, var_3.a.b.x, var_0.b.x), var_3.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1369f - -514f) + var_3.d.c.x) < 1181f), Struct_2(func_2(), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1334f), _wgslsmith_f_op_f32(var_3.d.a.x - var_3.b.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.a.x), 1120f)), _wgslsmith_f_op_f32(min(var_0.c.x, -1000f)), var_0.c.x), !var_3.a.b.yz, var_0, min(~0i, u_input.a)));
    global0 = 1349f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(239f + var_0.c.x)))), -1i, 215f, _wgslsmith_add_vec4_u32(vec4<u32>(~var_4.b.x, 17452u, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(var_4.b.x, u_input.c.x, var_4.b.x), u_input.c.x), ~0u), vec4<u32>(~(~var_4.b.x), _wgslsmith_mult_u32(var_4.b.x, ~u_input.c.x), ~385u >> (_wgslsmith_mod_u32(var_4.b.x, 52645u) % 32u), var_4.b.x)), -1510f);
}

