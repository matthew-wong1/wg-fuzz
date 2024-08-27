struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
    d: vec4<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(22765i, Struct_1(vec4<u32>(1u, 57454u, 4294967295u, 0u), vec2<bool>(false, false), false), -7301i, vec4<bool>(false, true, true, true), Struct_1(vec4<u32>(4294967295u, 16217u, 1u, 55928u), vec2<bool>(true, false), true)), Struct_2(2147483647i, Struct_1(vec4<u32>(30371u, 97094u, 4294967295u, 4294967295u), vec2<bool>(true, false), true), 24995i, vec4<bool>(false, true, true, false), Struct_1(vec4<u32>(1u, 1u, 28180u, 1u), vec2<bool>(false, false), false)), Struct_2(20853i, Struct_1(vec4<u32>(0u, 52083u, 4294967295u, 7517u), vec2<bool>(true, true), false), i32(-2147483648), vec4<bool>(true, true, true, true), Struct_1(vec4<u32>(40213u, 0u, 26221u, 37466u), vec2<bool>(true, false), false)), Struct_2(-1i, Struct_1(vec4<u32>(1u, 1u, 30600u, 50380u), vec2<bool>(true, true), true), 59578i, vec4<bool>(false, true, false, false), Struct_1(vec4<u32>(27518u, 4294967295u, 0u, 4294967295u), vec2<bool>(false, false), false)), Struct_2(1i, Struct_1(vec4<u32>(34040u, 0u, 45191u, 104418u), vec2<bool>(false, true), true), 20345i, vec4<bool>(false, false, false, true), Struct_1(vec4<u32>(1u, 4294967295u, 0u, 4294967295u), vec2<bool>(true, true), false)), Struct_2(2147483647i, Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u), vec2<bool>(true, true), true), 1i, vec4<bool>(false, true, false, false), Struct_1(vec4<u32>(4294967295u, 0u, 19839u, 31486u), vec2<bool>(true, false), false)), Struct_2(11770i, Struct_1(vec4<u32>(1u, 24374u, 20016u, 36182u), vec2<bool>(true, false), true), 1i, vec4<bool>(true, true, true, true), Struct_1(vec4<u32>(69015u, 19612u, 73676u, 4294967295u), vec2<bool>(true, true), false)), Struct_2(2147483647i, Struct_1(vec4<u32>(5464u, 13554u, 6974u, 10786u), vec2<bool>(false, false), true), 2147483647i, vec4<bool>(true, false, false, true), Struct_1(vec4<u32>(6920u, 27761u, 50571u, 1u), vec2<bool>(true, true), true)), Struct_2(31279i, Struct_1(vec4<u32>(53696u, 4294967295u, 31057u, 61329u), vec2<bool>(false, false), true), 0i, vec4<bool>(true, false, true, true), Struct_1(vec4<u32>(4294967295u, 83655u, 4294967295u, 1u), vec2<bool>(false, true), false)), Struct_2(2885i, Struct_1(vec4<u32>(0u, 37936u, 4294967295u, 4294967295u), vec2<bool>(true, false), true), -19044i, vec4<bool>(true, true, false, false), Struct_1(vec4<u32>(4294967295u, 55695u, 1u, 0u), vec2<bool>(false, true), true)), Struct_2(-6033i, Struct_1(vec4<u32>(0u, 4294967295u, 0u, 8766u), vec2<bool>(true, false), false), 1i, vec4<bool>(true, false, false, true), Struct_1(vec4<u32>(0u, 0u, 34149u, 81113u), vec2<bool>(false, false), false)), Struct_2(1i, Struct_1(vec4<u32>(55787u, 15645u, 38918u, 0u), vec2<bool>(false, false), false), 473i, vec4<bool>(true, false, true, false), Struct_1(vec4<u32>(0u, 79800u, 6423u, 42060u), vec2<bool>(true, false), false)), Struct_2(16262i, Struct_1(vec4<u32>(1u, 4294967295u, 0u, 0u), vec2<bool>(true, true), false), 2147483647i, vec4<bool>(false, true, true, false), Struct_1(vec4<u32>(0u, 7443u, 32862u, 4294967295u), vec2<bool>(true, true), true)), Struct_2(9003i, Struct_1(vec4<u32>(66084u, 44482u, 0u, 37743u), vec2<bool>(false, false), true), i32(-2147483648), vec4<bool>(false, false, true, false), Struct_1(vec4<u32>(182u, 15043u, 19170u, 1u), vec2<bool>(true, false), false)), Struct_2(-1i, Struct_1(vec4<u32>(0u, 1u, 4294967295u, 4294967295u), vec2<bool>(true, false), false), 0i, vec4<bool>(true, true, true, false), Struct_1(vec4<u32>(12066u, 0u, 0u, 22056u), vec2<bool>(false, true), true)), Struct_2(-29142i, Struct_1(vec4<u32>(28299u, 75196u, 5904u, 84079u), vec2<bool>(false, true), false), 32180i, vec4<bool>(true, true, false, false), Struct_1(vec4<u32>(29216u, 4294967295u, 44917u, 4294967295u), vec2<bool>(false, false), true)), Struct_2(1i, Struct_1(vec4<u32>(1u, 25918u, 92400u, 29334u), vec2<bool>(true, false), true), 7052i, vec4<bool>(false, false, true, true), Struct_1(vec4<u32>(1u, 11399u, 32009u, 60879u), vec2<bool>(false, true), true)));

