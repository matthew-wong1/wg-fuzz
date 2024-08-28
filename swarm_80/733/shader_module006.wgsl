struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<bool>,
    c: bool,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
    c: u32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<i32>) -> vec3<bool> {
    let var_0 = -35493i;
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(arg_0.x))))), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-631f)) * arg_0.x))), -160f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(800f, 570f, 201f, -200f) - vec4<f32>(873f, 521f, arg_0.x, -218f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(arg_0.x)), _wgslsmith_f_op_f32(sign(arg_0.x)), -1446f, arg_0.x))));
    var var_2 = _wgslsmith_div_u32(~6927u, ~u_input.d.x);
    var var_3 = _wgslsmith_sub_i32(-_wgslsmith_mult_i32(-abs(arg_1.x), ~abs(u_input.c.x)), select(0i, abs(~1i), true));
    let var_4 = u_input.d.x << (~1u % 32u);
    return !(!(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), any(vec2<bool>(true, true)))));
}

fn func_2(arg_0: f32) -> Struct_3 {
    let var_0 = vec4<i32>(-15149i, ~firstTrailingBit(min(44065i, -4179i)), 0i, ~_wgslsmith_clamp_i32(-10858i, 21741i, 9375i)) >> (countOneBits(u_input.e) % vec4<u32>(32u));
    let var_1 = max(37052u, ~1u);
    let var_2 = Struct_2(any(select(select(vec3<bool>(true, true, true), func_3(vec2<f32>(arg_0, 517f), u_input.c.wxy), vec3<bool>(true, true, true)), select(func_3(vec2<f32>(arg_0, arg_0), vec3<i32>(var_0.x, var_0.x, u_input.c.x)), vec3<bool>(true, true, true), any(vec4<bool>(true, true, true, false))), false)), vec2<bool>((all(vec3<bool>(false, true, false)) || true) && all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true))), !all(select(vec2<bool>(false, true), vec2<bool>(true, false), false))), Struct_1(!vec4<bool>(true, var_1 >= u_input.e.x, true, true)));
    var var_3 = arg_0;
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(862f, _wgslsmith_f_op_f32(floor(-1799f)), -328f, -1171f), vec4<f32>(_wgslsmith_f_op_f32(abs(-1464f)), _wgslsmith_f_op_f32(arg_0 * -163f), _wgslsmith_f_op_f32(floor(arg_0)), -622f), any(var_2.c.a)))) - vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0))), arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_0, -674f), _wgslsmith_f_op_f32(arg_0 + 1531f), var_2.a))), _wgslsmith_f_op_f32(-1f), 1323f));
    return Struct_3(var_1, var_2.c.a.yz, any(select(!vec4<bool>(var_2.c.a.x, false, var_2.c.a.x, true), var_2.c.a, !(!var_2.b.x))));
}

fn func_1(arg_0: Struct_4) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(503f)), _wgslsmith_f_op_f32(-arg_0.d.x), _wgslsmith_f_op_f32(arg_0.d.x * _wgslsmith_f_op_f32(arg_0.d.x + arg_0.d.x))) - vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.d.x - 925f), -761f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.d.x), arg_0.d.x, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.d.x, 723f)) - _wgslsmith_f_op_f32(-arg_0.d.x)))) + vec3<f32>(1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -739f), _wgslsmith_f_op_f32(floor(249f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_0.d.x)), -1025f), false)), _wgslsmith_f_op_f32(arg_0.d.x - arg_0.d.x)));
    var var_1 = var_0.x;
    var var_2 = !vec3<bool>(false, all(select(vec2<bool>(false, arg_0.b.a.x), vec2<bool>(arg_0.b.a.x, arg_0.b.a.x), arg_0.b.a.x)) & false, any(arg_0.b.a));
    var var_3 = var_0;
    var var_4 = vec3<bool>(all(arg_0.b.a.zw), arg_0.b.a.x, true);
    return func_2(964f);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: vec3<bool>) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2089f)))))));
    let var_1 = func_1(Struct_4(vec2<i32>(-20061i << (arg_1.a % 32u), firstLeadingBit(arg_2.x)) << (vec2<u32>(1u, min(u_input.e.x, u_input.e.x)) % vec2<u32>(32u)), arg_0.c, _wgslsmith_dot_vec2_u32(~max(vec2<u32>(u_input.d.x, 4294967295u), u_input.d), vec2<u32>(u_input.d.x, u_input.e.x)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1112f))), _wgslsmith_f_op_f32(f32(-1f) * -398f))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-541f, 1f)), 1f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(309f - -1041f))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1267f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -596f) + _wgslsmith_f_op_f32(-652f - 647f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -187f)))));
    var var_2 = arg_0.c;
    let var_3 = vec2<i32>(0i, ~(~u_input.a.x >> (arg_1.a % 32u)));
    return !(!vec2<bool>(arg_1.c, true));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1) -> Struct_2 {
    var var_0 = vec4<u32>(1u, _wgslsmith_mod_u32(~(~(u_input.d.x << (arg_0.a % 32u))), _wgslsmith_dot_vec2_u32(u_input.d, firstLeadingBit(~vec2<u32>(44614u, 67115u)))), min(60292u, select(u_input.d.x, func_2(-196f).a, true)), _wgslsmith_dot_vec4_u32(reverseBits(abs(u_input.e & vec4<u32>(arg_0.a, 4294967295u, 4294967295u, 23040u))), vec4<u32>(95379u, arg_0.a, countOneBits(arg_0.a), 45676u)));
    var var_1 = ~(-25220i);
    let var_2 = Struct_1(!vec4<bool>(true, true, 1u <= u_input.e.x, func_4(Struct_2(arg_1.a.x, vec2<bool>(arg_0.c, true), arg_1), func_1(Struct_4(vec2<i32>(0i, u_input.c.x), arg_1, arg_0.a, vec2<f32>(-1773f, 497f))), u_input.c.zww, arg_1.a.yxx).x));
    var_0 = ~(vec4<u32>(reverseBits(~75841u), arg_0.a, 845u, var_0.x) | u_input.e);
    var var_3 = !select(!(!select(vec4<bool>(true, arg_1.a.x, true, var_2.a.x), vec4<bool>(arg_1.a.x, false, false, arg_1.a.x), vec4<bool>(true, true, arg_0.b.x, false))), !select(vec4<bool>(arg_1.a.x, true, false, var_2.a.x), arg_1.a, false), select(var_2.a, !(!vec4<bool>(true, arg_0.c, true, true)), var_2.a.x | var_2.a.x));
    return Struct_2(710f < _wgslsmith_f_op_f32(round(-242f)), vec2<bool>(!arg_1.a.x, true), Struct_1(vec4<bool>(true, var_2.a.x, arg_0.c, select(false | var_3.x, var_2.a.x, !var_2.a.x))));
}

