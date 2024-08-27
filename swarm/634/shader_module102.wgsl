struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec4<u32>) -> bool {
    let var_0 = Struct_1(select(select(vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(true, true, false)), true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), true));
    var var_1 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - -1411f) * _wgslsmith_f_op_f32(ceil(-1000f))), 1441f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -218f)))));
    return var_0.a.x;
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: bool, arg_3: vec2<bool>) -> i32 {
    var var_0 = !select(vec3<bool>(!any(arg_3), all(!vec4<bool>(arg_2, false, arg_3.x, false)), false), select(vec3<bool>(arg_2 == arg_3.x, arg_1.a.x, all(arg_1.a)), !(!vec3<bool>(arg_3.x, false, arg_3.x)), !(!vec3<bool>(arg_3.x, true, true))), !arg_1.a.x);
    let var_1 = arg_0.x;
    var var_2 = Struct_1(var_0.zx);
    var_2 = Struct_1(!(!(!vec2<bool>(arg_1.a.x, arg_2))));
    var var_3 = -reverseBits(~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, -32712i, u_input.b, u_input.d), vec4<i32>(u_input.a.x, -6850i, u_input.a.x, u_input.b)));
    return var_3.x;
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true))), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false))), !vec4<bool>(select(false, false, false), func_2(vec4<u32>(4294967295u, arg_0.x, arg_0.x, 1u)), true, true));
    var var_1 = -u_input.c;
    let var_2 = 1900f;
    let var_3 = vec3<u32>(arg_0.x, _wgslsmith_div_u32(0u, ~_wgslsmith_sub_u32(89587u, arg_0.x) | ~1u), 4294967295u);
    var_1 = vec3<i32>(-_wgslsmith_mult_i32(2147483647i, func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(284f, -1797f, 695f, var_2)), Struct_1(vec2<bool>(var_0.x, var_0.x)), u_input.d <= 0i, var_0.wy)), min(var_1.x, -_wgslsmith_clamp_i32(1i, 56076i, ~var_1.x)), u_input.b);
    return Struct_1(!vec2<bool>(var_0.x, false));
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-278f, 176f), vec2<f32>(-953f, 1555f)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-558f, -696f) * vec2<f32>(-129f, 1055f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(188f, -490f)))), vec2<bool>(true || arg_1.a.x, false)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(561f, 405f) * vec2<f32>(396f, -204f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-122f, 1434f))))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(-399f)), _wgslsmith_f_op_f32(-384f - 757f)) * vec2<f32>(1f, -640f))));
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var var_1 = ~_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(select(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0, 1u, arg_0), vec3<u32>(arg_0, arg_0, 44625u)), firstLeadingBit(vec3<u32>(arg_0, arg_0, arg_0)), arg_1.a.x | arg_1.a.x), ~vec3<u32>(arg_0, 1u, 37197u) ^ max(vec3<u32>(44456u, arg_0, 1u), vec3<u32>(29420u, 0u, arg_0))), (~vec3<u32>(arg_0, arg_0, 0u) << (~vec3<u32>(4294967295u, arg_0, 78907u) % vec3<u32>(32u))) >> ((vec3<u32>(arg_0, 4294967295u, arg_0) << (~vec3<u32>(arg_0, 245u, arg_0) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0, 1u, _wgslsmith_clamp_u32(arg_0, 1u, arg_0)), ~(vec3<u32>(arg_0, arg_0, arg_0) & vec3<u32>(arg_0, 1u, 5003u))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -762f))));
    var var_3 = 1i;
    return ~1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 6820u;
    var_0 = abs(6604u);
    var var_1 = vec2<u32>(abs(15816u), ~1u);
    let var_2 = _wgslsmith_mult_i32(u_input.b, -1i) < u_input.a.x;
    var_0 = ~_wgslsmith_clamp_u32(1u, reverseBits(var_1.x >> (~1u % 32u)), ~func_4(select(var_1.x, 1u, true), func_1(vec4<u32>(4514u, 42637u, 4294967295u, 0u))));
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(ceil(1300f))))) * -218f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-220f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-235f, 511f)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mod_i32(abs(47231i), abs(u_input.d)), ~_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_div_i32(0i, 36509i), 0i), -u_input.a));
}

