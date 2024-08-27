struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
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

var<private> global0: vec3<i32> = vec3<i32>(-33092i, 1i, 2147483647i);

var<private> global1: f32;

var<private> global2: array<Struct_2, 7>;

var<private> global3: array<vec3<f32>, 1>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> vec3<i32> {
    let var_0 = global0.x;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -941f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1))) * 1000f)));
    var var_2 = ~_wgslsmith_mult_u32(52049u, arg_0.a);
    let var_3 = ~(~_wgslsmith_div_u32(min(~u_input.b.x, 46986u), reverseBits(1u)));
    let var_4 = arg_0;
    return ~vec3<i32>(abs(_wgslsmith_clamp_i32(global0.x, global0.x, -3198i) << (1u % 32u)), global0.x, 6676i);
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    global3 = array<vec3<f32>, 1>();
    var var_0 = Struct_1(_wgslsmith_div_u32(u_input.c, ~(~u_input.b.x)));
    global3 = array<vec3<f32>, 1>();
    global0 = ~func_3(Struct_1(53980u), 448f);
    let var_1 = Struct_1(71090u);
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec3<u32>, arg_3: Struct_2) -> f32 {
    global2 = array<Struct_2, 7>();
    var var_0 = vec3<i32>(-1i, global0.x, -arg_3.a.x);
    let var_1 = arg_0;
    return 1112f;
}

fn func_1(arg_0: Struct_2) -> u32 {
    var var_0 = arg_0;
    let var_1 = ~u_input.a;
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_4(func_2(global3[_wgslsmith_index_u32(~u_input.a.x, 1u)]), ~var_1.x, u_input.b, Struct_2(arg_0.a))), 2511f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -322f)));
    let var_3 = vec2<i32>(-37560i, global0.x);
    let var_4 = -_wgslsmith_add_i32(max(_wgslsmith_add_i32(arg_0.a.x, 90750i) << (firstLeadingBit(u_input.b.x) % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.x, arg_0.a.x, global0.x, -2147483647i) & arg_0.a, -vec4<i32>(var_0.a.x, -2147483647i, var_0.a.x, -37703i))), ~(2147483647i << (_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, 57480u, u_input.b.x), u_input.b) % 32u)));
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 7>();
    var var_0 = !(!vec2<bool>(false, all(vec2<bool>(true, true))));
    var var_1 = Struct_1(_wgslsmith_sub_u32(_wgslsmith_div_u32(func_1(global2[_wgslsmith_index_u32(~u_input.c, 7u)]), max(0u << (u_input.b.x % 32u), _wgslsmith_div_u32(u_input.b.x, u_input.c))), _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.b.x, u_input.b.x))));
    let var_2 = select(!select(!select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(false, true, var_0.x)), vec3<bool>(true, all(vec3<bool>(var_0.x, var_0.x, var_0.x)), u_input.c != 0u), select(vec3<bool>(false, false, var_0.x), select(vec3<bool>(false, true, var_0.x), vec3<bool>(true, var_0.x, false), false), select(vec3<bool>(false, var_0.x, true), vec3<bool>(var_0.x, var_0.x, true), var_0.x))), vec3<bool>(!all(vec3<bool>(true, false, true)), !(_wgslsmith_mod_u32(27317u, 84527u) <= firstTrailingBit(4294967295u)), all(!select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x), var_0.x))), var_0.x);
    let var_3 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(abs(~(~4294967295u)), 1u), func_2(global3[_wgslsmith_index_u32(u_input.a.x, 1u)]).a << ((func_1(Struct_2(vec4<i32>(global0.x, 0i, 32893i, -11320i))) | u_input.b.x) % 32u), u_input.c), 7u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1139f) - -1067f));
}

