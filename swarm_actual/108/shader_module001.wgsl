struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>) -> bool {
    global0 = all(!vec3<bool>(arg_0.a, true, arg_0.a));
    global0 = true | !arg_2.x;
    var var_0 = ~_wgslsmith_add_u32(u_input.d.x, u_input.a);
    var_0 = reverseBits(~abs(firstLeadingBit(1u)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-818f, 1050f, -386f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-189f, 426f, 1615f)))))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1118f)) - -327f), 994f, 979f)));
    return !arg_1.a;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = arg_0.a;
    global0 = arg_0.a;
    var var_1 = !vec3<bool>(true, arg_0.a, func_3(Struct_1(false), arg_0, vec2<bool>(true, all(vec2<bool>(true, arg_0.a)))));
    var var_2 = !((u_input.c ^ _wgslsmith_mod_i32(11261i ^ arg_1.x, 2147483647i)) < -6341i);
    var var_3 = u_input.d.wxx;
    return arg_0;
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: f32) -> bool {
    let var_0 = func_2(arg_0, vec4<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(u_input.e.xxy, u_input.e.wzy), -2147483647i), -1i), _wgslsmith_add_i32(u_input.c, firstLeadingBit(max(-40599i, 56303i))), _wgslsmith_dot_vec4_i32(vec4<i32>(-53669i, 0i, -28453i, 30880i), firstLeadingBit(countOneBits(vec4<i32>(arg_1, u_input.c, 67i, arg_1)))), 38431i));
    let var_1 = ((_wgslsmith_mod_i32(_wgslsmith_div_i32(1i, 1i), reverseBits(-1i)) | _wgslsmith_mult_i32(-24775i, _wgslsmith_mult_i32(7023i, arg_1))) >= _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(firstTrailingBit(u_input.e), u_input.e), -_wgslsmith_add_i32(u_input.c, 33196i))) && ((~u_input.a >> (1u % 32u)) > _wgslsmith_clamp_u32(u_input.b, _wgslsmith_sub_u32(1u, ~u_input.a), max(1u, max(2037u, u_input.b))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1824f, arg_2, 542f) * vec3<f32>(-2354f, arg_2, 270f))))))));
    let var_3 = ~(~0u) << (_wgslsmith_dot_vec4_u32(select(~vec4<u32>(55338u, u_input.b, u_input.d.x, u_input.b), vec4<u32>(u_input.d.x & 89691u, _wgslsmith_mod_u32(55483u, u_input.a), 23875u, u_input.d.x), select(vec4<bool>(var_0.a, true, false, arg_0.a), !vec4<bool>(false, false, arg_0.a, var_1), vec4<bool>(var_0.a, var_0.a, var_1, false))), countOneBits(vec4<u32>(1u, u_input.d.x & u_input.d.x, u_input.d.x << (u_input.d.x % 32u), u_input.d.x))) % 32u);
    global0 = all(select(!(!(!vec4<bool>(false, var_1, true, true))), vec4<bool>(_wgslsmith_div_f32(-1000f, 264f) <= arg_2, any(!vec3<bool>(true, false, arg_0.a)), arg_0.a, any(!vec3<bool>(false, arg_0.a, false))), !vec4<bool>(any(vec4<bool>(var_1, var_0.a, true, var_0.a)), all(vec3<bool>(false, true, true)), !arg_0.a, arg_0.a)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(0i);
    var var_1 = Struct_1(!func_1(Struct_1(select(false, true, false)), max(u_input.e.x, reverseBits(u_input.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1677f, -542f)) - _wgslsmith_f_op_f32(max(768f, -1575f)))));
    var_1 = Struct_1(any(!(!(!vec4<bool>(false, var_1.a, var_1.a, var_1.a)))));
    let var_2 = func_2(Struct_1(any(vec2<bool>(var_1.a, true))), ~vec4<i32>(0i, firstLeadingBit(2147483647i), min(u_input.c, -1i) << (firstTrailingBit(u_input.d.x) % 32u), 2147483647i));
    var_0 = 23644i;
    global0 = all(select(select(select(select(vec2<bool>(var_2.a, true), vec2<bool>(var_1.a, false), vec2<bool>(false, false)), vec2<bool>(false, var_2.a), !vec2<bool>(var_2.a, true)), !select(vec2<bool>(var_1.a, false), vec2<bool>(false, var_2.a), var_2.a), !var_2.a | var_2.a), vec2<bool>(!var_1.a, var_1.a), all(!(!vec3<bool>(var_1.a, false, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e.x, _wgslsmith_f_op_f32(f32(-1f) * -722f), reverseBits(firstLeadingBit(abs(vec4<u32>(23764u, u_input.d.x, 0u, 39171u)))), _wgslsmith_sub_vec4_i32(u_input.e & u_input.e, -(~u_input.e) << (abs(abs(u_input.d)) % vec4<u32>(32u))), _wgslsmith_mult_vec2_i32(~vec2<i32>(2147483647i >> (0u % 32u), 1i), -u_input.e.wy & vec2<i32>(u_input.c, -17352i | u_input.e.x)));
}

