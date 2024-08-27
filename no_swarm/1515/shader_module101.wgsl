struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>) -> vec3<bool> {
    let var_0 = Struct_1(vec3<f32>(1304f, _wgslsmith_f_op_f32(step(arg_0.b, arg_0.a.x)), arg_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.b * arg_0.b), _wgslsmith_f_op_f32(floor(266f))))))), select(select(vec4<bool>(true, arg_0.c.x, global0.x, arg_0.c.x && arg_0.c.x), select(arg_0.c, vec4<bool>(true, arg_0.c.x, arg_0.c.x, global0.x), vec4<bool>(true, arg_0.c.x, false, true)), arg_0.c), select(!arg_0.c, !(!vec4<bool>(true, false, global0.x, true)), !(-1i > u_input.a.x)), vec4<bool>(max(u_input.a.x, u_input.a.x) > abs(arg_1.x), all(!global0.xx), global0.x, arg_0.c.x)));
    global0 = select(var_0.c.wxw, vec3<bool>(all(!select(arg_0.c.wxx, var_0.c.xwz, vec3<bool>(false, true, global0.x))), true && !var_0.c.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(arg_0.a.x, 986f)), _wgslsmith_f_op_f32(arg_0.b * -310f), true)) < 323f), all(select(!vec4<bool>(global0.x, true, false, true), vec4<bool>(true, !var_0.c.x, all(arg_0.c.xxw), all(vec3<bool>(global0.x, arg_0.c.x, true))), arg_0.c)));
    global0 = var_0.c.zzx;
    let var_1 = select(arg_1.x, 1i, all(!(!select(global0.zz, vec2<bool>(var_0.c.x, global0.x), vec2<bool>(false, true)))));
    let var_2 = _wgslsmith_mod_vec3_u32(~vec3<u32>(1u, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 24576u, 0u, 4294967295u), vec4<u32>(0u, 1u, 49214u, 1u)), 1u), ~(~0u)), vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(23061u, 1u), vec2<u32>(61562u, 14319u)), ~44930u), 19733u), 71471u, 72423u));
    return arg_0.c.wzy;
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_1) -> vec3<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.b, _wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.x * -640f) + arg_2.a.x))), arg_3.a.x, arg_1);
    global0 = !vec3<bool>(arg_3.c.x, global0.x, true);
    global0 = vec3<bool>(true, arg_0, all(var_0.c.zww));
    var var_1 = -610f;
    global0 = arg_2.c.wzw;
    return vec3<u32>(max(~1u, 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(4294967295u, 31984u), 1u, 8079u, ~7677u), firstTrailingBit(~vec4<u32>(4294967295u, 4294967295u, 33074u, 10071u))), ~35106u) & vec3<u32>(1u, 1u, 1u);
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: f32) -> f32 {
    let var_0 = func_4(all(func_3(Struct_1(vec3<f32>(arg_2, arg_2, arg_2), 1000f, vec4<bool>(true, false, false, true)), vec4<i32>(0i, 2147483647i, u_input.b.x, u_input.a.x))), select(select(!vec4<bool>(true, global0.x, false, global0.x), vec4<bool>(all(vec2<bool>(global0.x, global0.x)), false, global0.x && false, true), !global0.x && !global0.x), select(!vec4<bool>(true, global0.x, global0.x, global0.x), select(vec4<bool>(global0.x, false, false, global0.x), vec4<bool>(true, global0.x, false, false), !vec4<bool>(global0.x, true, false, false)), global0.x), global0.x), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_2, arg_2, arg_2), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, -1000f, 135f))))), _wgslsmith_f_op_f32(abs(arg_2)), !vec4<bool>(false, global0.x, any(vec3<bool>(true, global0.x, true)), true)), Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(step(-1863f, arg_2)), _wgslsmith_div_f32(-1603f, 358f), _wgslsmith_f_op_f32(step(1140f, arg_2))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1465f, arg_2, -1000f), vec3<f32>(arg_2, 2198f, 734f))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_2, arg_2, 295f), vec3<f32>(arg_2, arg_2, 1000f)))), -1i <= (u_input.b.x ^ 9775i))), _wgslsmith_f_op_f32(f32(-1f) * -558f), select(vec4<bool>(false & global0.x, !global0.x, any(vec3<bool>(global0.x, global0.x, true)), false), vec4<bool>(true, true, all(vec4<bool>(true, false, true, global0.x)), any(vec3<bool>(global0.x, global0.x, true))), select(vec4<bool>(global0.x, false, true, global0.x), vec4<bool>(false, false, global0.x, true), false))));
    global0 = vec3<bool>(global0.x, true, arg_2 != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-811f * -1129f) - -2169f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1450f, 839f, true)))));
    var var_1 = abs(select(var_0, var_0, vec3<bool>(false, false, global0.x)));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-649f, arg_2), -493f, _wgslsmith_f_op_f32(max(-1128f, arg_2))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, -719f, arg_2) - vec3<f32>(arg_2, arg_2, -254f)))) - vec3<f32>(arg_2, arg_2, -580f));
    let var_3 = -(u_input.a.x << (var_0.x % 32u));
    return -929f;
}

