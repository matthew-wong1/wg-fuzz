struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec4<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> f32 {
    let var_0 = Struct_4(Struct_2(arg_0.a, -1189i << (_wgslsmith_add_u32(arg_0.a.b.x, 6871u) % 32u)), _wgslsmith_div_f32(-330f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(492f * global0.x))))));
    let var_1 = var_0.b;
    let var_2 = 0u;
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -245f);
    var_3 = arg_0.a.d.x;
    return global0.x;
}

fn func_2() -> bool {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(max(-422f, 137f)), _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(-26343i, vec4<u32>(u_input.a, 73518u, 0u, 15509u), 27632i, vec4<f32>(-540f, global0.x, global0.x, global0.x), false), -2147483647i))), _wgslsmith_f_op_f32(-global0.x)))));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))))), global0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, global0.x) + _wgslsmith_f_op_f32(f32(-1f) * -594f)));
    global0 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1095f)), 777f, global0.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_div_f32(-303f, -1158f), 797f, 1778f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.x, -320f, global0.x))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -514f, -1256f) * vec3<f32>(global0.x, global0.x, global0.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -1165f, 570f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1052f, global0.x, global0.x)))), any(vec2<bool>(true, true))))));
    let var_0 = u_input.a;
    var var_1 = vec3<i32>(_wgslsmith_mod_i32(~1i, _wgslsmith_div_i32(1i, 1i)), 0i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(1i, 1i), min(vec2<i32>(1i, 1i), vec2<i32>(1i, 1i))), (_wgslsmith_clamp_i32(-12152i, 1i, 15735i) ^ firstTrailingBit(21989i)) ^ 2147483647i, 1i));
    return true;
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: vec2<i32>) -> vec2<bool> {
    let var_0 = Struct_3(!(!(!select(vec4<bool>(arg_0.a.e, true, true, arg_0.a.e), vec4<bool>(false, arg_0.a.e, arg_0.a.e, arg_1), arg_0.a.e))), select(select(!select(vec4<bool>(arg_1, arg_0.a.e, true, arg_0.a.e), vec4<bool>(true, arg_1, false, arg_1), arg_0.a.e), select(!vec4<bool>(true, arg_1, arg_1, false), select(vec4<bool>(arg_1, false, true, arg_0.a.e), vec4<bool>(arg_1, arg_0.a.e, true, arg_0.a.e), arg_1), arg_0.a.e), false), !vec4<bool>(4294967295u >= arg_0.a.b.x, false, all(vec4<bool>(true, true, arg_1, arg_0.a.e)), func_2()), vec4<bool>(!all(vec2<bool>(arg_1, arg_0.a.e)), all(vec2<bool>(false, false)), arg_1, select(true, arg_1, arg_0.a.e))), ~abs(-2147483647i));
    let var_1 = 62434u << (_wgslsmith_mod_u32(max(u_input.a, max(72129u, 16368u)), _wgslsmith_dot_vec2_u32(arg_0.a.b.xx, ~_wgslsmith_mult_vec2_u32(arg_0.a.b.xw, arg_0.a.b.zy))) % 32u);
    let var_2 = Struct_4(Struct_2(arg_0.a, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(arg_0.a.a, var_0.c, arg_0.b, -2147483647i)), ~vec4<i32>(-23075i, 0i, arg_0.a.a, arg_0.a.c)), min(-vec4<i32>(arg_2.x, -2147483647i, -69782i, -42738i), -vec4<i32>(arg_0.b, arg_0.a.a, arg_0.a.c, arg_2.x)))), -2423f);
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(sign(arg_0.a.d.x)), var_2.a.a.d.x);
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(var_2.a.a.d.yyz)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.d.x, arg_0.a.d.x, -411f) - var_2.a.a.d.xyx))), vec3<f32>(-1165f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x * -205f) - 824f), global0.x), any(var_0.a.zxw))));
    return vec2<bool>(!any(vec3<bool>(any(var_0.a), all(vec3<bool>(false, true, arg_1)), !arg_0.a.e)), var_0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(!select(func_1(Struct_2(Struct_1(0i, vec4<u32>(56293u, 1u, u_input.a, 6180u), 2973i, vec4<f32>(global0.x, global0.x, 950f, global0.x), true), 2147483647i), all(vec2<bool>(true, false)), -vec2<i32>(-2147483647i, -32892i)), !select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(false, false), func_2())));
    var var_1 = _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 1i, 1i), select(vec3<i32>(firstTrailingBit(_wgslsmith_sub_i32(-1i, 2147483647i)), 1i, _wgslsmith_mult_i32(_wgslsmith_mult_i32(-1i, 33614i), firstTrailingBit(2147483647i))), -(~(-vec3<i32>(0i, -1i, 1i))), false));
    var_0 = all(!(!vec3<bool>(true, func_1(Struct_2(Struct_1(var_1.x, vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), -6211i, vec4<f32>(global0.x, global0.x, 380f, global0.x), false), 34771i), true, var_1.zz).x, false)));
    var var_2 = Struct_1(max(var_1.x, -38650i), min(abs(vec4<u32>(35216u, ~19587u, 56064u, ~u_input.a)), select(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, 17162u, u_input.a), vec4<u32>(0u, 101322u, u_input.a, u_input.a)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, 3711u), abs(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), vec4<u32>(0u, u_input.a, u_input.a, 29901u)), _wgslsmith_f_op_f32(global0.x - -1000f) > 290f)), _wgslsmith_mod_i32(0i, _wgslsmith_mult_i32(-firstLeadingBit(var_1.x), i32(-1i) * -10425i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1106f, global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.x, 2001f))), -725f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1722f, global0.x, -2167f, 583f)))), 1000f <= _wgslsmith_f_op_f32(3687f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(658f, global0.x)), global0.x, true))));
    var_0 = (_wgslsmith_clamp_u32(~(~u_input.a), (4294967295u | u_input.a) | u_input.a, ~(~40757u)) | ~(select(59166u, 28248u, false) ^ var_2.b.x)) >= var_2.b.x;
    var_1 = _wgslsmith_div_vec3_i32(-firstTrailingBit(~vec3<i32>(var_2.c, 22232i, var_1.x)), reverseBits(vec3<i32>(-10749i, select(~var_2.c, 0i >> (u_input.a % 32u), true), firstLeadingBit(~(-2147483647i)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x);
}

