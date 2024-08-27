struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: bool,
    d: vec3<u32>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec3<f32>(1000f, -1058f, -328f), vec3<i32>(0i, 0i, -23887i), vec3<f32>(-638f, 765f, -2103f), -803f, 4294967295u), vec2<bool>(true, false));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<u32>, arg_1: i32) -> u32 {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.a.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1991f, _wgslsmith_f_op_f32(round(-555f)), _wgslsmith_f_op_f32(global0.a.a.x - 1f))));
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-713f, -514f, var_0.x), global0.a.a), _wgslsmith_f_op_vec3_f32(min(var_0, vec3<f32>(-818f, 1000f, 1055f))), global0.b.x))), ~vec3<i32>(countOneBits(arg_1), -32200i, arg_1), global0.a.a, 1000f, countOneBits(countOneBits(1u))), _wgslsmith_f_op_f32(-var_0.x), reverseBits(firstTrailingBit(~0u)) >= 30027u, vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, global0.a.e), arg_0), firstLeadingBit(62732u), u_input.a.x), true);
    let var_2 = arg_0.x;
    var_1 = Struct_3(var_1.a, 1817f, global0.b.x, firstLeadingBit(~(~_wgslsmith_sub_vec3_u32(var_1.d, vec3<u32>(arg_0.x, global0.a.e, arg_0.x)))), all(vec3<bool>(global0.b.x, var_1.e, !all(vec3<bool>(true, true, var_1.c)))));
    var var_3 = _wgslsmith_f_op_f32(var_1.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)));
    return _wgslsmith_mod_u32(u_input.a.x, 1u);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: vec4<u32>) -> bool {
    global0 = arg_2;
    global0 = Struct_2(Struct_1(vec3<f32>(arg_0.a.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.c.x) * _wgslsmith_f_op_f32(min(global0.a.c.x, arg_0.a.a.x))), _wgslsmith_f_op_f32(global0.a.d - _wgslsmith_f_op_f32(abs(arg_0.a.a.x)))), global0.a.b, arg_0.a.c, arg_2.a.a.x, _wgslsmith_mult_u32(arg_0.a.e, ~_wgslsmith_dot_vec2_u32(arg_3.wz, vec2<u32>(0u, 25432u)))), global0.b);
    global0 = arg_0;
    global0 = Struct_2(arg_0.a, select(vec2<bool>(!all(vec4<bool>(false, false, global0.b.x, true)), true), !vec2<bool>(all(vec2<bool>(global0.b.x, arg_0.b.x)), arg_0.b.x), all(select(vec3<bool>(arg_2.b.x, true, arg_2.b.x), vec3<bool>(arg_0.b.x, false, arg_0.b.x), vec3<bool>(false, global0.b.x, false))) | false));
    let var_0 = Struct_3(arg_0.a, global0.a.a.x, (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.c.x) * _wgslsmith_f_op_f32(arg_2.a.a.x - arg_2.a.c.x)) > -1204f) & false, u_input.a, (~1u <= arg_3.x) & true);
    return any(!vec3<bool>(all(vec3<bool>(var_0.c, arg_2.b.x, arg_0.b.x)) && (var_0.c && true), !(!var_0.c), var_0.c));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> f32 {
    let var_0 = ~countOneBits(arg_1);
    global0 = Struct_2(global0.a, !global0.b);
    global0 = Struct_2(Struct_1(arg_0.c, global0.a.b, _wgslsmith_f_op_vec3_f32(-arg_0.c), global0.a.d, 6524u), vec2<bool>(all(!(!vec3<bool>(arg_2, false, global0.b.x))), func_4(Struct_2(Struct_1(global0.a.a, vec3<i32>(-5984i, -1i, arg_1), vec3<f32>(global0.a.d, arg_0.a.x, -1167f), global0.a.a.x, arg_0.e), vec2<bool>(false, global0.b.x)), global0.b, Struct_2(global0.a, select(global0.b, vec2<bool>(global0.b.x, arg_2), vec2<bool>(arg_2, false))), vec4<u32>(func_3(u_input.a, -1i), ~u_input.a.x, ~global0.a.e, u_input.a.x & 0u))));
    let var_1 = vec4<i32>(-1i, _wgslsmith_div_i32(arg_0.b.x, ~(~reverseBits(var_0))), arg_1, ~_wgslsmith_add_i32(-1i, ~(~(-2147483647i))));
    var var_2 = Struct_1(global0.a.c, vec3<i32>(75604i, _wgslsmith_div_i32(~_wgslsmith_dot_vec2_i32(var_1.wx, global0.a.b.xz), var_1.x), _wgslsmith_mult_i32(-8839i, global0.a.b.x)), vec3<f32>(1334f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(global0.a.a.x)))) * -1085f), _wgslsmith_f_op_f32(floor(-1004f))), _wgslsmith_f_op_f32(f32(-1f) * -539f), global0.a.e);
    return arg_0.a.x;
}

