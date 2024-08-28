struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec2<u32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<i32, 19>;

var<private> global2: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(-501i, 1140f, false), Struct_2(-43968i, 1078f, true), Struct_2(i32(-2147483648), -145f, false), Struct_2(2147483647i, -941f, false), Struct_2(18051i, 361f, true), Struct_2(31387i, 2451f, true), Struct_2(1i, -1287f, false), Struct_2(2147483647i, 940f, false), Struct_2(16048i, -1802f, false));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: u32) -> f32 {
    let var_0 = Struct_1(false, u_input.d.x);
    var var_1 = -2147483647i;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-950f, -191f, -330f, global0.x) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-320f, global0.x, global0.x, global0.x), vec4<f32>(-641f, global0.x, global0.x, -1044f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -755f, global0.x, 1997f)))))));
    var var_3 = vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(_wgslsmith_add_u32(u_input.e, 4294967295u), 4294967295u), max(~_wgslsmith_add_vec2_u32(vec2<u32>(arg_1, 74498u), vec2<u32>(1u, 4294967295u)), _wgslsmith_sub_vec2_u32(min(vec2<u32>(arg_1, arg_1), vec2<u32>(4294967295u, u_input.c)), vec2<u32>(u_input.c, arg_1) >> (vec2<u32>(arg_1, arg_1) % vec2<u32>(32u))))), arg_1, arg_1, u_input.c);
    global2 = array<Struct_2, 9>();
    return _wgslsmith_f_op_f32(-global0.x);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_0.a, 4294967295u)))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(961f, 1736f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1076f, global0.x)))))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.x, 336f, arg_0.a)) * _wgslsmith_f_op_f32(trunc(1558f))), _wgslsmith_f_op_f32(trunc(global0.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -372f) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.x, -731f))))), u_input.c <= u_input.e)));
    let var_0 = Struct_2(-38042i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1528f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, global0.x) - 157f)))), true);
    global2 = array<Struct_2, 9>();
    global1 = array<i32, 19>();
    global2 = array<Struct_2, 9>();
    return Struct_1(!(0i == (-13101i & ~u_input.a)), ~(-811i));
}

fn func_1() -> Struct_1 {
    global2 = array<Struct_2, 9>();
    var var_0 = any(vec3<bool>(true, true, true));
    let var_1 = func_2(Struct_1(true, ~(-1i)));
    var var_2 = reverseBits(~u_input.e);
    let var_3 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global0.x)), global0.x), global0.x, _wgslsmith_f_op_f32(f32(-1f) * -1667f));
    return Struct_1(var_1.a, 1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -20773i;
    let var_1 = func_1();
    var var_2 = -global1[_wgslsmith_index_u32((u_input.c << (8096u % 32u)) ^ min(1u, ~max(u_input.e, 4294967295u)), 19u)];
    let var_3 = vec3<bool>(!select(!var_1.a, true, true) || !(var_1.a | true), !(~(-2147483647i) >= var_1.b), false);
    var var_4 = func_2(Struct_1(false, select(global1[_wgslsmith_index_u32(u_input.e, 19u)], ~u_input.d.x, u_input.e != ~1u)));
    var var_5 = func_1();
    let var_6 = select(var_3.zy, vec2<bool>(var_1.a, true), !var_3.yx);
    let x = u_input.a;
    s_output = StorageBuffer(global0.x, vec3<f32>(284f, -869f, global0.x), ~(~(vec2<u32>(u_input.c, u_input.e) & vec2<u32>(u_input.e, 6550u))) ^ vec2<u32>(439u, ~(~u_input.c)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1416f), _wgslsmith_f_op_f32(min(global0.x, -424f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(216f, global0.x) * vec2<f32>(1429f, global0.x)) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1870f, 1599f))))))), 73831u);
}

