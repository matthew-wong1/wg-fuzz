struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: bool,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(vec2<bool>(true, false), vec3<f32>(112f, -1385f, 2220f), true, true, false), Struct_1(vec2<bool>(false, true), vec3<f32>(1044f, -978f, 1085f), true, false, true));

var<private> global1: Struct_2;

var<private> global2: array<vec3<i32>, 26> = array<vec3<i32>, 26>(vec3<i32>(-1i, -32172i, 2147483647i), vec3<i32>(1i, 2147483647i, 18004i), vec3<i32>(-9801i, 20208i, 15774i), vec3<i32>(28137i, -23983i, -17792i), vec3<i32>(i32(-2147483648), -1i, 2147483647i), vec3<i32>(1i, i32(-2147483648), -60152i), vec3<i32>(11699i, 1i, -18933i), vec3<i32>(-1i, -11308i, -874i), vec3<i32>(14539i, -14931i, 33433i), vec3<i32>(21004i, i32(-2147483648), -10890i), vec3<i32>(-25463i, 12250i, 2147483647i), vec3<i32>(17947i, -16640i, 7271i), vec3<i32>(1i, 2147483647i, 65504i), vec3<i32>(415i, 0i, 1i), vec3<i32>(0i, 1i, 12216i), vec3<i32>(1i, 1i, 43180i), vec3<i32>(-1i, 0i, i32(-2147483648)), vec3<i32>(15073i, -15821i, -12189i), vec3<i32>(4221i, -1i, 0i), vec3<i32>(2733i, -1i, 24652i), vec3<i32>(0i, 0i, 1379i), vec3<i32>(-57261i, i32(-2147483648), -1i), vec3<i32>(-1i, -40403i, -34702i), vec3<i32>(1i, 51665i, 74350i), vec3<i32>(-30573i, -13569i, 0i), vec3<i32>(i32(-2147483648), -1i, -60104i));

var<private> global3: Struct_1;

var<private> global4: f32 = 668f;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_2) -> i32 {
    let var_0 = global1.b;
    var var_1 = Struct_4(Struct_3(Struct_1(select(!vec2<bool>(global3.c, false), select(vec2<bool>(true, false), vec2<bool>(global0.b.c, true), global3.e), global3.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.b)), (arg_0.a.x | global1.b) <= reverseBits(u_input.c), true, all(vec4<bool>(global0.a.e, global0.a.c, false, false)) != false), global0.b));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1077f)), global0.a.b.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1675f), _wgslsmith_f_op_f32(f32(-1f) * -116f)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(469f, -259f, global3.b.x), global3.b)) * vec3<f32>(1936f, global0.b.b.x, global0.b.b.x))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(var_1.a.a.b, _wgslsmith_f_op_vec3_f32(max(global0.a.b, vec3<f32>(568f, global3.b.x, global0.b.b.x))), vec3<bool>(global3.c, true, false)))))));
    var var_3 = vec2<bool>(!global3.c, false);
    let var_4 = _wgslsmith_dot_vec3_u32(min(vec3<u32>(0u, _wgslsmith_add_u32(~1u, arg_0.b), u_input.c), vec3<u32>(u_input.c, global1.b, ~global1.a.x)), arg_0.a.xzy);
    return u_input.a;
}

fn func_2(arg_0: vec2<u32>, arg_1: bool, arg_2: vec3<u32>, arg_3: vec4<f32>) -> Struct_1 {
    let var_0 = arg_0.x;
    let var_1 = !select(func_3(Struct_2(vec4<u32>(u_input.c, 7937u, 0u, 0u), 68645u)) == u_input.a, arg_1 & true, -126f < global0.b.b.x);
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -398f);
    var var_3 = Struct_3(global0.a, global0.a);
    var var_4 = Struct_3(var_3.b, global0.b);
    return Struct_1(!(!(!vec2<bool>(false, arg_1))), vec3<f32>(_wgslsmith_f_op_f32(round(arg_3.x)), 542f, _wgslsmith_f_op_f32(f32(-1f) * -1064f)), !var_1, all(!(!(!vec4<bool>(true, false, arg_1, global3.a.x)))), true);
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: vec3<f32>) -> bool {
    let var_0 = 76069u;
    global3 = arg_2.b;
    global4 = _wgslsmith_f_op_f32(round(-987f));
    return true;
}

