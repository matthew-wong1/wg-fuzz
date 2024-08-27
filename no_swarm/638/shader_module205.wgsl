struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: i32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: bool,
    c: Struct_1,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> i32 {
    let var_0 = Struct_2(Struct_1(41079u, -404f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(534f, -547f, 1544f, -2214f))))), -(i32(-1i) * -53872i), vec2<u32>((u_input.a & u_input.c) ^ ~4294967295u, ~u_input.a & select(u_input.a, u_input.a, false))), select(!vec4<bool>(true, u_input.b >= u_input.b, true, true), vec4<bool>(true, u_input.a >= (4294967295u ^ u_input.a), ~27677u <= _wgslsmith_clamp_u32(60155u, u_input.c, 7301u), true), vec4<bool>(true, true, true, true)), Struct_1(abs(0u), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1049f, -901f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-599f)) - -404f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(860f, 355f, 238f, -1932f) * vec4<f32>(-662f, 980f, -778f, -1058f)))), reverseBits(u_input.d.x), abs(select(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(u_input.a, 17660u)), ~vec2<u32>(u_input.a, 0u), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false))))), Struct_1(~_wgslsmith_sub_u32(_wgslsmith_mod_u32(4294967295u, 12130u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 1u, 0u, u_input.a), vec4<u32>(u_input.a, u_input.c, 33117u, u_input.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-686f + 1296f) * _wgslsmith_f_op_f32(f32(-1f) * -1842f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f + 1000f), -2933f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1321f - -1713f), _wgslsmith_f_op_f32(f32(-1f) * -141f), _wgslsmith_f_op_f32(min(467f, 601f)), 132f)), firstLeadingBit(u_input.b), countOneBits(max(~vec2<u32>(1u, 98707u), ~vec2<u32>(1u, u_input.c)))));
    let var_1 = Struct_5(Struct_3(select(select(var_0.b, vec4<bool>(true, var_0.b.x, true, var_0.b.x), var_0.b.x || var_0.b.x), var_0.b, var_0.b), u_input.e.xz, -(~(vec4<i32>(1i, 1i, var_0.c.d, var_0.c.d) & u_input.d)), var_0), 1u & u_input.c);
    var var_2 = vec2<i32>(-(~26146i), var_0.a.d);
    var var_3 = Struct_1(abs(u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * var_0.d.b))))), var_0.a.c, 9203i, var_1.a.d.d.e);
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_1.a.d.c.c.xwx))));
    return var_1.a.c.x;
}

fn func_2(arg_0: vec2<f32>) -> vec2<bool> {
    let var_0 = 242i;
    var var_1 = -abs(~(-u_input.e.x));
    var_1 = func_3();
    var_1 = u_input.e.x;
    var var_2 = ~firstTrailingBit(~(~firstLeadingBit(vec2<u32>(u_input.a, 4294967295u))));
    return select(select(select(vec2<bool>(true, any(vec4<bool>(true, false, true, false))), select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false)), !select(vec2<bool>(true, false), vec2<bool>(true, true), true)), select(select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, any(vec3<bool>(false, true, true)))), !vec2<bool>(all(vec2<bool>(true, false)), var_0 < var_0)), select(!vec2<bool>(-477f < arg_0.x, true), vec2<bool>(true, true & all(vec4<bool>(false, true, false, false))), false), any(vec4<bool>((var_2.x << (var_2.x % 32u)) > ~u_input.a, true, !(15629u > var_2.x), true)));
}

