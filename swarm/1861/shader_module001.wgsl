struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: i32, arg_3: Struct_3) -> f32 {
    let var_0 = Struct_1(u_input.b.xzx);
    let var_1 = firstTrailingBit(vec2<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(-2147483647i, arg_2), ~arg_2), ~(-arg_2)) & _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(firstTrailingBit(vec2<i32>(arg_2, arg_2)), _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_2, -17830i), vec2<i32>(arg_2, arg_2), vec2<i32>(arg_2, 0i)), select(vec2<i32>(0i, -2147483647i), vec2<i32>(arg_2, 2147483647i), false)), ~(-vec2<i32>(1i, 35766i))));
    var var_2 = u_input.b;
    var_2 = arg_3.b;
    var_2 = _wgslsmith_sub_vec4_u32(~abs(firstTrailingBit(~vec4<u32>(1u, u_input.c, 114276u, 1u))), vec4<u32>(_wgslsmith_add_u32(u_input.a << (0u % 32u), 29884u) >> (var_0.a.x % 32u), _wgslsmith_mod_u32(_wgslsmith_mod_u32(14535u, 44790u), arg_3.b.x), ~(var_2.x | var_2.x), firstLeadingBit(firstTrailingBit(_wgslsmith_sub_u32(arg_0, var_2.x)))));
    return arg_1;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec2<u32>, arg_3: vec3<u32>) -> Struct_2 {
    var var_0 = Struct_3(abs(vec2<u32>(~_wgslsmith_mod_u32(arg_2.x, 45488u), arg_2.x)), u_input.b, 3227f);
    var var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(477f)) * _wgslsmith_f_op_f32(abs(605f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.a, var_0.c, -1i, Struct_3(vec2<u32>(0u, 4294967295u), u_input.b, arg_1.x))) - _wgslsmith_f_op_f32(max(arg_1.x, var_0.c))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(var_0.c, -1354f)), 125f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-1141f, -183f)), -245f)))), arg_1.x)));
    var var_3 = arg_2.x;
    var_1 = arg_0;
    return Struct_2(!select(select(var_1.a, !vec4<bool>(true, true, arg_0.a.x, var_1.a.x), var_1.a), var_1.a, var_1.a), arg_0.b);
}

fn func_1(arg_0: vec4<u32>, arg_1: f32) -> Struct_3 {
    let var_0 = Struct_3(~min(vec2<u32>(u_input.b.x, arg_0.x), _wgslsmith_div_vec2_u32(arg_0.yx, u_input.b.wy)), vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.a << (arg_0.x % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)));
    var var_1 = func_2(Struct_2(vec4<bool>(all(vec4<bool>(false, false, false, true)), any(select(vec2<bool>(false, false), vec2<bool>(false, true), false)), true, true), Struct_1(u_input.b.yzx)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(round(var_0.c)), var_0.c, _wgslsmith_f_op_f32(trunc(-1856f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-394f, var_0.c, arg_1, arg_1))))), vec2<u32>(1u, ~var_0.a.x), vec3<u32>(arg_0.x >> (~firstLeadingBit(110260u) % 32u), _wgslsmith_sub_u32(_wgslsmith_div_u32(~var_0.b.x, _wgslsmith_clamp_u32(var_0.b.x, 1u, var_0.a.x)), 25726u), 22555u));
    let var_2 = Struct_3(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, var_1.b.a.x), vec2<u32>(55122u, 73637u)) >> (firstTrailingBit(_wgslsmith_mod_vec2_u32(select(vec2<u32>(var_0.a.x, 0u), vec2<u32>(var_1.b.a.x, arg_0.x), var_1.a.x), u_input.b.ww | u_input.b.yx)) % vec2<u32>(32u)), arg_0 | vec4<u32>(4294967295u, abs(~u_input.a), _wgslsmith_mult_u32(abs(0u), 31201u), 4294967295u), 1005f);
    var var_3 = Struct_2(select(var_1.a, !(!(!vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x))), !var_1.a), Struct_1(abs(u_input.b.wyx)));
    var var_4 = _wgslsmith_f_op_f32(func_3(4294967295u, 450f, -2147483647i, Struct_3(vec2<u32>(max(76275u, var_0.a.x), u_input.c), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 25553u, var_1.b.a.x, var_0.b.x), u_input.b, var_0.b), var_0.c))) != var_0.c;
    return var_0;
}

