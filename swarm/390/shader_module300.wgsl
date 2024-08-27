struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: u32,
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

var<private> global0: array<bool, 13>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> u32 {
    let var_0 = ~(~vec3<u32>(u_input.e, _wgslsmith_div_u32(~0u, ~u_input.b), u_input.b));
    global0 = array<bool, 13>();
    var var_1 = vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_sub_u32(4294967295u & var_0.x, var_0.x), var_0.x), 13u)], (u_input.d.x != 32231i) | any(select(!vec2<bool>(global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(var_0.x, 13u)]), select(vec2<bool>(true, false), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 13u)]), global0[_wgslsmith_index_u32(u_input.e, 13u)]), global0[_wgslsmith_index_u32(31837u, 13u)] && global0[_wgslsmith_index_u32(1u, 13u)])));
    var var_2 = -143f;
    let var_3 = u_input.c;
    return var_0.x;
}

fn func_2() -> bool {
    global0 = array<bool, 13>();
    var var_0 = Struct_1(true);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -348f))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(389f)), _wgslsmith_f_op_f32(f32(-1f) * -100f)))) * _wgslsmith_f_op_f32(-373f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-276f))), -1000f))));
    var var_2 = Struct_1(false);
    let var_3 = vec4<u32>(~u_input.e, ~_wgslsmith_div_u32(min(~u_input.e, ~u_input.e), min(0u, ~u_input.b)), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.b, 0u), 1u), u_input.b), abs(vec2<u32>(~u_input.b, u_input.b ^ 4294967295u))), max(~u_input.b, func_3()));
    return all(!(!select(select(vec3<bool>(true, true, true), vec3<bool>(var_2.a, global0[_wgslsmith_index_u32(15577u, 13u)], global0[_wgslsmith_index_u32(7569u, 13u)]), vec3<bool>(var_0.a, true, global0[_wgslsmith_index_u32(1692u, 13u)])), select(vec3<bool>(false, false, var_2.a), vec3<bool>(false, var_0.a, true), vec3<bool>(var_0.a, true, global0[_wgslsmith_index_u32(u_input.e, 13u)])), !vec3<bool>(var_2.a, var_0.a, false))));
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> vec3<bool> {
    return select(select(vec3<bool>(true, true, true), vec3<bool>(true, all(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.e, 13u)])), !(!global0[_wgslsmith_index_u32(100004u, 13u)])), func_2()), !select(vec3<bool>(all(vec4<bool>(true, global0[_wgslsmith_index_u32(43384u, 13u)], false, false)), arg_0.a, all(vec2<bool>(true, global0[_wgslsmith_index_u32(2477u, 13u)]))), select(vec3<bool>(false, true, global0[_wgslsmith_index_u32(4294967295u, 13u)]), select(vec3<bool>(false, global0[_wgslsmith_index_u32(73451u, 13u)], global0[_wgslsmith_index_u32(4294967295u, 13u)]), vec3<bool>(false, arg_0.a, true), vec3<bool>(arg_0.a, arg_0.a, false)), true), false), !(!(!vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.e, 13u)], false))));
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: vec2<f32>) -> vec3<i32> {
    let var_0 = Struct_1(true && ((_wgslsmith_mult_u32(1u, u_input.e) << (u_input.b % 32u)) <= _wgslsmith_mult_u32(u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(18234u, u_input.b, u_input.b, 1u), vec4<u32>(0u, 0u, u_input.b, 4294967295u)))));
    var var_1 = Struct_1(var_0.a);
    var var_2 = select(!vec2<bool>(all(!vec3<bool>(var_0.a, var_0.a, var_0.a)), true), !(!(!select(vec2<bool>(true, arg_1), vec2<bool>(global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(44058u, 13u)]), true))), select(!(!vec2<bool>(arg_1, arg_1)), vec2<bool>(func_2(), func_2()), select(vec2<bool>(false, true), !vec2<bool>(arg_1, true), true)));
    var var_3 = vec4<bool>(!any(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, var_1.a, var_0.a), vec4<bool>(var_2.x, true, var_2.x, false))), !var_2.x, !any(select(vec3<bool>(false, arg_1, global0[_wgslsmith_index_u32(20032u, 13u)]), !vec3<bool>(false, false, arg_1), vec3<bool>(var_2.x, arg_1, true))), func_1(var_0, ~(~(~11855u))).x);
    let var_4 = var_0;
    return -u_input.d.yyy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.d.zzy;
    var_0 = func_4(u_input.c, any(select(func_1(Struct_1(global0[_wgslsmith_index_u32(4294967295u, 13u)]), 53261u), vec3<bool>(true, true, true), global0[_wgslsmith_index_u32(u_input.b, 13u)])), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-362f, -1201f)), vec2<f32>(610f, -1670f)))))));
    var var_1 = Struct_1(global0[_wgslsmith_index_u32(reverseBits(abs(_wgslsmith_mod_u32(68882u, 2671u)) << (~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 16502u), vec2<u32>(4294967295u, u_input.b)) % 32u)), 13u)]);
    var var_2 = Struct_1(global0[_wgslsmith_index_u32(u_input.b, 13u)]);
    var var_3 = !var_2.a;
    let var_4 = vec3<bool>(false, false, !var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_clamp_u32(60296u, ~0u, u_input.e)));
}

