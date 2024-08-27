struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: vec2<i32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
    c: Struct_2,
    d: f32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-196f, 984f, -303f, 1276f))) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-708f, -485f, 107f, 497f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, 1322f, -656f, -317f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1775f, 1889f, -141f, -2275f))))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(980f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -445f), 127f)), 903f, _wgslsmith_f_op_f32(f32(-1f) * -873f)))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(abs(var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.x, var_0.x)) + -1433f), -1000f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(1000f - -549f), -135f, _wgslsmith_f_op_f32(-972f + 1267f), _wgslsmith_f_op_f32(-var_0.x)), vec4<f32>(1693f, var_0.x, _wgslsmith_f_op_f32(step(var_0.x, 1714f)), _wgslsmith_f_op_f32(var_0.x * -330f)), arg_0.a)))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-563f))), _wgslsmith_f_op_f32(-320f + -1177f), -463f));
    return -7587i;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: Struct_3) -> Struct_2 {
    var var_0 = _wgslsmith_div_i32(arg_3.c.c.x, -arg_3.c.c.x);
    return Struct_2(countOneBits(arg_1.x), _wgslsmith_f_op_f32(896f + 698f), _wgslsmith_clamp_vec2_i32(vec2<i32>(func_3(Struct_1(arg_0.a, arg_0.b)), ~arg_2.c.c.x), select(-arg_3.c.c, _wgslsmith_mult_vec2_i32(arg_3.c.c, arg_3.c.c), select(select(vec2<bool>(arg_3.a, arg_0.a), vec2<bool>(true, true), false), vec2<bool>(arg_0.a, true), vec2<bool>(true, true))), arg_3.c.c), Struct_1(_wgslsmith_f_op_f32(-arg_3.d) > arg_2.d, u_input.a), ~firstLeadingBit(arg_2.c.a));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_2) -> Struct_2 {
    let var_0 = -1113f;
    var var_1 = var_0;
    let var_2 = Struct_1(arg_1.x, 20252u);
    var var_3 = -arg_2.c.x > -1i;
    var var_4 = arg_0;
    return arg_0;
}

