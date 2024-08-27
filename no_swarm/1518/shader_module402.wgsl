struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: vec3<i32>,
    d: f32,
    e: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 6> = array<vec4<bool>, 6>(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false));

var<private> global1: Struct_2 = Struct_2(vec2<f32>(744f, -284f), true, vec3<i32>(48750i, 11122i, 0i), -606f, vec4<u32>(34901u, 43687u, 4294967295u, 1u));

var<private> global2: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(vec2<f32>(-383f, 1000f), true, vec3<i32>(2147483647i, -33129i, 18740i), -1531f, vec4<u32>(0u, 1u, 45386u, 0u)), Struct_2(vec2<f32>(-934f, -829f), true, vec3<i32>(0i, 2147483647i, -28963i), 107f, vec4<u32>(45749u, 29421u, 0u, 18565u)), Struct_2(vec2<f32>(-584f, -1271f), true, vec3<i32>(30812i, 48866i, -2951i), -1257f, vec4<u32>(0u, 16362u, 0u, 33323u)), Struct_2(vec2<f32>(518f, -949f), false, vec3<i32>(-40360i, -93450i, 3675i), -1000f, vec4<u32>(22404u, 1u, 0u, 59362u)), Struct_2(vec2<f32>(-107f, -824f), false, vec3<i32>(0i, -1i, 0i), 122f, vec4<u32>(1u, 21081u, 100020u, 5u)), Struct_2(vec2<f32>(1709f, -1229f), false, vec3<i32>(-1i, 15249i, i32(-2147483648)), -496f, vec4<u32>(4294967295u, 1u, 13759u, 67323u)), Struct_2(vec2<f32>(731f, 482f), true, vec3<i32>(17095i, -38656i, 0i), -1000f, vec4<u32>(1u, 1u, 98166u, 10551u)), Struct_2(vec2<f32>(622f, -565f), false, vec3<i32>(i32(-2147483648), 6565i, 0i), 859f, vec4<u32>(47318u, 21362u, 1u, 4294967295u)), Struct_2(vec2<f32>(-886f, -1000f), false, vec3<i32>(43450i, i32(-2147483648), -1i), -737f, vec4<u32>(1u, 19753u, 30954u, 26283u)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1) -> bool {
    global2 = array<Struct_2, 9>();
    global2 = array<Struct_2, 9>();
    var var_0 = ~global1.e;
    global1 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.x, 643f)) - vec2<f32>(-780f, -431f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a.zw) - vec2<f32>(global1.a.x, arg_0.a.x))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0.a.x, -1334f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-501f, -204f)))))), all(select(select(select(vec2<bool>(true, false), vec2<bool>(global1.b, false), global1.b), select(vec2<bool>(global1.b, true), vec2<bool>(global1.b, global1.b), false), true), vec2<bool>(any(vec2<bool>(global1.b, global1.b)), all(vec2<bool>(global1.b, global1.b))), !select(vec2<bool>(global1.b, global1.b), vec2<bool>(true, global1.b), true))), max(~(~global1.c), max(abs(firstTrailingBit(global1.c)), ~vec3<i32>(-2147483647i, 2147483647i, -2147483647i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(579f, 657f, false)))), ~(~(~(~global1.e))));
    var var_1 = select(!(344f < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(3164f * 604f)))), true, select((abs(u_input.a) << (~42367u % 32u)) < 4294967295u, any(!vec3<bool>(true, global1.b, true)) != (any(vec4<bool>(global1.b, false, global1.b, false)) & !global1.b), global1.b));
    return true;
}

