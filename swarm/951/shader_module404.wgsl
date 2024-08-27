struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: bool,
    c: bool,
    d: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: i32,
    c: Struct_4,
    d: Struct_1,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(149f, 1626f, -498f, 315f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_3, arg_2: vec3<f32>) -> f32 {
    let var_0 = select(vec4<bool>(true, !(!arg_1.b), any(select(!vec2<bool>(arg_1.c, true), select(vec2<bool>(arg_0.d.c, arg_0.e.b), vec2<bool>(arg_1.c, false), vec2<bool>(false, arg_1.b)), arg_1.b)), true), select(select(select(select(vec4<bool>(true, true, arg_0.d.c, arg_1.c), vec4<bool>(arg_1.b, false, false, true), vec4<bool>(false, arg_1.b, arg_0.e.c, arg_0.d.c)), !vec4<bool>(false, arg_1.c, arg_1.b, arg_1.c), true), vec4<bool>(arg_0.c.b.d.x <= 11015i, select(arg_0.d.a, false, false), arg_1.c, true | arg_1.c), !(!vec4<bool>(false, arg_1.b, arg_1.b, arg_0.d.a))), !select(vec4<bool>(false, true, true, arg_0.e.b), vec4<bool>(true, true, false, true), !vec4<bool>(false, true, arg_1.c, arg_0.d.a)), true), vec4<bool>(arg_1.b, any(vec3<bool>(arg_2.x < global0.x, false, all(vec3<bool>(false, arg_0.c.a.a, true)))), false, arg_0.d.c));
    let var_1 = countOneBits(arg_0.a);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.x * 193f), _wgslsmith_f_op_f32(floor(arg_0.d.d))), _wgslsmith_f_op_f32(f32(-1f) * -862f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2.x * -169f))) - _wgslsmith_f_op_f32(ceil(global0.x))));
    global0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.d.d, -654f, var_2, arg_0.c.a.d)))), vec4<f32>(var_2, _wgslsmith_f_op_f32(floor(-1479f)), _wgslsmith_f_op_f32(f32(-1f) * -2359f), _wgslsmith_f_op_f32(f32(-1f) * -502f)), !(arg_2.x >= arg_0.d.d))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 1021f)), _wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -364f), arg_1.b)), -890f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.x + arg_0.d.d), _wgslsmith_f_op_f32(-933f + global0.x))))));
    global0 = vec4<f32>(-851f, global0.x, _wgslsmith_f_op_f32(arg_2.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(global0.x)))), arg_0.d.d)), _wgslsmith_f_op_f32(-global0.x));
    return arg_2.x;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool, arg_3: bool) -> bool {
    let var_0 = Struct_4(arg_0, Struct_3(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.x <= _wgslsmith_sub_i32(u_input.a.x, firstLeadingBit(u_input.a.x)), true, ~min(countOneBits(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec3<i32>(37333i, -24746i, u_input.a.x))));
    let var_1 = true;
    let var_2 = vec3<i32>(_wgslsmith_div_i32(-_wgslsmith_sub_i32(29452i, var_0.b.a.x), -(~u_input.a.x)), -15045i, var_0.b.d.x) & abs(~abs(vec3<i32>(var_0.b.d.x, -1i, 1i)));
    var var_3 = Struct_4(Struct_1(all(!select(vec2<bool>(false, false), vec2<bool>(true, var_1), vec2<bool>(arg_0.c, false))), max(vec2<u32>(_wgslsmith_add_u32(arg_0.b.x, 52542u), 8668u), ~(~vec2<u32>(0u, 105586u))), var_0.b.c, _wgslsmith_f_op_f32(1658f * 1106f)), Struct_3(~_wgslsmith_mod_vec3_i32(-vec3<i32>(var_0.b.d.x, var_2.x, var_0.b.a.x), var_0.b.d), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global0.x, 1184f)), _wgslsmith_f_op_f32(f32(-1f) * -1210f)) <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.x))), arg_2, vec3<i32>(-1252i, _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(-19610i, u_input.a.x)), vec2<i32>(43856i, 48666i)), _wgslsmith_dot_vec2_i32(-u_input.a, vec2<i32>(17440i, -35443i) << (vec2<u32>(arg_0.b.x, 4294967295u) % vec2<u32>(32u))))));
    let var_4 = Struct_4(Struct_1(all(select(select(vec3<bool>(true, true, true), vec3<bool>(var_0.b.b, false, false), vec3<bool>(false, var_0.b.c, var_1)), !vec3<bool>(arg_0.c, var_3.a.a, arg_2), true)), ~arg_0.b, true, 1589f), var_0.b);
    return (var_4.b.b & true) == all(vec3<bool>(true, arg_0.a, all(!vec3<bool>(arg_0.a, var_4.a.c, false))));
}

