struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
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

var<private> global0: vec2<u32> = vec2<u32>(4294967295u, 54275u);

var<private> global1: array<Struct_1, 16>;

var<private> global2: Struct_1 = Struct_1(1391f);

var<private> global3: array<u32, 2> = array<u32, 2>(69725u, 4294967295u);

var<private> global4: array<vec3<bool>, 32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2() -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(global0.x, 16u)];
    var var_1 = _wgslsmith_f_op_f32(floor(-1072f));
    var_1 = global2.a;
    var var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -297f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.a), var_0.a, true)))))));
    var var_3 = _wgslsmith_div_f32(global2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1768f, -1646f)))) <= var_0.a;
    return Struct_1(var_0.a);
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = vec3<u32>(~global0.x, min((_wgslsmith_div_u32(1u, 73508u) >> (global3[_wgslsmith_index_u32(0u, 2u)] % 32u)) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global0.x, global3[_wgslsmith_index_u32(u_input.b, 2u)]), vec3<u32>(u_input.b, global0.x, global0.x) << (vec3<u32>(0u, 0u, u_input.b) % vec3<u32>(32u))), 16267u), global0.x);
    let var_1 = func_2();
    global0 = vec2<u32>(u_input.b, ~firstLeadingBit(var_0.x));
    var var_2 = firstLeadingBit(firstLeadingBit(~(u_input.b << (1u % 32u)))) ^ 58886u;
    global0 = _wgslsmith_mult_vec2_u32(abs(max(vec2<u32>(abs(0u), _wgslsmith_dot_vec2_u32(var_0.zx, var_0.zx)), ~var_0.zy)), var_0.yz);
    return select(vec2<bool>(select(true, true, (0u <= u_input.b) && (u_input.a >= u_input.a)), true), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), any(select(vec2<bool>(true, false), vec2<bool>(true, true), false))), !select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), true), select(!select(vec2<bool>(true, false), vec2<bool>(false, true), true), select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(true, false), true), true), all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false))))), false);
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: i32) -> f32 {
    let var_0 = all(!select(vec2<bool>(true, !arg_1), !(!vec2<bool>(arg_1, arg_1)), func_3(_wgslsmith_f_op_f32(min(167f, global2.a)), Struct_1(arg_0.a), func_2())));
    global1 = array<Struct_1, 16>();
    global0 = vec2<u32>(127267u, reverseBits(~(1u >> (global3[_wgslsmith_index_u32(firstLeadingBit(32203u), 2u)] % 32u))));
    var var_1 = !(!(!select(!vec4<bool>(arg_1, arg_1, arg_1, false), !vec4<bool>(arg_1, true, false, arg_1), any(vec4<bool>(true, var_0, false, arg_1)))));
    global0 = firstLeadingBit(~abs(min(firstTrailingBit(vec2<u32>(1u, 4294967295u)), vec2<u32>(0u, 20092u))));
    return _wgslsmith_f_op_f32(-1f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<u32>(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(0u, u_input.b) << (vec2<u32>(29530u, global0.x) % vec2<u32>(32u)), ~vec2<u32>(0u, 4294967295u)), ~vec2<u32>(global0.x, 1u)), 2u)], 4294967295u);
    let var_0 = u_input.a;
    global3 = array<u32, 2>();
    global4 = array<vec3<bool>, 32>();
    global2 = Struct_1(-2925f);
    global3 = array<u32, 2>();
    var var_1 = _wgslsmith_f_op_f32(-global2.a);
    global2 = Struct_1(_wgslsmith_f_op_f32(107f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(31856u, 16u)], true, var_0))), _wgslsmith_f_op_f32(-global2.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.a)))))));
}

