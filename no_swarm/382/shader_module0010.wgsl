struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: u32,
    c: vec2<bool>,
    d: vec3<bool>,
}

struct Struct_5 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32, arg_1: bool) -> f32 {
    var var_0 = Struct_1(-_wgslsmith_div_i32(1i, u_input.b), -1i, -29514i, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-arg_0), -1457f))));
    var_0 = Struct_1(_wgslsmith_mult_i32(27667i, select(1i, -56141i, any(select(vec2<bool>(true, arg_1), vec2<bool>(true, true), vec2<bool>(false, arg_1))))), min(global0.x, abs(-49330i) & var_0.b), var_0.b, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-716f, var_0.d.x))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.d.x, var_0.d.x))), vec2<bool>(arg_1, true)))))));
    var var_1 = firstLeadingBit(12983u);
    var_1 = u_input.a.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.d) + vec2<f32>(_wgslsmith_f_op_f32(exp2(var_0.d.x)), _wgslsmith_f_op_f32(trunc(624f)))), vec2<f32>(_wgslsmith_f_op_f32(trunc(-1138f)), _wgslsmith_f_op_f32(round(var_0.d.x))), arg_1)) - _wgslsmith_f_op_vec2_f32(ceil(var_0.d)));
    return 1179f;
}

fn func_2(arg_0: Struct_5, arg_1: vec2<bool>, arg_2: bool) -> vec4<i32> {
    let var_0 = select(vec2<bool>(arg_1.x, arg_2), vec2<bool>(!arg_1.x, true), arg_1.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1045f, -1108f, _wgslsmith_f_op_f32(1252f + -662f)) + vec3<f32>(_wgslsmith_f_op_f32(806f * 590f), _wgslsmith_f_op_f32(-272f * 614f), -571f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-195f, 1626f, -355f), vec3<f32>(-114f, -853f, 515f))))) * vec3<f32>(_wgslsmith_f_op_f32(ceil(-169f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, -704f))), -556f)));
    var var_2 = arg_0;
    var var_3 = arg_2;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(var_1.x, all(vec4<bool>(var_0.x, arg_1.x, arg_1.x, var_0.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -804f))) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), all(!select(vec4<bool>(arg_1.x, false, false, arg_1.x), vec4<bool>(false, arg_2, false, false), vec4<bool>(arg_1.x, arg_2, arg_1.x, arg_2))))));
    return select(vec4<i32>(-u_input.b, global0.x, -1i, u_input.b << (~(~var_2.a.x) % 32u)), -vec4<i32>(abs(-10518i), global0.x, 0i, u_input.b), select(!vec4<bool>(any(vec4<bool>(arg_1.x, true, var_0.x, false)), var_0.x && false, var_0.x, !var_0.x), vec4<bool>(any(vec4<bool>(false, false, arg_1.x, true)), arg_1.x && false, false, all(!vec4<bool>(var_0.x, arg_1.x, true, arg_2))), true));
}

