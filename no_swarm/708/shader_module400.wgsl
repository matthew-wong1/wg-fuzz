struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_2) -> i32 {
    var var_0 = Struct_2(_wgslsmith_sub_u32(arg_2.a, ~(~0u)) >> (min(1u, arg_2.a) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-392f, _wgslsmith_f_op_f32(1697f + arg_2.b))));
    let var_1 = !(!select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), false));
    var var_2 = Struct_2(~4294967295u, _wgslsmith_f_op_f32(f32(-1f) * -241f));
    let var_3 = Struct_2(_wgslsmith_add_u32(_wgslsmith_sub_u32(~6083u, 67530u) >> (~var_2.a % 32u), 31923u), _wgslsmith_f_op_f32(-1406f - 201f));
    let var_4 = Struct_2(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b * -2485f))) * -730f));
    return abs(u_input.a >> (63581u % 32u));
}

fn func_2(arg_0: Struct_1) -> i32 {
    let var_0 = Struct_2(abs(~(~(~69905u))), _wgslsmith_f_op_f32(f32(-1f) * -899f));
    let var_1 = Struct_1(u_input.a, 7853i);
    return func_3(var_1, (_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, var_1.b), min(vec2<i32>(var_1.b, -31853i), vec2<i32>(var_1.a, u_input.a))) >> (_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, var_0.a), vec2<u32>(var_0.a, var_0.a)), select(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(33051u, 82241u), true)) % vec2<u32>(32u))) ^ vec2<i32>(2147483647i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -2147483647i, u_input.a), vec3<i32>(u_input.a, -20800i, 667i)), -50604i), Struct_2(_wgslsmith_add_u32(0u, 1u), _wgslsmith_f_op_f32(f32(-1f) * -704f)));
}

fn func_1(arg_0: f32, arg_1: vec4<bool>, arg_2: u32) -> u32 {
    global0 = true;
    global0 = true;
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0, arg_0, arg_0, arg_0), vec4<f32>(arg_0, 1298f, arg_0, arg_0))))))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -507f) + 1000f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, -660f))))))));
    let var_2 = _wgslsmith_clamp_i32(~_wgslsmith_add_i32(func_2(Struct_1(u_input.a, 7308i)), u_input.a), u_input.a, _wgslsmith_sub_i32(-54517i, func_2(Struct_1(u_input.a, -u_input.a))));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    global0 = ~_wgslsmith_add_u32(~(~67409u), abs(66681u) ^ func_1(606f, vec4<bool>(true, false, false, true), 0u)) >= ~1u;
    let var_0 = _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(9438u, 2893u, 9806u, 16623u), vec4<u32>(1u, 4294967295u, 1u, 6766u))), 14095u, _wgslsmith_mod_u32(countOneBits(5252u), 1u), ~1u), ~vec4<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 46155u), vec3<u32>(108899u, 2331u, 12645u)), _wgslsmith_sub_u32(4294967295u, 38550u), firstLeadingBit(33900u))), ~(~firstTrailingBit(vec4<u32>(0u, 22536u, 0u, 51456u)) & vec4<u32>(1u, ~0u, ~86182u, 1u)));
    let var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(573f, -883f) + vec2<f32>(-1000f, -259f))) * vec2<f32>(-1914f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-1608f))))))));
    var var_2 = select(!(!select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)))), select(vec2<bool>(select(u_input.a >= u_input.a, -1452f > var_1.x, true), true), !vec2<bool>(var_1.x >= -1791f, any(vec3<bool>(false, true, false))), select(!select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(true, true), any(vec4<bool>(true, false, true, false)))), true);
    global0 = 490f == _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, 688f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1357f)) - var_1.x)));
    let var_3 = ~min(var_0.x, ~_wgslsmith_add_u32(var_0.x, var_0.x)) << ((_wgslsmith_sub_u32(var_0.x, ~var_0.x) | firstLeadingBit(abs(var_0.x) | ~1u)) % 32u);
    global0 = !(select(~2033u, abs(_wgslsmith_div_u32(9804u, var_0.x)), var_2.x) <= select(reverseBits(_wgslsmith_sub_u32(62531u, var_3)), _wgslsmith_clamp_u32(var_3 | 4294967295u, var_0.x >> (72426u % 32u), max(var_3, 22146u)), var_2.x & var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))), var_1.x), _wgslsmith_mod_u32(52134u, var_3), ~(-2855i), firstLeadingBit(-vec3<i32>(_wgslsmith_sub_i32(17304i, u_input.a), ~u_input.a, u_input.a | 0i)));
}

