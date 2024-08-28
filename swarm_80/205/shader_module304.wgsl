struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1325f;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: vec2<i32>) -> f32 {
    global0 = _wgslsmith_f_op_f32(-arg_0.a.a.x);
    global0 = -205f;
    var var_0 = any(select(vec4<bool>(u_input.a.x >= 1i, (-895f > arg_1) & false, !(!arg_0.d), any(arg_0.a.b)), select(vec4<bool>(all(vec3<bool>(true, arg_0.d, arg_0.d)), false, !arg_0.a.b.x, false), !vec4<bool>(true, arg_0.a.b.x, false, false), !(!vec4<bool>(true, false, arg_0.d, false))), abs(u_input.d.x) < abs(_wgslsmith_dot_vec4_u32(vec4<u32>(2548u, 29538u, u_input.d.x, 21168u), vec4<u32>(arg_0.c, 0u, u_input.d.x, u_input.d.x)))));
    let var_1 = Struct_2(arg_1, firstTrailingBit(vec3<u32>(min(7099u, u_input.c.x), (arg_0.c | arg_0.c) >> (u_input.d.x % 32u), arg_0.c)));
    let var_2 = ~vec2<i32>(_wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.e, 25823i, -1i) & u_input.a, vec3<i32>(u_input.a.x, 68261i, -1i), select(vec3<bool>(arg_0.a.b.x, true, arg_0.a.b.x), arg_0.a.b, true)), u_input.a << ((vec3<u32>(1u, u_input.c.x, 1u) >> (vec3<u32>(var_1.b.x, u_input.d.x, var_1.b.x) % vec3<u32>(32u))) % vec3<u32>(32u))), -arg_2.x);
    return arg_0.b;
}

fn func_2(arg_0: u32, arg_1: vec3<f32>) -> Struct_2 {
    let var_0 = Struct_2(arg_1.x, select(~u_input.d, u_input.d, false));
    var var_1 = vec4<bool>(true, false, ((0i >> ((arg_0 << (arg_0 % 32u)) % 32u)) | -912i) >= _wgslsmith_sub_i32(reverseBits(u_input.e), select(-u_input.e, 30555i << (arg_0 % 32u), true)), true);
    var var_2 = u_input.a.x;
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1158f, _wgslsmith_f_op_f32(arg_1.x - arg_1.x), var_0.a, _wgslsmith_div_f32(arg_1.x, var_0.a))) - vec4<f32>(_wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(arg_1.x - -801f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -171f)), _wgslsmith_f_op_f32(sign(var_0.a)), var_0.a)), var_1.wzy);
    var var_4 = vec3<bool>(all(select(var_3.b, var_3.b, var_1.xzx)), true, all(var_3.b));
    return Struct_2(_wgslsmith_f_op_f32(-1063f * _wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(var_3.a, var_1.wwy), _wgslsmith_div_f32(arg_1.x, 1183f), _wgslsmith_sub_u32(u_input.d.x, 1u), any(var_3.b), _wgslsmith_mod_i32(0i, u_input.a.x)), var_3.a.x, _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, 2147483647i) >> (vec2<u32>(arg_0, var_0.b.x) % vec2<u32>(32u)), vec2<i32>(39453i, 2147483647i))))), abs(u_input.c));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: vec4<bool>) -> Struct_2 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_0, 533f, ~u_input.b)) - -213f);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b));
    global0 = arg_2.a;
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a * -591f) + arg_2.a)));
    var var_0 = ~61656i;
    return func_2(select(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.d.x, 20893u, 2451u), vec4<u32>(arg_0.c, u_input.c.x, arg_2.b.x, 37975u)), vec4<u32>(0u, u_input.c.x, 1u, arg_2.b.x)) ^ ((arg_2.b.x ^ u_input.d.x) | 129u), 0u, !(arg_2.a == arg_1.x) & !any(vec4<bool>(false, false, arg_3.x, true))), arg_0.a.a.yyx);
}

