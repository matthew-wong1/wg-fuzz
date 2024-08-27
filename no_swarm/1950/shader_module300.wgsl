struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
    d: vec2<f32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: Struct_2,
    d: vec4<i32>,
    e: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -153f;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> i32 {
    global0 = _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f - 501f)))))));
    var var_0 = false;
    var var_1 = !(!(!vec2<bool>(all(vec2<bool>(false, true)), false)));
    var var_2 = Struct_2(-select(-_wgslsmith_div_vec3_i32(vec3<i32>(0i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, -46653i, u_input.a.x)), abs(u_input.a), var_1.x));
    var_2 = Struct_2(var_2.a);
    return ~(-1i);
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_4(Struct_3(_wgslsmith_clamp_vec3_i32(countOneBits(~vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i)), u_input.a & -vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(1i, -25291i, u_input.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(165f, -1195f, -345f) + vec3<f32>(137f, -1263f, -1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-829f, -677f, -748f))))), Struct_2((u_input.a ^ u_input.a) << (vec3<u32>(1u, 7026u, 331u) % vec3<u32>(32u))), abs((vec4<i32>(u_input.a.x, 13269i, u_input.a.x, -6353i) >> (vec4<u32>(0u, 1u, 0u, 5910u) % vec4<u32>(32u))) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))), u_input.a.x), Struct_3(vec3<i32>(countOneBits(21027i), _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a.x, u_input.a.x), -vec2<i32>(u_input.a.x, 46912i)), -firstTrailingBit(-10953i)), vec3<f32>(_wgslsmith_f_op_f32(sign(-168f)), _wgslsmith_f_op_f32(min(-1864f, _wgslsmith_f_op_f32(round(-1000f)))), -1000f), Struct_2(vec3<i32>(1i, func_3(), abs(u_input.a.x))), vec4<i32>(31575i, u_input.a.x, _wgslsmith_mod_i32(-2147483647i, 2147483647i), (u_input.a.x ^ u_input.a.x) | -u_input.a.x), u_input.a.x));
    var var_1 = vec3<i32>(u_input.a.x, var_0.a.a.x, u_input.a.x & max(~58723i, i32(-1i) * -1i));
    var var_2 = vec2<u32>(~reverseBits(~abs(113797u)), ~_wgslsmith_add_u32(~select(1u, 4223u, false), ~firstTrailingBit(1u)));
    let var_3 = Struct_1(4294967295u, 1179f, _wgslsmith_div_i32(-17769i, -16533i) << (min(var_2.x, ~1u) % 32u), vec2<f32>(_wgslsmith_f_op_f32(sign(-884f)), var_0.b.b.x), !select(vec3<bool>(false, any(vec4<bool>(false, false, true, false)), true), vec3<bool>(all(vec2<bool>(false, false)), true, select(false, true, false)), vec3<bool>(true, true, true)));
    var_2 = _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_div_u32(var_3.a, 1u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(var_3.a, 6867u))), _wgslsmith_mult_vec2_u32(vec2<u32>(95150u & (var_3.a << (18983u % 32u)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(13077u, var_2.x), vec2<u32>(var_2.x, 13872u)), 1u, firstLeadingBit(var_3.a))), _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, var_3.a), vec2<u32>(4294967295u, var_3.a), vec2<u32>(var_3.a, var_2.x)), reverseBits(vec2<u32>(var_2.x, 0u)), abs(vec2<u32>(var_2.x, var_3.a))) >> (vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_2.x, var_3.a), vec3<u32>(47924u, var_2.x, 1u)), 1u) % vec2<u32>(32u))));
    return Struct_2(abs(vec3<i32>(i32(-1i) * -2147483647i, abs(~19338i), var_0.b.d.x)));
}

