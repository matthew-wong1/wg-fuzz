struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec3<u32>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: vec2<bool>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>, arg_1: bool, arg_2: f32, arg_3: Struct_5) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(step(arg_0, _wgslsmith_f_op_vec4_f32(-arg_0)));
    let var_1 = Struct_2(Struct_1(any(vec3<bool>(false, all(arg_3.b), arg_3.c.a.d)), _wgslsmith_add_vec3_i32(arg_3.c.a.b, vec3<i32>(arg_3.c.a.b.x >> (arg_3.c.a.c.x % 32u), u_input.a.x, u_input.a.x)), arg_3.c.a.c, true, arg_1));
    var var_2 = arg_3;
    let var_3 = arg_3;
    let var_4 = -2147483647i;
    return false | (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1644f, 415f)))) == _wgslsmith_f_op_f32(-arg_2));
}

fn func_2(arg_0: bool) -> bool {
    var var_0 = u_input.a.x;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2613f));
    var var_2 = Struct_4(Struct_3(Struct_1(select(func_3(vec4<f32>(var_1, var_1, -512f, var_1), arg_0, var_1, Struct_5(arg_0, vec2<bool>(arg_0, false), Struct_3(Struct_1(arg_0, vec3<i32>(u_input.b, u_input.a.x, u_input.b), vec3<u32>(4294967295u, 0u, u_input.c), false, true)))), arg_0, arg_0), select(reverseBits(vec3<i32>(-55150i, 0i, u_input.b)), ~vec3<i32>(-2147483647i, u_input.b, 2147483647i), false), select(vec3<u32>(1u, u_input.c, u_input.d.x), vec3<u32>(u_input.d.x, u_input.c, u_input.c), any(vec4<bool>(true, true, arg_0, true))), !select(false, false, arg_0), arg_0)), Struct_2(Struct_1(u_input.d.x != u_input.d.x, firstTrailingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, u_input.a.x, 17985i), vec3<i32>(u_input.b, 50997i, -1i))), vec3<u32>(u_input.d.x, 12024u, 19856u), false, _wgslsmith_div_i32(54306i, -1i) >= _wgslsmith_dot_vec3_i32(vec3<i32>(-26119i, u_input.a.x, u_input.b), vec3<i32>(27273i, 53281i, u_input.b)))));
    var_2 = Struct_4(Struct_3(Struct_1(true && (var_1 <= var_1), ~(vec3<i32>(u_input.b, var_2.a.a.b.x, var_2.b.a.b.x) & var_2.b.a.b), var_2.a.a.c, arg_0, var_2.a.a.d)), var_2.b);
    var_2 = Struct_4(var_2.a, var_2.b);
    return var_1 < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1077f, var_1))));
}

fn func_4(arg_0: Struct_5) -> Struct_1 {
    let var_0 = vec2<bool>(true, true);
    let var_1 = arg_0.c.a.b.yz;
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1846f, _wgslsmith_f_op_f32(1000f - -1266f), _wgslsmith_f_op_f32(f32(-1f) * -689f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -897f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -909f), -353f, -1871f, _wgslsmith_f_op_f32(sign(1051f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(-956f)), -1000f, -1369f, _wgslsmith_f_op_f32(1947f - -1000f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1370f, 1082f, -816f, -1428f)) + _wgslsmith_div_vec4_f32(vec4<f32>(283f, -327f, 1647f, -1241f), vec4<f32>(-1316f, 123f, 1039f, 496f))))), u_input.b < 21188i));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-3103f, -114f, 1869f, 1000f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-895f, var_2.x, 1628f, -1038f) * vec4<f32>(-1567f, var_2.x, var_2.x, -325f))), vec4<f32>(_wgslsmith_f_op_f32(floor(var_2.x)), var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -284f), _wgslsmith_f_op_f32(-695f - var_2.x)), !(!vec4<bool>(var_0.x, var_0.x, true, true)))) * vec4<f32>(-380f, 401f, var_2.x, 133f)));
    let var_3 = vec2<f32>(-397f, -525f);
    return Struct_1(arg_0.a, vec3<i32>(~(~1i), -30283i, ~(~u_input.a.x)), arg_0.c.a.c | max(abs(~arg_0.c.a.c), ~(vec3<u32>(u_input.c, arg_0.c.a.c.x, 1u) >> (arg_0.c.a.c % vec3<u32>(32u)))), false, all(!vec4<bool>(arg_0.c.a.e | true, !var_0.x, true, arg_0.c.a.a && false)));
}

