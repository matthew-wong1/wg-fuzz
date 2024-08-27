struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: bool,
    d: vec3<f32>,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
    c: Struct_4,
    d: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: f32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> i32 {
    let var_0 = -(~(-min(vec3<i32>(-14548i, -1i, 25787i), vec3<i32>(u_input.c.x, 2099i, u_input.c.x))) << (min(min(_wgslsmith_add_vec3_u32(u_input.b, vec3<u32>(80877u, u_input.b.x, 71758u)), u_input.d.yzx & vec3<u32>(66114u, u_input.a, u_input.a)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d.x, 0u, u_input.b.x), ~vec3<u32>(u_input.b.x, u_input.a, 1014u))) % vec3<u32>(32u)));
    let var_1 = any(select(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true))), vec3<bool>(true, any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false)), select(all(vec3<bool>(true, false, false)), true, false)), true));
    var var_2 = Struct_2(~(~u_input.b.x), ~countOneBits(~_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(u_input.d.x, u_input.b.x))), vec3<i32>(u_input.c.x, -15348i, _wgslsmith_div_i32(var_0.x, 2147483647i)), abs(4294967295u), ~u_input.c.x);
    var var_3 = ~vec2<u32>(0u, ~u_input.b.x);
    var var_4 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -128f), Struct_2(u_input.d.x, u_input.b.xy, select(~vec3<i32>(37757i, 1315i, var_0.x), -var_2.c & var_0, false), _wgslsmith_mod_u32(~(~76940u), 7503u), 41689i));
    return countOneBits(u_input.c.x >> (_wgslsmith_mult_u32(1u, var_3.x << (_wgslsmith_mult_u32(var_2.d, var_3.x) % 32u)) % 32u));
}

fn func_4(arg_0: Struct_2) -> bool {
    let var_0 = select(select(select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, false, false, false), true), select(u_input.a < arg_0.b.x, select(false, true, false), true)), select(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), false), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), true), vec4<bool>(true, true, true, true), true), !(arg_0.c.x >= 0i)), vec4<bool>(true, true, select(all(vec2<bool>(true, true)), true, any(vec3<bool>(false, true, false))), false)), vec4<bool>(any(vec2<bool>(true, true)), u_input.a > 0u, true, any(vec2<bool>(u_input.a < 1u, true))), !vec4<bool>(all(vec2<bool>(true, true)) || true, true, true, true));
    var var_1 = Struct_4(Struct_2(countOneBits(firstLeadingBit(max(1u, 60426u))), vec2<u32>(~(~81024u), abs(arg_0.b.x)), -firstLeadingBit(select(arg_0.c, vec3<i32>(u_input.c.x, -28857i, 46028i), false)), u_input.a, min(i32(-1i) * -1i, 2147483647i) >> (_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.d, vec4<u32>(arg_0.d, u_input.a, arg_0.b.x, arg_0.d)), u_input.d >> (u_input.d % vec4<u32>(32u))) % 32u)));
    var var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -772f), _wgslsmith_f_op_f32(f32(-1f) * -1022f), true)))), -983f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1584f)) + _wgslsmith_f_op_f32(f32(-1f) * -1042f)), _wgslsmith_f_op_f32(f32(-1f) * -693f)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(551f)), 816f), 1179f))), var_1.a.c.x, true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-103f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-360f, 515f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1733f, 2305f)), _wgslsmith_f_op_f32(f32(-1f) * -596f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -789f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-828f * 891f), _wgslsmith_f_op_f32(trunc(638f)), var_0.x)))))));
    let var_3 = ~(~firstTrailingBit(u_input.b.x));
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_2.a, var_2.a))) * var_2.a));
    return true;
}

fn func_2() -> vec3<u32> {
    var var_0 = 184f;
    var_0 = _wgslsmith_f_op_f32(-462f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1510f * 1618f)), -2626f, true)) * _wgslsmith_f_op_f32(f32(-1f) * -276f)));
    let var_1 = vec4<bool>(true, func_4(Struct_2(0u, ~vec2<u32>(u_input.a, u_input.a) ^ _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 4294967295u), u_input.d.xz), max(abs(vec3<i32>(u_input.c.x, 27241i, 5508i)), vec3<i32>(u_input.c.x, u_input.c.x, 12619i)), ~1u, func_3())), false, any(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true), vec3<bool>(false, true, false)), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), select(false, false, false)), true)));
    var var_2 = _wgslsmith_sub_vec4_u32(reverseBits(firstTrailingBit(u_input.d >> (u_input.d % vec4<u32>(32u)))) ^ u_input.d, vec4<u32>(54305u, 65898u, 43947u, u_input.d.x));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(334f * _wgslsmith_f_op_f32(floor(838f))))), Struct_2(min(var_2.x, var_2.x), vec2<u32>(countOneBits(1u), 98597u), vec3<i32>(-2147483647i, 1i, firstTrailingBit(u_input.c.x) & (u_input.c.x | -1i)), min(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(var_2.wxx, u_input.b), min(4294967295u, var_2.x)), _wgslsmith_mult_u32(~var_2.x, ~4294967295u)), countOneBits(_wgslsmith_clamp_i32(18334i, -2147483647i, u_input.c.x)) ^ u_input.c.x));
    return ~(u_input.b & (u_input.b & u_input.d.wxx)) >> ((var_2.xzz | ~_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(var_2.yyy, vec3<u32>(1u, 17996u, 4294967295u)), vec3<u32>(u_input.d.x, u_input.b.x, u_input.d.x))) % vec3<u32>(32u));
}

