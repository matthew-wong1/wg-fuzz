struct Struct_1 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 874f;

var<private> global1: array<vec3<bool>, 21> = array<vec3<bool>, 21>(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true));

var<private> global2: Struct_1;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_2) -> f32 {
    global0 = global2.a;
    global1 = array<vec3<bool>, 21>();
    let var_0 = -9757i;
    global2 = Struct_1(global2.a, vec4<u32>(u_input.a.x, _wgslsmith_mod_u32(countOneBits(1u), select(~4294967295u, countOneBits(0u), false)), global2.b.x, countOneBits(~u_input.a.x)));
    let var_1 = select(vec4<i32>(var_0, var_0, var_0, -_wgslsmith_add_i32(1i, 27779i) << (1u % 32u)), ~vec4<i32>(min(i32(-1i) * -1i, _wgslsmith_div_i32(u_input.b.x, 46237i)), _wgslsmith_div_i32(-2147483647i, _wgslsmith_mod_i32(20075i, u_input.b.x)), var_0, u_input.b.x), select(!vec4<bool>(1000f != arg_2.c, all(vec4<bool>(arg_2.d.x, arg_2.d.x, arg_2.d.x, false)), any(vec3<bool>(false, false, true)), arg_2.d.x & false), vec4<bool>(!any(arg_2.d), arg_2.d.x, true | all(global1[_wgslsmith_index_u32(1u, 21u)]), (1u & arg_2.a.b.x) != (arg_2.a.b.x & 4294967295u)), 0u > _wgslsmith_mod_u32(_wgslsmith_mod_u32(4294967295u, global2.b.x), _wgslsmith_div_u32(arg_2.a.b.x, u_input.a.x))));
    return 1472f;
}

fn func_2() -> Struct_3 {
    return Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(func_3(_wgslsmith_div_f32(global2.a, global2.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a, 398f, 312f)), Struct_2(Struct_1(441f, global2.b), Struct_1(global2.a, global2.b), global2.a, vec2<bool>(true, false)))), vec4<u32>(4294967295u, ~1u, ~1u, reverseBits(global2.b.x))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -572f) + -1510f), vec4<u32>(u_input.a.x, ~17354u, _wgslsmith_dot_vec2_u32(u_input.a.zx, global2.b.zy), _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, 0u, global2.b.x)))), _wgslsmith_f_op_f32(max(global2.a, global2.a)), vec2<bool>(true, true != all(vec2<bool>(false, false)))), Struct_1(-271f, vec4<u32>(abs(_wgslsmith_clamp_u32(u_input.a.x, global2.b.x, 0u)), u_input.a.x, _wgslsmith_div_u32(firstTrailingBit(4294967295u), reverseBits(u_input.a.x)), 39620u)), -262f, Struct_2(Struct_1(_wgslsmith_f_op_f32(-global2.a), ~(~vec4<u32>(1u, global2.b.x, global2.b.x, 39210u))), Struct_1(_wgslsmith_f_op_f32(global2.a * _wgslsmith_div_f32(1886f, global2.a)), vec4<u32>(u_input.a.x, ~global2.b.x, 4294967295u << (u_input.a.x % 32u), 24362u)), _wgslsmith_f_op_f32(sign(1f)), vec2<bool>(true, any(vec3<bool>(true, true, false)) & select(true, true, true))));
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_3, arg_3: vec4<u32>) -> Struct_2 {
    global1 = array<vec3<bool>, 21>();
    var var_0 = !arg_2.a.d;
    let var_1 = !any(vec4<bool>(true, var_0.x, true, true));
    var_0 = arg_2.a.d;
    let var_2 = _wgslsmith_mult_vec2_i32(u_input.b.xy, min(countOneBits(vec2<i32>(u_input.b.x, 1i)) & -abs(u_input.b.xy), _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.b.yy, firstLeadingBit(u_input.b.zy)), vec2<i32>(arg_1, u_input.b.x))));
    return func_2().a;
}

