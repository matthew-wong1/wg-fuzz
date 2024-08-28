struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: u32,
    d: vec3<bool>,
    e: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec4<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 18>;

var<private> global1: Struct_2 = Struct_2(19184i);

var<private> global2: array<vec4<i32>, 2> = array<vec4<i32>, 2>(vec4<i32>(2147483647i, 1i, 2147483647i, 11448i), vec4<i32>(0i, 11244i, 52158i, i32(-2147483648)));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> u32 {
    global2 = array<vec4<i32>, 2>();
    var var_0 = ~countOneBits(countOneBits(-vec3<i32>(67411i, arg_0.a, global1.a) | -vec3<i32>(-15347i, 40457i, -3879i)));
    var var_1 = ~abs(u_input.a.x);
    let var_2 = _wgslsmith_sub_u32(~arg_1.c, ~(~(~u_input.a.x >> (79111u % 32u))));
    global0 = array<vec2<u32>, 18>();
    return var_2;
}

fn func_2(arg_0: vec4<f32>) -> vec4<bool> {
    let var_0 = Struct_1(vec3<u32>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(0u, u_input.a.x, u_input.c.x, u_input.c.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 0u, 4294967295u, u_input.c.x), vec4<u32>(u_input.c.x, 1u, 1u, 1u))), 31941u, func_3(Struct_2(u_input.b), Struct_1(~u_input.c, false, u_input.a.x, vec3<bool>(true, false, false), u_input.a.x))), all(vec2<bool>(true, true)), u_input.a.x, select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec3<bool>(false, true, false))), vec3<bool>(!all(vec3<bool>(true, true, true)), true, any(select(vec2<bool>(true, true), vec2<bool>(true, true), false))), true), _wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(u_input.c.x, 1u, u_input.a.x, u_input.c.x))), max(countOneBits(~vec4<u32>(2624u, 19344u, u_input.c.x, u_input.a.x)), vec4<u32>(u_input.a.x, ~u_input.a.x, ~u_input.c.x, abs(u_input.a.x)))));
    var var_1 = Struct_2(-1i);
    global2 = array<vec4<i32>, 2>();
    let var_2 = Struct_2(52037i);
    return !(!select(select(!vec4<bool>(var_0.d.x, var_0.d.x, false, false), !vec4<bool>(false, true, var_0.d.x, var_0.b), var_0.a.x >= 0u), select(!vec4<bool>(true, false, false, var_0.b), !vec4<bool>(var_0.b, var_0.d.x, var_0.b, false), !vec4<bool>(var_0.b, var_0.d.x, true, var_0.d.x)), var_0.b));
}

fn func_1(arg_0: bool, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = vec4<bool>(all(select(vec4<bool>(true, true, true, arg_0), select(!vec4<bool>(true, arg_0, false, arg_0), vec4<bool>(false, true, arg_0, arg_0), true), vec4<bool>(arg_0 | arg_0, arg_0, false || arg_0, false))), !any(func_2(vec4<f32>(941f, 872f, 1000f, arg_1.x))), !arg_0, true);
    var var_1 = Struct_2(~(-40137i));
    let var_2 = Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(17739u, _wgslsmith_div_u32(u_input.c.x >> (u_input.c.x % 32u), min(u_input.a.x, 1u)), ~firstLeadingBit(u_input.a.x)), _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(u_input.c, vec3<u32>(u_input.a.x, u_input.c.x, u_input.a.x)), ~vec3<u32>(u_input.c.x, u_input.c.x, u_input.a.x), select(countOneBits(vec3<u32>(62006u, u_input.a.x, u_input.a.x)), u_input.a, var_0.wxw))), var_0.x, _wgslsmith_mod_u32(min(abs(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.c.x), vec4<u32>(4294967295u, 21239u, u_input.a.x, 67356u))), u_input.c.x) >> (u_input.a.x % 32u), select(var_0.zxz, !vec3<bool>(var_0.x, true, true), !var_0.x), firstLeadingBit(u_input.a.x));
    global1 = Struct_2(global1.a);
    var_1 = Struct_2(~1i ^ _wgslsmith_div_i32(countOneBits(2147483647i), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 1i, global1.a), vec3<i32>(var_1.a, var_1.a, -19485i)), global1.a)));
    return Struct_1(_wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(~u_input.a.x, func_3(Struct_2(global1.a), Struct_1(var_2.a, false, var_2.e, var_0.yww, var_2.e)), 12802u)), min(var_2.a, ~_wgslsmith_div_vec3_u32(var_2.a, vec3<u32>(42504u, 35889u, 4294967295u)))), select(any(var_0), true, false), 28399u, vec3<bool>(var_0.x, all(select(vec3<bool>(false, true, var_2.b), select(var_0.zzw, var_0.xxw, var_0.x), var_2.d)), all(vec2<bool>(all(var_0.ww), false))), select(~firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_2.e, 4294967295u), vec3<u32>(0u, var_2.c, 70973u))), 0u, true));
}

