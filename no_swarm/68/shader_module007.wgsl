struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
    d: i32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: f32,
    d: i32,
    e: f32,
}

struct Struct_4 {
    a: bool,
    b: vec2<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: Struct_3 = Struct_3(vec2<bool>(false, false), Struct_2(Struct_1(false, false, -369f, -47968i, vec4<u32>(69872u, 0u, 0u, 4294967295u)), Struct_1(false, true, -230f, -48590i, vec4<u32>(34879u, 0u, 44374u, 1u))), -151f, 12299i, 1947f);

var<private> global2: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(true, false, 1780f, -16471i, vec4<u32>(18790u, 1u, 21258u, 11100u)), Struct_1(false, false, 741f, 18188i, vec4<u32>(1u, 4294967295u, 52006u, 7518u)), Struct_1(false, false, 356f, 40310i, vec4<u32>(33762u, 72166u, 76328u, 84363u)), Struct_1(false, false, 1650f, 0i, vec4<u32>(5286u, 4294967295u, 1u, 0u)), Struct_1(false, false, 605f, -13763i, vec4<u32>(4294967295u, 0u, 4294967295u, 1u)), Struct_1(false, false, -700f, 809i, vec4<u32>(4294967295u, 6022u, 118576u, 0u)), Struct_1(true, false, 499f, 0i, vec4<u32>(4294967295u, 48647u, 31141u, 4294967295u)), Struct_1(true, false, -1719f, 36305i, vec4<u32>(0u, 5224u, 0u, 40408u)), Struct_1(true, true, 2099f, -28267i, vec4<u32>(0u, 89776u, 2505u, 1u)), Struct_1(true, true, -296f, 2147483647i, vec4<u32>(4665u, 1u, 1u, 4294967295u)), Struct_1(true, false, 1158f, -318i, vec4<u32>(0u, 91810u, 14313u, 1u)), Struct_1(true, true, 1189f, -3113i, vec4<u32>(4294967295u, 4294967295u, 19360u, 17158u)), Struct_1(true, true, -2283f, -1132i, vec4<u32>(55960u, 4294967295u, 1u, 13593u)), Struct_1(false, true, 2329f, i32(-2147483648), vec4<u32>(31610u, 0u, 1u, 1u)), Struct_1(true, false, 1154f, -1i, vec4<u32>(0u, 4294967295u, 109108u, 4294967295u)), Struct_1(false, false, -2193f, 18077i, vec4<u32>(5003u, 60056u, 63267u, 37582u)), Struct_1(true, true, 695f, -24645i, vec4<u32>(4294967295u, 39969u, 4294967295u, 24349u)), Struct_1(true, true, -1273f, i32(-2147483648), vec4<u32>(34621u, 34858u, 4294967295u, 1u)), Struct_1(false, true, -876f, 1885i, vec4<u32>(0u, 0u, 38060u, 60174u)), Struct_1(false, false, -224f, 1i, vec4<u32>(0u, 16699u, 0u, 22404u)), Struct_1(true, false, -1109f, 2147483647i, vec4<u32>(59889u, 20910u, 17195u, 28025u)), Struct_1(false, false, 199f, -8052i, vec4<u32>(17232u, 1u, 1u, 20012u)), Struct_1(true, false, -905f, 0i, vec4<u32>(0u, 0u, 42821u, 1u)), Struct_1(true, false, -713f, 0i, vec4<u32>(2857u, 1u, 42866u, 44925u)), Struct_1(false, false, 969f, 1i, vec4<u32>(26989u, 0u, 26510u, 1u)), Struct_1(false, true, 822f, 2147483647i, vec4<u32>(0u, 21893u, 4294967295u, 4294967295u)), Struct_1(true, false, -766f, -56252i, vec4<u32>(4294967295u, 4294967295u, 0u, 1u)), Struct_1(false, false, 1069f, 31789i, vec4<u32>(4294967295u, 0u, 0u, 1u)), Struct_1(true, false, -441f, 19323i, vec4<u32>(10901u, 1u, 1u, 0u)), Struct_1(false, true, 1138f, 1i, vec4<u32>(4294967295u, 54626u, 92044u, 4294967295u)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(round(global1.e));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-686f * _wgslsmith_div_f32(-1915f, 419f)), 1000f, true)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.a.c))));
    global1 = Struct_3(vec2<bool>(global1.b.a.d <= u_input.c.x, _wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.a, 40578u), firstTrailingBit(global1.b.b.e.x)) != u_input.a), Struct_2(Struct_1(global1.b.b.a, select(true, u_input.c.x <= -21215i, true), -470f, _wgslsmith_add_i32(u_input.c.x, _wgslsmith_div_i32(global1.b.b.d, -2147483647i)), countOneBits(vec4<u32>(1u, 1u, 1u, global1.b.a.e.x))), Struct_1(global1.b.b.a, ~global1.b.b.e.x >= global1.b.a.e.x, 607f, u_input.c.x, global1.b.a.e)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.b.b.c + _wgslsmith_f_op_f32(var_0 + var_1.x)))) + 1329f), global1.d, _wgslsmith_f_op_f32(floor(global1.c)));
    global2 = array<Struct_1, 30>();
    var var_2 = global1.b.b;
    return select(!vec2<bool>(var_2.b, global1.b.a.b && false), !(!(!vec2<bool>(global1.b.b.b, global1.b.b.b))), !select(global1.a, !select(global1.a, vec2<bool>(var_2.a, false), vec2<bool>(false, true)), vec2<bool>(global1.b.b.b, true)));
}