fn func_1() -> vec2<u32> {
    let var_0 = !((~(u_input.b.x >> (22827u % 32u)) & abs(i32(-1i) * -5614i)) >= ~(select(-1i, u_input.b.x, false) ^ u_input.b.x));
    var var_1 = u_input.b.x;
    let var_2 = vec4<u32>(~u_input.a.x, u_input.a.x, _wgslsmith_div_u32(global2.b.x, reverseBits(4724u)), 84694u);
    let var_3 = func_4(u_input.a.x, ~(1i >> (~_wgslsmith_mod_u32(u_input.a.x, var_2.x) % 32u)), func_2(), vec4<u32>(_wgslsmith_sub_u32(4294967295u, 4294967295u), max(u_input.a.x, select(max(1u, global2.b.x), 25695u, var_0)), 2030u, 0u));
    var var_4 = ~select(var_2.yzz, ~firstLeadingBit(var_2.ywy), vec3<bool>(!(var_3.d.x & true), !var_3.d.x, true));
    return vec2<u32>(15363u, ~select(global2.b.x, (u_input.a.x << (42236u % 32u)) & ~8333u, false));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_2) -> Struct_3 {
    var var_0 = -abs(u_input.b.x);
    let var_1 = Struct_3(func_2().d, func_4(~(~(~global2.b.x)), u_input.b.x, Struct_3(func_4(u_input.a.x, reverseBits(u_input.b.x), Struct_3(Struct_2(arg_1.a, arg_1.b, global2.a, vec2<bool>(arg_1.d.x, arg_1.d.x)), Struct_1(global2.a, global2.b), 692f, arg_1), vec4<u32>(arg_0.x, 40177u, arg_1.b.b.x, 0u)), arg_1.b, arg_1.c, arg_1), global2.b).b, _wgslsmith_f_op_f32(arg_1.c - -1185f), func_2().d);
    let var_2 = u_input.b;
    global0 = _wgslsmith_div_f32(func_2().b.a, func_4(_wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(var_1.b.b.x, var_1.d.b.b.x, u_input.a.x, 5625u), global2.b), abs(global2.b)), var_2.x, Struct_3(Struct_2(arg_1.b, Struct_1(global2.a, vec4<u32>(arg_0.x, 9457u, arg_1.b.b.x, 69065u)), _wgslsmith_f_op_f32(min(595f, -376f)), vec2<bool>(false, arg_1.d.x)), var_1.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.a), 853f), func_4(~arg_0.x, select(0i, -1i, false), var_1, vec4<u32>(global2.b.x, 1u, global2.b.x, 4294967295u))), _wgslsmith_add_vec4_u32(~vec4<u32>(23582u, global2.b.x, 28271u, 84476u), vec4<u32>(arg_1.b.b.x, 1585u, arg_1.a.b.x, func_2().b.b.x))).b.a);
    var var_3 = ~var_1.b.b.wx;
    return var_1;
}

fn func_6(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: i32) -> Struct_2 {
    var var_0 = global2.b.x;
    var var_1 = u_input.a;
    var_0 = var_1.x;
    var var_2 = Struct_3(arg_0.a, func_5(vec2<u32>(func_5(~vec2<u32>(global2.b.x, 89956u), arg_0.a).b.b.x, abs(0u)), arg_0.d).b, arg_2.c, func_5(~(~(global2.b.xx >> (global2.b.zx % vec2<u32>(32u)))), func_4(max(arg_2.b.b.x, ~48662u), 1i, arg_2, vec4<u32>(_wgslsmith_sub_u32(global2.b.x, 1u), arg_2.a.a.b.x, firstLeadingBit(1u), 4294967295u))).a);
    var_1 = ~(~u_input.a) >> (arg_0.a.a.b.xwy % vec3<u32>(32u));
    return Struct_2(arg_2.b, arg_0.b, _wgslsmith_f_op_f32(105f - func_4(~(~var_1.x), u_input.b.x >> (86469u % 32u), func_2(), ~vec4<u32>(u_input.a.x, 4294967295u, 1u, 51060u)).c), arg_0.d.d);
}

