struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec2<u32> = vec2<u32>(22298u, 9232u);

var<private> global2: Struct_1 = Struct_1(vec2<i32>(2147483647i, 32860i));

var<private> global3: array<vec3<f32>, 7>;

var<private> global4: i32 = 1i;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: vec3<u32>) -> vec4<u32> {
    return u_input.a;
}

fn func_3(arg_0: bool, arg_1: u32) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(187f, 381f) * 1567f), 2075f, 1025f), _wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(33913u, 7u)]))));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec4<u32> {
    global0 = ~(156862u | _wgslsmith_add_u32(global1.x, abs(1849u)));
    let var_0 = Struct_1(arg_3.a);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, arg_0, arg_0) * global3[_wgslsmith_index_u32(global1.x, 7u)]) * global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 1u), 7u)]))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(u_input.a.x, 7u)])))))) * _wgslsmith_f_op_vec3_f32(func_3(true, 1u)));
    var var_2 = vec4<u32>(15247u, u_input.d.x, 29346u, ~min(~_wgslsmith_dot_vec3_u32(vec3<u32>(30446u, 1u, 37345u), u_input.a.xxy), global1.x));
    global3 = array<vec3<f32>, 7>();
    return firstLeadingBit(select(u_input.a, vec4<u32>(~(4294967295u << (u_input.b % 32u)), u_input.d.x >> (~4294967295u % 32u), abs(u_input.d.x << (var_2.x % 32u)), ~min(var_2.x, 91877u)), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<u32>(global1.x, ~6949u);
    global3 = array<vec3<f32>, 7>();
    global3 = array<vec3<f32>, 7>();
    global2 = Struct_1(-_wgslsmith_add_vec2_i32(select(global2.a, vec2<i32>(u_input.c, u_input.c), true), _wgslsmith_sub_vec2_i32(~vec2<i32>(-20159i, u_input.c), _wgslsmith_mult_vec2_i32(global2.a, global2.a))));
    let var_0 = abs(u_input.a.yw);
    let var_1 = Struct_1(countOneBits(_wgslsmith_add_vec2_i32(global2.a, abs(vec2<i32>(0i, u_input.c))) << (var_0 % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(508f - -2527f) - _wgslsmith_f_op_f32(f32(-1f) * -591f)), _wgslsmith_f_op_f32(f32(-1f) * -320f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1499f, 142f))) + _wgslsmith_f_op_f32(f32(-1f) * -834f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2066f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -624f) * -1212f), true))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -867f), _wgslsmith_f_op_f32(f32(-1f) * -459f))), 1000f))), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(func_1(var_0.x, 434u, vec3<u32>(1u, global1.x, var_0.x)), func_2(-1401f, Struct_1(vec2<i32>(global2.a.x, global2.a.x)), Struct_1(vec2<i32>(0i, -2147483647i)), Struct_1(var_1.a))), vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), 1u, 4294967295u, var_0.x)) & vec4<u32>(u_input.a.x, var_0.x, _wgslsmith_div_u32(var_0.x | var_0.x, _wgslsmith_div_u32(u_input.d.x, u_input.d.x)), 1u));
}

