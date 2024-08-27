struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<bool>,
    c: vec4<f32>,
    d: Struct_2,
    e: vec2<bool>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24> = array<f32, 24>(386f, 861f, -749f, 674f, -779f, -239f, 360f, 145f, -1460f, -1000f, -144f, -1000f, 2203f, 376f, 309f, 142f, -285f, -314f, 780f, -642f, -837f, -1000f, 2213f, 1015f);

var<private> global1: f32 = -630f;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: vec2<u32>, arg_3: Struct_2) -> bool {
    global1 = 979f;
    global0 = array<f32, 24>();
    let var_0 = 4294967295u;
    var var_1 = (arg_3.a.d & any(select(vec4<bool>(false, arg_0.x, arg_3.c.d, arg_0.x), vec4<bool>(false, false, arg_3.b.d, true), true))) | arg_3.a.d;
    global0 = array<f32, 24>();
    return arg_0.x;
}

fn func_2(arg_0: Struct_4) -> f32 {
    var var_0 = vec4<i32>(-2147483647i, arg_0.d.b.e, -arg_0.a.c.b.b, ~(28784i ^ arg_0.a.c.a.e)) & ~vec4<i32>(-(~2147483647i), min(1i, u_input.b.x), select(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.d.c.b, -1i, 2147483647i), vec3<i32>(arg_0.d.b.e, -31883i, u_input.c)), abs(64504i), select(arg_0.a.c.c.d, true, arg_0.e.x)), 0i);
    var var_1 = ~(-var_0.x);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.a.b.x)));
    var var_2 = 0u;
    let var_3 = -2147483647i;
    return 1000f;
}

