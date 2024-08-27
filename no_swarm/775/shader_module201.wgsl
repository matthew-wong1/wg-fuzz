struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32) -> f32 {
    let var_0 = select(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-222f, 1000f, false))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-128f - 1246f))), true, !any(select(vec2<bool>(false, false), vec2<bool>(true, true), true)));
    global0 = Struct_1(global0.a);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(398f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -274f) - _wgslsmith_f_op_f32(285f - -262f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2058f - -1000f))) - _wgslsmith_f_op_f32(max(486f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(172f - 162f), -597f, true)))))));
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = -_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, -_wgslsmith_clamp_i32(global0.a, 29103i, 0i)), vec2<i32>(56872i, global0.a), -firstLeadingBit(~vec2<i32>(1i, -1021i)));
    global0 = Struct_1(-30398i);
    var var_1 = !vec3<bool>(!all(vec4<bool>(false, true, true, false)), ((-195f > arg_0.x) & true) && false, -155f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.e.x)) * -1000f));
    global0 = Struct_1(u_input.d);
    var var_2 = ~countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.e.x, u_input.e.x, u_input.e.x), vec4<u32>(26988u, u_input.b, 14762u, 50014u)) ^ vec4<u32>(11807u, u_input.e.x, 27816u, u_input.c)) ^ ~countOneBits(select(vec4<u32>(27848u, 25965u, u_input.a.x, 66621u), vec4<u32>(55901u, u_input.e.x, u_input.b, u_input.c), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)) | (vec4<u32>(1u, u_input.a.x, u_input.b, 101045u) | vec4<u32>(20835u, 0u, u_input.b, 10740u)));
    return Struct_1(_wgslsmith_mult_i32(-18347i, global0.a));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    let var_0 = vec2<f32>(1f, 1f);
    global0 = arg_1;
    global0 = Struct_1(-firstLeadingBit(-1782i));
    global0 = arg_2;
    let var_1 = Struct_1(~28024i);
    return _wgslsmith_mod_i32(u_input.d, -2147483647i);
}

fn func_1() -> Struct_1 {
    let var_0 = vec2<i32>(i32(-1i) * -30030i, select(-1228i, func_4(_wgslsmith_sub_u32(abs(4294967295u), u_input.a.x), func_2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1832f, 441f, 2149f, -1544f), vec4<f32>(702f, -1094f, 1110f, 1672f)))), func_2(_wgslsmith_div_vec4_f32(vec4<f32>(-595f, 464f, 874f, -2388f), vec4<f32>(433f, -1425f, -2116f, 127f)))), false));
    global0 = func_2(vec4<f32>(1f, _wgslsmith_f_op_f32(abs(-2736f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -382f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -390f), _wgslsmith_div_f32(-876f, 2541f))))));
    return Struct_1(u_input.d & -select(2147483647i, global0.a, true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    global0 = Struct_1(global0.a);
    let var_0 = func_1();
    global0 = func_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(581f, 1000f, -732f, 713f) - vec4<f32>(-296f, -739f, -943f, 288f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-539f, 503f, 1432f, 2218f)), all(vec3<bool>(false, true, false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 629f, 518f, -381f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-499f, -1000f, -2492f, -1410f)))), true)));
    let var_1 = -1266i;
    global0 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(var_0.a, -(select(-35049i, var_0.a, false) << (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b, 57383u), vec3<u32>(u_input.a.x, 4294967295u, 4294967295u)) % 32u))), _wgslsmith_clamp_vec4_i32(abs(reverseBits(~vec4<i32>(global0.a, 1i, -8513i, -2147483647i))), select(vec4<i32>(var_1, -5397i, u_input.d, var_1), abs(vec4<i32>(u_input.d, 20436i, var_1, var_0.a)), vec4<bool>(true, false, false, false)) & -min(vec4<i32>(var_0.a, var_1, var_0.a, var_1), vec4<i32>(-7206i, 13778i, -2147483647i, global0.a)), vec4<i32>(1i, _wgslsmith_clamp_i32(u_input.d, -global0.a, 1i), ~82874i, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(var_0.a, -2147483647i), -1i, -1i))), u_input.c, firstLeadingBit(20979u), var_0.a);
}