fn func_5(arg_0: vec3<u32>, arg_1: u32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(289f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(826f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-703f))) - 934f), !select(true, true, any(vec4<bool>(true, false, true, false))))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(var_0 * 447f), _wgslsmith_f_op_f32(sign(var_0))), vec3<f32>(_wgslsmith_f_op_f32(abs(var_0)), -722f, _wgslsmith_f_op_f32(f32(-1f) * -193f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1344f, var_0, 185f), vec3<f32>(var_0, -1384f, var_0)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-218f, -515f, var_0)))));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_0, 1274f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(336f, var_0, -1177f) - vec3<f32>(-632f, var_0, 1416f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1000f, var_0, var_1.x))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1641f, 1788f, -2157f) + vec3<f32>(-433f, 574f, 1811f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 1768f, var_0)), _wgslsmith_div_vec3_f32(vec3<f32>(-499f, var_1.x, var_0), vec3<f32>(var_1.x, var_1.x, -1000f))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(695f, var_0, var_1.x))))));
    var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(696f, var_1.x, var_1.x))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(139f, 1000f, 1000f), vec3<f32>(1455f, -233f, var_0)))))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1337f, -223f) * _wgslsmith_f_op_f32(var_0 * var_1.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0 - var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 783f))))));
    var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_0, 821f)) + vec3<f32>(-241f, -1330f, var_1.x))))));
    return Struct_3(_wgslsmith_f_op_f32(-345f + var_1.x), Struct_2(1u, _wgslsmith_div_vec2_u32(vec2<u32>(arg_1, 1u), u_input.d.zx) << ((vec2<u32>(12841u, 57883u) | max(arg_0.yy, arg_0.zy)) % vec2<u32>(32u)), _wgslsmith_mult_vec3_i32(-(~vec3<i32>(u_input.c.x, u_input.c.x, 9177i)), vec3<i32>(-u_input.c.x, firstTrailingBit(u_input.c.x), 0i)), 1u, -26153i));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2, arg_2: f32) -> i32 {
    let var_0 = func_5(_wgslsmith_mod_vec3_u32(max(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.a, arg_1.d, 15960u), func_2()), vec3<u32>(~arg_1.a, 71303u & arg_1.a, firstTrailingBit(4294967295u))), firstTrailingBit(vec3<u32>(u_input.a, _wgslsmith_mult_u32(arg_0.b.d, 4294967295u), arg_1.d))), _wgslsmith_dot_vec3_u32(u_input.b & vec3<u32>(33773u, ~49611u, _wgslsmith_mult_u32(0u, 26223u)), vec3<u32>(u_input.a, _wgslsmith_clamp_u32(1u, 54696u & arg_1.b.x, _wgslsmith_mult_u32(23206u, 6127u)), arg_0.b.d)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, 1177f, arg_2, var_0.a) * vec4<f32>(192f, 1773f, arg_0.a, 1937f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-622f, -416f, arg_2, -2232f) + vec4<f32>(var_0.a, var_0.a, var_0.a, 1611f)))))), -1i, any(vec3<bool>(all(vec3<bool>(true, false, true)), false, false)) | all(vec3<bool>(func_4(arg_0.b), all(vec3<bool>(true, false, false)), true)), vec3<f32>(-1450f, -1332f, _wgslsmith_f_op_f32(max(arg_0.a, _wgslsmith_f_op_f32(f32(-1f) * -2223f)))), -491f);
    var var_2 = false;
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_2)), 804f, 1124f) + var_1.d) * var_1.d);
    var_2 = !((false | select(func_4(var_0.b), var_1.c, var_1.c)) | (var_1.c && all(!vec2<bool>(var_1.c, false))));
    return func_5(u_input.b, 0u).b.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(_wgslsmith_f_op_f32(-3266f - -1181f) == _wgslsmith_f_op_f32(trunc(1432f)));
    let var_1 = u_input.c.x;
    let var_2 = select(var_1, 34654i, !(var_0 != ((u_input.c.x < 42737i) | var_0)));
    var var_3 = u_input.c >> (u_input.b.zz % vec2<u32>(32u));
    var_3 = reverseBits(vec2<i32>(-22793i, abs(var_1) | _wgslsmith_mult_i32(var_1, -2147483647i)) ^ ~vec2<i32>(~var_1, var_3.x));
    var_3 = ~vec2<i32>(var_2, ~func_1(Struct_3(-1243f, Struct_2(65315u, vec2<u32>(u_input.b.x, 4294967295u), vec3<i32>(-2147483647i, var_2, 9446i), u_input.d.x, -2147483647i)), Struct_2(23310u, u_input.d.xy, vec3<i32>(var_3.x, -2147483647i, 29293i), 53029u, -40633i), _wgslsmith_f_op_f32(max(-1009f, -1000f))));
    let var_4 = func_5(~max(max(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d.x, u_input.d.x, u_input.a), vec3<u32>(u_input.b.x, 1u, u_input.d.x)), abs(u_input.d.zxz)), vec3<u32>(_wgslsmith_add_u32(45019u, 14193u), ~3616u, ~u_input.b.x)), _wgslsmith_div_u32(~(~u_input.b.x), u_input.b.x)).b;
    let var_5 = select(vec2<bool>(!(~var_4.a < var_4.b.x), var_0), select(!(!(!vec2<bool>(var_0, var_0))), !select(vec2<bool>(true, var_0), select(vec2<bool>(var_0, true), vec2<bool>(false, var_0), true), vec2<bool>(var_0, var_0)), vec2<bool>(_wgslsmith_sub_i32(u_input.c.x, var_4.e) < _wgslsmith_mult_i32(var_1, -1i), all(!vec4<bool>(true, true, var_0, var_0)))), var_0);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.zzy, ~0i, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1194f), 711f)), ~_wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(var_1, -2147483647i)) & 0i);
}

