struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1063f;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: bool) -> vec2<bool> {
    let var_0 = u_input.a;
    var var_1 = Struct_3(all(!select(select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(arg_1, arg_1, false), arg_1), !vec3<bool>(arg_1, true, arg_1), select(vec3<bool>(true, arg_1, true), vec3<bool>(arg_1, true, arg_1), arg_1))));
    global0 = _wgslsmith_f_op_f32(-1000f + -1038f);
    let var_2 = Struct_3(404f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1555f))));
    let var_3 = _wgslsmith_mult_i32(abs(~(-1i)), u_input.a);
    return !vec2<bool>(false, true && arg_1);
}

fn func_2(arg_0: bool) -> f32 {
    var var_0 = !select(vec2<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(64395u, 0u, 4294967295u, 25509u), vec4<u32>(639u, 16250u, 45666u, 37347u)) <= max(1u, 10950u), _wgslsmith_f_op_f32(sign(375f)) <= -991f), !(!vec2<bool>(arg_0, arg_0)), !func_3(vec2<f32>(355f, 1180f), true));
    var var_1 = _wgslsmith_clamp_vec2_i32(vec2<i32>(-min(25641i, 1i), 2147483647i) ^ (vec2<i32>(abs(u_input.c), firstLeadingBit(u_input.c)) << (reverseBits(~vec2<u32>(64459u, 0u)) % vec2<u32>(32u))), vec2<i32>(select(-2147483647i, 1i, select(13473u, 24125u, var_0.x) == reverseBits(0u)), 0i), u_input.b);
    var_0 = func_3(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(905f, 1217f) - vec2<f32>(166f, -158f))))))), var_0.x);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1234f)));
    var_0 = vec2<bool>(!all(select(select(vec2<bool>(var_0.x, false), vec2<bool>(false, false), var_0.x), select(vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, arg_0), vec2<bool>(arg_0, false)), !vec2<bool>(var_0.x, var_0.x))), all(select(vec4<bool>(true, func_3(vec2<f32>(756f, 656f), var_0.x).x, any(vec3<bool>(arg_0, arg_0, true)), !arg_0), select(vec4<bool>(false, false, var_0.x, arg_0), !vec4<bool>(true, arg_0, false, var_0.x), true), true | all(vec2<bool>(var_0.x, arg_0)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1873f)) + _wgslsmith_f_op_f32(-480f + _wgslsmith_f_op_f32(f32(-1f) * -2173f))))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -272f)), _wgslsmith_f_op_f32(f32(-1f) * -2344f)));
}

fn func_1(arg_0: bool, arg_1: vec4<u32>) -> f32 {
    global0 = _wgslsmith_f_op_f32(-756f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -204f))));
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(591f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-731f * -695f), 330f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(true))))));
    var var_0 = Struct_2(Struct_1(abs(vec2<u32>(_wgslsmith_sub_u32(arg_1.x, 29613u), ~0u)), countOneBits(select(vec4<i32>(u_input.c, 1i, -2147483647i, -73352i), ~vec4<i32>(u_input.a, u_input.b.x, u_input.a, u_input.b.x), arg_0)), min(_wgslsmith_div_vec3_i32(~vec3<i32>(-10908i, 5112i, 2147483647i), vec3<i32>(-20169i, u_input.b.x, 2147483647i)), ~select(vec3<i32>(-520i, u_input.a, -20185i), vec3<i32>(-1i, u_input.b.x, u_input.a), vec3<bool>(arg_0, true, false)))));
    let var_1 = Struct_4(Struct_3(true));
    var var_2 = countOneBits(min(vec4<i32>(_wgslsmith_clamp_i32(-4681i, i32(-1i) * -1i, 1i), -(u_input.a & 31903i), u_input.b.x, -34155i), vec4<i32>(var_0.a.c.x, -2147483647i, -_wgslsmith_div_i32(-1i, 10056i), 2147483647i)));
    return _wgslsmith_f_op_f32(f32(-1f) * -863f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(842f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-626f - -206f) - 796f), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(func_1(true, select(vec4<u32>(0u, 75030u, 28988u, 4074u), vec4<u32>(16562u, 11627u, 1699u, 0u), false))))));
    let var_1 = abs(vec2<u32>(1u, 1u));
    global0 = var_0;
    let var_2 = ~vec4<u32>(0u, _wgslsmith_dot_vec4_u32(firstLeadingBit(~vec4<u32>(var_1.x, 1u, var_1.x, var_1.x)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.x, 1u, 13260u, var_1.x), vec4<u32>(var_1.x, var_1.x, var_1.x, 0u), vec4<u32>(var_1.x, 1u, 10583u, 7460u))), firstLeadingBit(4294967295u), var_1.x);
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1782f);
    var var_3 = Struct_2(Struct_1(vec2<u32>(0u, _wgslsmith_mod_u32(var_2.x, var_2.x & 4294967295u)), firstTrailingBit(~vec4<i32>(-860i, u_input.b.x, u_input.b.x, 2147483647i) >> (vec4<u32>(20885u, var_1.x, var_1.x, 36236u) % vec4<u32>(32u))), vec3<i32>(_wgslsmith_add_i32(u_input.a | u_input.a, u_input.c), u_input.a, firstTrailingBit(~0i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(732f, var_0, 1001f, -1356f)))))), vec4<f32>(_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(var_0 + var_0), _wgslsmith_f_op_f32(sign(var_0)), _wgslsmith_f_op_f32(min(-1481f, _wgslsmith_div_f32(var_0, var_0))))), var_3.a.b.wxx);
}

