struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: f32,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: Struct_3,
    d: f32,
    e: Struct_2,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: Struct_4,
    d: bool,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec2<u32>;

var<private> global2: Struct_3 = Struct_3(vec3<bool>(false, false, true), vec4<bool>(true, false, true, true), 1282f, -413f, Struct_2(Struct_1(vec4<f32>(-537f, -120f, -155f, 599f), 1880f, -544f), Struct_1(vec4<f32>(-435f, 1000f, 685f, 451f), 418f, -435f), false));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<u32>, arg_1: bool, arg_2: f32) -> f32 {
    let var_0 = !global2.b.yxx;
    var var_1 = Struct_5(global2.e.a.a.wwx, select(!(!select(vec4<bool>(false, false, true, false), global2.b, vec4<bool>(arg_1, arg_1, true, global2.b.x))), global2.b, arg_1), Struct_4(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), select(vec4<i32>(1i, -50978i, 22026i, -2147483647i), abs(vec4<i32>(0i, -38801i, 0i, -4491i)), true)), select(arg_1, false, !var_0.x), Struct_3(vec3<bool>(global2.a.x | true, true, any(vec2<bool>(false, var_0.x))), select(global2.b, global2.b, var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.d, global2.c))), _wgslsmith_f_op_f32(1f - arg_2), Struct_2(global2.e.a, Struct_1(vec4<f32>(-935f, 1277f, arg_2, -1242f), 546f, 536f), !arg_1)), 1034f, Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.d, arg_2, global2.e.a.a.x, -312f))), -320f, arg_2), global2.e.a, global2.e.c)), arg_1, Struct_3(select(global2.b.xzy, vec3<bool>(global2.a.x, var_0.x, !global2.e.c), true), global2.b, global2.c, -1007f, Struct_2(global2.e.a, Struct_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-341f, -1214f, 749f, global2.e.a.a.x))), global2.d, _wgslsmith_f_op_f32(sign(arg_2))), var_0.x)));
    global2 = var_1.e;
    global2 = var_1.e;
    global1 = (arg_0 ^ arg_0) | reverseBits(select(_wgslsmith_div_vec2_u32(select(arg_0, vec2<u32>(arg_0.x, 4294967295u), var_1.e.b.x), arg_0 & vec2<u32>(arg_0.x, arg_0.x)), vec2<u32>(~0u, global1.x), var_0.x));
    return _wgslsmith_f_op_f32(-arg_2);
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>) -> f32 {
    var var_0 = !select(vec3<bool>(any(vec2<bool>(false, true)), true, true & global2.e.c), global2.b.zxz, true);
    global0 = any(vec2<bool>(global2.e.c, arg_0.c));
    let var_1 = arg_0.a.a;
    global1 = vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u, reverseBits(1u), ~1u, 1u), vec4<u32>(global1.x, u_input.a, u_input.a, ~15529u)), ~u_input.a << (~(~(~0u)) % 32u));
    let var_2 = global2.e;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1446f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<u32>(global1.x, u_input.a), true, -396f)) * 790f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-317f)))), (arg_0.c | var_0.x) != true))) - _wgslsmith_div_f32(_wgslsmith_div_f32(-647f, _wgslsmith_f_op_f32(-arg_0.b.a.x)), -709f));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: bool) -> Struct_3 {
    var var_0 = max(_wgslsmith_dot_vec4_i32(min(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 1i, 1i, 1i)), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(78290i, -16157i), -vec2<i32>(2147483647i, -1i)), _wgslsmith_div_i32(0i, _wgslsmith_mod_i32(28091i, 38527i)), ~_wgslsmith_mult_i32(-38541i, -1i), reverseBits(abs(6324i)))), -firstTrailingBit(-34585i) ^ -6683i);
    let var_1 = select(!(~countOneBits(global1.x) >= (min(1u, 1u) | ~global1.x)), false != (select(true, !global2.a.x, !arg_3) | all(arg_1.b)), all(!arg_1.b.zy));
    var var_2 = _wgslsmith_sub_vec3_u32(vec3<u32>(1u, ~72593u, _wgslsmith_add_u32(4294967295u, global1.x)), ~vec3<u32>(~_wgslsmith_mult_u32(global1.x, 1u), _wgslsmith_mod_u32(1u, ~global1.x), 20727u));
    let var_3 = vec3<i32>(abs(countOneBits(1i)), -18i, -1i);
    global1 = var_2.zx;
    return arg_1;
}

