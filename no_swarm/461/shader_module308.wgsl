struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 29>;

var<private> global1: vec3<u32>;

var<private> global2: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec4<u32>(15863u, 24565u, 23042u, 34181u), vec2<f32>(-506f, 485f)), Struct_1(vec4<u32>(72595u, 1u, 15042u, 28006u), vec2<f32>(2399f, 764f)), Struct_1(vec4<u32>(4294967295u, 79267u, 4294967295u, 57866u), vec2<f32>(308f, -638f)), Struct_1(vec4<u32>(4294967295u, 36332u, 25484u, 4294967295u), vec2<f32>(-614f, -1507f)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>) -> vec3<i32> {
    var var_0 = global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_add_u32(reverseBits(_wgslsmith_dot_vec3_u32(u_input.a.zyy, ~vec3<u32>(u_input.a.x, 24420u, u_input.a.x))), global1.x)), 4u)];
    var var_1 = arg_0;
    let var_2 = u_input.b;
    return vec3<i32>(var_2.x, max(_wgslsmith_dot_vec4_i32(vec4<i32>(reverseBits(global0[_wgslsmith_index_u32(1u, 29u)]), var_2.x, i32(-1i) * -2147483647i, i32(-1i) * -47066i), vec4<i32>(var_2.x, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(var_1.a, vec4<u32>(0u, 61388u, 94675u, u_input.d)), 29u)], ~15046i, -20283i)), global0[_wgslsmith_index_u32(firstLeadingBit(0u), 29u)]), global0[_wgslsmith_index_u32(var_0.a.x, 29u)]);
}

fn func_2() -> bool {
    var var_0 = -firstTrailingBit(-(vec4<i32>(u_input.c.x, global0[_wgslsmith_index_u32(1u, 29u)], 19650i, global0[_wgslsmith_index_u32(global1.x, 29u)]) << (vec4<u32>(5511u, 27366u, 67224u, 4294967295u) % vec4<u32>(32u)))) & vec4<i32>(2147483647i, firstTrailingBit(_wgslsmith_div_i32(~global0[_wgslsmith_index_u32(global1.x, 29u)], ~u_input.b.x)), _wgslsmith_dot_vec3_i32(func_3(Struct_1(vec4<u32>(4294967295u, u_input.a.x, 1u, 4294967295u), vec2<f32>(435f, -1235f)), vec3<f32>(-197f, 630f, -1228f)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, -52367i, global0[_wgslsmith_index_u32(25053u, 29u)]), vec3<i32>(global0[_wgslsmith_index_u32(global1.x, 29u)], -23251i, 0i), vec3<i32>(0i, global0[_wgslsmith_index_u32(global1.x, 29u)], u_input.b.x))) >> (~global1.x % 32u), ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 15911i), u_input.c));
    global1 = u_input.a.xxx;
    global0 = array<i32, 29>();
    let var_1 = true;
    let var_2 = vec4<u32>(~global1.x, _wgslsmith_div_u32(min(0u, ~u_input.d), 0u), _wgslsmith_mod_u32(4294967295u, u_input.a.x), global1.x) << (countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(17349u & global1.x, ~36697u, global1.x, 31552u), vec4<u32>(abs(4294967295u), abs(787u), 1u, firstTrailingBit(4294967295u)))) % vec4<u32>(32u));
    return select(any(!vec2<bool>(false == var_1, any(vec4<bool>(false, var_1, true, var_1)))), any(vec4<bool>(true, true, var_1, true)), all(select(vec4<bool>(any(vec2<bool>(false, var_1)), !var_1, !var_1, !var_1), select(vec4<bool>(false, false, var_1, false), select(vec4<bool>(false, false, true, var_1), vec4<bool>(var_1, var_1, var_1, false), false), select(vec4<bool>(true, var_1, var_1, false), vec4<bool>(false, false, true, false), true)), vec4<bool>(true, !var_1, all(vec4<bool>(false, var_1, var_1, var_1)), var_1))));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> bool {
    global2 = array<Struct_1, 4>();
    var var_0 = global0[_wgslsmith_index_u32(~(~1u), 29u)] >> (arg_1 % 32u);
    let var_1 = !(func_2() && (true && func_2()));
    global0 = array<i32, 29>();
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(arg_2, arg_0.b.x), _wgslsmith_f_op_f32(ceil(arg_0.b.x)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, arg_2) - vec2<f32>(arg_0.b.x, 640f)))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 4>();
    var var_0 = global2[_wgslsmith_index_u32(1u, 4u)];
    var var_1 = vec3<bool>(any(!vec3<bool>(func_1(Struct_1(var_0.a, var_0.b), 4294967295u, var_0.b.x), any(vec4<bool>(true, true, false, false)), true)), true, any(vec4<bool>(true, false, !func_2(), true)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.x, u_input.a.wz, var_0.a.x, 21838i ^ global0[_wgslsmith_index_u32(11534u, 29u)], 51091u);
}

