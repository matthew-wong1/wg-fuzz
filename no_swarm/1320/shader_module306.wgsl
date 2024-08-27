struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec2<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(Struct_1(vec4<bool>(false, false, true, false)), vec3<bool>(false, true, false)), Struct_2(Struct_1(vec4<bool>(true, true, true, false)), vec3<bool>(true, false, false)), Struct_2(Struct_1(vec4<bool>(true, false, false, true)), vec3<bool>(true, false, false)), Struct_2(Struct_1(vec4<bool>(false, true, false, false)), vec3<bool>(true, false, true)), Struct_2(Struct_1(vec4<bool>(false, false, true, true)), vec3<bool>(true, false, false)), Struct_2(Struct_1(vec4<bool>(false, false, false, true)), vec3<bool>(false, false, true)), Struct_2(Struct_1(vec4<bool>(true, false, false, false)), vec3<bool>(false, false, true)), Struct_2(Struct_1(vec4<bool>(false, false, false, true)), vec3<bool>(false, true, false)), Struct_2(Struct_1(vec4<bool>(false, false, false, true)), vec3<bool>(true, false, false)), Struct_2(Struct_1(vec4<bool>(false, false, false, true)), vec3<bool>(false, true, true)), Struct_2(Struct_1(vec4<bool>(false, true, false, true)), vec3<bool>(true, true, true)), Struct_2(Struct_1(vec4<bool>(false, false, true, true)), vec3<bool>(true, false, false)), Struct_2(Struct_1(vec4<bool>(false, true, true, false)), vec3<bool>(true, true, true)), Struct_2(Struct_1(vec4<bool>(true, true, true, false)), vec3<bool>(false, false, true)), Struct_2(Struct_1(vec4<bool>(true, true, false, false)), vec3<bool>(false, false, false)), Struct_2(Struct_1(vec4<bool>(true, false, true, false)), vec3<bool>(false, true, true)), Struct_2(Struct_1(vec4<bool>(false, false, false, true)), vec3<bool>(true, false, true)), Struct_2(Struct_1(vec4<bool>(true, true, true, false)), vec3<bool>(true, false, false)), Struct_2(Struct_1(vec4<bool>(true, false, true, false)), vec3<bool>(true, true, true)), Struct_2(Struct_1(vec4<bool>(true, false, true, true)), vec3<bool>(true, false, false)), Struct_2(Struct_1(vec4<bool>(true, true, false, true)), vec3<bool>(false, false, false)), Struct_2(Struct_1(vec4<bool>(true, false, false, true)), vec3<bool>(true, false, false)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool) -> bool {
    return true;
}

fn func_2() -> Struct_2 {
    global0 = array<Struct_2, 22>();
    global0 = array<Struct_2, 22>();
    global0 = array<Struct_2, 22>();
    return global0[_wgslsmith_index_u32(select(1u, ~u_input.b, !func_3(true)), 22u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_3) -> vec3<bool> {
    global0 = array<Struct_2, 22>();
    let var_0 = func_2();
    global0 = array<Struct_2, 22>();
    let var_1 = func_2().a;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(1037f, 114f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -238f) + _wgslsmith_f_op_f32(f32(-1f) * -815f))))) + 1f);
    return !vec3<bool>(arg_0.a.x, arg_2.c, true);
}

fn func_1(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: bool) -> Struct_2 {
    var var_0 = func_4(arg_0.b.a, Struct_3(u_input.a, func_2(), select(true, arg_2.b.x, 25645u != arg_0.a.x) || false), Struct_3(vec3<u32>(_wgslsmith_mod_u32(9625u, ~u_input.a.x), firstTrailingBit(u_input.a.x), ~u_input.a.x >> (abs(1u) % 32u)), arg_0.b, arg_1.x));
    var_0 = vec3<bool>(!arg_1.x, arg_2.a.a.x, all(!func_2().b));
    var var_1 = vec2<i32>(~_wgslsmith_div_i32(i32(-1i) * -2147483647i, ~_wgslsmith_mod_i32(16842i, -2147483647i)), _wgslsmith_add_i32(-(0i ^ _wgslsmith_clamp_i32(13989i, 44876i, -1i)), _wgslsmith_sub_i32(~(0i >> (u_input.b % 32u)), 1i)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(774f, -1352f, -1182f, 1651f) * vec4<f32>(-368f, -353f, -465f, -489f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(719f, -754f, -845f, 1000f))), var_1.x == 0i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-121f, 1688f, -475f, 1446f) * vec4<f32>(123f, 503f, 1694f, 913f))))));
    var var_3 = u_input.a.yz;
    return arg_2;
}

fn func_5(arg_0: u32, arg_1: Struct_2) -> f32 {
    global0 = array<Struct_2, 22>();
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(-298f)), _wgslsmith_f_op_f32(f32(-1f) * -339f), _wgslsmith_f_op_f32(-1000f - -1058f), _wgslsmith_f_op_f32(trunc(396f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(1313f, -603f), _wgslsmith_div_f32(1633f, 538f), 1307f, _wgslsmith_f_op_f32(sign(1000f))))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(236f, 107f, 1132f, 690f), vec4<f32>(1f, 1f, 1f, 1f)))))));
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 22>();
    global0 = array<Struct_2, 22>();
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-646f, _wgslsmith_f_op_f32(func_5(1u, func_1(Struct_3(vec3<u32>(u_input.a.x, u_input.b, u_input.a.x), global0[_wgslsmith_index_u32(u_input.a.x, 22u)], true), vec3<bool>(false, true, true), global0[_wgslsmith_index_u32(0u, 22u)], true))))) * vec2<f32>(-520f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1591f * 2407f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    global0 = array<Struct_2, 22>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, var_0.x, 1087f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.a.x), ~_wgslsmith_mod_u32(u_input.b, u_input.b) >> (_wgslsmith_div_u32(abs(u_input.b), 101387u) % 32u), 14687u, ~u_input.a.x & u_input.b), max(_wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(-10657i, -1i)), vec2<i32>(20325i, 1i) | firstTrailingBit(vec2<i32>(0i, 26447i))), _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(13569i, -2147483647i), vec2<i32>(1i, 1i), vec2<i32>(27351i, 37718i)), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, 1i), ~vec2<i32>(15424i, 2147483647i)))), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(var_1.x - var_1.x))), _wgslsmith_f_op_f32(var_0.x * 1f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(1000f, var_0.x), var_1.x) * var_1.zy) - var_0), vec3<f32>(_wgslsmith_f_op_f32(exp2(var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(552f)))), _wgslsmith_f_op_f32(ceil(-1056f))));
}

