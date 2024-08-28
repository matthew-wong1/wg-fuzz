struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 6> = array<vec3<u32>, 6>(vec3<u32>(11247u, 69973u, 1u), vec3<u32>(36307u, 1u, 9153u), vec3<u32>(105277u, 1u, 0u), vec3<u32>(1u, 7585u, 20168u), vec3<u32>(14548u, 14413u, 0u), vec3<u32>(62691u, 8510u, 53421u));

var<private> global1: vec2<f32> = vec2<f32>(-1014f, 251f);

var<private> global2: Struct_1;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = select(vec4<bool>(global2.b, all(!vec2<bool>(global2.b, global2.b)), all(!vec4<bool>(global2.b, false, global2.b, global2.b)), global2.b), select(vec4<bool>(true, !global2.b, !(-285f != global1.x), true), select(select(vec4<bool>(true, global2.b, true, global2.b), !vec4<bool>(global2.b, global2.b, global2.b, global2.b), vec4<bool>(false, true, false, false)), select(vec4<bool>(false, global2.b, global2.b, global2.b), select(vec4<bool>(global2.b, global2.b, global2.b, global2.b), vec4<bool>(global2.b, global2.b, true, true), global2.b), any(vec3<bool>(false, true, false))), !select(vec4<bool>(global2.b, false, global2.b, true), vec4<bool>(global2.b, global2.b, false, true), vec4<bool>(false, global2.b, true, true))), select(vec4<bool>(arg_0 >= 1387f, !global2.b, false, global2.c > u_input.a.x), !(!vec4<bool>(global2.b, global2.b, false, false)), vec4<bool>(!global2.b, true, all(vec3<bool>(global2.b, global2.b, global2.b)), !global2.b))), vec4<bool>(global2.b, all(!vec3<bool>(true, false, global2.b)), true, any(!vec3<bool>(global2.b, global2.b, global2.b)) || ((-1i < u_input.d.x) && any(vec4<bool>(global2.b, global2.b, global2.b, global2.b)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0, 1460f), vec2<f32>(541f, 658f)))))) - vec2<f32>(global1.x, _wgslsmith_f_op_f32(f32(-1f) * -1033f)))));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-782f, _wgslsmith_f_op_f32(-global1.x), all(var_0.zz))))), !global2.b, ~_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(u_input.a.x, 81901u, 4294967295u, 4294967295u)), global2.d), select(vec4<u32>(9338u, ~4498u, _wgslsmith_mult_u32(u_input.b, global2.d.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 12815u, u_input.a.x, 1u), global2.d)), global2.d ^ vec4<u32>(global2.d.x, 4294967295u, 17510u, 0u), true)), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(min(arg_0, -1260f)))))), true, global2.c, vec4<u32>(global2.d.x, global2.d.x, 1u, ~1u)), -16644i, _wgslsmith_clamp_u32(0u ^ ~global2.d.x, u_input.b, u_input.a.x) ^ global2.c);
    var var_3 = 2147483647i;
    var var_4 = Struct_2(var_2.b, var_2.a, 0i, reverseBits(~global2.c));
    return -858f;
}

