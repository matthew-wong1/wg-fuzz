struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: bool) -> i32 {
    var var_0 = -258f;
    var_0 = _wgslsmith_f_op_f32(-902f - -1000f);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1056f));
    let var_1 = Struct_1(u_input.c.x, vec3<i32>(u_input.b, ~1i ^ u_input.d.x, 1i), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(128f, 1022f, 348f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(877f, -1496f, -1205f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1786f - _wgslsmith_f_op_f32(ceil(var_1.c.x)))))));
    return u_input.b;
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<f32>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_mod_i32(arg_0.x, func_2(any(vec4<bool>(true, true, false, true)))), -_wgslsmith_clamp_vec3_i32(~u_input.c >> (firstLeadingBit(u_input.a.zxx) % vec3<u32>(32u)), arg_0, _wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.x, u_input.d.x, -1i), _wgslsmith_mod_vec3_i32(arg_0, vec3<i32>(arg_0.x, 0i, arg_0.x)))), vec3<f32>(_wgslsmith_f_op_f32(floor(1471f)), -960f, -1834f));
    let var_1 = 0i;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(abs(-1070f)), 1369f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, arg_1.x, arg_1.x) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, -432f, arg_1.x))))));
    let var_3 = var_0;
    let var_4 = vec3<bool>((max(_wgslsmith_mult_i32(var_1, arg_0.x), _wgslsmith_div_i32(arg_0.x, -52161i)) > -1i) | (arg_0.x <= (11063i << (u_input.a.x % 32u))), false, false);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + -125f) + -1000f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(864f)))))));
}

fn func_1() -> vec4<bool> {
    let var_0 = _wgslsmith_add_i32(~(func_2(true) | (func_2(true) & 1i)), u_input.b);
    var var_1 = ~u_input.a.x;
    var var_2 = Struct_2(185f, Struct_1(0i, -vec3<i32>(-4709i, 1i, u_input.b | var_0), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(931f, 685f, 640f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(825f, -1000f, 1341f)))))), ~(_wgslsmith_clamp_u32(~15361u, u_input.a.x, min(16920u, 1252u)) >> (952u % 32u)));
    var_1 = 21596u;
    var_1 = 27755u << (u_input.a.x % 32u);
    return !vec4<bool>(true, 505f >= _wgslsmith_f_op_f32(802f - _wgslsmith_f_op_f32(func_3(u_input.c, var_2.b.c))), all(vec4<bool>(true, true, var_2.c < u_input.a.x, any(vec4<bool>(false, true, false, true)))), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(firstLeadingBit(37741u), 1u, 4294967295u, ~(~(~u_input.a.x)));
    let var_1 = !select(!select(func_1(), vec4<bool>(false, true, true, false), true), !vec4<bool>(u_input.a.x > var_0.x, 12918u == var_0.x, true, false), vec4<bool>(true, true, true, true));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-703f)))), Struct_1(12094i, (reverseBits(vec3<i32>(u_input.b, u_input.d.x, u_input.c.x)) >> (select(vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(4294967295u, 4294967295u, 21451u), var_1.xwz) % vec3<u32>(32u))) << (vec3<u32>(abs(u_input.a.x), ~u_input.a.x, firstTrailingBit(u_input.a.x)) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-974f, 127f, 1000f)))), _wgslsmith_div_u32(16711u, u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.b.c.xy * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1661f, -118f)) * _wgslsmith_f_op_vec2_f32(exp2(var_2.b.c.xy)))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.c.x)), -1426f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b.c.x, 617f, 1693f) - var_2.b.c))) + var_2.b.c) * vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(410f)))), 1828f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(var_2.a)))))));
}

