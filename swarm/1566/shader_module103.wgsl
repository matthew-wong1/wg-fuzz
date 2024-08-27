struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec2<f32>, arg_3: vec3<bool>) -> i32 {
    var var_0 = Struct_2(~(~u_input.c.x << (_wgslsmith_add_u32(u_input.b, 0u) % 32u)) & 0u);
    global0 = array<i32, 15>();
    global0 = array<i32, 15>();
    var_0 = Struct_2(15687u);
    global0 = array<i32, 15>();
    return global0[_wgslsmith_index_u32(4536u, 15u)];
}

fn func_2(arg_0: i32) -> f32 {
    global0 = array<i32, 15>();
    let var_0 = ~(~(u_input.c ^ u_input.c));
    var var_1 = vec4<i32>(func_3(Struct_1(select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), true), true)), _wgslsmith_mult_vec2_u32(~(~vec2<u32>(23426u, 9360u)), u_input.c.zz), _wgslsmith_f_op_vec2_f32(vec2<f32>(-286f, -1633f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-558f, -385f), vec2<f32>(-895f, -778f))))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), select(false, true, true)), true)), ~(-1i), ~countOneBits(-global0[_wgslsmith_index_u32(var_0.x, 15u)]), arg_0);
    let var_2 = -vec4<i32>(18113i, -1i, 0i, var_1.x << (~1u % 32u));
    var_1 = var_2;
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(510f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-566f - 713f))))));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: bool) -> f32 {
    var var_0 = Struct_2(0u);
    global0 = array<i32, 15>();
    var var_1 = global0[_wgslsmith_index_u32(0u, 15u)];
    let var_2 = firstLeadingBit(firstTrailingBit(48429u));
    global0 = array<i32, 15>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(-2147483647i)) * _wgslsmith_f_op_f32(f32(-1f) * -1315f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1055f - 253f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-344f - 491f), _wgslsmith_f_op_f32(floor(-661f))))))));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: u32) -> Struct_3 {
    global0 = array<i32, 15>();
    var var_0 = vec2<bool>(true, _wgslsmith_dot_vec3_u32(vec3<u32>(4474u, _wgslsmith_dot_vec2_u32(u_input.c.yy, u_input.c.xz), u_input.c.x), u_input.c) < _wgslsmith_mult_u32(0u, 0u));
    let var_1 = 2147483647i;
    global0 = array<i32, 15>();
    let var_2 = Struct_2(select(arg_3, u_input.c.x, true));
    return Struct_3(Struct_1(vec4<bool>(all(vec4<bool>(arg_0.x, var_0.x, arg_0.x, var_0.x)), arg_0.x, all(vec2<bool>(false, arg_1.a.a.x)), all(vec4<bool>(var_0.x, true, var_0.x, arg_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = ~global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.c.x, 4294967295u, 1u, u_input.c.x)), ~(~vec4<u32>(30029u, u_input.b, u_input.c.x, u_input.a))), u_input.a), 15u)];
    var_1 = -14202i;
    var var_2 = func_4(!select(select(vec3<bool>(true, true, true), !vec3<bool>(var_0, false, false), select(vec3<bool>(true, var_0, var_0), vec3<bool>(false, false, true), true)), vec3<bool>(true, true, true), vec3<bool>(var_0, false, !var_0)), Struct_3(Struct_1(vec4<bool>(var_0, false, true, !var_0))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_1(vec3<bool>(var_0, var_0, var_0), vec2<i32>(-52102i, 0i), var_0)), _wgslsmith_f_op_f32(-1404f - 1870f), _wgslsmith_f_op_f32(-242f * -1182f), _wgslsmith_f_op_f32(trunc(1548f))), vec4<f32>(_wgslsmith_f_op_f32(trunc(1082f)), _wgslsmith_f_op_f32(sign(-886f)), -1757f, -346f)) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(u_input.c.x, 15u)]))), -2705f, -2159f, -1243f)), _wgslsmith_dot_vec3_u32(~abs(u_input.c) | u_input.c, ~vec3<u32>(1u | u_input.b, _wgslsmith_sub_u32(78332u, 1u), _wgslsmith_clamp_u32(0u, 51968u, 50557u))));
    var_1 = global0[_wgslsmith_index_u32(1u, 15u)];
    var var_3 = true;
    var var_4 = Struct_3(var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(-284f, _wgslsmith_f_op_f32(f32(-1f) * -1732f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -693f), _wgslsmith_f_op_f32(ceil(-751f)))), -642f))));
}

