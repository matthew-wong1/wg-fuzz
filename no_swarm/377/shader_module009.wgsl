struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2) -> f32 {
    var var_0 = _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.e.x, 1u), u_input.b.wy), u_input.e | _wgslsmith_mod_vec2_u32(~vec2<u32>(4294967295u, 89097u), select(vec2<u32>(4294967295u, 69712u), vec2<u32>(u_input.e.x, u_input.e.x), vec2<bool>(arg_0.b.a.x, false)))), u_input.e ^ (vec2<u32>(min(u_input.b.x, u_input.b.x), u_input.b.x) ^ u_input.b.zw));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(sign(572f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(316f, -1287f)))))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-125f, -636f)))));
    let var_2 = true;
    var var_3 = u_input.b.x;
    return var_1.x;
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2) -> bool {
    var var_0 = !vec4<bool>(all(!select(arg_0.c.a, vec2<bool>(true, arg_2.c.a.x), true)), !(-41394i < arg_1) | !arg_0.b.a.x, select(true, (true | arg_2.b.a.x) && false, 2147483647i > arg_1), !arg_0.b.a.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(abs(-637f)), 1170f, -2093f, _wgslsmith_f_op_f32(1322f * -632f)), vec4<f32>(_wgslsmith_f_op_f32(340f + -679f), -1000f, _wgslsmith_f_op_f32(floor(-1000f)), -1000f), _wgslsmith_f_op_f32(565f - 1518f) != _wgslsmith_f_op_f32(func_3(arg_2))))));
    var var_2 = _wgslsmith_mod_vec2_i32(vec2<i32>(~arg_2.a, -firstTrailingBit(arg_2.a ^ -6057i)), vec2<i32>(arg_2.a | -_wgslsmith_add_i32(arg_1, -1i), -_wgslsmith_mod_i32(-12583i, -36900i) | _wgslsmith_mod_i32(arg_0.a << (32308u % 32u), 1i)));
    let var_3 = Struct_2(-2147483647i, arg_0.b, Struct_1(select(vec2<bool>(!arg_2.b.a.x, arg_0.b.a.x || var_0.x), var_0.xx, arg_2.b.a.x)));
    let var_4 = !all(arg_2.c.a) && true;
    return true;
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(348f * 1084f)) - -1321f)));
    let var_1 = !select(vec4<bool>(true, any(vec4<bool>(true, true, true, true)), ~3094i != u_input.c, !func_2(Struct_2(u_input.d.x, Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true))), 1i, Struct_2(u_input.d.x, Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false))))), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), false)), !(select(false, false, false) | true));
    let var_2 = _wgslsmith_clamp_i32(u_input.a, ~36655i, i32(-1i) * -8492i) <= _wgslsmith_div_i32(~(-8517i), 2147483647i);
    var var_3 = _wgslsmith_add_u32(u_input.b.x, _wgslsmith_dot_vec3_u32(u_input.b.yxz, ~vec3<u32>(abs(u_input.e.x), u_input.b.x, 17147u)));
    var var_4 = Struct_2(u_input.c, Struct_1(vec2<bool>(true, var_2)), Struct_1(select(!(!vec2<bool>(var_2, true)), select(var_1.xy, vec2<bool>(true, true), var_1.zz), select(select(var_1.yy, vec2<bool>(var_2, var_2), var_2), var_1.yx, var_1.zy))));
    return ~(~_wgslsmith_dot_vec2_u32(~select(vec2<u32>(u_input.b.x, 3971u), u_input.b.yw, vec2<bool>(true, var_4.c.a.x)), countOneBits(u_input.e & vec2<u32>(40120u, 0u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(~u_input.e.x, u_input.b.x), u_input.e.x), _wgslsmith_add_u32(35904u, ~func_1()), _wgslsmith_div_u32(u_input.e.x, _wgslsmith_dot_vec3_u32(u_input.b.xyx, vec3<u32>(31585u, 9102u, u_input.b.x) | u_input.b.zyz)), countOneBits(reverseBits(~0u)));
    let var_1 = ~(-u_input.d);
    var var_2 = Struct_1(select(!(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false))), select(select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(false, true), true), vec2<bool>(true, true), vec2<bool>(true, all(vec3<bool>(false, true, false)))), select(vec2<bool>(true, func_2(Struct_2(var_1.x, Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, true))), 9688i, Struct_2(var_1.x, Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false))))), vec2<bool>(true, all(vec4<bool>(false, true, true, true))), vec2<bool>(true, true))));
    var_2 = Struct_1(var_2.a);
    let var_3 = _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -1i, 19353i), ~vec3<i32>(var_1.x, 48671i, var_1.x));
    let var_4 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(Struct_2(firstLeadingBit(1i), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true))))))), u_input.a);
}