fn func_1() -> Struct_1 {
    let var_0 = vec3<u32>(2327u, u_input.c, _wgslsmith_mod_u32(18816u, ~(~select(4294967295u, 40087u, false))));
    let var_1 = Struct_2(func_4(Struct_5(any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), vec2<bool>(true, func_2(true)), Struct_3(Struct_1(true, vec3<i32>(u_input.b, 2147483647i, -16139i), vec3<u32>(u_input.c, 91839u, 1u), true, true)))));
    let var_2 = -43832i << (_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.c, u_input.d.x, 1u, 1u)), firstTrailingBit(~vec4<u32>(u_input.c, var_1.a.c.x, u_input.c, var_1.a.c.x))), u_input.d.x >> (u_input.d.x % 32u)) % 32u);
    var var_3 = ~1u & countOneBits(u_input.d.x);
    var var_4 = -86451i;
    return func_4(Struct_5(var_1.a.d | true, vec2<bool>(true, true), Struct_3(var_1.a)));
}

fn func_5(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_2) -> vec3<u32> {
    let var_0 = arg_0.a.b.x;
    var var_1 = Struct_5(true, vec2<bool>(arg_2.a.d, true), Struct_3(arg_0.a));
    let var_2 = 1i;
    var var_3 = vec2<i32>(8219i, func_4(Struct_5(func_2(var_1.b.x && true), var_1.b, arg_0)).b.x);
    let var_4 = Struct_4(var_1.c, arg_2);
    return var_1.c.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(1100f, 2382f)), _wgslsmith_f_op_f32(1151f - 1382f), -396f, _wgslsmith_f_op_f32(f32(-1f) * -1111f)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(987f, 250f, -362f, -620f), vec4<f32>(-710f, 1465f, -609f, 1104f))), _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -2203f, 846f, 1000f), vec4<f32>(-646f, -589f, -102f, -169f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(-842f, 1197f)), _wgslsmith_f_op_f32(-1000f + 2662f), _wgslsmith_div_f32(412f, -386f), _wgslsmith_div_f32(-297f, 1463f))))));
    var var_1 = func_5(Struct_3(func_1()), vec2<bool>(any(vec4<bool>(true, false, false, false)) & true, true), Struct_2(func_4(Struct_5(false, vec2<bool>(true, false), Struct_3(Struct_1(false, vec3<i32>(u_input.a.x, -1i, 34743i), vec3<u32>(u_input.c, 56524u, 35370u), false, false)))))) << (vec3<u32>(_wgslsmith_sub_u32(41467u, u_input.d.x), 12284u, min(func_5(Struct_3(Struct_1(false, vec3<i32>(u_input.b, u_input.a.x, u_input.a.x), vec3<u32>(16651u, u_input.d.x, 8059u), true, false)), vec2<bool>(false, false), Struct_2(Struct_1(false, vec3<i32>(-2147483647i, u_input.b, 36509i), vec3<u32>(u_input.c, 27191u, u_input.d.x), true, false))).x | min(2268u, u_input.d.x), ~max(4294967295u, 17896u))) % vec3<u32>(32u));
    var var_2 = !(true | !(_wgslsmith_clamp_u32(u_input.c, u_input.c, u_input.d.x) > _wgslsmith_add_u32(1u, u_input.d.x)));
    var_2 = true;
    let var_3 = Struct_2(func_4(Struct_5(any(select(vec2<bool>(false, false), vec2<bool>(true, true), true)), vec2<bool>(true, true), Struct_3(func_1()))));
    let x = u_input.a;
    s_output = StorageBuffer(0i, countOneBits(firstLeadingBit(max(vec4<i32>(5109i, var_3.a.b.x, var_3.a.b.x, var_3.a.b.x), vec4<i32>(var_3.a.b.x, 7783i, u_input.a.x, u_input.a.x)) ^ -vec4<i32>(0i, 0i, -2147483647i, 67295i))));
}

