struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: array<Struct_1, 1>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(u_input.c, 1u)];
    global0 = !vec2<bool>(all(vec2<bool>(true, true)), false);
    let var_1 = vec4<f32>(arg_0, _wgslsmith_f_op_f32(arg_0 + arg_0), arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    global1 = array<Struct_1, 1>();
    return global1[_wgslsmith_index_u32(var_0.a.x, 1u)];
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> bool {
    var var_0 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-550f + 1f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.x))))) * -1249f));
    global1 = array<Struct_1, 1>();
    var var_1 = arg_1;
    let var_2 = select(vec3<bool>(4294967295u <= _wgslsmith_dot_vec2_u32(arg_1.a | arg_1.a, ~vec2<u32>(arg_1.a.x, 4294967295u)), any(select(select(vec4<bool>(false, arg_3, arg_3, global0.x), vec4<bool>(arg_3, true, global0.x, false), true), !vec4<bool>(false, arg_3, true, true), !vec4<bool>(global0.x, global0.x, true, true))), all(!vec4<bool>(arg_3, false, global0.x, global0.x))), !vec3<bool>(global0.x, true, !(!global0.x)), !(true | all(vec2<bool>(true, global0.x))));
    var var_3 = vec4<u32>(var_1.a.x, 38359u, 16534u, ~0u);
    return false;
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec3<u32>) -> vec2<i32> {
    var var_0 = Struct_1(~vec2<u32>(0u, _wgslsmith_mult_u32(arg_1.a.x << (41736u % 32u), 0u)));
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~4294967295u), ~countOneBits(~(~u_input.c))), 1u)];
    let var_2 = !func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-611f, _wgslsmith_f_op_f32(arg_0 - arg_0), 1464f, _wgslsmith_f_op_f32(abs(arg_0))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 1230f, arg_0, arg_0) + vec4<f32>(1330f, 670f, -1882f, arg_0))))), arg_1, func_2(_wgslsmith_f_op_f32(-243f - _wgslsmith_f_op_f32(-1000f - arg_0))), true);
    let var_3 = vec4<bool>(!var_2, true, arg_2.x > var_0.a.x, global0.x);
    var var_4 = Struct_1(arg_1.a);
    return countOneBits(vec2<i32>(2147483647i, -(i32(-1i) * -77761i)) << (~countOneBits(~vec2<u32>(arg_2.x, 4294967295u)) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(u_input.b), _wgslsmith_dot_vec2_i32(max(~vec2<i32>(-2147483647i, 2147483647i) << (_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, 1u), vec2<u32>(0u, 97946u)) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(u_input.b, -2147483647i)), ~vec2<i32>(1i, u_input.b))), _wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.b, 22279i), func_1(842f, Struct_1(vec2<u32>(u_input.c, 70789u)), reverseBits(vec3<u32>(u_input.c, u_input.c, 1u))))), vec2<i32>(-65973i, u_input.b), ~reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.c), vec4<u32>(u_input.c, u_input.c, 1u, 17089u)) & countOneBits(vec4<u32>(11852u, 1u, 16918u, 0u))));
}

