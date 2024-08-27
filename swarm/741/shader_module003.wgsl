struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec3<bool>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: f32,
    d: vec4<bool>,
    e: vec2<u32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
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

var<private> global0: f32 = 1000f;

var<private> global1: vec3<f32>;

var<private> global2: vec3<f32> = vec3<f32>(490f, 139f, -1697f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_5) -> vec2<u32> {
    let var_0 = Struct_4(_wgslsmith_dot_vec4_i32(vec4<i32>(-arg_1.b, _wgslsmith_add_i32(1i, min(0i, arg_1.b)), arg_1.c.x | max(arg_1.b, arg_1.b), ~(-arg_1.b)), select(vec4<i32>(arg_1.b, arg_1.c.x, arg_1.b, max(arg_1.c.x, -6467i)), countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.c.x, -1i, arg_1.c.x, arg_1.b), vec4<i32>(arg_1.b, arg_1.c.x, arg_1.b, arg_1.b))), select(select(vec4<bool>(arg_1.e.c.x, false, arg_0.x, arg_1.a.a.c.x), vec4<bool>(false, true, arg_1.a.a.b, arg_1.a.a.c.x), vec4<bool>(false, false, false, arg_0.x)), select(vec4<bool>(false, true, arg_0.x, false), vec4<bool>(arg_1.e.c.x, false, arg_1.a.a.b, arg_0.x), false), vec4<bool>(arg_1.e.b, true, arg_1.a.a.c.x, arg_1.a.a.b)))), Struct_3(Struct_2(arg_1.a.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-2290f + global1.x), 446f, 2518f) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.a.a.x, global1.x, 1000f, 106f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2.x, -652f, -448f, global1.x)))))), _wgslsmith_f_op_f32(floor(-1000f)), !select(vec4<bool>(false, true, arg_0.x, arg_0.x), select(vec4<bool>(arg_1.e.b, arg_1.e.b, false, true), vec4<bool>(false, false, false, arg_1.a.a.b), vec4<bool>(arg_1.e.c.x, true, false, false)), arg_0.x | false), vec2<u32>(select(u_input.a.x, arg_1.d, true), ~reverseBits(4294967295u))), 58203u, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_1.a.a.d.x)), -116f, arg_1.e.a.x) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1001f, -1602f, 780f)) - _wgslsmith_f_op_vec3_f32(-arg_1.e.a))), !all(select(vec3<bool>(true, arg_0.x, arg_1.e.b), arg_1.a.a.c, vec3<bool>(true, arg_1.a.a.b, true))), !vec3<bool>(arg_1.e.c.x, any(vec4<bool>(false, false, arg_0.x, arg_0.x)), false), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-arg_1.a.a.d))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1765f, global2.x, 1027f) - _wgslsmith_f_op_vec3_f32(abs(arg_1.e.d))))), arg_1.e);
    var var_1 = Struct_4(-1i, var_0.b, firstLeadingBit(~(~u_input.b.x) >> (41375u % 32u)), var_0.e, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_0.e.d, var_0.e.a))) - arg_1.e.d), true, select(vec3<bool>(false, var_0.e.b, any(vec2<bool>(true, arg_0.x))), arg_1.a.a.c, true), arg_1.e.a));
    global1 = vec3<f32>(_wgslsmith_f_op_f32(min(817f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(arg_1.a.a.a.x)), -1932f, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global2.x, _wgslsmith_f_op_f32(-var_0.b.b.x), any(vec2<bool>(true, arg_1.e.c.x)) & all(vec2<bool>(false, var_1.b.a.a.c.x)))) + -1889f), _wgslsmith_f_op_f32(abs(global2.x)));
    return var_0.b.e;
}

fn func_2(arg_0: vec2<u32>) -> vec2<u32> {
    return ~select(arg_0 ^ ~arg_0, _wgslsmith_div_vec2_u32(func_3(select(vec2<bool>(true, true), vec2<bool>(true, false), true), Struct_5(Struct_2(Struct_1(vec3<f32>(global2.x, 181f, 643f), true, vec3<bool>(false, true, true), vec3<f32>(1859f, global2.x, -515f))), -49273i, vec2<i32>(8541i, 22368i), 1u, Struct_1(vec3<f32>(1657f, -1923f, 764f), false, vec3<bool>(false, false, false), vec3<f32>(global2.x, 524f, global1.x)))), _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(28562u, arg_0.x), vec2<u32>(arg_0.x, 42709u)), u_input.a.yx << (arg_0 % vec2<u32>(32u)))), true);
}