var<private> global1: bool;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<f32>, arg_1: u32, arg_2: f32, arg_3: Struct_2) -> u32 {
    global0 = array<Struct_2, 17>();
    global1 = true;
    let var_0 = arg_3;
    let var_1 = ~max(~var_0.b.a, ~vec4<u32>(_wgslsmith_clamp_u32(var_0.b.a.x, u_input.c, var_0.b.a.x), _wgslsmith_mult_u32(0u, 4294967295u), 8114u & arg_1, _wgslsmith_clamp_u32(arg_3.e.a.x, 4294967295u, u_input.c)));
    return ~4294967295u;
}

fn func_2() -> Struct_1 {
    let var_0 = abs(-49818i);
    global0 = array<Struct_2, 17>();
    global0 = array<Struct_2, 17>();
    global1 = true;
    global1 = u_input.c >= ~func_3(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(161f, 754f, -717f), vec3<f32>(1176f, -274f, -693f)))), _wgslsmith_sub_u32(~64697u, u_input.c), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(154f * -175f))), global0[_wgslsmith_index_u32(u_input.c, 17u)]);
    return Struct_1(reverseBits(select(vec4<u32>(~u_input.b, u_input.b, u_input.c & 19149u, _wgslsmith_div_u32(0u, 35453u)), vec4<u32>(u_input.c, u_input.c | 25557u, u_input.c, ~u_input.b), vec4<bool>(true, true, true, true))), !(!select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, false), false), all(vec3<bool>(true, true, false)))), all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
}

fn func_1(arg_0: f32, arg_1: vec4<bool>) -> bool {
    var var_0 = func_2();
    var var_1 = Struct_1(reverseBits(~(~max(vec4<u32>(0u, 0u, var_0.a.x, 51766u), var_0.a))), var_0.b, any(arg_1.wx));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-390f)), _wgslsmith_f_op_f32(arg_0 * -943f));
    global0 = array<Struct_2, 17>();
    var_0 = func_2();
    return all(var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !(false || all(vec4<bool>(true, true, true, true)));
    var var_0 = any(vec3<bool>(func_1(398f, select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false))) | func_1(_wgslsmith_f_op_f32(f32(-1f) * -861f), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), true)), true, func_2().b.x));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * -115f);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(196f, 958f)))) - _wgslsmith_f_op_f32(862f - -140f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -173f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-545f + -1000f)));
    let var_3 = select(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, u_input.c, 129168u), vec3<u32>(34235u, 34601u, 12521u)), min(select(vec3<u32>(0u, u_input.c, u_input.b), vec3<u32>(34830u, 93252u, 4294967295u), vec3<bool>(false, false, true)), countOneBits(vec3<u32>(4294967295u, 36078u, u_input.b)))), 29747u, !select(true, any(vec2<bool>(true, true)), true)) ^ _wgslsmith_mult_u32(u_input.b, 141992u);
    let x = u_input.a;
    s_output = StorageBuffer(-1i ^ _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(0i, 1i, u_input.a, u_input.a)), vec4<i32>(-54744i, -1i, -u_input.a, select(u_input.a, -1i, false))), 4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2604f)), var_3);
}

