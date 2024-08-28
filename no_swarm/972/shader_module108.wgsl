struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: u32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_2,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>) -> f32 {
    let var_0 = _wgslsmith_clamp_vec4_u32(u_input.d, ~_wgslsmith_sub_vec4_u32(~u_input.d, vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, u_input.e.x, u_input.e.x), vec3<u32>(1u, 0u, u_input.d.x)), ~u_input.e.x, 1u, u_input.e.x)), vec4<u32>(u_input.c, 1u, 1u, ~(firstTrailingBit(u_input.d.x) & 0u)));
    let var_1 = _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(abs(~u_input.b), reverseBits(abs(vec2<u32>(var_0.x, u_input.c)))), 14600u);
    let var_2 = Struct_3(14663u);
    let var_3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(970f, -1000f)), arg_0.x, all(vec2<bool>(true, true)))), 773f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(195f)), -128f)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(1009f + arg_0.x), _wgslsmith_f_op_f32(min(-717f, -1221f)), _wgslsmith_f_op_f32(arg_0.x + arg_0.x), _wgslsmith_f_op_f32(sign(264f))))))));
    var var_4 = select(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), !any(vec2<bool>(true, false))), vec2<bool>(true, true), select(select(select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(false, false), true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true)), vec2<bool>(any(vec4<bool>(true, false, true, true)) && true, true | (var_0.x <= 5436u)), vec2<bool>(true, ~4294967295u < u_input.d.x)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1339f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(599f))))) - -1033f);
}

fn func_2(arg_0: Struct_5, arg_1: Struct_4, arg_2: vec2<u32>) -> bool {
    var var_0 = vec3<f32>(-908f, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1432f, -647f)))) * vec2<f32>(1000f, 833f)))), 657f);
    let var_1 = vec3<bool>(arg_0.a.a.x & true, all(!vec3<bool>(true, arg_0.e.a.x, arg_0.a.a.x | false)), all(!vec3<bool>(4294967295u != arg_0.e.e, select(arg_0.e.a.x, true, arg_0.a.b.a.x), true)));
    var var_2 = _wgslsmith_f_op_f32(-var_0.x);
    var var_3 = arg_1;
    var var_4 = arg_0.d.b.b.x;
    return (u_input.a.x >= _wgslsmith_add_i32(1i, -(~(-1i)))) && var_1.x;
}

fn func_1() -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(893f, -339f, -222f))), vec3<f32>(_wgslsmith_div_f32(-2642f, -1715f), _wgslsmith_f_op_f32(1000f + 2097f), _wgslsmith_f_op_f32(min(740f, 895f)))))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-132f, _wgslsmith_f_op_f32(f32(-1f) * -270f), 242f))), vec3<bool>(~1i <= _wgslsmith_dot_vec3_i32(vec3<i32>(-34732i, u_input.a.x, -13147i), vec3<i32>(-10755i, u_input.a.x, u_input.a.x)), all(vec4<bool>(true, true, false, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) * -726f) >= _wgslsmith_f_op_f32(f32(-1f) * -1570f))));
    let var_1 = _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(0i, _wgslsmith_mult_i32(u_input.a.x, -15587i)), u_input.a.x, i32(-1i) * -974i, u_input.a.x), ~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x >> (_wgslsmith_clamp_u32(0u, 21407u, u_input.b.x) % 32u)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(445f, var_0.x))) - vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), -320f))));
    var var_3 = vec4<bool>(var_2.x < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - var_2.x))), !(func_2(Struct_5(Struct_2(vec2<bool>(false, false), Struct_1(vec2<bool>(false, false), var_1.xxz, u_input.d.x, true, u_input.d.x), vec2<bool>(true, false)), vec2<bool>(false, false), Struct_2(vec2<bool>(true, false), Struct_1(vec2<bool>(true, true), var_1.xyx, 0u, true, 1u), vec2<bool>(false, true)), Struct_2(vec2<bool>(true, true), Struct_1(vec2<bool>(true, false), vec3<i32>(var_1.x, u_input.a.x, u_input.a.x), 4294967295u, true, u_input.c), vec2<bool>(true, false)), Struct_1(vec2<bool>(true, true), vec3<i32>(10001i, u_input.a.x, 2147483647i), 4294967295u, false, 0u)), Struct_4(vec2<u32>(1u, u_input.d.x)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.d.x, u_input.e.x), vec2<u32>(20019u, u_input.b.x))) | true), !all(vec4<bool>(true, true, any(vec4<bool>(false, false, true, true)), u_input.b.x > u_input.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(612f - -794f), var_0.x))) < _wgslsmith_f_op_f32(step(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(596f + 189f) + 1546f))));
    var var_4 = vec3<bool>(false, var_3.x, var_3.x);
    return _wgslsmith_mod_vec3_i32(~(-_wgslsmith_mult_vec3_i32(min(vec3<i32>(-12092i, u_input.a.x, var_1.x), var_1.xww), _wgslsmith_sub_vec3_i32(vec3<i32>(-42356i, 2147483647i, 2147483647i), var_1.zxx))), firstLeadingBit(vec3<i32>(u_input.a.x, ~_wgslsmith_mult_i32(var_1.x, 2147483647i), abs(-1i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~max(-vec4<i32>(u_input.a.x, var_0.x, 62250i, -1i), vec4<i32>(1i, u_input.a.x, _wgslsmith_mod_i32(2147483647i, u_input.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(14342i, var_0.x, u_input.a.x), var_0))), ~(~u_input.d >> (u_input.d % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1508f, 159f, -420f)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1583f, 1000f, -1481f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(631f, 1427f, 1061f)), vec3<bool>(true, false, true))))));
}