fn func_1(arg_0: bool) -> u32 {
    global0 = Struct_3(Struct_1(!vec2<bool>(true, 3772u < global1.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.b)), func_4(global1.a.zxy, vec2<i32>(-43053i, 11512i) & vec2<i32>(u_input.a, u_input.a), Struct_3(Struct_1(vec2<bool>(global0.a.d, false), vec3<f32>(global3.b.x, global0.b.b.x, -586f), true, arg_0, true), func_2(global1.a.wx, arg_0, global1.a.xyx, vec4<f32>(global3.b.x, -773f, 654f, global3.b.x))), global0.a.b), any(!vec4<bool>(global3.a.x, false, arg_0, false)), global0.b.c), global0.b);
    var var_0 = global0.b.b.x;
    let var_1 = Struct_4(Struct_3(func_2(global1.a.xx, all(global3.a), ~firstLeadingBit(global1.a.zxw), vec4<f32>(845f, _wgslsmith_f_op_f32(global0.b.b.x + 1000f), global0.a.b.x, 563f)), Struct_1(vec2<bool>(global3.c, false), global0.b.b, any(vec2<bool>(global3.e, true)), true, true)));
    var var_2 = var_1;
    let var_3 = _wgslsmith_div_vec2_i32(-(~(vec2<i32>(-42565i, u_input.a) | ~vec2<i32>(-8654i, 44805i))), select(~vec2<i32>(1i, -66936i) ^ _wgslsmith_div_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(u_input.a, -2147483647i)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(9225i, -55575i)) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, 23575i), vec2<i32>(u_input.a, u_input.a)), false) | (_wgslsmith_mult_vec2_i32(select(vec2<i32>(u_input.a, -24753i), vec2<i32>(14531i, 36490i), vec2<bool>(false, false)), select(vec2<i32>(-48111i, -1i), vec2<i32>(u_input.a, u_input.a), global0.a.e)) >> (vec2<u32>(0u, global1.b) % vec2<u32>(32u))));
    return global1.b;
}

fn func_5(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_3 {
    var var_0 = Struct_4(Struct_3(global0.b, Struct_1(vec2<bool>(false, !global3.e), global3.b, func_4(arg_0.zxz, vec2<i32>(u_input.a, -19796i), Struct_3(global0.b, Struct_1(vec2<bool>(global3.c, arg_2.x), vec3<f32>(1486f, global0.b.b.x, global0.a.b.x), false, true, true)), global3.b), func_4(_wgslsmith_sub_vec3_u32(arg_1, arg_0.xww), ~vec2<i32>(-1i, -2147483647i), Struct_3(arg_3, global0.a), vec3<f32>(716f, -298f, global0.a.b.x)), (global3.b.x >= 777f) & global0.a.e)));
    var var_1 = _wgslsmith_mult_u32(46125u, 46878u << (func_1(true) % 32u));
    return Struct_3(arg_3, func_2(arg_1.yz, arg_3.a.x, _wgslsmith_sub_vec3_u32(~vec3<u32>(0u, 4294967295u, 15396u), ~arg_1) & _wgslsmith_sub_vec3_u32(~vec3<u32>(arg_0.x, 4294967295u, arg_0.x), global1.a.xyx), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.a.b.b.x, 809f, -499f, 534f)))))))));
}