fn func_1() -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(max(~min(11086u, 69526u), _wgslsmith_sub_u32(_wgslsmith_div_u32(4294967295u, 59456u), 4300u)), 4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-428f)) * 619f))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, -1000f, -1243f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-234f, 592f, 413f) + vec3<f32>(1000f, 2825f, -746f))))), _wgslsmith_f_op_f32(f32(-1f) * -257f), vec4<bool>(any(global0.xy), true, select(global0.x | (u_input.a.x == 21624i), func_3(Struct_1(vec3<f32>(-335f, 1632f, 377f), -982f, vec4<bool>(global0.x, true, global0.x, global0.x)), firstLeadingBit(vec4<i32>(u_input.a.x, u_input.b.x, 37919i, u_input.a.x))).x, global0.x), ~1u != _wgslsmith_div_u32(_wgslsmith_clamp_u32(1u, 17319u, 4294967295u), _wgslsmith_add_u32(4294967295u, 0u))));
    let var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-127f * var_1.a.x), _wgslsmith_f_op_f32(var_1.b - _wgslsmith_f_op_f32(abs(var_1.b))), var_1.b), var_1.b, select(var_1.c, var_1.c, true));
    let var_3 = max(~vec2<i32>(-u_input.b.x, -8481i), u_input.b.yx);
    var_0 = _wgslsmith_f_op_f32(335f * -1061f);
    return select(vec3<bool>(all(var_2.c.xx), !any(var_1.c.zxy), all(select(func_3(Struct_1(vec3<f32>(var_1.a.x, var_1.a.x, var_1.b), -354f, vec4<bool>(global0.x, true, true, global0.x)), vec4<i32>(-18783i, 0i, 2704i, var_3.x)).xx, var_1.c.xy, select(global0.xx, vec2<bool>(false, var_2.c.x), var_1.c.ww)))), vec3<bool>(func_3(Struct_1(var_1.a, 933f, vec4<bool>(false, false, true, global0.x)), vec4<i32>(-var_3.x, u_input.a.x << (4294967295u % 32u), abs(21381i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, var_3.x, -1i), u_input.a.zyy))).x, var_2.c.x, true), !func_3(Struct_1(_wgslsmith_f_op_vec3_f32(var_1.a * var_1.a), var_1.b, !var_2.c), _wgslsmith_add_vec4_i32(vec4<i32>(0i, 2147483647i, 2147483647i, 1i), -u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 33714u;
    global0 = select(vec3<bool>(false, global0.x, true), func_1(), !(!func_1()));
    global0 = !vec3<bool>(func_1().x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1347f)) - 2067f) == -960f, select(true, true, global0.x));
    global0 = !vec3<bool>(!global0.x, !func_3(Struct_1(vec3<f32>(-270f, -160f, 283f), -175f, vec4<bool>(global0.x, false, global0.x, false)), u_input.a).x, !(any(vec4<bool>(global0.x, global0.x, global0.x, true)) != true));
    global0 = func_1();
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(400f - -1420f), _wgslsmith_f_op_f32(566f + -778f), -574f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(838f, -726f, 392f)))))), 736f, select(!vec4<bool>(u_input.a.x == u_input.a.x, true, true, true), vec4<bool>(true, (var_0 & var_0) < _wgslsmith_mult_u32(var_0, 9575u), true, _wgslsmith_add_u32(var_0, 27423u) != countOneBits(var_0)), select(select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), !vec4<bool>(global0.x, global0.x, global0.x, true), global0.x), vec4<bool>(false, any(vec3<bool>(global0.x, false, global0.x)), true, true), all(vec4<bool>(true, true, true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(-vec3<i32>(~u_input.b.x, u_input.b.x & 57586i, countOneBits(u_input.b.x))), ~select(u_input.a, countOneBits(reverseBits(u_input.a)), var_1.c), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -901f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.b - 1970f), _wgslsmith_div_f32(-348f, var_1.b))))), _wgslsmith_f_op_f32(ceil(-957f)), vec2<i32>(18884i, _wgslsmith_sub_i32(u_input.b.x, u_input.b.x) & ~min(u_input.b.x, u_input.b.x)));
}

