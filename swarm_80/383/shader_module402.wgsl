struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: bool,
}

struct Struct_5 {
    a: u32,
    b: bool,
    c: vec4<i32>,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 16> = array<vec2<i32>, 16>(vec2<i32>(-1i, 37091i), vec2<i32>(-45793i, 31611i), vec2<i32>(1i, -25196i), vec2<i32>(1i, 12721i), vec2<i32>(2147483647i, -12893i), vec2<i32>(0i, 2147483647i), vec2<i32>(2147483647i, 5216i), vec2<i32>(-54941i, 2147483647i), vec2<i32>(-1i, -44488i), vec2<i32>(1i, -15999i), vec2<i32>(72946i, i32(-2147483648)), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(-65513i, -17724i), vec2<i32>(36612i, -61561i), vec2<i32>(-1i, 0i), vec2<i32>(-13829i, -16557i));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_2) -> vec3<u32> {
    var var_0 = Struct_5(~(~arg_0.a.x), false, select(vec4<i32>(19039i, _wgslsmith_add_i32(max(-52868i, u_input.a.x), abs(-32729i)), u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(-1i, u_input.a.x))), _wgslsmith_div_vec4_i32(-vec4<i32>(u_input.a.x, 1i, -1i, -2147483647i), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(33985i, 2147483647i, 0i, 14618i)), u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, 25560i), vec4<i32>(u_input.a.x, 0i, u_input.a.x, 2147483647i)), min(-2147483647i, u_input.a.x))), !(!(!vec4<bool>(false, arg_0.c, arg_0.c, true)))), _wgslsmith_f_op_f32(arg_0.b.x - _wgslsmith_f_op_f32(f32(-1f) * -358f)), all(!(!select(vec4<bool>(arg_0.c, arg_0.c, arg_0.c, false), vec4<bool>(arg_0.c, arg_0.c, false, true), true))));
    var_0 = Struct_5(_wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 52402u, 43059u, 47401u), ~vec4<u32>(2199u, var_0.a, 38194u, 0u)), _wgslsmith_mod_vec4_u32(vec4<u32>(~0u, 4294967295u, var_0.a << (var_0.a % 32u), 25193u & var_0.a), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.a, arg_0.a.x, 48380u, 74406u), min(vec4<u32>(1u, var_0.a, var_0.a, var_0.a), vec4<u32>(arg_0.a.x, var_0.a, arg_0.a.x, 0u))))), !any(select(!vec4<bool>(arg_0.c, false, true, var_0.e), !vec4<bool>(false, false, var_0.e, arg_0.c), select(vec4<bool>(false, arg_0.c, var_0.b, arg_0.c), vec4<bool>(arg_0.c, arg_0.c, false, arg_0.c), vec4<bool>(var_0.e, arg_0.c, false, false)))), var_0.c & var_0.c, 535f, any(!vec4<bool>(any(vec3<bool>(false, true, false)), var_0.e, true, !var_0.b)));
    global0 = array<vec2<i32>, 16>();
    global0 = array<vec2<i32>, 16>();
    let var_1 = 19162u;
    return arg_0.a;
}

fn func_2() -> Struct_4 {
    global0 = array<vec2<i32>, 16>();
    let var_0 = !(u_input.a.x != (_wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_div_i32(-47979i, u_input.a.x), u_input.a.x) | -2147483647i));
    var var_1 = Struct_4(Struct_2(~vec3<u32>(~0u, _wgslsmith_mod_u32(33061u, 16913u), 14992u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1280f, -228f, 1103f, -1377f))) * vec4<f32>(_wgslsmith_f_op_f32(abs(-1343f)), 412f, -212f, -232f)), var_0), 1u, var_0);
    var_1 = Struct_4(Struct_2(var_1.a.a << (~func_3(var_1.a) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-var_1.a.b)))), true), _wgslsmith_add_u32(_wgslsmith_mult_u32(4294967295u, firstLeadingBit(_wgslsmith_add_u32(var_1.a.a.x, 12954u))), var_1.a.a.x), false);
    var var_2 = firstLeadingBit(_wgslsmith_mod_vec3_u32(~abs(select(vec3<u32>(var_1.b, var_1.a.a.x, var_1.b), var_1.a.a, var_1.c)), vec3<u32>(1u, 22147u, _wgslsmith_div_u32(var_1.b, max(0u, 0u)))));
    return Struct_4(var_1.a, countOneBits(_wgslsmith_add_u32(~(~4294967295u), ~_wgslsmith_add_u32(97221u, var_2.x))), select(true, !any(!vec3<bool>(false, var_0, var_0)), all(vec4<bool>(select(false, true, var_1.a.c), any(vec3<bool>(false, var_0, var_0)), all(vec4<bool>(var_1.a.c, var_0, var_0, var_0)), true))));
}

fn func_1(arg_0: u32, arg_1: Struct_5) -> vec3<f32> {
    var var_0 = min(vec2<i32>(arg_1.c.x, u_input.a.x), ~abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(-61037i, -1i), vec2<i32>(24501i, u_input.a.x), vec2<i32>(-1i, 44012i)) >> (vec2<u32>(1u, arg_0) % vec2<u32>(32u))));
    var var_1 = func_2();
    var_1 = func_2();
    var var_2 = Struct_4(Struct_2(_wgslsmith_mod_vec3_u32(~(~var_1.a.a), _wgslsmith_clamp_vec3_u32(select(var_1.a.a, vec3<u32>(1u, 57551u, var_1.a.a.x), vec3<bool>(arg_1.e, arg_1.e, var_1.c)), firstTrailingBit(vec3<u32>(arg_0, 0u, arg_0)), _wgslsmith_sub_vec3_u32(var_1.a.a, vec3<u32>(arg_1.a, 23875u, arg_1.a)))), var_1.a.b, any(select(!vec3<bool>(arg_1.e, arg_1.e, var_1.c), select(vec3<bool>(arg_1.e, arg_1.b, true), vec3<bool>(true, var_1.a.c, false), false), false))), 11588u, false);
    var_2 = Struct_4(Struct_2(vec3<u32>(arg_0, var_1.a.a.x, var_2.a.a.x), vec4<f32>(arg_1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.d, var_2.a.b.x))), _wgslsmith_f_op_f32(arg_1.d * _wgslsmith_f_op_f32(908f + -533f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.b.x))), var_1.c), _wgslsmith_add_u32(37210u, func_3(Struct_2(var_2.a.a, var_2.a.b, arg_1.b)).x ^ ~(~var_2.a.a.x)), !(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1159f, -902f), var_1.a.b.x, !arg_1.b)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.b.x) - _wgslsmith_f_op_f32(round(var_1.a.b.x)))));
    return _wgslsmith_f_op_vec3_f32(exp2(var_1.a.b.xyw));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    let var_1 = _wgslsmith_mod_u32(~_wgslsmith_div_u32(abs(firstLeadingBit(37830u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1544u, 4294967295u, 52187u), vec3<u32>(0u, 4294967295u, 4294967295u))), ~7402u);
    global0 = array<vec2<i32>, 16>();
    var var_2 = true;
    global0 = array<vec2<i32>, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-570f, 1756f, -1000f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -2166f, -288f))))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -825f), _wgslsmith_f_op_f32(abs(1252f)), -1062f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(0u, Struct_5(var_1, false, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), 1682f, false))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1079f, -954f, -229f) * vec3<f32>(1161f, -519f, -1000f))), any(vec2<bool>(false, true))))));
}

