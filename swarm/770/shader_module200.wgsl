struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 6> = array<u32, 6>(58981u, 1u, 4294967295u, 10668u, 3153u, 80651u);

var<private> global1: Struct_1 = Struct_1(2480u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = vec2<f32>(665f, 700f);
    let var_1 = Struct_2(select(vec2<bool>(false, true), vec2<bool>(true, true), all(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)))), 1i, Struct_1(~countOneBits(reverseBits(4294967295u))), Struct_1(firstLeadingBit(countOneBits(u_input.a.x))), vec4<u32>(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(4294967295u, global1.a, global0[_wgslsmith_index_u32(4294967295u, 6u)])), reverseBits(u_input.a.xyz | u_input.a.zzz)), 32806u, firstLeadingBit(1u), 4294967295u >> (u_input.a.x % 32u)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1924f, -634f, -925f, -1082f) + vec4<f32>(623f, 629f, var_0.x, 515f)) * vec4<f32>(var_0.x, 1090f, -285f, var_0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -509f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(var_0.x)))), select(select(!vec4<bool>(true, false, var_1.a.x, false), !vec4<bool>(var_1.a.x, false, var_1.a.x, var_1.a.x), true), vec4<bool>(var_1.a.x, select(var_1.a.x, true, false), all(vec4<bool>(true, false, var_1.a.x, false)), true), var_1.a.x))));
    global1 = var_1.c;
    global0 = array<u32, 6>();
    return _wgslsmith_dot_vec2_u32(u_input.a.yy, ~vec2<u32>(var_1.d.a, ~1u));
}

fn func_2() -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(2014f, 919f)))) - -428f))));
    let var_1 = -vec2<i32>(u_input.b.x, u_input.b.x);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-506f - 1426f));
    var var_3 = func_3();
    let var_4 = vec4<u32>(2426u, 4294967295u, ((~global0[_wgslsmith_index_u32(u_input.a.x, 6u)] | global1.a) << (func_3() % 32u)) ^ ~global1.a, 1u);
    return vec4<u32>(u_input.a.x, ~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec3_u32(u_input.a.zyw, var_4.zyy), select(0u, 1u, true)), _wgslsmith_dot_vec3_u32(var_4.wwz, firstLeadingBit(vec3<u32>(22133u, u_input.a.x, global1.a)))), ~_wgslsmith_mod_u32(u_input.a.x, global1.a), _wgslsmith_sub_u32(_wgslsmith_mod_u32(4294967295u, abs(global1.a)), global1.a));
}

fn func_4(arg_0: bool, arg_1: vec4<u32>) -> Struct_1 {
    global0 = array<u32, 6>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-209f, 541f, arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(231f - -116f))))) - _wgslsmith_f_op_f32(f32(-1f) * -1550f));
    global1 = Struct_1(8060u);
    let var_1 = Struct_1(45035u);
    global1 = var_1;
    return var_1;
}

fn func_1(arg_0: f32, arg_1: bool) -> Struct_1 {
    global1 = func_4(true, ~_wgslsmith_sub_vec4_u32(u_input.a, func_2()));
    let var_0 = arg_1;
    var var_1 = var_0;
    var_1 = false;
    let var_2 = max(1i, _wgslsmith_clamp_i32(-u_input.b.x, 1i, min(_wgslsmith_clamp_i32(~5513i, select(u_input.b.x, -2147483647i, var_0), u_input.b.x), ~(1i ^ u_input.b.x))));
    return Struct_1(global1.a);
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> bool {
    let var_0 = 50519i;
    let var_1 = arg_3;
    var var_2 = !vec3<bool>(var_1.a.x, select(true, !arg_2.a.x, false == !arg_2.a.x), false);
    var var_3 = arg_3.a;
    let var_4 = -297f;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<bool>(false, all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), false, false), vec4<bool>(!(global0[_wgslsmith_index_u32(261u, 6u)] <= abs(u_input.a.x)), true, !func_5(u_input.a.x, func_1(-1000f, false), Struct_2(vec2<bool>(true, true), u_input.b.x, Struct_1(39231u), Struct_1(31475u), u_input.a), Struct_2(vec2<bool>(false, false), u_input.b.x, Struct_1(38462u), Struct_1(global1.a), u_input.a)), true), !select(vec4<bool>(true, all(vec4<bool>(false, true, false, false)), true, true), vec4<bool>(any(vec3<bool>(true, false, false)), true, true, true), !select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-249f, -385f, 625f, -1902f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1401f, -736f, 1000f, -1178f))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(955f, -1612f, -369f, -1000f), vec4<f32>(-880f, -2154f, 1375f, 983f))))))), ~u_input.a.xyy);
}

