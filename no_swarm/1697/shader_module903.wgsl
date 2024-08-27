struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8>;

var<private> global1: array<Struct_1, 1>;

var<private> global2: Struct_1 = Struct_1(vec4<f32>(1244f, -1005f, 927f, 1070f));

var<private> global3: array<i32, 20>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = !vec4<bool>(all(vec2<bool>(any(vec4<bool>(false, false, false, false)), true)), false, !(true & select(true, true, false)), all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true)));
    var var_1 = var_0.x;
    global1 = array<Struct_1, 1>();
    var var_2 = 1014f;
    var var_3 = ~(~global3[_wgslsmith_index_u32(1u, 20u)]);
    return any(select(!vec2<bool>(any(vec3<bool>(var_0.x, true, var_0.x)), any(vec3<bool>(true, true, var_0.x))), vec2<bool>(!var_0.x, var_0.x), !all(vec4<bool>(true, var_0.x, false, true))));
}

fn func_2() -> vec3<bool> {
    var var_0 = vec2<bool>(true, all(vec2<bool>(any(vec3<bool>(false, true, true)), true)) || (true != func_3(Struct_1(global2.a))));
    var var_1 = u_input.a.x;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d, 8u)]))))), global2.a.x, global2.a.x, 871f);
    let var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(14644u, 8u)]) * _wgslsmith_f_op_f32(max(var_2.x, var_2.x))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(145f, 685f)) * 2121f))), _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(16945u, 8u)], global2.a.x))));
    var_0 = select(select(!vec2<bool>(global2.a.x <= global2.a.x, var_0.x), !(!select(vec2<bool>(true, true), vec2<bool>(var_0.x, var_0.x), false)), true), vec2<bool>(var_0.x, select(var_0.x || var_0.x, all(!vec3<bool>(var_0.x, false, var_0.x)), true)), true);
    return vec3<bool>(true, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_3.a.x * -522f))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, -414f, global3[_wgslsmith_index_u32(u_input.c, 20u)] == 6993i)) * 1096f), var_0.x);
}

fn func_4(arg_0: bool, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = min(global3[_wgslsmith_index_u32(28018u, 20u)], -(_wgslsmith_add_i32(u_input.a.x, ~1260i) & 4344i));
    var var_1 = _wgslsmith_clamp_vec3_u32(~abs(~select(vec3<u32>(46589u, 0u, u_input.c), vec3<u32>(u_input.d, u_input.c, u_input.d), false)), vec3<u32>(u_input.d, _wgslsmith_dot_vec4_u32(~reverseBits(vec4<u32>(u_input.d, 6755u, 0u, 4294967295u)), vec4<u32>(~u_input.d, 59786u | u_input.c, 11305u, 71634u ^ u_input.d)), 4294967295u), ~(~select(vec3<u32>(u_input.d, 1u, 0u), ~vec3<u32>(0u, 4294967295u, 0u), vec3<bool>(true, true, false))));
    var_0 = u_input.a.x;
    var var_2 = ~abs(vec3<u32>(_wgslsmith_add_u32(~1u, ~u_input.d), countOneBits(35355u >> (u_input.d % 32u)), 4294967295u));
    var var_3 = select(max(vec2<u32>(~(4294967295u ^ u_input.c), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(var_1.x, var_2.x, u_input.c))), var_1.yy), firstLeadingBit(abs(~abs(vec2<u32>(var_2.x, var_1.x)))), arg_0);
    return global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(select(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, 1u, 1u, 1u), vec4<u32>(1u, 65490u, var_1.x, 0u)), _wgslsmith_dot_vec2_u32(~var_2.zx, vec2<u32>(56328u, var_1.x) ^ var_1.xz), select(true, all(vec4<bool>(arg_0, false, false, arg_0)), true)), var_1.x, (_wgslsmith_add_u32(0u, 52221u) & (u_input.d >> (var_1.x % 32u))) << (var_1.x % 32u)), _wgslsmith_div_vec3_u32(vec3<u32>(7316u, var_2.x, 1u), ~(~reverseBits(vec3<u32>(47523u, u_input.c, var_2.x))))), 1u)];
}

fn func_1() -> f32 {
    let var_0 = func_4(any(!func_2()), vec2<f32>(-1341f, global0[_wgslsmith_index_u32(u_input.d, 8u)]));
    global0 = array<f32, 8>();
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-671f * 1083f), _wgslsmith_f_op_f32(-626f + -1471f)))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(-var_0.a.x)) + _wgslsmith_f_op_f32(step(-935f, _wgslsmith_f_op_f32(-global2.a.x)))))));
    global0 = array<f32, 8>();
    var var_2 = ~(u_input.d | 8956u);
    return _wgslsmith_f_op_f32(round(-1000f));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1400f) - _wgslsmith_f_op_f32(func_1())), -1171f, -1147f, _wgslsmith_f_op_f32(select(1217f, _wgslsmith_f_op_f32(max(global2.a.x, 1000f)), true))))));
    global3 = array<i32, 20>();
    var var_0 = func_4(select(!any(vec3<bool>(true, false, false)), !func_2().x, 1621u == (u_input.c ^ 81626u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(4294967295u, 8u)])) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), global0[_wgslsmith_index_u32(u_input.c, 8u)])));
    global0 = array<f32, 8>();
    let var_1 = global1[_wgslsmith_index_u32(~4294967295u, 1u)];
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(475f, -947f, 2170f, var_0.a.x) * global2.a) * _wgslsmith_f_op_vec4_f32(global2.a * var_1.a))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-937f, -194f, 208f, global2.a.x) - vec4<f32>(var_1.a.x, 258f, 351f, -1979f)) - _wgslsmith_div_vec4_f32(var_0.a, vec4<f32>(global0[_wgslsmith_index_u32(32040u, 8u)], global0[_wgslsmith_index_u32(316u, 8u)], var_0.a.x, global0[_wgslsmith_index_u32(u_input.c, 8u)])))));
    let var_3 = ~1i;
    var var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -731f));
    let x = u_input.a;
    s_output = StorageBuffer(356f, ~(~(~(~vec2<u32>(u_input.d, 13951u)))), ~(-24162i), func_4((true | all(vec2<bool>(false, false))) & false, global2.a.zw).a);
}