fn func_4(arg_0: Struct_1) -> f32 {
    var var_0 = -1049i;
    var var_1 = Struct_2(u_input.b);
    var var_2 = Struct_3(all(!(!func_2(vec4<f32>(-472f, 771f, -2297f, 1000f)).zzx)), func_1(true, vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-1101f)), 1f)), 1000f)));
    var_2 = Struct_3(false, Struct_1(reverseBits(vec3<u32>(var_2.b.e, 1u, 4294967295u) & _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, arg_0.e, u_input.a.x), vec3<u32>(71335u, arg_0.c, var_2.b.a.x))), select(var_2.b.d.x, arg_0.b, arg_0.d.x), ~(~u_input.c.x << ((var_2.b.c | 857u) % 32u)), func_1(false, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1009f, 2093f))) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, -878f), vec2<f32>(1415f, 866f))))).d, _wgslsmith_mult_u32(~u_input.a.x, _wgslsmith_clamp_u32(0u, 0u, 38904u) & select(1u, var_2.b.e, true))));
    let var_3 = vec4<i32>(firstLeadingBit(_wgslsmith_dot_vec2_i32((vec2<i32>(var_1.a, u_input.b) << (vec2<u32>(u_input.c.x, u_input.a.x) % vec2<u32>(32u))) | _wgslsmith_div_vec2_i32(vec2<i32>(global1.a, global1.a), vec2<i32>(7151i, global1.a)), _wgslsmith_mult_vec2_i32(-vec2<i32>(var_1.a, 3009i), select(vec2<i32>(var_1.a, 2147483647i), vec2<i32>(u_input.b, u_input.b), arg_0.b)))), 2147483647i, -var_1.a << (1u % 32u), ~u_input.b);
    return _wgslsmith_f_op_f32(max(482f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(1063f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~vec3<u32>(u_input.a.x, _wgslsmith_sub_u32(firstTrailingBit(u_input.a.x), ~37593u), _wgslsmith_clamp_u32(abs(u_input.a.x), 4294967295u, 4294967295u >> (u_input.a.x % 32u))), !(!(!all(vec4<bool>(true, false, false, true)))), ~firstTrailingBit(u_input.a.x), select(vec3<bool>(-27261i != min(u_input.b, -738i), u_input.c.x == u_input.a.x, ~u_input.b != -37316i), select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), true), vec3<bool>(true, false, true), false), !(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false))), 33014u);
    var var_1 = ~1u;
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(func_4(func_1(any(var_0.d), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1096f) * vec2<f32>(864f, -1081f))))), _wgslsmith_f_op_f32(f32(-1f) * -457f), _wgslsmith_f_op_f32(floor(-974f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-409f + 1886f)))));
    global2 = array<vec4<i32>, 2>();
    let var_3 = 0i | (i32(-1i) * -_wgslsmith_mod_i32(firstLeadingBit(u_input.b), ~global1.a));
    var_2 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.x), var_2.x, true)), _wgslsmith_f_op_f32(1003f + var_2.x), _wgslsmith_f_op_f32(sign(var_2.x)), _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(step(-477f, _wgslsmith_f_op_f32(var_2.x - var_2.x))))))));
    var_1 = ~(~(~var_0.e));
    let var_4 = Struct_2(min(global1.a, -39013i));
    let x = u_input.a;
    s_output = StorageBuffer(-544f, var_2.x, 5267i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, -597f, -1353f, -2226f) + vec4<f32>(819f, var_2.x, -169f, -1352f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -662f, 258f, 374f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.x, var_2.x, var_2.x, 1038f), vec4<f32>(-749f, var_2.x, 1052f, var_2.x))))))), vec2<u32>(u_input.c.x, 66929u));
}

