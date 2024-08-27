struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: Struct_1,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<f32>(-494f, 588f), vec3<i32>(2740i, 0i, 29324i), Struct_1(0u, false, 1u), vec2<f32>(-1245f, -1831f));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> i32 {
    global0 = Struct_2(vec2<f32>(global0.a.x, arg_0.a.x), vec3<i32>(1i, -2147483647i, 1i), Struct_1(~4294967295u, any(select(vec3<bool>(false, arg_1.b, true), vec3<bool>(arg_1.b, arg_0.c.b, true), true)), ~1u), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.d.x, _wgslsmith_f_op_f32(select(227f, _wgslsmith_f_op_f32(global0.d.x * -396f), arg_0.c.b))), vec2<f32>(-101f, _wgslsmith_div_f32(global0.a.x, _wgslsmith_f_op_f32(trunc(-2066f)))))));
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, _wgslsmith_f_op_f32(-2148f + _wgslsmith_f_op_f32(-global0.a.x)))), firstLeadingBit(firstTrailingBit(u_input.a.yxw)), Struct_1(reverseBits(arg_0.c.c >> (60022u % 32u)), arg_0.c.b & ((false | arg_1.b) && true), ~4294967295u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(-312f)), global0.a.x))));
    let var_0 = _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global0.b.x, -u_input.a.x, i32(-1i) * -24272i, u_input.a.x), vec4<i32>(-1i, _wgslsmith_mod_i32(13270i, 1i), global0.b.x, firstTrailingBit(u_input.a.x)) & countOneBits(vec4<i32>(u_input.a.x, global0.b.x, -28410i, -71606i) ^ u_input.a)), firstTrailingBit(vec4<i32>(_wgslsmith_add_i32(-20154i, 0i), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b.x, global0.b.x, arg_0.b.x, u_input.a.x), vec4<i32>(-14414i, -17808i, arg_0.b.x, 27188i)), 1i, _wgslsmith_div_i32(u_input.a.x, arg_0.b.x)) & vec4<i32>(~(-94088i), u_input.a.x, _wgslsmith_add_i32(-43762i, 5141i), -2147483647i)));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(976f, 880f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.d.x, arg_0.d.x) - vec2<f32>(-645f, 1049f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.a.x, -314f)))))))), -firstTrailingBit(global0.b), Struct_1(~(~_wgslsmith_mult_u32(17304u, 1u)), true, _wgslsmith_mod_u32(global0.c.a, abs(arg_0.c.c) ^ _wgslsmith_sub_u32(arg_1.c, 23523u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, arg_0.a.x)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2371f, -873f))))));
    var var_2 = ~(~abs(vec3<u32>(countOneBits(global0.c.c), 4294967295u, arg_0.c.a | 4294967295u)));
    return var_0.x;
}

fn func_2(arg_0: f32) -> Struct_2 {
    let var_0 = !(!vec3<bool>(true, all(!vec4<bool>(global0.c.b, global0.c.b, true, global0.c.b)), false));
    var var_1 = Struct_2(global0.a, vec3<i32>(global0.b.x, func_3(Struct_2(vec2<f32>(-631f, arg_0), vec3<i32>(u_input.a.x, 1i, -24906i), global0.c, _wgslsmith_f_op_vec2_f32(-global0.d)), Struct_1(reverseBits(1u), true, 5693u)), -1i), global0.c, vec2<f32>(global0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -249f)))));
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(round(var_1.d)), abs(select(u_input.a.yzw, max(_wgslsmith_sub_vec3_i32(var_1.b, vec3<i32>(var_1.b.x, -3728i, u_input.a.x)), vec3<i32>(2064i, var_1.b.x, var_1.b.x) & global0.b), true)), global0.c, vec2<f32>(_wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.a.x * arg_0), _wgslsmith_f_op_f32(var_1.a.x + arg_0))))), var_1.a.x));
    var var_2 = global0.c;
    let var_3 = _wgslsmith_f_op_f32(210f + _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-arg_0)));
    return Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global0.a, global0.d) * _wgslsmith_f_op_vec2_f32(var_1.d - vec2<f32>(300f, -252f))) - global0.a), var_1.d), reverseBits(vec3<i32>(firstTrailingBit(12965i), ~global0.b.x, 1i) & var_1.b), global0.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(round(381f))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-195f, -2872f) * var_1.d), var_1.d, var_0.zy)))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_2) -> vec4<u32> {
    let var_0 = Struct_2(arg_2.a, vec3<i32>(-(i32(-1i) * -18373i), 2147483647i << (arg_0.c % 32u), 0i), Struct_1(~(~28970u ^ ~global0.c.c), arg_0.b & !any(vec4<bool>(false, arg_0.b, false, true)), 0u), global0.d);
    global0 = func_2(global0.d.x);
    global0 = arg_2;
    var var_1 = vec3<u32>(0u, ~_wgslsmith_dot_vec4_u32(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.a, arg_0.c, arg_0.a, 0u), vec4<u32>(18383u, 2491u, arg_2.c.a, global0.c.c))), ~select(vec4<u32>(global0.c.c, 60047u, 4294967295u, 95192u), vec4<u32>(37526u, 4294967295u, 68587u, arg_2.c.c), false)), ~arg_0.a);
    var_1 = ~(~countOneBits(~vec3<u32>(0u, var_0.c.c, global0.c.c) >> (~vec3<u32>(119092u, var_0.c.c, 1u) % vec3<u32>(32u))));
    return ~(~(~(vec4<u32>(global0.c.a, var_1.x, var_0.c.c, arg_0.c) | vec4<u32>(9124u, 18815u, 4294967295u, arg_0.a))) ^ (~(~vec4<u32>(8948u, 21176u, 4294967295u, 43027u)) & (firstLeadingBit(vec4<u32>(global0.c.c, 4294967295u, var_1.x, 25836u)) | ~vec4<u32>(23655u, 55446u, arg_0.c, 9140u))));
}

