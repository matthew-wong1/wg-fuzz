struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec3<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 6>;

var<private> global1: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(false, -24183i, -253f, vec4<f32>(1000f, -318f, 948f, 219f)), Struct_1(true, -7745i, -1044f, vec4<f32>(-1000f, 304f, 716f, 531f)), Struct_1(true, 0i, 276f, vec4<f32>(-1324f, -993f, 1780f, -103f)), Struct_1(false, -15528i, -1657f, vec4<f32>(1633f, 1318f, 1232f, 1013f)), Struct_1(false, -1i, 894f, vec4<f32>(-769f, -526f, 572f, 1224f)), Struct_1(false, -2263i, -251f, vec4<f32>(-809f, 807f, -1569f, -1255f)), Struct_1(false, 12869i, -643f, vec4<f32>(-172f, 2215f, -239f, -766f)), Struct_1(false, 8417i, 407f, vec4<f32>(245f, -990f, -368f, 332f)), Struct_1(true, i32(-2147483648), -500f, vec4<f32>(397f, -489f, -1699f, 147f)), Struct_1(true, -15267i, 1000f, vec4<f32>(852f, 2814f, 2354f, -1688f)), Struct_1(false, 43106i, -1494f, vec4<f32>(-1000f, 355f, 1280f, 267f)), Struct_1(false, i32(-2147483648), 2173f, vec4<f32>(2004f, 773f, -1536f, 527f)), Struct_1(false, i32(-2147483648), -874f, vec4<f32>(-1132f, -102f, -696f, -1757f)), Struct_1(true, -38153i, 1469f, vec4<f32>(-802f, -256f, -270f, -1000f)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec3<f32> {
    var var_0 = ~abs(~min(vec2<i32>(0i, 5892i), max(vec2<i32>(u_input.c, u_input.a), vec2<i32>(u_input.c, 43543i))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(129f, -156f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1064f - -723f))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(809f, 706f, 391f), _wgslsmith_f_op_vec3_f32(vec3<f32>(419f, 376f, -251f) - vec3<f32>(-2070f, -951f, 3159f)), any(vec3<bool>(true, false, false)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1335f, 594f)))))));
    var var_2 = !(!any(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false))));
    let var_3 = vec4<bool>(true, any(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)))), true, true);
    let var_4 = var_0.x;
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(1f, var_1.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(var_1.x)), _wgslsmith_f_op_f32(step(-339f, -674f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(max(var_1.x, var_1.x))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.x)))), -854f) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(557f, var_1.x, 356f)) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1683f, -434f, var_1.x) - vec3<f32>(var_1.x, -1497f, var_1.x)), vec3<f32>(var_1.x, -1682f, -224f)))))));
}

fn func_2(arg_0: Struct_3) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(700f, _wgslsmith_f_op_f32(ceil(-1142f)), -617f), vec3<f32>(_wgslsmith_f_op_f32(1413f + 269f), 299f, _wgslsmith_f_op_f32(trunc(208f))), true)) * _wgslsmith_f_op_vec3_f32(func_3())) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-832f, 1494f))), _wgslsmith_f_op_f32(round(254f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3()).x))));
    var var_1 = select(!vec3<bool>(true, !select(true, false, true), true), !vec3<bool>(true, true, any(select(vec2<bool>(true, false), vec2<bool>(true, false), true))), true);
    var var_2 = Struct_3(_wgslsmith_mod_i32(reverseBits(firstLeadingBit(-2971i & arg_0.a)), _wgslsmith_add_i32(35276i, min(_wgslsmith_div_i32(u_input.a, u_input.a), 0i ^ arg_0.a))), ~((15244u | ~u_input.b.x) & 51710u));
    var_1 = !select(select(select(!vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(true, true, true), !var_1.x), vec3<bool>(var_1.x || true, true, var_1.x), select(vec3<bool>(var_1.x, false, false), vec3<bool>(var_1.x, var_1.x, false), !vec3<bool>(var_1.x, var_1.x, var_1.x))), !select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, var_1.x), false), !vec3<bool>(var_1.x, var_1.x, false), false), var_1.x);
    var_2 = Struct_3(i32(-1i) * -(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a, u_input.c), vec2<i32>(56403i, 48035i)) << (_wgslsmith_dot_vec2_u32(u_input.b.zx, vec2<u32>(6805u, arg_0.b)) % 32u)), ~arg_0.b);
    return _wgslsmith_f_op_f32(step(-1144f, _wgslsmith_f_op_f32(-var_0.x)));
}

fn func_1() -> vec3<f32> {
    var var_0 = ~(-38712i);
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_3(-2147483647i, ~_wgslsmith_div_u32(57868u, 1u)))));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(2123f + -637f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-228f))))));
    var var_4 = -1i & (~u_input.a >> (12798u % 32u));
    return _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(1843f + var_3.x)), 501f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.b.x), _wgslsmith_f_op_vec3_f32(func_1()));
    var var_1 = ~vec2<u32>(25623u, min(abs(u_input.b.x), u_input.b.x)) ^ vec2<u32>(1u, 34931u);
    var_1 = ~(_wgslsmith_add_vec2_u32(u_input.b.yx, _wgslsmith_clamp_vec2_u32(var_0.a.xz, var_0.a.ww, ~vec2<u32>(0u, var_1.x))) << (select(~(~var_0.a.zy), var_0.a.xx, !all(vec4<bool>(false, false, true, false))) % vec2<u32>(32u)));
    let var_2 = Struct_3(0i, var_1.x);
    let var_3 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(abs(-(~vec3<i32>(3704i, 20735i, 6495i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(var_2)))) + 604f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(var_3.x, var_3.x)), -709f, var_3.x)) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_3.x))), _wgslsmith_f_op_f32(-var_0.b.x), var_3.x)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-137f)) * _wgslsmith_f_op_f32(f32(-1f) * -928f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(810f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1233f) * var_3.x), _wgslsmith_f_op_f32(round(1000f)), var_3.x));
}