fn func_2(arg_0: bool) -> Struct_3 {
    global0 = 0i;
    global1 = Struct_3(vec2<bool>(all(select(func_3(), func_3(), true)), arg_0), global1.b, _wgslsmith_f_op_f32(-global1.b.b.c), -16545i, global1.e);
    global2 = array<Struct_1, 30>();
    global1 = Struct_3(select(select(global1.a, vec2<bool>(false, true), true), select(vec2<bool>(true, all(vec3<bool>(false, global1.a.x, false))), select(!vec2<bool>(true, global1.a.x), global1.a, func_3()), vec2<bool>(false, global1.b.a.b)), global1.a), global1.b, -831f, 17611i, 294f);
    global2 = array<Struct_1, 30>();
    return Struct_3(!(!vec2<bool>(true, any(vec4<bool>(true, global1.a.x, arg_0, false)))), global1.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.c)) - _wgslsmith_f_op_f32(606f + global1.b.b.c)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(416f, global1.b.b.c))))))), -max(-34632i, countOneBits(firstTrailingBit(global1.b.b.d))), 1321f);
}

fn func_1(arg_0: vec2<u32>) -> i32 {
    var var_0 = global1.a.x;
    var var_1 = ~u_input.c.zyy;
    var var_2 = func_2(global1.b.a.b);
    var_0 = true;
    return _wgslsmith_sub_i32(13771i, _wgslsmith_mod_i32(~reverseBits(45248i), ~reverseBits(2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!select(select(!global1.a, vec2<bool>(global1.a.x, global1.a.x), !global1.a), vec2<bool>(any(vec3<bool>(true, false, false)), select(global1.b.b.b, true, global1.a.x)), global1.a), vec2<bool>(false || any(!vec3<bool>(false, global1.b.a.b, false)), global1.a.x), vec2<bool>(global1.a.x, true));
    var var_1 = Struct_2(Struct_1(false, global1.a.x | all(vec2<bool>(false, false)), 919f, u_input.c.x & func_1(global1.b.b.e.xw), global1.b.b.e), func_2(false).b.a);
    var var_2 = abs(select(u_input.c, u_input.c, true) >> ((vec4<u32>(_wgslsmith_mod_u32(0u, global1.b.a.e.x), ~u_input.a, 13950u, ~106746u) >> (_wgslsmith_sub_vec4_u32(var_1.b.e, ~vec4<u32>(global1.b.a.e.x, var_1.a.e.x, global1.b.a.e.x, 4294967295u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_3 = var_2.x >= -19870i;
    let var_4 = Struct_4(false, select(vec2<bool>((global1.d < 14955i) & !var_0.x, true), func_3(), vec2<bool>(true, true)), func_2(!var_1.a.b).b.b);
    let var_5 = var_1.a;
    var_2 = max(firstLeadingBit(-(~u_input.c) >> (_wgslsmith_mod_vec4_u32(global1.b.b.e, abs(vec4<u32>(var_4.c.e.x, 0u, 53982u, var_5.e.x))) % vec4<u32>(32u))), vec4<i32>(~(-18994i), -60258i, min(-32560i, i32(-1i) * -u_input.c.x), _wgslsmith_div_i32(var_1.a.d, -39798i)));
    var var_6 = var_4;
    var var_7 = -(vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(var_2.zx, u_input.c.xy), var_5.d), -20145i, _wgslsmith_div_i32(-var_1.a.d, 11666i), firstLeadingBit(_wgslsmith_mod_i32(var_2.x, -9798i))) >> (select(var_6.c.e >> ((vec4<u32>(var_6.c.e.x, 1u, global1.b.a.e.x, var_1.b.e.x) & var_4.c.e) % vec4<u32>(32u)), var_6.c.e, select(select(vec4<bool>(var_1.a.a, var_4.c.b, var_5.b, false), vec4<bool>(false, var_4.c.a, true, true), vec4<bool>(global1.b.a.b, var_5.a, var_0.x, var_4.c.b)), !vec4<bool>(var_5.b, false, true, var_1.b.b), true)) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_6.c.e);
}

