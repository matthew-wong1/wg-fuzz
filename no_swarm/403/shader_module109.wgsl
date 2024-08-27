struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x + -363f));
    let var_1 = firstLeadingBit(u_input.a | u_input.c);
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(495f, arg_0.a.x))) - _wgslsmith_f_op_f32(arg_0.a.x - 456f))));
    var var_3 = firstLeadingBit(42352i);
    var var_4 = 296f;
    return true | all(!vec4<bool>(any(vec4<bool>(false, false, true, true)), true, u_input.c == -36224i, true));
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: i32) -> f32 {
    var var_0 = 3760u;
    var var_1 = Struct_3(vec3<bool>(false, arg_1.a.x | !any(vec2<bool>(false, false)), func_3(arg_1.c)));
    let var_2 = reverseBits(vec3<i32>(-2147483647i, 0i, _wgslsmith_mod_i32(20337i, arg_3)) | vec3<i32>(-2147483647i, firstTrailingBit(u_input.c), -23992i)) & vec3<i32>(-(arg_3 << ((u_input.d.x | arg_1.c.b) % 32u)), reverseBits(arg_3) | -1i, _wgslsmith_div_i32(_wgslsmith_mod_i32(arg_3, 1i), _wgslsmith_div_i32(u_input.c, _wgslsmith_mult_i32(-1i, u_input.c))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1349f, arg_1.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-arg_2.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1110f))))));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec4<f32>, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = !(!all(arg_3.xxx));
    var_0 = arg_3.x;
    let var_1 = all(arg_3.xw);
    var var_2 = u_input.c & -(1i & u_input.c);
    var_0 = false;
    return Struct_1(vec4<f32>(-2282f, arg_0.a.x, arg_0.a.x, 688f), 4294967295u, _wgslsmith_sub_u32(min(1u, arg_0.b) & arg_0.c, ~(~u_input.d.x) ^ ~(u_input.d.x & u_input.d.x)));
}

fn func_1(arg_0: u32, arg_1: vec3<f32>, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = ~(~(~1u));
    var_0 = 24794u >> (arg_0 % 32u);
    return func_4(Struct_1(vec4<f32>(-710f, arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, -223f) * _wgslsmith_f_op_f32(647f * 1194f))), _wgslsmith_dot_vec2_u32(u_input.d.yz, u_input.d.zy), arg_2.x), all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(true, false, true)), vec4<bool>(true, true, true, true), arg_1.x > _wgslsmith_f_op_f32(-1430f + -1357f))), vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-733f, -892f))), _wgslsmith_f_op_f32(func_2(u_input.d.x, Struct_2(vec3<bool>(true, true, true), true, Struct_1(vec4<f32>(arg_1.x, -326f, -1108f, 898f), arg_0, 1u), _wgslsmith_f_op_f32(-arg_1.x), Struct_1(vec4<f32>(arg_1.x, 235f, 927f, arg_1.x), 18327u, 0u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(383f, arg_1.x, arg_1.x, arg_1.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 1973f, arg_1.x, arg_1.x))), 31598i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(985f, arg_1.x, false)), _wgslsmith_f_op_f32(f32(-1f) * -1533f))))), vec4<bool>(any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true))), (arg_1.x != -1000f) == true, any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), true)), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(!(select(true, true, true) != true), true, all(vec2<bool>(true, true)));
    var var_1 = vec2<f32>(-785f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1137f, 1734f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -921f) + _wgslsmith_f_op_f32(1827f + 970f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(1340f)))))));
    let var_2 = Struct_2(var_0, abs(u_input.c) == u_input.a, func_1(0u, vec3<f32>(_wgslsmith_f_op_f32(select(-115f, _wgslsmith_f_op_f32(-636f + 1290f), var_0.x)), var_1.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-668f - -764f), _wgslsmith_div_f32(1355f, var_1.x)))), max(vec4<u32>(u_input.b.x, u_input.b.x, u_input.d.x, 8494u) | firstLeadingBit(vec4<u32>(1u, 26197u, u_input.b.x, 1u)), max(~vec4<u32>(42909u, u_input.b.x, 1u, u_input.d.x), ~vec4<u32>(4294967295u, 4294967295u, u_input.b.x, u_input.d.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-1081f + var_1.x)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, var_1.x) - _wgslsmith_f_op_f32(-var_1.x)))), func_4(func_4(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)), ~u_input.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, u_input.b.x, 1u, 4294967295u), vec4<u32>(25312u, 1u, u_input.d.x, u_input.b.x))), all(select(var_0, vec3<bool>(false, false, false), var_0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 892f, var_1.x, -508f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, -555f, -380f, var_1.x), vec4<f32>(1602f, var_1.x, var_1.x, var_1.x), vec4<bool>(true, false, var_0.x, false)))), vec4<bool>(var_0.x, true, all(vec4<bool>(var_0.x, var_0.x, var_0.x, true)), true)), false != (_wgslsmith_clamp_u32(u_input.d.x, u_input.d.x, 4294967295u) >= ~0u), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-234f, 282f, -1542f, -104f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, var_1.x, 1316f, var_1.x), vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_0.x, true, var_0.x, var_0.x)))) * vec4<f32>(_wgslsmith_f_op_f32(var_1.x - -2781f), 174f, var_1.x, _wgslsmith_f_op_f32(-var_1.x))), !select(vec4<bool>(var_0.x, false, false, var_0.x), select(vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(false, true, false, var_0.x), true), select(true, var_0.x, var_0.x))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-176f + 1610f), _wgslsmith_f_op_f32(step(var_2.d, 1565f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-975f * var_2.d))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.c.a.yyy))));
    var var_4 = !var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, -35383i, u_input.a, 2147483647i), vec4<i32>(2147483647i, u_input.c, -2147483647i, u_input.a)) & -vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)));
}

