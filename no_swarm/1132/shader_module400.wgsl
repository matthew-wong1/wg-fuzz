struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: bool,
    d: Struct_3,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(1496f, vec2<i32>(-38360i, 12770i)), Struct_1(763f, vec2<i32>(48317i, 1i)), Struct_1(1000f, vec2<i32>(1i, -7271i)), Struct_1(897f, vec2<i32>(1i, -29311i)), Struct_1(-2366f, vec2<i32>(2147483647i, 1i)), Struct_1(-2427f, vec2<i32>(-1i, 1i)), Struct_1(-1239f, vec2<i32>(i32(-2147483648), -3329i)), Struct_1(-723f, vec2<i32>(1i, 2147483647i)), Struct_1(-1175f, vec2<i32>(1i, 0i)), Struct_1(-424f, vec2<i32>(-37649i, 48607i)), Struct_1(-289f, vec2<i32>(i32(-2147483648), -34001i)));

var<private> global1: array<Struct_3, 6>;

var<private> global2: u32 = 0u;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: bool) -> i32 {
    global2 = ~u_input.d | (_wgslsmith_dot_vec3_u32(~(vec3<u32>(21869u, u_input.d, 114312u) & vec3<u32>(u_input.d, 26564u, u_input.d)), vec3<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(u_input.d, 5187u)), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 38856u, u_input.d, u_input.c), vec4<u32>(36846u, 61130u, u_input.d, 5038u)))) >> (_wgslsmith_mult_u32(_wgslsmith_mult_u32(firstLeadingBit(1u), u_input.d), u_input.d >> (1u % 32u)) % 32u));
    return u_input.a;
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_4, arg_3: vec3<f32>) -> i32 {
    global2 = 87236u;
    global1 = array<Struct_3, 6>();
    global2 = u_input.c;
    global0 = array<Struct_1, 11>();
    global0 = array<Struct_1, 11>();
    return arg_1.b.x;
}

fn func_2(arg_0: vec4<i32>) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(488f + 355f)), arg_0.ww);
    var var_1 = Struct_4(Struct_2(Struct_1(118f, vec2<i32>(u_input.a | -2147483647i, func_3(-885f, global0[_wgslsmith_index_u32(4294967295u, 11u)], Struct_4(Struct_2(global0[_wgslsmith_index_u32(4294967295u, 11u)]), global0[_wgslsmith_index_u32(0u, 11u)], false, Struct_3(var_0.b), u_input.b), vec3<f32>(var_0.a, 1297f, var_0.a))))), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-103f + var_0.a), _wgslsmith_f_op_f32(903f + var_0.a))))), vec2<i32>(-2147483647i, _wgslsmith_mod_i32(func_1(true), var_0.b.x))), -1i > arg_0.x, global1[_wgslsmith_index_u32(~46737u, 6u)], _wgslsmith_mult_u32(min(select(18367u, 53846u, true) & countOneBits(78442u), _wgslsmith_add_u32(2945u, u_input.d ^ 37966u)), countOneBits(_wgslsmith_mod_u32(102640u, abs(u_input.d)))));
    let var_2 = !vec3<bool>(any(vec4<bool>(true, var_1.c, var_1.c, false)) | true, !all(!vec2<bool>(var_1.c, true)), any(select(select(vec4<bool>(false, false, var_1.c, false), vec4<bool>(false, var_1.c, var_1.c, var_1.c), true), vec4<bool>(true, false, true, var_1.c), vec4<bool>(false, var_1.c, false, false))));
    let var_3 = select(1u, ~(25883u >> (u_input.d % 32u)) << (24109u % 32u), var_1.c) | ~u_input.b;
    let var_4 = _wgslsmith_clamp_vec4_u32(firstLeadingBit(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.e, 4294967295u, var_1.e, u_input.b), vec4<u32>(u_input.c, 4294967295u, var_3, 21529u)))), ~(~(~vec4<u32>(var_3, 21737u, var_3, 26666u)) & vec4<u32>(var_3, ~var_1.e, 6807u, 43200u << (var_3 % 32u))), vec4<u32>(24714u, var_1.e, ~var_1.e, var_1.e));
    return Struct_2(global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(var_3, _wgslsmith_clamp_u32(var_4.x, _wgslsmith_sub_u32(var_4.x, 4294967295u), _wgslsmith_clamp_u32(4294967295u, 15979u, u_input.b)), ~64917u | _wgslsmith_add_u32(u_input.c, 22219u)), 11u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 6>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-585f, 1000f, 168f, 327f) * vec4<f32>(-181f, -610f, -544f, -147f)))), vec4<f32>(1239f, 209f, -754f, _wgslsmith_f_op_f32(540f * -529f)))) * vec4<f32>(_wgslsmith_f_op_f32(-567f - 1044f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(609f + 729f)), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(sign(893f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -632f)))));
    var var_1 = func_2(vec4<i32>(func_1(true), -26314i, u_input.a, -u_input.a));
    var_0 = vec4<f32>(-1474f, _wgslsmith_f_op_f32(-var_1.a.a), _wgslsmith_f_op_f32(-1610f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.a), var_1.a.a)), _wgslsmith_f_op_f32(-func_2(max(vec4<i32>(-6930i, 0i, 1i, u_input.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, var_1.a.b.x, u_input.a, -2147483647i), vec4<i32>(var_1.a.b.x, -37093i, u_input.a, u_input.a), vec4<i32>(var_1.a.b.x, -1i, var_1.a.b.x, u_input.a)))).a.a));
    global0 = array<Struct_1, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(u_input.d), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.a.a)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -688f), var_1.a.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + -754f) - _wgslsmith_f_op_f32(min(823f, var_1.a.a)))))), u_input.b, vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.a, 910f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -931f) + _wgslsmith_f_op_f32(sign(100f)))), _wgslsmith_f_op_f32(max(var_1.a.a, 1961f))));
}

