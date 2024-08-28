struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4>;

var<private> global1: array<i32, 6>;

var<private> global2: u32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    var var_0 = Struct_1(u_input.b | 4294967295u);
    global0 = array<u32, 4>();
    global0 = array<u32, 4>();
    var var_1 = 1u;
    var var_2 = ~(~reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(var_0.a, 6u)], 48479i, -1i), vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 6u)], -2147483647i, global1[_wgslsmith_index_u32(u_input.b, 6u)]), vec3<i32>(1i, 24990i, global1[_wgslsmith_index_u32(1u, 6u)]))) & (~(vec3<i32>(global1[_wgslsmith_index_u32(u_input.b, 6u)], global1[_wgslsmith_index_u32(1u, 6u)], global1[_wgslsmith_index_u32(u_input.b, 6u)]) >> (vec3<u32>(u_input.b, 51009u, u_input.b) % vec3<u32>(32u))) << (~(~vec3<u32>(u_input.b, var_0.a, var_0.a)) % vec3<u32>(32u))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x));
}

fn func_2() -> vec3<bool> {
    let var_0 = _wgslsmith_div_f32(1239f, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-101f, -114f, -1456f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(747f, 1907f, -1509f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(396f, -1785f, 615f)))))))));
    global2 = global0[_wgslsmith_index_u32(u_input.a.x, 4u)];
    var var_1 = firstTrailingBit(max(_wgslsmith_mult_u32(abs(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 4u)], 4u)], u_input.b)), 1u), 1u));
    var_1 = ~global0[_wgslsmith_index_u32(1u, 4u)];
    global0 = array<u32, 4>();
    return vec3<bool>(false, true, any(vec4<bool>(true, true, true, true)));
}

fn func_1(arg_0: vec3<bool>) -> u32 {
    global1 = array<i32, 6>();
    global1 = array<i32, 6>();
    var var_0 = select(!select(func_2(), arg_0, false), select(!arg_0, select(func_2(), vec3<bool>(arg_0.x, arg_0.x, true), false), vec3<bool>(_wgslsmith_mod_i32(31386i, global1[_wgslsmith_index_u32(4294967295u, 6u)]) != 8886i, false, true)), !arg_0);
    global2 = u_input.a.x;
    let var_1 = _wgslsmith_clamp_i32(firstLeadingBit(-_wgslsmith_dot_vec2_i32(~vec2<i32>(2712i, 35451i), ~vec2<i32>(global1[_wgslsmith_index_u32(22847u, 6u)], 0i))), 24170i, abs(~_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-14552i, -33688i, 2147483647i)), -vec3<i32>(1i, -2147483647i, -1i))));
    return u_input.a.x;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec2<bool>) -> bool {
    let var_0 = Struct_1(_wgslsmith_mod_u32(firstTrailingBit(countOneBits(240u)), global0[_wgslsmith_index_u32(4294967295u, 4u)]));
    let var_1 = !arg_2;
    let var_2 = vec3<u32>(~_wgslsmith_mult_u32(u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(25442u, 32610u, 4294967295u, arg_1) << (vec4<u32>(var_0.a, 1u, 4294967295u, u_input.a.x) % vec4<u32>(32u)), ~vec4<u32>(arg_1, 51728u, var_0.a, arg_0.a))), ~_wgslsmith_add_u32(0u, u_input.a.x), _wgslsmith_add_u32(min(global0[_wgslsmith_index_u32(reverseBits(arg_1), 4u)], _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a, var_0.a, 24848u, u_input.b), vec4<u32>(23323u, 4294967295u, 0u, arg_1))), abs(0u)) | 4294967295u);
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1024f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -711f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(753f - 1f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-114f + 888f))) * _wgslsmith_f_op_f32(round(329f)))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-403f + _wgslsmith_f_op_f32(var_3.x + _wgslsmith_f_op_f32(-384f + var_3.x))))));
    return (true || any(vec4<bool>(!var_1.x, 47229u <= var_0.a, true, false))) == arg_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec4<bool>(all(vec4<bool>(true, true, true, true)), true, false, true);
    var_0 = !vec4<bool>(func_4(Struct_1(min(global0[_wgslsmith_index_u32(4294967295u, 4u)], 4294967295u)), func_1(vec3<bool>(var_0.x, var_0.x, var_0.x)) | u_input.a.x, !vec2<bool>(true, var_0.x)), all(var_0.wz), false, all(select(var_0.ywz, !vec3<bool>(var_0.x, false, false), false & var_0.x)));
    var var_1 = Struct_1(~_wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_add_u32(func_1(var_0.yzz), global0[_wgslsmith_index_u32(1u, 4u)]), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(reverseBits(1u), 1u, ~1u), 4u)]));
    let var_2 = ~(~(~(var_1.a ^ global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(20767u, 4u)], 4u)]) >> (0u % 32u)));
    var_0 = vec4<bool>(true, var_0.x, 7449u != u_input.b, var_0.x);
    let var_3 = ~vec3<i32>(~0i, -2147483647i, _wgslsmith_sub_i32(~_wgslsmith_div_i32(global1[_wgslsmith_index_u32(u_input.b, 6u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 4u)], 6u)]), global1[_wgslsmith_index_u32(~var_1.a, 6u)]));
    let var_4 = ~(~_wgslsmith_div_i32(firstLeadingBit(-41860i), global1[_wgslsmith_index_u32(min(0u >> (var_1.a % 32u), _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(0u, 4u)], global0[_wgslsmith_index_u32(0u, 4u)])), 6u)]));
    let x = u_input.a;
    s_output = StorageBuffer(-39120i);
}

