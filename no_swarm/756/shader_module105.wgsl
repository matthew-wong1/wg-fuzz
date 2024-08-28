struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 12716u;

var<private> global1: u32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<f32> {
    let var_0 = select(vec2<bool>(true, false), select(vec2<bool>(true, _wgslsmith_f_op_f32(177f + -150f) > _wgslsmith_f_op_f32(select(406f, -659f, false))), select(select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false))), vec2<bool>(true, true), vec2<bool>(true, true)), true), vec2<bool>(all(vec3<bool>(false, true, true)), false));
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(750f, _wgslsmith_f_op_f32(-106f * 1f), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-335f, 115f), _wgslsmith_div_f32(1445f, -1687f)))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2334f, -1748f, -609f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(394f, 616f, -118f)))))), Struct_2(all(var_0), vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, 28814i), vec2<i32>(1i, -36106i)), max(vec2<i32>(-9365i, 4662i), vec2<i32>(1i, -1i))), min(2147483647i, 1i), 1i, 1i)), 1u);
    var var_2 = ~vec3<u32>(u_input.a.x, u_input.a.x, 0u);
    var var_3 = vec4<bool>(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(var_1.b.b.wwz, vec3<i32>(-25420i, var_1.b.b.x, var_1.b.b.x)), 0i, firstTrailingBit(35244i)), max(~1i, firstTrailingBit(-2147483647i))) < abs(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b.b.x, 1i) ^ vec2<i32>(var_1.b.b.x, var_1.b.b.x), min(var_1.b.b.ww, vec2<i32>(var_1.b.b.x, -1i)))), true, var_0.x, !(_wgslsmith_f_op_f32(var_1.a.x + _wgslsmith_f_op_f32(exp2(var_1.a.x))) >= -557f));
    var var_4 = var_1.a;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, var_1.a.x, -3092f, 1462f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.a.x, var_4.x, 161f, -543f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-605f, var_4.x, var_1.a.x, var_4.x), vec4<f32>(-1377f, var_1.a.x, 654f, 1307f)))), vec4<f32>(var_4.x, 2090f, -1745f, var_1.a.x)));
}

fn func_2() -> vec2<f32> {
    let var_0 = ~(~_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_add_u32(u_input.a.x, u_input.b.x), u_input.a.x), u_input.a.zz << (u_input.b.xx % vec2<u32>(32u))));
    let var_1 = _wgslsmith_f_op_f32(max(-675f, 629f));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1, var_1, -1020f, var_1), vec4<f32>(461f, -676f, var_1, 167f), false)))))));
    let var_3 = ~reverseBits(countOneBits(u_input.b) ^ u_input.b);
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(var_1, _wgslsmith_f_op_f32(-409f * 1012f))))) - var_2.x) != -2205f;
    return vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(402f * var_1), _wgslsmith_f_op_f32(ceil(var_1))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_2.x, var_1)), 657f)), -638f)), -648f);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<f32>) -> Struct_3 {
    global1 = 4294967295u;
    var var_0 = min(~(-49915i << (select(arg_1.x, arg_1.x, true) % 32u)), 0i);
    var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -2147483647i, 0i, -abs(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -26270i, 1i, 9942i), vec4<i32>(-1i, -2147483647i, 2147483647i, 1i)))), ~(min(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, -1i, -46166i, -34031i), vec4<i32>(-5039i, 2147483647i, 1i, -2147483647i), vec4<i32>(-1i, 0i, -39350i, 17914i)), _wgslsmith_sub_vec4_i32(vec4<i32>(-11830i, -2147483647i, 1i, 63746i), vec4<i32>(14146i, -18407i, 0i, 468i))) | -(~vec4<i32>(-34580i, 39514i, -48310i, 26427i))));
    let var_1 = Struct_3(_wgslsmith_div_vec3_f32(vec3<f32>(1279f, arg_2.x, _wgslsmith_f_op_f32(sign(498f))), arg_2.zxx), Struct_2(all(vec3<bool>(true, true, true)), vec4<i32>(1i, abs(-33123i), _wgslsmith_mult_i32(1i, -4573i), abs(max(-9947i, -1i)))), min(u_input.a.x, u_input.b.x));
    let var_2 = select(!vec3<bool>(true, !var_1.b.a, false), vec3<bool>(false, var_1.b.a, any(vec4<bool>(!var_1.b.a, var_1.b.a, false, 13341u == arg_0.a))), (any(vec2<bool>(true, true)) || false) | select(var_1.b.a, true, select(var_1.b.a, true, var_1.b.a) | var_1.b.a));
    return var_1;
}