fn func_1() -> Struct_3 {
    let var_0 = vec2<i32>(~((1i >> ((u_input.a.x ^ u_input.a.x) % 32u)) << ((u_input.a.x | u_input.b.x) % 32u)), ~10829i & _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(-39095i, -5100i, 0i)));
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(816f - _wgslsmith_f_op_f32(max(-1125f, global1.x))) + global2.x)));
    let var_1 = min(~u_input.b.x, 5862u);
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -546f), _wgslsmith_f_op_f32(-1000f - 237f), 1343f))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1433f, 251f, -313f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global1.x, global1.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(299f, 542f, global1.x)) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-134f, global2.x, -735f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1249f, _wgslsmith_div_f32(-2120f, -1110f), -1511f))));
    let var_2 = global1.x;
    return Struct_3(Struct_2(Struct_1(vec3<f32>(_wgslsmith_div_f32(1385f, 1000f), _wgslsmith_f_op_f32(abs(global1.x)), _wgslsmith_f_op_f32(-1000f - 1514f)), select(true, false, var_1 > u_input.a.x), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -622f), _wgslsmith_f_op_f32(max(global2.x, -1000f)), _wgslsmith_f_op_f32(-global1.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(317f, 1000f, global2.x, global1.x) + vec4<f32>(global2.x, global2.x, global2.x, -564f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1258f, global2.x, -342f, global2.x)), vec4<f32>(global1.x, 428f, global2.x, global2.x))), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(vec4<f32>(426f, _wgslsmith_f_op_f32(global1.x * global2.x), _wgslsmith_f_op_f32(f32(-1f) * -1472f), _wgslsmith_f_op_f32(global2.x * 517f)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, global1.x, -292f, global1.x))))), global1.x, !vec4<bool>(true, all(vec4<bool>(false, true, false, true)) | true, select(var_0.x != var_0.x, true, true), true == (4294967295u >= var_1)), _wgslsmith_mult_vec2_u32(min(u_input.b, u_input.b), func_2(u_input.b)));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: f32, arg_3: vec4<f32>) -> Struct_3 {
    var var_0 = max(~(-(~abs(-2147483647i))), select(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, -42847i), vec2<i32>(1i, -1i), vec2<i32>(-9317i, -2147483647i)), vec2<i32>(0i, -32564i)), vec2<i32>(1i, -2147483647i)), _wgslsmith_div_i32(firstTrailingBit(-18948i), ~_wgslsmith_dot_vec3_i32(vec3<i32>(-22418i, -12922i, -1i), vec3<i32>(-52161i, -92267i, -41510i))), any(select(arg_0.d, select(arg_0.d, arg_0.d, false), vec4<bool>(true, arg_0.d.x, arg_0.a.a.c.x, true)))));
    global1 = _wgslsmith_f_op_vec3_f32(-arg_0.b.xxx);
    let var_1 = Struct_3(func_1().a, _wgslsmith_f_op_vec4_f32(-arg_3), _wgslsmith_f_op_f32(-arg_0.c), select(select(arg_0.d, vec4<bool>(!arg_0.a.a.c.x, false, 4294967295u < arg_0.e.x, true), false), vec4<bool>(select(all(vec4<bool>(arg_0.a.a.c.x, false, arg_0.a.a.b, true)), true, !arg_0.a.a.c.x), arg_0.a.a.b, arg_0.a.a.c.x, true), arg_0.d), ~(~u_input.a.xx));
    var var_2 = false;
    global2 = var_1.b.zww;
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) + _wgslsmith_f_op_vec2_f32(trunc(global1.yx))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.yy)))), _wgslsmith_f_op_f32(sign(global2.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.x))), -272f, _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.x, global2.x)))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(381f, 371f))), global2.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(global1.x)))), global2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(344f - _wgslsmith_f_op_f32(-func_1().b.x)) + func_4(Struct_3(Struct_2(Struct_1(var_0.a.a.a, true, vec3<bool>(var_0.a.a.b, var_0.d.x, false), vec3<f32>(global2.x, -1000f, global1.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, 273f, 787f, global1.x)), _wgslsmith_f_op_f32(floor(global1.x)), func_1().d, ~var_0.e), global2.yx, -728f, _wgslsmith_f_op_vec4_f32(step(var_0.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1225f, 196f, -2225f, global2.x) - vec4<f32>(global2.x, 1013f, global2.x, -166f))))).c), abs(~(-(~vec3<i32>(1i, -1705i, -1i)))));
}

