struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    global0 = array<f32, 6>();
    global0 = array<f32, 6>();
    let var_0 = ~min(~(~(~vec3<u32>(32869u, 0u, 1u))), ~(~(~vec3<u32>(1u, 4119u, 63363u))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~var_0.x, 6u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(min(var_0.x, var_0.x), 6u)], _wgslsmith_f_op_f32(f32(-1f) * -2180f))) - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, var_0.x), 6u)] + _wgslsmith_div_f32(global0[_wgslsmith_index_u32(var_0.x, 6u)], 400f))))) * global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(abs(var_0.x), 0u), 6u)]);
    let var_2 = u_input.a.xw;
    return ~abs(~(~32407u) << (((var_0.x | 16814u) >> ((var_0.x ^ 4294967295u) % 32u)) % 32u));
}

fn func_2() -> Struct_1 {
    return Struct_1(global0[_wgslsmith_index_u32(func_3(), 6u)]);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: vec2<u32>) -> vec4<i32> {
    global0 = array<f32, 6>();
    let var_0 = !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, all(vec4<bool>(true, false, false, true))), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false)), vec4<bool>(true, global0[_wgslsmith_index_u32(31482u, 6u)] == arg_0.a, true, false)), true);
    global0 = array<f32, 6>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.a * -1340f)))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2().a - global0[_wgslsmith_index_u32(1u, 6u)]), arg_0.a))));
    var var_2 = u_input.a.x;
    return u_input.a;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec3<u32>) -> u32 {
    var var_0 = -13896i;
    var var_1 = arg_2.x;
    let var_2 = func_4(arg_0, min(arg_2.x, arg_2.x), func_2(), vec2<u32>(_wgslsmith_dot_vec3_u32(firstLeadingBit(_wgslsmith_div_vec3_u32(arg_2, arg_2)), firstLeadingBit(vec3<u32>(4294967295u, arg_2.x, 4294967295u) << (vec3<u32>(arg_2.x, 18615u, arg_2.x) % vec3<u32>(32u)))), _wgslsmith_mod_u32(~abs(arg_2.x), 157499u)));
    var_0 = abs(_wgslsmith_sub_i32(var_2.x, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, -25916i, u_input.a.x), var_2.wyw), arg_1.x)) >> (~_wgslsmith_dot_vec3_u32(reverseBits(arg_2), vec3<u32>(34824u, 18288u, 87987u) & vec3<u32>(arg_2.x, arg_2.x, 1u)) % 32u));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 393f;
    var var_1 = ~vec2<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(5444u, func_1(Struct_1(1903f), u_input.a, vec3<u32>(4294967295u, 0u, 204u)), 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(107145u, 61017u), vec2<u32>(85790u, 118014u))), vec4<u32>(1u, 1u, 1u, 1u)));
    var_1 = countOneBits(~abs(vec2<u32>(_wgslsmith_clamp_u32(71440u, var_1.x, 0u), var_1.x)));
    var var_2 = abs(min(~(~vec4<u32>(var_1.x, 4294967295u, 4294967295u, var_1.x)), min(reverseBits(vec4<u32>(55146u, var_1.x, var_1.x, var_1.x)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 4294967295u, 58753u), vec4<u32>(var_1.x, 1u, 1u, 1u)), func_1(Struct_1(global0[_wgslsmith_index_u32(10328u, 6u)]), u_input.a, vec3<u32>(4294967295u, 85145u, 67328u)), var_1.x, var_1.x))));
    var var_3 = 0i;
    let var_4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -887f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 6u)]));
}

