struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
    c: vec3<f32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec4<u32> {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_1(vec4<u32>(4294967295u, 12266u, ~1u, ~1u)), Struct_1(max(vec4<u32>(1u, _wgslsmith_mod_u32(24000u, 12039u), ~1u, min(64311u, 56307u)), vec4<u32>(0u, _wgslsmith_mult_u32(1u, 1u), 1u, 1u))), Struct_1(max(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(~1u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(24222u, 0u, 0u), vec3<u32>(4294967295u, 0u, 1u)), ~0u))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a, 728f, var_0.a, -429f), vec4<f32>(2012f, 1411f, -849f, var_0.a)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, var_0.a, 278f, -1888f) * vec4<f32>(var_0.a, var_0.a, -331f, 1343f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2211f, var_0.a, var_0.a, -1391f)), vec4<f32>(-1819f, 1446f, 1164f, -214f)))))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(652f * 905f) * _wgslsmith_f_op_f32(ceil(446f)))), var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a))), var_0.a));
    let var_2 = u_input.a;
    var var_3 = vec2<u32>(var_0.c.a.x ^ 39363u, ~(~_wgslsmith_add_u32(var_0.c.a.x, var_0.d.a.x)));
    let var_4 = vec4<i32>(var_2.x, -1i, _wgslsmith_dot_vec4_i32(~(vec4<i32>(-1i) * -vec4<i32>(1i, -1i, var_2.x, 1i)), -vec4<i32>(countOneBits(u_input.a.x), u_input.a.x, ~(-2669i), var_2.x)), var_2.x);
    return vec4<u32>(~abs(_wgslsmith_dot_vec4_u32(var_0.c.a, countOneBits(vec4<u32>(63126u, var_0.d.a.x, 0u, 1u)))), var_3.x, var_3.x, 75429u);
}

