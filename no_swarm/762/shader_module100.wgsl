struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: f32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(Struct_1(vec3<i32>(-12714i, -1i, -40325i), true, -966f, 16531u, true), Struct_1(vec3<i32>(-1i, -61305i, -41817i), false, 458f, 61405u, false)), Struct_2(Struct_1(vec3<i32>(2147483647i, 47442i, -39329i), false, 283f, 1u, true), Struct_1(vec3<i32>(-1i, -30563i, -13366i), false, -1000f, 1u, true)), Struct_2(Struct_1(vec3<i32>(2147483647i, -33887i, 2147483647i), false, -115f, 69890u, false), Struct_1(vec3<i32>(0i, -23499i, 0i), false, -1008f, 45867u, false)), Struct_2(Struct_1(vec3<i32>(-8310i, 52094i, 31555i), true, -786f, 0u, false), Struct_1(vec3<i32>(1i, i32(-2147483648), 35703i), false, -298f, 4294967295u, true)), Struct_2(Struct_1(vec3<i32>(2147483647i, 0i, 0i), true, 775f, 58674u, false), Struct_1(vec3<i32>(20616i, -11386i, 9355i), false, 888f, 18880u, false)), Struct_2(Struct_1(vec3<i32>(-25738i, i32(-2147483648), i32(-2147483648)), false, -1854f, 0u, false), Struct_1(vec3<i32>(1i, -12032i, 1i), true, 457f, 4294967295u, false)), Struct_2(Struct_1(vec3<i32>(1i, i32(-2147483648), 25209i), false, 519f, 12910u, false), Struct_1(vec3<i32>(-1i, -29215i, 13301i), true, -442f, 1u, true)), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), -5120i, i32(-2147483648)), false, 2783f, 81570u, true), Struct_1(vec3<i32>(19699i, 0i, -63841i), false, 1145f, 23716u, true)), Struct_2(Struct_1(vec3<i32>(-19303i, -1i, -1i), false, -799f, 85105u, false), Struct_1(vec3<i32>(7874i, 0i, -1i), true, 136f, 52568u, true)), Struct_2(Struct_1(vec3<i32>(79096i, -47526i, i32(-2147483648)), true, -579f, 27161u, true), Struct_1(vec3<i32>(-30067i, -17199i, -27552i), false, 685f, 1u, false)), Struct_2(Struct_1(vec3<i32>(-14173i, 0i, 30027i), false, 233f, 35752u, false), Struct_1(vec3<i32>(-19380i, -15140i, 30350i), false, 572f, 415u, false)), Struct_2(Struct_1(vec3<i32>(-23659i, -11324i, 17464i), false, -953f, 1u, true), Struct_1(vec3<i32>(-36178i, 2147483647i, 0i), true, 612f, 1u, true)), Struct_2(Struct_1(vec3<i32>(42783i, -35691i, 1i), true, 1794f, 4294967295u, false), Struct_1(vec3<i32>(40177i, -1i, 39662i), false, -129f, 81355u, false)), Struct_2(Struct_1(vec3<i32>(-16853i, 66248i, -24871i), true, 971f, 4294967295u, false), Struct_1(vec3<i32>(-9399i, -41566i, 31582i), true, -186f, 1u, true)), Struct_2(Struct_1(vec3<i32>(48086i, -22059i, i32(-2147483648)), false, -461f, 5673u, true), Struct_1(vec3<i32>(1i, 6302i, -1701i), false, -1000f, 1u, false)), Struct_2(Struct_1(vec3<i32>(0i, i32(-2147483648), 18550i), false, 272f, 1724u, true), Struct_1(vec3<i32>(-23551i, -13082i, 0i), true, -2104f, 0u, true)), Struct_2(Struct_1(vec3<i32>(1i, 1i, 84537i), true, 105f, 4294967295u, false), Struct_1(vec3<i32>(i32(-2147483648), -6592i, 2147483647i), false, -159f, 60242u, true)), Struct_2(Struct_1(vec3<i32>(2147483647i, -1307i, -12102i), false, 1048f, 1u, true), Struct_1(vec3<i32>(2147483647i, 18350i, i32(-2147483648)), false, 1172f, 15117u, false)), Struct_2(Struct_1(vec3<i32>(-1i, 10003i, 0i), false, 1961f, 1u, false), Struct_1(vec3<i32>(0i, 68578i, -1i), false, 919f, 16163u, true)), Struct_2(Struct_1(vec3<i32>(2147483647i, i32(-2147483648), 2147483647i), false, 1044f, 4294967295u, false), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, 2147483647i), true, 2509f, 1u, true)), Struct_2(Struct_1(vec3<i32>(0i, -5543i, -20729i), true, 1623f, 0u, true), Struct_1(vec3<i32>(0i, -22507i, 0i), false, 406f, 4294967295u, true)), Struct_2(Struct_1(vec3<i32>(-22681i, -62534i, 24868i), true, 1802f, 1u, true), Struct_1(vec3<i32>(1i, 1i, 2147483647i), true, -1000f, 9799u, true)), Struct_2(Struct_1(vec3<i32>(-23821i, -18581i, -23649i), true, 1074f, 5093u, true), Struct_1(vec3<i32>(41489i, 2147483647i, -1i), false, -501f, 1u, true)), Struct_2(Struct_1(vec3<i32>(2147483647i, 15169i, 16815i), true, -2019f, 0u, false), Struct_1(vec3<i32>(1i, 0i, 50533i), true, 2503f, 49416u, false)), Struct_2(Struct_1(vec3<i32>(-8803i, i32(-2147483648), 2147483647i), false, -164f, 4294967295u, false), Struct_1(vec3<i32>(-47188i, 7857i, -14841i), true, 436f, 0u, false)), Struct_2(Struct_1(vec3<i32>(-29673i, 0i, 5026i), true, -144f, 11209u, false), Struct_1(vec3<i32>(17438i, 2147483647i, 20074i), false, -1000f, 1u, false)), Struct_2(Struct_1(vec3<i32>(-1i, 29169i, 1i), false, 406f, 91273u, false), Struct_1(vec3<i32>(-22652i, i32(-2147483648), 2147483647i), false, 721f, 10251u, false)), Struct_2(Struct_1(vec3<i32>(2147483647i, i32(-2147483648), 63753i), false, 1000f, 0u, false), Struct_1(vec3<i32>(i32(-2147483648), 10447i, 21339i), true, -1257f, 94266u, true)), Struct_2(Struct_1(vec3<i32>(0i, -67544i, -18872i), false, 1971f, 0u, false), Struct_1(vec3<i32>(-40235i, -27050i, i32(-2147483648)), false, -544f, 1u, true)));

