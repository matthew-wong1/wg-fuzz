struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> vec2<i32> {
    let var_0 = Struct_1(~2147483647i);
    var var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-952f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-745f))))) + vec2<f32>(_wgslsmith_f_op_f32(1998f + -938f), 1403f))));
    let var_3 = arg_0;
    let var_4 = select(!vec4<bool>(any(select(vec4<bool>(false, true, false, true), vec4<bool>(arg_1, true, arg_1, false), vec4<bool>(arg_1, arg_1, true, arg_1))), select(true, any(vec3<bool>(false, true, true)), -11765i > var_1.a), (arg_1 && arg_1) || select(false, false, arg_1), !arg_1 && any(vec3<bool>(false, arg_1, true))), select(vec4<bool>(_wgslsmith_f_op_f32(-649f - 1051f) >= _wgslsmith_f_op_f32(abs(var_2.x)), arg_1, arg_1, arg_1 & false), vec4<bool>(arg_1, true || (0u != u_input.a), true, arg_1), true), all(vec2<bool>(true, select(arg_1, arg_1 || arg_1, true))));
    return vec2<i32>(~arg_0.a, 1i);
}

fn func_2(arg_0: Struct_1) -> bool {
    var var_0 = !vec4<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), false, (_wgslsmith_sub_i32(0i, global0.a) | (global0.a | -404i)) > ~(-2147483647i), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, false, false, true))));
    let var_1 = arg_0;
    let var_2 = _wgslsmith_mod_vec2_i32(-func_3(arg_0, var_0.x), reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_0.a, arg_0.a) | vec2<i32>(var_1.a, 40743i), countOneBits(vec2<i32>(-22259i, var_1.a)))) & vec2<i32>(~(~2147483647i), 63874i));
    let var_3 = _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(26228u, u_input.a) << (vec2<u32>(34039u, u_input.a) % vec2<u32>(32u)), abs(vec2<u32>(70255u, u_input.a))), _wgslsmith_add_u32(24422u, _wgslsmith_mult_u32(u_input.a, 9769u))), vec2<u32>((u_input.a << (64365u % 32u)) >> (u_input.a % 32u), ~u_input.a)), abs(~select(vec2<u32>(49282u, u_input.a), vec2<u32>(u_input.a, 33740u), any(vec4<bool>(false, true, false, var_0.x)))));
    var_0 = select(select(select(!select(vec4<bool>(false, false, var_0.x, var_0.x), vec4<bool>(false, var_0.x, var_0.x, false), false), select(select(vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false), var_0.x), !vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), all(vec4<bool>(true, false, var_0.x, var_0.x))), u_input.a > ~30681u), !vec4<bool>(var_0.x, true, true, true), _wgslsmith_div_i32(min(arg_0.a, -9955i), var_1.a) == -countOneBits(-2147483647i)), !(!vec4<bool>(true, false, false, var_2.x >= 2147483647i)), var_0.x);
    return !(!var_0.x);
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: u32) -> Struct_1 {
    var var_0 = func_2(Struct_1(i32(-1i) * -23415i));
    let var_1 = Struct_1(min(~40953i, _wgslsmith_dot_vec4_i32(-vec4<i32>(22517i, global0.a, arg_0, 0i), _wgslsmith_div_vec4_i32(vec4<i32>(global0.a, -9194i, -1i, global0.a), vec4<i32>(arg_0, -13394i, arg_0, 21506i)))));
    var var_2 = Struct_1(global0.a);
    var_0 = !(!all(vec3<bool>(func_2(var_1), true, true)));
    let var_3 = firstTrailingBit(vec2<u32>(_wgslsmith_add_u32(arg_1, arg_1), ~_wgslsmith_mod_u32(8312u, _wgslsmith_add_u32(86864u, 0u))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_dot_vec3_i32(select(_wgslsmith_div_vec3_i32(-vec3<i32>(global0.a, 1i, -49454i), firstTrailingBit(vec3<i32>(1i, -20161i, 1i))), vec3<i32>(global0.a, -12416i, global0.a) ^ -vec3<i32>(global0.a, global0.a, global0.a), true), -_wgslsmith_div_vec3_i32(~vec3<i32>(2147483647i, -50877i, global0.a), select(vec3<i32>(global0.a, 1i, 15425i), vec3<i32>(global0.a, global0.a, global0.a), true))), 47724u, 88786u);
    global0 = func_1(_wgslsmith_dot_vec2_i32(-(vec2<i32>(-5624i, var_0.a) >> (vec2<u32>(4294967295u, 79489u) % vec2<u32>(32u))), firstLeadingBit(vec2<i32>(-6692i, var_0.a))) >> (51677u % 32u), ~((1u >> (u_input.a % 32u)) & u_input.a), ~_wgslsmith_sub_u32(62912u >> (abs(u_input.a) % 32u), min(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, 19116u), vec3<u32>(4294967295u, u_input.a, 1u)), ~u_input.a)));
    var var_1 = Struct_1(-var_0.a);
    var_1 = var_0;
    global0 = func_1(_wgslsmith_div_i32(-24410i, ~global0.a), ~_wgslsmith_div_u32(u_input.a, u_input.a), _wgslsmith_mod_u32(_wgslsmith_mult_u32(~(~u_input.a), ~u_input.a), ~(~22970u)));
    var_1 = var_0;
    var var_2 = Struct_1(-_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(~vec2<i32>(2147483647i, global0.a), ~vec2<i32>(16738i, var_0.a)), vec2<i32>(~26440i, var_1.a)));
    let var_3 = -498f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_3))), _wgslsmith_f_op_f32(var_3 * _wgslsmith_f_op_f32(var_3 * var_3))))), vec2<f32>(-538f, 569f), ~global0.a);
}

