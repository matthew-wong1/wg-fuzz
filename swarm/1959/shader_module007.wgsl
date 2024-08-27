struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: u32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: u32,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
    c: vec2<bool>,
    d: i32,
    e: bool,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<i32>) -> f32 {
    global0 = u_input.b;
    global0 = 1u;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-1875f))));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: Struct_4) -> Struct_3 {
    global0 = ~arg_1;
    var var_0 = vec2<f32>(-691f, -719f);
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.a.x))) * arg_2.b.a.xy));
    var var_1 = u_input.a.xy;
    return Struct_3(arg_2.b.a, vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2.b.d.x), _wgslsmith_f_op_f32(func_3(vec4<i32>(1i, u_input.c.x, -56503i, 26939i) >> (vec4<u32>(arg_1, 68998u, 54084u, 4294967295u) % vec4<u32>(32u)))))), _wgslsmith_f_op_f32(max(arg_2.b.d.x, -103f))), u_input.b, vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2.b.d.x - var_0.x))), -341f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.b.b.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(arg_2.b.d.x)))), arg_2.b.d.x)), Struct_1(~(-26334i), var_1.x, vec4<f32>(arg_2.b.b.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-631f)))), var_0.x, arg_2.b.a.x), ~78728u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-691f, 354f))), vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x)))));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<bool>) -> vec2<u32> {
    var var_0 = Struct_5(_wgslsmith_f_op_f32(arg_0.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x + -1198f))));
    var var_1 = Struct_5(_wgslsmith_f_op_f32(round(-1379f)));
    return vec2<u32>(26566u, u_input.a.x);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<i32>) -> vec3<bool> {
    global0 = max(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 4294967295u), func_4(func_2(u_input.a.x, u_input.b, Struct_4(vec4<bool>(false, true, true, true), Struct_3(vec3<f32>(2108f, -143f, arg_0.x), vec2<f32>(arg_0.x, -1973f), u_input.a.x, vec4<f32>(305f, arg_0.x, 1098f, arg_0.x), Struct_1(u_input.c.x, u_input.a.x, arg_0, u_input.a.x, arg_0.ww)), vec2<bool>(true, true), u_input.c.x, true)), vec4<bool>(true, true, true, true)) & u_input.a.ww), u_input.b);
    global0 = 61920u;
    let var_0 = Struct_2(func_2(28945u, ~countOneBits(reverseBits(u_input.b)), Struct_4(vec4<bool>(true, true, true, select(false, false, false)), func_2(~0u, countOneBits(4229u), Struct_4(vec4<bool>(false, false, false, false), Struct_3(arg_0.wxy, vec2<f32>(-1000f, -2440f), 85818u, vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), Struct_1(0i, 1822u, vec4<f32>(-749f, 1000f, 627f, 160f), u_input.a.x, arg_0.zw)), vec2<bool>(false, false), arg_1.x, false)), select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false))), abs(max(u_input.c.x, arg_1.x)), true || (u_input.a.x == 4294967295u))).e, arg_1.x, u_input.a | _wgslsmith_clamp_vec4_u32(~u_input.a, vec4<u32>(_wgslsmith_sub_u32(u_input.b, u_input.a.x), u_input.a.x, ~u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), u_input.a.xx)), u_input.a), select(arg_1.zw, arg_1.yz, vec2<bool>(any(vec4<bool>(true, true, true, true)), false)), vec2<bool>(false, all(vec2<bool>(true, false))));
    global0 = u_input.a.x;
    var var_1 = var_0.e;
    return select(select(!select(!vec3<bool>(var_0.e.x, true, var_1.x), !vec3<bool>(var_1.x, var_1.x, var_1.x), false), !vec3<bool>(any(vec4<bool>(false, var_0.e.x, var_1.x, var_0.e.x)), any(vec4<bool>(var_0.e.x, true, true, var_1.x)), select(var_0.e.x, false, true)), select(false, var_1.x, (var_1.x | false) | all(vec4<bool>(var_0.e.x, var_0.e.x, var_0.e.x, false)))), select(vec3<bool>(any(select(var_0.e, vec2<bool>(var_1.x, false), true)), true, true), !(!vec3<bool>(true, var_1.x, var_0.e.x)), select(vec3<bool>(true, true, var_1.x), !vec3<bool>(var_1.x, true, true), select(!vec3<bool>(var_1.x, var_0.e.x, var_1.x), !vec3<bool>(true, var_1.x, var_0.e.x), !vec3<bool>(var_1.x, var_1.x, true)))), select(select(vec3<bool>(true, var_1.x, true), vec3<bool>(true, true, var_1.x), vec3<bool>(var_0.e.x, true, 506f == var_0.a.c.x)), !(!(!vec3<bool>(false, var_0.e.x, var_1.x))), var_0.e.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 4294967295u;
    var var_0 = vec3<bool>(all(!select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), false))), true, any(vec2<bool>(all(vec4<bool>(false, false, false, true)), true)) || true);
    var_0 = !(!select(select(select(vec3<bool>(var_0.x, false, false), vec3<bool>(true, var_0.x, var_0.x), true), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, var_0.x, true), vec3<bool>(true, var_0.x, var_0.x)), var_0.x), select(func_1(vec4<f32>(371f, 1110f, -493f, -432f), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x)), vec3<bool>(var_0.x, var_0.x, false), select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, false, true))), all(var_0.xx) == true));
    var_0 = vec3<bool>(func_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -1496f, -1000f, 1274f), vec4<f32>(-1777f, -269f, -1098f, 1397f), vec4<bool>(var_0.x, var_0.x, var_0.x, false))), _wgslsmith_div_vec4_f32(vec4<f32>(901f, 626f, -186f, -368f), vec4<f32>(259f, 1371f, -445f, -536f))), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), vec4<i32>(u_input.c.x, u_input.c.x, -9096i, u_input.c.x)) | countOneBits(vec4<i32>(2147483647i, u_input.c.x, u_input.c.x, 28170i))).x | true, var_0.x, ~countOneBits(abs(u_input.c.x)) > (-2147483647i & u_input.c.x));
    var var_1 = i32(-1i) * -1i;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(549f, 118f, 2280f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-816f, 883f, 1080f) + vec3<f32>(1301f, 1435f, 1000f))), _wgslsmith_f_op_vec3_f32(func_2(1u, u_input.a.x, Struct_4(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), Struct_3(vec3<f32>(1965f, 3012f, -1651f), vec2<f32>(175f, 552f), 4294967295u, vec4<f32>(-1576f, 1410f, 1000f, -424f), Struct_1(u_input.c.x, u_input.a.x, vec4<f32>(1131f, -1063f, -315f, -1000f), u_input.b, vec2<f32>(-823f, 646f))), vec2<bool>(true, var_0.x), -46345i, false)).d.xxw * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-118f, -698f, -906f), vec3<f32>(732f, 1000f, 742f), vec3<bool>(false, var_0.x, false))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-583f, 1000f, -747f) + vec3<f32>(-1241f, 2060f, 772f)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -431f), -495f, _wgslsmith_f_op_f32(-1000f + -858f)), vec3<bool>(var_0.x, true, true))), !(!func_1(vec4<f32>(-1809f, 162f, 880f, -181f), vec4<i32>(2147483647i, 0i, u_input.c.x, -7965i))))) - vec3<f32>(-444f, _wgslsmith_f_op_f32(func_3((vec4<i32>(u_input.c.x, -10260i, -1i, u_input.c.x) | vec4<i32>(-10077i, 2147483647i, -1i, u_input.c.x)) >> (u_input.a % vec4<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-924f - -1000f)))));
    var_0 = select(vec3<bool>(var_0.x, any(select(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, true)), select(vec3<bool>(false, true, var_0.x), vec3<bool>(false, true, var_0.x), vec3<bool>(true, false, var_0.x)), var_0.x)), -1i <= -u_input.c.x), vec3<bool>(!all(select(vec3<bool>(false, true, var_0.x), vec3<bool>(false, false, var_0.x), vec3<bool>(true, true, true))), any(!select(vec4<bool>(true, true, true, false), vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(false, true, false, false))), var_0.x), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_div_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, -50532i), vec3<i32>(1i, u_input.c.x, 2147483647i)), 9827i), _wgslsmith_div_i32(5686i, u_input.c.x), u_input.c.x), _wgslsmith_div_vec4_u32(~u_input.a, u_input.a), u_input.a.x >> ((u_input.b & (~1u | u_input.b)) % 32u), u_input.a.xz << (vec2<u32>(u_input.a.x, u_input.b) % vec2<u32>(32u)), ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(~u_input.a.x, u_input.b | u_input.a.x), reverseBits(19528u)));
}