fn func_1(arg_0: u32, arg_1: vec2<u32>, arg_2: u32) -> Struct_4 {
    let var_0 = min(~vec4<u32>(4294967295u, arg_1.x, ~firstLeadingBit(arg_2), ~arg_0), vec4<u32>(33245u, arg_0, arg_0, 37487u));
    var var_1 = u_input.d;
    var_1 = _wgslsmith_div_vec4_i32(u_input.d, vec4<i32>(max(-(~u_input.d.x), -30706i), 2147483647i, u_input.e.x, -var_1.x));
    let var_2 = select(vec2<bool>(false, true), select(func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1904f, -1752f) + vec2<f32>(-800f, -860f)) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(317f, -1440f))))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(true, true)), vec2<bool>(false, true)), !all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true))), any(vec4<bool>(all(vec2<bool>(false, false)), true, true, firstLeadingBit(arg_2) > (var_0.x << (45463u % 32u)))));
    var_1 = _wgslsmith_mod_vec4_i32(u_input.d, ~firstTrailingBit(vec4<i32>(39071i, -2147483647i, u_input.e.x, 18393i) >> (~vec4<u32>(0u, arg_1.x, 1u, 4294967295u) % vec4<u32>(32u))));
    return Struct_4(_wgslsmith_mult_vec3_u32(reverseBits(select(var_0.zxy, vec3<u32>(21039u, u_input.c, 1u), vec3<bool>(var_2.x, var_2.x, var_2.x))) & firstTrailingBit(vec3<u32>(23104u, 4294967295u, 0u)), ~(firstTrailingBit(vec3<u32>(u_input.a, u_input.a, arg_1.x)) ^ ~var_0.yzz)), select(true, any(!vec3<bool>(false, var_2.x, true)), var_2.x), Struct_1(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1327f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-270f, _wgslsmith_div_f32(-951f, 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(1159f)))), ~(-1i), abs(~select(vec2<u32>(39356u, arg_0), vec2<u32>(arg_1.x, 472u), var_2.x))), Struct_2(Struct_1(arg_1.x, _wgslsmith_f_op_f32(1810f * -1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1091f, -692f, -642f, -1437f)), _wgslsmith_mod_i32(var_1.x & 36481i, ~1i), ~vec2<u32>(arg_2, arg_2)), select(vec4<bool>(true, func_2(vec2<f32>(353f, -138f)).x, var_2.x, true), select(!vec4<bool>(false, var_2.x, true, var_2.x), vec4<bool>(var_2.x, false, true, var_2.x), vec4<bool>(var_2.x, true, false, true)), vec4<bool>(var_2.x, all(vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x)), all(var_2), true || var_2.x)), Struct_1(u_input.a, _wgslsmith_f_op_f32(abs(-1000f)), vec4<f32>(1f, 1f, 1f, 1f), var_1.x, vec2<u32>(_wgslsmith_sub_u32(arg_2, 4294967295u), ~arg_0)), Struct_1(1u, _wgslsmith_f_op_f32(-129f - _wgslsmith_f_op_f32(-412f + 689f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1103f, 924f, 1611f, 1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-285f, 1049f, 886f, -314f))), -9726i, _wgslsmith_sub_vec2_u32(vec2<u32>(10016u, 0u), vec2<u32>(arg_0, arg_2)))), Struct_2(Struct_1(u_input.c, -1561f, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-754f, 1071f, 815f, -687f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-351f, 605f, 859f, 1624f), vec4<f32>(136f, 683f, 606f, 724f), var_2.x)))), var_1.x, ~(var_0.wy & arg_1)), select(vec4<bool>(var_0.x == 35642u, true && var_2.x, false, var_2.x & false), !(!vec4<bool>(var_2.x, var_2.x, true, true)), any(!vec3<bool>(false, false, var_2.x))), Struct_1(~abs(u_input.a), 1f, vec4<f32>(1759f, _wgslsmith_f_op_f32(1786f * 1108f), _wgslsmith_f_op_f32(select(1400f, 2172f, var_2.x)), -785f), var_1.x, var_0.wx), Struct_1(1u, _wgslsmith_f_op_f32(trunc(650f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-409f, -1318f, -1000f, 133f) + vec4<f32>(-631f, -285f, 1648f, -622f)), vec4<f32>(-1285f, 1988f, 905f, -1749f)), -13190i, vec2<u32>(0u, 4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    var var_1 = func_1(var_0, _wgslsmith_add_vec2_u32(~vec2<u32>(var_0 >> (69719u % 32u), ~0u), vec2<u32>(var_0, _wgslsmith_sub_u32(~10234u, 18777u))), u_input.a);
    var_1 = func_1(~11180u ^ u_input.c, var_1.d.c.e, _wgslsmith_dot_vec3_u32(var_1.a, var_1.a));
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.b)), -292f, -1418f))), _wgslsmith_div_vec3_f32(var_1.d.c.c.wyw, var_1.d.c.c.wxz));
    let var_3 = var_1.d.a.e;
    let var_4 = countOneBits(~var_1.c.d);
    var_1 = Struct_4(abs(~var_1.a), any(vec3<bool>(!(var_1.e.b.x && var_1.d.b.x), true, false)), var_1.d.a, var_1.e, func_1(reverseBits(var_0), vec2<u32>(65605u, 51608u), _wgslsmith_mult_u32(firstLeadingBit(func_1(u_input.a, vec2<u32>(var_3.x, 4294967295u), var_3.x).d.d.e.x), 4294967295u)).e);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~abs(abs(vec4<u32>(78648u, 4294967295u, 85202u, u_input.c)))));
}

