struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> bool {
    return any(!select(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), (arg_0.a > 4294967295u) | all(vec2<bool>(true, false))));
}

fn func_2() -> Struct_1 {
    global0 = Struct_1(72475u, _wgslsmith_div_vec4_f32(global0.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, global0.b.x, _wgslsmith_f_op_f32(global0.b.x - global0.b.x), _wgslsmith_f_op_f32(-global0.b.x)))));
    let var_0 = func_3(Struct_1(~_wgslsmith_mod_u32(~8128u, u_input.b.x), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.b.x))), -989f, _wgslsmith_f_op_f32(327f * _wgslsmith_div_f32(global0.b.x, global0.b.x)), global0.b.x)), _wgslsmith_div_u32(18414u, abs(u_input.b.x)));
    var var_1 = vec4<bool>(all(vec4<bool>(false || !var_0, var_0, var_0, any(vec2<bool>(true, true)))), var_0, select(var_0, false, false), !(firstLeadingBit(u_input.b.x) > ~(~12112u)));
    let var_2 = select(var_1.wzx, var_1.yxz, !var_1.xxz);
    var_1 = !(!select(select(!vec4<bool>(var_1.x, var_2.x, true, var_1.x), select(vec4<bool>(false, var_2.x, false, var_0), vec4<bool>(var_0, var_1.x, false, true), true), true), select(vec4<bool>(false, var_1.x, true, var_0), !vec4<bool>(var_2.x, false, true, false), vec4<bool>(false, var_0, var_1.x, var_1.x)), vec4<bool>(var_1.x == false, any(var_2), var_2.x, all(var_2))));
    return Struct_1(0u, global0.b);
}

