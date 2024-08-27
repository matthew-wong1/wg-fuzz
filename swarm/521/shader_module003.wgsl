struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: Struct_3,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: vec2<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<i32>(17664i, -1i));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<bool> {
    global0 = Struct_3(vec2<i32>(min(abs(~u_input.b.x), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-40424i, u_input.b.x, 10989i), -u_input.b.x)), global0.a.x));
    return vec2<bool>(true, true);
}

fn func_2(arg_0: u32) -> f32 {
    let var_0 = true;
    let var_1 = Struct_2(select(!vec2<bool>(true, all(vec3<bool>(false, false, true))), func_3(), !select(vec2<bool>(var_0, var_0), func_3(), vec2<bool>(true, true))), all(vec4<bool>(false | !var_0, true && !var_0, true, var_0)));
    var var_2 = var_1.a;
    var_2 = !(!var_1.a);
    let var_3 = Struct_1(-(~reverseBits(34446i)), _wgslsmith_div_u32(arg_0, arg_0), vec3<bool>(any(vec3<bool>(false, var_2.x || var_0, !var_1.b)), any(!vec4<bool>(true, true, var_1.a.x, true)), _wgslsmith_add_i32(-u_input.b.x, u_input.b.x) >= _wgslsmith_add_i32(global0.a.x, ~global0.a.x)));
    return -573f;
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(20349u)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(1147f))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(0u)) - _wgslsmith_f_op_f32(f32(-1f) * -457f)))));
    global0 = Struct_3(global0.a);
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * var_0) + _wgslsmith_f_op_f32(var_0 - var_0)))), -318f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(271f - var_0)) - var_0), _wgslsmith_f_op_f32(1027f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(206f)) + var_0))));
    global0 = Struct_3(~u_input.b.yx);
    global0 = Struct_3(global0.a);
    return Struct_3(_wgslsmith_clamp_vec2_i32(global0.a, -(~(vec2<i32>(global0.a.x, 5123i) | u_input.b.xx)), _wgslsmith_div_vec2_i32(reverseBits(vec2<i32>(0i, -2147483647i)), abs(vec2<i32>(u_input.b.x, global0.a.x))) << (vec2<u32>(5129u, u_input.a) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    let var_0 = _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)), u_input.a), ~vec2<u32>((u_input.a & 0u) ^ ~0u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.a, 4294967295u, 0u), vec3<u32>(16311u, u_input.a, 4294967295u), vec3<bool>(false, false, false)), ~vec3<u32>(u_input.a, u_input.a, 4294967295u))));
    let var_1 = vec4<u32>(1u, 39749u << (~(var_0.x & 1u) % 32u), u_input.a, _wgslsmith_mult_u32(~1u, var_0.x | _wgslsmith_dot_vec4_u32(min(vec4<u32>(var_0.x, var_0.x, u_input.a, u_input.a), vec4<u32>(50491u, var_0.x, 0u, u_input.a)), vec4<u32>(71095u, 0u, 61642u, var_0.x))));
    var var_2 = ~1u;
    var var_3 = vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global0.a.x, global0.a.x, 1i, u_input.b.x), abs(vec4<i32>(global0.a.x, u_input.b.x, -38884i, global0.a.x))), vec4<i32>(10569i & u_input.b.x, max(-1i, u_input.b.x), ~1i, ~global0.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(-1369f, ~(-1i), vec2<i32>(global0.a.x, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, -28854i, -30468i, u_input.b.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(-66620i, -3962i, global0.a.x, -2147483647i), vec4<i32>(var_3.x, -41511i, -13433i, 2147483647i), vec4<i32>(0i, var_3.x, 8461i, var_3.x))), vec4<i32>(-1i) * -vec4<i32>(global0.a.x, 35171i, global0.a.x, var_3.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-2626f, -886f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1136f, 2176f) * vec2<f32>(-193f, -1000f))))), _wgslsmith_div_vec3_u32(~var_1.zxx, var_1.yzw));
}

