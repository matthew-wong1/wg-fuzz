struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: f32,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> Struct_2 {
    let var_0 = false;
    global0 = !var_0;
    let var_1 = _wgslsmith_sub_vec2_i32(u_input.d, ~vec2<i32>(u_input.a, 2147483647i));
    global0 = false;
    global0 = var_0;
    return Struct_2(!(!vec3<bool>(var_0, any(vec3<bool>(var_0, true, var_0)), false)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-549f, _wgslsmith_f_op_f32(1528f + 737f), -1659f, _wgslsmith_f_op_f32(-561f * -951f))), _wgslsmith_mod_u32(_wgslsmith_mod_u32(61202u ^ u_input.c.x, 1u), u_input.b.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, 1298f, -1429f, -965f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(528f, -203f, 1057f, 2132f), vec4<f32>(1738f, -804f, -404f, -872f), vec4<bool>(false, var_0, var_0, true))))))));
}

fn func_3(arg_0: f32) -> u32 {
    var var_0 = arg_0;
    var var_1 = ~_wgslsmith_mod_vec4_u32(countOneBits(u_input.b), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u | u_input.b.x, 16632u, u_input.b.x), vec4<u32>(0u, 35324u, ~u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b.x, 118906u, 25203u), vec4<u32>(1u, u_input.b.x, u_input.c.x, u_input.c.x)))));
    var var_2 = func_2();
    var_2 = func_2();
    let var_3 = !all(vec2<bool>(func_2().a.x, false)) & all(!(!vec4<bool>(var_2.a.x, true, true, var_2.a.x)));
    return 1u;
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> vec2<bool> {
    global0 = arg_0.a.x && all(vec2<bool>(arg_0.a.x, true));
    var var_0 = Struct_2(!func_2().a, arg_0.b);
    var var_1 = _wgslsmith_add_i32(_wgslsmith_mod_i32(~(~firstTrailingBit(-2147483647i)), 57246i), 1i);
    let var_2 = 731f;
    let var_3 = _wgslsmith_clamp_vec3_u32(~vec3<u32>(1u >> (arg_0.b.b % 32u), var_0.b.b, ~83203u) | u_input.b.zyw, vec3<u32>(u_input.b.x, u_input.c.x, _wgslsmith_add_u32(~arg_0.b.b, _wgslsmith_div_u32(5590u, arg_1)) >> (16038u % 32u)), u_input.b.xwx);
    return !var_0.a.zz;
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: bool) -> vec2<bool> {
    let var_0 = u_input.c.x;
    let var_1 = ~vec3<u32>(4294967295u, var_0, 9886u);
    let var_2 = func_2();
    let var_3 = arg_0;
    global0 = any(func_2().a.zy);
    return func_4(arg_1, func_3(_wgslsmith_div_f32(-1004f, -498f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-116f)) + _wgslsmith_f_op_f32(ceil(430f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-998f, 1659f)), _wgslsmith_f_op_f32(step(-441f, 806f))), _wgslsmith_f_op_f32(-802f - _wgslsmith_f_op_f32(ceil(473f))), _wgslsmith_f_op_f32(f32(-1f) * -558f)), u_input.b.x, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1243f - -426f), _wgslsmith_div_f32(-197f, -859f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-440f, -714f, any(vec2<bool>(false, true)))))), -396f, -772f));
    var var_1 = _wgslsmith_clamp_u32(u_input.c.x, 16u, var_0.b);
    global0 = true;
    var var_2 = u_input.b.x;
    var var_3 = vec4<bool>(all(!func_1(vec4<bool>(true, true, true, true), Struct_2(vec3<bool>(true, false, true), var_0), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false), true)), select(false, true, false) && false, !all(vec3<bool>(true, true, false)) == false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1927f - _wgslsmith_f_op_f32(select(var_0.a.x, var_0.a.x, true)))) > _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.x + 1237f), -595f) - -582f));
    global0 = var_3.x;
    var_1 = ~(~(var_0.b & ~u_input.b.x)) ^ ~(~_wgslsmith_clamp_u32(countOneBits(2663u), abs(0u), ~16841u));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.x, ~reverseBits(vec4<u32>(var_0.b, 11692u, u_input.c.x, u_input.c.x)) << (_wgslsmith_sub_vec4_u32(u_input.b >> (reverseBits(u_input.b) % vec4<u32>(32u)), vec4<u32>(~u_input.c.x, ~var_0.b, var_0.b, 48646u)) % vec4<u32>(32u)), var_0.c.x, _wgslsmith_f_op_vec4_f32(min(var_0.a, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), var_0.c.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.a.x), -1163f, true)), _wgslsmith_f_op_f32(-var_0.c.x)))), 2512i);
}