fn func_5(arg_0: Struct_2) -> f32 {
    global0 = 1042f;
    var var_0 = firstLeadingBit(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(arg_0.b.x, u_input.d.x, arg_0.b.x, u_input.c.x)), firstLeadingBit(vec4<u32>(arg_0.b.x, 24183u, u_input.d.x, u_input.d.x)), vec4<u32>(arg_0.b.x, u_input.d.x, 97974u, 91402u)), vec4<u32>(~arg_0.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 21401u, 17225u), u_input.c), 46090u, arg_0.b.x >> (u_input.c.x % 32u))), ~(~vec4<u32>(0u, 8440u, arg_0.b.x, u_input.c.x) >> ((vec4<u32>(arg_0.b.x, 14257u, u_input.d.x, arg_0.b.x) >> (vec4<u32>(4294967295u, arg_0.b.x, arg_0.b.x, 57486u) % vec4<u32>(32u))) % vec4<u32>(32u)))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -103f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(vec4<f32>(arg_0.a, 402f, 747f, 108f), vec3<bool>(false, true, true)), arg_0.a, u_input.c.x, false, -4888i), arg_0.a, vec2<i32>(u_input.a.x, u_input.a.x))), arg_0.a)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1088f, arg_0.a))), true))));
    var_0 = max(vec4<u32>(arg_0.b.x, min(arg_0.b.x, ~2027u), 1u, ~u_input.c.x >> (0u % 32u)) | vec4<u32>(4294967295u >> (~arg_0.b.x % 32u), arg_0.b.x, arg_0.b.x, arg_0.b.x), vec4<u32>(max(func_2(_wgslsmith_clamp_u32(arg_0.b.x, arg_0.b.x, u_input.d.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(532f, arg_0.a, -873f) + vec3<f32>(arg_0.a, arg_0.a, arg_0.a))).b.x, ~93238u), arg_0.b.x, ~u_input.d.x, max(_wgslsmith_add_u32(4294967295u, arg_0.b.x) << (0u % 32u), 4294967295u)));
    var_0 = ~(~(~(~vec4<u32>(39615u, u_input.d.x, 17095u, arg_0.b.x))) >> (reverseBits(vec4<u32>(u_input.c.x, ~var_0.x, 1u, min(36029u, arg_0.b.x))) % vec4<u32>(32u)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_2(~u_input.c.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, arg_0.a, -437f) - vec3<f32>(-330f, arg_0.a, arg_0.a)))).a) * arg_0.a);
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    global0 = 1081f;
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.a.a.x + -923f))) * _wgslsmith_f_op_f32(-arg_0.b)))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(func_4(arg_0, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, -287f))), func_2(0u, vec3<f32>(arg_0.b, -1196f, 162f)), !vec4<bool>(false, arg_0.a.b.x, arg_0.a.b.x, false)))) + arg_0.a.a.x);
    let var_0 = !vec3<bool>(!(false | arg_0.d), arg_0.a.b.x, all(!arg_0.a.b));
    let var_1 = -38356i;
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(arg_0.a.a, _wgslsmith_f_op_vec4_f32(arg_0.a.a - vec4<f32>(708f, 767f, arg_0.b, 762f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, -1305f, 863f, 606f) + _wgslsmith_f_op_vec4_f32(-arg_0.a.a))) - arg_0.a.a), var_0);
}

fn func_6(arg_0: Struct_1) -> bool {
    global0 = -1535f;
    let var_0 = -(min(_wgslsmith_sub_i32(countOneBits(u_input.b.x), ~u_input.b.x), ~(~u_input.a.x)) ^ u_input.e);
    let var_1 = 1000f;
    var var_2 = u_input.b;
    var var_3 = vec4<i32>(var_0, u_input.b.x | u_input.a.x, -var_2.x, select(i32(-1i) * -1i, -1i, false));
    return arg_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 11657u;
    let var_1 = select(!vec4<bool>(true, false, func_6(func_1(Struct_3(Struct_1(vec4<f32>(-1370f, -434f, -247f, -816f), vec3<bool>(true, false, true)), -314f, 74890u, false, 65121i))), true), vec4<bool>(true, true, true, true), func_6(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1397f, 1241f, 493f, 523f)), vec3<bool>(true, true, false))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-655f + _wgslsmith_f_op_f32(850f + -1031f)))));
    var var_2 = -23876i;
    let x = u_input.a;
    s_output = StorageBuffer(~(~reverseBits(func_4(Struct_3(Struct_1(vec4<f32>(-1104f, 884f, -548f, -672f), var_1.wwx), -964f, 4294967295u, false, 45462i), vec2<f32>(1546f, -1000f), Struct_2(981f, vec3<u32>(32565u, 1u, u_input.c.x)), vec4<bool>(false, var_1.x, var_1.x, var_1.x)).b.x)), 657f, 307f, ~(~vec3<u32>(_wgslsmith_mod_u32(1u, u_input.c.x), u_input.d.x, 0u)), 2776i);
}

