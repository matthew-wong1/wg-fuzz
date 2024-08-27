struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec2<bool>,
    d: vec2<bool>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: array<Struct_1, 7>;

var<private> global1: vec2<i32>;

var<private> global2: array<vec3<bool>, 3>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> vec3<u32> {
    var var_0 = !vec3<bool>(all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), false), vec4<bool>(true, false, false, true))), any(global2[_wgslsmith_index_u32(61180u, 3u)]), !(global1.x < (global1.x ^ global1.x)));
    global1 = vec2<i32>(global1.x, -65778i);
    var var_1 = _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, _wgslsmith_mult_u32(~4294967295u, u_input.a) ^ u_input.a), vec3<u32>(u_input.a, ~(~u_input.a), 4294967295u));
    let var_2 = !vec3<bool>(any(vec4<bool>(any(vec3<bool>(false, var_0.x, true)), var_0.x, true && var_0.x, false)), true, _wgslsmith_clamp_u32(~35689u, 1u, ~u_input.a) <= u_input.a);
    let var_3 = _wgslsmith_mod_vec4_u32(~countOneBits(vec4<u32>(u_input.a, u_input.a, var_1.x, var_1.x) | (vec4<u32>(4294967295u, 19550u, 0u, 12883u) | vec4<u32>(var_1.x, 43032u, 0u, 1u))), max(abs(_wgslsmith_add_vec4_u32(~vec4<u32>(var_1.x, 17338u, 0u, u_input.a), vec4<u32>(u_input.a, u_input.a, var_1.x, 0u))), select(vec4<u32>(var_1.x, 28652u, 0u, var_1.x), _wgslsmith_mult_vec4_u32(vec4<u32>(var_1.x, u_input.a, 1u, var_1.x), vec4<u32>(u_input.a, 17059u, 4294967295u, var_1.x)), u_input.a != 0u) << (~(~vec4<u32>(var_1.x, var_1.x, 0u, 1u)) % vec4<u32>(32u))));
    return vec3<u32>(78609u, 1u, 67452u);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<bool>) -> f32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(4294967295u, u_input.a, 1u)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(13854u, 29910u, 1u))), _wgslsmith_mult_vec3_u32(func_3(), ~vec3<u32>(0u, u_input.a, 67832u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(812f, arg_0.x))), !select(select(arg_1.xz, arg_1.yy, false), arg_1.yx, false), !arg_1.xx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.x)) * _wgslsmith_f_op_f32(f32(-1f) * -926f)))));
    global2 = array<vec3<bool>, 3>();
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(404f * var_0.a.b)));
    let var_2 = vec2<u32>(15514u, _wgslsmith_dot_vec3_u32(var_0.a.a, abs(select(_wgslsmith_sub_vec3_u32(var_0.a.a, vec3<u32>(u_input.a, 28596u, 4294967295u)), var_0.a.a, true))));
    global2 = array<vec3<bool>, 3>();
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + arg_0.x))));
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: vec2<u32>) -> u32 {
    var var_0 = min(vec4<u32>(1u, firstLeadingBit(10808u), arg_2.x, _wgslsmith_div_u32(arg_2.x, select(abs(arg_2.x), 1u, true))), abs(_wgslsmith_mod_vec4_u32(vec4<u32>(~4294967295u, ~54051u, 1u, ~0u), vec4<u32>(_wgslsmith_div_u32(203u, 71224u), ~1u, u_input.a ^ 82193u, _wgslsmith_mult_u32(116u, u_input.a)))));
    var_0 = vec4<u32>(1u, ~0u, select(max(min(var_0.x, arg_2.x) | var_0.x, arg_2.x << ((u_input.a << (109957u % 32u)) % 32u)), _wgslsmith_div_u32(arg_2.x, 1u & u_input.a) | _wgslsmith_mod_u32(u_input.a, ~var_0.x), var_0.x > (reverseBits(u_input.a) ^ arg_2.x)), arg_2.x);
    var var_1 = 33816u;
    var var_2 = Struct_1(var_0.wxw, arg_0.x, vec2<bool>(true, true), vec2<bool>(false, !(!(-1i < global1.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x * -980f), _wgslsmith_f_op_f32(func_2(arg_0, global2[_wgslsmith_index_u32(arg_2.x, 3u)])))))));
    var var_3 = -firstLeadingBit(~_wgslsmith_add_vec2_i32(~vec2<i32>(-6891i, global1.x), ~vec2<i32>(global1.x, global1.x)));
    return min(firstTrailingBit(4294967295u), 66246u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 411f;
    var var_1 = _wgslsmith_mult_vec3_u32(vec3<u32>(func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-481f, -1082f, 647f, 1058f)) - vec4<f32>(-1532f, 472f, -538f, 558f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -329f), 1000f, true)), vec2<u32>(_wgslsmith_sub_u32(4294967295u, 54755u), u_input.a)), 1u, select(reverseBits(_wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a)), ~countOneBits(1u), true)), min(vec3<u32>(_wgslsmith_add_u32(firstLeadingBit(u_input.a), min(u_input.a, u_input.a)), func_3().x, 70152u), countOneBits(func_3())));
    let var_2 = any(select(!select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(true, false), vec2<bool>(any(global2[_wgslsmith_index_u32(18139u, 3u)]), select(false, false, false)))) & (true && (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, 1493f))) > -2509f));
    let var_3 = global0[_wgslsmith_index_u32(max(22096u, var_1.x), 7u)];
    global2 = array<vec3<bool>, 3>();
    var var_4 = firstTrailingBit(firstTrailingBit(vec3<i32>(global1.x, global1.x, global1.x) | vec3<i32>(global1.x, 60357i, 2152i)) & ~(vec3<i32>(2147483647i, -7439i, global1.x) << (var_3.a % vec3<u32>(32u)))) << (var_3.a % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -437f));
}

