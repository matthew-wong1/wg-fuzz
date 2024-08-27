struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: i32,
    d: bool,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: Struct_2,
    d: f32,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: i32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_4) -> Struct_5 {
    let var_0 = vec2<bool>(true, true);
    return Struct_5(arg_0.x, select(select(select(!vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x), !var_0.x), select(!vec2<bool>(true, var_0.x), !var_0, var_0), vec2<bool>(var_0.x, any(vec3<bool>(false, var_0.x, true)))), !var_0, true));
}

fn func_1(arg_0: Struct_4, arg_1: vec3<i32>) -> Struct_5 {
    var var_0 = u_input.a;
    var_0 = 29661i >> (min(1u, 1u) % 32u);
    var_0 = ~u_input.b.x;
    var var_1 = _wgslsmith_f_op_f32(select(690f, _wgslsmith_f_op_f32(f32(-1f) * -994f), false));
    let var_2 = ~1u;
    return func_2(~vec4<i32>(u_input.a, ~(-2147483647i), countOneBits(arg_1.x), _wgslsmith_sub_i32(-1i, u_input.a)) << (vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_2, 0u), firstTrailingBit(vec2<u32>(var_2, var_2))), _wgslsmith_sub_u32(var_2, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_2), vec2<u32>(40494u, var_2))), 1u, var_2) % vec4<u32>(32u)), arg_0);
}

fn func_3(arg_0: Struct_5, arg_1: vec2<i32>, arg_2: vec2<f32>, arg_3: vec2<i32>) -> vec4<bool> {
    var var_0 = Struct_1(vec3<bool>(true, !(arg_0.a <= -2147483647i) || (!arg_0.b.x | true), arg_0.b.x), _wgslsmith_div_vec4_i32(max(vec4<i32>(u_input.a, 2147483647i, u_input.b.x, 2147483647i), min(vec4<i32>(-2147483647i, -1i, 2147483647i, arg_1.x), vec4<i32>(arg_3.x, -1i, arg_1.x, 1i))) | ~vec4<i32>(arg_0.a, arg_3.x, 1i, -1i), _wgslsmith_mult_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(1i, -1i, -801i, arg_0.a), vec4<i32>(arg_1.x, arg_3.x, u_input.a, -1i)), abs(vec4<i32>(u_input.b.x, 0i, -8350i, arg_3.x)))), 49668u, firstLeadingBit(countOneBits(_wgslsmith_add_i32(-arg_0.a, arg_1.x))));
    let var_1 = max(max(vec2<u32>(min(~37115u, _wgslsmith_mult_u32(var_0.c, 0u)), ~var_0.c), countOneBits(vec2<u32>(var_0.c >> (var_0.c % 32u), ~0u))), ~max(~min(vec2<u32>(var_0.c, 4294967295u), vec2<u32>(73779u, var_0.c)), max(~vec2<u32>(var_0.c, 23724u), vec2<u32>(1u, 1u))));
    var_0 = Struct_1(vec3<bool>(var_0.a.x, select(select(true, var_0.c < 4294967295u, true), all(!vec4<bool>(var_0.a.x, arg_0.b.x, true, false)), !(!var_0.a.x)), -2147483647i == (~arg_1.x | ~arg_0.a)), var_0.b, 0u, countOneBits(14703i));
    var_0 = Struct_1(!(!(!var_0.a)), vec4<i32>(_wgslsmith_dot_vec4_i32(-var_0.b, vec4<i32>(arg_1.x, -2147483647i, ~(-1i), -var_0.b.x)), (arg_3.x ^ var_0.b.x) << (abs(50327u) % 32u), 1i, var_0.d), 0u, -countOneBits(_wgslsmith_dot_vec3_i32(var_0.b.zzx, _wgslsmith_div_vec3_i32(var_0.b.ywx, vec3<i32>(u_input.a, var_0.b.x, 1i)))));
    let var_2 = select(vec3<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, var_0.a.x), -695f < arg_2.x)), -2147483647i < u_input.b.x, all(vec2<bool>(false, true))), !(!select(var_0.a, var_0.a, var_0.a)), arg_0.b.x || false);
    return vec4<bool>(true, all(select(var_2.zx, !vec2<bool>(var_0.a.x, false), vec2<bool>(var_1.x > 49780u, var_0.c == 59559u))), arg_0.b.x, true | (!all(vec3<bool>(false, true, var_2.x)) & all(select(vec2<bool>(true, arg_0.b.x), var_0.a.xy, vec2<bool>(true, var_0.a.x)))));
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: i32) -> vec3<f32> {
    let var_0 = Struct_2(-32840i, -(i32(-1i) * -68672i) & u_input.a, select(2147483647i, min(_wgslsmith_mult_i32(u_input.a ^ arg_2, -arg_2), abs(firstLeadingBit(u_input.b.x))), func_3(func_2(vec4<i32>(-2147483647i, u_input.b.x, 0i, arg_2) >> (vec4<u32>(4294967295u, 4294967295u, 4294967295u, 28541u) % vec4<u32>(32u)), Struct_4(-358f)), ~vec2<i32>(u_input.a, u_input.b.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-920f, 109f)), vec2<i32>(4713i, -28958i)).x), false);
    var var_1 = vec3<u32>(reverseBits(min(59682u, select(abs(4294967295u), _wgslsmith_add_u32(4294967295u, 0u), true))), abs(firstTrailingBit(1u)), max(~1u, 1u));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1376f * -1145f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-365f * -182f)) - _wgslsmith_div_f32(218f, _wgslsmith_f_op_f32(1006f - 160f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(215f, 746f)) * _wgslsmith_f_op_f32(ceil(-647f)))))));
    let var_3 = Struct_3(var_2.x, vec3<u32>(var_1.x, 1u, ~_wgslsmith_mod_u32(_wgslsmith_div_u32(8512u, 67212u), 71956u)), var_0, -251f);
    var_1 = _wgslsmith_sub_vec3_u32(~max(var_3.b, vec3<u32>(var_3.b.x, var_1.x, _wgslsmith_mod_u32(4294967295u, var_1.x))), vec3<u32>(var_3.b.x, firstLeadingBit(0u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.b.x, var_3.b.x, var_3.b.x) | vec3<u32>(267u, 44919u, var_3.b.x), abs(var_3.b))));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a, var_2.x, _wgslsmith_div_f32(-1107f, 169f)) - vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), var_3.a), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(var_2.x)))))), _wgslsmith_f_op_f32(f32(-1f) * -1500f), _wgslsmith_f_op_f32(var_2.x + -250f)));
}

