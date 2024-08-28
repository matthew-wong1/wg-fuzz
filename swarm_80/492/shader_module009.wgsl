struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: vec4<i32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 20>;

var<private> global1: bool = false;

var<private> global2: vec3<f32>;

var<private> global3: array<bool, 23> = array<bool, 23>(false, true, true, false, true, true, true, true, true, true, false, true, true, false, false, false, false, false, true, false, false, false, false);

var<private> global4: array<Struct_1, 6>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: Struct_2, arg_1: vec2<u32>) -> bool {
    return select(any(arg_0.d.xy), true, arg_0.d.x);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: vec2<u32>) -> vec2<bool> {
    global0 = array<vec3<i32>, 20>();
    global3 = array<bool, 23>();
    let var_0 = Struct_1(~arg_2.a);
    var var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, _wgslsmith_f_op_f32(sign(709f)), global2.x, -282f)))), vec4<f32>(_wgslsmith_f_op_f32(step(global2.x, _wgslsmith_f_op_f32(abs(-161f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x * global2.x) - _wgslsmith_f_op_f32(min(global2.x, -344f))) - _wgslsmith_f_op_f32(floor(903f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(global2.x)))))));
    let var_2 = var_0.a;
    return select(select(!select(vec2<bool>(true, global3[_wgslsmith_index_u32(arg_1, 23u)]), vec2<bool>(true, true), all(vec2<bool>(true, true))), !(!(!vec2<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 23u)]))), true), select(vec2<bool>(global3[_wgslsmith_index_u32(u_input.b, 23u)], any(select(vec2<bool>(false, true), vec2<bool>(global3[_wgslsmith_index_u32(arg_3.x, 23u)], false), global3[_wgslsmith_index_u32(u_input.b, 23u)]))), select(!vec2<bool>(global3[_wgslsmith_index_u32(60122u, 23u)], global3[_wgslsmith_index_u32(4294967295u, 23u)]), vec2<bool>(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(73286u, 23589u, arg_3.x), 23u)], global2.x <= var_1.x), !global3[_wgslsmith_index_u32(1u, 23u)]), select(select(vec2<bool>(false, global3[_wgslsmith_index_u32(43136u, 23u)]), select(vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 23u)], global3[_wgslsmith_index_u32(20919u, 23u)]), vec2<bool>(false, global3[_wgslsmith_index_u32(arg_3.x, 23u)]), vec2<bool>(true, true)), !global3[_wgslsmith_index_u32(4294967295u, 23u)]), !vec2<bool>(global3[_wgslsmith_index_u32(1u, 23u)], true), vec2<bool>(global3[_wgslsmith_index_u32(71347u, 23u)], true))), vec2<bool>(false & select(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.x, 1u, u_input.b, 1348u), vec4<u32>(60177u, 0u, u_input.b, 0u)), 23u)], true, true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -1301f)) >= var_1.x));
}