fn func_4(arg_0: vec3<bool>, arg_1: bool, arg_2: bool, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = arg_3.x;
    var var_1 = any(!select(arg_0, vec3<bool>(false, true, false), select(arg_0, arg_0, arg_2))) && true;
    var var_2 = firstLeadingBit(func_2(-1770f).b | u_input.a.wxw);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d.x + _wgslsmith_f_op_f32(global0.a.x * 1060f)) - -710f))));
    var_2 = vec3<i32>(global0.b.x, abs(1i), global0.b.x);
    return Struct_1(arg_3.x ^ countOneBits(~1u), func_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f)).c.b | all(!(!vec4<bool>(true, global0.c.b, global0.c.b, false))), min(~(~(4294967295u >> (global0.c.c % 32u))), 27405u));
}

fn func_5(arg_0: Struct_1, arg_1: u32) -> Struct_2 {
    var var_0 = Struct_1(5840u, !any(select(vec4<bool>(arg_0.b, global0.c.b, arg_0.b, true), select(vec4<bool>(arg_0.b, arg_0.b, true, global0.c.b), vec4<bool>(true, false, false, false), true), vec4<bool>(false, true, true, true))), reverseBits(global0.c.c));
    let var_1 = _wgslsmith_f_op_f32(global0.a.x - global0.a.x);
    global0 = func_2(_wgslsmith_f_op_f32(trunc(var_1)));
    var var_2 = -u_input.a.xzz;
    var var_3 = !vec2<bool>(!(true || select(var_0.b, true, arg_0.b)), !(-u_input.a.x <= _wgslsmith_dot_vec2_i32(var_2.xz, u_input.a.ww)));
    return func_2(356f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(func_4(vec3<bool>(global0.c.b, !any(vec2<bool>(global0.c.b, false)), !(global0.c.b | true)), false, global0.c.b, _wgslsmith_add_vec4_u32(min(vec4<u32>(1u, 33362u, global0.c.c, 0u), vec4<u32>(66809u, 0u, 48173u, global0.c.a)) & func_1(global0.c, vec2<bool>(false, global0.c.b), Struct_2(vec2<f32>(global0.a.x, global0.a.x), vec3<i32>(u_input.a.x, -13129i, 1i), Struct_1(global0.c.a, false, global0.c.c), global0.a)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, global0.c.c, global0.c.a, 58315u) & vec4<u32>(global0.c.a, 1u, 44599u, 16005u), countOneBits(vec4<u32>(28309u, global0.c.c, 4294967295u, global0.c.c)), ~vec4<u32>(global0.c.a, global0.c.c, 27571u, 74750u)))), ~global0.c.c);
    let var_0 = _wgslsmith_add_vec4_u32(~func_1(Struct_1(4294967295u, true, 939u), select(vec2<bool>(global0.c.b, global0.c.b), select(vec2<bool>(global0.c.b, false), vec2<bool>(false, true), vec2<bool>(global0.c.b, global0.c.b)), select(vec2<bool>(global0.c.b, false), vec2<bool>(global0.c.b, true), vec2<bool>(global0.c.b, global0.c.b))), func_5(func_4(vec3<bool>(global0.c.b, global0.c.b, false), false, global0.c.b, vec4<u32>(global0.c.a, 4294967295u, 4294967295u, global0.c.c)), global0.c.c)), ~_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(global0.c.c, 0u, 0u, global0.c.c), vec4<u32>(1u, global0.c.c, global0.c.a, global0.c.a) >> (vec4<u32>(0u, global0.c.c, global0.c.a, 1u) % vec4<u32>(32u))), vec4<u32>(global0.c.c, abs(global0.c.a), 8185u & global0.c.a, ~1u)));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(func_2(_wgslsmith_f_op_f32(1335f - -1000f)).d)), global0.a)), min(global0.b, countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(-11642i, global0.b.x, 11191i), min(vec3<i32>(global0.b.x, u_input.a.x, -73956i), global0.b)))), Struct_1(1u, (global0.a.x != _wgslsmith_f_op_f32(-global0.a.x)) & global0.c.b, 83630u), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(func_5(Struct_1(global0.c.c, global0.c.b, global0.c.a), 10002u).d * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -368f), global0.d.x)))));
    var_1 = func_5(func_5(func_2(_wgslsmith_f_op_f32(251f - _wgslsmith_f_op_f32(1857f - -1843f))).c, reverseBits(var_1.c.a)).c, firstTrailingBit(_wgslsmith_div_u32(global0.c.c, 14462u)));
    let var_2 = ~u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.zx);
}

