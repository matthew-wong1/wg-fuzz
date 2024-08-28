struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: i32;

var<private> global2: array<vec4<bool>, 8> = array<vec4<bool>, 8>(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true));

var<private> global3: f32 = -273f;

var<private> global4: array<vec4<i32>, 2>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> u32 {
    global0 = 1u;
    let var_0 = arg_1;
    let var_1 = select(false, true, !all(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), true)));
    return 24149u;
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> bool {
    global0 = firstLeadingBit(84213u) >> (func_3(arg_0.a, arg_0, countOneBits(66278u)) % 32u);
    var var_0 = arg_0;
    global0 = ~_wgslsmith_add_u32(countOneBits(arg_1), firstLeadingBit(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(arg_1, 56850u, 4294967295u)), select(vec3<u32>(0u, arg_1, arg_1), vec3<u32>(arg_1, arg_1, 4294967295u), false))));
    global3 = -320f;
    var var_1 = ~vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(arg_1, arg_1, 4294967295u, arg_1), ~vec4<u32>(arg_1, arg_1, 65577u, arg_1)), ~vec4<u32>(0u, arg_1, 40387u, arg_1)), ~28873u, abs(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, 14162u), vec2<u32>(0u, arg_1)), 3285u)), 46955u);
    return _wgslsmith_add_i32(u_input.a.x, ~(-24864i)) >= ~(~_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 57632i), u_input.a) << (87166u % 32u));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec4<i32>, arg_3: Struct_1) -> u32 {
    let var_0 = arg_0;
    let var_1 = select(select(!select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), all(vec2<bool>(false, true))), vec3<bool>(func_2(arg_3, min(19451u, arg_1.x)), false, !any(vec4<bool>(true, true, true, true))), select(vec3<bool>(all(global2[_wgslsmith_index_u32(arg_1.x, 8u)]), false, true), vec3<bool>(true, true, true), !any(vec2<bool>(false, true)))), select(vec3<bool>(false, select(true, var_0.a < arg_0.a, any(vec2<bool>(true, false))), true), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false), true), vec3<bool>(select(true, any(vec2<bool>(true, true)), false), true || (arg_1.x < arg_1.x), true)), select(select(vec3<bool>(all(vec3<bool>(true, false, false)), all(vec4<bool>(false, false, true, true)), true), vec3<bool>(select(false, true, false), arg_3.a >= -136f, true), all(vec4<bool>(false, true, false, false)) | true), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true), vec3<bool>(true, false, false)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true)), select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), select(vec3<bool>(false, false, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true)), !(1u < arg_1.x))));
    global4 = array<vec4<i32>, 2>();
    global4 = array<vec4<i32>, 2>();
    var var_2 = vec2<i32>(-(~(-1i)), countOneBits(arg_2.x));
    return firstTrailingBit(arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(reverseBits(34798u), 1u, ~1553u), ~vec3<u32>(63783u, 70612u, 66086u)), 2421u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-780f * -944f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-328f * 1f), _wgslsmith_f_op_f32(abs(-1592f))))), -58150i, ~(vec3<u32>(func_1(Struct_1(-844f), vec3<u32>(52944u, 3463u, 15760u), global4[_wgslsmith_index_u32(61047u, 2u)], Struct_1(-802f)), ~51883u, ~30140u) ^ (~vec3<u32>(17812u, 4294967295u, 25487u) ^ select(vec3<u32>(4294967295u, 43678u, 14977u), vec3<u32>(68726u, 4294967295u, 1u), false))));
}

