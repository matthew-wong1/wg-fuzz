struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_2(Struct_1(999f, 0u, -831f, -2225f)));

var<private> global1: array<vec2<i32>, 17>;

var<private> global2: bool = false;

var<private> global3: array<i32, 20> = array<i32, 20>(1i, 2414i, 10565i, i32(-2147483648), 2147483647i, -1i, i32(-2147483648), 2147483647i, 1i, -10590i, -32452i, 2147483647i, -1i, -65142i, 0i, 2935i, 0i, -48395i, 1i, i32(-2147483648));

var<private> global4: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: bool, arg_1: vec3<i32>, arg_2: f32) -> bool {
    let var_0 = Struct_3(max(vec2<u32>(_wgslsmith_mod_u32(0u, global0.a.a.b), abs(max(1u, 4294967295u))), ~(~vec2<u32>(19639u, 222u))));
    let var_1 = !arg_0 || !all(!(!vec4<bool>(false, arg_0, arg_0, arg_0)));
    var var_2 = any(vec2<bool>(true, arg_0)) | all(!select(select(vec4<bool>(arg_0, false, true, var_1), vec4<bool>(false, false, arg_0, arg_0), vec4<bool>(arg_0, var_1, true, arg_0)), !vec4<bool>(var_1, false, false, false), vec4<bool>(var_1, var_1, true, var_1)));
    var var_3 = -278f;
    global1 = array<vec2<i32>, 17>();
    return true;
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: f32) -> vec2<u32> {
    global4 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(1397f))));
    let var_0 = abs(_wgslsmith_add_vec2_u32(abs(min(vec2<u32>(1u, global0.a.a.b), _wgslsmith_mult_vec2_u32(vec2<u32>(global0.a.a.b, 8237u), vec2<u32>(arg_1.b, global0.a.a.b)))), vec2<u32>(56314u, ~(~arg_1.b))));
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(198f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1584f + arg_2) + _wgslsmith_f_op_f32(arg_1.a + -585f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(772f, 996f)), arg_1.c)))) - vec2<f32>(836f, 512f));
    let var_2 = vec4<bool>(false, true, false, any(vec3<bool>(false, select(any(vec4<bool>(true, true, true, false)), true, all(vec2<bool>(false, true))), !(2455f <= arg_2))));
    let var_3 = var_2.x;
    return ~vec2<u32>(~4294967295u, 40648u);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> StorageBuffer {
    var var_0 = Struct_3(~_wgslsmith_div_vec2_u32(vec2<u32>(arg_0.b, arg_1.b) | countOneBits(vec2<u32>(global0.a.a.b, arg_1.b)), vec2<u32>(arg_0.b, global0.a.a.b) | countOneBits(vec2<u32>(1u, global0.a.a.b))));
    let var_1 = select(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b, 4294967295u, global0.a.a.b, 0u), ~(~vec4<u32>(1u, 25331u, arg_1.b, arg_1.b))), arg_1.b), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, ~global0.a.a.b, arg_1.b), firstLeadingBit(~(~vec4<u32>(11857u, arg_1.b, arg_0.b, arg_0.b)))), true || func_2((u_input.a.x > -2147483647i) | true, max(~vec3<i32>(u_input.a.x, 2147483647i, -11481i), ~vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), -534f));
    var var_2 = ~_wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(~0u, var_0.a.x)), func_3(_wgslsmith_f_op_f32(-arg_0.c), global0.a.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(944f)), arg_1.d)));
    var_0 = Struct_3(~(vec2<u32>(41172u, 40249u) >> (vec2<u32>(0u, min(var_1, 0u)) % vec2<u32>(32u))));
    let var_3 = global0.a;
    return StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.c))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.a.a.d + global0.a.a.c), var_3.a.c)))), vec3<u32>(_wgslsmith_div_u32(min(0u, 123386u) & select(global0.a.a.b, arg_0.b, false), ~(~17257u)), var_1, _wgslsmith_sub_u32(33175u, _wgslsmith_div_u32(_wgslsmith_add_u32(4294967295u, var_2.x), ~168919u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1205i;
    global2 = any(!vec3<bool>(true, false, max(13381i, global3[_wgslsmith_index_u32(global0.a.a.b, 20u)]) <= min(0i, global3[_wgslsmith_index_u32(global0.a.a.b, 20u)])));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -411f), _wgslsmith_f_op_f32(round(global0.a.a.d))), global0.a.a.a)));
    let var_2 = ~(~abs(0u));
    var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(1567f, _wgslsmith_f_op_f32(-global0.a.a.a))), _wgslsmith_f_op_f32(round(var_1.x))));
    let x = u_input.a;
    s_output = func_1(global0.a.a, global0.a.a);
}

