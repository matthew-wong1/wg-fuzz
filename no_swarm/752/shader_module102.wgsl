struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec4<f32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: f32,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 21>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> bool {
    var var_0 = vec3<i32>(2064i, u_input.d.x, _wgslsmith_div_i32(2147483647i, max(u_input.d.x, -1i)));
    let var_1 = Struct_3(false);
    let var_2 = Struct_1(!select(!select(vec4<bool>(var_1.a, false, var_1.a, false), vec4<bool>(true, true, var_1.a, var_1.a), vec4<bool>(var_1.a, var_1.a, true, true)), select(vec4<bool>(var_1.a, var_1.a, true, var_1.a), vec4<bool>(var_1.a, var_1.a, false, false), !vec4<bool>(true, true, var_1.a, var_1.a)), var_1.a), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(746f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -915f) * _wgslsmith_f_op_f32(f32(-1f) * -1443f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-612f)) - _wgslsmith_f_op_f32(-862f * -1690f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(527f - -1148f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1487f - 513f), -259f, _wgslsmith_f_op_f32(-1273f + 1419f), -3156f)))), select(vec2<bool>(true || (true == var_1.a), !(!var_1.a)), !(!vec2<bool>(var_1.a, true)), false));
    var_0 = -(_wgslsmith_sub_vec3_i32(~countOneBits(vec3<i32>(var_0.x, u_input.d.x, -26297i)), ~firstTrailingBit(vec3<i32>(u_input.d.x, -2147483647i, var_0.x))) ^ -(~_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.x, -8968i, u_input.d.x), vec3<i32>(var_0.x, 1i, var_0.x))));
    let var_3 = u_input.a;
    return var_1.a;
}

fn func_2() -> Struct_4 {
    global0 = array<vec2<u32>, 21>();
    let var_0 = Struct_4(Struct_1(!vec4<bool>(false, select(false, false, true), any(vec2<bool>(false, false)), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1215f, 505f, -1000f, -1000f) * vec4<f32>(-1000f, 1239f, 168f, -1697f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1557f, -2014f, -1000f, -155f))))), !vec2<bool>(any(vec2<bool>(true, false)), func_3())));
    var var_1 = vec4<bool>(true, !var_0.a.a.x, _wgslsmith_f_op_f32(var_0.a.b.x - _wgslsmith_f_op_f32(-702f + 1000f)) > -2253f, func_3());
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(var_0.a.b + vec4<f32>(-817f, -423f, 1620f, var_0.a.b.x)))))));
    let var_3 = Struct_3(true & any(vec3<bool>(select(false, var_1.x, var_1.x), !var_1.x, var_1.x)));
    return var_0;
}

fn func_1() -> Struct_5 {
    global0 = array<vec2<u32>, 21>();
    var var_0 = _wgslsmith_div_vec3_u32(~reverseBits(~reverseBits(u_input.c.yzw)), ~vec3<u32>(4294967295u, u_input.a, _wgslsmith_div_u32(u_input.b, u_input.c.x) | 0u));
    global0 = array<vec2<u32>, 21>();
    let var_1 = 4294967295u;
    var var_2 = func_2();
    return Struct_5(vec4<f32>(var_2.a.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-856f, _wgslsmith_f_op_f32(min(var_2.a.b.x, var_2.a.b.x))))), _wgslsmith_f_op_f32(f32(-1f) * -111f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.a.b.x, var_2.a.b.x) + _wgslsmith_f_op_f32(-var_2.a.b.x))))), -550f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = var_0.b;
    global0 = array<vec2<u32>, 21>();
    var var_2 = select(func_2().a.c, vec2<bool>(select(func_3(), func_2().a.c.x, false) != any(vec2<bool>(true, false)), 413f > var_0.b), select(vec2<bool>(true, any(vec2<bool>(true, true))), vec2<bool>(true, true), all(vec3<bool>(any(vec2<bool>(true, true)), true, true))));
    var var_3 = Struct_2(func_2().a.a.xzy, func_2().a, _wgslsmith_dot_vec2_i32(-firstLeadingBit(u_input.d), vec2<i32>(u_input.d.x, u_input.d.x)) << (u_input.a % 32u));
    var var_4 = abs(u_input.b);
    var var_5 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(max(reverseBits(~(~u_input.c.yz)), vec2<u32>(firstLeadingBit(abs(3143u)), u_input.c.x)), var_0.a.x, -1125f, firstLeadingBit(~_wgslsmith_clamp_u32(~39327u, _wgslsmith_add_u32(4294967295u, u_input.c.x), u_input.a)), firstLeadingBit(min(reverseBits(u_input.d), ~(u_input.d >> (vec2<u32>(u_input.c.x, 80594u) % vec2<u32>(32u))))));
}

