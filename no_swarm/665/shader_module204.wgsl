struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
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

var<private> global0: Struct_4;

var<private> global1: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(2935i, false, vec2<f32>(-184f, 988f), Struct_1(-1i, vec2<f32>(-1266f, 2511f), vec2<bool>(false, true))), Struct_2(14284i, true, vec2<f32>(-1262f, -588f), Struct_1(i32(-2147483648), vec2<f32>(-352f, -1000f), vec2<bool>(false, true))), Struct_2(-22716i, true, vec2<f32>(-1072f, -281f), Struct_1(41673i, vec2<f32>(-1154f, -1288f), vec2<bool>(false, false))), Struct_2(i32(-2147483648), false, vec2<f32>(964f, 602f), Struct_1(-1i, vec2<f32>(-1016f, -747f), vec2<bool>(true, false))), Struct_2(2147483647i, true, vec2<f32>(-426f, -1135f), Struct_1(-26821i, vec2<f32>(2630f, 783f), vec2<bool>(false, false))), Struct_2(0i, true, vec2<f32>(-1294f, 2338f), Struct_1(35888i, vec2<f32>(1000f, -456f), vec2<bool>(true, true))), Struct_2(0i, false, vec2<f32>(647f, -1105f), Struct_1(-1801i, vec2<f32>(178f, 746f), vec2<bool>(true, true))), Struct_2(32841i, true, vec2<f32>(684f, 557f), Struct_1(2147483647i, vec2<f32>(507f, -115f), vec2<bool>(false, true))), Struct_2(1i, true, vec2<f32>(-871f, -1420f), Struct_1(0i, vec2<f32>(328f, 1000f), vec2<bool>(false, false))), Struct_2(i32(-2147483648), true, vec2<f32>(548f, -1015f), Struct_1(-1i, vec2<f32>(-110f, 953f), vec2<bool>(true, false))), Struct_2(-19059i, true, vec2<f32>(2777f, 447f), Struct_1(1429i, vec2<f32>(-2298f, 791f), vec2<bool>(false, true))), Struct_2(-1i, false, vec2<f32>(266f, 109f), Struct_1(i32(-2147483648), vec2<f32>(-1000f, -659f), vec2<bool>(true, true))), Struct_2(-28542i, true, vec2<f32>(800f, -434f), Struct_1(1i, vec2<f32>(-1017f, 1000f), vec2<bool>(false, true))), Struct_2(i32(-2147483648), false, vec2<f32>(1177f, 565f), Struct_1(-1i, vec2<f32>(125f, 149f), vec2<bool>(false, true))), Struct_2(21199i, true, vec2<f32>(1102f, 949f), Struct_1(2147483647i, vec2<f32>(-979f, 219f), vec2<bool>(false, false))), Struct_2(i32(-2147483648), false, vec2<f32>(-946f, -270f), Struct_1(-1i, vec2<f32>(-639f, -655f), vec2<bool>(false, true))), Struct_2(1i, true, vec2<f32>(-915f, 907f), Struct_1(35777i, vec2<f32>(-638f, 1363f), vec2<bool>(true, false))), Struct_2(39271i, false, vec2<f32>(-1209f, 1134f), Struct_1(0i, vec2<f32>(1000f, 1483f), vec2<bool>(true, true))), Struct_2(27585i, true, vec2<f32>(595f, 1826f), Struct_1(-1i, vec2<f32>(403f, 1039f), vec2<bool>(true, true))), Struct_2(-1i, true, vec2<f32>(-119f, -1568f), Struct_1(5366i, vec2<f32>(-1041f, 502f), vec2<bool>(true, false))));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: i32) -> i32 {
    global0 = Struct_4(global1[_wgslsmith_index_u32(46237u, 20u)], _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.b - global0.a.d.b.x)))))));
    let var_0 = 39019u;
    let var_1 = 4294967295u;
    var var_2 = !vec3<bool>(!arg_1.b, false, all(vec4<bool>(any(vec4<bool>(true, global0.a.d.c.x, global0.a.b, global0.a.d.c.x)), arg_1.b, arg_1.c.x <= arg_1.c.x, u_input.b <= -27765i)));
    var var_3 = (vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(63055u, var_1, 3849u, 444u), vec4<u32>(var_1, var_0, var_1, var_1)), _wgslsmith_clamp_u32(78144u, 1u, 23244u)), _wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.a.x, 0u, var_1, var_1), vec4<u32>(var_0, 4294967295u, 1u, var_1)), ~vec4<u32>(var_0, 49563u, var_1, arg_0.x)), select(~var_1, select(11267u, arg_0.x, arg_1.b), global0.a.d.c.x), max(var_0, var_0)) | abs(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(24503u, u_input.a.x, 22801u, u_input.a.x), vec4<u32>(3296u, 1u, arg_0.x, 49084u)), _wgslsmith_add_vec4_u32(vec4<u32>(arg_0.x, u_input.a.x, arg_0.x, arg_0.x), vec4<u32>(35400u, var_1, arg_0.x, var_1))))) >> (_wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(countOneBits(1u), select(103192u, u_input.a.x, false), 4240u, _wgslsmith_dot_vec2_u32(arg_0.zx, vec2<u32>(u_input.a.x, 4294967295u)))), abs(~(vec4<u32>(u_input.a.x, arg_0.x, 27650u, var_0) << (vec4<u32>(var_1, 51671u, 49210u, 4294967295u) % vec4<u32>(32u))))) % vec4<u32>(32u));
    return arg_1.d.a;
}

