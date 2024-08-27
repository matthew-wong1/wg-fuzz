struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec2<f32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<u32>) -> bool {
    let var_0 = arg_1;
    global0 = array<Struct_1, 15>();
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-361f, var_0.d, var_0.c.x, 508f)));
    let var_2 = arg_3.x >> (_wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(u_input.b.yyx, u_input.b.yxy), 1u) % 32u);
    let var_3 = u_input.a.x;
    return !all(select(vec4<bool>(u_input.b.x <= 30932u, arg_3.x < u_input.c, false, true), vec4<bool>(var_0.a.x && arg_2.a.x, any(vec3<bool>(false, true, arg_1.a.x)), u_input.a.x != var_3, false), false));
}

fn func_1(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = _wgslsmith_mod_u32(u_input.b.x, 1u);
    let var_1 = Struct_1(!arg_0.a, u_input.a.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-485f, arg_0.c.x) * vec2<f32>(-173f, -722f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-206f, 802f))) + vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.d), arg_0.d), arg_0.c.x)), arg_0.c.x);
    var var_2 = Struct_1(select(select(vec2<bool>(!var_1.a.x, var_1.a.x), select(vec2<bool>(true, true), select(vec2<bool>(true, arg_0.a.x), vec2<bool>(arg_0.a.x, arg_0.a.x), false), func_2(Struct_1(var_1.a, arg_0.b, var_1.c, -456f), global0[_wgslsmith_index_u32(12207u, 15u)], Struct_1(vec2<bool>(true, arg_0.a.x), 34880i, var_1.c, -319f), vec4<u32>(u_input.c, 5202u, u_input.c, 58135u))), var_1.a), select(!select(vec2<bool>(true, var_1.a.x), arg_0.a, true), vec2<bool>(!arg_0.a.x, any(var_1.a)), true), select(!arg_0.a, vec2<bool>(true, all(vec3<bool>(true, false, false))), vec2<bool>(var_1.a.x, !arg_0.a.x))), reverseBits(arg_0.b), arg_0.c, -240f);
    var var_3 = false;
    var var_4 = arg_0;
    return vec2<bool>(var_2.a.x, var_2.a.x);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d - -1407f))), arg_0.c.x);
    let var_1 = Struct_1(arg_1.a, u_input.a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.c)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-535f, arg_1.d)))));
    global0 = array<Struct_1, 15>();
    global0 = array<Struct_1, 15>();
    var var_2 = vec3<f32>(_wgslsmith_div_f32(var_1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1203f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -312f) * _wgslsmith_f_op_f32(sign(var_1.d))) + _wgslsmith_f_op_f32(784f - _wgslsmith_f_op_f32(var_1.d * arg_0.c.x))) - 726f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(494f)))) * arg_0.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.d), _wgslsmith_div_f32(arg_0.d, 402f))) * _wgslsmith_f_op_f32(-var_1.c.x))));
    return !all(!vec2<bool>(arg_0.a.x, all(vec4<bool>(true, var_1.a.x, true, false))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 15>();
    var var_0 = select(!func_1(global0[_wgslsmith_index_u32(~u_input.c >> (~10091u % 32u), 15u)]), !select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(false, false), true), false), select(vec2<bool>(all(vec2<bool>(true, true)), all(vec4<bool>(false, true, true, true)) || true), vec2<bool>(true & (u_input.a.x <= 0i), true), func_2(Struct_1(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), u_input.a.x, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(923f, 939f), vec2<f32>(-133f, -474f))), _wgslsmith_f_op_f32(ceil(-1706f))), global0[_wgslsmith_index_u32(u_input.c, 15u)], Struct_1(vec2<bool>(true, true), -1i, _wgslsmith_f_op_vec2_f32(vec2<f32>(735f, -315f) + vec2<f32>(1465f, -1261f)), _wgslsmith_f_op_f32(f32(-1f) * -714f)), ~vec4<u32>(u_input.b.x, u_input.b.x, 38057u, 155u))));
    var var_1 = vec3<bool>(!var_0.x, func_3(Struct_1(vec2<bool>(true, any(vec3<bool>(var_0.x, var_0.x, false))), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(172i, u_input.a.x, -49264i, 1i), vec4<i32>(u_input.a.x, u_input.a.x, -46408i, u_input.a.x))), vec2<f32>(745f, _wgslsmith_f_op_f32(304f - -1409f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + -1470f), _wgslsmith_f_op_f32(-1028f - -414f))), global0[_wgslsmith_index_u32(u_input.b.x, 15u)]), true);
    global0 = array<Struct_1, 15>();
    var_0 = !vec2<bool>(var_1.x, countOneBits(firstLeadingBit(u_input.c)) >= abs(u_input.c << (33699u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a | -_wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(31225i, u_input.a.x)), u_input.a), -9068i, u_input.b, ~(vec4<i32>(-1i) * -select(vec4<i32>(-2147483647i, -2147483647i, -49722i, 68465i), vec4<i32>(-41251i, u_input.a.x, u_input.a.x, -2147483647i), vec4<bool>(true, false, var_0.x, false))));
}

