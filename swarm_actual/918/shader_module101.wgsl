struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<Struct_1, 30>;

var<private> global2: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(239f, false, vec3<f32>(133f, -1000f, 1591f)), Struct_1(380f, false, vec3<f32>(928f, 1071f, 160f)), Struct_1(530f, false, vec3<f32>(-313f, 1000f, 297f)), Struct_1(822f, true, vec3<f32>(287f, 822f, 1842f)), Struct_1(216f, true, vec3<f32>(-544f, -1636f, 442f)), Struct_1(-309f, false, vec3<f32>(-1657f, 865f, -1685f)), Struct_1(-383f, false, vec3<f32>(-1930f, -507f, -258f)), Struct_1(1310f, false, vec3<f32>(593f, -556f, 703f)), Struct_1(-1000f, false, vec3<f32>(-946f, 1310f, 1000f)), Struct_1(372f, true, vec3<f32>(1000f, 636f, 562f)), Struct_1(-619f, false, vec3<f32>(-293f, -1402f, 495f)), Struct_1(-1834f, true, vec3<f32>(-298f, -2172f, -1395f)), Struct_1(-741f, true, vec3<f32>(606f, -1912f, -1685f)), Struct_1(-361f, false, vec3<f32>(-1555f, 544f, 272f)), Struct_1(741f, false, vec3<f32>(1000f, 350f, 765f)), Struct_1(-619f, true, vec3<f32>(-926f, 157f, -1000f)), Struct_1(533f, true, vec3<f32>(666f, 251f, 922f)), Struct_1(-633f, true, vec3<f32>(2355f, -685f, -1141f)), Struct_1(-1000f, false, vec3<f32>(-409f, -1099f, 926f)), Struct_1(-843f, true, vec3<f32>(750f, 792f, -479f)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> vec3<f32> {
    var var_0 = select(arg_0.b, true, false);
    let var_1 = select(select(global0.wyz, global0.zzy, vec3<bool>(any(vec3<bool>(false, arg_0.b, global0.x)), true, true)), !global0.yzw, !global0.zyw);
    global1 = array<Struct_1, 30>();
    let var_2 = _wgslsmith_mod_i32(-1i, 55836i);
    global2 = array<Struct_1, 20>();
    return vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x)))))), arg_0.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.c.x, arg_0.c.x, false))) - arg_0.a))));
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: u32) -> bool {
    let var_0 = 1i;
    let var_1 = _wgslsmith_f_op_vec3_f32(func_3(global1[_wgslsmith_index_u32(u_input.d, 30u)]));
    global0 = select(!select(!(!vec4<bool>(false, global0.x, global0.x, arg_2.b)), vec4<bool>(true, true, true, false), !(!vec4<bool>(true, false, false, global0.x))), vec4<bool>(true & any(!global0.xx), 1f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.x, arg_2.a))), true, arg_2.b && arg_2.b), !vec4<bool>(true, -var_0 != ~var_0, false, !(global0.x || global0.x)));
    var var_2 = Struct_1(-1222f, false, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * _wgslsmith_f_op_f32(arg_1.x * -1371f))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x + var_1.x), -1112f))), arg_1.x));
    global2 = array<Struct_1, 20>();
    return false;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = !select(vec4<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, false), arg_1)), !arg_0.b, select(true, arg_0.c.x <= -820f, global0.x != true), arg_0.b | !global0.x), !select(!vec4<bool>(arg_2.b, global0.x, arg_1.x, arg_1.x), !vec4<bool>(global0.x, arg_1.x, arg_0.b, true), arg_0.b), !vec4<bool>(true, func_2(-154f, arg_2.c.yx, Struct_1(1163f, arg_1.x, arg_2.c), u_input.d), any(vec2<bool>(true, false)), u_input.a >= u_input.a));
    let var_1 = global1[_wgslsmith_index_u32(abs(_wgslsmith_clamp_u32(u_input.c, max(~u_input.c | 48753u, ~u_input.d), ~1u)), 30u)];
    global2 = array<Struct_1, 20>();
    global2 = array<Struct_1, 20>();
    var var_2 = ~(~(~(~vec3<u32>(u_input.c, u_input.d, 41128u)))) ^ vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(min(4294967295u, 15390u), u_input.c), ~firstLeadingBit(0u)), abs(1563u), _wgslsmith_div_u32(4294967295u, u_input.d));
    return vec4<bool>(select(~abs(u_input.b), abs(abs(u_input.b)), false) >= _wgslsmith_add_i32(_wgslsmith_div_i32(_wgslsmith_clamp_i32(-2147483647i, u_input.a, -23762i), 0i), u_input.b << (~4294967295u % 32u)), arg_2.b, !(_wgslsmith_f_op_f32(f32(-1f) * -1686f) <= _wgslsmith_div_f32(-1003f, arg_2.c.x)) && true, true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<bool>(true, !(!global0.x && true), global0.x, true);
    var var_0 = 1u;
    global2 = array<Struct_1, 20>();
    global0 = !vec4<bool>(any(func_1(global2[_wgslsmith_index_u32(1u, 20u)], global0.wz, global2[_wgslsmith_index_u32(u_input.c, 20u)])) && global0.x, !(!select(global0.x, global0.x, true)), !global0.x, global0.x);
    let var_1 = 20722u;
    global2 = array<Struct_1, 20>();
    let var_2 = 20782u;
    global0 = vec4<bool>(any(!select(select(vec2<bool>(true, global0.x), vec2<bool>(global0.x, false), true), vec2<bool>(global0.x, false), global0.x & false)), global0.x, false & global0.x, _wgslsmith_div_f32(-1316f, _wgslsmith_f_op_f32(-453f - -2063f)) > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1971f))))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_u32(4294967295u, _wgslsmith_mod_u32(var_2, _wgslsmith_mult_u32(21233u, u_input.c))), ~(-2147483647i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(743f, _wgslsmith_f_op_f32(step(227f, _wgslsmith_f_op_f32(1000f * -1203f))))), var_1, vec3<u32>(~(~60920u), u_input.d, u_input.d));
}