fn func_1() -> Struct_2 {
    let var_0 = func_4(Struct_1(~u_input.a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2())), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(1f))))), vec4<u32>(u_input.a.x & _wgslsmith_mult_u32(abs(u_input.b.x), u_input.a.x), u_input.b.x, ~_wgslsmith_mult_u32(67179u, u_input.b.x) | _wgslsmith_sub_u32(u_input.b.x, max(u_input.b.x, u_input.b.x)), u_input.a.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(445f, _wgslsmith_f_op_f32(round(738f)), _wgslsmith_f_op_f32(floor(-677f)), _wgslsmith_div_f32(1513f, -221f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(246f, 887f, 440f, 533f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1004f, 1311f, -1655f, -676f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -451f, -105f, -1266f) - vec4<f32>(1974f, 1238f, 580f, -2085f)))))));
    let var_1 = Struct_1(~var_0.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.a.zz - func_4(Struct_1(u_input.a.x, var_0.a.xx, var_0.a.x), vec4<u32>(u_input.b.x, 49673u, 0u, 4294967295u), vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, -1504f)).a.xy))), var_0.a.x);
    var var_2 = -237f;
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f * -964f), var_0.a.x));
    let var_4 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_f_op_f32(sign(-789f)), _wgslsmith_f_op_f32(round(var_1.b.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(150f, var_1.b.x, var_3, var_1.b.x))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-306f, -1922f, var_0.a.x, var_0.a.x) - vec4<f32>(562f, var_0.a.x, var_1.c, 810f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1177f, -1053f, var_0.a.x, var_0.a.x) * vec4<f32>(-595f, var_3, 407f, var_0.a.x))))))));
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.b.x, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-521f, -684f), vec2<f32>(283f, 475f))) - vec2<f32>(1169f, 1294f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(372f - 2039f), -295f) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1817f), -283f)))), _wgslsmith_div_f32(741f, -259f));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c))))));
    var var_2 = func_1();
    global0 = reverseBits(u_input.b.x);
    let var_3 = vec4<bool>(false, !(_wgslsmith_mult_u32(u_input.b.x, 4294967295u) == (firstTrailingBit(0u) ^ ~4294967295u)), var_2.a != select(true | (var_2.a || false), false, true), !any(vec4<bool>(var_2.a, all(vec2<bool>(var_2.a, true)), true, all(vec2<bool>(var_2.a, var_2.a)))));
    let var_4 = any(select(vec4<bool>(any(select(var_3, var_3, vec4<bool>(false, false, false, false))), true, all(var_3), true || var_2.a), !(!(!vec4<bool>(var_3.x, false, false, var_2.a))), vec4<bool>(true, !var_2.a & any(vec2<bool>(false, var_3.x)), all(!var_3.yyw), any(var_3.zwx))));
    let x = u_input.a;
    s_output = StorageBuffer(-var_2.b.zxx, ~(vec3<u32>(1u, firstLeadingBit(1u), _wgslsmith_div_u32(var_0.a, 15503u)) << ((vec3<u32>(1u, 9093u, var_0.a) & vec3<u32>(u_input.b.x, u_input.b.x, u_input.a.x)) % vec3<u32>(32u))));
}

