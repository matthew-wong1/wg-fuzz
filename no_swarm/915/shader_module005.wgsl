struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1) -> vec4<f32> {
    let var_0 = arg_1.c;
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-462f, _wgslsmith_div_f32(642f, 138f), true)), -1165f, 1f, _wgslsmith_f_op_f32(trunc(1488f))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-231f, -539f, 614f, -1513f))) * vec4<f32>(-888f, -1253f, -167f, 828f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(997f, 1000f, 1000f, -777f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-182f, 286f, 489f, -1421f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(304f, -370f, 2847f, -999f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1082f, -1005f, -1721f, 1408f), vec4<f32>(1000f, -1066f, 130f, -312f), vec4<bool>(false, true, true, false)))) - vec4<f32>(_wgslsmith_f_op_f32(round(385f)), -104f, _wgslsmith_f_op_f32(max(-737f, 2019f)), _wgslsmith_f_op_f32(sign(192f)))))));
}

fn func_2(arg_0: Struct_1) -> i32 {
    let var_0 = Struct_1(-arg_0.a, arg_0.e | _wgslsmith_add_vec3_i32(~(~vec3<i32>(21337i, 1i, -28005i)), vec3<i32>(-1i) * -arg_0.b), arg_0.c, vec3<u32>(~u_input.b.x, 24743u, arg_0.c), vec3<i32>(select(_wgslsmith_add_i32(countOneBits(-16867i), -46754i), 36486i, !(arg_0.e.x != 14689i)), u_input.a, -2147483647i));
    let var_1 = var_0.b.xz;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(~u_input.b, Struct_1(var_1.x, ~arg_0.e, _wgslsmith_mod_u32(u_input.d.x, 31084u), max(vec3<u32>(var_0.c, var_0.d.x, 59456u), u_input.b), var_0.e)))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_2.wz)));
    let var_4 = -select(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), ~vec2<i32>(var_0.e.x, 0i) << (vec2<u32>(arg_0.d.x, arg_0.c) % vec2<u32>(32u))), arg_0.b.xx & vec2<i32>(-3892i, _wgslsmith_dot_vec3_i32(var_0.e, arg_0.e)), false);
    return _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(var_1, _wgslsmith_mult_vec2_i32(vec2<i32>(1i, 2147483647i), var_0.e.zy)), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(38768i, var_1.x), var_4), ~var_4) >> ((var_0.c >> (arg_0.c % 32u)) % 32u), 2147483647i), _wgslsmith_mult_vec3_i32(vec3<i32>(select(2147483647i, 2147483647i, true) << (_wgslsmith_div_u32(u_input.d.x, 48498u) % 32u), 29098i, var_4.x), ~(~(~arg_0.e))));
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> bool {
    let var_0 = select(!(!vec2<bool>(arg_1, arg_1)), vec2<bool>(arg_1, arg_1), select(select(vec2<bool>(true, u_input.d.x > 37367u), select(vec2<bool>(true, arg_1), vec2<bool>(true, true), true), arg_1), vec2<bool>(false, any(vec3<bool>(arg_1, arg_1, false))), vec2<bool>(arg_1, 14534u == (arg_0.d.x >> (arg_0.d.x % 32u)))));
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1443f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -819f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-195f - 669f) - _wgslsmith_f_op_f32(max(872f, -1049f)))))));
    var var_2 = -2479f;
    let var_3 = arg_0;
    var var_4 = arg_0;
    return true;
}

