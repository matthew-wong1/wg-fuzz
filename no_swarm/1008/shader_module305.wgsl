struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 15>;

var<private> global1: Struct_2 = Struct_2(vec3<bool>(true, true, false), Struct_1(vec2<f32>(-1208f, 2401f), vec3<bool>(false, false, false)), 0u);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: bool) -> bool {
    return all(!(!vec4<bool>(true, arg_2, true, true))) && !all(!vec4<bool>(arg_2, arg_2, true, global1.a.x));
}

fn func_2(arg_0: u32) -> bool {
    var var_0 = Struct_2(vec3<bool>(true, global1.a.x, true), Struct_1(global1.b.a, select(!global1.a, global1.a, !(!vec3<bool>(true, global1.b.b.x, global1.a.x)))), ~30558u);
    let var_1 = select(global1.b.b.x, any(select(!vec4<bool>(false, false, false, global1.b.b.x), !vec4<bool>(global1.b.b.x, global1.b.b.x, false, false), vec4<bool>(false, var_0.b.b.x, true, var_0.b.b.x))) | any(select(global1.b.b.yz, vec2<bool>(global1.b.b.x, var_0.b.b.x), true)), (_wgslsmith_mult_u32(arg_0, var_0.c) | u_input.a) <= ~(~4294967295u & ~global1.c));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_0.b.a)));
    let var_3 = Struct_2(!select(vec3<bool>(func_3(vec3<i32>(-2147483647i, 1i, -2147483647i), vec4<u32>(arg_0, u_input.b, 1u, 48264u), false), global1.a.x == true, all(global1.a)), vec3<bool>(global1.b.b.x, true, true), global1.b.b.x), var_0.b, min(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.c, 0u, 4294967295u, u_input.b), vec4<u32>(global1.c, u_input.b, global1.c, arg_0)) & _wgslsmith_mod_vec4_u32(vec4<u32>(85826u, 62694u, 112536u, u_input.a), vec4<u32>(arg_0, 61481u, global1.c, 31563u)), firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.c.x, 0u, 53725u), vec4<u32>(arg_0, 29171u, 0u, 0u), vec4<u32>(4294967295u, arg_0, arg_0, global1.c)))), 11946u));
    return true;
}

fn func_1(arg_0: i32) -> vec4<bool> {
    var var_0 = Struct_2(global1.b.b, Struct_1(global1.b.a, select(!select(vec3<bool>(global1.a.x, true, true), global1.b.b, global1.a), select(global1.a, vec3<bool>(global1.b.b.x, global1.b.b.x, false), true), false)), countOneBits(_wgslsmith_mult_u32(countOneBits(global1.c), select(~32101u, ~u_input.a, func_2(69889u)))));
    var var_1 = Struct_1(vec2<f32>(var_0.b.a.x, _wgslsmith_f_op_f32(sign(var_0.b.a.x))), !select(vec3<bool>(true, false, true), !select(vec3<bool>(true, var_0.b.b.x, false), vec3<bool>(true, var_0.a.x, global1.b.b.x), var_0.a.x), vec3<bool>(false, all(vec3<bool>(global1.a.x, true, var_0.a.x)), func_2(1u))));
    let var_2 = firstLeadingBit(abs(vec3<u32>(_wgslsmith_clamp_u32(22275u, 40158u, global1.c), global1.c, _wgslsmith_mult_u32(2758u, global1.c))) ^ vec3<u32>(103915u, ~(global1.c ^ 4294967295u), ~u_input.b));
    global0 = array<vec2<u32>, 15>();
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(global1.b.a)), vec3<bool>(firstTrailingBit(-57748i) <= 8943i, var_0.a.x, var_0.b.b.x));
    return vec4<bool>(true, true, !(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -710f))) >= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.b.a.x - global1.b.a.x), _wgslsmith_f_op_f32(var_3.a.x * var_0.b.a.x)))), !(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, var_1.a.x)) == _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.b.a.x * 789f), _wgslsmith_f_op_f32(global1.b.a.x * 801f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.b.b;
    var var_1 = select(func_1(countOneBits(~abs(-1i))), vec4<bool>(var_0.x, true, true, true), vec4<bool>(all(select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(true, var_0.x, false), false)) & var_0.x, false != func_3(abs(vec3<i32>(0i, -8144i, 14959i)), vec4<u32>(u_input.c.x, 23708u, global1.c, u_input.c.x), any(vec4<bool>(true, false, var_0.x, false))), all(!select(global1.a, vec3<bool>(global1.a.x, false, var_0.x), vec3<bool>(global1.a.x, true, global1.b.b.x))), any(vec2<bool>(any(var_0.zx), !global1.a.x))));
    global0 = array<vec2<u32>, 15>();
    var var_2 = var_1.wxx;
    var var_3 = _wgslsmith_f_op_f32(step(global1.b.a.x, global1.b.a.x));
    let var_4 = abs(-55807i);
    var_3 = global1.b.a.x;
    var_0 = !(!global1.a);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

