struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
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

var<private> global0: vec4<bool>;

var<private> global1: array<f32, 29> = array<f32, 29>(212f, 647f, 749f, -304f, -684f, -765f, -1408f, -266f, 491f, -315f, -1267f, -1608f, -931f, 256f, 1492f, -615f, -1000f, -1877f, -927f, -181f, 1594f, -1461f, 2428f, 837f, -409f, 895f, -884f, 282f, -3738f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(max(firstTrailingBit(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 4294967295u)), countOneBits(vec4<u32>(u_input.b, u_input.a.x, 77300u, u_input.a.x))), ~(~vec4<u32>(0u, u_input.a.x, u_input.a.x, 32976u))), 18104u), 29u)] - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(256f * global1[_wgslsmith_index_u32(1u, 29u)]) * _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b, 29u)] - global1[_wgslsmith_index_u32(u_input.a.x, 29u)])) * _wgslsmith_f_op_f32(757f - _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(4294967295u, 29u)])))))));
    let var_1 = 12066u;
    var_0 = _wgslsmith_div_f32(-706f, global1[_wgslsmith_index_u32(abs(u_input.b), 29u)]);
    let var_2 = Struct_1(~(-vec4<i32>(u_input.c, firstLeadingBit(u_input.c), u_input.c ^ -2147483647i, _wgslsmith_add_i32(-9830i, u_input.c))), -17173i, global0.yx);
    var_0 = 444f;
    return u_input.b;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec4<i32>) -> vec4<i32> {
    let var_0 = vec3<u32>(3174u, min(u_input.b, 0u) | 42799u, func_3());
    var var_1 = arg_0;
    let var_2 = !var_1.c;
    global0 = vec4<bool>(var_1.c.x, arg_0.c.x, all(vec3<bool>(false, all(vec4<bool>(false, global0.x, true, false)), !arg_0.c.x | (1u == u_input.a.x))), var_1.c.x);
    var_1 = arg_0;
    return select(~(-(vec4<i32>(-1i) * -vec4<i32>(arg_2.x, arg_2.x, 1i, 0i))), var_1.a, select(vec4<bool>(global0.x, !arg_0.c.x, _wgslsmith_f_op_f32(ceil(-663f)) <= -732f, true), vec4<bool>(!(0u > var_0.x), true, max(-2983i, var_1.a.x) <= select(arg_2.x, arg_1.x, var_2.x), arg_0.c.x), !select(vec4<bool>(global0.x, false, true, false), !vec4<bool>(var_1.c.x, var_1.c.x, true, false), !vec4<bool>(var_2.x, false, false, false))));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec3<i32>, arg_3: vec2<f32>) -> bool {
    global0 = vec4<bool>(arg_0, !arg_0, global0.x, false);
    global1 = array<f32, 29>();
    let var_0 = countOneBits(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, u_input.a.x, 0u), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 35093u, u_input.a.x), u_input.a), vec3<u32>(u_input.b, u_input.a.x, u_input.b)), u_input.a ^ u_input.a) ^ u_input.a);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1090f, arg_3.x, arg_1) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(289f, arg_3.x, global1[_wgslsmith_index_u32(76215u, 29u)])))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 374f, 696f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 1497f, arg_1))), true)));
    let var_2 = Struct_1(firstTrailingBit(func_2(Struct_1(~vec4<i32>(u_input.c, arg_2.x, -18861i, arg_2.x), 1i, vec2<bool>(false, arg_0)), _wgslsmith_clamp_vec2_i32(vec2<i32>(19029i, 0i), _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_2.x, -52819i), vec2<i32>(2147483647i, 37604i), arg_2.zy), vec2<i32>(arg_2.x, u_input.c)), vec4<i32>(arg_2.x, u_input.c, u_input.c, 37939i) & (vec4<i32>(-7471i, u_input.c, 84066i, -3697i) ^ vec4<i32>(-24498i, -2147483647i, 26496i, u_input.c)))), max(u_input.c, 23135i), global0.yx);
    return var_2.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(vec4<bool>(true, !global0.x, global0.x, !(!global0.x)), !vec4<bool>(any(vec3<bool>(global0.x, global0.x, false)), global0.x, false, (global0.x && false) || global0.x), global0.x);
    var var_0 = select(!global0.wy, vec2<bool>(global0.x, !global0.x), vec2<bool>(global0.x, true));
    var_0 = !select(vec2<bool>(!var_0.x, func_1(all(vec2<bool>(var_0.x, false)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), min(vec3<i32>(-6551i, 0i, 1i), vec3<i32>(-11551i, u_input.c, -1i)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(733f, global1[_wgslsmith_index_u32(42947u, 29u)]), vec2<f32>(130f, global1[_wgslsmith_index_u32(1u, 29u)]), true)))), !vec2<bool>(57731i > u_input.c, any(vec2<bool>(var_0.x, global0.x))), global0.wz);
    var_0 = select(select(!select(select(global0.zx, vec2<bool>(false, var_0.x), vec2<bool>(global0.x, global0.x)), global0.yz, global0.yx), select(select(vec2<bool>(false, global0.x), global0.wz, global0.wz), global0.yy, !vec2<bool>(true, global0.x)), vec2<bool>(!var_0.x, !(!global0.x))), vec2<bool>(!(global1[_wgslsmith_index_u32(u_input.a.x, 29u)] == global1[_wgslsmith_index_u32(~6832u, 29u)]), var_0.x), all(!vec3<bool>(true, var_0.x, true)));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.c);
}