fn func_1(arg_0: bool, arg_1: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-481f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-424f, -682f))), _wgslsmith_f_op_f32(-482f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), 123f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2394f, 513f))))));
    var var_1 = func_4(Struct_1(u_input.a, vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a, u_input.a, u_input.a) >> (vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, u_input.d.x) % vec4<u32>(32u)), vec4<i32>(u_input.a, -40984i, -1i, 0i) & vec4<i32>(-2147483647i, u_input.a, u_input.a, -15797i)), _wgslsmith_mod_i32(i32(-1i) * -1i, func_2(Struct_1(-60772i, vec3<i32>(-41980i, u_input.a, -1i), 21115u, u_input.b, vec3<i32>(u_input.a, -1i, -2147483647i)))), reverseBits(u_input.a ^ -55035i)), 6571u, reverseBits((vec3<u32>(u_input.d.x, 0u, 43694u) >> (u_input.c.xwx % vec3<u32>(32u))) ^ u_input.b), _wgslsmith_add_vec3_i32(-countOneBits(vec3<i32>(20892i, u_input.a, u_input.a)), vec3<i32>(-2147483647i, 1i, u_input.a))), true);
    var var_2 = 804f;
    let var_3 = var_0.x;
    let var_4 = Struct_1(_wgslsmith_clamp_i32(u_input.a, func_2(Struct_1(-u_input.a, ~vec3<i32>(-1i, 18323i, u_input.a), 1u, min(vec3<u32>(u_input.c.x, 24904u, u_input.d.x), vec3<u32>(19046u, u_input.c.x, 4294967295u)), -vec3<i32>(-1i, -1i, -9129i))), ~(~(~u_input.a))), ~firstTrailingBit(~vec3<i32>(u_input.a, u_input.a, -43237i)), 23036u, vec3<u32>(~(~abs(u_input.c.x)), ~(~u_input.d.x), ~_wgslsmith_div_u32(u_input.b.x & 12597u, u_input.d.x)), ~(-(~(vec3<i32>(-1i, u_input.a, u_input.a) & vec3<i32>(u_input.a, 49729i, u_input.a)))));
    return Struct_1(u_input.a, vec3<i32>(u_input.a ^ _wgslsmith_mult_i32(-1i, -u_input.a), 1i, 1i), ~(countOneBits(4294967295u) & u_input.d.x), max(_wgslsmith_clamp_vec3_u32(u_input.c.ywx, abs(var_4.d), ~firstLeadingBit(vec3<u32>(u_input.c.x, 4294967295u, 20717u))), vec3<u32>(5207u, ~0u, var_4.c)), select(countOneBits(~countOneBits(vec3<i32>(u_input.a, var_4.b.x, 30903i))), ~vec3<i32>(firstTrailingBit(1i), ~41940i, u_input.a), vec3<bool>(arg_0, true, any(vec4<bool>(arg_1, true, arg_1, false)) || arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1456f * 895f) - 739f) * _wgslsmith_div_f32(-2311f, _wgslsmith_f_op_f32(min(260f, 465f))))), -1720f, _wgslsmith_f_op_f32(select(1f, -1000f, false)));
    let var_1 = func_1(true, true);
    var var_2 = vec4<bool>(true, !(!select(true, -618f == var_0.x, true)), true, true);
    var_2 = vec4<bool>(true, false, (var_2.x || (~5914u >= select(var_1.d.x, var_1.d.x, false))) | false, any(vec3<bool>(true | var_2.x, var_2.x, var_2.x && var_2.x)) & false);
    let var_3 = ~u_input.c;
    var_2 = !select(select(vec4<bool>(false, false | var_2.x, var_2.x, false | var_2.x), !vec4<bool>(var_2.x, true, true, false), !vec4<bool>(var_2.x, var_2.x, false, false)), vec4<bool>(var_0.x <= _wgslsmith_f_op_f32(exp2(var_0.x)), var_2.x, var_2.x | (u_input.a <= -68116i), true), select(select(!vec4<bool>(var_2.x, false, false, var_2.x), select(vec4<bool>(var_2.x, true, true, false), vec4<bool>(var_2.x, true, true, false), vec4<bool>(false, var_2.x, var_2.x, true)), !vec4<bool>(false, var_2.x, true, false)), !select(vec4<bool>(true, var_2.x, var_2.x, true), vec4<bool>(true, var_2.x, true, false), true), any(vec4<bool>(true, true, false, true))));
    var var_4 = Struct_1(i32(-1i) * -_wgslsmith_mod_i32(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b.x, var_1.a, u_input.a, -2147483647i), vec4<i32>(u_input.a, 95833i, -2147483647i, -1i))), var_1.b, reverseBits(firstLeadingBit(~_wgslsmith_mod_u32(4294967295u, u_input.d.x))), var_1.d, ~select(~vec3<i32>(var_1.a, u_input.a, -25341i), var_1.e, select(select(vec3<bool>(false, var_2.x, true), var_2.xzw, false), !var_2.yww, var_2.www)));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_sub_i32(-42850i, -u_input.a), -(~abs(-var_4.a)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(var_0)))), vec3<f32>(-198f, _wgslsmith_div_f32(_wgslsmith_div_f32(596f, 1562f), _wgslsmith_div_f32(1190f, 643f)), _wgslsmith_f_op_f32(round(1000f))), var_2.x)));
}