fn func_4(arg_0: Struct_3) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -147f))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c) + _wgslsmith_f_op_f32(arg_0.c * 1696f)), arg_0.c)), arg_0.c)));
    return i32(-1i) * -1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<u32>(min(~(~1u), ~58403u), firstLeadingBit(4294967295u), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.a, 49960u, u_input.a), firstTrailingBit(u_input.b)))));
    var var_1 = vec3<i32>(-2147483647i, ~(-func_4(func_1(vec4<u32>(34410u, 36617u, u_input.b.x, var_0.a.x), -1000f))), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(-23146i, -1i), vec2<i32>(19557i, 15007i)), 1i) | ~(-22564i));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(928f + -196f), 844f, _wgslsmith_f_op_f32(max(-132f, -2267f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2788f, -1000f, 1606f))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-341f, -655f, 966f), vec3<f32>(746f, -551f, 1549f), func_2(Struct_2(vec4<bool>(false, false, true, false), Struct_1(var_0.a)), vec4<f32>(713f, -649f, -422f, 1000f), var_0.a.yx, vec3<u32>(var_0.a.x, u_input.a, u_input.c)).a.wyy))))) * vec3<f32>(_wgslsmith_f_op_f32(func_3(1u, _wgslsmith_f_op_f32(1844f - _wgslsmith_f_op_f32(f32(-1f) * -1343f)), 0i, func_1(vec4<u32>(var_0.a.x, 43241u, u_input.c, 26480u), -1784f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1397f)));
    var var_3 = Struct_3(~vec2<u32>(26187u, select(var_0.a.x, ~4294967295u, any(vec4<bool>(true, false, false, false)))), abs(vec4<u32>(_wgslsmith_div_u32(u_input.a, countOneBits(u_input.c)), 71737u, 141952u, ~(~9079u))), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_4 = var_3.a.x;
    var var_5 = max(vec4<i32>(2147483647i, abs(i32(-1i) * -26602i), -25244i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, var_1.x, 23233i), -vec3<i32>(-71112i, var_1.x, var_1.x))) << (u_input.b % vec4<u32>(32u)), vec4<i32>(var_1.x, i32(-1i) * -11799i, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, var_1.x, var_1.x), vec3<i32>(0i, -2147483647i, var_1.x)), -22202i) >> (18673u % 32u), -max(firstTrailingBit(var_1.x), var_1.x >> (var_0.a.x % 32u))));
    let var_6 = var_2.x != var_3.c;
    let var_7 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2.x, _wgslsmith_f_op_f32(abs(465f)), _wgslsmith_f_op_f32(-1233f + var_3.c)), _wgslsmith_f_op_vec3_f32(select(var_2, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-2364f, -739f, -2199f), vec3<f32>(var_3.c, 1441f, 548f))), vec3<bool>(var_6, false, false))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2543f + -417f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.c + var_3.c) - _wgslsmith_f_op_f32(f32(-1f) * -819f)), _wgslsmith_f_op_f32(var_3.c - _wgslsmith_f_op_f32(var_3.c * var_2.x))), false))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_1.x >> (var_0.a.x % 32u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -347f), 1025f, -152f, _wgslsmith_div_f32(var_3.c, 658f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1014f, -342f, 121f, var_2.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_7.x, -1075f, var_7.x) + vec4<f32>(var_7.x, var_3.c, 108f, 283f))), any(vec2<bool>(true, false)))), vec4<f32>(-388f, -869f, _wgslsmith_f_op_f32(step(-595f, -1937f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -300f) * -126f))));
}

