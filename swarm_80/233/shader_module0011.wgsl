struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 9> = array<vec2<i32>, 9>(vec2<i32>(41338i, i32(-2147483648)), vec2<i32>(0i, 1i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(-49675i, -1i), vec2<i32>(-16551i, -5320i), vec2<i32>(4837i, 2147483647i), vec2<i32>(9905i, 2147483647i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(-26473i, -1i));

var<private> global1: Struct_1 = Struct_1(vec2<bool>(true, true), vec3<i32>(2147483647i, i32(-2147483648), 22715i), vec4<f32>(1255f, 1000f, -555f, -1749f), false, 1u);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec3<f32>, arg_3: Struct_1) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-713f, 854f, -10456i > reverseBits(arg_1.x))), _wgslsmith_f_op_f32(f32(-1f) * -1251f))) - arg_2.x);
    let var_1 = -arg_0.b.x;
    var var_2 = Struct_1(global1.a, vec3<i32>(firstTrailingBit(1i), ~1i, _wgslsmith_sub_i32(firstLeadingBit(~(-1704i)), ~(-13487i))), vec4<f32>(_wgslsmith_f_op_f32(sign(-1260f)), _wgslsmith_f_op_f32(select(arg_2.x, -1254f, true)), _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-237f)), 204f, true))), !global1.a.x, 53821u);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0)))) * var_0));
    var_2 = arg_3;
    return u_input.a.xy;
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> i32 {
    global1 = Struct_1(!(!vec2<bool>(true, all(vec2<bool>(global1.d, false)))), vec3<i32>(arg_1.b.x, -_wgslsmith_dot_vec3_i32(min(vec3<i32>(arg_1.b.x, arg_1.b.x, arg_1.b.x), vec3<i32>(global1.b.x, -7337i, 9837i)), vec3<i32>(arg_1.b.x, 20945i, -1i)), -4473i), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, 570f, global1.c.x, -224f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-arg_1.c), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(662f, global1.c.x, arg_1.c.x, 298f), arg_1.c, vec4<bool>(false, global1.a.x, global1.d, true))), vec4<bool>(false, arg_1.d, true, false)))))), arg_1.b.x != _wgslsmith_dot_vec2_i32(-abs(global1.b.xy), (vec2<i32>(-1787i, -2147483647i) ^ arg_1.b.yz) | vec2<i32>(global1.b.x, arg_1.b.x)), _wgslsmith_dot_vec4_u32(u_input.a, ~min(vec4<u32>(1u, 4294967295u, u_input.a.x, u_input.a.x), vec4<u32>(arg_1.e, 4294967295u, u_input.a.x, 1u))) | 0u);
    global1 = Struct_1(arg_1.a, global1.b, global1.c, all(!select(vec2<bool>(false, arg_1.a.x), !global1.a, arg_1.b.x >= -36087i)), 20014u);
    var var_0 = vec2<u32>(~_wgslsmith_sub_u32(arg_1.e, ~_wgslsmith_clamp_u32(global1.e, 93161u, 25793u)), 1u);
    let var_1 = Struct_1(vec2<bool>(true, true), ~_wgslsmith_div_vec3_i32(-vec3<i32>(arg_1.b.x, arg_1.b.x, global1.b.x), -vec3<i32>(-13909i, arg_1.b.x, 21765i)) | ~firstLeadingBit(~vec3<i32>(global1.b.x, global1.b.x, -1i)), vec4<f32>(_wgslsmith_f_op_f32(sign(-1782f)), 647f, _wgslsmith_f_op_f32(trunc(1138f)), -2029f), false, 0u);
    var var_2 = reverseBits(arg_1.b);
    return 2147483647i;
}

fn func_1() -> vec2<u32> {
    let var_0 = global1.b.x;
    var var_1 = _wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(global1.e, ~global1.e), ~u_input.a.yw, select(_wgslsmith_add_vec2_u32(vec2<u32>(global1.e, global1.e), ~u_input.a.zy), _wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.a.x, 11195u), func_2(Struct_1(vec2<bool>(false, false), vec3<i32>(-11866i, -1i, global1.b.x), vec4<f32>(global1.c.x, -585f, -943f, -360f), global1.a.x, u_input.a.x), vec4<i32>(2147483647i, -26597i, global1.b.x, -2147483647i), global1.c.zxx, Struct_1(global1.a, vec3<i32>(global1.b.x, 1i, global1.b.x), global1.c, true, u_input.a.x)), u_input.a.xx), !global1.a.x)), _wgslsmith_add_vec2_u32(vec2<u32>(~(u_input.a.x ^ 0u), ~_wgslsmith_sub_u32(u_input.a.x, global1.e)), ~(~u_input.a.wx | ~vec2<u32>(u_input.a.x, u_input.a.x))));
    var var_2 = -342f;
    var var_3 = Struct_1(!global1.a, vec3<i32>(~(-1i), 5675i, func_3(vec4<u32>(global1.e, u_input.a.x, global1.e, 0u) | vec4<u32>(1u, u_input.a.x, var_1.x, global1.e), Struct_1(vec2<bool>(true, true), vec3<i32>(global1.b.x, global1.b.x, -55418i), vec4<f32>(global1.c.x, global1.c.x, 1814f, global1.c.x), false, var_1.x))), _wgslsmith_f_op_vec4_f32(-global1.c), all(vec3<bool>(true, true, true)), u_input.a.x);
    var_1 = vec2<u32>(~(104970u | _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.zz ^ vec2<u32>(var_3.e, 0u))), 51549u);
    return vec2<u32>(abs(global1.e), global1.e << (global1.e % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 9>();
    var var_0 = -815f;
    var var_1 = func_1();
    var_0 = _wgslsmith_f_op_f32(step(global1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.c.x)))));
    var_1 = vec2<u32>(global1.e, _wgslsmith_dot_vec3_u32(u_input.a.wxw, ~abs(u_input.a.zww))) << (countOneBits(reverseBits(~select(vec2<u32>(0u, 59536u), u_input.a.zy, global1.a.x))) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -859f), ~abs(~u_input.a), vec3<f32>(-871f, _wgslsmith_f_op_f32(global1.c.x + global1.c.x), -338f), vec2<i32>(-1i) * -global1.b.zy);
}