fn func_2(arg_0: Struct_3) -> Struct_2 {
    let var_0 = Struct_2(vec4<u32>(~(~4294967295u), _wgslsmith_mod_u32(select(~4294967295u, ~0u, select(arg_0.c, false, arg_0.c)), 81599u), 47916u, ~(~1u)));
    global0 = vec4<f32>(global0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(-global0.x), global0.x);
    var var_1 = Struct_4(Struct_1(true, _wgslsmith_add_vec2_u32(var_0.a.xz, var_0.a.yx), arg_0.b, _wgslsmith_f_op_f32(min(global0.x, 1197f))), Struct_3(~select(arg_0.d, abs(arg_0.a), !vec3<bool>(false, arg_0.b, arg_0.b)), func_4(Struct_1(arg_0.c, var_0.a.xx, u_input.a.x < 2147483647i, _wgslsmith_f_op_f32(func_3(Struct_5(0u, 1i, Struct_4(Struct_1(true, var_0.a.yz, arg_0.c, global0.x), arg_0), Struct_1(arg_0.b, var_0.a.wx, false, 167f), arg_0), arg_0, global0.zxw))), Struct_2(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 1u, var_0.a.x, var_0.a.x), var_0.a)), arg_0.b, select(all(vec4<bool>(false, true, false, false)), arg_0.b, arg_0.c)), all(!select(vec4<bool>(true, arg_0.c, true, true), vec4<bool>(arg_0.b, arg_0.b, true, false), true)), abs(vec3<i32>(-1i) * -vec3<i32>(-82887i, u_input.a.x, u_input.a.x))));
    var var_2 = Struct_4(var_1.a, Struct_3(countOneBits(var_1.b.a | (var_1.b.d >> (vec3<u32>(var_0.a.x, var_1.a.b.x, var_1.a.b.x) % vec3<u32>(32u)))), !(!var_1.a.c), false != ((arg_0.b & var_1.b.b) || true), vec3<i32>(-1i) * -vec3<i32>(0i, -36927i, arg_0.d.x)));
    var var_3 = Struct_3(_wgslsmith_mult_vec3_i32(~arg_0.d, var_1.b.d), all(select(select(!vec3<bool>(var_2.b.b, true, var_2.a.c), vec3<bool>(var_2.a.a, var_1.b.c, var_2.a.a), var_2.a.a), select(select(vec3<bool>(var_2.b.b, var_2.a.a, true), vec3<bool>(arg_0.b, false, false), var_1.a.c), select(vec3<bool>(var_1.a.a, true, false), vec3<bool>(arg_0.c, false, var_1.a.c), true), any(vec4<bool>(false, true, false, var_1.a.c))), select(vec3<bool>(arg_0.c, false, true), vec3<bool>(false, var_2.b.b, true), select(vec3<bool>(var_1.a.a, true, true), vec3<bool>(true, true, false), vec3<bool>(false, var_2.a.c, true))))), all(!select(select(vec4<bool>(arg_0.b, arg_0.c, var_1.a.c, true), vec4<bool>(var_2.b.c, true, true, arg_0.c), vec4<bool>(false, var_1.a.a, false, false)), select(vec4<bool>(arg_0.b, arg_0.c, false, var_1.b.b), vec4<bool>(true, arg_0.b, var_1.b.c, var_1.b.b), vec4<bool>(true, var_1.b.b, arg_0.c, arg_0.c)), vec4<bool>(arg_0.c, true, false, arg_0.c))), -firstTrailingBit(min(~arg_0.d, arg_0.a)));
    return Struct_2(var_0.a);
}

