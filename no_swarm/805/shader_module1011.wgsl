struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: i32,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = abs(~(39085i >> (~_wgslsmith_dot_vec3_u32(u_input.a, u_input.a) % 32u)));
    var var_1 = Struct_4(Struct_1(u_input.c, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-443f, 1239f, -113f, -748f), vec4<f32>(1239f, -279f, -206f, -188f)), _wgslsmith_div_vec4_f32(vec4<f32>(-162f, 476f, -233f, -2885f), vec4<f32>(-177f, 190f, -222f, -304f))), vec4<f32>(-709f, _wgslsmith_div_f32(-2063f, 382f), -832f, _wgslsmith_f_op_f32(430f + 888f)))), var_0), Struct_3(Struct_1(_wgslsmith_add_vec3_i32(-vec3<i32>(var_0, 0i, var_0), vec3<i32>(var_0, -2147483647i, var_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-167f, 2106f, -279f, 605f) - vec4<f32>(-238f, 459f, -1000f, -390f))), -var_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-914f, 442f, 1532f, 913f) + vec4<f32>(821f, 937f, -352f, 3184f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 301f, -1769f, -336f) - vec4<f32>(-213f, 435f, 255f, -536f))))), i32(-1i) * -2147483647i, Struct_2(Struct_1(-u_input.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-258f, -1096f, -1315f, -682f)), -37228i), Struct_1(_wgslsmith_mod_vec3_i32(u_input.c, vec3<i32>(u_input.d.x, u_input.c.x, 2147483647i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 258f, -531f, -308f) + vec4<f32>(-1266f, -1081f, -1617f, 876f)), ~5920i), Struct_1(-vec3<i32>(var_0, -1i, var_0), vec4<f32>(1f, 1f, 1f, 1f), 0i << (1u % 32u))), reverseBits(var_0)));
    var_1 = Struct_4(var_1.a, Struct_3(var_1.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.b.x, var_1.a.b.x, _wgslsmith_f_op_f32(max(var_1.a.b.x, 640f)), _wgslsmith_f_op_f32(var_1.a.b.x + var_1.b.a.b.x))), reverseBits(-_wgslsmith_add_i32(var_1.a.a.x, var_1.a.a.x)), var_1.b.d, var_0));
    var_1 = Struct_4(Struct_1(u_input.b.zxz, vec4<f32>(-375f, 1631f, -1390f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-262f, -477f), _wgslsmith_f_op_f32(floor(var_1.b.d.c.b.x))))), 0i), var_1.b);
    let var_2 = u_input.a.x;
    return 4294967295u;
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_mod_u32(~u_input.a.x, u_input.a.x);
    var var_1 = -(~u_input.d.x & abs(min(u_input.b.x, u_input.b.x))) << ((0u | countOneBits(func_3())) % 32u);
    var_1 = 2147483647i | firstLeadingBit(_wgslsmith_sub_i32(u_input.d.x, ~u_input.b.x));
    var_1 = select(-(~_wgslsmith_mod_i32(firstLeadingBit(u_input.c.x), -8276i)), firstTrailingBit(countOneBits(0i)) | abs(u_input.d.x), !(select(~0u, countOneBits(1u), true) < u_input.a.x));
    let var_2 = abs(-u_input.c.x);
    return false;
}

