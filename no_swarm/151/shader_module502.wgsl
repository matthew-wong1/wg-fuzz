struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_3 {
    a: u32,
    b: u32,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = -abs(min(~(~0i), abs(abs(-5624i))));
    global0 = array<bool, 31>();
    global0 = array<bool, 31>();
    var var_1 = vec2<bool>(false, true);
    var var_2 = !(!select(!vec4<bool>(var_1.x, false, var_1.x, false), select(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 31u)], false, var_1.x, false), vec4<bool>(false, true, false, true), false), vec4<bool>(var_1.x, global0[_wgslsmith_index_u32(u_input.b, 31u)], global0[_wgslsmith_index_u32(u_input.a, 31u)], true), u_input.c >= 6399u), select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 31u)], true, true, true), vec4<bool>(true, var_1.x, global0[_wgslsmith_index_u32(0u, 31u)], var_1.x), !vec4<bool>(var_1.x, true, false, false))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1f, _wgslsmith_div_f32(590f, _wgslsmith_div_f32(-1000f, 1141f)))) - _wgslsmith_f_op_f32(ceil(1515f)));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(func_3());
    let var_1 = ~vec4<u32>(0u, 14734u, abs(30458u), abs(~u_input.b));
    global0 = array<bool, 31>();
    global0 = array<bool, 31>();
    global0 = array<bool, 31>();
    return ~var_1.xw;
}

fn func_1(arg_0: i32) -> vec3<u32> {
    var var_0 = firstTrailingBit(firstTrailingBit(_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(4294967295u, 39959u), func_2(vec2<i32>(arg_0, arg_0), Struct_1(global0[_wgslsmith_index_u32(u_input.a, 31u)], vec3<i32>(-746i, arg_0, arg_0)), Struct_2(vec2<f32>(1000f, 734f), global0[_wgslsmith_index_u32(u_input.b, 31u)]), Struct_2(vec2<f32>(108f, 1649f), true))), ~vec2<u32>(u_input.c, 22323u) & (vec2<u32>(u_input.b, 0u) << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))))));
    let var_1 = select(vec3<i32>(arg_0, -arg_0, _wgslsmith_mod_i32(-(arg_0 >> (u_input.b % 32u)), _wgslsmith_clamp_i32(-arg_0, arg_0, arg_0))), vec3<i32>(arg_0, arg_0, 1i), !vec3<bool>(true, true, any(!vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 31u)]))));
    var var_2 = ~vec2<u32>(_wgslsmith_sub_u32(~var_0.x, reverseBits(1u)), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 88264u | u_input.b, 4294967295u), ~(~vec3<u32>(15644u, 0u, 1u))));
    var_2 = abs(vec2<u32>(_wgslsmith_mult_u32(select(0u, min(u_input.b, 109191u), true), func_2(-var_1.xy, Struct_1(global0[_wgslsmith_index_u32(38737u, 31u)], vec3<i32>(0i, arg_0, 2147483647i)), Struct_2(vec2<f32>(-1058f, 979f), global0[_wgslsmith_index_u32(var_2.x, 31u)]), Struct_2(vec2<f32>(666f, -1000f), true)).x), abs(var_0.x)));
    var_0 = _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(0u, var_2.x, var_2.x), ~4294967295u), ~func_2(var_1.yz, Struct_1(global0[_wgslsmith_index_u32(1u, 31u)], var_1), Struct_2(vec2<f32>(-212f, -2841f), global0[_wgslsmith_index_u32(4294967295u, 31u)]), Struct_2(vec2<f32>(-648f, -654f), false))), vec2<u32>(~(~var_0.x), ~_wgslsmith_add_u32(u_input.a, u_input.a))), ~(vec2<u32>(_wgslsmith_mod_u32(22787u, var_0.x), ~12538u) | vec2<u32>(1u >> (var_2.x % 32u), var_2.x)));
    return ~vec3<u32>(_wgslsmith_dot_vec2_u32(min(firstLeadingBit(vec2<u32>(var_2.x, 102965u)), abs(vec2<u32>(91636u, u_input.a))), max(vec2<u32>(var_2.x, 1u) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), vec2<u32>(var_0.x, var_2.x) | vec2<u32>(13484u, var_0.x))), ~u_input.b, max(1u, select(reverseBits(1u), ~u_input.c, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, firstTrailingBit(1u), 1u), ~(~vec3<u32>(125193u, u_input.a, 1u))), _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.b, u_input.a, 4294967295u) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, 1u, u_input.c), vec3<u32>(u_input.b, 4294967295u, 27414u)) % vec3<u32>(32u)), func_1(1i))), min(u_input.a, _wgslsmith_add_u32(u_input.c, countOneBits(u_input.b))));
    var_0 = Struct_3(firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b, 1u) | ~vec2<u32>(0u, 26696u), ~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, 31945u), vec2<u32>(u_input.c, u_input.b)))), 4294967295u);
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(1435f, 115f, -962f, 132f) * vec4<f32>(-651f, -1000f, -454f, 851f)))))));
    var_0 = Struct_3(_wgslsmith_div_u32(7949u, 4295u), firstLeadingBit(~_wgslsmith_sub_u32(u_input.c, _wgslsmith_add_u32(1u, 99491u))));
    var_0 = Struct_3(~24096u, 86632u);
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.x, 178f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1034f) + var_1.xx)))), var_1.yx)), true);
    global0 = array<bool, 31>();
    global0 = array<bool, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.a.x, _wgslsmith_f_op_f32(var_2.a.x + -1861f), _wgslsmith_f_op_f32(round(var_1.x)), _wgslsmith_f_op_f32(-var_2.a.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(432f, var_2.a.x, var_1.x, var_2.a.x) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, var_2.a.x, var_1.x, var_2.a.x)))), all(select(vec4<bool>(false, var_2.b, false, var_2.b), vec4<bool>(var_2.b, var_2.b, true, false), global0[_wgslsmith_index_u32(6563u, 31u)]))))));
}