fn func_6(arg_0: Struct_2, arg_1: vec2<i32>) -> Struct_3 {
    let var_0 = Struct_3(~(~max(u_input.e.x, ~0u)), select(arg_0.b, func_4(arg_0, func_2(-570f), _wgslsmith_mod_vec3_i32(u_input.a.wwz, u_input.a.wyz), vec3<bool>(true, any(vec3<bool>(arg_0.b.x, false, arg_0.b.x)), arg_0.a && false)), arg_0.b.x), arg_0.b.x);
    var var_1 = true;
    var_1 = var_0.b.x;
    var_1 = true;
    var var_2 = arg_0.b.x;
    return Struct_3(28458u, !var_0.b, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-366f, -2045f) - _wgslsmith_div_vec2_f32(vec2<f32>(-1541f, 937f), vec2<f32>(-462f, 586f))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(256f, 869f) * vec2<f32>(791f, 699f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(2138f, -983f), vec2<f32>(252f, -490f)))))))));
    let var_2 = func_6(func_5(Struct_3(u_input.d.x, func_4(Struct_2(true, vec2<bool>(false, false), Struct_1(vec4<bool>(var_0, var_0, false, false))), func_1(Struct_4(u_input.a.zx, Struct_1(vec4<bool>(true, var_0, var_0, true)), 1u, vec2<f32>(var_1.x, -1000f))), u_input.c.xzx, select(vec3<bool>(false, var_0, true), vec3<bool>(var_0, var_0, true), vec3<bool>(var_0, true, var_0))), any(!vec2<bool>(var_0, true))), Struct_1(vec4<bool>(false, false, func_1(Struct_4(u_input.a.xw, Struct_1(vec4<bool>(false, var_0, true, true)), 4294967295u, vec2<f32>(-1028f, -196f))).c, false))), vec2<i32>(abs(firstLeadingBit(_wgslsmith_add_i32(-8945i, u_input.c.x))), u_input.a.x));
    let var_3 = u_input.c.wyy;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, -1626f)) == var_1.x;
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(365f, var_1.x)) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.x, var_1.x)))))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, -284f), vec2<f32>(var_1.x, 1113f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x))))));
    let var_5 = var_3.x;
    let var_6 = vec3<bool>(!func_2(_wgslsmith_f_op_f32(select(-146f, var_1.x, true))).b.x, var_2.b.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(1162f)), _wgslsmith_f_op_f32(ceil(var_1.x)))), _wgslsmith_f_op_f32(f32(-1f) * -400f))) < var_1.x);
    let var_7 = u_input.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1551f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1975f), _wgslsmith_f_op_f32(select(388f, var_1.x, false)))))), _wgslsmith_add_vec3_i32(~(-vec3<i32>(-2147483647i, var_5, var_3.x)), _wgslsmith_sub_vec3_i32(~abs(vec3<i32>(18278i, u_input.a.x, -42464i)), vec3<i32>(-2147483647i, var_5, 1i))));
}

