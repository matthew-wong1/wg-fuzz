struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: vec4<f32> = vec4<f32>(732f, 799f, -1189f, 343f);

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> vec3<bool> {
    global0 = vec4<u32>(arg_0.b.a.x, _wgslsmith_add_u32(8072u, select(~43265u, _wgslsmith_add_u32(u_input.a, arg_0.b.a.x), false)) & (~(~1u) >> (1u % 32u)), 16637u, ~1u);
    var var_0 = vec4<u32>(~firstLeadingBit(abs(_wgslsmith_clamp_u32(global0.x, arg_0.b.a.x, arg_0.a.a.x))), 1u, global0.x, _wgslsmith_mod_u32(min(91171u, global0.x), _wgslsmith_clamp_u32(~(~1u), 28083u, max(1u, ~global0.x))));
    var var_1 = global0.x;
    var_0 = arg_0.b.a;
    var_0 = max(~(~select(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.b.a.x, arg_0.a.a.x, 26618u, 31243u), vec4<u32>(3965u, 1u, 0u, 9197u), vec4<u32>(var_0.x, var_0.x, 4294967295u, global0.x)), select(vec4<u32>(4294967295u, 1u, 4294967295u, var_0.x), vec4<u32>(1u, 0u, 126230u, 0u), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true))), ~arg_0.b.a);
    return !(!vec3<bool>(false, !(arg_1 < 1i), !(arg_0.b.a.x > var_0.x)));
}

fn func_4(arg_0: vec3<bool>) -> vec4<u32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.x)) + _wgslsmith_f_op_f32(global1.x - global1.x)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(global1.x))))), -643f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-490f)), global1.x, any(arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(global1.x + global1.x), !arg_0.x)) + _wgslsmith_f_op_f32(floor(global1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(412f)) - -1007f))));
    global0 = vec4<u32>(~1u, 69896u, 45650u, 57668u);
    var var_1 = global0.ywx;
    var var_2 = Struct_2(Struct_1(min(select(~vec4<u32>(var_1.x, u_input.a, global0.x, global0.x), countOneBits(vec4<u32>(u_input.a, global0.x, 6897u, 1u)), all(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true))), _wgslsmith_clamp_vec4_u32(vec4<u32>(84596u, 50115u, global0.x, 4294967295u) & vec4<u32>(global0.x, 3108u, u_input.a, 4577u), vec4<u32>(global0.x, 16005u, 1u, 0u), vec4<u32>(4294967295u, u_input.a, global0.x, 1u) ^ vec4<u32>(1u, 1u, u_input.a, u_input.a)))), Struct_1(~_wgslsmith_clamp_vec4_u32(vec4<u32>(18285u, 1u, 8401u, 4294967295u), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 1u, 1u, u_input.a), vec4<u32>(global0.x, 1u, 13478u, u_input.a)), ~vec4<u32>(var_1.x, 0u, global0.x, var_1.x))), select(-(vec2<i32>(-13520i, 2147483647i) << (var_1.yy % vec2<u32>(32u))), reverseBits(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 17573i, -1i, 25517i), vec4<i32>(7518i, 85076i, -1i, 17825i)), 1i)), select(arg_0.xz, select(arg_0.yy, vec2<bool>(arg_0.x, false), select(vec2<bool>(arg_0.x, arg_0.x), arg_0.yy, arg_0.x)), !arg_0.zx)), i32(-1i) * -min(_wgslsmith_mult_i32(17886i, -1i), select(65911i, 67245i, arg_0.x)));
    var var_3 = Struct_2(var_2.b, var_2.b, vec2<i32>(0i, countOneBits(var_2.c.x)), ~_wgslsmith_mod_i32(~2147483647i, (var_2.c.x & var_2.c.x) >> (40329u % 32u)));
    return vec4<u32>(~(~(~12130u)), ~_wgslsmith_dot_vec4_u32(var_3.b.a, abs(max(var_3.b.a, var_2.b.a))), 4294967295u, ~var_1.x);
}

