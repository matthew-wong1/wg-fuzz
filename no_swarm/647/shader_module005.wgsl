struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 19> = array<vec2<bool>, 19>(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true));

var<private> global1: array<u32, 13>;

var<private> global2: array<bool, 32> = array<bool, 32>(true, true, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, true, false, true, true, true, true, true, true, true, false, false, true, false, false, true);

var<private> global3: i32;

var<private> global4: Struct_1 = Struct_1(i32(-2147483648), vec4<bool>(false, false, true, true));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = ~1u;
    var var_1 = global4.a;
    let var_2 = arg_0;
    var var_3 = arg_0;
    global3 = arg_0.a;
    return vec3<bool>(!(!(firstTrailingBit(4294967295u) > global1[_wgslsmith_index_u32(~u_input.a.x, 13u)])), all(vec2<bool>(true, !(arg_0.b.x | arg_0.b.x))), !global4.b.x);
}

fn func_3(arg_0: u32) -> f32 {
    global3 = 78377i;
    var var_0 = Struct_1(global4.a | _wgslsmith_dot_vec3_i32(~abs(vec3<i32>(global4.a, global4.a, -27732i)), select(vec3<i32>(global4.a, global4.a, global4.a), _wgslsmith_add_vec3_i32(vec3<i32>(1i, global4.a, global4.a), vec3<i32>(2147483647i, -2147483647i, -21396i)), true)), vec4<bool>(global4.b.x, true, true || !global2[_wgslsmith_index_u32(~arg_0, 32u)], false));
    var var_1 = firstTrailingBit(_wgslsmith_mult_u32(arg_0, 30865u));
    let var_2 = vec3<u32>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.a.x, _wgslsmith_mult_u32(u_input.b.x, 407u)), _wgslsmith_clamp_u32(108648u, arg_0, 1u)), 13u)], arg_0, abs(_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 13u)]), u_input.b.x)) << (~(~global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 13u)], 13u)], 13u)]) % 32u));
    global4 = Struct_1(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 43007i, 51903i) ^ vec3<i32>(1i, global4.a, 1i), vec3<i32>(var_0.a, var_0.a, min(var_0.a, global4.a)))), vec4<bool>(func_2(Struct_1(~var_0.a, global4.b)).x, any(global4.b.zwx), (true & !global2[_wgslsmith_index_u32(0u, 32u)]) & (_wgslsmith_f_op_f32(trunc(-2225f)) == _wgslsmith_f_op_f32(sign(-1254f))), select(true, (global4.b.x | global4.b.x) | false, !all(vec2<bool>(false, var_0.b.x)))));
    return _wgslsmith_f_op_f32(f32(-1f) * -1000f);
}

fn func_1(arg_0: Struct_1) -> vec2<f32> {
    global1 = array<u32, 13>();
    let var_0 = u_input.b;
    let var_1 = var_0.xyw;
    var var_2 = !select(global4.b.xwz, func_2(Struct_1(2147483647i, select(arg_0.b, global4.b, true))), u_input.a.x >= _wgslsmith_mult_u32(_wgslsmith_div_u32(0u, 4294967295u), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(11354u, u_input.a.x), 13u)]));
    return vec2<f32>(523f, _wgslsmith_f_op_f32(min(737f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(~var_0.x, 13u)]))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 13u)] ^ 17679u, 13u)], 13u)], ~4294967295u & ~global1[_wgslsmith_index_u32(1u, 13u)], 4294967295u, 1u), vec4<u32>(~(~4294967295u), _wgslsmith_div_u32(global1[_wgslsmith_index_u32(u_input.b.x, 13u)], ~u_input.a.x), u_input.a.x, ~_wgslsmith_clamp_u32(49695u, global1[_wgslsmith_index_u32(4628u, 13u)], 1u))), 13u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_1(Struct_1(0i, select(!vec4<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(53613u, 13u)], 32u)], global2[_wgslsmith_index_u32(u_input.b.x, 32u)], false, global4.b.x), vec4<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 13u)], 32u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(57559u, 13u)], 32u)], global4.b.x, global4.b.x), true))))));
    var var_2 = global2[_wgslsmith_index_u32(u_input.b.x, 32u)];
    let var_3 = Struct_1(~_wgslsmith_dot_vec2_i32(abs(vec2<i32>(1i, -2147483647i)), vec2<i32>(global4.a, 25104i)) >> (33208u % 32u), select(!select(vec4<bool>(false, global4.b.x, true, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 13u)], 13u)], 32u)]), !vec4<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(6159u, 13u)], 32u)], false, global2[_wgslsmith_index_u32(u_input.b.x, 32u)], global4.b.x), vec4<bool>(global4.b.x, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 13u)], 13u)], 13u)], 32u)], global2[_wgslsmith_index_u32(4294967295u, 32u)], false)), !(!(!global4.b)), all(select(vec4<bool>(false, true, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(40346u, 13u)], 32u)], false), !vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.b.x, 32u)], false, global4.b.x), var_1.x >= var_1.x))));
    var var_4 = _wgslsmith_mod_i32(0i, 1i);
    global1 = array<u32, 13>();
    var_2 = false;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b.x, 4294967295u, _wgslsmith_mult_u32(u_input.b.x, _wgslsmith_dot_vec4_u32(u_input.b, ~u_input.b)), global1[_wgslsmith_index_u32(1u, 13u)]);
}