fn func_1() -> Struct_2 {
    global0 = select(-_wgslsmith_mod_vec4_i32(func_2(Struct_5(vec4<u32>(26585u, 32285u, u_input.a.x, u_input.a.x)), vec2<bool>(false, false), any(vec2<bool>(false, true))), ~vec4<i32>(-2147483647i, u_input.b, global0.x, 1i)), _wgslsmith_clamp_vec4_i32(~abs(vec4<i32>(-2147483647i, u_input.b, -22261i, global0.x)), ~_wgslsmith_clamp_vec4_i32(-vec4<i32>(global0.x, u_input.b, global0.x, 37377i), vec4<i32>(-2147483647i, u_input.b, u_input.b, 1i), min(vec4<i32>(u_input.b, 33314i, global0.x, global0.x), vec4<i32>(global0.x, global0.x, -35274i, global0.x))), vec4<i32>(-7099i, global0.x, ~_wgslsmith_mult_i32(-1i, -59598i), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(51335i, u_input.b, u_input.b, -2147483647i), vec4<i32>(0i, -1i, global0.x, 2147483647i)), 22161i))), select(!vec4<bool>(all(vec2<bool>(true, false)), all(vec4<bool>(false, true, true, false)), true, false), !vec4<bool>(any(vec4<bool>(false, true, true, false)), true, u_input.a.x == 69445u, 76561u > u_input.a.x), vec4<bool>(any(vec3<bool>(false, false, false)), select(u_input.a.x, 15891u, true) == 7256u, all(vec2<bool>(true, false)), false)));
    var var_0 = Struct_3(u_input.a, Struct_1(abs(-1i), global0.x, _wgslsmith_dot_vec4_i32(firstLeadingBit(firstTrailingBit(vec4<i32>(u_input.b, -1i, u_input.b, 2147483647i))), vec4<i32>(-u_input.b, 1i, global0.x, u_input.b)), vec2<f32>(-376f, _wgslsmith_f_op_f32(round(-417f)))), -2173i, Struct_2(~(-2147483647i), u_input.a.x, all(vec2<bool>(true, true)) | true));
    let var_1 = Struct_4(global0.wxy, var_0.d.b, !vec2<bool>(global0.x == _wgslsmith_mult_i32(var_0.d.a, 2147483647i), true), select(select(vec3<bool>(false, var_0.d.c & var_0.d.c, true), !select(vec3<bool>(var_0.d.c, var_0.d.c, var_0.d.c), vec3<bool>(true, var_0.d.c, var_0.d.c), vec3<bool>(var_0.d.c, var_0.d.c, var_0.d.c)), !all(vec4<bool>(var_0.d.c, var_0.d.c, var_0.d.c, false))), select(select(select(vec3<bool>(true, true, var_0.d.c), vec3<bool>(false, var_0.d.c, true), vec3<bool>(true, var_0.d.c, false)), select(vec3<bool>(true, var_0.d.c, var_0.d.c), vec3<bool>(var_0.d.c, true, true), var_0.d.c), !vec3<bool>(var_0.d.c, false, var_0.d.c)), !select(vec3<bool>(var_0.d.c, var_0.d.c, false), vec3<bool>(true, var_0.d.c, var_0.d.c), var_0.d.c), false), (true & any(vec4<bool>(var_0.d.c, false, var_0.d.c, true))) | select(var_0.d.c | false, all(vec4<bool>(var_0.d.c, var_0.d.c, false, true)), var_0.d.c)));
    var_0 = Struct_3(vec3<u32>(min(~firstLeadingBit(var_0.a.x), u_input.a.x ^ ~u_input.a.x), ~0u, ~_wgslsmith_mult_u32(u_input.a.x, var_0.d.b) >> (17269u % 32u)), var_0.b, -28667i, var_0.d);
    let var_2 = var_0.b.d.x;
    return var_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_u32(1u, u_input.a.x);
    global0 = ~vec4<i32>(-2147483647i, 1i, 1i, (_wgslsmith_add_i32(u_input.b, global0.x) ^ min(u_input.b, global0.x)) ^ global0.x);
    var var_1 = func_1();
    var_0 = ~(u_input.a.x | var_1.b) & u_input.a.x;
    let var_2 = _wgslsmith_add_vec4_u32(vec4<u32>(~(~reverseBits(1u)), u_input.a.x ^ var_1.b, u_input.a.x ^ (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 60015u), u_input.a) | min(u_input.a.x, 98988u)), _wgslsmith_mod_u32(4294967295u ^ var_1.b, max(_wgslsmith_clamp_u32(8373u, u_input.a.x, var_1.b), 122791u))), ~vec4<u32>(1u, u_input.a.x, _wgslsmith_add_u32(15288u, var_1.b), func_1().b));
    let var_3 = -firstTrailingBit(-_wgslsmith_mult_i32(-1i, u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(-597f, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2202f, -2162f, -103f, -763f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2271f, 1877f, 791f, 246f)))))));
}