fn func_2(arg_0: vec2<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.wxw), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_div_f32(318f, global1.x), _wgslsmith_f_op_f32(-2020f - global1.x)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(global1.zww)), _wgslsmith_f_op_vec3_f32(exp2(global1.zyw)))))));
    var var_1 = 0u;
    return Struct_2(Struct_1(func_4(select(select(vec3<bool>(true, true, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), func_3(Struct_2(Struct_1(vec4<u32>(11152u, u_input.a, 13757u, u_input.a)), Struct_1(vec4<u32>(53409u, global0.x, 23076u, 10542u)), vec2<i32>(-1i, -2147483647i), 2147483647i), -1i), vec3<bool>(false, false, arg_0.x)))), Struct_1(~((vec4<u32>(global0.x, global0.x, global0.x, global0.x) << (vec4<u32>(global0.x, 22577u, u_input.a, global0.x) % vec4<u32>(32u))) << (~vec4<u32>(u_input.a, 0u, 4294967295u, 4294967295u) % vec4<u32>(32u)))), _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(select(-vec2<i32>(-6781i, -34711i), -vec2<i32>(1i, 28330i), vec2<bool>(false, false)), vec2<i32>(_wgslsmith_add_i32(57970i, -2147483647i), 1i)), select(-vec2<i32>(24292i, 0i), select(vec2<i32>(5417i, -1i), vec2<i32>(-66816i, -2147483647i), arg_0), !vec2<bool>(false, arg_0.x)) | vec2<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 0i, 0i), vec3<i32>(1i, 64525i, 1i)))), ~_wgslsmith_clamp_i32(_wgslsmith_add_i32(0i, 1i), ~1i, 1i));
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(1i, 1i, 1i, 1i)), select(vec4<i32>(-114i, ~(~0i), ~_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -1i, -2147483647i), vec3<i32>(-6773i, 2147483647i, 5695i)), _wgslsmith_sub_i32(i32(-1i) * -11780i, _wgslsmith_clamp_i32(-15611i, 2147483647i, 2147483647i))), vec4<i32>(-1i) * -vec4<i32>(17910i, 26939i, -27426i, -1i), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true))));
    var var_1 = !(-_wgslsmith_add_i32(var_0.x, abs(-2147483647i)) < var_0.x);
    let var_2 = func_2(!(!vec2<bool>(false, any(vec3<bool>(true, true, false)))));
    var var_3 = any(!(!vec4<bool>(true, true, all(vec2<bool>(true, false)), false)));
    var_1 = !((reverseBits(-23859i) == var_2.d) || true);
    return var_2;
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: Struct_2) -> vec4<f32> {
    var var_0 = arg_2;
    var var_1 = -arg_2.c;
    let var_2 = vec4<i32>(abs(arg_0), ~(-1i), _wgslsmith_sub_i32(-max(11898i, _wgslsmith_sub_i32(var_1.x, var_0.c.x)), arg_2.d), 2147483647i);
    let var_3 = var_0.a.a;
    var var_4 = select(!vec4<bool>(!func_3(Struct_2(Struct_1(var_0.b.a), var_0.a, vec2<i32>(arg_2.d, -8557i), var_0.d), arg_2.c.x).x, true, all(vec3<bool>(true, true, true)), true), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false))), !vec4<bool>(all(select(vec2<bool>(false, true), vec2<bool>(true, false), true)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), false)), true, true));
    return _wgslsmith_f_op_vec4_f32(max(vec4<f32>(463f, _wgslsmith_f_op_f32(arg_1 * -497f), 1031f, _wgslsmith_f_op_f32(select(335f, _wgslsmith_f_op_f32(f32(-1f) * -330f), var_4.x || !var_4.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-922f, _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(arg_1 + -473f), _wgslsmith_f_op_f32(global1.x - 679f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_5(firstTrailingBit(56011i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), func_1()))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - global1.x)), global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * _wgslsmith_f_op_f32(trunc(1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-815f)) + _wgslsmith_f_op_f32(-global1.x))))));
    let var_0 = func_2(!select(!func_3(Struct_2(Struct_1(vec4<u32>(9253u, u_input.a, 44045u, 1u)), Struct_1(vec4<u32>(62923u, 56023u, global0.x, global0.x)), vec2<i32>(1i, 2147483647i), 59916i), -51517i).xy, func_3(Struct_2(Struct_1(vec4<u32>(18650u, 4294967295u, 4294967295u, 3789u)), Struct_1(vec4<u32>(u_input.a, u_input.a, global0.x, 30971u)), vec2<i32>(13058i, -34122i), 3886i), 10427i).xy, vec2<bool>(true, 38638u <= u_input.a))).b;
    var var_1 = u_input.a;
    var var_2 = _wgslsmith_dot_vec3_i32(~(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-5908i, 0i, 44166i), vec3<i32>(32255i, -28828i, -1i), vec3<i32>(1i, 1i, 10617i)), vec3<i32>(-1i, 49287i, -2147483647i)) >> (vec3<u32>(var_0.a.x, 2378u, var_0.a.x) % vec3<u32>(32u))), -(~vec3<i32>(-2147483647i, max(-1i, -24987i), -2147483647i >> (var_0.a.x % 32u))));
    var_1 = firstTrailingBit(global0.x);
    var_2 = i32(-1i) * -reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), abs(vec2<i32>(42251i, 1i))));
    var_1 = _wgslsmith_add_u32(min(firstTrailingBit(var_0.a.x), ~var_0.a.x), 4294967295u);
    let var_3 = func_1().b;
    var_1 = _wgslsmith_mult_u32(~global0.x, 27717u);
    let x = u_input.a;
    s_output = StorageBuffer(-(select(vec4<i32>(16528i, -61614i, -17132i, 12555i) << (var_3.a % vec4<u32>(32u)), ~vec4<i32>(-24744i, 37638i, 10672i, -2384i), true) | _wgslsmith_mult_vec4_i32(vec4<i32>(6374i, 826i, 52402i, 0i) >> (var_0.a % vec4<u32>(32u)), ~vec4<i32>(-21991i, 1i, -16146i, -14818i))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global1.x, -509f), global1.x)), _wgslsmith_f_op_vec4_f32(func_5(0i, -1778f, Struct_2(Struct_1(var_3.a), Struct_1(var_3.a), vec2<i32>(2585i, 2843i), 1i))).x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global1.x, global1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -686f) + _wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(min(-315f, _wgslsmith_f_op_f32(f32(-1f) * -420f))))), 1f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -105f), _wgslsmith_f_op_f32(f32(-1f) * -721f), true))), global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, global1.x, true)) * _wgslsmith_f_op_f32(-global1.x))));
}

