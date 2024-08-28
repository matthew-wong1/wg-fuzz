struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: bool,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: i32,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 478f;

var<private> global1: bool = false;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> u32 {
    let var_0 = Struct_3(min(firstTrailingBit(firstTrailingBit(~vec2<u32>(u_input.c.x, u_input.a))), u_input.c));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -147f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-935f, 455f)), _wgslsmith_div_f32(442f, -660f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(340f, -341f) + 603f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -719f)))), 1152f);
    global1 = any(select(vec3<bool>(true, true, true), vec3<bool>(true, select(false, false, false), any(vec3<bool>(true, false, false))), false)) | false;
    global0 = -161f;
    global0 = var_1.x;
    return ~(~(~(~_wgslsmith_clamp_u32(36712u, var_0.a.x, 31005u))));
}

fn func_2() -> f32 {
    let var_0 = ~select(vec3<i32>(-u_input.b.x >> (1u % 32u), 1i, -1i), vec3<i32>(u_input.b.x, 38534i, u_input.d.x), false);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1053f, -684f, 1090f, -126f) + vec4<f32>(831f, -239f, -142f, -803f)), vec4<f32>(-362f, 426f, 1384f, 772f), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false)))))));
    global0 = var_1.x;
    var var_2 = vec4<u32>(u_input.c.x, func_3(), ~_wgslsmith_div_u32(u_input.a, 29468u) ^ 0u, u_input.c.x) ^ select(countOneBits(~vec4<u32>(0u, 0u, u_input.a, 54008u)), _wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, u_input.c.x)), ~select(vec4<u32>(4294967295u, u_input.c.x, u_input.a, u_input.c.x), vec4<u32>(u_input.a, u_input.c.x, u_input.c.x, u_input.c.x), vec4<bool>(true, true, false, false))), select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false)), vec4<bool>(true, false, true, false)), vec4<bool>(var_0.x >= u_input.d.x, true, any(vec4<bool>(true, false, true, true)), true), any(vec3<bool>(true, true, true))));
    var var_3 = abs(abs(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.d.x, 0i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-58050i, 1i, u_input.d.x, -1i), u_input.e, vec4<i32>(26808i, var_0.x, 2147483647i, 12889i)))));
    return var_1.x;
}

fn func_1(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: i32, arg_3: Struct_2) -> vec2<u32> {
    global1 = true;
    let var_0 = _wgslsmith_f_op_f32(func_2());
    var var_1 = 2147483647i;
    var var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(arg_3.b.d, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_0)))))))));
    var_1 = arg_3.c.x >> (21550u % 32u);
    return arg_1.xz;
}

fn func_4(arg_0: Struct_3, arg_1: u32) -> f32 {
    global1 = true;
    let var_0 = ~vec3<u32>(arg_1, ~max(firstTrailingBit(1u), 1u), reverseBits(u_input.a));
    let var_1 = !select(vec4<bool>(true, firstLeadingBit(u_input.b.x) == 41916i, true, any(vec4<bool>(true, true, true, true))), select(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), true), select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), false), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), vec4<bool>(true, _wgslsmith_clamp_u32(u_input.a, 114626u, u_input.a) == func_1(Struct_3(vec2<u32>(var_0.x, 4294967295u)), vec4<u32>(47976u, arg_0.a.x, arg_0.a.x, 10204u), u_input.b.x, Struct_2(Struct_1(vec2<bool>(false, true), true, false, vec2<f32>(866f, -1639f)), Struct_1(vec2<bool>(false, false), true, true, vec2<f32>(-253f, 1079f)), vec4<i32>(0i, -991i, u_input.d.x, u_input.b.x), u_input.d.x, vec4<bool>(true, true, false, true))).x, true, false));
    var var_2 = Struct_1(var_1.wz, any(!(!(!vec3<bool>(var_1.x, true, true)))), any(vec3<bool>(_wgslsmith_f_op_f32(1756f + 1000f) > _wgslsmith_f_op_f32(round(-1000f)), true, true)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(832f * 134f) * _wgslsmith_f_op_f32(ceil(1552f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(997f * -2224f))), _wgslsmith_f_op_f32(func_2())));
    let var_3 = Struct_1(select(select(var_1.yy, select(vec2<bool>(var_1.x, var_2.b), !vec2<bool>(false, var_2.a.x), select(vec2<bool>(false, var_2.c), vec2<bool>(false, var_2.b), var_1.yz)), select(false, true, u_input.d.x >= 2147483647i)), !var_1.xz, vec2<bool>(any(vec3<bool>(var_2.c, var_1.x, false)), 22594i < u_input.b.x)), min(43231u, _wgslsmith_dot_vec2_u32(max(u_input.c, vec2<u32>(arg_0.a.x, arg_0.a.x)), ~arg_0.a)) <= 1u, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.a.x, 40957u, u_input.c.x, 0u), _wgslsmith_div_vec4_u32(vec4<u32>(arg_1, arg_1, arg_0.a.x, var_0.x), vec4<u32>(28067u, arg_0.a.x, arg_0.a.x, u_input.a)), vec4<u32>(41261u, 36985u, arg_1, arg_1) ^ vec4<u32>(arg_0.a.x, 4294967295u, arg_1, var_0.x)), select(vec4<u32>(20015u, 4294967295u, arg_0.a.x, 1u) & vec4<u32>(0u, arg_0.a.x, arg_0.a.x, arg_0.a.x), countOneBits(vec4<u32>(1u, 6350u, 0u, 11245u)), select(var_1, var_1, var_1.x))) > reverseBits(countOneBits(57184u)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_2.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1313f)), vec2<f32>(-985f, var_2.d.x))));
    return 840f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1059f);
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(Struct_3(func_1(Struct_3(u_input.c), vec4<u32>(u_input.a, 31658u, u_input.a, u_input.a), 0i, Struct_2(Struct_1(vec2<bool>(true, false), false, true, vec2<f32>(-302f, -853f)), Struct_1(vec2<bool>(true, false), true, true, vec2<f32>(665f, 166f)), vec4<i32>(12272i, -2147483647i, 1i, 0i), u_input.d.x, vec4<bool>(false, true, false, false)))), func_3())), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -774f)))), -477f));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-405f)) + _wgslsmith_f_op_f32(f32(-1f) * -805f)), _wgslsmith_f_op_f32(-1202f - _wgslsmith_f_op_f32(floor(-260f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(1000f, 1000f)))))) - -801f);
    let var_0 = abs(vec2<u32>(_wgslsmith_dot_vec2_u32(select(max(u_input.c, vec2<u32>(0u, u_input.a)), _wgslsmith_div_vec2_u32(u_input.c, vec2<u32>(u_input.c.x, 1u)), vec2<bool>(true, true)), vec2<u32>(67888u, ~u_input.a)), 1u));
    let var_1 = Struct_1(select(select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(true, true)), vec2<bool>(!all(vec4<bool>(false, false, false, true)), true), false), all(!select(vec2<bool>(true, false), vec2<bool>(true, true), true)) | (func_3() >= u_input.a), any(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1465f, 1334f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-724f - -1366f), -224f)))));
    let var_2 = Struct_1(var_1.a, var_1.d.x < -1452f, _wgslsmith_clamp_i32(-457i, _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.b.x, u_input.d.x), 2147483647i), _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.e.x, 1i), vec2<i32>(0i, 16221i))) != (u_input.b.x ^ _wgslsmith_mod_i32(countOneBits(0i), u_input.b.x)), vec2<f32>(var_1.d.x, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_1.d.x, _wgslsmith_f_op_f32(187f * -2031f))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e);
}