fn func_5(arg_0: Struct_3, arg_1: i32, arg_2: Struct_5) -> Struct_4 {
    let var_0 = global1.x ^ 2773u;
    let var_1 = Struct_3(global2.a, !vec4<bool>(true, true, func_4(func_4(Struct_1(vec4<f32>(211f, -202f, arg_2.c.e.a.b, arg_0.d), 1181f, arg_2.a.x), Struct_3(vec3<bool>(global2.b.x, global2.a.x, true), vec4<bool>(true, arg_0.b.x, false, true), arg_2.a.x, global2.c, Struct_2(arg_0.e.a, Struct_1(arg_2.e.e.a.a, -2528f, global2.e.a.c), false)), arg_2.c.c.b, global2.b.x).e.b, Struct_3(arg_2.c.c.a, global2.b, global2.e.b.c, arg_2.e.e.a.a.x, Struct_2(arg_0.e.b, Struct_1(arg_0.e.a.a, arg_0.e.b.b, 1234f), global2.b.x)), vec4<bool>(arg_2.b.x, true, arg_2.b.x, arg_2.e.b.x), any(arg_2.c.c.b)).b.x, arg_2.b.x || false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_2.c.c.e.a.b)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) - -567f), -171f, func_4(Struct_1(func_4(func_4(arg_2.c.c.e.a, arg_0, vec4<bool>(false, arg_0.e.c, false, arg_0.e.c), true).e.a, arg_2.e, global2.b, arg_2.e.d != arg_0.e.a.c).e.b.a, arg_2.e.d, _wgslsmith_f_op_f32(func_3(~vec2<u32>(var_0, 32572u), all(vec4<bool>(arg_0.e.c, false, true, arg_0.a.x)), _wgslsmith_f_op_f32(-arg_2.e.d)))), arg_0, !arg_0.b, all(vec2<bool>(any(global2.a.yx), global2.a.x && true))).e);
    let var_2 = global2.e;
    let var_3 = Struct_4(firstTrailingBit(~_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(1i, 1i, arg_1, arg_2.c.a)), ~vec4<i32>(arg_2.c.a, arg_2.c.a, arg_2.c.a, arg_1))), ~(-63515i) < arg_1, var_1, arg_2.a.x, arg_2.e.e);
    global1 = select(vec2<u32>(83117u, 132097u), _wgslsmith_mod_vec2_u32(~(vec2<u32>(30341u, global1.x) & vec2<u32>(global1.x, u_input.a)), ~_wgslsmith_div_vec2_u32(vec2<u32>(1u, var_0), vec2<u32>(4294967295u, 44648u))) >> (vec2<u32>(56210u, 41014u) % vec2<u32>(32u)), global2.a.yy);
    return arg_2.c;
}

