struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_1 = Struct_1(vec2<bool>(true, false), vec4<f32>(1368f, -328f, -448f, -1537f));

var<private> global2: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec2<bool>(false, false), vec4<f32>(123f, -2229f, 154f, -1593f)), Struct_1(vec2<bool>(false, false), vec4<f32>(796f, -599f, -214f, 1477f)), Struct_1(vec2<bool>(true, false), vec4<f32>(126f, 588f, -260f, 385f)), Struct_1(vec2<bool>(false, true), vec4<f32>(449f, 126f, 1417f, 1793f)), Struct_1(vec2<bool>(true, false), vec4<f32>(1244f, -274f, -330f, 1701f)), Struct_1(vec2<bool>(true, true), vec4<f32>(1161f, -1802f, -514f, -816f)), Struct_1(vec2<bool>(true, true), vec4<f32>(-2209f, -308f, -652f, 753f)), Struct_1(vec2<bool>(true, false), vec4<f32>(-221f, 101f, 719f, -1000f)), Struct_1(vec2<bool>(true, false), vec4<f32>(837f, -1000f, -861f, 867f)), Struct_1(vec2<bool>(true, true), vec4<f32>(149f, 369f, -924f, -1159f)), Struct_1(vec2<bool>(false, true), vec4<f32>(-229f, 389f, 1388f, 226f)), Struct_1(vec2<bool>(false, true), vec4<f32>(214f, 419f, 418f, 971f)), Struct_1(vec2<bool>(true, false), vec4<f32>(1082f, 121f, -1939f, 236f)), Struct_1(vec2<bool>(true, true), vec4<f32>(-197f, -759f, -707f, 1000f)), Struct_1(vec2<bool>(false, false), vec4<f32>(-1455f, -388f, 894f, -300f)));

var<private> global3: array<vec3<f32>, 15> = array<vec3<f32>, 15>(vec3<f32>(968f, -1653f, -1409f), vec3<f32>(309f, 118f, 704f), vec3<f32>(-1000f, -740f, 779f), vec3<f32>(912f, 2459f, -285f), vec3<f32>(791f, 1000f, -474f), vec3<f32>(1534f, 600f, -791f), vec3<f32>(130f, -613f, -2576f), vec3<f32>(433f, -699f, -500f), vec3<f32>(-467f, 2566f, -1879f), vec3<f32>(-773f, 753f, 1000f), vec3<f32>(-1000f, 1474f, -342f), vec3<f32>(978f, 1925f, 651f), vec3<f32>(1583f, -779f, -1166f), vec3<f32>(-1242f, 181f, 2275f), vec3<f32>(1845f, -338f, -842f));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> f32 {
    global1 = global0.a;
    let var_0 = 0u;
    global2 = array<Struct_1, 15>();
    global1 = global2[_wgslsmith_index_u32(select(_wgslsmith_mod_u32(~4294967295u, _wgslsmith_mod_u32(u_input.a, ~52307u)), _wgslsmith_sub_u32(var_0, max(~(~1u), ~(26881u << (var_0 % 32u)))), false), 15u)];
    var var_1 = Struct_2(global2[_wgslsmith_index_u32(~38386u, 15u)], _wgslsmith_f_op_f32(-2459f + global1.b.x));
    return _wgslsmith_f_op_f32(f32(-1f) * -631f);
}

fn func_3(arg_0: Struct_1) -> vec4<f32> {
    let var_0 = _wgslsmith_clamp_u32(firstTrailingBit(abs(_wgslsmith_div_u32(~u_input.a, ~u_input.a))), _wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.a, u_input.a) ^ vec2<u32>(u_input.a, 111564u), vec2<u32>(u_input.a, 4294967295u) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(108911u, u_input.a), vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)), vec2<bool>(false && global0.a.a.x, global1.a.x)), abs(abs(vec2<u32>(u_input.a, 100957u) | vec2<u32>(u_input.a, 1u)))), ~firstTrailingBit(u_input.a));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1384f);
    global2 = array<Struct_1, 15>();
    global3 = array<vec3<f32>, 15>();
    global2 = array<Struct_1, 15>();
    return vec4<f32>(global1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1327f + 1710f) - _wgslsmith_f_op_f32(global0.a.b.x * _wgslsmith_f_op_f32(select(var_1, -2219f, global1.a.x || global0.a.a.x)))), global1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -799f)) * _wgslsmith_f_op_f32(f32(-1f) * -537f)) - _wgslsmith_f_op_f32(-global0.b)));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<bool>) -> Struct_1 {
    var var_0 = Struct_1(vec2<bool>(true & !select(true, true, true), false), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -544f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.b + -193f), _wgslsmith_f_op_f32(global0.b - -534f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) - _wgslsmith_div_f32(global0.a.b.x, -1723f)), _wgslsmith_f_op_f32(func_2())))));
    global0 = Struct_2(Struct_1(select(vec2<bool>(true, arg_1.x), !vec2<bool>(true, global0.a.a.x), select(global1.a, !var_0.a, select(arg_1.zz, vec2<bool>(false, global1.a.x), vec2<bool>(true, false)))), var_0.b), global1.b.x);
    global2 = array<Struct_1, 15>();
    let var_1 = Struct_2(global0.a, global0.a.b.x);
    global1 = Struct_1(vec2<bool>(true, global0.a.a.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_3(global0.a)), var_1.a.b, u_input.a == u_input.a)));
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(u_input.a, 15u)];
    global1 = global0.a;
    let var_1 = global0.a;
    var var_2 = func_1(vec4<bool>(global0.a.a.x, global0.a.a.x, false, global1.a.x), !select(!select(vec4<bool>(global1.a.x, global0.a.a.x, var_1.a.x, true), vec4<bool>(global0.a.a.x, var_0.a.x, global1.a.x, global0.a.a.x), var_1.a.x), !vec4<bool>(false, false, var_1.a.x, global1.a.x), true));
    global0 = Struct_2(func_1(vec4<bool>(!(!var_0.a.x), true, any(vec4<bool>(true, false, true, var_1.a.x)), all(vec4<bool>(var_2.a.x, var_2.a.x, true, var_2.a.x))), !(!vec4<bool>(false, false, var_0.a.x, global0.a.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-499f, global0.b)))));
    global2 = array<Struct_1, 15>();
    global3 = array<vec3<f32>, 15>();
    global2 = array<Struct_1, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(i32(-1i) * -2147483647i, firstTrailingBit(-2807i) & _wgslsmith_dot_vec2_i32(vec2<i32>(-32504i, 14477i), vec2<i32>(-373i, -2147483647i))) << (~0u % 32u));
}

