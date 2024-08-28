struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
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

var<private> global0: array<vec2<u32>, 19>;

var<private> global1: array<u32, 27>;

var<private> global2: array<bool, 23> = array<bool, 23>(false, false, false, false, false, true, false, false, false, true, true, true, false, false, true, true, false, false, false, false, true, true, false);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> vec3<u32> {
    var var_0 = select(!(!select(select(vec4<bool>(true, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 27u)], 27u)], 27u)], 23u)], true, arg_0), vec4<bool>(true, arg_0, global2[_wgslsmith_index_u32(35358u, 23u)], global2[_wgslsmith_index_u32(4294967295u, 23u)]), arg_1.a), select(vec4<bool>(arg_1.a, true, global2[_wgslsmith_index_u32(41680u, 23u)], false), vec4<bool>(true, global2[_wgslsmith_index_u32(78468u, 23u)], false, false), global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], 27u)], 23u)]), select(vec4<bool>(arg_0, false, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(42631u, 27u)], 27u)], 27u)], 27u)], 27u)], 23u)], false), vec4<bool>(true, arg_0, true, true), vec4<bool>(global2[_wgslsmith_index_u32(0u, 23u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(89169u, 27u)], 27u)], 23u)], true, false)))), vec4<bool>(false, true, all(!vec2<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(53601u, 27u)], 27u)], 23u)], arg_0)), all(select(vec4<bool>(arg_0, arg_0, true, false), vec4<bool>(arg_0, arg_0, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 27u)], 23u)], arg_1.a), vec4<bool>(arg_0, true, false, arg_1.a))) & true), _wgslsmith_sub_i32(u_input.a.x, (u_input.a.x >> (0u % 32u)) ^ u_input.a.x) <= -u_input.a.x);
    var var_1 = _wgslsmith_sub_vec2_u32(global0[_wgslsmith_index_u32(22639u, 19u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(min(vec3<u32>(11301u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(84705u, 27u)], 27u)], 27u)], 50838u), vec3<u32>(27348u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 27u)], 27u)], 27u)], global1[_wgslsmith_index_u32(0u, 27u)])), ~vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 27u)], 27u)], 19984u, 0u)), 27u)], _wgslsmith_dot_vec3_u32(min(select(vec3<u32>(global1[_wgslsmith_index_u32(58590u, 27u)], 0u, 0u), vec3<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 27u)], 27u)], global1[_wgslsmith_index_u32(1u, 27u)]), arg_0), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 20799u, 63933u), vec3<u32>(1u, 9061u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(31718u, 27u)], 27u)]), vec3<u32>(4294967295u, 1u, 0u))), vec3<u32>(max(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(11736u, 27u)], 27u)], 27u)], 27u)], 27u)], 27u)], 27u)], 4294967295u), global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 27u)], 27u)], 27u)], _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1[_wgslsmith_index_u32(0u, 27u)], global1[_wgslsmith_index_u32(39349u, 27u)], 61900u), vec4<u32>(0u, global1[_wgslsmith_index_u32(4294967295u, 27u)], 4294967295u, global1[_wgslsmith_index_u32(4294967295u, 27u)]))))), 19u)]);
    var var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(810f - 1073f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1493f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1000f - -1000f), _wgslsmith_f_op_f32(step(-954f, 189f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(533f, 1501f))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(246f, -884f)))) + vec2<f32>(_wgslsmith_f_op_f32(ceil(107f)), 1717f)), all(!(!vec3<bool>(false, arg_0, true))))));
    var var_3 = u_input.a;
    return _wgslsmith_clamp_vec3_u32(~countOneBits(vec3<u32>(var_1.x, global1[_wgslsmith_index_u32(reverseBits(global1[_wgslsmith_index_u32(var_1.x, 27u)]), 27u)], 32476u)), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 11011u, select(50460u, global1[_wgslsmith_index_u32(0u, 27u)], false) ^ ~4294967295u), _wgslsmith_clamp_vec3_u32(~select(vec3<u32>(8011u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(45311u, 27u)], 27u)], global1[_wgslsmith_index_u32(var_1.x, 27u)]), vec3<u32>(global1[_wgslsmith_index_u32(0u, 27u)], var_1.x, 41970u), global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.x, 27u)], 23u)]), _wgslsmith_clamp_vec3_u32(abs(vec3<u32>(29089u, global1[_wgslsmith_index_u32(var_1.x, 27u)], 0u)), vec3<u32>(global1[_wgslsmith_index_u32(var_1.x, 27u)], 79972u, global1[_wgslsmith_index_u32(var_1.x, 27u)]), ~vec3<u32>(1u, 4294967295u, 1u)), vec3<u32>(abs(var_1.x), ~1u, global1[_wgslsmith_index_u32(26491u, 27u)]))), vec3<u32>(~var_1.x, ~3351u, global1[_wgslsmith_index_u32(50472u, 27u)]));
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_1(true);
    var var_1 = ~min(vec3<u32>(min(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 27u)], 27u)], global1[_wgslsmith_index_u32(15751u, 27u)]), global1[_wgslsmith_index_u32(abs(global1[_wgslsmith_index_u32(2832u, 27u)]), 27u)], 1u) | (vec3<u32>(1u, 29094u, 19154u) | (vec3<u32>(global1[_wgslsmith_index_u32(34276u, 27u)], global1[_wgslsmith_index_u32(28612u, 27u)], global1[_wgslsmith_index_u32(43872u, 27u)]) >> (vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(41038u, 27u)], 27u)], global1[_wgslsmith_index_u32(1u, 27u)], 1u) % vec3<u32>(32u)))), func_3(!(global2[_wgslsmith_index_u32(4294967295u, 23u)] | global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 27u)], 27u)], 23u)]), Struct_1(any(vec4<bool>(true, true, true, var_0.a)))));
    var var_2 = 3984f;
    var var_3 = abs(select(select(vec3<i32>(~2147483647i, 1i, ~(-2147483647i)), -(~vec3<i32>(-53864i, -22117i, -2147483647i)), select(vec3<bool>(false, global2[_wgslsmith_index_u32(var_1.x, 23u)], var_0.a), vec3<bool>(false, false, global2[_wgslsmith_index_u32(0u, 23u)]), true)), -(vec3<i32>(-1i) * -vec3<i32>(-1i, -2147483647i, 0i)), false));
    let var_4 = !vec2<bool>(all(!vec3<bool>(true, global2[_wgslsmith_index_u32(24951u, 23u)], true)), !var_0.a);
    return Struct_3(select(!vec4<bool>(all(vec4<bool>(false, var_0.a, false, var_4.x)), true, var_3.x <= 1i, true), vec4<bool>(true && !var_0.a, any(vec4<bool>(true, var_4.x, true, var_4.x)), any(select(vec4<bool>(var_0.a, true, global2[_wgslsmith_index_u32(var_1.x, 23u)], var_4.x), vec4<bool>(var_4.x, false, false, var_4.x), global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.x, 27u)], 23u)])), true), !(!vec4<bool>(false, var_0.a, var_0.a, var_0.a))), Struct_1(!((17931u > global1[_wgslsmith_index_u32(var_1.x, 27u)]) != true)), var_0, var_0, vec2<i32>(_wgslsmith_clamp_i32(u_input.a.x, ~var_3.x, _wgslsmith_div_i32(0i, 1i)), reverseBits(_wgslsmith_sub_i32(abs(26892i), ~var_3.x))));
}