fn func_4(arg_0: Struct_2) -> Struct_3 {
    global0 = _wgslsmith_div_f32(1333f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1182f, -1432f, true)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-178f)) - _wgslsmith_f_op_f32(min(273f, -1198f)))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1035f - _wgslsmith_div_f32(-1018f, -543f)), 988f))));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1703f);
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1081f * 461f)))));
    global0 = -199f;
    global0 = _wgslsmith_f_op_f32(floor(-1000f));
    return Struct_3(abs(_wgslsmith_div_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i), arg_0.a ^ max(vec3<i32>(0i, arg_0.a.x, 13862i), vec3<i32>(arg_0.a.x, -68702i, u_input.a.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-1455f * 200f), _wgslsmith_f_op_f32(f32(-1f) * -1393f), -1806f)))), arg_0, -(~(max(vec4<i32>(arg_0.a.x, 31515i, 66559i, arg_0.a.x), vec4<i32>(-41592i, u_input.a.x, -5084i, arg_0.a.x)) | _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, -19909i, 0i, arg_0.a.x), vec4<i32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x), vec4<i32>(arg_0.a.x, 57854i, arg_0.a.x, -15504i)))), _wgslsmith_dot_vec3_i32(arg_0.a, reverseBits(max(vec3<i32>(u_input.a.x, u_input.a.x, 64883i), vec3<i32>(0i, -26069i, arg_0.a.x)))) << ((4294967295u >> (~(~0u) % 32u)) % 32u));
}

fn func_1(arg_0: vec3<f32>, arg_1: i32) -> u32 {
    let var_0 = func_4(func_2());
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.b.x, _wgslsmith_f_op_f32(round(var_0.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let var_1 = firstTrailingBit(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-20351i, arg_1, 22374i), u_input.a, vec3<i32>(arg_1, 18097i, u_input.a.x)), select(vec3<i32>(var_0.a.x, u_input.a.x, arg_1), vec3<i32>(-2147483647i, u_input.a.x, var_0.c.a.x), false) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))) & vec3<i32>(i32(-1i) * -27376i, u_input.a.x, min(~1i, min(2147483647i, 7990i))));
    let var_2 = _wgslsmith_f_op_vec3_f32(exp2(arg_0));
    let var_3 = Struct_1(reverseBits(firstLeadingBit(_wgslsmith_mod_u32(1u, _wgslsmith_add_u32(37197u, 9889u)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1459f * 1f))), abs(min(_wgslsmith_mult_i32(-29636i, u_input.a.x) & reverseBits(var_1.x), max(var_0.e, -1i) ^ _wgslsmith_div_i32(59602i, 21946i))), _wgslsmith_div_vec2_f32(vec2<f32>(-894f, -105f), vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(301f, 905f, true)) + _wgslsmith_f_op_f32(round(336f))))), select(select(vec3<bool>(true, select(true, false, true), false), vec3<bool>(true, true, true), (-60309i < arg_1) & (var_2.x >= 1032f)), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), true), !vec3<bool>(true, true, all(vec4<bool>(false, true, true, false)))));
    return _wgslsmith_mult_u32(var_3.a, _wgslsmith_div_u32(var_3.a, var_3.a));
}

