struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<bool>,
    c: f32,
    d: u32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_3,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 31> = array<vec3<bool>, 31>(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> f32 {
    global0 = array<vec3<bool>, 31>();
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -213f))));
    var_0 = Struct_2(var_0.a);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(var_0.a.a)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1092f + -2685f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.a * 1000f), -1440f)))), var_0.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-1326f, -625f)), _wgslsmith_f_op_f32(sign(var_0.a.a)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a.a, var_0.a.a))))));
    var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(min(724f, 210f)), _wgslsmith_div_f32(var_0.a.a, 1000f), var_0.a.a, 1f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1339f, var_0.a.a, var_0.a.a, 997f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.x, 1000f, var_1.x, var_0.a.a))))))));
    return -1318f;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: Struct_4, arg_3: f32) -> Struct_4 {
    var var_0 = arg_2.a;
    let var_1 = Struct_2(arg_2.a);
    let var_2 = arg_2.b.x;
    var var_3 = Struct_4(Struct_1(_wgslsmith_f_op_f32(-var_0.a)), arg_2.b, 490f, _wgslsmith_mult_u32(firstTrailingBit(21897u), ~arg_2.d));
    var var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-519f, _wgslsmith_f_op_f32(func_3()), 493f, _wgslsmith_f_op_f32(abs(var_3.c))) + vec4<f32>(-467f, 1116f, 677f, 529f));
    return arg_2;
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: Struct_3) -> u32 {
    global0 = array<vec3<bool>, 31>();
    global0 = array<vec3<bool>, 31>();
    global0 = array<vec3<bool>, 31>();
    var var_0 = 59822u;
    var var_1 = -2147483647i ^ (min(countOneBits(firstTrailingBit(u_input.a)), 52910i) | u_input.a);
    return reverseBits(arg_0.d);
}

fn func_1() -> vec2<bool> {
    let var_0 = vec4<u32>(1u, 4294967295u, ~_wgslsmith_mult_u32(func_4(func_2(vec2<u32>(67103u, 161785u), vec3<u32>(65353u, 4294967295u, 1u), Struct_4(Struct_1(-1004f), vec2<bool>(false, false), -231f, 25229u), -1456f), ~7597u, Struct_3(true, Struct_1(-962f), vec2<bool>(true, false))), func_4(Struct_4(Struct_1(1534f), vec2<bool>(true, true), 1707f, 10822u), 7366u, Struct_3(false, Struct_1(-113f), vec2<bool>(false, false))) << (countOneBits(29222u) % 32u)), 64094u);
    global0 = array<vec3<bool>, 31>();
    global0 = array<vec3<bool>, 31>();
    let var_1 = ~u_input.a;
    let var_2 = var_0.x;
    return func_2(_wgslsmith_sub_vec2_u32(~(~(var_0.zy | vec2<u32>(var_0.x, 4294967295u))), ~(~reverseBits(vec2<u32>(var_2, 0u)))), reverseBits(var_0.wxy & ~(~vec3<u32>(var_0.x, 1u, var_2))), func_2(abs(var_0.yx), vec3<u32>(~1u, 4294967295u, var_0.x >> (var_2 % 32u)) ^ ((var_0.yyw | vec3<u32>(4294967295u, 4294967295u, var_2)) >> (firstTrailingBit(var_0.yzw) % vec3<u32>(32u))), func_2(firstLeadingBit(var_0.wx), _wgslsmith_mod_vec3_u32(vec3<u32>(3411u, 4569u, 4294967295u), vec3<u32>(var_0.x, 0u, 42205u)) >> (~vec3<u32>(var_0.x, var_0.x, var_2) % vec3<u32>(32u)), Struct_4(Struct_1(442f), vec2<bool>(true, true), _wgslsmith_f_op_f32(571f - -748f), ~1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1072f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-731f)))), 175f).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(u_input.a & _wgslsmith_div_i32(u_input.a, _wgslsmith_add_i32(1i, u_input.a))));
    global0 = array<vec3<bool>, 31>();
    let var_1 = !(!(!func_1()));
    global0 = array<vec3<bool>, 31>();
    let var_2 = Struct_2(func_2(~(~vec2<u32>(1u, 0u)), vec3<u32>(countOneBits(44474u), 51720u, 4294967295u), Struct_4(func_2(~vec2<u32>(36307u, 1u), firstLeadingBit(vec3<u32>(0u, 1u, 4294967295u)), Struct_4(Struct_1(-952f), var_1, 445f, 0u), _wgslsmith_f_op_f32(108f - -1340f)).a, !vec2<bool>(var_1.x, var_1.x), _wgslsmith_f_op_f32(sign(-331f)), abs(~1u)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -991f), -1726f) * _wgslsmith_f_op_f32(select(-506f, _wgslsmith_f_op_f32(f32(-1f) * -147f), true)))).a);
    var_0 = -u_input.a ^ u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.a, var_2.a.a, 0u, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-149f, 569f, var_2.a.a)))))))));
}

