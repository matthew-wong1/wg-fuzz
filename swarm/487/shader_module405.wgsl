struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: f32,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_4, arg_1: f32, arg_2: f32, arg_3: f32) -> vec4<i32> {
    var var_0 = true;
    global0 = -1222f;
    var var_1 = Struct_3(Struct_1(_wgslsmith_dot_vec4_u32(~u_input.a, _wgslsmith_mult_vec4_u32(u_input.a & u_input.a, vec4<u32>(u_input.a.x, arg_0.b.c.b, 0u, 4458u) >> (vec4<u32>(arg_0.a.b.b, 1u, 46029u, 88097u) % vec4<u32>(32u)))), ~(7273u | (u_input.a.x >> (arg_0.d.x % 32u))), !(!select(vec2<bool>(arg_0.b.c.c.x, arg_0.b.b), vec2<bool>(arg_0.a.b.c.x, false), true))), true, arg_0.b.c, arg_0.b.d, vec4<f32>(_wgslsmith_f_op_f32(max(-155f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2))))), _wgslsmith_f_op_f32(ceil(arg_2)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - arg_0.a.e.x)), _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(floor(-354f))), false)), arg_2));
    let var_2 = vec2<f32>(arg_1, _wgslsmith_f_op_f32(floor(arg_1)));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_2.x), arg_1) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1.e.ww, var_2) * vec2<f32>(1f, 1f)))));
    return _wgslsmith_add_vec4_i32(arg_0.c, vec4<i32>(-1i) * -vec4<i32>(-38002i, -22043i, _wgslsmith_dot_vec3_i32(arg_0.c.zzw, arg_0.c.zzy), _wgslsmith_sub_i32(-14665i, arg_0.a.c)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<u32>) -> vec4<i32> {
    global0 = -500f;
    var var_0 = Struct_1(~4294967295u, arg_1.x, vec2<bool>(!any(vec4<bool>(true, true, true, true)), select(true, all(vec4<bool>(false, false, false, false)), true)));
    let var_1 = 463f;
    var var_2 = !any(vec4<bool>(true, abs(var_0.b) != (arg_1.x | arg_1.x), var_1 <= var_1, all(var_0.c)));
    let var_3 = _wgslsmith_f_op_f32(floor(var_1));
    return arg_0;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: u32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -443f);
    global0 = _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1222f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-166f * 1293f))))) + -209f));
    global0 = -1028f;
    global0 = _wgslsmith_f_op_f32(sign(arg_1.e.x));
    let var_1 = ~arg_2;
    return Struct_2(arg_1.c, Struct_1(1u, 4294967295u, select(!arg_1.c.c, !(!arg_1.d.c), true)), 1i, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(var_0)))))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, var_0))), vec2<f32>(-1000f, 268f))))))));
}

fn func_1(arg_0: vec4<i32>) -> vec2<i32> {
    global0 = _wgslsmith_f_op_f32(-192f - _wgslsmith_f_op_f32(f32(-1f) * -876f));
    var var_0 = func_4(func_2(Struct_4(Struct_2(Struct_1(u_input.a.x, u_input.a.x, vec2<bool>(true, true)), Struct_1(u_input.a.x, 1u, vec2<bool>(true, false)), -8727i, -1636f, vec2<f32>(-1187f, 1717f)), Struct_3(Struct_1(0u, 1u, vec2<bool>(false, false)), true, Struct_1(u_input.a.x, 22269u, vec2<bool>(false, true)), Struct_1(u_input.a.x, u_input.a.x, vec2<bool>(true, true)), vec4<f32>(910f, -1125f, -289f, 1242f)), vec4<i32>(-3718i, arg_0.x, arg_0.x, -1i), vec2<u32>(u_input.a.x, 0u) & u_input.a.xw, vec3<f32>(-1000f, 1263f, 1320f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(904f, 770f)) * _wgslsmith_div_f32(1626f, 1522f)), _wgslsmith_f_op_f32(min(974f, -1517f)), -1000f) ^ -func_3(-vec4<i32>(arg_0.x, arg_0.x, -2147483647i, -1i), u_input.a << (u_input.a % vec4<u32>(32u))), Struct_3(Struct_1(firstTrailingBit(reverseBits(34848u)), 33268u, !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false))), false, Struct_1(~(~u_input.a.x), _wgslsmith_mult_u32(4294967295u, u_input.a.x) ^ (4294967295u << (0u % 32u)), !select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false))), Struct_1(u_input.a.x, _wgslsmith_dot_vec2_u32(select(vec2<u32>(30794u, u_input.a.x), u_input.a.zw, vec2<bool>(false, false)), ~vec2<u32>(1u, u_input.a.x)), vec2<bool>(true, true)), vec4<f32>(1f, 1f, 1f, 1f)), u_input.a.x ^ (u_input.a.x << (u_input.a.x % 32u)));
    var var_1 = Struct_1(1u, abs(~74069u), var_0.b.c);
    var var_2 = u_input.a.zyy;
    return vec2<i32>(var_0.c, var_0.c) & arg_0.xy;
}

