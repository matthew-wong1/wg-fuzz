struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(14587i);

var<private> global2: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(-47116i), Struct_1(24799i), Struct_1(16740i), Struct_1(155i), Struct_1(0i), Struct_1(2298i));

var<private> global3: bool;

var<private> global4: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> i32 {
    let var_0 = vec2<bool>(!(-1571f < _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1573f - 358f), 865f, false))), true);
    global3 = any(select(select(vec3<bool>(true, true, all(var_0)), vec3<bool>(var_0.x, select(var_0.x, var_0.x, var_0.x), u_input.a == 0u), false), !select(!vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(false, var_0.x, false), var_0.x), true));
    global3 = true;
    var var_1 = select(select(!vec4<bool>(true, true, true, global1.a < global1.a), select(select(!vec4<bool>(var_0.x, var_0.x, var_0.x, true), select(vec4<bool>(true, false, false, false), vec4<bool>(var_0.x, true, true, false), vec4<bool>(true, var_0.x, var_0.x, false)), true), !select(vec4<bool>(var_0.x, false, true, true), vec4<bool>(var_0.x, var_0.x, false, true), vec4<bool>(true, var_0.x, var_0.x, var_0.x)), any(!vec3<bool>(false, true, var_0.x))), var_0.x), select(select(vec4<bool>(all(vec3<bool>(var_0.x, var_0.x, false)), select(true, var_0.x, var_0.x), var_0.x, true), vec4<bool>(!var_0.x, any(vec3<bool>(var_0.x, false, false)), all(vec3<bool>(var_0.x, true, false)), var_0.x), select(!vec4<bool>(var_0.x, false, var_0.x, false), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, true, var_0.x, var_0.x), var_0.x), true)), vec4<bool>(true, true, true, true), false), !(!(select(global4.a, global1.a, true) == 0i)));
    var var_2 = -12036i;
    return select(1i, firstLeadingBit(_wgslsmith_clamp_i32(~(global4.a << (u_input.a % 32u)), _wgslsmith_mod_i32(~global1.a, max(-41086i, -2147483647i)), -1i)), !var_1.x);
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -418f)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1f)));
    var var_2 = ~73721u;
    global4 = Struct_1(func_3());
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1128f, -2133f)) + -431f);
    return global2[_wgslsmith_index_u32(u_input.a, 6u)];
}

fn func_1(arg_0: i32) -> f32 {
    global3 = true;
    global1 = func_2();
    var var_0 = Struct_1(2147483647i);
    let var_1 = select(vec3<bool>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -61590i, -2475i, arg_0) & vec4<i32>(global4.a, global0.a, 2147483647i, var_0.a), vec4<i32>(global1.a, -1i, var_0.a, global0.a)) == 1213i, true, abs(4262u) > u_input.a), vec3<bool>(((global1.a >= var_0.a) | (u_input.a != u_input.a)) | all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), false)), true, true), false);
    let var_2 = func_2();
    return _wgslsmith_f_op_f32(f32(-1f) * -1030f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(global1.a)) - -975f), _wgslsmith_f_op_f32(min(-469f, -1000f)), 1f);
    global1 = global2[_wgslsmith_index_u32(firstLeadingBit(~_wgslsmith_mult_u32(17119u, countOneBits(96680u))) ^ _wgslsmith_clamp_u32(~u_input.a, min(u_input.a, _wgslsmith_add_u32(min(u_input.a, 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(62668u, 57750u)))), u_input.a), 6u)];
    global0 = global2[_wgslsmith_index_u32(abs(3390u), 6u)];
    let x = u_input.a;
    s_output = StorageBuffer(~abs(min(vec2<u32>(73600u, 13417u), min(vec2<u32>(35558u, 4294967295u), vec2<u32>(u_input.a, 105735u)))));
}