fn func_2(arg_0: vec2<bool>) -> vec3<i32> {
    global1 = array<Struct_2, 20>();
    global1 = array<Struct_2, 20>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-606f - _wgslsmith_f_op_f32(ceil(global0.b))))));
    let var_1 = -1000f;
    let var_2 = false;
    return vec3<i32>(func_3(~vec3<u32>(~u_input.a.x, reverseBits(u_input.a.x), 4294967295u >> (1u % 32u)), Struct_2(firstLeadingBit(abs(37849i)), (-60277i >= u_input.b) || true, vec2<f32>(_wgslsmith_f_op_f32(-global0.a.d.b.x), var_0), global0.a.d), select(u_input.b, -(global0.a.a >> (32940u % 32u)), false)), -(~global0.a.d.a), u_input.c);
}

fn func_1(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_3, arg_3: vec3<i32>) -> u32 {
    var var_0 = !arg_2.b.b;
    var_0 = any(select(select(!select(vec4<bool>(arg_2.b.b, false, false, arg_2.b.d.c.x), vec4<bool>(arg_2.b.d.c.x, arg_2.b.d.c.x, false, global0.a.d.c.x), false), select(vec4<bool>(global0.a.b, false, true, true), vec4<bool>(arg_2.b.b, true, global0.a.b, global0.a.d.c.x), vec4<bool>(true, global0.a.b, false, false)), !(global0.b > 1128f)), !(!select(vec4<bool>(true, true, arg_2.b.d.c.x, false), vec4<bool>(false, global0.a.b, arg_2.b.d.c.x, global0.a.b), global0.a.b)), vec4<bool>(arg_2.b.d.c.x, all(vec3<bool>(arg_2.b.b, true, arg_2.b.d.c.x)) || true, !(!global0.a.b), true)));
    let var_1 = func_2(global0.a.d.c);
    let var_2 = arg_2;
    var var_3 = ~(~vec2<u32>(firstLeadingBit(1u), var_2.c) | u_input.a.xx);
    return _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.a, vec3<u32>(var_2.c, reverseBits(0u), 19034u)) << (~((vec3<u32>(arg_0.x, var_3.x, var_3.x) ^ u_input.a) & ~vec3<u32>(u_input.a.x, 1u, arg_0.x)) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(~u_input.a, u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(~u_input.b);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-504f, _wgslsmith_f_op_f32(1231f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(global0.a.d.b.x)))))));
    var var_2 = firstLeadingBit(abs(vec3<u32>(~u_input.a.x, func_1(vec2<u32>(1u, u_input.a.x), 9000i, Struct_3(vec4<f32>(global0.b, global0.b, global0.a.d.b.x, -802f), Struct_2(11054i, global0.a.d.c.x, global0.a.c, global0.a.d), u_input.a.x), vec3<i32>(u_input.b, global0.a.d.a, var_0)), u_input.a.x) | ~u_input.a));
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, global0.a.c.x, _wgslsmith_f_op_f32(-1131f - _wgslsmith_f_op_f32(select(220f, global0.a.c.x, true))), _wgslsmith_f_op_f32(exp2(global0.a.d.b.x)))), Struct_2(u_input.b, global0.a.d.c.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global0.b + 304f), _wgslsmith_div_f32(984f, global0.a.d.b.x)) + global0.a.d.b), Struct_1(-33070i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.c.x, -836f)), !(!global0.a.d.c))), abs(_wgslsmith_div_u32(54852u, func_1(var_2.zz, 0i, Struct_3(vec4<f32>(global0.b, global0.a.d.b.x, 510f, -231f), global0.a, var_2.x), vec3<i32>(u_input.c, u_input.b, var_0))) << (111676u % 32u)));
    var_2 = abs(abs(u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(((min(vec4<u32>(1u, 8661u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, var_3.c, var_2.x, var_2.x)) & vec4<u32>(5794u, 1u, 4294967295u, 18205u)) & ~vec4<u32>(1929u, u_input.a.x, 38459u, var_3.c)) ^ max(vec4<u32>(var_3.c, var_3.c, var_2.x, ~110231u), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 83363u, var_2.x, 42160u), vec4<u32>(1u, u_input.a.x, 33316u, 1u), vec4<u32>(var_3.c, u_input.a.x, var_2.x, 15236u)) ^ vec4<u32>(var_3.c, 0u, u_input.a.x, 0u)));
}

