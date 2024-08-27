struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: bool,
    d: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 679f;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1() -> Struct_3 {
    var var_0 = vec3<u32>(firstTrailingBit(~0u), 4294967295u, ~69865u) & vec3<u32>(firstLeadingBit(1u), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), min(vec4<u32>(0u, 1u, 25893u, 0u), ~vec4<u32>(0u, 0u, 55457u, 65874u))), 24092u);
    return Struct_3(vec3<bool>(all(vec3<bool>(true, true, true)), false, all(vec3<bool>(true, false, all(vec2<bool>(true, false))))), true, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -212f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -200f))))));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: vec3<f32>) -> i32 {
    var var_0 = arg_0.x;
    var var_1 = arg_2;
    let var_2 = Struct_2(-34059i, Struct_1(1i, _wgslsmith_div_vec3_i32(vec3<i32>(-1i) * -arg_0.zyx, arg_0.xxz), any(select(func_1().a, vec3<bool>(true, true, true), vec3<bool>(true, true, true))), vec4<f32>(-398f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-604f * var_1.x)), arg_2.x, var_1.x)));
    global0 = -1307f;
    let var_3 = false;
    return 2147483647i ^ (arg_0.x << (arg_1.x % 32u));
}

fn func_4(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: u32) -> vec2<i32> {
    global0 = 797f;
    global0 = arg_2.b.d.x;
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.d.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1019f + arg_2.b.d.x)))), -302f));
    global0 = _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(833f))));
    let var_0 = false;
    return -(u_input.c ^ countOneBits(vec2<i32>(_wgslsmith_clamp_i32(0i, arg_2.a, 12468i), arg_2.b.a)));
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: i32) -> i32 {
    let var_0 = arg_1;
    var var_1 = -arg_2;
    var_1 = u_input.c.x;
    global0 = 1f;
    var var_2 = var_0.b.c;
    return _wgslsmith_dot_vec2_i32(arg_1.b.b.xx, func_4(firstLeadingBit(_wgslsmith_clamp_u32(12771u, 0u, 47543u)) ^ _wgslsmith_mod_u32(_wgslsmith_mult_u32(0u, 23642u), 1u), !func_1().a.xz, Struct_2(_wgslsmith_sub_i32(func_3(vec4<i32>(arg_2, 1i, 1i, 15242i), vec4<u32>(4294967295u, 25689u, 0u, 4294967295u), arg_1.b.d.yxx), 0i), Struct_1(arg_2, _wgslsmith_mult_vec3_i32(vec3<i32>(1i, arg_1.b.a, arg_1.a), vec3<i32>(u_input.c.x, arg_2, arg_2)), any(vec3<bool>(arg_1.b.c, true, false)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.b.d.x, var_0.b.d.x, -782f, 1000f), vec4<f32>(var_0.b.d.x, -847f, -1000f, arg_1.b.d.x))))), max(40710u, ~4294967295u) >> (reverseBits(~4294967295u) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -128f;
    var var_0 = func_1();
    var var_1 = Struct_1(i32(-1i) * -2147483647i, ~vec3<i32>(~(-18473i), u_input.c.x, _wgslsmith_mod_i32(~u_input.a, u_input.b)), all(vec3<bool>(true, var_0.a.x, func_2(var_0.c, Struct_2(-1i, Struct_1(u_input.a, vec3<i32>(u_input.a, 61328i, u_input.b), var_0.a.x, vec4<f32>(var_0.c, -866f, 321f, var_0.c))), u_input.c.x) <= u_input.c.x)), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_0.c, var_0.c, var_0.c)), vec4<f32>(-1000f, 193f, _wgslsmith_f_op_f32(sign(var_0.c)), -1807f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.c, var_0.c, -1250f, -1629f)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, -1370f, var_0.c, 536f) * vec4<f32>(var_0.c, 771f, -1222f, -1161f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.c, var_0.c, var_0.c, var_0.c), vec4<f32>(189f, -913f, var_0.c, var_0.c), vec4<bool>(var_0.a.x, true, var_0.a.x, var_0.a.x))), vec4<bool>(true, true, var_0.b, true))))));
    var_1 = Struct_1(u_input.a, _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(abs(_wgslsmith_div_vec3_i32(var_1.b, var_1.b)), vec3<i32>(~31608i, 1i, var_1.b.x)), reverseBits(var_1.b ^ var_1.b) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), true, _wgslsmith_f_op_vec4_f32(-var_1.d));
    var_0 = Struct_3(vec3<bool>(true, var_1.d.x <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(463f))), any(var_0.a.yx)), all(!(!var_0.a.zy)), _wgslsmith_f_op_f32(max(var_0.c, 1086f)));
    let var_2 = !(u_input.b <= -2147483647i);
    var_1 = Struct_1(var_1.a, _wgslsmith_mod_vec3_i32(vec3<i32>(-4357i, _wgslsmith_dot_vec3_i32(-var_1.b, var_1.b), max(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.c.x), vec2<i32>(u_input.a, var_1.a)), 1i)), var_1.b), all(var_0.a), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.c * var_1.d.x))) - var_0.c), -151f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.d.x)))), var_0.c));
    var var_3 = Struct_3(select(var_0.a, vec3<bool>((-2147483647i > var_1.b.x) & var_0.a.x, var_2, false), false), var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c + var_1.d.x))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(var_0.c)), _wgslsmith_f_op_f32(-var_0.c)))));
    let var_4 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec2_i32(reverseBits(-u_input.c), _wgslsmith_sub_vec2_i32(u_input.c, min(vec2<i32>(var_1.b.x, u_input.a), vec2<i32>(var_1.a, var_1.a)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1848f)), _wgslsmith_f_op_f32(-var_3.c)) * 126f), max(vec2<u32>(2071u, select(_wgslsmith_mod_u32(53690u, 22093u), _wgslsmith_div_u32(1u, 1u), var_1.c)), ~_wgslsmith_mult_vec2_u32(vec2<u32>(39731u, 39866u), min(vec2<u32>(26205u, 46053u), vec2<u32>(0u, 59088u)))), ~select(-1i, u_input.c.x, false));
}

