struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1808f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.c, 6u)])) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(arg_0.c, 6u)], -1169f) + vec2<f32>(global0[_wgslsmith_index_u32(arg_0.c, 6u)], global0[_wgslsmith_index_u32(41744u, 6u)])), vec2<f32>(global0[_wgslsmith_index_u32(29609u, 6u)], global0[_wgslsmith_index_u32(4294967295u, 6u)]))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(88435u, 6u)], _wgslsmith_f_op_f32(-1927f * 1742f))))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 6u)], var_0.x)) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1379f, -124f), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(arg_0.a.x, 6u)], -312f) * vec2<f32>(global0[_wgslsmith_index_u32(arg_0.a.x, 6u)], var_0.x))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1238f, var_0.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0[_wgslsmith_index_u32(u_input.b, 6u)], global0[_wgslsmith_index_u32(1u, 6u)]))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1038f, global0[_wgslsmith_index_u32(83625u, 6u)])))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-135f, var_0.x)))))));
    var var_1 = arg_0.b;
    var var_2 = _wgslsmith_add_u32(~abs(_wgslsmith_dot_vec4_u32(arg_0.a, vec4<u32>(u_input.b, 16235u, u_input.b, arg_0.c))) >> (arg_0.c % 32u), 0u);
    let var_3 = arg_0.b;
    return 2147483647i;
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(59513u, 6u)], global0[_wgslsmith_index_u32(arg_2.c, 6u)]), _wgslsmith_f_op_f32(abs(777f)))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-1270f)), 661f)), var_0.x))));
    let var_2 = _wgslsmith_mod_u32(1u, ~arg_0.x);
    var var_3 = _wgslsmith_mod_i32(-(func_3(arg_2) | 41125i), abs(1i));
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(min(-1678f, _wgslsmith_f_op_f32(-var_0.x))), var_0.x);
    return arg_2;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec3<i32>) -> u32 {
    var var_0 = arg_1;
    let var_1 = vec4<bool>(func_2(~vec4<u32>(arg_1.a.x, var_0.a.x, arg_1.c, u_input.a.x) << (_wgslsmith_mod_vec4_u32(arg_1.a, ~var_0.a) % vec4<u32>(32u)), arg_1, Struct_1(select(vec4<u32>(4294967295u, u_input.a.x, arg_1.a.x, 0u), var_0.a, vec4<bool>(var_0.b, var_0.b, var_0.b, false)), any(select(vec3<bool>(false, arg_1.b, false), vec3<bool>(false, var_0.b, false), false)), arg_1.a.x)).b, any(vec2<bool>(select(all(vec3<bool>(false, false, true)), true, true), false)), !all(select(!vec2<bool>(true, arg_1.b), vec2<bool>(true, false), !vec2<bool>(false, arg_1.b))), var_0.b);
    var_0 = arg_1;
    let var_2 = vec3<u32>(29857u, min(29726u, _wgslsmith_sub_u32(firstLeadingBit(~arg_1.a.x), u_input.a.x)), arg_1.c);
    let var_3 = Struct_1(vec4<u32>(73320u, var_0.c | u_input.b, _wgslsmith_mod_u32(var_0.c >> (1u % 32u), ~0u), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 1u, arg_1.c), vec4<u32>(var_2.x, u_input.a.x, 45032u, var_0.c)))), !var_0.b, 1u);
    return u_input.b;
}

fn func_1(arg_0: vec3<i32>) -> u32 {
    var var_0 = 1347f >= global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(min(1u, u_input.b), u_input.b), 21602u), 6u)];
    var var_1 = 1u;
    global0 = array<f32, 6>();
    global0 = array<f32, 6>();
    var_0 = true;
    return ~_wgslsmith_add_u32(u_input.a.x, countOneBits(func_4(-4331i, func_2(vec4<u32>(27769u, u_input.b, u_input.b, u_input.b), Struct_1(vec4<u32>(u_input.b, 4294967295u, 50843u, u_input.b), true, 54935u), Struct_1(vec4<u32>(4036u, u_input.b, u_input.b, 1u), false, 0u)), _wgslsmith_sub_vec3_i32(arg_0, arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(false, !(!all(vec3<bool>(true, true, true))));
    global0 = array<f32, 6>();
    global0 = array<f32, 6>();
    var var_1 = !var_0.x;
    var var_2 = vec3<u32>(firstLeadingBit(7465u), _wgslsmith_mod_u32(9948u, reverseBits(~(~u_input.b))), u_input.a.x);
    var var_3 = vec3<u32>(_wgslsmith_div_u32(max(8543u, ~u_input.b & _wgslsmith_sub_u32(1u, 0u)), u_input.b), _wgslsmith_div_u32(~select(4294967295u, u_input.b | 76554u, true), 19173u), ~firstTrailingBit(abs(func_1(vec3<i32>(-29060i, -2147483647i, 20576i)))));
    var var_4 = Struct_1(vec4<u32>(28769u, u_input.b, var_2.x >> (30863u % 32u), 1u), !(var_0.x & var_0.x), abs(~23691u << (u_input.b % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(32670i);
}

