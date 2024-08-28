struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec4<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
    c: bool,
    d: vec2<f32>,
    e: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(i32(-2147483648), vec4<u32>(117399u, 4891u, 1u, 1u), true, vec2<f32>(-1000f, -568f), vec2<bool>(true, true)), Struct_3(2510i, vec4<u32>(4294967295u, 6560u, 22255u, 0u), true, vec2<f32>(-1060f, -308f), vec2<bool>(false, false)), Struct_3(-1i, vec4<u32>(23284u, 1u, 54714u, 4294967295u), false, vec2<f32>(-446f, 632f), vec2<bool>(true, true)), Struct_3(41337i, vec4<u32>(1u, 62206u, 4294967295u, 1u), false, vec2<f32>(1000f, 285f), vec2<bool>(false, true)), Struct_3(26616i, vec4<u32>(61460u, 0u, 1u, 27566u), false, vec2<f32>(-492f, -1888f), vec2<bool>(false, false)), Struct_3(6822i, vec4<u32>(4294967295u, 10554u, 93449u, 1u), false, vec2<f32>(-417f, 2709f), vec2<bool>(false, false)), Struct_3(2147483647i, vec4<u32>(1u, 0u, 4294967295u, 51102u), false, vec2<f32>(463f, 1000f), vec2<bool>(false, true)), Struct_3(59660i, vec4<u32>(1u, 4294967295u, 113130u, 18205u), false, vec2<f32>(371f, -160f), vec2<bool>(true, false)), Struct_3(38166i, vec4<u32>(16087u, 44043u, 0u, 4294967295u), false, vec2<f32>(634f, 374f), vec2<bool>(false, true)), Struct_3(10605i, vec4<u32>(8913u, 4294967295u, 1u, 0u), true, vec2<f32>(-1112f, -745f), vec2<bool>(true, true)), Struct_3(i32(-2147483648), vec4<u32>(0u, 3311u, 20152u, 28447u), true, vec2<f32>(505f, -1944f), vec2<bool>(false, false)), Struct_3(-30495i, vec4<u32>(4922u, 1u, 32654u, 0u), true, vec2<f32>(991f, -367f), vec2<bool>(true, false)), Struct_3(-1i, vec4<u32>(1u, 4294967295u, 33798u, 67038u), true, vec2<f32>(-513f, -377f), vec2<bool>(true, true)), Struct_3(i32(-2147483648), vec4<u32>(22395u, 1u, 6410u, 1u), true, vec2<f32>(-448f, 963f), vec2<bool>(false, false)), Struct_3(-1i, vec4<u32>(4294967295u, 1u, 0u, 4294967295u), true, vec2<f32>(-646f, 598f), vec2<bool>(false, false)), Struct_3(1i, vec4<u32>(22387u, 80616u, 38245u, 4294967295u), false, vec2<f32>(-335f, -476f), vec2<bool>(false, true)), Struct_3(-14702i, vec4<u32>(4294967295u, 17624u, 13181u, 24705u), true, vec2<f32>(273f, -325f), vec2<bool>(false, true)), Struct_3(-12997i, vec4<u32>(4294967295u, 28459u, 23825u, 1u), false, vec2<f32>(1594f, -1270f), vec2<bool>(false, true)), Struct_3(15468i, vec4<u32>(88234u, 29447u, 21848u, 4294967295u), false, vec2<f32>(490f, 559f), vec2<bool>(false, true)));

var<private> global1: array<f32, 15> = array<f32, 15>(-217f, -241f, 1387f, 522f, 1276f, 218f, 394f, -897f, -2721f, -1924f, 579f, -541f, -232f, 836f, 437f);

var<private> global2: Struct_2;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool, arg_1: vec2<u32>) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(-global2.a.a.x);
    let var_1 = global0[_wgslsmith_index_u32(arg_1.x, 19u)];
    let var_2 = Struct_2(Struct_1(vec3<f32>(var_1.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1485f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1895f, 681f, arg_0)))), _wgslsmith_mod_vec2_i32(global2.a.b, vec2<i32>(35317i, var_1.a)), vec4<bool>(var_1.e.x, true, true, false), _wgslsmith_f_op_f32(var_1.d.x - _wgslsmith_f_op_f32(-global2.a.d))), vec2<u32>(arg_1.x, 1u));
    var var_3 = !select(!vec4<bool>(!var_1.c, false, any(var_2.a.c), false), select(select(!var_2.a.c, var_2.a.c, vec4<bool>(true, var_2.a.c.x, arg_0, false)), select(!vec4<bool>(global2.a.c.x, false, true, var_1.e.x), vec4<bool>(arg_0, global2.a.c.x, true, true), !arg_0), select(!vec4<bool>(global2.a.c.x, var_2.a.c.x, global2.a.c.x, var_1.c), global2.a.c, false)), all(var_2.a.c));
    var var_4 = Struct_2(var_2.a, arg_1);
    return var_3.ww;
}