var<private> global2: array<vec4<f32>, 11> = array<vec4<f32>, 11>(vec4<f32>(799f, 752f, -1125f, 744f), vec4<f32>(-158f, -651f, -916f, -1366f), vec4<f32>(-867f, 192f, -1000f, 249f), vec4<f32>(-913f, 541f, 564f, 734f), vec4<f32>(-750f, 869f, -190f, 217f), vec4<f32>(831f, 1655f, 668f, -1939f), vec4<f32>(-1043f, -355f, -1063f, -1000f), vec4<f32>(-186f, 473f, 883f, 1146f), vec4<f32>(-1008f, 1112f, 1172f, -1415f), vec4<f32>(-700f, 1913f, -774f, 577f), vec4<f32>(561f, -185f, 630f, 1670f));

var<private> global3: Struct_2 = Struct_2(Struct_1(vec3<i32>(-43061i, 2147483647i, -33021i), true, -201f, 1851u, true), Struct_1(vec3<i32>(i32(-2147483648), -21772i, 19189i), false, -1106f, 31615u, true));

var<private> global4: array<Struct_2, 30>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = global3.a;
    global3 = global4[_wgslsmith_index_u32(_wgslsmith_div_u32(global0.d, reverseBits(_wgslsmith_dot_vec3_u32(~min(vec3<u32>(global0.d, 1u, 112302u), vec3<u32>(u_input.b, global0.d, 0u)), _wgslsmith_mod_vec3_u32(~vec3<u32>(var_0.d, 0u, global3.a.d), ~vec3<u32>(arg_0, arg_0, global0.d))))), 30u)];
    global3 = global4[_wgslsmith_index_u32(~(~0u), 30u)];
    let var_1 = !(!(!select(vec2<bool>(true, global3.b.e), vec2<bool>(true, true), true)));
    let var_2 = select(var_1, var_1, !select(select(vec2<bool>(var_0.b, global0.b), var_1, false), vec2<bool>(any(var_1), true), var_0.a.x <= _wgslsmith_mult_i32(var_0.a.x, -2147483647i)));
    return _wgslsmith_f_op_f32(1313f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.b.c - _wgslsmith_f_op_f32(select(-1110f, 457f, global0.e))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f)))), -1000f)));
}

