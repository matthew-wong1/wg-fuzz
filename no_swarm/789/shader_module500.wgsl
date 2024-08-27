struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 10159i;

var<private> global1: array<vec4<i32>, 16>;

var<private> global2: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(vec4<bool>(true, false, true, true), true, 21133u), Struct_2(vec4<bool>(true, false, true, true), true, 3858u), Struct_2(vec4<bool>(false, false, true, true), true, 21786u), Struct_2(vec4<bool>(true, true, false, false), true, 1u), Struct_2(vec4<bool>(false, true, false, true), false, 56434u), Struct_2(vec4<bool>(false, false, true, true), true, 11447u), Struct_2(vec4<bool>(true, true, true, true), true, 30815u), Struct_2(vec4<bool>(true, false, true, false), true, 0u), Struct_2(vec4<bool>(false, true, false, false), false, 1u), Struct_2(vec4<bool>(true, false, false, false), false, 80136u), Struct_2(vec4<bool>(true, true, false, true), true, 55844u), Struct_2(vec4<bool>(false, true, false, true), false, 56263u), Struct_2(vec4<bool>(false, true, true, true), false, 4294967295u), Struct_2(vec4<bool>(true, true, false, false), false, 65479u), Struct_2(vec4<bool>(true, false, false, true), false, 100222u), Struct_2(vec4<bool>(true, true, false, false), false, 22883u), Struct_2(vec4<bool>(true, false, false, true), true, 44085u), Struct_2(vec4<bool>(true, false, false, true), false, 4294967295u), Struct_2(vec4<bool>(false, false, false, true), true, 13208u), Struct_2(vec4<bool>(true, true, false, false), true, 4294967295u), Struct_2(vec4<bool>(false, false, false, false), false, 4294967295u), Struct_2(vec4<bool>(false, true, true, false), false, 69037u), Struct_2(vec4<bool>(true, true, false, false), false, 1u), Struct_2(vec4<bool>(true, false, true, true), false, 56647u), Struct_2(vec4<bool>(true, false, false, false), true, 4294967295u), Struct_2(vec4<bool>(true, true, false, false), true, 0u), Struct_2(vec4<bool>(false, false, true, false), false, 14595u), Struct_2(vec4<bool>(true, false, true, false), true, 1u));

var<private> global3: array<vec2<f32>, 13>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<u32>, arg_1: i32) -> u32 {
    global3 = array<vec2<f32>, 13>();
    global2 = array<Struct_2, 28>();
    let var_0 = Struct_2(vec4<bool>(any(vec3<bool>(3127u != u_input.a.x, true, true)), !any(vec2<bool>(true, true)), true, !any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false)))), true, u_input.b);
    global3 = array<vec2<f32>, 13>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(953f + -1011f), _wgslsmith_f_op_f32(select(205f, -783f, true)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-262f)), _wgslsmith_f_op_f32(f32(-1f) * -458f))) - -1148f));
    return ~(min(u_input.b >> (~arg_0.x % 32u), 39282u) | abs(~_wgslsmith_mult_u32(u_input.b, u_input.a.x)));
}

fn func_2() -> f32 {
    global0 = 1i;
    var var_0 = vec3<bool>(true, false && (false || (all(vec2<bool>(false, false)) || false)), true);
    var var_1 = global1[_wgslsmith_index_u32(func_3(~(firstTrailingBit(abs(u_input.a)) & u_input.a), 0i), 16u)];
    global1 = array<vec4<i32>, 16>();
    var var_2 = min(u_input.c, var_1.x);
    return -892f;
}

fn func_4(arg_0: f32) -> Struct_1 {
    var var_0 = true;
    let var_1 = ~countOneBits(vec2<i32>(max(u_input.c, _wgslsmith_clamp_i32(-23066i, -28199i, 1i)), 1i));
    global3 = array<vec2<f32>, 13>();
    global3 = array<vec2<f32>, 13>();
    global3 = array<vec2<f32>, 13>();
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * arg_0) - _wgslsmith_f_op_f32(max(arg_0, -2201f))));
}

fn func_1() -> vec2<bool> {
    let var_0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())));
    var var_1 = vec4<f32>(-490f, var_0.a, 851f, _wgslsmith_f_op_f32(select(292f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1896f - -735f) - _wgslsmith_f_op_f32(sign(var_0.a)))), true)));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-114f)) * var_0.a)))), var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)));
    var var_2 = ~u_input.a.x;
    var var_3 = Struct_2(vec4<bool>(true, true, true, true), false, _wgslsmith_mod_u32(0u, ~(min(u_input.a.x, u_input.b) >> (u_input.a.x % 32u))));
    return !vec2<bool>(!(var_1.x < _wgslsmith_div_f32(var_0.a, 949f)), true);
}

fn func_5(arg_0: vec3<u32>, arg_1: vec2<bool>) -> Struct_2 {
    let var_0 = true;
    global3 = array<vec2<f32>, 13>();
    return global2[_wgslsmith_index_u32(~arg_0.x, 28u)];
}

fn func_6(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec2<i32>, arg_3: Struct_2) -> Struct_2 {
    return func_5(~u_input.a, vec2<bool>(arg_3.a.x, false));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<f32>, 13>();
    let var_0 = -(~vec3<i32>(~u_input.c, 0i, abs(u_input.c)));
    let var_1 = vec2<u32>(45988u, 1902u);
    global2 = array<Struct_2, 28>();
    global3 = array<vec2<f32>, 13>();
    var var_2 = func_6(func_5(_wgslsmith_div_vec3_u32(u_input.a, u_input.a) | abs(u_input.a), select(!func_1(), !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), false), true))), global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(~4294967295u, var_1.x), 16u)], ~var_0.zz, Struct_2(!func_5(u_input.a | u_input.a, vec2<bool>(true, true)).a, true, abs(_wgslsmith_mult_u32(41581u, 58547u))));
    global2 = array<Struct_2, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(1f);
}