fn func_7(arg_0: Struct_2, arg_1: f32, arg_2: f32) -> Struct_2 {
    global1 = array<vec3<bool>, 21>();
    let var_0 = func_5(arg_0.a.b.zz & vec2<u32>(~firstLeadingBit(global2.b.x), 1u), func_4(~4294967295u, -59273i >> (abs(_wgslsmith_dot_vec4_u32(global2.b, vec4<u32>(33146u, 4294967295u, 0u, 0u))) % 32u), func_5(func_4(u_input.a.x, u_input.b.x, Struct_3(arg_0, Struct_1(arg_0.c, global2.b), arg_1, arg_0), vec4<u32>(21348u, global2.b.x, 56382u, 16388u)).b.b.zx, arg_0), vec4<u32>(1u, arg_0.b.b.x & func_6(Struct_3(arg_0, Struct_1(-1081f, vec4<u32>(u_input.a.x, 15906u, 4294967295u, global2.b.x)), 544f, arg_0), vec4<bool>(true, arg_0.d.x, arg_0.d.x, true), Struct_3(arg_0, Struct_1(2063f, global2.b), arg_1, Struct_2(Struct_1(912f, global2.b), Struct_1(555f, arg_0.a.b), arg_1, arg_0.d)), 1i).b.b.x, arg_0.a.b.x, ~14143u)));
    var var_1 = Struct_3(func_5(~_wgslsmith_mult_vec2_u32(var_0.a.a.b.xx >> (vec2<u32>(arg_0.b.b.x, var_0.a.b.b.x) % vec2<u32>(32u)), global2.b.xw), func_2().a).d, arg_0.a, global2.a, func_6(func_5(global2.b.wz, var_0.d), !select(select(vec4<bool>(arg_0.d.x, true, arg_0.d.x, true), vec4<bool>(false, var_0.a.d.x, arg_0.d.x, false), arg_0.d.x), vec4<bool>(true, true, true, true), vec4<bool>(arg_0.d.x, false, arg_0.d.x, var_0.a.d.x)), Struct_3(var_0.a, Struct_1(_wgslsmith_f_op_f32(floor(-1000f)), ~vec4<u32>(44927u, 3372u, arg_0.b.b.x, global2.b.x)), arg_1, func_2().a), ~(-26714i)));
    global1 = array<vec3<bool>, 21>();
    global2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-568f, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, 863f, 724f) - vec3<f32>(global2.a, -711f, 1478f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(342f, -139f, var_1.a.a.a) + vec3<f32>(arg_2, 587f, 1184f))), func_6(Struct_3(Struct_2(var_1.a.b, Struct_1(var_0.a.a.a, vec4<u32>(772u, 4294967295u, arg_0.a.b.x, global2.b.x)), -998f, vec2<bool>(true, false)), var_0.a.a, 195f, Struct_2(arg_0.a, Struct_1(245f, vec4<u32>(arg_0.a.b.x, var_1.a.b.b.x, 1u, 4294967295u)), 200f, arg_0.d)), select(vec4<bool>(var_1.d.d.x, var_1.a.d.x, var_0.d.d.x, var_0.a.d.x), vec4<bool>(var_0.d.d.x, false, var_1.d.d.x, var_1.a.d.x), vec4<bool>(var_1.a.d.x, arg_0.d.x, arg_0.d.x, arg_0.d.x)), func_5(arg_0.b.b.xz, Struct_2(var_0.d.a, var_1.d.b, -715f, vec2<bool>(false, arg_0.d.x))), u_input.b.x)))), max(~_wgslsmith_sub_vec4_u32(vec4<u32>(global2.b.x, var_1.d.a.b.x, 0u, 23513u), firstLeadingBit(var_1.a.a.b)), abs(var_1.a.a.b)));
    return Struct_2(func_4(~(~_wgslsmith_mod_u32(59482u, var_1.b.b.x)), ~2147483647i, Struct_3(arg_0, func_4(var_1.d.b.b.x << (0u % 32u), -24913i, Struct_3(Struct_2(Struct_1(-1001f, var_1.b.b), Struct_1(var_1.c, vec4<u32>(u_input.a.x, 47967u, var_1.a.a.b.x, 0u)), 851f, var_1.d.d), Struct_1(arg_1, vec4<u32>(0u, 27781u, var_0.b.b.x, u_input.a.x)), 1568f, Struct_2(arg_0.a, Struct_1(211f, vec4<u32>(var_1.b.b.x, 26897u, 1u, u_input.a.x)), -284f, vec2<bool>(var_0.a.d.x, false))), var_0.d.b.b | vec4<u32>(8953u, 0u, 23576u, arg_0.b.b.x)).b, _wgslsmith_div_f32(-1204f, arg_0.c), Struct_2(var_1.d.b, func_4(1u, u_input.b.x, var_0, vec4<u32>(840u, var_1.d.a.b.x, 1u, var_0.a.a.b.x)).a, _wgslsmith_f_op_f32(-arg_2), var_0.a.d)), _wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, var_1.b.b.x, var_1.d.b.b.x, 0u), func_5(global2.b.wx, var_0.a).b.b) ^ _wgslsmith_div_vec4_u32(vec4<u32>(global2.b.x, var_0.d.b.b.x, var_0.b.b.x, 0u), _wgslsmith_sub_vec4_u32(arg_0.b.b, global2.b))).a, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-101f + _wgslsmith_f_op_f32(-var_1.d.a.a)) - var_0.c), vec4<u32>(u_input.a.x, min(global2.b.x, arg_0.b.b.x), _wgslsmith_mult_u32(0u, _wgslsmith_mult_u32(1u, 4294967295u)), var_1.b.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -722f)))), -1303f), !arg_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (1u | ~global2.b.x) | u_input.a.x;
    var var_1 = any(!select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, true), false)), vec2<bool>(true, true), vec2<bool>(true, select(true, true, false))));
    global1 = array<vec3<bool>, 21>();
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-216f - _wgslsmith_f_op_f32(global2.a * _wgslsmith_f_op_f32(310f + 1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global2.a, global2.a), global2.a, true)) + global2.a)))));
    let var_3 = vec2<bool>(true, true);
    let var_4 = func_7(func_6(func_5(func_1(), func_2().d), vec4<bool>(true, true, true, true), func_2(), 874i), global2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(func_6(Struct_3(Struct_2(Struct_1(-602f, global2.b), Struct_1(-892f, vec4<u32>(42049u, var_0, var_0, u_input.a.x)), 1000f, vec2<bool>(true, var_3.x)), Struct_1(global2.a, global2.b), 458f, Struct_2(Struct_1(949f, vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, 1u)), Struct_1(global2.a, vec4<u32>(0u, var_0, 26302u, u_input.a.x)), global2.a, var_3)), vec4<bool>(true, true, true, true), func_2(), countOneBits(u_input.b.x)).a.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1434f)))))));
    var var_5 = firstLeadingBit(vec4<i32>(-41613i, -1i, u_input.b.x, min(u_input.b.x, 2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(func_4(~(~u_input.a.x), countOneBits(var_5.x), func_5(_wgslsmith_add_vec2_u32(u_input.a.zx, vec2<u32>(531u, 57003u)), var_4), ~vec4<u32>(var_0, var_4.b.b.x, var_0, 14043u)).a.b, abs(select(global2.b ^ var_4.a.b, global2.b & vec4<u32>(1u, 4294967295u, 83671u, 1u), func_6(Struct_3(Struct_2(var_4.b, Struct_1(-1712f, vec4<u32>(1u, 0u, u_input.a.x, 0u)), var_4.b.a, var_4.d), Struct_1(-156f, global2.b), 880f, var_4), vec4<bool>(var_3.x, false, true, var_3.x), Struct_3(Struct_2(Struct_1(-475f, vec4<u32>(var_4.a.b.x, var_4.b.b.x, 372u, global2.b.x)), var_4.b, 382f, var_3), var_4.b, -643f, var_4), u_input.b.x).d.x))), var_0, global2.b.x, _wgslsmith_f_op_f32(-311f + -292f));
}

