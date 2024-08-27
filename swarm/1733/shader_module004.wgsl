struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-439f, -335f, 1394f);

var<private> global1: array<Struct_1, 7>;

var<private> global2: array<vec4<u32>, 4> = array<vec4<u32>, 4>(vec4<u32>(4294967295u, 40063u, 7194u, 43376u), vec4<u32>(0u, 4294967295u, 31607u, 0u), vec4<u32>(77899u, 27844u, 0u, 1u), vec4<u32>(4875u, 0u, 3306u, 1u));

var<private> global3: Struct_1;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2() -> vec3<i32> {
    let var_0 = ~countOneBits(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.b, 1u, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) ^ vec4<u32>(32396u, u_input.b, 22887u, u_input.b)), _wgslsmith_div_vec4_u32(global2[_wgslsmith_index_u32(u_input.b, 4u)], _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, u_input.b, 44930u, 4294967295u), vec4<u32>(u_input.b, 45996u, u_input.b, 34451u)))));
    var var_1 = _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(1122f + 368f)) < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.x)));
    let var_2 = true;
    let var_3 = Struct_1(u_input.a);
    let var_4 = ~var_0 >> (abs(global2[_wgslsmith_index_u32(var_0.x, 4u)]) % vec4<u32>(32u));
    return -vec3<i32>(u_input.a, var_3.a, -1i);
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: u32, arg_3: Struct_1) -> f32 {
    var var_0 = func_2();
    var_0 = max(arg_1, arg_1);
    global2 = array<vec4<u32>, 4>();
    var var_1 = global1[_wgslsmith_index_u32(u_input.b, 7u)];
    global3 = arg_3;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(366f * _wgslsmith_f_op_f32(abs(global0.x))) * global0.x);
}

fn func_3(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = vec2<f32>(-628f, _wgslsmith_f_op_f32(-1490f * -211f));
    let var_1 = arg_0;
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -613f, global0.x, global0.x)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(121f, var_0.x, var_0.x, var_0.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, var_0.x, global0.x, -1447f), vec4<f32>(-403f, 1774f, var_0.x, -392f)) - _wgslsmith_div_vec4_f32(vec4<f32>(681f, 1159f, global0.x, -201f), vec4<f32>(global0.x, global0.x, global0.x, var_0.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(u_input.b, ((u_input.b | ~4294967295u) << (u_input.b % 32u)) >> (u_input.b % 32u), false);
    let var_1 = 1u < u_input.b;
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(vec2<i32>(global3.a, -31250i), vec3<i32>(u_input.a, -31498i, u_input.a), 4294967295u, Struct_1(1i))), 1000f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1081f), _wgslsmith_f_op_f32(global0.x + -682f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -991f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - global0.x) + _wgslsmith_f_op_f32(abs(global0.x))), !(false && var_1))), _wgslsmith_f_op_f32(-global0.x)) - _wgslsmith_f_op_vec4_f32(func_3(Struct_1(2147483647i))));
    var var_3 = global1[_wgslsmith_index_u32(u_input.b, 7u)];
    var var_4 = global1[_wgslsmith_index_u32(u_input.b, 7u)];
    global3 = Struct_1(_wgslsmith_mod_i32(-3475i, -1i));
    let var_5 = select(!vec2<bool>(max(u_input.b, 19640u) != (0u >> (u_input.b % 32u)), !any(vec3<bool>(true, false, var_1))), select(vec2<bool>(true, var_1 & (359f == global0.x)), vec2<bool>(false, var_1), vec2<bool>(true, _wgslsmith_clamp_u32(27337u, 4294967295u, u_input.b) > ~0u)), true);
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(u_input.b, ~4294967295u, reverseBits(u_input.b)) & ~_wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.b, 0u), vec3<u32>(u_input.b, 1u, 0u)), countOneBits(_wgslsmith_div_u32(~max(17100u, u_input.b), u_input.b)));
}

