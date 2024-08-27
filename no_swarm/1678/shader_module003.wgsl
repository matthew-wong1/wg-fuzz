struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(trunc(-711f));
    var var_1 = Struct_3(2147483647i, 1f, vec3<bool>(true, all(vec4<bool>(true, u_input.b > u_input.b, all(vec2<bool>(false, false)), true)), !all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true)))));
    var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) - _wgslsmith_f_op_f32(ceil(-559f)))))));
    var_0 = var_1.b;
    let var_2 = 1i << (0u % 32u);
    return max(89469u, 1u);
}

fn func_2(arg_0: u32, arg_1: Struct_3, arg_2: f32) -> u32 {
    return select(_wgslsmith_div_u32(func_3(), _wgslsmith_mult_u32(u_input.b, ~u_input.b)), _wgslsmith_add_u32(countOneBits(arg_0), 4294967295u), !any(vec2<bool>(any(arg_1.c.zx), true)));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_1;
    var_0 = arg_3;
    var var_1 = Struct_2(arg_3);
    let var_2 = ~arg_1.a;
    return Struct_1(arg_1.b, arg_3.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-470f, -171f, true)) + arg_0))), u_input.a);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = arg_0;
    var_0 = func_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -385f) * _wgslsmith_f_op_f32(var_0.c - _wgslsmith_f_op_f32(max(arg_0.c, -321f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(768f)) * _wgslsmith_f_op_f32(arg_0.c + arg_0.c))))), Struct_1(_wgslsmith_mult_u32(_wgslsmith_mult_u32(max(u_input.b, 1305u), 4294967295u), 1u), var_0.b, -894f, 74091i), any(vec3<bool>(any(vec3<bool>(true, true, true)), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -16629i, 2147483647i, -65790i), vec4<i32>(-1i, -2147483647i, 34619i, -1i)) < u_input.a, any(vec4<bool>(true, true, true, true)))), Struct_1(~(~24880u), ~max(func_2(arg_1.x, Struct_3(u_input.a, arg_0.c, vec3<bool>(false, true, false)), 242f), _wgslsmith_dot_vec3_u32(arg_1.www, arg_1.xzx)), arg_0.c, -1i));
    var var_1 = true;
    var var_2 = ~(~(~u_input.b));
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(740f + -342f), _wgslsmith_f_op_f32(abs(arg_1.a.c)))))));
    var_0 = 740f;
    let var_1 = arg_1;
    let var_2 = ~vec2<i32>(5625i, u_input.a);
    let var_3 = Struct_2(arg_1.a);
    return var_1.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(u_input.a, _wgslsmith_f_op_f32(func_5(func_1(Struct_1(~u_input.b, _wgslsmith_add_u32(61926u, 0u), _wgslsmith_f_op_f32(880f + -1933f), -23982i), ~vec4<u32>(0u, 54893u, u_input.b, u_input.b)), Struct_2(Struct_1(u_input.b, func_3(), -252f, -u_input.a)))), select(!vec3<bool>(true, all(vec3<bool>(true, false, true)), true), vec3<bool>(any(vec2<bool>(false, false)), true, any(vec3<bool>(true, true, true))), !any(vec2<bool>(true, true))));
    let var_1 = var_0.a ^ u_input.a;
    var_0 = Struct_3(35270i, _wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) - _wgslsmith_f_op_f32(select(-1061f, 976f, var_0.c.x))) * var_0.b)), vec3<bool>(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a, -6508i, 1i, var_1), vec4<i32>(var_0.a, -2147483647i, u_input.a, u_input.a)), -var_1) >= (1i >> (1u % 32u)), true, true));
    var var_2 = _wgslsmith_div_i32(~(_wgslsmith_mod_i32(var_0.a, ~2147483647i) >> (_wgslsmith_mult_u32(~u_input.b, u_input.b << (u_input.b % 32u)) % 32u)), _wgslsmith_mod_i32(-56252i, func_4(var_0.b, Struct_1(u_input.b, ~13943u, _wgslsmith_f_op_f32(-var_0.b), -u_input.a), true, Struct_1(u_input.b, ~u_input.b, 1348f, -var_0.a)).d));
    let var_3 = _wgslsmith_dot_vec3_u32(select(~vec3<u32>(~4294967295u, ~u_input.b, u_input.b), vec3<u32>(0u >> (_wgslsmith_clamp_u32(17548u, u_input.b, 35477u) % 32u), u_input.b, reverseBits(9077u) >> (~u_input.b % 32u)), all(var_0.c.xx)), ~(~_wgslsmith_mod_vec3_u32(abs(vec3<u32>(0u, u_input.b, 69295u)), ~vec3<u32>(0u, 8486u, 4294967295u))));
    let var_4 = Struct_2(func_1(Struct_1(var_3, var_3, 1367f, _wgslsmith_clamp_i32(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(28050i, -2147483647i, 13863i, var_0.a), vec4<i32>(48551i, u_input.a, 2817i, -25664i)), ~1i)), ~(~countOneBits(vec4<u32>(u_input.b, u_input.b, u_input.b, var_3)))));
    let var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1404f, var_0.b, var_0.b, var_4.a.c))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -921f), var_0.b, _wgslsmith_f_op_f32(func_5(var_4.a, var_4)), _wgslsmith_f_op_f32(-var_4.a.c))))));
    var var_6 = !select(all(var_0.c.xx), !(_wgslsmith_add_i32(-31039i, u_input.a) < 1i), !var_0.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(-37567i), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(step(var_5.x, -355f)), _wgslsmith_f_op_f32(min(-1370f, 1682f))))))), _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 0u), ~vec2<u32>(var_4.a.b, 0u)), reverseBits(vec2<u32>(var_3, 19112u)) >> ((vec2<u32>(var_4.a.b, u_input.b) >> (vec2<u32>(var_4.a.b, 67304u) % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(u_input.b, 0u)), reverseBits(vec2<u32>(var_3, 7475u)))) >> (_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, var_4.a.b), vec2<u32>(u_input.b, 4294967295u), vec2<u32>(var_4.a.a, 29563u)), _wgslsmith_add_vec2_u32(vec2<u32>(17206u, var_4.a.a), vec2<u32>(var_4.a.a, var_3))), ~_wgslsmith_sub_vec2_u32(vec2<u32>(var_4.a.b, var_3), vec2<u32>(u_input.b, var_3))) % vec2<u32>(32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(47405u, ~u_input.b, ~(~var_4.a.a)), vec3<u32>(30712u, ~(var_4.a.b & var_3), ~var_4.a.b), reverseBits(firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, var_4.a.a, u_input.b), vec3<u32>(4886u, 25960u, 6294u))))), var_5.x);
}