fn func_3(arg_0: bool, arg_1: vec4<f32>, arg_2: f32, arg_3: Struct_2) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1184f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-117f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -199f), _wgslsmith_f_op_f32(-arg_3.b.a))))), arg_3.b.b != -1i));
    var var_1 = ~select(arg_3.d.c.x | reverseBits(~0u), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.b.c.x, arg_3.d.c.x, 1u), vec3<u32>(86788u, u_input.a, 4294967295u)), _wgslsmith_dot_vec2_u32(arg_3.b.c.xz, arg_3.d.c.xx)) ^ 0u, false);
    let var_2 = _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(firstLeadingBit(_wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(-3765i, arg_3.b.b)), vec2<i32>(-20711i, 0i))), vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_div_i32(arg_3.a.b, -1i), abs(u_input.b.x)), ~1i)), u_input.b.zx);
    let var_3 = global0[_wgslsmith_index_u32(0u, 24u)];
    let var_4 = Struct_4(Struct_3(firstLeadingBit(abs(~arg_3.d.c.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(408f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(step(arg_3.b.a, -267f)), _wgslsmith_f_op_f32(-630f + -755f))), arg_3), select(select(vec3<bool>(arg_0, false, arg_3.a.d), vec3<bool>(arg_3.d.d, arg_0, arg_0), select(!vec3<bool>(false, arg_0, arg_3.c.d), select(vec3<bool>(false, true, false), vec3<bool>(false, arg_0, true), vec3<bool>(arg_3.b.d, arg_3.c.d, arg_0)), select(vec3<bool>(arg_3.a.d, true, arg_3.a.d), vec3<bool>(arg_0, true, arg_0), vec3<bool>(false, true, arg_0)))), select(vec3<bool>(select(false, arg_3.c.d, false), true || arg_3.b.d, var_2 >= u_input.c), select(vec3<bool>(arg_0, arg_3.d.d, true), vec3<bool>(false, arg_0, true), select(vec3<bool>(false, arg_0, false), vec3<bool>(false, true, arg_0), false)), vec3<bool>(arg_3.c.d, arg_0 & false, arg_0 || arg_3.b.d)), vec3<bool>(all(vec4<bool>(arg_0, true, arg_3.d.d, true)), !all(vec2<bool>(false, arg_3.b.d)), arg_3.a.d)), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-187f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * arg_2) - _wgslsmith_f_op_f32(-2123f * 547f))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 24u)] - arg_2), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_2 - 293f))), _wgslsmith_f_op_f32(select(var_0, _wgslsmith_f_op_f32(-arg_2), all(vec3<bool>(true, false, true))))), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_3.e.x & arg_3.c.c.x, 57416u), 24u)]), arg_3, select(vec2<bool>(!arg_0 & (u_input.c > var_2), arg_0), vec2<bool>(true, true), !select(vec2<bool>(arg_0, arg_0), select(vec2<bool>(arg_3.d.d, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(arg_3.d.d, false))));
    return u_input.a;
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> Struct_5 {
    global0 = array<f32, 24>();
    let var_0 = arg_0;
    var var_1 = ~34330u;
    let var_2 = global0[_wgslsmith_index_u32(func_3(!(!(arg_1.d & all(vec4<bool>(false, arg_1.d, arg_1.d, arg_1.d)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.a, -1339f, global0[_wgslsmith_index_u32(arg_0, 24u)], 994f))) * vec4<f32>(1017f, global0[_wgslsmith_index_u32(99165u, 24u)], 883f, -643f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1427f, arg_1.a, global0[_wgslsmith_index_u32(u_input.a, 24u)], global0[_wgslsmith_index_u32(1u, 24u)])))))), arg_1.a, Struct_2(arg_1, arg_1, Struct_1(-477f, arg_1.b, (arg_1.c | arg_1.c) & (arg_1.c & arg_1.c), any(!vec4<bool>(arg_1.d, arg_1.d, false, true)), arg_1.e), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_1.c.x, 24u)] + -310f)), u_input.c, vec3<u32>(~u_input.a, abs(13504u), 4294967295u), false || all(vec3<bool>(arg_1.d, arg_1.d, false)), arg_1.e), _wgslsmith_sub_vec3_u32(vec3<u32>(8493u | var_0, arg_0, ~11596u), arg_1.c))), 24u)];
    let var_3 = all(vec2<bool>(!arg_1.d || !all(vec2<bool>(true, arg_1.d)), !select(true, arg_1.d, arg_1.d)));
    return Struct_5(vec2<u32>(_wgslsmith_clamp_u32(var_0, select(arg_0, abs(1u), false), ~u_input.a), (1505u ^ arg_1.c.x) >> (~42952u % 32u)), u_input.b.yx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(~(~abs(~vec2<u32>(u_input.a, u_input.a))), ~(~min(vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u)), abs(vec2<u32>(105254u, 76189u)))), any(vec2<bool>(true, func_1(vec3<bool>(true, false, false), vec4<u32>(30663u, 1u, u_input.a, 4294967295u), vec2<u32>(u_input.a, 0u), Struct_2(Struct_1(global0[_wgslsmith_index_u32(53148u, 24u)], -1i, vec3<u32>(34202u, u_input.a, u_input.a), false, -39541i), Struct_1(1265f, u_input.b.x, vec3<u32>(u_input.a, u_input.a, 4294967295u), false, u_input.b.x), Struct_1(global0[_wgslsmith_index_u32(4294967295u, 24u)], u_input.b.x, vec3<u32>(50302u, 4294967295u, 0u), true, u_input.b.x), Struct_1(-302f, 49996i, vec3<u32>(29267u, 1u, u_input.a), false, -24325i), vec3<u32>(u_input.a, u_input.a, 4294967295u))))) | all(vec2<bool>(true, false)));
    let var_1 = func_4(~(~func_3(true, vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(var_0.x, 24u)], -1017f, 1477f), _wgslsmith_f_op_f32(func_2(Struct_4(Struct_3(u_input.a, vec4<f32>(618f, 194f, -1987f, 915f), Struct_2(Struct_1(2231f, -28560i, vec3<u32>(var_0.x, u_input.a, 6899u), true, u_input.b.x), Struct_1(global0[_wgslsmith_index_u32(var_0.x, 24u)], u_input.b.x, vec3<u32>(u_input.a, 1u, 4294967295u), true, 0i), Struct_1(-836f, u_input.c, vec3<u32>(4294967295u, 0u, u_input.a), true, 24038i), Struct_1(global0[_wgslsmith_index_u32(4294967295u, 24u)], -97530i, vec3<u32>(u_input.a, u_input.a, 76077u), false, 18774i), vec3<u32>(46246u, u_input.a, 1u))), vec3<bool>(false, true, true), vec4<f32>(1356f, 162f, global0[_wgslsmith_index_u32(1u, 24u)], 1000f), Struct_2(Struct_1(global0[_wgslsmith_index_u32(58945u, 24u)], 28493i, vec3<u32>(32183u, 0u, u_input.a), true, u_input.c), Struct_1(-517f, u_input.c, vec3<u32>(111393u, 10171u, var_0.x), true, -1i), Struct_1(global0[_wgslsmith_index_u32(var_0.x, 24u)], u_input.c, vec3<u32>(0u, 0u, 23475u), false, u_input.c), Struct_1(global0[_wgslsmith_index_u32(var_0.x, 24u)], u_input.b.x, vec3<u32>(20213u, 1165u, u_input.a), false, u_input.c), vec3<u32>(u_input.a, u_input.a, var_0.x)), vec2<bool>(true, true)))), Struct_2(Struct_1(global0[_wgslsmith_index_u32(0u, 24u)], u_input.c, vec3<u32>(69864u, 37068u, 0u), false, -9718i), Struct_1(-348f, u_input.b.x, vec3<u32>(46315u, 4294967295u, u_input.a), false, -1i), Struct_1(global0[_wgslsmith_index_u32(1u, 24u)], u_input.c, vec3<u32>(1u, var_0.x, 0u), true, u_input.b.x), Struct_1(127f, u_input.b.x, vec3<u32>(var_0.x, var_0.x, u_input.a), false, -1i), vec3<u32>(1u, 69032u, 36328u)))), Struct_1(_wgslsmith_f_op_f32(select(1481f, -162f, ~u_input.c != firstTrailingBit(42360i))), -1i, vec3<u32>(61863u, u_input.a, firstLeadingBit(~60999u)), any(vec4<bool>(true, true, true, true)) || true, u_input.c));
    let var_2 = _wgslsmith_add_u32(var_0.x, _wgslsmith_mod_u32(_wgslsmith_sub_u32(abs(38404u), var_1.a.x << (var_0.x % 32u)), var_1.a.x) & _wgslsmith_sub_u32(~var_0.x | _wgslsmith_dot_vec2_u32(vec2<u32>(69032u, 56756u), var_0), u_input.a | ~1u));
    global0 = array<f32, 24>();
    global0 = array<f32, 24>();
    global1 = _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(abs(~var_1.a.x), 24u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4234u, 24u)]), true));
    global1 = _wgslsmith_f_op_f32(sign(-439f));
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

