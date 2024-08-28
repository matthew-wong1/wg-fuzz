struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec3<bool>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 26> = array<vec3<bool>, 26>(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: Struct_3) -> bool {
    return false;
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1010f - 312f)))) * _wgslsmith_f_op_f32(ceil(574f))));
    let var_1 = ~(~(~u_input.a.x));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1530f * 100f) * var_0.a))));
    let var_3 = select(_wgslsmith_div_i32(0i, ~(~(-2147483647i))), _wgslsmith_sub_i32(min(1i, -u_input.c), u_input.c), any(vec3<bool>(true, any(vec2<bool>(false, false)), any(vec2<bool>(true, true))))) >= _wgslsmith_add_i32(~14064i, ~_wgslsmith_mod_i32(u_input.b.x | -2147483647i, u_input.c >> (4294967295u % 32u)));
    var var_4 = vec3<u32>(countOneBits(firstLeadingBit(firstLeadingBit(var_1))), u_input.a.x, 1u);
    return select(vec4<bool>(any(vec4<bool>(any(vec4<bool>(false, var_3, false, true)), var_3, any(global0[_wgslsmith_index_u32(29811u, 26u)]), true)), var_2.a <= var_0.a, false, any(select(vec4<bool>(false, true, var_3, var_3), select(vec4<bool>(var_3, var_3, var_3, var_3), vec4<bool>(true, false, true, var_3), false), true))), !select(select(vec4<bool>(false, var_3, var_3, var_3), select(vec4<bool>(false, false, true, true), vec4<bool>(var_3, var_3, var_3, false), var_3), vec4<bool>(var_3, true, var_3, false)), vec4<bool>(var_2.a == 1775f, var_3, true, var_3), false), var_2.a >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.a + var_2.a)))));
}

fn func_1(arg_0: bool, arg_1: Struct_3) -> vec2<f32> {
    global0 = array<vec3<bool>, 26>();
    var var_0 = select(reverseBits(-u_input.b), ~(~select(-arg_1.b.zz, vec2<i32>(u_input.c, -1i) | vec2<i32>(u_input.b.x, u_input.c), func_2(arg_1))), arg_1.c.yy);
    var var_1 = select(func_3(), !func_3(), any(select(vec4<bool>(true, arg_0, any(arg_1.c.zz), 961f > arg_1.a.x), !(!vec4<bool>(arg_1.c.x, arg_0, arg_0, arg_0)), select(!arg_0, arg_0, !arg_0))));
    var var_2 = ~_wgslsmith_clamp_vec3_i32(vec3<i32>(~abs(var_0.x), arg_1.b.x, 63753i ^ _wgslsmith_add_i32(u_input.b.x, u_input.b.x)), arg_1.b, -vec3<i32>(u_input.c << (arg_1.d % 32u), u_input.b.x, 11221i));
    var_2 = arg_1.b >> (firstTrailingBit(_wgslsmith_div_vec3_u32(reverseBits(u_input.a.zyy), vec3<u32>(1u, u_input.a.x ^ 47884u, reverseBits(0u)))) % vec3<u32>(32u));
    return arg_1.a.xy;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 26>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-696f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2001f), 1000f) * -1115f)));
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_1(u_input.a.x != 4294967295u, Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, 407f, 102f) - vec3<f32>(437f, 211f, var_0)), vec3<i32>(8882i, u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.b.x, -25761i), vec3<i32>(u_input.c, u_input.b.x, u_input.b.x))), global0[_wgslsmith_index_u32(u_input.a.x, 26u)], 7226u))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, -1360f) * vec2<f32>(832f, 1047f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, var_0) + vec2<f32>(var_0, 1192f)), true))))), func_3().yw));
    var var_2 = _wgslsmith_mult_i32(-abs(u_input.c), countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(46170i, u_input.c), _wgslsmith_clamp_i32(-2147483647i, u_input.c, -45507i), u_input.b.x), ~vec3<i32>(u_input.b.x, u_input.c, u_input.c) | vec3<i32>(35602i, -2147483647i, u_input.c))));
    let var_3 = Struct_1(1000f);
    let var_4 = u_input.a.yyx;
    var_2 = abs(_wgslsmith_add_i32(u_input.b.x, u_input.c));
    let var_5 = _wgslsmith_div_u32(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_4.x, 1u, u_input.a.x), var_4)) | firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(63393u, u_input.a.x, 80233u, u_input.d) | vec4<u32>(var_4.x, 30619u, 19419u, 15458u), ~u_input.a)), 42182u);
    let x = u_input.a;
    s_output = StorageBuffer(34398i >> (abs(u_input.a.x) % 32u), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -461f), _wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -505f)))) + var_1));
}