fn func_2(arg_0: i32, arg_1: u32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1.x, -566f)));
    let var_1 = ~u_input.b & ~u_input.b;
    var var_2 = false;
    let var_3 = _wgslsmith_f_op_f32(func_3(var_0.x));
    var var_4 = -(~_wgslsmith_div_vec3_i32(select(u_input.c.xyz, vec3<i32>(13883i, u_input.c.x, arg_0), vec3<bool>(true, true, true)), countOneBits(vec3<i32>(0i, u_input.d.x, -1i))));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -372f), global2.b, _wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.a), vec2<u32>(arg_1, global2.d.x)) & _wgslsmith_mult_u32(64576u, 23062u), global2.d), Struct_1(var_3, true, countOneBits(1u), global2.d), ~17908i, min(min(0u, ~u_input.a.x) & select(_wgslsmith_sub_u32(35929u, 1u), 60328u, all(vec4<bool>(false, true, global2.b, false))), u_input.b));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec2<bool>, arg_3: Struct_2) -> bool {
    var var_0 = Struct_2(Struct_1(-1130f, arg_3.b.a < _wgslsmith_f_op_f32(-700f + _wgslsmith_f_op_f32(-global1.x)), ~(~(~45482u)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a.x, 0u) & vec3<u32>(0u, arg_3.d, 38350u), vec3<u32>(13555u, 25946u, arg_0.a.d.x)), global2.c, ~4294967295u, 4294967295u)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(arg_0.b.a))))), all(select(select(vec4<bool>(arg_3.a.b, false, arg_0.b.b, arg_2.x), vec4<bool>(false, false, arg_0.a.b, arg_0.a.b), vec4<bool>(false, arg_2.x, arg_2.x, arg_0.b.b)), select(vec4<bool>(true, false, arg_3.b.b, true), vec4<bool>(true, false, arg_2.x, arg_0.b.b), arg_0.b.b), vec4<bool>(false, true, true, true))), ~53327u, firstTrailingBit(global2.d << (arg_3.b.d % vec4<u32>(32u)))), arg_0.c, 4294967295u);
    global2 = Struct_1(global1.x, false, arg_3.a.d.x, abs(abs(arg_0.a.d)));
    var_0 = Struct_2(func_2(-890i, _wgslsmith_sub_u32(arg_3.a.d.x, 82530u)).a, func_2(firstTrailingBit(-1i), ~_wgslsmith_dot_vec4_u32(~arg_3.a.d, vec4<u32>(37184u, 70741u, 5472u, u_input.b))).a, ~(~u_input.e), 923u);
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.a, var_0.b.a)), vec2<f32>(-463f, 1059f))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1013f, -1273f) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0.a.a, -600f)))));
    return arg_3.b.b;
}

