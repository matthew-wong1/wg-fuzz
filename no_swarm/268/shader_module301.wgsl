struct Struct_1 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>, arg_2: vec3<i32>, arg_3: Struct_2) -> bool {
    global0 = true;
    global0 = !((arg_3.a.a && false) == false);
    let var_0 = arg_3;
    global0 = ~(-_wgslsmith_sub_i32(arg_2.x ^ 2147483647i, -28115i)) > arg_3.c.x;
    let var_1 = all(!select(!vec4<bool>(true, true, var_0.b.a, var_0.b.a), select(vec4<bool>(arg_3.b.a, true, arg_3.a.a, arg_3.a.a), vec4<bool>(false, false, arg_3.b.a, arg_3.b.a), vec4<bool>(var_0.b.a, false, false, arg_3.b.a)), vec4<bool>(true, true, true, true))) & any(select(!(!vec3<bool>(true, var_0.b.a, true)), select(select(vec3<bool>(arg_3.a.a, true, var_0.a.a), vec3<bool>(arg_3.a.a, var_0.a.a, false), vec3<bool>(var_0.a.a, false, false)), !vec3<bool>(false, var_0.a.a, false), select(vec3<bool>(false, false, true), vec3<bool>(var_0.a.a, arg_3.b.a, false), vec3<bool>(false, arg_3.a.a, arg_3.b.a))), arg_3.a.a));
    return true;
}

fn func_2(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_2) -> vec4<bool> {
    global0 = !any(vec4<bool>(arg_2.a.a | arg_2.b.a, u_input.a.x <= 39123i, arg_2.a.a, !arg_2.b.a)) || (!(~arg_2.d >= u_input.c) & arg_2.a.a);
    let var_0 = -_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2.a.b.x, _wgslsmith_clamp_i32(73087i, u_input.d, arg_2.b.b.x) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.d, u_input.c, 10662u, 0u), u_input.b) % 32u), 33545i, -49394i << (1u % 32u)), _wgslsmith_div_vec4_i32(~vec4<i32>(arg_2.c.x, 99276i, 0i, arg_2.c.x), u_input.a), select(_wgslsmith_mult_vec4_i32(firstLeadingBit(u_input.a), ~vec4<i32>(1i, 0i, u_input.a.x, 34715i)), ~u_input.a, !vec4<bool>(false, true, true, arg_2.b.a)));
    global0 = arg_2.b.a;
    let var_1 = Struct_3(arg_2, Struct_1(func_3(_wgslsmith_f_op_f32(min(arg_0, arg_1.x)), vec2<f32>(-314f, _wgslsmith_f_op_f32(138f + -540f)), u_input.a.yzx ^ -var_0.xzx, arg_2), -(~vec2<i32>(-45878i, u_input.a.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1597f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -477f)))), ~arg_2.d);
    var var_2 = arg_1;
    return vec4<bool>(any(!vec4<bool>(var_1.b.a | true, select(false, false, var_1.a.a.a), arg_2.b.a | false, var_1.b.a)), _wgslsmith_mod_u32(~62196u | var_1.a.d, _wgslsmith_sub_u32(~0u, ~1u)) != var_1.a.d, true, var_1.a.b.a);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<i32>) -> vec2<bool> {
    global0 = !(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1146f))))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1614f))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-1624f, 512f)), _wgslsmith_f_op_f32(f32(-1f) * -356f), arg_0.x))));
    global0 = false;
    global0 = _wgslsmith_mod_u32(u_input.c, ~_wgslsmith_add_u32(u_input.b.x, ~38988u)) <= 0u;
    global0 = arg_0.x;
    global0 = false;
    return select(arg_0, vec2<bool>(!select(false, true, false), all(func_2(661f, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1039f, -1000f, -1602f, 1235f), vec4<f32>(862f, -980f, 1487f, -1508f))), Struct_2(Struct_1(true, vec2<i32>(u_input.a.x, -1i)), Struct_1(false, vec2<i32>(1i, 1i)), vec2<i32>(1i, arg_1.x), 0u)))), vec2<bool>(arg_0.x, true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-429f + -1210f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1296f))))) > _wgslsmith_f_op_f32(442f - 594f);
    var var_0 = -1526f;
    var var_1 = _wgslsmith_add_vec3_u32(vec3<u32>(116046u, _wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.c, u_input.c, u_input.c), _wgslsmith_div_u32(50041u, 1u)), ~u_input.b.x) << (~_wgslsmith_clamp_vec3_u32(u_input.b.xzz & u_input.b.zxx, vec3<u32>(56830u, 1u, 0u), vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u)) % vec3<u32>(32u)), min(u_input.b.wxx >> (vec3<u32>(10970u, _wgslsmith_mult_u32(u_input.b.x, u_input.b.x), u_input.b.x) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(vec3<u32>(min(u_input.b.x, 0u), reverseBits(u_input.b.x), u_input.c << (u_input.b.x % 32u)), u_input.b.yzx)));
    global0 = 451f <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(273f * _wgslsmith_f_op_f32(f32(-1f) * -799f)) - _wgslsmith_f_op_f32(-647f + _wgslsmith_f_op_f32(f32(-1f) * -412f))), _wgslsmith_div_f32(393f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(129f))))));
    var_0 = -150f;
    global0 = any(!func_1(vec2<bool>(true, true), -abs(u_input.a.yyz)));
    var var_2 = firstLeadingBit(vec2<i32>(u_input.d, i32(-1i) * -u_input.d) >> (_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, u_input.b.x) | vec2<u32>(1u, 69969u), vec2<u32>(25647u, 0u)), ~u_input.b.wx, vec2<u32>(0u, 0u) >> (~u_input.b.wy % vec2<u32>(32u))) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-336f - _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1612f, -176f)))), ~vec2<i32>(-1i, _wgslsmith_mult_i32(_wgslsmith_sub_i32(var_2.x, var_2.x), ~var_2.x)));
}

