struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<f32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 23>;

var<private> global1: bool;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec4<bool>, arg_1: f32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_div_f32(-1667f, 800f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))));
    var var_1 = 1u;
    let var_2 = Struct_2(Struct_1(u_input.b.x, ~countOneBits(-vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1i))), -20088i >> (~u_input.b.x % 32u), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b.x, _wgslsmith_div_u32(12081u, ~(u_input.b.x | 7293u))), 23u)], _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-132f, -366f, _wgslsmith_f_op_f32(arg_1 + arg_1)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(499f, -583f, 240f) + vec3<f32>(338f, -1197f, arg_1)))), arg_0.xww)))));
    global1 = arg_0.x;
    var var_3 = ~vec2<u32>(var_2.a.a, (max(1u, 26542u) & ~var_2.a.a) << ((_wgslsmith_add_u32(u_input.b.x, 16987u) << (_wgslsmith_mod_u32(75343u, 1u) % 32u)) % 32u));
    return 0u;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: i32) -> u32 {
    global1 = !(true != any(select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true)), true)));
    let var_0 = -339f;
    var var_1 = -2147483647i;
    let var_2 = Struct_2(Struct_1(4294967295u, ((arg_0.b | arg_0.b) << (~vec4<u32>(0u, 1u, u_input.b.x, 0u) % vec4<u32>(32u))) >> (vec4<u32>(9810u, ~1u, 0u, select(arg_0.a, u_input.b.x, true)) % vec4<u32>(32u))), -2147483647i ^ select(-2147483647i, firstLeadingBit(_wgslsmith_mult_i32(arg_2, 2147483647i)), all(vec2<bool>(true, false)) || true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0), var_0)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(var_0, -347f)), _wgslsmith_f_op_f32(step(var_0, var_0)), _wgslsmith_f_op_f32(-906f - var_0)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-739f, 1640f, var_0), vec3<f32>(-1479f, 1270f, -501f))) * vec3<f32>(1000f, 2397f, var_0))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-388f, 1000f, 2805f)), vec3<f32>(_wgslsmith_f_op_f32(select(-156f, var_0, true)), -988f, _wgslsmith_f_op_f32(select(var_0, 1159f, true))), select(vec3<bool>(false, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), any(vec4<bool>(false, false, true, false)))))));
    let var_3 = var_2.c.x;
    return func_3(vec4<bool>(any(vec4<bool>(true, true, true, true)), true, !(!(u_input.b.x > arg_0.a)), true), -856f);
}

fn func_1() -> StorageBuffer {
    global1 = !(all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)) & true);
    global0 = array<vec2<f32>, 23>();
    let var_0 = Struct_1(_wgslsmith_mod_u32(~u_input.b.x, func_2(Struct_1(0u, vec4<i32>(u_input.a.x, 1i, u_input.a.x, 6618i) << (vec4<u32>(1u, 0u, u_input.b.x, u_input.b.x) % vec4<u32>(32u))), ~(~vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i)), -67202i >> (1u % 32u))), vec4<i32>(~_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), u_input.a.x, firstTrailingBit(-23242i | u_input.a.x) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) ^ vec3<u32>(u_input.b.x, 13181u, u_input.b.x), vec3<u32>(1u, u_input.b.x, u_input.b.x)) % 32u), -1i));
    global1 = false;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -588f)));
    return StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-132f - var_1), _wgslsmith_div_f32(-1598f, 1000f))) * _wgslsmith_f_op_f32(var_1 + 1047f)))), select(vec3<u32>(_wgslsmith_mod_u32(var_0.a, 4294967295u), 4294967295u, ~var_0.a), abs(vec3<u32>(65904u, 71785u, 17008u)), true) | _wgslsmith_mod_vec3_u32(abs(vec3<u32>(1u, u_input.b.x, var_0.a) << (vec3<u32>(0u, var_0.a, 12259u) % vec3<u32>(32u))), _wgslsmith_sub_vec3_u32(~vec3<u32>(0u, 20139u, u_input.b.x), min(vec3<u32>(16608u, u_input.b.x, var_0.a), vec3<u32>(42317u, 7187u, 10937u)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1397f - _wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - _wgslsmith_f_op_f32(trunc(var_1))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(select(~u_input.b, u_input.b, true) << (_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, 1u), ~vec2<u32>(49423u, u_input.b.x)) % vec2<u32>(32u))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1453f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-1000f, 420f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1391f)) * -229f))));
    global0 = array<vec2<f32>, 23>();
    let x = u_input.a;
    s_output = func_1();
}

