struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: f32,
    d: u32,
    e: vec2<u32>,
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

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_2() -> Struct_1 {
    var var_0 = 1u;
    var_0 = 171u;
    var_0 = 4294967295u;
    var var_1 = u_input.a;
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1856f, 1676f, 1317f) + vec3<f32>(-713f, -260f, 1375f)))), _wgslsmith_dot_vec3_u32(vec3<u32>(12397u, 43128u, 1u), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 72532u, 4294967295u), vec3<u32>(31886u, 13995u, 4294967295u))) == max(_wgslsmith_add_u32(0u, 59884u), 11893u), vec2<i32>(u_input.a, u_input.a), -firstLeadingBit(vec4<i32>(u_input.a, -1i, 2147483647i, 15678i)), _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(35782i, 0i, u_input.a), vec3<i32>(-6806i, u_input.a, -60195i) | vec3<i32>(-2147483647i, -2147483647i, u_input.a)), vec3<i32>(-1i) * -vec3<i32>(u_input.a, -49464i, 1i))));
    return var_2.a;
}

fn func_3(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_2) -> Struct_2 {
    let var_0 = 337f;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(select(arg_2.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.a.x)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(848f * var_0), var_0)) - 625f), var_0, -1336f);
    let var_2 = arg_2.a;
    let var_3 = arg_2.a.e.x;
    let var_4 = var_2;
    return arg_2;
}

fn func_1(arg_0: vec2<u32>) -> Struct_2 {
    let var_0 = func_3(~arg_0.x, _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(abs(vec4<i32>(-7242i, u_input.a, 1i, -24031i)), ~vec4<i32>(u_input.a, -1i, u_input.a, -2147483647i)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, 1i, u_input.a), vec4<i32>(-2147483647i, 0i, u_input.a, -36665i)) >> (max(vec4<u32>(arg_0.x, 4294967295u, 1u, 4294967295u), vec4<u32>(arg_0.x, 4294967295u, arg_0.x, 4294967295u)) % vec4<u32>(32u))) & _wgslsmith_clamp_vec4_i32(~(-vec4<i32>(11879i, u_input.a, u_input.a, -1i)), -vec4<i32>(-25376i, -1i, u_input.a, u_input.a) | _wgslsmith_div_vec4_i32(vec4<i32>(0i, u_input.a, u_input.a, -2147483647i), vec4<i32>(u_input.a, -37950i, u_input.a, u_input.a)), select(vec4<i32>(u_input.a, 59265i, -11412i, 2886i), vec4<i32>(-70318i, -13201i, u_input.a, 23510i), false) >> ((vec4<u32>(88246u, arg_0.x, arg_0.x, arg_0.x) << (vec4<u32>(arg_0.x, arg_0.x, 54072u, arg_0.x) % vec4<u32>(32u))) % vec4<u32>(32u))), Struct_2(func_2()));
    let var_1 = func_2();
    var var_2 = ~_wgslsmith_add_vec2_u32(vec2<u32>(~arg_0.x ^ _wgslsmith_dot_vec4_u32(vec4<u32>(46448u, arg_0.x, arg_0.x, arg_0.x), vec4<u32>(1u, 1u, arg_0.x, 15981u)), firstLeadingBit(arg_0.x)), arg_0);
    var_2 = ~vec2<u32>(~_wgslsmith_mult_u32(~arg_0.x, ~var_2.x), ~1u);
    var_2 = abs(~(~max(arg_0, vec2<u32>(var_2.x, 4294967295u))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec2<u32>(min(~1u, 1u), 1u << (1u % 32u)));
    let var_1 = true;
    var var_2 = var_0.a;
    let var_3 = ~func_3(~6218u, vec4<i32>(func_3(0u, var_0.a.d, func_3(1u, vec4<i32>(2147483647i, 2147483647i, -1i, -3928i), Struct_2(var_0.a))).a.c.x, -(i32(-1i) * -1i), -55423i, -_wgslsmith_clamp_i32(var_0.a.d.x, u_input.a, var_2.e.x)), func_3(1u, var_0.a.d, func_3(121838u, firstLeadingBit(vec4<i32>(var_0.a.d.x, 2147483647i, var_2.c.x, 23228i)), func_1(vec2<u32>(0u, 43945u))))).a.d.x;
    var var_4 = vec2<i32>(14585i, -_wgslsmith_dot_vec3_i32(firstLeadingBit(var_2.d.zxx), ~vec3<i32>(-20814i, u_input.a, u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1010f - _wgslsmith_f_op_f32(-var_2.a.x)) + _wgslsmith_f_op_f32(var_0.a.a.x - _wgslsmith_f_op_f32(min(var_2.a.x, 2345f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(func_1(vec2<u32>(0u, 37384u)).a.a.x)))), _wgslsmith_div_f32(746f, 184f), -1400f, 1u, ~_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(28248u, 8551u), ~vec2<u32>(1u, 795u)), vec2<u32>(1u, 1u)));
}

