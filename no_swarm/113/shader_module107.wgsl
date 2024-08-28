struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
    d: vec4<f32>,
    e: u32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
    c: vec2<u32>,
    d: i32,
    e: Struct_3,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_3 = Struct_3(true, vec3<i32>(25658i, 19858i, 0i), Struct_2(vec3<f32>(1864f, -668f, -937f)));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1() -> vec4<u32> {
    return vec4<u32>(~max(~0u, _wgslsmith_clamp_u32(3250u, 71976u, 32614u)) ^ _wgslsmith_div_u32(select(72903u, 1u, false), 52u), _wgslsmith_mod_u32(~min(_wgslsmith_add_u32(0u, 65312u), _wgslsmith_sub_u32(54383u, 0u)), 22276u), ~countOneBits(1u), abs(1u));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: f32, arg_3: vec3<f32>) -> f32 {
    let var_0 = Struct_4(select(vec3<bool>(true, false, false), vec3<bool>(true, all(arg_1), true && !arg_1.x), arg_1), Struct_3(all(select(select(arg_1, arg_1, arg_1), select(vec3<bool>(global1.a, global1.a, true), arg_1, arg_0.a), arg_0.c.a.x < arg_0.c.a.x)), firstLeadingBit(abs(vec3<i32>(-5924i, -2147483647i, arg_0.b.x) << (vec3<u32>(763u, 54500u, 17725u) % vec3<u32>(32u)))), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-675f, 286f, arg_0.c.a.x)))), ~vec2<u32>(~_wgslsmith_div_u32(0u, 89932u), _wgslsmith_add_u32(4294967295u, 0u)), -1i, Struct_3(arg_0.a, arg_0.b, Struct_2(vec3<f32>(arg_3.x, _wgslsmith_f_op_f32(min(-1066f, arg_3.x)), arg_0.c.a.x))));
    let var_1 = Struct_5(~vec4<u32>(~(~27585u), var_0.c.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c.x, 1u, var_0.c.x, 26938u), vec4<u32>(var_0.c.x, 29872u, 7259u, var_0.c.x)), var_0.c.x), Struct_4(select(vec3<bool>(arg_0.a, all(var_0.a), any(var_0.a)), select(select(vec3<bool>(var_0.b.a, true, var_0.e.a), arg_1, vec3<bool>(var_0.a.x, var_0.b.a, true)), vec3<bool>(arg_0.a, true, var_0.e.a), !global1.a), var_0.a), arg_0, ~(select(vec2<u32>(var_0.c.x, var_0.c.x), var_0.c, true) << (var_0.c % vec2<u32>(32u))), abs(u_input.a.x), Struct_3(_wgslsmith_f_op_f32(floor(var_0.b.c.a.x)) >= var_0.b.c.a.x, vec3<i32>(0i, 35915i, min(global1.b.x, -1i)), var_0.e.c)));
    global0 = u_input.a.x <= var_0.d;
    var var_2 = !vec2<bool>(!all(var_0.a), true);
    global0 = false;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(var_1.b.b.c.a.x)))))));
}

fn func_4(arg_0: f32) -> u32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1040f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 * arg_0), _wgslsmith_f_op_f32(floor(-194f))), _wgslsmith_f_op_f32(func_3(Struct_3(false, vec3<i32>(0i, 0i, 1i), Struct_2(vec3<f32>(-304f, global1.c.a.x, global1.c.a.x))), !vec3<bool>(global1.a, global1.a, global1.a), _wgslsmith_f_op_f32(ceil(global1.c.a.x)), _wgslsmith_f_op_vec3_f32(-global1.c.a)))) - global1.c.a));
    global1 = Struct_3(!(-28733i < firstTrailingBit(u_input.a.x)), global1.b, Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-502f, var_0.a.x) * _wgslsmith_f_op_f32(arg_0 * var_0.a.x)), -962f, _wgslsmith_f_op_f32(1571f * -171f))));
    let var_1 = Struct_1(u_input.a.x, arg_0, ~(~global1.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(446f, _wgslsmith_f_op_f32(-arg_0), 503f, _wgslsmith_f_op_f32(exp2(var_0.a.x))), vec4<f32>(_wgslsmith_f_op_f32(arg_0 * -738f), 103f, -675f, _wgslsmith_div_f32(-157f, global1.c.a.x)))), _wgslsmith_add_u32(4294967295u, ~_wgslsmith_clamp_u32(~43610u, ~1u, 46128u)));
    return select(reverseBits(min(_wgslsmith_div_u32(var_1.e, ~0u), var_1.e ^ var_1.e)), ~_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(var_1.e, 69461u, var_1.e, var_1.e) >> (vec4<u32>(4294967295u, 0u, var_1.e, 0u) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.e, 1u, 4294967295u, var_1.e), ~vec4<u32>(4294967295u, 57009u, var_1.e, var_1.e))), true);
}

