struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<bool>) -> vec2<bool> {
    let var_0 = Struct_4(true);
    global0 = _wgslsmith_dot_vec3_i32(abs(-vec3<i32>(-1i, abs(arg_0.b.b), reverseBits(arg_0.b.b))), abs(~max(abs(vec3<i32>(-48584i, arg_0.b.b, -7721i)), vec3<i32>(-12192i, arg_0.b.b, 8550i) ^ vec3<i32>(2147483647i, arg_0.b.b, arg_0.b.b))));
    var var_1 = countOneBits(~(u_input.a & arg_0.b.c.b) | _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.a.b, arg_0.a.b, u_input.a), ~vec3<u32>(arg_0.b.a.x, 1u, arg_0.b.c.b)), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.b.a.x, 0u, 4294967295u), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 85320u, u_input.a), vec3<u32>(13010u, 254u, u_input.a)))));
    var_1 = 15080u;
    var_1 = _wgslsmith_clamp_u32(_wgslsmith_sub_u32(arg_0.b.a.x, 1u), reverseBits(~(~_wgslsmith_mod_u32(u_input.a, u_input.a))), ((1u >> ((0u | u_input.a) % 32u)) & min(u_input.a >> (28231u % 32u), u_input.a)) | arg_0.b.c.b);
    return select(select(vec2<bool>(any(vec4<bool>(true, arg_1.x, true, true)), (var_0.a && var_0.a) & true), arg_0.b.c.a, arg_1.yz), !arg_0.a.a, vec2<bool>(arg_0.b.c.a.x, false));
}

fn func_2() -> i32 {
    global0 = 2147483647i;
    global0 = 1i;
    var var_0 = Struct_3(Struct_1(func_3(Struct_3(Struct_1(vec2<bool>(false, false), 10734u), Struct_2(vec2<u32>(4541u, 22530u), 0i, Struct_1(vec2<bool>(false, false), u_input.a))), vec3<bool>(true, true, true)), 73076u), Struct_2(firstLeadingBit(vec2<u32>(~u_input.a, ~0u)), 1i, Struct_1(vec2<bool>(true, true), firstLeadingBit(reverseBits(u_input.a)))));
    var var_1 = _wgslsmith_sub_u32(35596u, var_0.b.a.x ^ ~0u);
    var var_2 = Struct_2(_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(u_input.a, u_input.a), var_0.a.b | 107333u), min(~var_0.b.a, var_0.b.a), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.b, u_input.a, u_input.a, 9424u), vec4<u32>(var_0.b.c.b, 4294967295u, 119003u, 37121u)), 26237u)), (var_0.b.a | ~var_0.b.a) << (_wgslsmith_sub_vec2_u32(vec2<u32>(57271u, var_0.b.c.b) ^ var_0.b.a, ~var_0.b.a) % vec2<u32>(32u))), var_0.b.b, var_0.a);
    return _wgslsmith_div_i32(~(~firstTrailingBit(1i)), 26984i);
}

fn func_1() -> i32 {
    return ~_wgslsmith_mult_i32(~func_2(), ~(i32(-1i) * -81643i)) | func_2();
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: vec2<i32>, arg_3: vec2<u32>) -> f32 {
    global0 = select(arg_0, arg_2.x, !(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-566f, 331f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-613f)))));
    var var_0 = arg_3.x;
    var var_1 = Struct_3(Struct_1(!(!vec2<bool>(arg_1, arg_1)), ~(~u_input.a | ~arg_3.x)), Struct_2(vec2<u32>(_wgslsmith_clamp_u32(64780u ^ u_input.a, arg_3.x, u_input.a), 0u), 17601i, Struct_1(!(!vec2<bool>(arg_1, false)), ~u_input.a)));
    let var_2 = var_1.b;
    var var_3 = select(74642u, var_1.b.a.x, all(vec3<bool>(any(vec2<bool>(var_1.a.a.x, true)), all(vec4<bool>(true, var_1.b.c.a.x, true, false)), false)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-1000f, 818f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1461f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1317f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -468f))) * _wgslsmith_f_op_f32(f32(-1f) * -756f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -2147483647i;
    global0 = 2147483647i;
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1026f + _wgslsmith_f_op_f32(-611f * -1478f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(559f))) + _wgslsmith_f_op_f32(f32(-1f) * -1369f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(2136f)))))));
    var_0 = _wgslsmith_f_op_f32(func_4(-2147483647i & func_1(), any(vec2<bool>(true, true)), select(-vec2<i32>(1i, _wgslsmith_clamp_i32(-2147483647i, -1i, -25568i)), -max(select(vec2<i32>(-815i, 2147483647i), vec2<i32>(-8174i, -2147483647i), vec2<bool>(true, true)), abs(vec2<i32>(50785i, 67483i))), all(vec2<bool>(false, true))), vec2<u32>(15285u, 4294967295u)));
    let var_1 = 1u;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_4(64761i, true, ~vec2<i32>(1i, 1i), vec2<u32>(var_1 & 1u, var_1))))));
    var_0 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-416f, var_2, 358f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_div_f32(var_2, var_2), var_2))), 1f), reverseBits(vec2<u32>(~countOneBits(var_1), _wgslsmith_div_u32(u_input.a, reverseBits(var_1)))));
}