fn func_5(arg_0: vec2<i32>, arg_1: i32, arg_2: vec2<u32>) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(217f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(402f, 1444f)) + func_4(vec4<i32>(arg_0.x, arg_1, -2147483647i, arg_0.x), Struct_3(Struct_1(0u, 1u, vec2<bool>(false, true)), true, Struct_1(arg_2.x, 49026u, vec2<bool>(false, true)), Struct_1(u_input.a.x, 31853u, vec2<bool>(true, false)), vec4<f32>(-2385f, 515f, 3261f, 640f)), 1u).e.x)), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -1019f))));
    var var_0 = _wgslsmith_dot_vec2_i32(~(vec2<i32>(firstLeadingBit(0i), arg_1) >> (u_input.a.wz % vec2<u32>(32u))), arg_0);
    var_0 = arg_1;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_mult_vec4_i32(~vec4<i32>(2147483647i, arg_0.x, arg_0.x, 7626i), countOneBits(vec4<i32>(-15934i, arg_0.x, arg_1, 2147483647i))), Struct_3(func_4(vec4<i32>(arg_0.x, arg_0.x, arg_0.x, -2147483647i), Struct_3(Struct_1(55506u, arg_2.x, vec2<bool>(false, true)), false, Struct_1(u_input.a.x, 7561u, vec2<bool>(true, true)), Struct_1(u_input.a.x, arg_2.x, vec2<bool>(true, true)), vec4<f32>(-363f, -458f, 102f, -823f)), 1u).a, 1u <= arg_2.x, func_4(vec4<i32>(-2147483647i, 0i, -1i, arg_0.x), Struct_3(Struct_1(0u, 4294967295u, vec2<bool>(false, false)), false, Struct_1(arg_2.x, arg_2.x, vec2<bool>(false, false)), Struct_1(18784u, 88228u, vec2<bool>(false, true)), vec4<f32>(209f, -1943f, -1000f, -179f)), 1u).b, func_4(vec4<i32>(61539i, arg_1, arg_1, 16661i), Struct_3(Struct_1(arg_2.x, 61203u, vec2<bool>(false, true)), false, Struct_1(u_input.a.x, u_input.a.x, vec2<bool>(false, true)), Struct_1(1u, 1u, vec2<bool>(false, true)), vec4<f32>(-441f, -1662f, -478f, 663f)), arg_2.x).b, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(885f, 1000f, 1000f, 692f)))), 14708u).d - -787f));
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1754f * _wgslsmith_f_op_f32(floor(139f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1116f + -1166f) * _wgslsmith_f_op_f32(f32(-1f) * -1673f)))))), -545f));
    return Struct_1(countOneBits(33939u), 55665u, select(vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(true, true)), true), select(vec2<bool>(true, all(vec2<bool>(true, true))), vec2<bool>(true, true), u_input.a.x != _wgslsmith_sub_u32(1u, u_input.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(vec4<i32>(i32(-1i) * -31500i, -46014i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 2147483647i), vec2<i32>(-23228i, -1i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 2147483647i, -60486i, 0i), vec4<i32>(66130i, 2147483647i, -1i, -30869i)))) << (~vec2<u32>(17462u, abs(u_input.a.x)) % vec2<u32>(32u)), -1i, u_input.a.yw);
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -911f);
    var var_1 = func_4(~(vec4<i32>(1i, ~33390i, _wgslsmith_sub_i32(-30801i, -1i), _wgslsmith_dot_vec3_i32(vec3<i32>(-23669i, 30001i, 962i), vec3<i32>(-10465i, -6796i, -13627i))) ^ max(~vec4<i32>(-34328i, 26375i, 59370i, 49836i), ~vec4<i32>(-1i, 0i, 2147483647i, 66305i))), Struct_3(var_0, !(true && select(false, var_0.c.x, var_0.c.x)), func_4(countOneBits(vec4<i32>(-2147483647i, 3342i, -2147483647i, -1i)), Struct_3(Struct_1(var_0.a, u_input.a.x, vec2<bool>(false, var_0.c.x)), !var_0.c.x, var_0, Struct_1(38791u, u_input.a.x, vec2<bool>(false, var_0.c.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(701f, 622f, 1828f, 281f))), abs(var_0.b) | 4294967295u).b, func_5(vec2<i32>(-6930i, -2147483647i), func_1(vec4<i32>(-2147483647i, 0i, -11424i, -2572i)).x | _wgslsmith_dot_vec2_i32(vec2<i32>(-35070i, -4746i), vec2<i32>(1i, -278i)), vec2<u32>(abs(var_0.b), 41566u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -508f), -1438f, _wgslsmith_f_op_f32(step(-2610f, -517f)), -479f) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(751f, -361f, -322f, 1183f), vec4<f32>(-1100f, -1475f, 187f, 1293f), vec4<bool>(true, true, var_0.c.x, true))))))), abs(_wgslsmith_sub_u32(4294967295u, u_input.a.x)));
    let var_2 = Struct_4(func_4(-vec4<i32>(-var_1.c, firstLeadingBit(-1i), -32150i & var_1.c, -1i), Struct_3(Struct_1(var_0.b, abs(var_1.b.b), select(vec2<bool>(true, false), vec2<bool>(var_0.c.x, var_0.c.x), var_0.c)), var_1.a.c.x, var_0, var_0, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.e.x, -976f, 230f, 685f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(344f, var_1.d, 222f, var_1.d)))), var_1.a.a), Struct_3(func_5(-select(vec2<i32>(-10955i, 2147483647i), vec2<i32>(-1i, -8485i), false), -4857i, ~_wgslsmith_mod_vec2_u32(vec2<u32>(43808u, u_input.a.x), vec2<u32>(var_0.b, var_0.a))), true, var_1.b, func_4(vec4<i32>(~34440i, var_1.c, var_1.c, var_1.c), Struct_3(var_1.a, true, func_4(vec4<i32>(-1i, var_1.c, var_1.c, var_1.c), Struct_3(var_0, var_1.b.c.x, Struct_1(60509u, u_input.a.x, var_0.c), Struct_1(4294967295u, 56034u, vec2<bool>(true, var_0.c.x)), vec4<f32>(-1716f, 283f, var_1.e.x, -342f)), var_1.a.a).a, func_4(vec4<i32>(var_1.c, -1i, var_1.c, 21276i), Struct_3(Struct_1(u_input.a.x, u_input.a.x, vec2<bool>(true, true)), var_0.c.x, var_1.b, var_0, vec4<f32>(109f, -515f, 1094f, var_1.d)), 1u).a, _wgslsmith_f_op_vec4_f32(vec4<f32>(-384f, -307f, -1032f, 1361f) + vec4<f32>(var_1.e.x, var_1.e.x, -2696f, var_1.d))), ~43716u).b, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-622f, _wgslsmith_f_op_f32(966f + var_1.e.x), _wgslsmith_f_op_f32(round(-1122f)), _wgslsmith_f_op_f32(f32(-1f) * -119f))))), -vec4<i32>(var_1.c & var_1.c, ~var_1.c, _wgslsmith_mod_i32(var_1.c, 10578i), -var_1.c), abs(vec2<u32>(4890u, 10292u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d, _wgslsmith_f_op_f32(round(var_1.e.x)), var_1.e.x))));
    var var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(0u, var_1.b.b, 19966u));
}