fn func_2(arg_0: vec4<f32>, arg_1: i32, arg_2: vec2<i32>) -> Struct_5 {
    global1 = Struct_3(false, global1.b, global1.c);
    let var_0 = 11969u >> ((func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.a.x) - _wgslsmith_f_op_f32(func_3(Struct_3(global1.a, vec3<i32>(-43632i, 37672i, -59940i), global1.c), vec3<bool>(global1.a, false, true), arg_0.x, vec3<f32>(-435f, -347f, -465f))))) | 20875u) % 32u);
    var var_1 = vec3<u32>(var_0, ~31210u, max(select(var_0, _wgslsmith_mult_u32(342u, var_0), true), ~firstLeadingBit(var_0))) << (~_wgslsmith_div_vec3_u32(vec3<u32>(var_0, ~var_0, var_0), _wgslsmith_div_vec3_u32(vec3<u32>(14331u, var_0, 0u), vec3<u32>(50925u, 78594u, 0u)) | (vec3<u32>(var_0, var_0, 77179u) >> (vec3<u32>(var_0, var_0, 1u) % vec3<u32>(32u)))) % vec3<u32>(32u));
    global0 = true;
    let var_2 = Struct_1(0i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-732f + global1.c.a.x))))), reverseBits(global1.b.x), arg_0, ((0u | var_1.x) ^ _wgslsmith_dot_vec2_u32(~vec2<u32>(var_1.x, 20418u), ~vec2<u32>(4294967295u, var_0))) >> (~(~var_0) % 32u));
    return Struct_5(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(27883u, var_2.e, var_2.e, var_2.e) ^ vec4<u32>(33121u, 37733u, 1u, var_1.x), abs(vec4<u32>(var_1.x, var_2.e, var_1.x, var_2.e))) << (_wgslsmith_div_vec4_u32(vec4<u32>(var_0, var_1.x, 80827u, var_0), countOneBits(vec4<u32>(var_1.x, 35321u, var_0, 1u))) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(~reverseBits(vec4<u32>(var_0, var_2.e, var_0, 7149u)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, var_2.e, 0u, 0u), vec4<u32>(var_0, var_0, 93474u, 4294967295u)))), Struct_4(vec3<bool>(arg_2.x <= (arg_1 | var_2.a), select(!global1.a, select(global1.a, false, global1.a), global1.a), ~73953u != var_1.x), Struct_3(false, vec3<i32>(var_2.a, global1.b.x, -25072i) << (_wgslsmith_sub_vec3_u32(vec3<u32>(var_2.e, 4294967295u, 26903u), vec3<u32>(7966u, 1u, var_1.x)) % vec3<u32>(32u)), global1.c), var_1.yy, i32(-1i) * -5378i, Struct_3(true, vec3<i32>(0i, var_2.c, var_2.a), global1.c)));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: vec4<u32>, arg_3: Struct_5) -> vec3<bool> {
    return !select(arg_1, select(func_2(_wgslsmith_f_op_vec4_f32(-arg_0), -15676i, abs(vec2<i32>(1i, global1.b.x))).b.a, vec3<bool>(4294967295u > arg_3.b.c.x, true, false), true), !select(vec3<bool>(arg_3.b.a.x, arg_1.x, true), vec3<bool>(true, global1.a, global1.a), any(arg_3.b.a.zz)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 13957i;
    var_0 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(~global1.b, global1.b) | ~(~u_input.a.x), 50052i), -(~global1.b.x | _wgslsmith_clamp_i32(~2147483647i, u_input.a.x, -u_input.a.x)));
    var var_1 = -1i;
    let var_2 = Struct_4(!select(func_5(vec4<f32>(global1.c.a.x, global1.c.a.x, global1.c.a.x, global1.c.a.x), vec3<bool>(true, true, false), func_1(), func_2(vec4<f32>(-664f, global1.c.a.x, global1.c.a.x, 1328f), 2147483647i, vec2<i32>(1i, 0i))), select(!vec3<bool>(global1.a, true, true), func_2(vec4<f32>(global1.c.a.x, 1075f, -650f, -390f), u_input.a.x, u_input.a).b.a, global1.a), global1.a), Struct_3(global1.a, vec3<i32>(max(u_input.a.x, _wgslsmith_sub_i32(0i, u_input.a.x)), 7280i, global1.b.x), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-global1.c.a.x), _wgslsmith_f_op_f32(-global1.c.a.x), global1.c.a.x))), vec2<u32>(firstTrailingBit(firstLeadingBit(0u)) << (1496u % 32u), 4294967295u), -5506i, Struct_3(global1.a, -_wgslsmith_sub_vec3_i32(vec3<i32>(-44485i, -2147483647i, 1i), global1.b), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c.a.x, 1000f, global1.c.a.x) * global1.c.a) - _wgslsmith_f_op_vec3_f32(global1.c.a * vec3<f32>(-693f, global1.c.a.x, global1.c.a.x))))));
    let var_3 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1509f * global1.c.a.x), 1104f, _wgslsmith_f_op_f32(-global1.c.a.x), _wgslsmith_div_f32(var_2.b.c.a.x, var_2.b.c.a.x)))), -34588i, -vec2<i32>(-1036i, abs(select(var_2.b.b.x, global1.b.x, false)))).b.b.c;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec3_u32(select(vec3<u32>(1u, var_2.c.x, 2271u), vec3<u32>(var_2.c.x, var_2.c.x, var_2.c.x), global1.a) << (~vec3<u32>(0u, 9108u, 0u) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_add_u32(0u, 0u), var_2.c.x, 61281u)), vec4<u32>(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-153f, var_2.e.c.a.x, 1230f, 400f))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-121f, var_2.e.c.a.x, 498f, var_3.a.x), vec4<f32>(-2495f, -1051f, 1209f, 882f), vec4<bool>(var_2.a.x, global1.a, var_2.b.a, global1.a)))), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global1.b.x, -26255i, u_input.a.x), vec3<i32>(0i, -62298i, 1i)), vec3<i32>(13633i, 11769i, 25573i)), var_2.e.b.xy).b.c.x, 4294967295u, 13374u, var_2.c.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.e.c.a)), func_1());
}

