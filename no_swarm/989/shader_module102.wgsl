struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1000f;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1() -> f32 {
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -152f);
    let var_0 = u_input.a;
    var var_1 = !(!vec4<bool>(false, true, true, any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false)))));
    var var_2 = !(!(min(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(33279i, -8262i), vec2<i32>(-2147483647i, 2147483647i))) >= 68015i));
    var var_3 = _wgslsmith_add_vec4_i32(vec4<i32>(0i, 20108i, countOneBits(-abs(-6729i)), -7210i), vec4<i32>(47960i, -120263i, -2147483647i, 34368i));
    return -529f;
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> f32 {
    let var_0 = any(select(!select(!vec3<bool>(arg_0.a, arg_0.a, arg_0.a), vec3<bool>(false, arg_0.a, false), false), !vec3<bool>(any(vec4<bool>(arg_0.a, true, arg_0.a, arg_0.a)), true, true || arg_0.a), !(!select(vec3<bool>(arg_0.a, arg_0.a, arg_0.a), vec3<bool>(false, arg_0.a, arg_0.a), vec3<bool>(arg_0.a, false, arg_0.a)))));
    let var_1 = -vec3<i32>(~1i, 2147483647i, ~2147483647i);
    let var_2 = arg_1;
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1217f + 1177f)) - 398f), _wgslsmith_f_op_f32(-1174f + _wgslsmith_f_op_f32(round(-754f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-349f, -854f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1838f), _wgslsmith_f_op_f32(sign(561f))))));
    var var_4 = vec3<bool>(true, true, true);
    return var_3;
}

fn func_2(arg_0: u32, arg_1: vec3<bool>, arg_2: u32, arg_3: u32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(1125f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-2078f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1960f + 382f)), any(vec4<bool>(arg_1.x, false, false, arg_1.x)) | false))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(true), _wgslsmith_div_i32(4518i, -3130i))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -741f) + _wgslsmith_f_op_f32(-1132f * 481f)))));
    var var_1 = vec4<bool>((arg_1.x || any(select(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(true, true, arg_1.x), vec3<bool>(true, true, false)))) | arg_1.x, true, false, arg_1.x);
    var var_2 = Struct_2(Struct_1(true), arg_1.x, -(-2147483647i << (~abs(arg_3) % 32u)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-754f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-234f - 1567f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -495f), 667f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(-119f)), 790f, _wgslsmith_f_op_f32(1997f - 265f))), arg_1)));
    let var_3 = var_2.a;
    var_2 = Struct_2(Struct_1(!(!(!arg_1.x))), true, ~(-48051i >> (~_wgslsmith_sub_u32(25106u, arg_0) % 32u)), _wgslsmith_f_op_vec3_f32(-var_2.d));
    return _wgslsmith_mod_i32(_wgslsmith_div_i32(var_2.c, firstLeadingBit(firstTrailingBit(_wgslsmith_div_i32(-2147483647i, 17022i)))), -28137i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(521f, 268f))), -431f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(166f, 242f, true)) - _wgslsmith_f_op_f32(max(-622f, 459f))))));
    global0 = 675f;
    let var_0 = -705f;
    global0 = var_0;
    var var_1 = !(!select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(false, true), false), true));
    global0 = var_0;
    var var_2 = ~(~max(~countOneBits(vec2<u32>(u_input.a, 42605u)), select(vec2<u32>(u_input.a, 1u), vec2<u32>(22866u, u_input.a), true) >> (_wgslsmith_add_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, 0u)) % vec2<u32>(32u))));
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1())))));
    var var_3 = ~(-vec4<i32>(1i, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(0i, -1i)), vec2<i32>(1i, 1i)), _wgslsmith_mod_i32(func_2(var_2.x, vec3<bool>(var_1.x, var_1.x, var_1.x), u_input.a, var_2.x), -2147483647i), 0i));
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

