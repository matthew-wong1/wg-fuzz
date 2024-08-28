struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
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

var<private> global0: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(vec4<f32>(-895f, 220f, -1357f, 1502f)), Struct_2(vec4<f32>(1628f, -723f, 1290f, -481f)), Struct_2(vec4<f32>(-171f, -2170f, -1000f, 1549f)), Struct_2(vec4<f32>(707f, -465f, 1069f, -542f)), Struct_2(vec4<f32>(-740f, 613f, 1134f, 761f)), Struct_2(vec4<f32>(-2076f, 647f, 2938f, -872f)), Struct_2(vec4<f32>(-1165f, 581f, 1470f, 1849f)), Struct_2(vec4<f32>(1362f, -1960f, 840f, 164f)), Struct_2(vec4<f32>(1071f, -877f, -1000f, 433f)), Struct_2(vec4<f32>(1820f, -546f, -1561f, -3272f)), Struct_2(vec4<f32>(1000f, 133f, -448f, -476f)), Struct_2(vec4<f32>(1450f, -215f, -346f, -1301f)));

var<private> global1: array<f32, 16>;

var<private> global2: array<vec4<u32>, 14>;

var<private> global3: i32 = i32(-2147483648);

var<private> global4: vec4<i32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec3<i32>) -> vec4<u32> {
    return global2[_wgslsmith_index_u32(~42797u, 14u)];
}

fn func_3(arg_0: vec4<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~0u, 16u)] - -966f)))));
    var var_1 = Struct_1(vec4<u32>(4294967295u, ~firstLeadingBit(23537u), ~(~23665u) & _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 89060u, 83203u), vec3<u32>(6377u, 0u, 0u)), ~113995u, 0u), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(105679u, 1u, 23642u), ~vec3<u32>(49780u, 0u, 4294967295u)), 35148u)));
    var var_2 = -2147483647i;
    var var_3 = global0[_wgslsmith_index_u32(~var_1.a.x << ((_wgslsmith_sub_u32(var_1.a.x, 1u) ^ _wgslsmith_div_u32(_wgslsmith_mod_u32(0u, 24479u), ~27589u)) % 32u), 12u)];
    let var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-2571f, -927f, 135f, -863f), vec4<f32>(var_3.a.x, 1000f, 754f, 242f))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(439f)), 1638f, var_3.a.x, _wgslsmith_f_op_f32(floor(var_0))))));
    return var_4.a.x;
}

fn func_1(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec3<bool>, arg_3: i32) -> f32 {
    global3 = 1i;
    var var_0 = Struct_1(func_2((vec3<i32>(-1i) * -vec3<i32>(u_input.a.x, -1i, -10399i)) | arg_1));
    global2 = array<vec4<u32>, 14>();
    global0 = array<Struct_2, 12>();
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(arg_0.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-516f, global1[_wgslsmith_index_u32(4294967295u, 16u)], global1[_wgslsmith_index_u32(4294967295u, 16u)], -746f))), vec4<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(0u, 16u)], 1000f, 931f, global1[_wgslsmith_index_u32(var_0.a.x, 16u)]), vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 16u)], -319f, arg_0.a.x, arg_0.a.x)))), arg_0.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.a.x - 161f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-389f * -1027f), _wgslsmith_f_op_f32(ceil(431f)))), abs(50408u) == var_0.a.x)));
    return global1[_wgslsmith_index_u32(4294967295u, 16u)];
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_add_i32(i32(-1i) * -(i32(-1i) * -14045i), ~(~(~(-u_input.a.x))));
    global0 = array<Struct_2, 12>();
    global1 = array<f32, 16>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -938f))));
    let var_1 = u_input.a;
    let var_2 = Struct_1(global2[_wgslsmith_index_u32(81529u, 14u)]);
    global0 = array<Struct_2, 12>();
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(var_2.a.x, 12u)], global4.zwx, vec3<bool>(true, true, true), ~(-8464i) ^ u_input.a.x)) * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_2.a.x, 16u)])), _wgslsmith_f_op_f32(select(var_0, _wgslsmith_f_op_f32(select(var_0, _wgslsmith_f_op_f32(-473f * _wgslsmith_f_op_f32(step(700f, 130f))), true)), !any(vec2<bool>(true, true)))));
    let var_4 = var_2.a.xy;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) + var_3.x), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0 - -1525f))) * global1[_wgslsmith_index_u32(var_4.x, 16u)])));
}