fn func_2(arg_0: f32, arg_1: vec3<f32>) -> vec4<u32> {
    let var_0 = _wgslsmith_add_i32(u_input.a.x, -6397i);
    var var_1 = Struct_1(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(40967u, 39637u, 40866u, 37564u) >> (func_3() % vec4<u32>(32u)), vec4<u32>(3450u, _wgslsmith_div_u32(4294967295u, 41571u), 1u, ~80301u)), ~(~57802u), ~(_wgslsmith_mult_u32(1u, 78313u) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 48003u, 80161u), vec3<u32>(46198u, 1u, 1u)) % 32u)), ~(~1u)));
    var_1 = Struct_1(_wgslsmith_add_vec4_u32(~_wgslsmith_div_vec4_u32(~var_1.a, _wgslsmith_mult_vec4_u32(vec4<u32>(30253u, var_1.a.x, 1u, 77592u), var_1.a)), vec4<u32>(var_1.a.x | 1u, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.x, 17752u), vec2<u32>(14196u, 4598u))), select(var_1.a.x << (var_1.a.x % 32u), abs(17590u), any(vec4<bool>(true, true, true, true))), ~4294967295u)));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.x))), Struct_1(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, var_1.a.x, var_1.a.x, 0u), vec4<u32>(var_1.a.x, var_1.a.x, var_1.a.x, 46438u)) >> (var_1.a % vec4<u32>(32u)), vec4<u32>(1u, ~1u, 0u, _wgslsmith_mult_u32(var_1.a.x, 4294967295u)))), Struct_1(~var_1.a), Struct_1(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.a.x, var_1.a.x, 75184u, 66026u), vec4<u32>(var_1.a.x, var_1.a.x, 4294967295u, var_1.a.x)) & (vec4<u32>(var_1.a.x, var_1.a.x, var_1.a.x, 0u) >> (~vec4<u32>(48871u, var_1.a.x, var_1.a.x, 0u) % vec4<u32>(32u)))));
    var_1 = var_2.c;
    return var_2.d.a;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<f32>) -> vec2<bool> {
    var var_0 = ~(~select(~func_2(arg_1.x, vec3<f32>(arg_1.x, 1811f, -1000f)), vec4<u32>(1u, select(40662u, 0u, false), ~0u, 1u), true));
    let var_1 = u_input.a.x;
    var_0 = vec4<u32>(101927u, (12644u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(6606u, 188u, 38630u), var_0.wxx) % 32u)) << (func_3().x % 32u), ~3563u, 0u) & ~abs(vec4<u32>(~26690u, ~4294967295u, 40684u, var_0.x));
    var var_2 = (true && (!all(vec3<bool>(true, true, true)) | true)) | true;
    var var_3 = ~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(0u, ~0u), reverseBits(2551u), 4294967295u), ~1u);
    return select(!vec2<bool>(false | all(vec2<bool>(true, false)), _wgslsmith_f_op_f32(select(arg_1.x, arg_1.x, true)) <= -1121f), select(select(select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(false, true), false), true), select(vec2<bool>(true, true), vec2<bool>(false, false), any(vec4<bool>(true, true, false, true))), true), vec2<bool>(_wgslsmith_f_op_f32(exp2(arg_1.x)) >= _wgslsmith_f_op_f32(f32(-1f) * -269f), false), !any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), false))), !select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true), select(any(vec4<bool>(false, false, true, false)), true, true)));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: Struct_5) -> Struct_2 {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.c.xy), vec2<f32>(arg_2.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.a - arg_2.c.x)) * arg_2.c.x)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1070f, var_0.x));
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(var_1.x, var_0.x)), -1073f));
    let var_2 = Struct_1(arg_2.a.c.a);
    var var_3 = select(select(vec3<bool>(false, _wgslsmith_div_f32(var_0.x, var_0.x) < var_0.x, arg_2.d.b), !select(select(vec3<bool>(arg_2.d.b, arg_1.x, false), vec3<bool>(arg_2.d.b, arg_1.x, arg_2.d.b), vec3<bool>(true, true, arg_2.d.b)), !vec3<bool>(true, arg_1.x, arg_2.d.b), vec3<bool>(arg_2.d.b, arg_1.x, false)), vec3<bool>(true, var_1.x >= _wgslsmith_f_op_f32(trunc(1035f)), true)), select(!select(!vec3<bool>(false, arg_1.x, false), vec3<bool>(false, arg_0.x, arg_2.d.b), !arg_1.x), select(!vec3<bool>(arg_2.d.b, arg_1.x, false), select(select(vec3<bool>(false, false, false), vec3<bool>(arg_2.d.b, arg_0.x, true), arg_2.d.b), !vec3<bool>(false, true, arg_2.d.b), !vec3<bool>(true, arg_1.x, arg_0.x)), arg_0.x), !(!(!vec3<bool>(false, arg_0.x, false)))), vec3<bool>(select(true, arg_2.d.b, all(vec3<bool>(false, true, true))), arg_0.x, true));
    return Struct_2(arg_2.a.a, Struct_1(var_2.a), var_2, var_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!any(vec4<bool>(true, u_input.a.x < u_input.a.x, true, u_input.a.x == u_input.a.x)));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1059f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -334f)))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1106f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(336f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-819f))))));
    var var_2 = func_4(!(!select(func_1(u_input.a, var_1.yx), vec2<bool>(false, true), true)), vec2<bool>(true, true), Struct_5(Struct_2(2110f, Struct_1(vec4<u32>(4294967295u, 0u, 373u, 0u)), Struct_1(func_2(var_1.x, vec3<f32>(var_1.x, var_1.x, var_1.x))), Struct_1(~vec4<u32>(4294967295u, 0u, 27647u, 28036u))), -36002i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 1000f, var_1.x)))), Struct_3(Struct_1(vec4<u32>(1u, 1u, 1u, 1u)), false, u_input.a.x & u_input.a.x, 1u)));
    let var_3 = select(select(vec4<bool>(true, true, true, true), !vec4<bool>(any(vec4<bool>(false, true, false, true)), true, any(vec3<bool>(true, true, true)), true), any(vec2<bool>(true, false))), vec4<bool>(!(!any(vec2<bool>(true, true))), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))) | false, false, true), false);
    var_2 = Struct_2(_wgslsmith_div_f32(var_2.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(1000f))))), var_2.c, var_2.b, Struct_1(~(~_wgslsmith_div_vec4_u32(var_2.c.a, vec4<u32>(15344u, 18080u, 1u, var_2.d.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(~0i);
}