fn func_1(arg_0: f32) -> vec2<u32> {
    var var_0 = 13022u & ~global1.x;
    var_0 = firstTrailingBit(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(global1.x, 0u)), reverseBits(firstLeadingBit(vec2<u32>(0u, u_input.a))))) << (1u % 32u);
    var var_1 = global2.e;
    var var_2 = func_5(func_4(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2.c, arg_0, arg_0, var_1.a.b)))), _wgslsmith_f_op_f32(func_2(global2.e, select(vec2<u32>(1u, global1.x), vec2<u32>(22100u, u_input.a), vec2<bool>(var_1.c, false)))), 251f), Struct_3(vec3<bool>(global2.a.x, !var_1.c, var_1.c), !select(vec4<bool>(false, var_1.c, false, var_1.c), vec4<bool>(true, global2.a.x, true, var_1.c), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), arg_0, Struct_2(global2.e.a, var_1.b, var_1.c && var_1.c)), select(vec4<bool>(!var_1.c, true, select(var_1.c, global2.e.c, var_1.c), all(global2.b.zx)), select(select(global2.b, vec4<bool>(true, global2.b.x, global2.e.c, global2.a.x), false), vec4<bool>(false, var_1.c, var_1.c, var_1.c), vec4<bool>(true, global2.b.x, var_1.c, true)), !vec4<bool>(global2.a.x, global2.b.x, var_1.c, var_1.c)), firstTrailingBit(1i) > ~_wgslsmith_sub_i32(-1i, -1i)), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(1i, 1i), ~_wgslsmith_add_vec2_i32(vec2<i32>(0i, 80670i), vec2<i32>(2147483647i, -1i))), 0i), Struct_5(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-global2.e.b.a.yyz), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_1.a.a.xww), vec3<f32>(-282f, var_1.a.c, arg_0))))), !select(!vec4<bool>(false, false, var_1.c, true), vec4<bool>(true, false, true, false), var_1.c), Struct_4(2147483647i, false, Struct_3(!global2.b.yww, vec4<bool>(true, false, true, true), 133f, arg_0, global2.e), 1100f, Struct_2(var_1.b, func_4(Struct_1(vec4<f32>(global2.d, arg_0, -847f, global2.e.a.b), var_1.a.a.x, arg_0), Struct_3(global2.b.yzw, global2.b, global2.c, global2.d, global2.e), global2.b, true).e.b, all(global2.a))), (39758u > _wgslsmith_clamp_u32(101523u, 0u, u_input.a)) & (func_4(Struct_1(global2.e.a.a, arg_0, global2.e.b.b), Struct_3(vec3<bool>(global2.b.x, true, global2.a.x), vec4<bool>(global2.a.x, false, global2.a.x, true), var_1.b.c, -1000f, Struct_2(Struct_1(var_1.b.a, 1208f, global2.d), global2.e.b, var_1.c)), global2.b, global2.e.c).a.x & true), Struct_3(!(!vec3<bool>(false, global2.b.x, global2.e.c)), select(vec4<bool>(global2.e.c, var_1.c, false, var_1.c), global2.b, any(global2.b.yx)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.b.b * -1294f))), 830f, func_4(var_1.a, Struct_3(global2.a, global2.b, -951f, -650f, global2.e), select(vec4<bool>(global2.b.x, false, var_1.c, true), vec4<bool>(true, false, false, var_1.c), var_1.c), true).e)));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(~max(reverseBits(vec2<u32>(u_input.a, global1.x)), select(vec2<u32>(global1.x, u_input.a), vec2<u32>(61197u, 52418u), false)), !all(vec2<bool>(true, true)) | true, func_5(var_2.c, select(var_2.a, 31251i, global2.e.c | false), Struct_5(vec3<f32>(-968f, global2.e.a.c, arg_0), func_5(var_2.c, -32272i, Struct_5(vec3<f32>(var_1.b.c, -1000f, 1938f), vec4<bool>(var_1.c, var_2.c.a.x, false, true), Struct_4(0i, false, var_2.c, 275f, Struct_2(Struct_1(vec4<f32>(600f, arg_0, var_1.b.a.x, 538f), global2.d, var_1.b.a.x), var_1.a, var_2.c.a.x)), var_1.c, Struct_3(vec3<bool>(global2.e.c, false, global2.a.x), vec4<bool>(var_2.b, true, true, false), -157f, -851f, Struct_2(var_1.b, Struct_1(var_1.a.a, global2.d, global2.c), false)))).c.b, Struct_4(1i, global2.e.c, var_2.c, -1602f, Struct_2(Struct_1(var_2.c.e.a.a, var_2.c.d, -1734f), Struct_1(vec4<f32>(var_2.d, -458f, global2.d, -1000f), -189f, -215f), var_1.c)), var_2.c.e.c, Struct_3(vec3<bool>(var_2.e.c, var_2.c.e.c, var_1.c), global2.b, var_2.d, -401f, Struct_2(Struct_1(vec4<f32>(-526f, -220f, 294f, var_2.d), -478f, -1663f), Struct_1(var_1.b.a, arg_0, var_2.e.b.c), true)))).c.d)), var_1.b.b);
    return vec2<u32>(4294967295u, ~u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~func_1(182f));
    global0 = func_5(func_5(func_5(func_4(Struct_1(vec4<f32>(-2066f, 352f, global2.e.a.a.x, 713f), -927f, -284f), Struct_3(global2.a, vec4<bool>(global2.b.x, global2.e.c, global2.e.c, false), global2.d, -1314f, Struct_2(Struct_1(global2.e.b.a, -1000f, 1115f), global2.e.a, global2.a.x)), global2.b, false), -28174i, Struct_5(global2.e.a.a.xwz, vec4<bool>(global2.a.x, true, false, false), Struct_4(5633i, global2.b.x, Struct_3(vec3<bool>(global2.a.x, global2.b.x, true), global2.b, 1047f, -390f, global2.e), 656f, Struct_2(Struct_1(global2.e.a.a, global2.e.b.c, global2.d), Struct_1(vec4<f32>(global2.c, -284f, 1000f, global2.d), -536f, -626f), true)), false, Struct_3(global2.a, vec4<bool>(global2.a.x, global2.e.c, true, false), global2.d, 730f, global2.e))).c, _wgslsmith_dot_vec3_i32(vec3<i32>(12714i, -2848i, -61690i), firstTrailingBit(vec3<i32>(2147483647i, 51744i, 11626i))), Struct_5(vec3<f32>(328f, 1011f, global2.d), select(vec4<bool>(true, global2.a.x, global2.a.x, true), global2.b, global2.b), func_5(Struct_3(vec3<bool>(global2.e.c, true, global2.a.x), global2.b, -1000f, -1000f, global2.e), 66095i, Struct_5(global2.e.b.a.zxx, global2.b, Struct_4(1i, global2.e.c, Struct_3(global2.b.zxz, global2.b, 1030f, global2.c, global2.e), -1520f, Struct_2(global2.e.a, Struct_1(global2.e.a.a, global2.e.b.a.x, -886f), global2.e.c)), global2.a.x, Struct_3(vec3<bool>(false, global2.e.c, false), global2.b, global2.d, global2.e.a.b, Struct_2(global2.e.a, global2.e.a, false)))), global2.b.x, Struct_3(global2.b.zzw, vec4<bool>(global2.e.c, false, global2.e.c, false), global2.d, 906f, Struct_2(global2.e.b, global2.e.a, global2.b.x)))).c, -(33905i << (_wgslsmith_dot_vec4_u32(vec4<u32>(2170u, 4294967295u, var_0.x, u_input.a), vec4<u32>(var_0.x, 0u, global1.x, 42071u)) % 32u)), Struct_5(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(global2.c, 768f, global2.e.b.b), vec3<f32>(global2.d, global2.e.a.b, 539f)), vec3<f32>(1f, 1f, 1f), true)), func_4(Struct_1(vec4<f32>(global2.d, 1015f, global2.d, global2.c), -402f, global2.c), Struct_3(vec3<bool>(global2.a.x, global2.a.x, false), vec4<bool>(false, true, false, true), global2.d, global2.e.b.b, global2.e), vec4<bool>(global2.e.c, global2.a.x, global2.b.x, global2.a.x), global2.a.x).b, func_5(Struct_3(global2.a, vec4<bool>(global2.a.x, global2.b.x, global2.b.x, true), 1561f, global2.e.a.c, Struct_2(global2.e.b, global2.e.a, false)), firstTrailingBit(0i), Struct_5(global2.e.b.a.yzx, global2.b, Struct_4(-1i, true, Struct_3(vec3<bool>(true, global2.a.x, global2.e.c), vec4<bool>(global2.e.c, true, false, false), -785f, 1237f, global2.e), 109f, Struct_2(Struct_1(vec4<f32>(global2.d, global2.d, -820f, global2.c), global2.e.b.a.x, 1241f), global2.e.b, global2.a.x)), true, Struct_3(vec3<bool>(false, true, true), global2.b, global2.d, 386f, global2.e))), global2.b.x, Struct_3(global2.a, global2.b, _wgslsmith_f_op_f32(step(1038f, global2.c)), _wgslsmith_f_op_f32(global2.d * global2.d), global2.e))).e.c && ((~var_0.x != 1u) && (global2.a.x && all(!global2.a.xx)));
    global2 = func_4(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1881f, global2.c, global2.d, global2.c), vec4<f32>(global2.c, global2.e.b.a.x, global2.c, 1347f), true)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-global2.e.b.a)))), global2.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(-134f * global2.e.a.c))) - global2.c)), func_4(global2.e.a, func_5(func_5(func_4(global2.e.b, Struct_3(global2.b.zzz, global2.b, global2.c, 307f, Struct_2(Struct_1(vec4<f32>(global2.e.b.c, global2.e.b.b, global2.c, global2.d), -1005f, -186f), Struct_1(global2.e.a.a, -1895f, global2.d), false)), vec4<bool>(global2.e.c, global2.a.x, global2.a.x, false), false), -1152i >> (global1.x % 32u), Struct_5(vec3<f32>(538f, global2.c, global2.d), global2.b, Struct_4(-13587i, true, Struct_3(global2.b.yxx, vec4<bool>(global2.a.x, global2.e.c, global2.e.c, global2.a.x), 508f, global2.c, Struct_2(Struct_1(global2.e.a.a, global2.c, -372f), Struct_1(global2.e.a.a, -804f, -166f), global2.e.c)), 1483f, global2.e), false, Struct_3(global2.a, global2.b, 482f, -1630f, Struct_2(global2.e.b, global2.e.b, false)))).c, 1i, Struct_5(_wgslsmith_f_op_vec3_f32(-global2.e.b.a.zww), !global2.b, func_5(Struct_3(global2.a, vec4<bool>(global2.a.x, global2.e.c, global2.a.x, true), global2.d, global2.c, Struct_2(Struct_1(vec4<f32>(1000f, global2.d, 1000f, 305f), global2.e.a.c, -149f), Struct_1(global2.e.a.a, 109f, 1273f), global2.b.x)), -36651i, Struct_5(global2.e.a.a.zwx, vec4<bool>(false, false, true, global2.b.x), Struct_4(1i, true, Struct_3(global2.b.wwx, vec4<bool>(false, true, global2.e.c, false), global2.e.b.a.x, 424f, Struct_2(global2.e.b, global2.e.a, false)), global2.e.b.c, global2.e), global2.a.x, Struct_3(global2.a, global2.b, global2.e.b.c, global2.d, Struct_2(global2.e.b, global2.e.a, global2.e.c)))), any(vec4<bool>(global2.a.x, true, global2.e.c, global2.b.x)), Struct_3(vec3<bool>(global2.b.x, global2.b.x, global2.e.c), global2.b, 266f, -954f, global2.e))).c, vec4<bool>(false & any(vec2<bool>(true, true)), true, select(!global2.b.x, func_4(Struct_1(global2.e.b.a, -1000f, global2.c), Struct_3(vec3<bool>(false, true, false), vec4<bool>(global2.e.c, global2.a.x, global2.a.x, false), 165f, -758f, Struct_2(global2.e.b, Struct_1(vec4<f32>(global2.d, 1000f, 826f, global2.c), global2.c, global2.c), global2.b.x)), global2.b, global2.a.x).a.x, global2.a.x), true), all(vec4<bool>(true, global2.b.x, global2.b.x, global2.b.x)) | global2.e.c), select(!vec4<bool>(!global2.b.x, true, func_4(Struct_1(vec4<f32>(global2.e.a.a.x, 423f, global2.d, 201f), -224f, 322f), Struct_3(vec3<bool>(true, true, true), vec4<bool>(false, true, global2.e.c, true), 1055f, global2.d, global2.e), vec4<bool>(true, global2.b.x, global2.b.x, false), true).a.x, true), select(global2.b, select(vec4<bool>(false, global2.e.c, global2.b.x, global2.a.x), vec4<bool>(true, false, global2.b.x, global2.b.x), !global2.b), func_4(global2.e.a, func_4(global2.e.a, Struct_3(vec3<bool>(global2.b.x, false, global2.a.x), global2.b, 2175f, global2.d, Struct_2(global2.e.b, Struct_1(vec4<f32>(-979f, 449f, -1233f, 1214f), global2.e.b.a.x, -362f), true)), vec4<bool>(false, global2.a.x, true, false), true), func_4(global2.e.a, Struct_3(vec3<bool>(true, false, global2.b.x), vec4<bool>(global2.e.c, global2.a.x, global2.e.c, global2.b.x), global2.c, global2.e.b.a.x, Struct_2(global2.e.b, Struct_1(global2.e.a.a, global2.c, global2.e.b.c), true)), global2.b, global2.b.x).b, !global2.a.x).b), false), true);
    var var_1 = vec2<i32>(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, _wgslsmith_sub_i32(~(-2147483647i), _wgslsmith_clamp_i32(7609i, 35043i, -2147483647i)), ~(-2147483647i), -41582i), vec4<i32>(_wgslsmith_div_i32(-7553i, 28814i), i32(-1i) * -1i, -31392i, max(2147483647i, -3261i)) >> (vec4<u32>(36881u, u_input.a | global1.x, 30918u, 4284u ^ var_0.x) % vec4<u32>(32u))));
    var var_2 = func_4(global2.e.b, func_4(func_4(global2.e.a, Struct_3(func_4(Struct_1(vec4<f32>(-141f, global2.c, global2.e.b.c, 1121f), global2.c, 940f), Struct_3(vec3<bool>(true, true, global2.b.x), vec4<bool>(false, true, global2.e.c, global2.e.c), 864f, global2.d, global2.e), vec4<bool>(global2.a.x, false, global2.a.x, false), global2.b.x).b.zyz, global2.b, -1000f, _wgslsmith_f_op_f32(-1221f + global2.d), Struct_2(global2.e.b, global2.e.b, global2.b.x)), global2.b, true).e.b, Struct_3(vec3<bool>(true, any(vec4<bool>(global2.b.x, false, true, true)), all(global2.b)), !vec4<bool>(global2.a.x, false, global2.e.c, global2.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-175f + 1579f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), global2.e), vec4<bool>(all(vec3<bool>(true, true, true)), true, global2.b.x, func_4(func_4(Struct_1(global2.e.a.a, global2.e.a.a.x, global2.c), Struct_3(global2.a, global2.b, 1000f, global2.e.b.a.x, global2.e), vec4<bool>(global2.e.c, global2.a.x, false, false), false).e.b, Struct_3(global2.a, global2.b, global2.e.b.c, global2.c, global2.e), func_5(Struct_3(vec3<bool>(false, false, global2.a.x), global2.b, global2.e.a.b, -458f, Struct_2(global2.e.a, global2.e.b, global2.e.c)), 2147483647i, Struct_5(vec3<f32>(720f, global2.c, global2.e.a.c), vec4<bool>(global2.e.c, global2.b.x, global2.a.x, global2.a.x), Struct_4(var_1.x, false, Struct_3(global2.b.xxx, global2.b, 1419f, -118f, Struct_2(global2.e.b, global2.e.a, global2.b.x)), 250f, global2.e), false, Struct_3(vec3<bool>(true, global2.b.x, false), global2.b, global2.d, 583f, global2.e))).c.b, any(global2.b)).b.x), all(func_5(Struct_3(vec3<bool>(global2.b.x, false, global2.e.c), vec4<bool>(global2.a.x, global2.e.c, global2.a.x, false), global2.d, global2.d, global2.e), var_1.x, Struct_5(global2.e.a.a.zyy, vec4<bool>(false, global2.b.x, global2.a.x, global2.e.c), Struct_4(56961i, true, Struct_3(global2.a, vec4<bool>(true, global2.e.c, global2.e.c, false), global2.e.a.b, global2.e.a.b, Struct_2(Struct_1(vec4<f32>(global2.c, -852f, global2.c, -250f), 1137f, global2.e.b.b), Struct_1(global2.e.a.a, -855f, 1239f), global2.a.x)), -1232f, Struct_2(global2.e.a, global2.e.a, global2.a.x)), global2.e.c, Struct_3(global2.a, vec4<bool>(global2.b.x, global2.e.c, true, global2.e.c), global2.c, 344f, Struct_2(Struct_1(global2.e.a.a, global2.e.b.c, 1151f), Struct_1(global2.e.b.a, global2.d, -171f), true)))).c.a.xx) && false), global2.b, select((all(global2.a) == global2.a.x) && (_wgslsmith_add_u32(var_0.x, 15474u) < (var_0.x >> (4294967295u % 32u))), any(global2.a.yy), global1.x >= (1u >> (firstLeadingBit(31337u) % 32u)))).e.a;
    let var_3 = vec4<bool>(false, global2.a.x, false, func_4(global2.e.a, Struct_3(vec3<bool>(all(global2.b), false, global2.e.c), global2.b, _wgslsmith_f_op_f32(f32(-1f) * -887f), global2.d, func_4(Struct_1(global2.e.a.a, global2.c, -1000f), func_5(Struct_3(global2.a, global2.b, global2.e.a.b, var_2.a.x, global2.e), -2147483647i, Struct_5(vec3<f32>(1000f, var_2.a.x, -801f), global2.b, Struct_4(2147483647i, global2.b.x, Struct_3(vec3<bool>(global2.b.x, false, false), vec4<bool>(false, false, false, global2.b.x), 1791f, var_2.b, Struct_2(global2.e.b, Struct_1(vec4<f32>(var_2.a.x, -1000f, var_2.b, -331f), -366f, global2.e.b.a.x), global2.e.c)), var_2.b, global2.e), global2.b.x, Struct_3(global2.a, global2.b, var_2.b, -202f, Struct_2(Struct_1(vec4<f32>(1100f, 233f, var_2.a.x, 834f), global2.e.a.c, 899f), Struct_1(vec4<f32>(var_2.c, 1828f, -1319f, -1768f), var_2.b, var_2.a.x), false)))).c, func_5(Struct_3(global2.b.xxy, vec4<bool>(false, true, true, global2.e.c), var_2.c, 360f, global2.e), 0i, Struct_5(global2.e.b.a.wxz, global2.b, Struct_4(-73391i, true, Struct_3(global2.a, global2.b, 585f, global2.c, Struct_2(global2.e.b, global2.e.a, false)), var_2.a.x, global2.e), global2.e.c, Struct_3(global2.b.wzw, global2.b, 1930f, -1121f, Struct_2(global2.e.a, global2.e.a, global2.e.c)))).c.b, select(global2.a.x, true, global2.e.c)).e), vec4<bool>(any(!vec2<bool>(false, global2.e.c)), ~var_0.x <= var_0.x, any(global2.a.yx), global2.e.c), true).b.x);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec3<u32>(~(~global1.x), min(30175u, var_0.x), var_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.a + _wgslsmith_f_op_vec4_f32(select(var_2.a, vec4<f32>(var_2.b, -1160f, 1669f, 864f), select(var_3, vec4<bool>(var_3.x, true, global2.e.c, global2.b.x), var_3.x))))));
}