fn func_5(arg_0: Struct_2) -> vec4<f32> {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-710f, -393f, global0.x, -1431f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, global0.x), vec4<f32>(-1702f, -1399f, -1505f, global0.x))))));
    let var_0 = vec2<bool>(!all(vec3<bool>(true, all(vec2<bool>(true, false)), select(true, true, false))), true);
    var var_1 = select(-vec2<i32>(-2147483647i, 0i), vec2<i32>(24288i, u_input.a.x), 2147483647i != ~(~_wgslsmith_clamp_i32(0i, -2147483647i, u_input.a.x)));
    global0 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(global0.x + global0.x), global0.x, _wgslsmith_f_op_f32(floor(1190f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(global0.x)), -247f)))));
    let var_2 = _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(arg_0.a, ~arg_0.a), _wgslsmith_mult_u32(~abs(arg_0.a.x), arg_0.a.x ^ _wgslsmith_sub_u32(19329u, arg_0.a.x))) != 29347u;
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.x, global0.x, -294f, global0.x))), _wgslsmith_div_vec4_f32(vec4<f32>(1079f, -825f, global0.x, -2745f), vec4<f32>(global0.x, 650f, -897f, 778f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.x, global0.x, global0.x, global0.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2816f, global0.x, 723f, global0.x)))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global0.x * -1544f), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(f32(-1f) * -2068f), -382f), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -452f), 1f, _wgslsmith_f_op_f32(step(-196f, 1163f)), _wgslsmith_f_op_f32(2470f + global0.x))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_f_op_f32(min(global0.x, global0.x)), 150f, global0.x)))));
}

fn func_1() -> bool {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2058f), _wgslsmith_f_op_f32(round(466f)), 566f);
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(global0.x)), _wgslsmith_f_op_f32(-650f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1257f)) - _wgslsmith_f_op_f32(global0.x + -342f)))));
    global0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_5(func_2(Struct_3(vec3<i32>(u_input.a.x, -19011i, 1i), true, false, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1432f, -195f, _wgslsmith_f_op_vec4_f32(func_5(Struct_2(vec4<u32>(4294967295u, 9935u, 1u, 96774u)))).x)))));
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1.x + global0.x), -232f, var_0.x, -328f));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(-u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, ~13285i), vec2<i32>(min(u_input.a.x, 1i), -2147483647i)));
    let var_1 = -362f;
    var var_2 = any(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true)), vec4<bool>(true, func_1(), all(vec4<bool>(false, true, true, false)), select(true, true, true)), all(vec3<bool>(true, true, false)) & all(vec3<bool>(true, false, false)))) | all(select(vec3<bool>(all(vec4<bool>(true, true, true, false)), false, any(vec3<bool>(false, false, true))), vec3<bool>(true, true, true), true));
    var var_3 = _wgslsmith_f_op_f32(919f * var_1);
    var var_4 = Struct_3(~select(~vec3<i32>(u_input.a.x, -49585i, var_0.x), abs(vec3<i32>(var_0.x, -2449i, -2147483647i)), true) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), !(!select(all(vec3<bool>(true, false, false)), true, true)), true, countOneBits(abs(vec3<i32>(var_0.x | var_0.x, ~(-3933i), var_0.x))));
    let var_5 = select(true, var_4.b, !var_4.c) || var_4.b;
    var var_6 = Struct_1(var_4.c, ~vec2<u32>(35081u, 4294967295u), firstTrailingBit(-u_input.a.x) >= _wgslsmith_dot_vec3_i32(vec3<i32>(36305i, -2147483647i, -var_4.a.x), vec3<i32>(0i, ~var_4.a.x, var_4.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-2103f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.x)))) * -1647f));
    var var_7 = Struct_2(~vec4<u32>(var_6.b.x, ~1u, abs(10039u), reverseBits(4294967295u)) & vec4<u32>(1u, reverseBits(32588u) >> (_wgslsmith_div_u32(var_6.b.x, 1u) % 32u), ~max(var_6.b.x, var_6.b.x), var_6.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-u_input.a.x), 4671i, -333f, ~_wgslsmith_sub_vec4_i32(vec4<i32>(var_4.d.x, -1i, -2147483647i, var_0.x) & vec4<i32>(-31480i, 14580i, var_4.d.x, 10586i), vec4<i32>(u_input.a.x, -44546i, 2147483647i, var_0.x) | vec4<i32>(0i, var_0.x, var_4.d.x, u_input.a.x)) | firstTrailingBit(countOneBits(vec4<i32>(u_input.a.x, u_input.a.x, -27686i, u_input.a.x))));
}