fn func_2(arg_0: Struct_2, arg_1: i32) -> i32 {
    global1 = array<f32, 15>();
    let var_0 = -2147483647i < (10415i | ((select(-11095i, u_input.d, global2.a.c.x) ^ -7854i) ^ (-61310i | _wgslsmith_dot_vec3_i32(vec3<i32>(1i, global2.a.b.x, u_input.d), vec3<i32>(0i, -1i, global2.a.b.x)))));
    global1 = array<f32, 15>();
    let var_1 = ~vec2<i32>(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(3380i, -25086i, global2.a.b.x)), ~vec3<i32>(global2.a.b.x, 1i, -2262i)), -26090i) ^ u_input.c;
    var var_2 = !arg_0.a.c.x & all(select(func_3(global2.a.c.x, vec2<u32>(0u, 1u)), func_3(global2.a.c.x, firstLeadingBit(u_input.a)), !all(vec3<bool>(true, arg_0.a.c.x, false))));
    return reverseBits(arg_1);
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    let var_0 = 12823u;
    let var_1 = -10000i;
    var var_2 = countOneBits(-vec3<i32>(global2.a.b.x, -func_2(Struct_2(Struct_1(vec3<f32>(-1000f, global1[_wgslsmith_index_u32(17345u, 15u)], global2.a.d), vec2<i32>(2147483647i, -10601i), vec4<bool>(true, arg_0.c.x, global2.a.c.x, true), -1250f), global2.b), arg_0.b.x), 17023i));
    let var_3 = arg_0.c;
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.d, arg_0.d))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~var_0, 15u)]), _wgslsmith_f_op_f32(-global2.a.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1322f)), vec4<f32>(-1000f, _wgslsmith_div_f32(598f, _wgslsmith_f_op_f32(-732f - arg_0.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d * 758f)), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(var_0, u_input.a.x), 31667u), 15u)]))));
    return Struct_2(global2.a, countOneBits(~(_wgslsmith_div_vec2_u32(vec2<u32>(41152u, var_0), vec2<u32>(46568u, var_0)) >> (u_input.e.xy % vec2<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(global2.a);
    var var_0 = Struct_3(~(-34028i), ~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 24236u), vec3<u32>(21054u, 1u, global2.b.x)) | u_input.b, ~u_input.e.x, ~42897u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 9628u, 72900u, u_input.a.x), vec4<u32>(4294967295u, global2.b.x, global2.b.x, u_input.e.x))), select(min(_wgslsmith_sub_u32(u_input.a.x, 45630u), u_input.a.x) >= max(~global2.b.x, ~51720u), global2.a.c.x, any(func_1(global2.a).a.c.xx) | true), vec2<f32>(1f, 1f), !vec2<bool>(global2.a.c.x, false));
    var var_1 = Struct_4(Struct_3(13046i, ~vec4<u32>(select(var_0.b.x, u_input.a.x, false), u_input.e.x, 32991u, u_input.e.x), false, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(33811u, 15u)]), global2.a.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(global2.b.x, 15u)], global2.a.d) * global2.a.a.yy)))), select(vec2<bool>(var_0.e.x || global2.a.c.x, global2.a.c.x), global2.a.c.yz, true)), func_1(Struct_1(vec3<f32>(1177f, _wgslsmith_f_op_f32(f32(-1f) * -674f), _wgslsmith_f_op_f32(global2.a.a.x + -427f)), reverseBits(vec2<i32>(1i, 1i)), select(func_1(Struct_1(vec3<f32>(var_0.d.x, 808f, global1[_wgslsmith_index_u32(81528u, 15u)]), global2.a.b, global2.a.c, global2.a.d)).a.c, vec4<bool>(true, var_0.c, false, true), !global2.a.c), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(93542u, 15u)] + global1[_wgslsmith_index_u32(u_input.b, 15u)]))).a, func_1(func_1(global2.a).a).a, !(!all(select(global2.a.c.wxx, vec3<bool>(var_0.e.x, true, false), global2.a.c.yxz))));
    let var_2 = var_1.a.b;
    global1 = array<f32, 15>();
    global1 = array<f32, 15>();
    let var_3 = Struct_4(Struct_3(u_input.c.x, vec4<u32>(var_1.a.b.x, _wgslsmith_mult_u32(~0u, global2.b.x), var_2.x, 7482u), all(!select(vec3<bool>(var_0.e.x, var_1.b.c.x, false), var_1.b.c.yzy, true)), vec2<f32>(global2.a.d, -1890f), var_0.e), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(var_1.c.a)) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1448f, -585f, -1481f)))) + vec3<f32>(182f, _wgslsmith_f_op_f32(trunc(var_1.c.a.x)), _wgslsmith_div_f32(global2.a.a.x, 1367f))), global2.a.b, var_1.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.x) - 3138f))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1306f)) * 1000f), global2.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(50196u, 15u)] - var_1.c.a.x))), _wgslsmith_mult_vec2_i32(abs(vec2<i32>(global2.a.b.x, u_input.d) & vec2<i32>(-1i, global2.a.b.x)), ~(~var_1.b.b)), var_1.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.b.d, -272f)))), false);
    let var_4 = global0[_wgslsmith_index_u32(reverseBits(~_wgslsmith_div_u32(var_1.a.b.x, var_1.a.b.x)), 19u)];
    var var_5 = Struct_3(min(i32(-1i) * -(~(-65249i)), ~(-(~global2.a.b.x))), var_4.b, var_1.b.c.x, vec2<f32>(_wgslsmith_f_op_f32(max(520f, 3251f)), _wgslsmith_f_op_f32(-var_4.d.x)), !var_0.e);
    let x = u_input.a;
    s_output = StorageBuffer(var_5.a);
}