fn func_1() -> vec2<u32> {
    global0 = Struct_1(reverseBits(max(~1u, select(global0.a >> (16911u % 32u), global0.a, true))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-global0.b))));
    global0 = func_2();
    let var_0 = ~u_input.b.x ^ ~1u;
    let var_1 = func_2();
    var var_2 = -755i;
    return u_input.b.xz;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = u_input.b.xwy & u_input.b.zzw;
    global0 = Struct_1(~4294967295u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_3.b.x + _wgslsmith_f_op_f32(select(419f, arg_3.b.x, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -323f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(788f)) - _wgslsmith_f_op_f32(arg_3.b.x - -195f)), -655f)));
    global0 = func_2();
    let var_1 = arg_3;
    global0 = var_1;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec2_i32(abs(vec2<i32>(2147483647i, u_input.a)), ~(~vec2<i32>(0i, 0i)));
    global0 = Struct_1(u_input.b.x, vec4<f32>(_wgslsmith_f_op_f32(-676f * -276f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x * global0.b.x) * 1574f), _wgslsmith_f_op_f32(global0.b.x * global0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.b.x, _wgslsmith_f_op_f32(global0.b.x - global0.b.x)))), _wgslsmith_f_op_f32(global0.b.x + global0.b.x)));
    global0 = func_4(vec4<i32>(25505i, -(~var_0), u_input.a, 44802i), ~(~_wgslsmith_mult_vec2_u32(func_1(), ~u_input.b.ww)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(global0.b.x, global0.b.x)), 561f, _wgslsmith_div_f32(global0.b.x, 2693f), -1239f) * vec4<f32>(_wgslsmith_f_op_f32(-global0.b.x), -1874f, _wgslsmith_f_op_f32(-global0.b.x), -435f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(global0.b)) + _wgslsmith_f_op_vec4_f32(-global0.b)))), Struct_1(46133u, vec4<f32>(-746f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(314f + global0.b.x) * func_2().b.x), global0.b.x, _wgslsmith_f_op_f32(global0.b.x * _wgslsmith_f_op_f32(-global0.b.x)))));
    global0 = func_4(min(min(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 0i, var_0, var_0), vec4<i32>(var_0, 18284i, u_input.a, 1i)), _wgslsmith_mod_i32(u_input.a, u_input.a), ~u_input.a, reverseBits(17608i)), vec4<i32>(u_input.a, -2147483647i, _wgslsmith_mod_i32(u_input.a, var_0), -21142i)), -vec4<i32>(var_0, 1i, ~var_0, 1i)), ~_wgslsmith_clamp_vec2_u32(~(u_input.b.xz | u_input.b.yw), vec2<u32>(_wgslsmith_clamp_u32(u_input.b.x, 5649u, global0.a), _wgslsmith_add_u32(global0.a, u_input.b.x)), select(u_input.b.zy, ~u_input.b.yw, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(func_4(abs(vec4<i32>(0i, 1294i, var_0, u_input.a)), vec2<u32>(38306u, global0.a), vec4<f32>(global0.b.x, global0.b.x, global0.b.x, global0.b.x), Struct_1(4294967295u, vec4<f32>(-744f, global0.b.x, global0.b.x, global0.b.x))).b))), func_4(vec4<i32>(var_0, var_0, firstTrailingBit(0i), -32599i), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(57444u, 0u), ~u_input.b.yx), 7320u), func_4(vec4<i32>(-23815i, u_input.a, abs(-2147483647i), var_0), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(23015u, 48322u), vec2<u32>(21291u, 1u), vec2<u32>(1u, 23139u)), global0.b, func_4(~vec4<i32>(var_0, 134i, u_input.a, -1i), vec2<u32>(global0.a, u_input.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, global0.b.x, global0.b.x, global0.b.x)), func_2())).b, func_4(firstTrailingBit(firstLeadingBit(vec4<i32>(u_input.a, u_input.a, u_input.a, var_0))), u_input.b.xx | u_input.b.xz, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.b * vec4<f32>(global0.b.x, global0.b.x, global0.b.x, global0.b.x))), Struct_1(func_4(vec4<i32>(var_0, 1i, u_input.a, -7001i), u_input.b.yw, vec4<f32>(global0.b.x, global0.b.x, global0.b.x, -576f), Struct_1(18400u, vec4<f32>(global0.b.x, global0.b.x, 660f, 424f))).a, _wgslsmith_f_op_vec4_f32(global0.b + global0.b)))));
    var var_1 = _wgslsmith_f_op_f32(max(global0.b.x, _wgslsmith_f_op_f32(-260f * func_4(vec4<i32>(-26587i, 1i, -18324i, var_0), ~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, 39523u), u_input.b.ww), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, 170f, global0.b.x, global0.b.x) * vec4<f32>(1284f, global0.b.x, 2039f, 1547f)) * _wgslsmith_f_op_vec4_f32(-global0.b)), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 0u, u_input.b.x), vec3<u32>(global0.a, u_input.b.x, 1u)), global0.b)).b.x)));
    let var_2 = Struct_1(~(~(~4294967295u)) << (~(~0u) % 32u), _wgslsmith_f_op_vec4_f32(global0.b * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.b + global0.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, -1995f, -314f, 870f)))));
    global0 = Struct_1(var_2.a, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-func_2().b.x), 1347f, global0.b.x, var_2.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1375f, var_2.b.x, var_2.b.x, 1349f))), true || select(true, false, 259f >= var_2.b.x))));
    let var_3 = 19041u;
    var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.b.x, var_2.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -446f), global0.b.x, 1f, global0.b.x) * var_2.b), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.b.x, 504f))), func_4(vec4<i32>(u_input.a, 12650i, u_input.a, u_input.a), u_input.b.zx, global0.b, func_2()).b.x, func_2().b.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-536f, global0.b.x) + _wgslsmith_f_op_f32(step(global0.b.x, -684f)))), true)), firstLeadingBit(~u_input.b), ~u_input.b.wzy, global0.a, abs(vec3<u32>(~209u, 43202u, _wgslsmith_add_u32(_wgslsmith_sub_u32(40559u, global0.a), global0.a | 43054u))));
}

