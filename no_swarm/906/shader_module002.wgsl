struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12>;

var<private> global1: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(13585u), Struct_1(1u), Struct_1(1u), Struct_1(4294967295u), Struct_1(50123u), Struct_1(1u), Struct_1(1u), Struct_1(1230u), Struct_1(29323u), Struct_1(61047u), Struct_1(31103u), Struct_1(2697u), Struct_1(18516u), Struct_1(137u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(114355u), Struct_1(19297u), Struct_1(4294967295u), Struct_1(0u));

var<private> global2: array<vec4<i32>, 3>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    let var_0 = -(arg_0.b ^ _wgslsmith_dot_vec4_i32(abs(vec4<i32>(arg_0.b, -2147483647i, arg_0.b, 6059i)), vec4<i32>(2147483647i, arg_0.b, u_input.c ^ u_input.b, _wgslsmith_div_i32(1562i, arg_0.b))));
    return arg_0.a;
}

fn func_2(arg_0: Struct_1) -> i32 {
    global2 = array<vec4<i32>, 3>();
    var var_0 = global0[_wgslsmith_index_u32(abs(abs(firstTrailingBit(~(~arg_0.a)))), 12u)];
    var var_1 = arg_0;
    var var_2 = 1i;
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.c, _wgslsmith_f_op_f32(ceil(-1176f)), 461f))), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(589f, var_0.c))), _wgslsmith_f_op_f32(exp2(var_0.c)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(var_0.c))))))), vec3<f32>(_wgslsmith_f_op_f32(select(var_0.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_0.c)), var_0.c), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) * -858f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) - var_0.c)));
    return ~_wgslsmith_dot_vec2_i32(vec2<i32>(reverseBits(var_0.b), -_wgslsmith_clamp_i32(var_0.b, var_0.b, u_input.b)), firstTrailingBit(abs(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(var_0.b, 51839i)))));
}

fn func_3(arg_0: i32, arg_1: u32) -> u32 {
    let var_0 = firstTrailingBit(~(~_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(arg_1, arg_1, arg_1, 0u)), ~vec4<u32>(u_input.e, u_input.d, 0u, arg_1))));
    global1 = array<Struct_1, 21>();
    var var_1 = global0[_wgslsmith_index_u32(select(~76577u, ~(~(~4294967295u)), true), 12u)];
    let var_2 = !vec2<bool>(true, true || all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
    global0 = array<Struct_2, 12>();
    return u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<i32>, 3>();
    var var_0 = global1[_wgslsmith_index_u32(33531u, 21u)];
    global2 = array<vec4<i32>, 3>();
    var_0 = Struct_1(0u);
    global2 = array<vec4<i32>, 3>();
    var var_1 = vec2<u32>(_wgslsmith_mod_u32(4294967295u, _wgslsmith_sub_u32(1u, _wgslsmith_div_u32(var_0.a, 4294967295u))) ^ ~max(abs(18656u), 4294967295u), func_3(func_2(func_1(Struct_2(global1[_wgslsmith_index_u32(u_input.e, 21u)], u_input.c, -2193f))), firstTrailingBit(_wgslsmith_mod_u32(4294967295u, var_0.a | u_input.a))));
    let var_2 = global1[_wgslsmith_index_u32(u_input.e, 21u)];
    var var_3 = Struct_2(Struct_1(var_1.x), u_input.c, 348f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(vec3<f32>(-254f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(859f))), _wgslsmith_f_op_f32(-var_3.c)), vec3<f32>(var_3.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(584f * var_3.c)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_3.c * var_3.c))))));
}