fn func_5(arg_0: f32, arg_1: f32, arg_2: Struct_2, arg_3: i32) -> Struct_1 {
    let var_0 = arg_2.d;
    let var_1 = func_4(arg_2, !(!select(select(vec2<bool>(arg_2.d.a, arg_2.d.a), vec2<bool>(false, true), false), select(vec2<bool>(false, false), vec2<bool>(true, arg_2.d.a), vec2<bool>(true, arg_2.d.a)), func_4(Struct_2(var_0.b, -1993f, vec2<i32>(-33816i, arg_2.c.x), var_0, 0u), vec2<bool>(var_0.a, arg_2.d.a), arg_2).d.a)), arg_2);
    let var_2 = Struct_1(_wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.e, 59180u, 117793u), vec3<u32>(49175u, 19506u, var_1.d.b)), _wgslsmith_dot_vec4_u32(select(vec4<u32>(23482u, u_input.a, 20300u, var_1.e), vec4<u32>(arg_2.e, arg_2.a, arg_2.a, 4294967295u), true), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, var_0.b, arg_2.e, u_input.a), vec4<u32>(1u, u_input.a, 4294967295u, var_1.e), vec4<u32>(var_1.a, 0u, var_0.b, 1u)))) > func_2(var_0, vec2<u32>(9562u, 67243u ^ arg_2.d.b), Struct_3(var_0.a, ~vec2<u32>(8586u, var_0.b), Struct_2(arg_2.e, arg_1, vec2<i32>(11488i, var_1.c.x), var_1.d, 1u), _wgslsmith_f_op_f32(-752f + -259f), ~vec2<u32>(u_input.a, 11589u)), Struct_3(select(var_0.a, true, var_1.d.a), ~vec2<u32>(3681u, var_1.e), Struct_2(arg_2.e, arg_1, arg_2.c, Struct_1(arg_2.d.a, 0u), arg_2.d.b), _wgslsmith_f_op_f32(-117f * 488f), firstTrailingBit(vec2<u32>(0u, 62796u)))).e, abs(~_wgslsmith_mod_u32(abs(0u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a, u_input.a, 25030u), vec3<u32>(arg_2.d.b, 1u, 93505u)))));
    var var_3 = vec3<bool>(!all(select(!vec3<bool>(var_1.d.a, arg_2.d.a, true), select(vec3<bool>(false, true, true), vec3<bool>(var_2.a, var_0.a, var_0.a), vec3<bool>(var_0.a, true, var_0.a)), select(vec3<bool>(true, false, true), vec3<bool>(var_1.d.a, var_1.d.a, var_2.a), var_2.a))), false, _wgslsmith_f_op_f32(round(arg_0)) >= -664f);
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    return Struct_1(false, max(func_4(arg_2, select(select(vec2<bool>(var_2.a, var_0.a), var_3.yz, var_3.zz), vec2<bool>(true, true), func_2(Struct_1(false, 14139u), vec2<u32>(0u, u_input.a), Struct_3(false, vec2<u32>(var_0.b, 42960u), Struct_2(var_1.a, arg_0, arg_2.c, var_2, u_input.a), 1000f, vec2<u32>(u_input.a, var_0.b)), Struct_3(false, vec2<u32>(0u, var_0.b), Struct_2(arg_2.d.b, -299f, var_1.c, var_1.d, u_input.a), arg_1, vec2<u32>(16963u, var_1.d.b))).d.a), func_4(var_1, var_3.yz, Struct_2(55349u, -227f, vec2<i32>(-57389i, arg_2.c.x), Struct_1(var_2.a, u_input.a), var_2.b))).e, arg_2.e));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> Struct_2 {
    let var_0 = 905f;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0 - 782f), _wgslsmith_f_op_f32(-var_0), var_0, 665f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, var_0, var_0)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(func_4(Struct_2(arg_0.b, var_0, vec2<i32>(-2147483647i, -1i), arg_0, arg_0.b), vec2<bool>(arg_0.a, false), Struct_2(arg_0.b, -1462f, vec2<i32>(-9134i, -1i), Struct_1(arg_1.a, arg_0.b), u_input.a)).b, 1443f, _wgslsmith_f_op_f32(f32(-1f) * -830f), -977f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(172f, var_0, 338f, var_0) + vec4<f32>(1071f, var_0, var_0, var_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-832f, -658f, -862f, var_0)), select(vec4<bool>(arg_2, false, false, arg_2), vec4<bool>(arg_1.a, false, arg_2, false), false))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(var_0, var_0, var_0, var_0), vec4<f32>(688f, var_0, -135f, 1000f))))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(271f + 1623f), var_0, _wgslsmith_f_op_f32(f32(-1f) * -406f), var_0)))));
    let var_2 = abs(_wgslsmith_div_vec2_i32(func_4(func_2(Struct_1(arg_0.a, 69393u), max(vec2<u32>(35570u, u_input.a), vec2<u32>(arg_1.b, arg_0.b)), Struct_3(false, vec2<u32>(79928u, u_input.a), Struct_2(140295u, -1000f, vec2<i32>(2147483647i, 2147483647i), arg_1, arg_0.b), -1465f, vec2<u32>(u_input.a, arg_1.b)), Struct_3(true, vec2<u32>(arg_1.b, arg_1.b), Struct_2(46718u, var_1.x, vec2<i32>(-15469i, -47022i), arg_0, 53488u), 1732f, vec2<u32>(arg_1.b, 4294967295u))), vec2<bool>(false, false), Struct_2(arg_0.b ^ 0u, func_4(Struct_2(4714u, var_0, vec2<i32>(-2147483647i, 2003i), Struct_1(false, u_input.a), u_input.a), vec2<bool>(arg_0.a, true), Struct_2(26638u, 1760f, vec2<i32>(-20661i, 6727i), Struct_1(true, arg_0.b), arg_1.b)).b, ~vec2<i32>(-1i, 2147483647i), arg_0, ~51840u)).c, vec2<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -2147483647i), vec2<i32>(-2147483647i, 1i)), -49644i), ~(~2147483647i))));
    let var_3 = true;
    var var_4 = reverseBits(~_wgslsmith_add_u32(u_input.a, firstTrailingBit(1u)));
    return Struct_2(max(_wgslsmith_div_u32(~4294967295u, arg_1.b ^ 1u) | _wgslsmith_dot_vec3_u32(abs(vec3<u32>(arg_0.b, 8474u, 1u)), vec3<u32>(25375u, arg_1.b, 0u)), _wgslsmith_sub_u32(abs(arg_0.b), func_4(Struct_2(arg_0.b, var_0, vec2<i32>(var_2.x, -23059i), Struct_1(true, arg_1.b), arg_1.b), vec2<bool>(arg_0.a, true), Struct_2(6423u, 589f, var_2, arg_0, 1u)).a) >> (~4294967295u % 32u)), var_0, ~var_2, Struct_1(!(var_3 | (arg_0.a || false)), ~(~29450u)), 22792u);
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: vec2<u32>) -> f32 {
    let var_0 = _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_2.x, 4294967295u, 0u), vec3<u32>(56873u, u_input.a, _wgslsmith_add_u32(4915u, 21983u))), abs(u_input.a) << (arg_2.x % 32u)), arg_2);
    var var_1 = Struct_3(firstLeadingBit(arg_2.x) > _wgslsmith_dot_vec2_u32(var_0, _wgslsmith_sub_vec2_u32(~vec2<u32>(var_0.x, 1u), abs(var_0))), var_0, func_6(func_5(arg_1, 907f, func_4(Struct_2(0u, arg_1, vec2<i32>(65397i, -41452i), Struct_1(false, arg_0), 72421u), vec2<bool>(true, false), func_2(Struct_1(true, 27838u), arg_2, Struct_3(true, vec2<u32>(arg_2.x, u_input.a), Struct_2(arg_0, 746f, vec2<i32>(9017i, 42013i), Struct_1(true, 23709u), 37548u), arg_1, var_0), Struct_3(true, vec2<u32>(var_0.x, 87616u), Struct_2(48125u, arg_1, vec2<i32>(-38208i, 62880i), Struct_1(true, 1u), arg_2.x), 1128f, arg_2))), 1i), Struct_1(true, firstLeadingBit(arg_2.x)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-714f - arg_1)), _wgslsmith_mod_vec2_u32(~abs(~var_0), _wgslsmith_clamp_vec2_u32(vec2<u32>(~50259u, 76365u), ~min(arg_2, vec2<u32>(u_input.a, arg_0)), vec2<u32>(~arg_2.x, 24694u))));
    var_1 = Struct_3(all(!select(!vec2<bool>(var_1.c.d.a, var_1.c.d.a), !vec2<bool>(var_1.a, true), true)), vec2<u32>(~arg_0, countOneBits(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, var_1.e.x), vec3<u32>(arg_2.x, 69480u, var_0.x))))), Struct_2(~countOneBits(var_0.x), _wgslsmith_f_op_f32(var_1.c.b * 172f), vec2<i32>(-1i, -61653i), var_1.c.d, _wgslsmith_mod_u32(u_input.a, _wgslsmith_clamp_u32(var_1.b.x, ~0u, var_1.b.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-614f, _wgslsmith_f_op_f32(-var_1.c.b))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(var_1.c.b)), 976f)))), vec2<u32>(~func_6(Struct_1(false, 6186u), Struct_1(var_1.a, 0u), true).d.b, var_0.x));
    var var_2 = _wgslsmith_f_op_f32(760f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(var_1.c.b)))));
    var var_3 = -2147483647i;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(-arg_1)), 1140f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(68537u, _wgslsmith_f_op_f32(step(-1184f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(abs(u_input.a), 1112f, vec2<u32>(u_input.a, 13072u)))))), _wgslsmith_add_vec2_i32(~select(vec2<i32>(2147483647i, 1i), vec2<i32>(43395i, -72173i), vec2<bool>(true, false)) & vec2<i32>(~(-1i), firstTrailingBit(-7834i)), func_6(Struct_1(true, u_input.a | u_input.a), Struct_1(true, 38352u), any(vec4<bool>(true, true, true, true))).c), func_5(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(-2924f + 140f)) + -1436f), _wgslsmith_f_op_f32(func_6(Struct_1(true, 30761u), func_5(1319f, 555f, Struct_2(u_input.a, 701f, vec2<i32>(0i, -1i), Struct_1(true, 84693u), u_input.a), 26132i), true).b + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(765f)) * -550f)), Struct_2(u_input.a, func_6(func_5(662f, 735f, Struct_2(u_input.a, -1014f, vec2<i32>(-2147483647i, -44706i), Struct_1(true, 4294967295u), u_input.a), -22354i), func_5(-796f, -1000f, Struct_2(u_input.a, -887f, vec2<i32>(2147483647i, -1i), Struct_1(false, 1u), 4294967295u), -29321i), true).b, ~(-vec2<i32>(19614i, 1797i)), Struct_1(all(vec3<bool>(true, false, true)), 4294967295u), ~1u & u_input.a), 11880i), 23384u);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -1921f)), var_0.b, -1000f);
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.b))), _wgslsmith_f_op_f32(f32(-1f) * -185f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(var_1.x, var_1.x)))), _wgslsmith_f_op_f32(select(var_1.x, var_0.b, var_0.d.a)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1947f, var_1.x, -2252f, _wgslsmith_f_op_f32(-531f + _wgslsmith_f_op_f32(abs(var_1.x)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-461f, var_1.x, var_0.b, var_0.b))) + vec4<f32>(func_6(var_0.d, var_0.d, var_0.d.a).b, -1793f, 285f, _wgslsmith_f_op_f32(var_0.b + var_0.b)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, -282f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + -2362f))), vec3<f32>(1923f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(146f, -1188f) * _wgslsmith_f_op_f32(sign(-118f))), _wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(max(var_0.b, -697f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(var_1.zzw, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-872f, 711f, 491f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_0.c.x, 1i));
}