fn func_1() -> vec4<bool> {
    var var_0 = u_input.e;
    var var_1 = u_input.c;
    let var_2 = abs(select(global0[_wgslsmith_index_u32(36853u, 6u)], global2.d.zyy, func_4(func_2(-11304i, global2.d.x & u_input.a.x), u_input.c.wxz, vec2<bool>(!global2.b, global1.x <= global1.x), func_2(_wgslsmith_div_i32(6583i, var_1.x), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global2.c), vec2<u32>(1u, u_input.a.x))))));
    global0 = array<vec3<u32>, 6>();
    var var_3 = ~firstTrailingBit(vec3<u32>(~global2.d.x, abs(~44519u), _wgslsmith_mod_u32(42948u, var_2.x)));
    return vec4<bool>(any(vec2<bool>(all(select(vec2<bool>(global2.b, global2.b), vec2<bool>(false, global2.b), vec2<bool>(global2.b, true))), global2.b)), all(vec3<bool>(true, global2.b, any(!vec2<bool>(global2.b, true)))), true, true);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec3<bool>) -> Struct_1 {
    global0 = array<vec3<u32>, 6>();
    let var_0 = -max(-2147483647i, ~_wgslsmith_mod_i32(0i | u_input.d.x, 67993i));
    global2 = func_2(var_0, ~arg_0.d.x).a;
    var var_1 = countOneBits(_wgslsmith_sub_i32(u_input.d.x, ~(-1i)));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-824f, -319f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1.x, global2.a))))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1355f), _wgslsmith_f_op_f32(432f + -1517f)))), false)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1.a, arg_0.a))), vec2<f32>(arg_1.a, arg_1.a))) + vec2<f32>(-508f, _wgslsmith_f_op_f32(-global2.a))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -656f)))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.a, arg_0.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1449f, global1.x) - vec2<f32>(1173f, global1.x)), !arg_2.yw)))));
    return func_2(var_0, _wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(32146u, 31760u), u_input.a, vec2<u32>(25724u, global2.c)), arg_0.d.wx << (vec2<u32>(12168u, arg_0.d.x) % vec2<u32>(32u))), vec2<u32>(firstLeadingBit(~arg_0.d.x), arg_0.c))).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_5(Struct_1(1649f, global2.b && any(vec4<bool>(global2.b, global2.b, global2.b, global2.b)), ~global2.c | global2.c, _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global2.c, 8369u, 11400u, u_input.a.x), global2.d), vec4<u32>(37930u, global2.d.x, 14124u, 67740u), vec4<u32>(u_input.a.x, global2.d.x, u_input.b, global2.d.x))), Struct_1(global2.a, global2.b && false, 1u, global2.d), !func_1(), !select(vec3<bool>(true, false, global2.b), !vec3<bool>(false, false, global2.b), global2.b)), func_5(func_2(_wgslsmith_dot_vec2_i32(select(u_input.c.ww, vec2<i32>(u_input.c.x, 47708i), false), firstLeadingBit(vec2<i32>(21985i, -1i))), global2.c).a, func_2(u_input.d.x, _wgslsmith_sub_u32(u_input.b >> (18913u % 32u), 1u)).b, select(vec4<bool>(global2.a > global2.a, true, true, global2.b), select(func_1(), !vec4<bool>(false, true, global2.b, false), select(vec4<bool>(global2.b, global2.b, global2.b, true), vec4<bool>(true, true, global2.b, global2.b), vec4<bool>(false, false, global2.b, global2.b))), global2.b != (u_input.d.x != -19246i)), !select(vec3<bool>(true, true, global2.b), vec3<bool>(global2.b, global2.b, true), all(vec4<bool>(global2.b, true, global2.b, global2.b)))), u_input.e, firstLeadingBit(_wgslsmith_clamp_u32(0u, func_2(-2147483647i, 4294967295u).d, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a.x, u_input.a.x), global2.d.zww), u_input.b | 0u))));
    var var_1 = _wgslsmith_f_op_f32(-global2.a);
    global2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a - global1.x)))), false, 0u, ~firstTrailingBit(_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, global2.d.x, 0u, 33056u), var_0.b.d)));
    global2 = var_0.a;
    let var_2 = func_2(-_wgslsmith_mult_i32(u_input.e, -(-2147483647i | var_0.c)), global2.d.x);
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_2.a.a), -1361f)));
    var_0 = Struct_2(Struct_1(global2.a, select(true, all(vec3<bool>(true, true, true)), (1i ^ u_input.c.x) >= u_input.d.x), global2.c, vec4<u32>(~1u, global2.c, ~(global2.c & 0u), var_2.a.c)), Struct_1(551f, false && !(!var_2.b.b), 4332u, vec4<u32>(u_input.b, 1u, var_2.a.d.x, ~(~4294967295u))), ~36931i, abs(firstLeadingBit(func_5(Struct_1(-659f, global2.b, var_0.d, vec4<u32>(0u, var_0.b.d.x, 370u, u_input.a.x)), func_2(u_input.c.x, 53798u).b, vec4<bool>(global2.b, global2.b, false, var_2.a.b), !vec3<bool>(true, true, var_0.a.b)).d.x)));
    var var_3 = vec3<u32>(65666u, 4294967295u, ~59652u);
    let x = u_input.a;
    s_output = StorageBuffer(-16132i, var_0.c, reverseBits(_wgslsmith_dot_vec2_i32(max(vec2<i32>(7125i, 1i), vec2<i32>(-62091i, -22360i)) << ((var_0.b.d.xw & vec2<u32>(12311u, 2626u)) % vec2<u32>(32u)), vec2<i32>(-26105i, abs(-1i)))), vec2<i32>(var_2.c & 15888i, min(~(-1i) & ~var_0.c, var_0.c)), 119f);
}

