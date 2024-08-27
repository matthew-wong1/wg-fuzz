struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = Struct_2(Struct_1(-1i, !vec3<bool>(arg_1.b.x, false, arg_1.b.x)), true, any(select(select(!vec4<bool>(false, false, global0.x, global0.x), !vec4<bool>(global0.x, arg_1.b.x, true, true), true), !select(vec4<bool>(true, arg_0.b.x, global0.x, true), vec4<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x, global0.x), true), arg_0.b.x)), Struct_1(0i, vec3<bool>(true, true, any(vec4<bool>(true, arg_0.b.x, arg_1.b.x, arg_1.b.x)) & (global0.x && true))));
    global0 = !vec3<bool>(false, false, !global0.x);
    let var_1 = Struct_1(_wgslsmith_dot_vec3_i32(~min(vec3<i32>(0i, 1i, var_0.a.a), vec3<i32>(u_input.a, var_0.a.a, 22114i)), vec3<i32>(16842i, -1i << (1u % 32u), min(-u_input.a, firstLeadingBit(46960i)))), var_0.a.b);
    var_0 = Struct_2(arg_1, !arg_0.b.x, false, arg_1);
    var var_2 = 1u >> (reverseBits(_wgslsmith_clamp_u32(16550u, ~0u, 0u)) % 32u);
    return vec3<bool>(firstLeadingBit(-2147483647i) < u_input.a, !global0.x, u_input.a > ~u_input.a);
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - arg_0)))));
    let var_1 = Struct_2(Struct_1(~u_input.a, select(!vec3<bool>(false, global0.x, global0.x), vec3<bool>(global0.x, any(vec3<bool>(false, global0.x, global0.x)), false), any(vec4<bool>(global0.x, false, true, false)))), global0.x, all(vec2<bool>(_wgslsmith_f_op_f32(ceil(var_0)) < arg_0, global0.x & all(vec3<bool>(true, false, false)))), Struct_1(-32731i, func_3(Struct_1(u_input.a, vec3<bool>(false, true, global0.x)), Struct_1(i32(-1i) * -14371i, select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(true, true, global0.x), vec3<bool>(true, global0.x, global0.x))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, arg_0, arg_0), vec3<f32>(-1095f, arg_0, -1143f), vec3<bool>(global0.x, global0.x, var_1.c))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, -1000f) - vec3<f32>(-115f, -908f, arg_0)))))))));
    var var_3 = var_1.a;
    let var_4 = var_1.a;
    return var_4;
}

fn func_1() -> bool {
    var var_0 = func_2(365f);
    var var_1 = func_2(_wgslsmith_f_op_f32(min(682f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1125f), _wgslsmith_f_op_f32(select(499f, 688f, true))))))));
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2915f))))))));
    let var_3 = vec2<i32>(abs(-2147483647i), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(-41254i, -1i, var_0.a, -2147483647i), vec4<i32>(_wgslsmith_clamp_i32(1i, var_1.a, u_input.a), 0i, -56012i, _wgslsmith_dot_vec4_i32(vec4<i32>(2890i, 3765i, 1i, var_1.a), vec4<i32>(-23027i, -1i, var_0.a, var_0.a)))), vec4<i32>(-16455i, var_1.a, u_input.a, -35285i)));
    var_0 = func_2(-1262f);
    return true;
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> bool {
    global0 = !vec3<bool>(arg_0.b, !(!(arg_0.a.a != -8092i)), global0.x);
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(!select(!(!vec3<bool>(global0.x, true, global0.x)), select(vec3<bool>(true, false, global0.x), select(vec3<bool>(true, global0.x, false), vec3<bool>(false, true, true), vec3<bool>(global0.x, global0.x, global0.x)), global0.x), vec3<bool>(any(global0.zz), all(vec3<bool>(global0.x, true, true)), all(vec4<bool>(global0.x, global0.x, false, false)))), vec3<bool>(func_4(Struct_2(Struct_1(1i, vec3<bool>(true, false, false)), func_1(), global0.x, Struct_1(26581i, vec3<bool>(false, global0.x, false))), ~(~9985u)), true, func_3(Struct_1(u_input.a, vec3<bool>(true, true, false)), Struct_1(_wgslsmith_add_i32(74312i, -1i), !vec3<bool>(global0.x, true, true))).x), global0.x);
    let var_0 = ~u_input.a;
    var var_1 = _wgslsmith_add_vec3_u32(vec3<u32>(0u, 1u, firstTrailingBit(firstTrailingBit(7646u)) ^ ~(~4294967295u)), vec3<u32>(~1u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(5703u, 1u, 22142u, 4294967295u), ~vec4<u32>(1u, 0u, 0u, 0u), all(global0.yx)), vec4<u32>(_wgslsmith_div_u32(0u, 1u), 1u, ~0u, ~14240u)), _wgslsmith_mult_u32(min(~0u, 56462u), max(1u, _wgslsmith_add_u32(39586u, 0u)))));
    let var_2 = !select(vec2<bool>(global0.x, !any(vec3<bool>(global0.x, global0.x, global0.x))), global0.xx, select(global0.yz, vec2<bool>(true, true), func_3(Struct_1(var_0, vec3<bool>(true, global0.x, true)), Struct_1(var_0, vec3<bool>(global0.x, false, false))).zz));
    var var_3 = Struct_2(func_2(220f), false, !global0.x, Struct_1(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, u_input.a, 16111i), abs(vec3<i32>(u_input.a, -19925i, 36817i))), vec3<i32>(var_0, u_input.a, -2147483647i)), vec3<bool>(var_2.x, var_2.x, !any(vec3<bool>(false, false, global0.x)))));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1066f * 670f)) + 2570f) - 1000f));
    var_3 = Struct_2(func_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-2641f * 1032f))), -1000f, !global0.x))), all(func_3(func_2(_wgslsmith_f_op_f32(var_4 + var_4)), var_3.d)), true, var_3.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-177f, -550f, var_4, 731f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4, 1000f, -1017f, var_4))))), reverseBits(min(firstTrailingBit(vec3<u32>(0u, 0u, var_1.x)) & ~vec3<u32>(var_1.x, var_1.x, 4294967295u), ~(vec3<u32>(0u, var_1.x, 0u) | vec3<u32>(0u, var_1.x, 0u)))), ~vec3<u32>(4294967295u, countOneBits(_wgslsmith_sub_u32(var_1.x, 0u)), 37736u), _wgslsmith_div_u32(83907u, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(35524u, var_1.x, var_1.x, var_1.x)), firstLeadingBit(vec4<u32>(4635u, var_1.x, var_1.x, 18903u))) << (12593u % 32u)));
}