fn func_1(arg_0: vec2<f32>, arg_1: bool, arg_2: vec3<bool>) -> i32 {
    let var_0 = global0.a;
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-1319f * arg_0.x), -540f, _wgslsmith_f_op_f32(func_2(Struct_1(vec3<f32>(arg_0.x, global0.a.d, arg_0.x), global0.a.b, vec3<f32>(-2773f, arg_0.x, 1261f), var_0.c.x, 23897u), var_0.b.x, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.a.c)), select(arg_2, select(arg_2, arg_2, vec3<bool>(false, arg_2.x, arg_2.x)), select(vec3<bool>(arg_2.x, arg_2.x, false), vec3<bool>(global0.b.x, true, arg_2.x), arg_2)))), _wgslsmith_sub_vec3_i32(vec3<i32>(-global0.a.b.x, global0.a.b.x, firstTrailingBit(global0.a.b.x)), vec3<i32>(var_0.b.x, var_0.b.x, 1i)), var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1458f)))), u_input.a.x >> (0u % 32u)), global0.b);
    var var_1 = !vec4<bool>(all(select(select(vec4<bool>(false, false, false, arg_2.x), vec4<bool>(global0.b.x, false, true, true), true), vec4<bool>(false, true, false, arg_1), true)), !(_wgslsmith_f_op_f32(-arg_0.x) == -1146f), true, arg_1);
    var var_2 = select(select(arg_2, !arg_2, !any(vec3<bool>(arg_1, false, false))), !var_1.zzz, func_4(Struct_2(Struct_1(global0.a.c, vec3<i32>(-18454i, -49683i, -1i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.c.x, arg_0.x, global0.a.c.x)), _wgslsmith_f_op_f32(ceil(var_0.c.x)), global0.a.e), !select(arg_2.zz, arg_2.zy, arg_2.xy)), !(!select(var_1.yz, vec2<bool>(arg_1, arg_1), global0.b)), Struct_2(global0.a, !(!var_1.yy)), ~(~(~vec4<u32>(var_0.e, 4294967295u, var_0.e, global0.a.e)))));
    global0 = Struct_2(global0.a, !(!vec2<bool>(!var_1.x, true)));
    return _wgslsmith_mult_i32(1i, var_0.b.x);
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: i32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.a.a.x, _wgslsmith_f_op_f32(-arg_1), _wgslsmith_div_f32(arg_1, global0.a.d)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.a.a * vec3<f32>(arg_1, 376f, global0.a.a.x)) + _wgslsmith_f_op_vec3_f32(global0.a.a * global0.a.c))))), -vec3<i32>(global0.a.b.x, 1i, -8609i), global0.a.c, _wgslsmith_f_op_f32(f32(-1f) * -787f), global0.a.e >> (global0.a.e % 32u));
    global0 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(821f - _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.a.d + 1000f), -1000f)), global0.a.d), -var_0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a) - var_0.c)), _wgslsmith_f_op_f32(-1243f + _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(select(-1000f, var_0.a.x, true)))), _wgslsmith_clamp_u32(~52357u, ~u_input.a.x, firstTrailingBit(var_0.e)) >> ((u_input.a.x | max(1u, u_input.a.x)) % 32u)), select(select(select(global0.b, vec2<bool>(true, true), true), global0.b, global0.b), select(select(global0.b, vec2<bool>(global0.b.x, false), true), select(select(vec2<bool>(true, global0.b.x), global0.b, vec2<bool>(global0.b.x, true)), select(global0.b, global0.b, false), 2147483647i != arg_0), global0.b), true));
    var var_1 = ~min(~4670i, _wgslsmith_dot_vec3_i32(var_0.b, vec3<i32>(-1i, 30324i, arg_2))) > 2147483647i;
    global0 = Struct_2(global0.a, !global0.b);
    var var_2 = global0.a.e;
    return global0.a;
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_3) -> Struct_2 {
    global0 = arg_1;
    var var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1000f, arg_1.a.a.x))), -344f), -572f, arg_1.a.c.x, global0.a.c.x);
    var var_1 = -26308i;
    let var_2 = abs(~arg_1.a.b.x) < global0.a.b.x;
    var var_3 = reverseBits(abs(_wgslsmith_sub_vec4_u32(max(countOneBits(vec4<u32>(4294967295u, u_input.a.x, arg_2.d.x, 0u)), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.d.x, u_input.a.x, arg_2.d.x, 0u), vec4<u32>(22420u, 3163u, arg_2.a.e, 33542u))), ~select(vec4<u32>(4294967295u, 35514u, 1u, 119596u), vec4<u32>(333u, arg_2.d.x, global0.a.e, 21504u), vec4<bool>(false, arg_0.x, arg_0.x, arg_2.e)))));
    return Struct_2(Struct_1(arg_2.a.c, global0.a.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, global0.a.c.x, _wgslsmith_f_op_f32(-var_0.x))), func_5(i32(-1i) * -14061i, 579f, func_1(arg_2.a.c.yz, arg_0.x, !vec3<bool>(global0.b.x, true, var_2))).c.x, 4294967295u), global0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1249f + global0.a.d));
    global0 = func_6(vec2<bool>(true, false), Struct_2(func_5(reverseBits(global0.a.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.a.a.x)) * _wgslsmith_f_op_f32(1726f * 2310f)), func_1(_wgslsmith_f_op_vec2_f32(floor(global0.a.c.yx)), true, !vec3<bool>(global0.b.x, global0.b.x, false))), select(!global0.b, !vec2<bool>(global0.b.x, global0.b.x), any(vec3<bool>(global0.b.x, global0.b.x, global0.b.x)))), Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global0.a.c, global0.a.c, vec3<bool>(false, global0.b.x, true)))), global0.a.b, vec3<f32>(var_0, _wgslsmith_f_op_f32(737f + global0.a.d), 706f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.a.d), _wgslsmith_div_f32(-1000f, -440f))), global0.a.e), _wgslsmith_f_op_f32(-559f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0)))), all(!vec4<bool>(true, false, global0.b.x, false)), ~u_input.a, select(global0.b.x, false, true)));
    global0 = func_6(vec2<bool>(true, 30511u >= _wgslsmith_mod_u32(global0.a.e, func_6(global0.b, Struct_2(global0.a, global0.b), Struct_3(global0.a, 1031f, global0.b.x, u_input.a, global0.b.x)).a.e)), func_6(vec2<bool>(true, all(vec3<bool>(false, global0.b.x, global0.b.x))), func_6(func_6(global0.b, func_6(vec2<bool>(false, false), Struct_2(Struct_1(vec3<f32>(global0.a.d, global0.a.a.x, var_0), global0.a.b, vec3<f32>(var_0, global0.a.c.x, global0.a.c.x), var_0, 1u), vec2<bool>(false, true)), Struct_3(global0.a, global0.a.d, false, u_input.a, global0.b.x)), Struct_3(global0.a, -1046f, global0.b.x, vec3<u32>(global0.a.e, 36338u, 21574u), true)).b, Struct_2(Struct_1(vec3<f32>(var_0, var_0, -456f), vec3<i32>(-1i, -2147483647i, -27552i), global0.a.c, 363f, 808u), !global0.b), Struct_3(func_5(global0.a.b.x, global0.a.d, global0.a.b.x), global0.a.c.x, any(vec3<bool>(true, global0.b.x, global0.b.x)), ~u_input.a, true)), Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, global0.a.c.x, global0.a.d)), func_5(global0.a.b.x, global0.a.d, -2147483647i).b, global0.a.c, var_0, 1564u), global0.a.c.x, ~global0.a.e != 4294967295u, u_input.a, any(global0.b))), Struct_3(func_5(global0.a.b.x, _wgslsmith_f_op_f32(-global0.a.a.x), 31208i), -253f, true, ~reverseBits(~vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)), true));
    let var_1 = func_6(vec2<bool>(true, false), Struct_2(global0.a, !vec2<bool>(true, global0.b.x == false)), Struct_3(Struct_1(global0.a.c, abs(vec3<i32>(global0.a.b.x, global0.a.b.x, 55055i) | vec3<i32>(-17275i, 5865i, -162i)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(323f, 194f, 1196f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.a.a.x + 2282f))), _wgslsmith_sub_u32(u_input.a.x, ~1u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(2435f, global0.a.a.x), _wgslsmith_f_op_f32(-global0.a.a.x))) + _wgslsmith_f_op_f32(-global0.a.c.x)), false, vec3<u32>(u_input.a.x | ~4294967295u, 23285u, ~1u), global0.b.x | !global0.b.x)).a;
    let var_2 = Struct_3(Struct_1(func_6(select(global0.b, vec2<bool>(global0.b.x, global0.b.x), true), Struct_2(var_1, vec2<bool>(true, global0.b.x)), Struct_3(Struct_1(vec3<f32>(var_0, -301f, 1154f), vec3<i32>(var_1.b.x, global0.a.b.x, -5159i), vec3<f32>(var_1.c.x, -484f, 731f), -119f, var_1.e), _wgslsmith_f_op_f32(-180f - 744f), any(vec3<bool>(true, true, true)), _wgslsmith_mult_vec3_u32(u_input.a, u_input.a), !global0.b.x)).a.c, global0.a.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_2(global0.a, 0i, global0.b.x)), _wgslsmith_f_op_f32(var_1.a.x + global0.a.c.x), _wgslsmith_div_f32(var_1.d, -906f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1074f, -379f))), _wgslsmith_mult_u32(max(var_1.e, var_1.e), var_1.e)), -1487f, global0.b.x, vec3<u32>(0u, u_input.a.x, u_input.a.x >> (6457u % 32u)), global0.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(-914f, global0.a.b, vec4<u32>(_wgslsmith_dot_vec3_u32(min(_wgslsmith_add_vec3_u32(var_2.d, vec3<u32>(u_input.a.x, u_input.a.x, 1u)), ~vec3<u32>(u_input.a.x, var_1.e, 1u)), ~(~var_2.d)), global0.a.e, u_input.a.x, global0.a.e));
}

