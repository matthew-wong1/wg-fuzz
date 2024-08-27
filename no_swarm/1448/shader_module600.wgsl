struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: vec4<f32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: i32,
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

var<private> global0: u32 = 0u;

var<private> global1: vec3<f32> = vec3<f32>(-1001f, 1000f, -1000f);

var<private> global2: bool = false;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> bool {
    let var_0 = arg_1;
    global0 = u_input.a;
    global1 = arg_0.c.wzw;
    let var_1 = ~_wgslsmith_dot_vec4_u32(u_input.c, countOneBits(u_input.c));
    let var_2 = i32(-1i) * -1i;
    return false;
}

fn func_1(arg_0: Struct_1) -> bool {
    let var_0 = arg_0;
    return func_2(var_0, arg_0, arg_0.a.x);
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: u32, arg_3: vec4<bool>) -> i32 {
    let var_0 = false;
    global0 = 4294967295u;
    var var_1 = min(-(-24234i << (_wgslsmith_clamp_u32(arg_1, ~arg_1, arg_0) % 32u)), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.d.x ^ 76195i, 0i)), ~_wgslsmith_div_vec2_i32(u_input.d, u_input.d)));
    let var_2 = _wgslsmith_clamp_i32(_wgslsmith_add_i32(u_input.d.x, u_input.d.x ^ ~(~27826i)), abs(_wgslsmith_dot_vec3_i32(min(_wgslsmith_mult_vec3_i32(vec3<i32>(56464i, u_input.d.x, u_input.d.x), vec3<i32>(-7719i, u_input.e, u_input.d.x)), vec3<i32>(u_input.d.x, u_input.e, 26286i) << (vec3<u32>(17856u, arg_0, 54348u) % vec3<u32>(32u))), select(vec3<i32>(19759i, u_input.d.x, u_input.e), vec3<i32>(1i, 35644i, 36506i), var_0) << (u_input.b % vec3<u32>(32u)))), ~(_wgslsmith_dot_vec2_i32(min(vec2<i32>(u_input.d.x, u_input.d.x), u_input.d), ~u_input.d) ^ -u_input.e));
    let var_3 = Struct_1(!arg_3.xy, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-541f, -139f)) - vec2<f32>(global1.x, 1422f)) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1082f, global1.x)))))), vec4<f32>(global1.x, global1.x, global1.x, global1.x), 0i);
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, true, true);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-950f * -483f), _wgslsmith_f_op_f32(-global1.x)), global1.x, _wgslsmith_div_f32(global1.x, 1377f));
    let var_2 = func_3(u_input.c.x, 16393u, ~(27837u >> (0u % 32u)) << (u_input.c.x % 32u), select(select(vec4<bool>(true, var_0.x, func_1(Struct_1(var_0.xz, vec2<f32>(-350f, 278f), vec4<f32>(720f, 413f, global1.x, global1.x), -1i)), true), select(!vec4<bool>(true, true, var_0.x, false), vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(true, false, false, false)), true), vec4<bool>(select(true, true, false | var_0.x), !var_0.x, !any(var_0.zy), false), true));
    var var_3 = _wgslsmith_f_op_f32(round(1000f));
    var var_4 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), global1.x)));
    var var_5 = Struct_1(!(!var_0.xz), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(global1.zy))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(673f, 394f, -699f, var_4.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1 - var_1))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, global1.x, var_1.x, 1430f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 1377f, var_1.x, global1.x) + var_1))), var_2);
    let var_6 = Struct_1(var_5.a, vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-801f, var_5.b.x), _wgslsmith_f_op_f32(step(1000f, 1677f)))), var_4.x)), _wgslsmith_f_op_f32(-var_5.c.x)), _wgslsmith_f_op_vec4_f32(sign(var_5.c)), _wgslsmith_mod_i32(_wgslsmith_add_i32(abs(var_5.d), var_5.d), _wgslsmith_dot_vec2_i32(firstTrailingBit(_wgslsmith_mod_vec2_i32(u_input.d, vec2<i32>(var_5.d, var_2))), u_input.d)));
    let var_7 = var_4.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -2292f), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -835f), var_5.b.x, _wgslsmith_f_op_f32(floor(var_4.x)), _wgslsmith_f_op_f32(round(var_4.x))));
}

