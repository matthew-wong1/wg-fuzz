struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<bool>,
    c: vec4<f32>,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: vec3<f32>,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
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

var<private> global0: vec3<bool>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<f32>) -> vec4<i32> {
    global0 = vec3<bool>(all(select(!(!vec3<bool>(global0.x, true, global0.x)), !select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, true, true), global0.x), !select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(global0.x, false, global0.x), true))), true, ~(~countOneBits(arg_0.x)) < 1u);
    var var_0 = firstTrailingBit(_wgslsmith_mult_u32(u_input.b, _wgslsmith_mult_u32(~u_input.a, 39317u) << (min(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(u_input.b, arg_0.x, 10371u)), arg_0.x) % 32u)));
    var var_1 = vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(sign(-1000f)), 1513f);
    let var_2 = u_input.c.www;
    var var_3 = Struct_3(u_input.b, vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_div_f32(var_1.x, arg_1.x), arg_1.x, arg_1.x, _wgslsmith_f_op_f32(var_1.x * arg_1.x)))))));
    return _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(-select(vec4<i32>(20778i, u_input.c.x, -3348i, -1i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, 16389i, -10149i, u_input.c.x), vec4<i32>(u_input.c.x, u_input.c.x, 2147483647i, 19648i)), select(vec4<bool>(true, var_3.b.x, var_3.b.x, true), vec4<bool>(true, global0.x, var_3.b.x, true), vec4<bool>(true, false, var_3.b.x, var_3.b.x))), u_input.c), -(vec4<i32>(0i << (0u % 32u), 0i, abs(u_input.c.x), _wgslsmith_div_i32(26907i, var_2.x)) >> (~firstLeadingBit(vec4<u32>(var_3.a, arg_0.x, 24443u, 4294967295u)) % vec4<u32>(32u))), select(vec4<i32>(u_input.c.x, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(var_2.x, var_2.x), -7678i, -18643i), -4561i, 1i), vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.c, reverseBits(vec4<i32>(-2147483647i, -2147483647i, var_2.x, 2147483647i))), u_input.c.x, ~(var_2.x | var_2.x), countOneBits(~u_input.c.x)), all(vec4<bool>(true, any(vec4<bool>(false, global0.x, true, var_3.b.x)), true, global0.x))));
}

fn func_2(arg_0: Struct_4) -> f32 {
    global0 = vec3<bool>(!all(select(select(vec4<bool>(global0.x, global0.x, arg_0.a, false), vec4<bool>(arg_0.a, true, arg_0.a, arg_0.a), vec4<bool>(false, false, arg_0.a, true)), !vec4<bool>(global0.x, arg_0.a, arg_0.a, false), true)), (reverseBits(~arg_0.d) > _wgslsmith_dot_vec4_i32(func_3(vec4<u32>(u_input.a, 0u, arg_0.b, u_input.b), arg_0.c), u_input.c | u_input.c)) || true, select(true, false, arg_0.a) | false);
    let var_0 = i32(-1i) * -30714i;
    var var_1 = abs(_wgslsmith_div_i32(25574i, -2147483647i)) | ~(42192i >> (countOneBits(u_input.b | u_input.a) % 32u));
    var var_2 = ~1u;
    let var_3 = firstLeadingBit(~firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, u_input.a), vec2<u32>(93587u, 0u))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(100f, arg_0.c.x)), _wgslsmith_f_op_f32(round(-1460f)), true))))), 133f);
}

fn func_1(arg_0: bool) -> vec2<f32> {
    var var_0 = 0u;
    var var_1 = Struct_1(!(!(!vec3<bool>(arg_0, global0.x, global0.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2199f + _wgslsmith_f_op_f32(func_2(Struct_4(global0.x, 4294967295u, vec3<f32>(265f, -778f, 2222f), u_input.c.x, -59838i))))))), true);
    var var_2 = abs(_wgslsmith_clamp_vec2_i32(~(~(vec2<i32>(-15340i, 59533i) << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)))), countOneBits(vec2<i32>(u_input.c.x | -1i, select(u_input.c.x, u_input.c.x, false))), vec2<i32>(reverseBits(u_input.c.x), _wgslsmith_div_i32(reverseBits(u_input.c.x), 21608i))));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2032f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2242f, var_1.b)))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1273f), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_1.b, var_1.b))))) + vec2<f32>(-2011f, _wgslsmith_f_op_f32(ceil(var_1.b))));
    var var_4 = ~(~(0u & countOneBits(~u_input.b)));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(step(var_3.x, _wgslsmith_f_op_f32(sign(var_1.b))))) * vec2<f32>(-1380f, -1296f)) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-1119f + var_1.b), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.x, 147f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.x, var_3.x) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-429f, var_3.x)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(422f, _wgslsmith_f_op_f32(-174f - -1000f))))), 132f);
    var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -197f), -183f) + _wgslsmith_div_vec2_f32(vec2<f32>(1895f, var_0.x), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, -1118f), vec2<f32>(var_0.x, 199f), vec2<bool>(true, global0.x))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(global0.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-213f, 1000f)))))));
    var var_1 = ~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, ~4294967295u), ~_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.b, 77207u), ~vec2<u32>(36080u, u_input.a)));
    global0 = !select(vec3<bool>(true, global0.x, !global0.x), !vec3<bool>(true, global0.x, true), select(select(!vec3<bool>(global0.x, true, global0.x), !vec3<bool>(global0.x, global0.x, false), global0.x || global0.x), vec3<bool>(true, global0.x && true, any(vec4<bool>(global0.x, global0.x, global0.x, global0.x))), select(select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(true, false, false), false), select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(false, global0.x, global0.x), vec3<bool>(false, false, global0.x)), vec3<bool>(true, true, true))));
    var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-584f * -1301f) + var_0.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) + vec2<f32>(-249f, var_0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -974f)), global0.yy))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x) + var_0.x), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(1306f - 1225f)))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1439f, var_0.x)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.x, var_0.x)))) * vec2<f32>(var_0.x, -1776f))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.x, 1020f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1715f, -1231f) * vec2<f32>(var_0.x, -660f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(707f, var_0.x))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1474f, -1085f), vec2<f32>(var_0.x, 405f))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, 1000f), vec2<f32>(1750f, var_0.x), global0.x)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.x, var_0.x), vec2<f32>(1343f, var_0.x))), select(global0.yx, global0.xy, global0.yy))))), 2291f != _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1475f, var_0.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(108f, var_0.x, var_0.x), vec3<f32>(-163f, var_0.x, var_0.x))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_0.x, var_0.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(279f, 311f, var_0.x))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 1888f, var_0.x)))))));
}

