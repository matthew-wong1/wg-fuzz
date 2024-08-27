struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: f32;

var<private> global2: vec2<i32> = vec2<i32>(-13419i, 1i);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: bool) -> vec3<f32> {
    let var_0 = arg_0;
    global2 = vec2<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(select(-1i, global0.a.b, arg_2), _wgslsmith_mod_i32(global0.a.b, global0.a.b), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, arg_1.a.b, global2.x), vec3<i32>(global2.x, global2.x, global2.x))), abs(vec3<i32>(arg_1.a.b, global2.x, global2.x) ^ vec3<i32>(2147483647i, 34589i, 2147483647i))), i32(-1i) * -(~_wgslsmith_sub_i32(global2.x, -1i)));
    var var_1 = global2.x;
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * var_0.x)) - _wgslsmith_f_op_f32(752f + -253f)), -2147483647i), max(~_wgslsmith_sub_u32(arg_1.b, global0.b), 5918u), 2936f);
    var var_3 = Struct_2(var_2.a, 106061u, 1625f);
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.x + -1009f), arg_0.x, 550f) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(var_0.wzw, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-812f, global0.a.a, var_2.a.a))))))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>) -> f32 {
    var var_0 = arg_0;
    var var_1 = vec3<i32>(_wgslsmith_dot_vec4_i32(firstTrailingBit(-vec4<i32>(var_0.b, 12803i, global2.x, -1i)), firstLeadingBit(firstLeadingBit(vec4<i32>(arg_0.b, -2147483647i, global2.x, arg_0.b)))), arg_0.b, -arg_0.b);
    var var_2 = Struct_2(global0.a, min(_wgslsmith_dot_vec2_u32(~u_input.b.xz, min(_wgslsmith_add_vec2_u32(u_input.b.yz, vec2<u32>(0u, 35683u)), abs(u_input.b.zy))), firstTrailingBit(95099u) & 0u), _wgslsmith_div_f32(155f, arg_0.a));
    var_1 = vec3<i32>(var_1.x, _wgslsmith_mod_i32(max(i32(-1i) * -2147483647i, max(-2147483647i, 44277i)) >> (max(_wgslsmith_div_u32(40530u, var_2.b), ~0u) % 32u), global0.a.b), -global2.x);
    global0 = Struct_2(var_2.a, 4294967295u, arg_0.a);
    return _wgslsmith_f_op_f32(trunc(global0.a.a));
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: bool) -> vec3<bool> {
    let var_0 = !arg_2;
    var var_1 = !any(!select(vec2<bool>(arg_2, true), vec2<bool>(false, arg_2), any(vec3<bool>(arg_2, arg_2, false))));
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(101f, global0.a.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c, arg_1) * vec2<f32>(1538f, global0.a.a))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-615f, -1060f), vec2<f32>(arg_1, -814f))))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -738f), _wgslsmith_f_op_f32(sign(810f))))), vec2<f32>(_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_div_vec4_f32(vec4<f32>(-1251f, -595f, -495f, global0.a.a), vec4<f32>(global0.a.a, 184f, 885f, 1419f)), Struct_2(Struct_1(arg_1, global0.a.b), u_input.b.x, _wgslsmith_f_op_f32(-global0.a.a)), (global0.a.b | global2.x) <= 2384i)).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -597f) - _wgslsmith_f_op_f32(step(arg_1, global0.c)))));
    var var_3 = Struct_1(252f, global2.x & global2.x);
    global2 = _wgslsmith_mod_vec2_i32(vec2<i32>(-min(var_3.b, -3942i), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(35927i, 9417i), -vec2<i32>(global0.a.b, -45699i)), 35161i)), vec2<i32>(_wgslsmith_mod_i32(firstLeadingBit(var_3.b), ~45333i) & ~global2.x, global0.a.b));
    return !vec3<bool>(!var_0, any(vec2<bool>(!var_0, false)), var_0 & arg_2);
}

fn func_1(arg_0: i32, arg_1: i32) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-global0.c), global0.c, global0.a.a), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.a, global0.a.a, -1889f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-691f, -1454f, -1095f), vec3<f32>(-789f, global0.a.a, global0.c))))), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(vec4<f32>(global0.c, global0.a.a, -1000f, global0.c), Struct_2(Struct_1(global0.a.a, arg_1), 51686u, 1000f), false))) + vec3<f32>(_wgslsmith_f_op_f32(floor(global0.a.a)), global0.a.a, -706f)), func_4(3156u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(global0.c, arg_1), vec4<i32>(arg_0, global0.a.b, arg_0, 20163i))) - global0.c), all(vec4<bool>(true, true, true, true)))))));
    var var_1 = global0.a;
    let var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(min(_wgslsmith_add_u32(firstLeadingBit(u_input.a.x), global0.b), _wgslsmith_dot_vec3_u32(u_input.b.wyx, vec3<u32>(u_input.a.x, 74054u, 1u)) & u_input.a.x), 89945u, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 0u, 0u), vec4<u32>(global0.b, 53282u, 4294967295u, u_input.b.x)), _wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(0u, 0u, 0u, u_input.b.x))) & 4294967295u), ~(~(~u_input.a.xwz)));
    let var_3 = firstLeadingBit(max(u_input.a.yzx, vec3<u32>(0u, 1u, 1u >> (countOneBits(u_input.b.x) % 32u))));
    var var_4 = false | all(vec2<bool>(true, true));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c, -1165f, -1304f) * vec3<f32>(var_1.a, var_0.x, 262f))) + vec3<f32>(var_0.x, _wgslsmith_f_op_f32(ceil(global0.a.a)), _wgslsmith_f_op_f32(max(-1519f, global0.c)))) * vec3<f32>(145f, _wgslsmith_f_op_f32(-1127f + _wgslsmith_f_op_f32(global0.a.a * var_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(-1475f, _wgslsmith_f_op_f32(max(global0.a.a, _wgslsmith_f_op_f32(-global0.a.a))), _wgslsmith_f_op_f32(f32(-1f) * -357f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(407f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1059f - _wgslsmith_f_op_f32(global0.a.a * global0.a.a))), true)));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.xxy + _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.a, var_0.x, -1366f) - vec3<f32>(var_0.x, -804f, var_0.x))), var_0.xwx)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.zxx) * vec3<f32>(var_0.x, -514f, 131f)) * _wgslsmith_f_op_vec3_f32(func_1(global2.x, 2147483647i)))));
    let var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(-1426f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(390f)), _wgslsmith_f_op_vec3_f32(func_2(var_0, Struct_2(Struct_1(-1000f, global0.a.b), global0.b, global0.c), all(vec2<bool>(false, true)))).x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * -486f)), _wgslsmith_f_op_f32(floor(-1575f))), -1528f), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(var_0, var_0, vec4<bool>(true, true, false, true))))))));
    let var_3 = Struct_2(global0.a, abs(u_input.a.x) | 1u, -1346f);
    global1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(step(var_2.x, 593f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_3.a.a), global0.c)))));
    let var_4 = countOneBits(vec4<i32>(63614i, abs(var_3.a.b), -44104i, global0.a.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(abs(4294967295u), u_input.b.x) & global0.b, _wgslsmith_f_op_f32(-var_1.x), u_input.a.yy, var_0);
}