fn func_1(arg_0: i32) -> Struct_4 {
    let var_0 = func_2();
    var var_1 = _wgslsmith_mod_u32(0u | (countOneBits(u_input.a.x) & 0u), 64770u);
    var_1 = _wgslsmith_add_u32(select(reverseBits((u_input.a.x >> (u_input.a.x % 32u)) | u_input.a.x), min(countOneBits(u_input.a.x << (u_input.a.x % 32u)), ~_wgslsmith_sub_u32(u_input.a.x, 0u)), var_0), ~(~(~4294967295u)));
    var var_2 = Struct_3(Struct_1(vec3<i32>(-8940i, countOneBits(arg_0), arg_0), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-111f, -254f, -457f, 1473f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1596f, -1302f, 711f, 1196f), vec4<f32>(770f, 1439f, 597f, 108f)))), u_input.c.x), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-439f, 593f, 1000f, -731f) - vec4<f32>(1238f, -1226f, -1291f, 1007f)))))), abs(_wgslsmith_div_i32(arg_0, -2147483647i)), Struct_2(Struct_1(-vec3<i32>(0i, arg_0, arg_0), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1995f, -1423f, 192f, 837f)), vec4<f32>(1f, 1f, 1f, 1f))), 21096i), Struct_1(vec3<i32>(arg_0, 2147483647i, -2147483647i & u_input.c.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(964f, 821f, 323f, 761f), vec4<f32>(-453f, 557f, -1450f, 372f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1224f, -367f, 818f, -1648f))), arg_0), Struct_1(abs(vec3<i32>(2147483647i, arg_0, u_input.c.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1268f, 695f, 270f, 1000f) * vec4<f32>(-646f, -1612f, 298f, 189f))), firstTrailingBit(-8459i))), max(_wgslsmith_div_i32(_wgslsmith_div_i32(~0i, -u_input.c.x), ~max(arg_0, 7424i)), -1i));
    var_1 = 1u;
    return Struct_4(Struct_1(countOneBits(var_2.a.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.d.c.b.x, var_2.b.x, var_2.b.x, -1349f) - var_2.a.b), var_2.d.a.b)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.d.a.b.x, -271f, var_2.b.x, var_2.d.b.b.x) + vec4<f32>(-1487f, 718f, var_2.d.a.b.x, var_2.a.b.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(2156f, 151f, var_2.d.b.b.x, var_2.d.c.b.x)))), var_2.d.b.c), Struct_3(var_2.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.b.x, _wgslsmith_f_op_f32(f32(-1f) * -641f), var_2.b.x, -622f) * _wgslsmith_div_vec4_f32(var_2.d.c.b, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1950f, var_2.d.b.b.x, var_2.b.x, 242f))))), select(arg_0, ~(-35575i), false), var_2.d, firstLeadingBit(-8429i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-u_input.c.x);
    let var_1 = ~(~u_input.a.x);
    var var_2 = Struct_3(func_1(_wgslsmith_clamp_i32(-1i, _wgslsmith_add_i32(~u_input.d.x, countOneBits(u_input.d.x)), ~var_0.a.a.x)).a, _wgslsmith_f_op_vec4_f32(-var_0.a.b), max(u_input.d.x, -68915i), func_1(firstTrailingBit(func_1(var_0.b.c).a.c) & select(max(1i, -20639i), var_0.a.a.x, func_2())).b.d, u_input.b.x);
    var var_3 = Struct_3(var_2.d.a, vec4<f32>(var_0.a.b.x, -279f, _wgslsmith_f_op_f32(-var_0.a.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d.b.b.x))), firstTrailingBit(u_input.b.x), Struct_2(Struct_1(var_2.a.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.b.x, var_0.b.a.b.x, 2018f, -398f) - var_0.b.a.b)), -59311i), func_1(countOneBits(firstLeadingBit(u_input.b.x))).b.d.c, Struct_1(~var_0.b.d.c.a ^ -vec3<i32>(u_input.d.x, var_2.d.b.a.x, 2147483647i), var_0.b.d.a.b, _wgslsmith_add_i32(11158i, select(var_2.c, 2147483647i, true)))), _wgslsmith_mult_i32(countOneBits(-2147483647i), _wgslsmith_div_i32((i32(-1i) * -1i) & max(var_2.a.a.x, var_0.b.a.c), var_0.a.a.x)));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-219f)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(select(vec2<i32>(_wgslsmith_mod_i32(-6688i, var_2.d.a.a.x), -2147483647i >> (u_input.a.x % 32u)), var_0.a.a.xy, select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true)))), _wgslsmith_clamp_i32(4127i, var_2.d.a.a.x & reverseBits(2147483647i), var_0.a.c), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(113f)) * _wgslsmith_f_op_f32(step(-1658f, -1558f))) + _wgslsmith_f_op_f32(var_4 * -1012f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_4), -134f, true)))), _wgslsmith_f_op_f32(1495f - 628f));
}