fn func_1(arg_0: Struct_4) -> bool {
    var var_0 = Struct_4(Struct_1(true || any(vec3<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 27u)], 23u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(9639u, 27u)], 27u)], 23u)], true))));
    let var_1 = func_2();
    global1 = array<u32, 27>();
    let var_2 = Struct_3(vec4<bool>(false, all(!(!vec4<bool>(global2[_wgslsmith_index_u32(28308u, 23u)], false, false, arg_0.a.a))), var_0.a.a, !(!arg_0.a.a)), arg_0.a, Struct_1(all(!select(var_1.a, vec4<bool>(var_0.a.a, var_0.a.a, var_0.a.a, var_1.d.a), var_1.a))), func_2().b, vec2<i32>(_wgslsmith_div_i32(2147483647i, abs(u_input.a.x)), -2147483647i));
    global2 = array<bool, 23>();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!vec3<bool>(true, !global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(22568u, 27u)], 27u)], 23u)], func_1(Struct_4(Struct_1(true))))));
    global1 = array<u32, 27>();
    var var_1 = Struct_1(true);
    global1 = array<u32, 27>();
    var_1 = Struct_1(func_2().b.a);
    global0 = array<vec2<u32>, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~0u, ~0u | (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1414u, 27u)], 27u)], 27u)] ^ global1[_wgslsmith_index_u32(34471u, 27u)])), 27u)], global1[_wgslsmith_index_u32(abs(global1[_wgslsmith_index_u32(12663u, 27u)]), 27u)]));
}

