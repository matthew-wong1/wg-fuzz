struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: i32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
    c: bool,
    d: vec4<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13>;

var<private> global1: Struct_3;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1() -> bool {
    global0 = array<Struct_2, 13>();
    return false == all(select(vec3<bool>(all(vec4<bool>(true, global1.b.c.b, global1.b.c.b, global1.b.c.b)), true, false), !select(vec3<bool>(global1.b.c.b, global1.b.c.b, global1.b.c.b), vec3<bool>(true, global1.b.c.b, false), vec3<bool>(global1.b.c.b, true, global1.b.c.b)), true));
}

fn func_3() -> vec3<u32> {
    var var_0 = max(u_input.c, select(vec4<u32>(~u_input.b, 0u, 33946u, min(95983u, global1.a)), ~countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, u_input.b, global1.b.c.c.x), vec4<u32>(66452u, 4294967295u, u_input.d.x, 13860u))), select(vec4<bool>(global1.b.c.b, global1.b.c.b, any(vec3<bool>(global1.b.c.b, true, global1.b.c.b)), true), vec4<bool>(global1.b.b.x >= global1.b.b.x, true, false, true), !global1.b.c.b)));
    var_0 = vec4<u32>(_wgslsmith_dot_vec3_u32(var_0.wzx, vec3<u32>(min(1u, global1.a ^ 0u), _wgslsmith_add_u32(1u >> (1u % 32u), _wgslsmith_mult_u32(1u, 0u)), var_0.x)), _wgslsmith_sub_u32(_wgslsmith_mod_u32(abs(14708u), _wgslsmith_clamp_u32(6427u, 1u, 1u)), _wgslsmith_div_u32(~var_0.x, countOneBits(48548u))) >> ((_wgslsmith_sub_u32(~u_input.c.x, 0u) ^ 4294967295u) % 32u), 1u, max(select(~56863u, global1.b.c.c.x, any(vec3<bool>(true, global1.b.c.b, global1.b.c.b))), ~_wgslsmith_clamp_u32(4294967295u, 1u, var_0.x) | _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.c.yw, var_0.xw), var_0.x >> (1443u % 32u))));
    var_0 = abs(vec4<u32>(abs(~0u), ~_wgslsmith_mod_u32(~var_0.x, _wgslsmith_dot_vec3_u32(global1.b.c.c, vec3<u32>(var_0.x, global1.b.c.c.x, global1.a))), ~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(global1.a, var_0.x) & reverseBits(vec2<u32>(u_input.d.x, global1.a)), select(select(var_0.yz, u_input.c.wx, global1.b.c.b), vec2<u32>(u_input.c.x, 1u), true))));
    var var_1 = ~u_input.e.x;
    let var_2 = true;
    return vec3<u32>(abs(_wgslsmith_clamp_u32(var_0.x, _wgslsmith_div_u32(global1.a, var_0.x), firstLeadingBit(0u))), var_0.x, 0u) << (vec3<u32>(~(~select(61657u, 1u, false)), ~abs(10672u), 55749u) % vec3<u32>(32u));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: vec2<bool>) -> Struct_2 {
    let var_0 = (vec4<i32>(arg_0.b.c, _wgslsmith_div_i32(1i, -u_input.a), ~(~u_input.e.x), firstLeadingBit(global1.c) << (arg_1.a % 32u)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.b.a, 0u, 87465u, 0u) ^ _wgslsmith_mult_vec4_u32(u_input.c, arg_0.d), select(vec4<u32>(4294967295u, arg_1.a, arg_1.a, 55265u), _wgslsmith_div_vec4_u32(vec4<u32>(1u, global1.b.c.c.x, 7239u, 41185u), vec4<u32>(55555u, arg_1.a, arg_1.a, u_input.d.x)), true), abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(35701u, u_input.c.x, arg_1.a, 1u), u_input.c, u_input.c))) % vec4<u32>(32u))) >> (_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(~abs(u_input.c), vec4<u32>(16751u, u_input.b, 2007u, 0u)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.d.x, arg_1.a, arg_1.a, 31660u), vec4<u32>(7001u, 12235u, arg_1.c.c.x, 4294967295u)), ~67580u, 68687u, global1.a >> ((arg_1.a & 1u) % 32u))) % vec4<u32>(32u));
    let var_1 = _wgslsmith_f_op_f32(arg_0.e.a.x + -148f);
    let var_2 = select(!(!select(!vec4<bool>(false, false, true, global1.b.c.b), !vec4<bool>(arg_1.c.b, arg_0.b.b.c.b, true, arg_1.c.b), true)), !(!select(!vec4<bool>(false, arg_3.x, arg_0.e.b, arg_3.x), !vec4<bool>(false, arg_0.b.b.c.b, arg_0.c, arg_3.x), global1.b.c.b | false)), 4294967295u != u_input.b);
    global0 = array<Struct_2, 13>();
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(837f, arg_1.c.a.x)), vec2<f32>(-3289f, 1071f))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-983f, 579f) + _wgslsmith_f_op_vec2_f32(arg_0.b.b.b.xy * vec2<f32>(-1085f, -424f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-668f, -712f), arg_1.b.xy))))))), true, ~func_3(), _wgslsmith_f_op_f32(var_1 - 1000f));
    return Struct_2(~abs(_wgslsmith_mod_u32(_wgslsmith_add_u32(4294967295u, arg_1.c.c.x), 1u)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -367f)), _wgslsmith_f_op_f32(-1f), 1000f), arg_0.e);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: Struct_4, arg_3: f32) -> bool {
    let var_0 = arg_2;
    let var_1 = Struct_2(reverseBits(_wgslsmith_add_u32(~70805u, arg_2.b.b.c.c.x)), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-615f + -583f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(2499f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(func_2(var_0, Struct_2(arg_1.b.a, vec3<f32>(1000f, 358f, arg_0.x), var_0.e), vec2<bool>(arg_1.b.c.b, var_0.e.b), vec2<bool>(false, false)).b.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-603f))))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_div_f32(958f, var_0.b.b.c.a.x)), global1.b.c.b, vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(9673u, var_0.e.c.x, 4294967295u), ~var_0.b.b.c.c), _wgslsmith_mult_u32(firstTrailingBit(var_0.e.c.x), 70315u), 1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.c.a.x * var_0.e.d) + -758f) - arg_2.b.b.b.x)));
    global1 = Struct_3(1u | ~global1.a, func_2(var_0, func_2(arg_2, func_2(Struct_4(var_1.c.c.zx, Struct_3(1u, arg_2.b.b, -26275i), true, vec4<u32>(var_0.b.b.c.c.x, var_1.a, u_input.d.x, 1u), global1.b.c), var_1, vec2<bool>(arg_1.b.c.b, var_0.e.b), vec2<bool>(global1.b.c.b, var_1.c.b)), vec2<bool>(!var_1.c.b, -1676f == var_0.e.d), !select(vec2<bool>(var_0.e.b, arg_2.b.b.c.b), vec2<bool>(arg_1.b.c.b, arg_2.c), vec2<bool>(var_1.c.b, false))), vec2<bool>(true || arg_2.e.b, -u_input.a > global1.c), vec2<bool>(!var_1.c.b, var_0.c)), arg_1.c);
    global0 = array<Struct_2, 13>();
    global0 = array<Struct_2, 13>();
    return !arg_2.b.b.c.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_3(abs(u_input.c.x), global1.b, _wgslsmith_mod_i32(-2147483647i, min(-6022i, -2147483647i)));
    let var_0 = Struct_1(global1.b.c.a, !(!func_1()) || func_4(global1.b.b.zx, Struct_3(firstTrailingBit(84895u), func_2(Struct_4(global1.b.c.c.xz, Struct_3(u_input.b, global0[_wgslsmith_index_u32(1u, 13u)], 1i), true, u_input.c, Struct_1(global1.b.c.a, false, u_input.c.wxz, 1994f)), Struct_2(0u, global1.b.b, global1.b.c), vec2<bool>(true, global1.b.c.b), vec2<bool>(global1.b.c.b, true)), global1.c), Struct_4(u_input.d, Struct_3(global1.a, global0[_wgslsmith_index_u32(36074u, 13u)], -1i), true, _wgslsmith_clamp_vec4_u32(vec4<u32>(139311u, 19103u, u_input.c.x, 87299u), u_input.c, vec4<u32>(4294967295u, 0u, global1.a, 4294967295u)), func_2(Struct_4(global1.b.c.c.yz, Struct_3(global1.b.a, Struct_2(u_input.d.x, vec3<f32>(750f, 1628f, -877f), global1.b.c), 14557i), global1.b.c.b, vec4<u32>(113624u, u_input.c.x, global1.b.c.c.x, 112541u), Struct_1(global1.b.c.a, false, u_input.c.wzy, global1.b.c.a.x)), global1.b, vec2<bool>(global1.b.c.b, global1.b.c.b), vec2<bool>(global1.b.c.b, global1.b.c.b)).c), _wgslsmith_f_op_f32(ceil(global1.b.c.d))), vec3<u32>(~(1u ^ u_input.b), global1.b.c.c.x, global1.b.c.c.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(706f, global1.b.c.d) * global1.b.b.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.b.b.x))))))));
    var var_1 = Struct_2(var_0.c.x, global1.b.b, Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.b.c.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(global1.b.b.xz)))), true, var_0.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(global1.b.b.x))))));
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.c.a), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -386f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1162f, global1.b.b.x))))));
    let var_3 = vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(global1.a, 1u), ~vec2<u32>(var_0.c.x, 4294967295u), firstLeadingBit(vec2<u32>(4294967295u, global1.b.c.c.x))), vec2<u32>(13858u, 19794u) & vec2<u32>(40004u, var_1.a)) & 13737u, 1u, ~(~max(~var_1.c.c.x, 1u)));
    global0 = array<Struct_2, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x, 1516f, 1i);
}