fn func_5(arg_0: u32, arg_1: vec4<f32>, arg_2: vec4<i32>, arg_3: Struct_4) -> vec3<bool> {
    let var_0 = vec3<u32>(_wgslsmith_add_u32(32127u | _wgslsmith_add_u32(1u, func_1(vec3<f32>(351f, arg_1.x, -1000f), 0i)), ~(~0u)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, arg_0), _wgslsmith_div_vec2_u32(vec2<u32>(0u, 33436u), vec2<u32>(arg_0, arg_0))) & ~countOneBits(4294967295u), arg_0);
    var var_1 = Struct_2(arg_2.zwx);
    return select(select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), !any(vec4<bool>(true, false, true, false))), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true), true), vec3<bool>(true, any(vec4<bool>(false, false, true, true)), true), false), !any(vec2<bool>(true, true))), !vec3<bool>(all(vec2<bool>(true, true)), false, true), vec3<bool>(arg_0 >= arg_0, var_0.x >= 86481u, !any(vec3<bool>(false, true, true)) & true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -105f;
    var var_0 = func_5(func_1(vec3<f32>(_wgslsmith_f_op_f32(-755f * _wgslsmith_f_op_f32(f32(-1f) * -1329f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(669f * -306f))), _wgslsmith_f_op_f32(step(-3632f, _wgslsmith_f_op_f32(abs(1569f))))), _wgslsmith_mult_i32(_wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), _wgslsmith_add_i32(u_input.a.x, -1i)), u_input.a.x)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-961f + -318f) + -1756f) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-337f - 1114f), _wgslsmith_div_f32(-1274f, -1155f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(387f, -390f)) * _wgslsmith_f_op_f32(f32(-1f) * -276f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1380f + 870f), _wgslsmith_f_op_f32(step(-1839f, -2165f)))) * 1f), -463f), _wgslsmith_add_vec4_i32(func_4(Struct_2(u_input.a)).d, -vec4<i32>(-1i, select(u_input.a.x, u_input.a.x, true), func_3(), u_input.a.x)), Struct_4(func_4(Struct_2(func_2().a)), Struct_3(vec3<i32>(-23335i, -1i, -12095i), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1402f, -670f, -323f)))), Struct_2(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec4<i32>(u_input.a.x, 0i, u_input.a.x | 1i, _wgslsmith_mod_i32(44350i, 1i)), -func_4(Struct_2(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))).c.a.x)));
    var var_1 = !select(!select(!vec4<bool>(true, true, var_0.x, var_0.x), !vec4<bool>(false, var_0.x, var_0.x, false), var_0.x && var_0.x), select(!(!vec4<bool>(var_0.x, false, false, var_0.x)), vec4<bool>(all(vec4<bool>(false, var_0.x, false, var_0.x)), false && var_0.x, !var_0.x, var_0.x | var_0.x), select(!vec4<bool>(false, var_0.x, false, var_0.x), vec4<bool>(var_0.x, var_0.x, false, false), true)), select(select(select(vec4<bool>(false, false, var_0.x, false), vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(false, var_0.x, var_0.x, var_0.x)), select(vec4<bool>(true, true, var_0.x, false), vec4<bool>(true, var_0.x, true, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), select(vec4<bool>(true, true, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(var_0.x, true, var_0.x, var_0.x))), vec4<bool>(!var_0.x, true, any(vec3<bool>(var_0.x, false, var_0.x)), true), false));
    var var_2 = func_4(Struct_2(vec3<i32>(u_input.a.x, 4840i, u_input.a.x)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.x) - _wgslsmith_f_op_f32(step(-1615f, var_2.b.x))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.b.x, -1135f) + _wgslsmith_f_op_f32(var_2.b.x + -454f))), _wgslsmith_f_op_f32(1254f - var_2.b.x))));
    var_1 = !(!select(vec4<bool>(true, false, true, true), vec4<bool>(var_2.a.x >= 2147483647i, !var_0.x, true, all(vec4<bool>(var_1.x, false, true, true))), vec4<bool>(any(var_0.xx), true, false, false)));
    var_1 = vec4<bool>(true, true, !var_1.x | !var_0.x, var_0.x);
    let var_3 = 1u;
    var_2 = func_4(Struct_2(_wgslsmith_sub_vec3_i32(var_2.c.a, u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_2.b.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.b.x))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.b.x + _wgslsmith_f_op_f32(trunc(-437f))), _wgslsmith_f_op_f32(-var_2.b.x))), _wgslsmith_f_op_f32(var_2.b.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + var_2.b.x))), min(vec4<i32>(-74365i, 16382i, abs(-23230i), _wgslsmith_sub_i32(countOneBits(-2147483647i), _wgslsmith_div_i32(0i, var_2.d.x))), vec4<i32>(abs(_wgslsmith_clamp_i32(var_2.c.a.x, -1i, var_2.a.x)), -1i, var_2.e, (var_2.d.x << (var_3 % 32u)) >> (_wgslsmith_div_u32(75726u, 4294967295u) % 32u))));
}