fn func_2(arg_0: vec4<bool>, arg_1: u32) -> i32 {
    let var_0 = -1794f;
    global2 = array<vec4<f32>, 11>();
    var var_1 = _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) + global0.c));
    global3 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global3.b.d, 4294967295u), 29u)];
    let var_2 = Struct_2(Struct_1(firstLeadingBit(vec3<i32>(_wgslsmith_clamp_i32(0i, -1i, 60346i), _wgslsmith_dot_vec3_i32(global0.a, global3.a.a), global3.a.a.x)), global0.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.b)) - 1338f), ~10774u, !(global3.b.d > abs(1u))), Struct_1(global0.a, any(arg_0) && all(arg_0), var_0, global3.a.d, true));
    return ~(i32(-1i) * -27301i);
}

fn func_1(arg_0: vec3<u32>, arg_1: bool) -> u32 {
    var var_0 = Struct_3(vec3<bool>(all(vec2<bool>(false, global3.a.b)) || global0.b, global3.a.b, true));
    let var_1 = !(!all(vec4<bool>(global3.b.b, global3.a.e, false, global3.b.e))) & true;
    let var_2 = Struct_2(Struct_1(abs(vec3<i32>(global3.a.a.x | u_input.a, -u_input.a, 1i)), !global3.a.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -906f)))), 18575u, !(!global3.a.e)), Struct_1(vec3<i32>(-1i, _wgslsmith_dot_vec2_i32(global3.b.a.zy, global3.b.a.yz), -2147483647i ^ func_2(vec4<bool>(true, true, false, var_0.a.x), global0.d)), !(!global0.e) != false, 1099f, firstTrailingBit(global0.d), global0.b));
    var var_3 = global0.a.yx;
    return _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 0u, 4294967295u) | vec4<u32>(var_2.a.d, 1u, 96269u, 16193u), max(vec4<u32>(1u, 4294967295u, u_input.b, 1u), vec4<u32>(19551u, arg_0.x, u_input.b, u_input.b))), _wgslsmith_mult_vec4_u32(vec4<u32>(global3.a.d, 4294967295u, ~54230u, ~27261u), vec4<u32>(1u, _wgslsmith_add_u32(global0.d, global3.a.d), max(60785u, 4443u), ~1u))) ^ 43774u;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: f32, arg_3: vec3<i32>) -> Struct_2 {
    var var_0 = Struct_3(select(vec3<bool>((47412u <= global0.d) || true, global3.a.b, true), !arg_0, arg_0));
    var var_1 = 5021u;
    global2 = array<vec4<f32>, 11>();
    var_1 = ~1u;
    global3 = Struct_2(global3.b, Struct_1(global0.a, !global3.a.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-463f, global0.c))), min(61977u, _wgslsmith_mod_u32(u_input.b, 42785u)), false));
    return Struct_2(Struct_1(select(~global3.a.a, _wgslsmith_clamp_vec3_i32(~vec3<i32>(arg_3.x, 46637i, 0i), vec3<i32>(2147483647i, u_input.c, u_input.c), ~global0.a), !(!vec3<bool>(false, true, var_0.a.x))), any(arg_0) & var_0.a.x, _wgslsmith_f_op_f32(-arg_2), ~max(_wgslsmith_dot_vec3_u32(arg_1.www, vec3<u32>(u_input.b, 10799u, 0u)), u_input.b ^ u_input.b), !(!arg_0.x & any(vec2<bool>(var_0.a.x, true)))), Struct_1(abs(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_3.x, 1i, -24217i), arg_3)), !(!any(vec4<bool>(true, global0.e, false, true))), global0.c, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(arg_1.xx, arg_1.xw), ~arg_1.x), _wgslsmith_add_vec2_u32(arg_1.zz, arg_1.wz & arg_1.ww)), !select(true | var_0.a.x, global0.e | arg_0.x, !var_0.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.e;
    global3 = func_4(!(!vec3<bool>(global0.e || global0.b, global0.e, !global3.b.b)), vec4<u32>(86550u, func_1(_wgslsmith_sub_vec3_u32(~vec3<u32>(23757u, 0u, global3.b.d), ~vec3<u32>(global3.b.d, global3.a.d, 3203u)), all(select(vec3<bool>(false, true, global0.b), vec3<bool>(global3.a.b, false, false), vec3<bool>(true, global0.b, global0.b)))), firstLeadingBit(global0.d), _wgslsmith_dot_vec4_u32(~firstLeadingBit(vec4<u32>(4294967295u, global3.a.d, 27393u, 4294967295u)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(global3.b.d, 4294967295u, u_input.b, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 29974u, global0.d, 1u), vec4<u32>(global3.b.d, global3.b.d, global3.b.d, u_input.b)), vec4<u32>(78145u, global3.a.d, u_input.b, 62648u)))), -142f, vec3<i32>(firstTrailingBit(global3.b.a.x), global0.a.x, -1i));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.b.c + _wgslsmith_f_op_f32(ceil(global3.b.c))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -803f) - global3.b.c)), _wgslsmith_f_op_f32(-global0.c), global3.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b.c) - _wgslsmith_f_op_f32(func_3(global0.d))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1000f, global3.a.c)), _wgslsmith_f_op_f32(global0.c * -994f)))));
    var var_2 = _wgslsmith_dot_vec2_u32(~firstTrailingBit(firstTrailingBit(vec2<u32>(u_input.b, u_input.b))) << (_wgslsmith_mod_vec2_u32(~vec2<u32>(26400u, 4294967295u), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.b) >> (vec2<u32>(22917u, 0u) % vec2<u32>(32u)), ~vec2<u32>(74650u, 1u))) % vec2<u32>(32u)), abs(~(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(global3.a.d, u_input.b)) ^ vec2<u32>(u_input.b, 30716u))));
    var var_3 = min(~(func_4(vec3<bool>(false, true, true), vec4<u32>(23113u, u_input.b, u_input.b, global3.b.d), _wgslsmith_f_op_f32(-global0.c), vec3<i32>(global3.b.a.x, -2147483647i, global0.a.x)).b.a.xy >> (~(~vec2<u32>(34631u, u_input.b)) % vec2<u32>(32u))), vec2<i32>(-1i, firstLeadingBit(-1i)));
    let var_4 = select(select(select(vec3<bool>(global0.e, true, false), select(vec3<bool>(global3.a.e, global3.a.e, false), select(vec3<bool>(global0.b, global0.b, global3.b.b), vec3<bool>(false, false, global0.b), true), !vec3<bool>(global0.e, true, global3.a.b)), !func_4(vec3<bool>(true, true, true), vec4<u32>(u_input.b, u_input.b, global0.d, global3.b.d), 937f, global3.a.a).a.e), select(!vec3<bool>(global0.e, true, true), vec3<bool>(true, 0u > global0.d, func_4(vec3<bool>(true, global3.b.b, false), vec4<u32>(0u, u_input.b, 4294967295u, 1u), 370f, global0.a).a.b), true), global0.b), vec3<bool>(all(!select(vec4<bool>(global0.e, global3.b.e, true, true), vec4<bool>(global3.b.e, true, true, false), vec4<bool>(global0.e, global0.b, global0.e, global3.a.b))), !any(!vec4<bool>(true, global0.b, global3.b.e, global0.b)), !global3.a.e), global0.e);
    let var_5 = Struct_3(select(select(vec3<bool>(global3.a.d != 4294967295u, false, any(var_4.zx)), vec3<bool>(all(vec4<bool>(false, global0.b, var_4.x, true)), any(vec4<bool>(true, false, true, global0.e)), any(vec3<bool>(true, global0.b, false))), true), vec3<bool>(any(select(var_4.zy, var_4.xy, vec2<bool>(global3.b.e, false))), true, true), select(!var_4, select(var_4, vec3<bool>(false, true, global0.e), false), true)));
    let var_6 = firstTrailingBit(u_input.b);
    global3 = global4[_wgslsmith_index_u32(min(reverseBits(~(~_wgslsmith_add_u32(4294967295u, var_6))), 33920u), 30u)];
    let x = u_input.a;
    s_output = StorageBuffer(~(-select(-vec4<i32>(-1i, -26544i, -1i, 0i), abs(vec4<i32>(var_3.x, 2147483647i, global3.a.a.x, 3447i)), var_5.a.x)), ~u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.c)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(228f * -561f))))));
}

