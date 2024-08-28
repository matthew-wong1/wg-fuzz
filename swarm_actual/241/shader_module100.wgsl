struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: vec2<i32>, arg_3: f32) -> f32 {
    var var_0 = vec4<u32>(_wgslsmith_mod_u32(u_input.a, u_input.a), ~(~(~u_input.a)), 0u << (u_input.a % 32u), ~firstLeadingBit(_wgslsmith_div_u32(min(u_input.a, 1u), u_input.a)));
    return arg_3;
}

fn func_2(arg_0: i32, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(1000f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1031f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1383f + 2074f) - -522f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-570f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1012f)) + -937f), 630f)));
    var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2660f, var_0.x, var_0.x) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(824f, var_0.x, 388f)), vec3<f32>(_wgslsmith_div_f32(var_0.x, -1224f), 1089f, _wgslsmith_f_op_f32(func_3(-1000f, -1814f, arg_1.zy, var_0.x)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-817f, 1964f, var_0.x)) - vec3<f32>(var_0.x, 447f, -2001f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), 852f, _wgslsmith_div_f32(var_0.x, 1968f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 744f, var_0.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1279f, var_0.x, -1182f))))));
    let var_1 = 41971u;
    let var_2 = u_input.a;
    return Struct_1(~vec4<u32>(_wgslsmith_mod_u32(~52661u, _wgslsmith_mod_u32(var_1, 54839u)), _wgslsmith_mult_u32(~4294967295u, ~var_2), ~4294967295u, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, var_2, var_2), vec3<u32>(114897u, var_1, 4294967295u)), 66597u)));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> bool {
    let var_0 = arg_2;
    return true;
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_sub_u32(4294967295u, abs(_wgslsmith_mod_u32(arg_0.b.a.x ^ _wgslsmith_sub_u32(arg_0.b.a.x, u_input.a), ~arg_0.a.a.x)));
    var var_1 = !func_4(-2487f, Struct_2(Struct_1(vec4<u32>(arg_0.a.a.x, 1u, arg_0.a.a.x, 13710u)), Struct_1(vec4<u32>(arg_0.a.a.x, u_input.a, 4294967295u, u_input.a) & arg_0.b.a)), Struct_2(Struct_1(~vec4<u32>(u_input.a, u_input.a, 4294967295u, 4294967295u)), func_2(_wgslsmith_add_i32(30759i, u_input.b), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, 1922i, u_input.b), vec3<i32>(u_input.b, u_input.b, 29381i)))), func_2(u_input.b, abs(abs(vec3<i32>(u_input.b, 1i, 28375i)))));
    var_1 = true;
    var_1 = !(!(!(u_input.b <= 2147483647i))) & true;
    let var_2 = select(!select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), ~24326u > arg_0.a.a.x), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, u_input.b <= u_input.b), any(vec4<bool>(false, true, false, false)) == (-30938i < u_input.b)), vec3<bool>(true | (~11165u > arg_0.a.a.x), true, true));
    return func_2(-46469i ^ firstTrailingBit(u_input.b ^ max(1i, u_input.b)), vec3<i32>(_wgslsmith_add_i32(max(2147483647i | u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(-38283i, -1i, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b))), -12263i), ~(_wgslsmith_clamp_i32(339i, 24015i, u_input.b) ^ (u_input.b & u_input.b)), _wgslsmith_mult_i32(abs(select(u_input.b, 0i, var_2.x)), firstTrailingBit(_wgslsmith_add_i32(67106i, u_input.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(~vec2<i32>(~(-2147483647i), u_input.b));
    let var_1 = vec3<u32>(~(1u >> ((~u_input.a >> (_wgslsmith_mod_u32(u_input.a, 0u) % 32u)) % 32u)), 4598u, 29721u);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1093f, -1000f), vec2<f32>(408f, 1000f), vec2<bool>(false, false))))))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -482f) - _wgslsmith_f_op_f32(f32(-1f) * -656f)) - _wgslsmith_f_op_f32(abs(1177f))), -3104f));
    let var_3 = !select(select(vec3<bool>(var_0.x >= u_input.b, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false))), !(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true)), true);
    let var_4 = func_1(Struct_2(Struct_1(firstLeadingBit(vec4<u32>(var_1.x, 4294967295u, 51777u, 792u)) & (vec4<u32>(0u, u_input.a, u_input.a, 36500u) & vec4<u32>(var_1.x, 1u, u_input.a, 4294967295u))), Struct_1(vec4<u32>(u_input.a, ~4294967295u, var_1.x, ~u_input.a))));
    let var_5 = Struct_1(vec4<u32>(_wgslsmith_sub_u32(max(58453u, abs(1u)), var_4.a.x), 1u, 47494u, firstLeadingBit(~4294967295u)));
    let var_6 = 1u;
    let var_7 = Struct_2(var_4, var_5);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~6582i, countOneBits(1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(197f)), _wgslsmith_f_op_f32(step(var_2.x, var_2.x))))));
}