fn func_2(arg_0: vec4<f32>, arg_1: i32) -> Struct_2 {
    var var_0 = ~min(u_input.a, 416u);
    var var_1 = ~max(_wgslsmith_div_u32(u_input.a, reverseBits(u_input.a)) << (1u % 32u), ~1881u);
    let var_2 = ~abs(~abs(_wgslsmith_sub_vec3_u32(global1.e.yzx, vec3<u32>(global1.e.x, 0u, u_input.a))));
    var_0 = u_input.a;
    let var_3 = !vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.d * arg_0.x) * 1f) > _wgslsmith_f_op_f32(-global1.a.x), any(!vec2<bool>(true, global1.b)), func_3(Struct_1(_wgslsmith_f_op_vec4_f32(arg_0 * arg_0), global1.e.x)), !(global1.b && true) && (true | !global1.b));
    return Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1494f, global1.d)) * _wgslsmith_f_op_vec2_f32(min(global1.a, _wgslsmith_div_vec2_f32(vec2<f32>(315f, -510f), vec2<f32>(-1000f, 1000f))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.a)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(909f, global1.a.x), _wgslsmith_f_op_vec2_f32(global1.a - global1.a), any(vec3<bool>(false, true, false)))), select(!var_3.zw, vec2<bool>(var_3.x, global1.b), !var_3.zz)))), global1.b, vec3<i32>(-2147483647i, firstTrailingBit(-6752i), _wgslsmith_dot_vec3_i32(global1.c, countOneBits(vec3<i32>(0i, 2147483647i, global1.c.x)))), arg_0.x, vec4<u32>(_wgslsmith_mult_u32(~var_2.x, ~global1.e.x), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(25901u, var_2.x), ~vec2<u32>(4294967295u, u_input.a)), vec2<u32>(~global1.e.x, global1.e.x)), ~_wgslsmith_mod_u32(var_2.x, _wgslsmith_sub_u32(18436u, 0u)), ~_wgslsmith_add_u32(var_2.x | var_2.x, var_2.x)));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2) -> f32 {
    global2 = array<Struct_2, 9>();
    var var_0 = Struct_3(_wgslsmith_clamp_i32(func_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(897f, global1.d, -882f, -676f))))), 1i).c.x, 27567i, _wgslsmith_div_i32(firstTrailingBit(arg_0.c.x) >> (_wgslsmith_mod_u32(30931u, 1u) % 32u), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.c.x, -36588i, arg_0.c.x), vec3<i32>(-1i, -25229i, arg_0.c.x))))), !(!select(!vec3<bool>(true, global1.b, false), select(vec3<bool>(false, arg_2.b, false), vec3<bool>(false, arg_0.b, arg_0.b), vec3<bool>(false, false, arg_0.b)), !vec3<bool>(global1.b, arg_2.b, true))));
    var_0 = Struct_3(_wgslsmith_dot_vec2_i32(-countOneBits(vec2<i32>(global1.c.x, global1.c.x)), arg_0.c.yz), select(select(select(!vec3<bool>(true, var_0.b.x, false), !var_0.b, !var_0.b), select(vec3<bool>(var_0.b.x, true, arg_0.b), select(var_0.b, vec3<bool>(true, true, arg_0.b), arg_2.b), vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x)), !var_0.b), select(!vec3<bool>(global1.b, false, true), vec3<bool>(true, true, all(var_0.b.xz)), var_0.b.x & var_0.b.x), var_0.b));
    let var_1 = 7150u;
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-693f, global1.d, 1307f, global1.d), vec4<f32>(global1.d, -827f, arg_1, global1.a.x), arg_2.b)), _wgslsmith_div_vec4_f32(vec4<f32>(1205f, arg_2.a.x, arg_2.d, arg_0.a.x), vec4<f32>(-1636f, arg_1, 539f, 510f))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(493f, arg_2.a.x, global1.d, global1.a.x) * vec4<f32>(-383f, -1079f, -929f, -518f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-819f, global1.a.x, 722f, -237f))) * vec4<f32>(arg_0.d, global1.d, arg_0.a.x, -547f)))), abs(global1.e.x));
    return arg_1;
}

fn func_5(arg_0: f32, arg_1: Struct_3) -> Struct_1 {
    let var_0 = countOneBits(arg_1.a);
    var var_1 = vec2<bool>(true, false);
    var var_2 = global1.c.x | global1.c.x;
    global2 = array<Struct_2, 9>();
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d, _wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(floor(global1.d)), _wgslsmith_f_op_f32(-272f * 115f)) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -1000f, global1.d, global1.a.x)))))), _wgslsmith_dot_vec4_u32(global1.e, global1.e));
}

fn func_1() -> Struct_3 {
    let var_0 = func_5(_wgslsmith_f_op_f32(func_4(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1486f, -800f, global1.d, 588f)) + vec4<f32>(-766f, global1.a.x, 1065f, global1.a.x)), ~(~(-2147483647i))), -794f, func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(3039f, 698f, -189f, global1.d)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, -488f, 1514f, -1000f))), global1.c.x))), Struct_3(firstTrailingBit((-32422i | global1.c.x) << (~global1.e.x % 32u)), !vec3<bool>(false, global1.b && true, all(vec3<bool>(global1.b, global1.b, false)))));
    var var_1 = firstTrailingBit(global1.c.x);
    var var_2 = Struct_1(var_0.a, countOneBits(93503u));
    let var_3 = _wgslsmith_f_op_f32(exp2(var_2.a.x));
    global1 = global2[_wgslsmith_index_u32(~(~var_0.b), 9u)];
    return Struct_3(_wgslsmith_div_i32(global1.c.x, abs(min(global1.c.x, max(global1.c.x, 17382i)))), select(!select(vec3<bool>(global1.b, global1.b, false), select(vec3<bool>(true, false, true), vec3<bool>(true, global1.b, true), global1.b), vec3<bool>(true, true, true)), vec3<bool>(true, true, all(select(vec3<bool>(false, global1.b, global1.b), vec3<bool>(false, global1.b, global1.b), vec3<bool>(global1.b, global1.b, true)))), min(func_5(global1.a.x, Struct_3(global1.c.x, vec3<bool>(global1.b, global1.b, global1.b))).b, ~u_input.a) > ~21459u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 6>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-385f, global1.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -484f), 1003f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.d + 1189f), -332f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-124f, 839f, 619f, 141f))))), _wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1.e.x, global1.e.x, 84745u), vec4<u32>(global1.e.x, 1u, 1u, 4294967295u)), min(global1.e.x, ~u_input.a)), u_input.a >> (15486u % 32u)));
    var var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.a - var_0.a.xw), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, var_0.a.x))) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.a.x, global1.a.x), vec2<f32>(1089f, var_0.a.x))))));
    var var_3 = global1.b;
    var var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(1i, -190f, global1.c.x, vec4<i32>(var_4.a, ~global1.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global1.c.x ^ global1.c.x, abs(var_4.a), _wgslsmith_mod_i32(-2724i, global1.c.x)), ~(-vec3<i32>(-39052i, global1.c.x, global1.c.x))), 15613i));
}