fn func_6(arg_0: u32, arg_1: u32, arg_2: Struct_3) -> Struct_4 {
    var var_0 = u_input.a;
    var var_1 = ~countOneBits(firstTrailingBit(15804u));
    let var_2 = Struct_3(func_5(vec4<u32>(1u, global1.b, max(1u, arg_1), ~reverseBits(16209u)), ~firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(18221u, global1.b, 4294967295u), vec3<u32>(79168u, arg_1, u_input.b))), vec4<bool>(func_5(_wgslsmith_div_vec4_u32(vec4<u32>(29819u, arg_1, arg_0, arg_0), global1.a), ~global1.a.yxw, select(vec4<bool>(true, arg_2.a.e, global3.c, true), vec4<bool>(false, arg_2.a.c, global3.a.x, global0.a.d), global0.a.a.x), global0.b).a.a.x, !func_4(vec3<u32>(u_input.c, 0u, arg_0), vec2<i32>(u_input.a, u_input.a), Struct_3(Struct_1(vec2<bool>(global3.a.x, global3.d), vec3<f32>(1000f, -706f, arg_2.b.b.x), false, false, global3.a.x), Struct_1(vec2<bool>(false, true), vec3<f32>(global0.b.b.x, 1106f, 2862f), true, arg_2.b.d, global0.a.d)), global0.a.b), all(select(vec4<bool>(true, true, global3.e, global0.a.e), vec4<bool>(true, true, false, true), false)), false), func_2(firstLeadingBit(_wgslsmith_mod_vec2_u32(global1.a.zy, vec2<u32>(arg_0, 1u))), !(u_input.a <= 28593i), ~(~global1.a.wxy), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.b.x, global0.b.b.x, global0.b.b.x, -652f) * vec4<f32>(global3.b.x, 774f, global0.a.b.x, -435f))))).a, arg_2.b);
    var_1 = arg_0;
    var var_3 = ~(reverseBits(firstTrailingBit(~vec2<u32>(global1.a.x, global1.a.x))) | ~global1.a.yx);
    return Struct_4(Struct_3(Struct_1(!(!vec2<bool>(arg_2.b.d, true)), global3.b, !var_2.b.c, any(!vec4<bool>(arg_2.a.d, false, arg_2.b.c, true)), all(select(vec4<bool>(global3.a.x, global3.c, global0.b.d, false), vec4<bool>(global0.a.d, false, var_2.a.a.x, false), true))), var_2.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1912f - _wgslsmith_f_op_f32(-global3.b.x))), global0.b.b.x, global0.b.b.x);
    var_0 = _wgslsmith_f_op_vec3_f32(-global3.b);
    var var_1 = func_6(4294967295u, (u_input.c & select(0u, 11098u, true)) ^ 39282u, func_5(global1.a, ~vec3<u32>(6843u, ~u_input.c, func_1(global3.c)), !(!vec4<bool>(global0.a.a.x, global3.e, true, global3.c)), func_2(global1.a.xy, !any(vec4<bool>(global0.b.e, false, true, false)), ~vec3<u32>(u_input.c, 35025u, u_input.c) >> (global1.a.ywy % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-747f, 582f, global0.b.b.x, -1449f))))))));
    global3 = Struct_1(func_2(_wgslsmith_clamp_vec2_u32(min(~global1.a.xw, vec2<u32>(0u, 1u) >> (global1.a.xx % vec2<u32>(32u))), vec2<u32>(_wgslsmith_div_u32(36978u, global1.a.x), 0u << (global1.a.x % 32u)), global1.a.wy), false, select(global1.a.yzx << ((global1.a.yyw >> (global1.a.yyz % vec3<u32>(32u))) % vec3<u32>(32u)), select(vec3<u32>(global1.b, 0u, u_input.c), vec3<u32>(0u, u_input.c, 59431u), true), select(vec3<bool>(false, true, var_1.a.b.a.x), select(vec3<bool>(true, true, true), vec3<bool>(global3.d, global0.b.c, var_1.a.a.a.x), vec3<bool>(true, true, var_1.a.b.a.x)), select(vec3<bool>(global3.c, var_1.a.a.c, global0.a.e), vec3<bool>(true, global3.d, global3.e), global3.d))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global0.a.b.x * -2484f), global3.b.x, func_2(global1.a.xx, var_1.a.a.c, vec3<u32>(global1.a.x, global1.b, global1.a.x), vec4<f32>(var_1.a.b.b.x, var_0.x, global0.a.b.x, var_0.x)).b.x, _wgslsmith_f_op_f32(-var_1.a.b.b.x)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a.b.b.x, var_0.x, var_1.a.b.b.x, -364f), vec4<f32>(global0.b.b.x, var_1.a.b.b.x, -291f, 1000f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.b.x, global0.b.b.x, -106f, global0.a.b.x) + vec4<f32>(var_0.x, -1000f, -1883f, global3.b.x))))).a, _wgslsmith_f_op_vec3_f32(-func_6(min(countOneBits(19793u), _wgslsmith_add_u32(u_input.b, u_input.c)), select(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, global1.a.x, u_input.c, global1.a.x), vec4<u32>(u_input.c, 56808u, u_input.b, 4294967295u)), global1.a.x, false), func_6(~21462u, global1.a.x, func_6(global1.b, global1.a.x, Struct_3(global0.a, var_1.a.a)).a).a).a.b.b), -(u_input.a >> (~74664u % 32u)) > ~u_input.a, true, any(select(vec3<bool>(any(vec4<bool>(true, global3.c, true, false)), true, false), select(select(vec3<bool>(false, global0.b.a.x, global0.b.c), vec3<bool>(false, var_1.a.b.a.x, false), global0.a.c), vec3<bool>(global0.b.d, true, global0.b.e), true), false)));
    let var_2 = ~(~firstLeadingBit(0u));
    var_1 = func_6(4294967295u, _wgslsmith_div_u32(var_2, ~_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(0u, 42893u, global1.b, 36354u)), _wgslsmith_div_vec4_u32(vec4<u32>(62800u, u_input.c, 4294967295u, global1.b), vec4<u32>(global1.a.x, global1.a.x, 18958u, var_2)))), var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global3.b.x + 1000f), _wgslsmith_f_op_f32(global3.b.x * -3311f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.a.a.b.x, 295f)) + global3.b.x), any(var_1.a.a.a)))), vec2<i32>(~u_input.a, -29295i));
}