fn func_2() -> f32 {
    global1 = true;
    let var_0 = vec4<bool>(all(select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(global3[_wgslsmith_index_u32(1u, 23u)], global3[_wgslsmith_index_u32(u_input.b, 23u)], false, true), vec4<bool>(global3[_wgslsmith_index_u32(u_input.b, 23u)], global3[_wgslsmith_index_u32(47819u, 23u)], global3[_wgslsmith_index_u32(0u, 23u)], true)), select(vec4<bool>(true, global3[_wgslsmith_index_u32(16595u, 23u)], global3[_wgslsmith_index_u32(u_input.b, 23u)], global3[_wgslsmith_index_u32(4294967295u, 23u)]), vec4<bool>(global3[_wgslsmith_index_u32(120648u, 23u)], global3[_wgslsmith_index_u32(42587u, 23u)], false, false), vec4<bool>(global3[_wgslsmith_index_u32(0u, 23u)], global3[_wgslsmith_index_u32(u_input.b, 23u)], true, global3[_wgslsmith_index_u32(u_input.b, 23u)])), true), select(vec4<bool>(global3[_wgslsmith_index_u32(u_input.b, 23u)], false, global3[_wgslsmith_index_u32(u_input.b, 23u)], global3[_wgslsmith_index_u32(8417u, 23u)]), !vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.b, 23u)], true, false), true), vec4<bool>(global3[_wgslsmith_index_u32(u_input.b & 106071u, 23u)], global3[_wgslsmith_index_u32(u_input.b, 23u)] & global3[_wgslsmith_index_u32(1u, 23u)], true, global3[_wgslsmith_index_u32(u_input.b, 23u)]))), all(func_3(Struct_1(vec2<i32>(u_input.a, -43259i) ^ vec2<i32>(u_input.a, 9533i)), 35343u, global4[_wgslsmith_index_u32(0u, 6u)], ~select(vec2<u32>(u_input.b, 1u), vec2<u32>(0u, u_input.b), vec2<bool>(global3[_wgslsmith_index_u32(118415u, 23u)], global3[_wgslsmith_index_u32(u_input.b, 23u)])))), !(!all(!vec3<bool>(global3[_wgslsmith_index_u32(u_input.b, 23u)], global3[_wgslsmith_index_u32(4813u, 23u)], true))), func_1(Struct_2(vec2<u32>(abs(28586u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 9391u), vec2<u32>(u_input.b, u_input.b))), vec2<bool>(all(vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 23u)], true, false)), true), vec4<i32>(1i, i32(-1i) * -1i, ~(-22022i), u_input.a), select(vec4<bool>(global3[_wgslsmith_index_u32(u_input.b, 23u)], true, false, global3[_wgslsmith_index_u32(0u, 23u)]), vec4<bool>(false, false, false, false), vec4<bool>(true, global3[_wgslsmith_index_u32(0u, 23u)], true, global3[_wgslsmith_index_u32(0u, 23u)]))), _wgslsmith_div_vec2_u32(vec2<u32>(abs(21462u), 4294967295u), ~vec2<u32>(1u, 1041u) ^ abs(vec2<u32>(u_input.b, u_input.b)))));
    global4 = array<Struct_1, 6>();
    var var_1 = Struct_2(vec2<u32>(~u_input.b, ~(~_wgslsmith_mult_u32(u_input.b, u_input.b))), !select(var_0.zz, var_0.wx, _wgslsmith_f_op_f32(global2.x * -425f) < _wgslsmith_f_op_f32(abs(617f))), _wgslsmith_add_vec4_i32(select(~(~vec4<i32>(17301i, 3836i, u_input.a, u_input.a)), firstLeadingBit(vec4<i32>(u_input.a, u_input.a, -1i, 51945i)), var_0), ~(-(vec4<i32>(29136i, u_input.a, 0i, u_input.a) & vec4<i32>(10770i, 1i, u_input.a, u_input.a)))), vec4<bool>(false, true, any(!select(vec4<bool>(false, false, false, var_0.x), var_0, vec4<bool>(global3[_wgslsmith_index_u32(u_input.b, 23u)], var_0.x, global3[_wgslsmith_index_u32(0u, 23u)], global3[_wgslsmith_index_u32(36029u, 23u)]))), global3[_wgslsmith_index_u32(4294967295u, 23u)]));
    let var_2 = select(~(var_1.a ^ ~vec2<u32>(1u, u_input.b)), vec2<u32>(1u << (~(~var_1.a.x) % 32u), ~_wgslsmith_clamp_u32(~u_input.b, u_input.b, max(var_1.a.x, u_input.b))), func_1(Struct_2(~(var_1.a >> (vec2<u32>(0u, var_1.a.x) % vec2<u32>(32u))), var_1.d.wz, var_1.c, select(vec4<bool>(false, var_0.x, var_1.b.x, false), var_1.d, !vec4<bool>(var_0.x, true, global3[_wgslsmith_index_u32(var_1.a.x, 23u)], true))), ~vec2<u32>(var_1.a.x, abs(4294967295u))));
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(Struct_2(~vec2<u32>(u_input.b, 1u), vec2<bool>(true, -23233i == _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -1i), vec2<i32>(u_input.a, 16322i))), ~vec4<i32>(-32956i & u_input.a, select(u_input.a, u_input.a, false), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 0i, u_input.a, -8492i), vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.a)), 1i), !(!select(vec4<bool>(false, true, global3[_wgslsmith_index_u32(4294967295u, 23u)], global3[_wgslsmith_index_u32(u_input.b, 23u)]), vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.b, 23u)], true, global3[_wgslsmith_index_u32(u_input.b, 23u)]), true))), vec2<u32>(~4294967295u, 4294967295u));
    let var_0 = firstLeadingBit(~u_input.a);
    global2 = vec3<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global2.x)), _wgslsmith_f_op_f32(trunc(773f))) - -543f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-109f + 632f)))), _wgslsmith_f_op_f32(round(1000f)));
    var var_1 = -u_input.a;
    var var_2 = Struct_2(max(abs(_wgslsmith_mod_vec2_u32(max(vec2<u32>(u_input.b, 29680u), vec2<u32>(4294967295u, u_input.b)), ~vec2<u32>(u_input.b, u_input.b))), vec2<u32>(4294967295u, _wgslsmith_sub_u32(0u, _wgslsmith_mod_u32(4294967295u, u_input.b)))), select(func_3(global4[_wgslsmith_index_u32(min(5667u, _wgslsmith_clamp_u32(u_input.b, 0u, u_input.b)), 6u)], 4294967295u, Struct_1(~vec2<i32>(-1i, var_0)), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(23571u, u_input.b, u_input.b), vec3<u32>(u_input.b, 0u, u_input.b)), _wgslsmith_mod_u32(u_input.b, u_input.b))), !(!func_3(Struct_1(vec2<i32>(28649i, -66357i)), 64923u, global4[_wgslsmith_index_u32(79422u, 6u)], vec2<u32>(1u, 1u))), true), ~(~(~(vec4<i32>(var_0, 22376i, -1i, 0i) >> (vec4<u32>(77360u, 12043u, u_input.b, 4294967295u) % vec4<u32>(32u))))), vec4<bool>(any(select(select(vec3<bool>(global3[_wgslsmith_index_u32(3279u, 23u)], global3[_wgslsmith_index_u32(u_input.b, 23u)], true), vec3<bool>(false, true, global3[_wgslsmith_index_u32(u_input.b, 23u)]), false), select(vec3<bool>(true, global3[_wgslsmith_index_u32(u_input.b, 23u)], global3[_wgslsmith_index_u32(57778u, 23u)]), vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.b, 23u)], global3[_wgslsmith_index_u32(4294967295u, 23u)]), vec3<bool>(global3[_wgslsmith_index_u32(1u, 23u)], global3[_wgslsmith_index_u32(u_input.b, 23u)], false)), global3[_wgslsmith_index_u32(38125u, 23u)])), global3[_wgslsmith_index_u32(54211u, 23u)], !global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(92499u, 67230u), 23u)] | all(func_3(global4[_wgslsmith_index_u32(1u, 6u)], 15172u, global4[_wgslsmith_index_u32(1u, 6u)], vec2<u32>(0u, u_input.b))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(167f + -940f), global2.x)) < -1000f));
    let var_3 = !var_2.b.x;
    var var_4 = vec4<bool>(!((_wgslsmith_f_op_f32(-global2.x) <= _wgslsmith_f_op_f32(f32(-1f) * -1732f)) && (false || any(vec3<bool>(var_2.b.x, true, global3[_wgslsmith_index_u32(1u, 23u)])))), var_2.b.x, false, global3[_wgslsmith_index_u32(0u, 23u)]);
    global1 = any(var_2.d);
    let var_5 = Struct_2(~(~var_2.a), select(!func_3(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(99176u, var_2.a.x), 6u)], _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, u_input.b), vec3<u32>(0u, 4294967295u, 0u)), global4[_wgslsmith_index_u32(~u_input.b, 6u)], vec2<u32>(u_input.b, u_input.b)), var_2.b, true), var_2.c, var_2.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(sign(global2.yy)));
}