fn func_5(arg_0: i32, arg_1: vec3<f32>, arg_2: vec2<u32>) -> Struct_4 {
    let var_0 = reverseBits(~vec3<u32>(max(60645u, ~0u), max(reverseBits(arg_2.x), firstTrailingBit(arg_2.x)), firstTrailingBit(countOneBits(4294967295u))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-arg_1.xz);
    let var_2 = -1066f;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 * _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(var_2 * _wgslsmith_f_op_f32(f32(-1f) * -984f)))));
    var var_4 = Struct_2(_wgslsmith_add_i32(_wgslsmith_clamp_i32(min(u_input.b.x, 1i), arg_0, ~(~46100i)), -23475i), arg_0 ^ arg_0, arg_0 << (countOneBits(4294967295u) % 32u), true);
    return Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.x, var_2))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(u_input.a, 34i, -18107i, u_input.a) & ~reverseBits(vec4<i32>(u_input.a, u_input.b.x, _wgslsmith_mod_i32(24364i, -8355i), -u_input.a));
    let var_1 = func_5(41280i, _wgslsmith_f_op_vec3_f32(func_4(true, select(func_3(func_1(Struct_4(823f), var_0.ywz), vec2<i32>(-12946i, u_input.b.x), vec2<f32>(-117f, 1000f), var_0.xw), vec4<bool>(u_input.a != 22013i, all(vec2<bool>(true, true)), any(vec4<bool>(true, true, false, true)), any(vec3<bool>(false, false, false))), select(vec4<bool>(false, false, false, false), func_3(Struct_5(var_0.x, vec2<bool>(true, false)), vec2<i32>(-59508i, -2147483647i), vec2<f32>(-928f, 160f), u_input.b), vec4<bool>(false, false, true, false))), i32(-1i) * -10602i)), abs(~vec2<u32>(1u, 1u)));
    let var_2 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(8916u, -_wgslsmith_sub_vec2_i32(vec2<i32>(~1i, _wgslsmith_mod_i32(2147483647i, var_0.x)), ~_wgslsmith_mult_vec2_i32(var_0.xy, u_input.b)));
}

