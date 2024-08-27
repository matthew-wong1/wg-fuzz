struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 10> = array<f32, 10>(-764f, -1898f, -1835f, 185f, -360f, 404f, -2534f, 115f, -712f, 1093f);

var<private> global1: vec4<bool> = vec4<bool>(false, false, false, false);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: vec4<i32>, arg_1: f32, arg_2: f32, arg_3: Struct_1) -> bool {
    global0 = array<f32, 10>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(round(arg_2)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 10u)]));
    let var_1 = _wgslsmith_add_i32(u_input.a, arg_0.x ^ -12608i);
    let var_2 = !all(vec4<bool>(any(select(vec2<bool>(true, global1.x), global1.xx, vec2<bool>(true, global1.x))), !(!global1.x), any(!vec4<bool>(global1.x, global1.x, false, true)), true));
    var var_3 = u_input.b;
    return global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<bool>(true != !(~u_input.b > ~u_input.c), true, global1.x, global1.x || !func_1(-vec4<i32>(-1i, u_input.a, 1344i, 1i), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 10u)]), -945f, Struct_1(vec4<i32>(-57769i, -2147483647i, u_input.a, u_input.a))));
    let var_0 = Struct_1(max(vec4<i32>(u_input.a, countOneBits(u_input.a << (u_input.b % 32u)), _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a, u_input.a, -7085i), vec3<i32>(u_input.a, u_input.a, 15423i) << (vec3<u32>(31682u, 0u, u_input.b) % vec3<u32>(32u))), ~_wgslsmith_mod_i32(-1i, u_input.a)), ~(vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i) & _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 29935i, 0i, u_input.a), vec4<i32>(u_input.a, 1i, u_input.a, u_input.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c, -12072i, _wgslsmith_div_vec4_f32(vec4<f32>(3059f, global0[_wgslsmith_index_u32(u_input.b, 10u)], -487f, 732f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 10u)], global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(u_input.c, 10u)], global0[_wgslsmith_index_u32(u_input.c, 10u)])) - vec4<f32>(_wgslsmith_f_op_f32(floor(-452f)), -148f, global0[_wgslsmith_index_u32(22825u, 10u)], global0[_wgslsmith_index_u32(1u, 10u)]))), -38426i);
}

