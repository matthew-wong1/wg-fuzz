struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: Struct_2,
    d: vec4<f32>,
    e: u32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 28> = array<Struct_4, 28>(Struct_4(Struct_3(-2528f, -15697i, Struct_2(true, 1u, Struct_1(74735u, vec2<i32>(1i, i32(-2147483648)))), vec4<f32>(-384f, 1207f, -1000f, 103f), 0u)), Struct_4(Struct_3(-294f, 2147483647i, Struct_2(true, 13609u, Struct_1(0u, vec2<i32>(-25741i, 1i))), vec4<f32>(-140f, 676f, 862f, -730f), 50625u)), Struct_4(Struct_3(-766f, 61825i, Struct_2(true, 4294967295u, Struct_1(0u, vec2<i32>(1i, 48503i))), vec4<f32>(-1000f, -290f, 1096f, -374f), 4294967295u)), Struct_4(Struct_3(220f, -65642i, Struct_2(false, 48403u, Struct_1(4294967295u, vec2<i32>(-3519i, i32(-2147483648)))), vec4<f32>(2042f, 1189f, -399f, 952f), 44026u)), Struct_4(Struct_3(937f, -1i, Struct_2(false, 1u, Struct_1(4294967295u, vec2<i32>(1i, -29643i))), vec4<f32>(599f, 521f, -650f, 172f), 15338u)), Struct_4(Struct_3(-504f, 4105i, Struct_2(true, 1u, Struct_1(0u, vec2<i32>(-31921i, 3457i))), vec4<f32>(-1071f, 134f, -2110f, -1868f), 1u)), Struct_4(Struct_3(-1139f, -68850i, Struct_2(true, 1u, Struct_1(34155u, vec2<i32>(2147483647i, 0i))), vec4<f32>(-639f, 871f, -1375f, -1574f), 1729u)), Struct_4(Struct_3(670f, -34819i, Struct_2(false, 51135u, Struct_1(4294967295u, vec2<i32>(1i, 0i))), vec4<f32>(123f, 2056f, 895f, -727f), 6609u)), Struct_4(Struct_3(-1499f, 1i, Struct_2(true, 1u, Struct_1(9868u, vec2<i32>(0i, -46904i))), vec4<f32>(1000f, 1513f, -206f, -238f), 20816u)), Struct_4(Struct_3(576f, 2147483647i, Struct_2(false, 1u, Struct_1(0u, vec2<i32>(12530i, -33096i))), vec4<f32>(217f, -1263f, 1026f, 581f), 0u)), Struct_4(Struct_3(725f, 1i, Struct_2(false, 15380u, Struct_1(19492u, vec2<i32>(-7895i, 3452i))), vec4<f32>(-1808f, 1769f, 1125f, 922f), 4294967295u)), Struct_4(Struct_3(-718f, 0i, Struct_2(false, 4294967295u, Struct_1(0u, vec2<i32>(17715i, -16822i))), vec4<f32>(727f, -1065f, 868f, 337f), 0u)), Struct_4(Struct_3(-144f, i32(-2147483648), Struct_2(true, 4294967295u, Struct_1(0u, vec2<i32>(2147483647i, 2147483647i))), vec4<f32>(730f, 599f, -483f, 813f), 6295u)), Struct_4(Struct_3(204f, 22341i, Struct_2(false, 75296u, Struct_1(0u, vec2<i32>(30225i, -49869i))), vec4<f32>(-549f, -1805f, 698f, -759f), 17077u)), Struct_4(Struct_3(-737f, -44523i, Struct_2(true, 4294967295u, Struct_1(15379u, vec2<i32>(0i, -7501i))), vec4<f32>(-394f, -1610f, 516f, -553f), 38396u)), Struct_4(Struct_3(1592f, 1i, Struct_2(false, 0u, Struct_1(1u, vec2<i32>(28689i, 1i))), vec4<f32>(-3403f, -910f, -1041f, 781f), 47632u)), Struct_4(Struct_3(-1829f, i32(-2147483648), Struct_2(true, 1u, Struct_1(51991u, vec2<i32>(2147483647i, 2147483647i))), vec4<f32>(-1000f, 852f, 1262f, 1640f), 0u)), Struct_4(Struct_3(1233f, 2147483647i, Struct_2(false, 70723u, Struct_1(4294967295u, vec2<i32>(6433i, 1i))), vec4<f32>(789f, -1042f, -845f, -2102f), 26525u)), Struct_4(Struct_3(-1534f, 15760i, Struct_2(false, 25649u, Struct_1(10373u, vec2<i32>(2147483647i, 5410i))), vec4<f32>(1120f, 1000f, 1028f, -1000f), 1u)), Struct_4(Struct_3(-807f, -1i, Struct_2(false, 4294967295u, Struct_1(43338u, vec2<i32>(-37146i, i32(-2147483648)))), vec4<f32>(-249f, 265f, 845f, -439f), 44379u)), Struct_4(Struct_3(371f, 0i, Struct_2(true, 13043u, Struct_1(59936u, vec2<i32>(24628i, 2147483647i))), vec4<f32>(-1196f, 125f, -1985f, -1103f), 1u)), Struct_4(Struct_3(-940f, i32(-2147483648), Struct_2(false, 16501u, Struct_1(6662u, vec2<i32>(29566i, 0i))), vec4<f32>(-749f, 2248f, 360f, 326f), 0u)), Struct_4(Struct_3(-2478f, 23154i, Struct_2(true, 1u, Struct_1(51970u, vec2<i32>(36458i, 2187i))), vec4<f32>(1406f, 591f, -1705f, -1087f), 4294967295u)), Struct_4(Struct_3(301f, 22401i, Struct_2(true, 14543u, Struct_1(0u, vec2<i32>(4059i, -21816i))), vec4<f32>(-1409f, 641f, 1192f, -762f), 12687u)), Struct_4(Struct_3(1095f, -30557i, Struct_2(false, 0u, Struct_1(84097u, vec2<i32>(7327i, 7707i))), vec4<f32>(-972f, -1000f, 1669f, 627f), 25760u)), Struct_4(Struct_3(-1186f, -1i, Struct_2(true, 0u, Struct_1(45921u, vec2<i32>(21377i, -9335i))), vec4<f32>(-150f, -632f, 153f, 128f), 51995u)), Struct_4(Struct_3(1238f, i32(-2147483648), Struct_2(false, 42505u, Struct_1(4294967295u, vec2<i32>(i32(-2147483648), -5629i))), vec4<f32>(-674f, -1000f, 195f, -1255f), 0u)), Struct_4(Struct_3(631f, 1i, Struct_2(false, 4294967295u, Struct_1(1u, vec2<i32>(24459i, 2147483647i))), vec4<f32>(960f, -402f, -1642f, 1270f), 0u)));

var<private> global1: u32 = 3649u;

var<private> global2: Struct_3;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: i32) -> u32 {
    return 0u | ~(~(43491u >> ((arg_2.x & arg_1.a) % 32u)));
}

fn func_2(arg_0: Struct_2) -> u32 {
    global1 = _wgslsmith_mod_u32(arg_0.b, abs(_wgslsmith_add_u32(~(~33534u), 100180u)));
    var var_0 = global2.c.c.b;
    let var_1 = Struct_2(false, ~arg_0.b, arg_0.c);
    global1 = 47637u;
    var_0 = _wgslsmith_clamp_vec2_i32(max(select(~(-global2.c.c.b), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -17548i, arg_0.c.b.x), vec3<i32>(arg_0.c.b.x, arg_0.c.b.x, global2.b)), ~arg_0.c.b.x), select(select(vec2<bool>(false, true), vec2<bool>(var_1.a, false), var_1.a), vec2<bool>(false, arg_0.a), select(vec2<bool>(true, false), vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(true, false)))), countOneBits(-vec2<i32>(arg_0.c.b.x, 2147483647i))), global2.c.c.b | select(firstTrailingBit(-global2.c.c.b), vec2<i32>(var_0.x, ~2147483647i), false), vec2<i32>(reverseBits(var_0.x), reverseBits(-arg_0.c.b.x)));
    return func_3(global0[_wgslsmith_index_u32(18699u, 28u)], Struct_1(_wgslsmith_div_u32(global2.c.b, ~u_input.a.x) & firstLeadingBit(_wgslsmith_mult_u32(arg_0.c.a, 1u)), countOneBits(vec2<i32>(abs(global2.c.c.b.x), ~1i))), u_input.a.xz, -32439i);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: Struct_2) -> bool {
    global0 = array<Struct_4, 28>();
    let var_0 = vec3<u32>(41217u, func_2(arg_2), ~0u);
    let var_1 = vec3<u32>(0u, firstTrailingBit(1u << (reverseBits(_wgslsmith_dot_vec3_u32(var_0, vec3<u32>(arg_2.c.a, 4294967295u, var_0.x))) % 32u)), arg_2.c.a);
    let var_2 = Struct_4(Struct_3(1000f, -2147483647i, Struct_2(arg_2.a, global2.c.c.a, arg_2.c), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(543f - global2.d.x) * _wgslsmith_f_op_f32(274f + 680f)), global2.a, global2.a, _wgslsmith_f_op_f32(-arg_0.x)), 0u));
    let var_3 = select(select(select(vec3<bool>(all(vec3<bool>(var_2.a.c.a, arg_2.a, global2.c.a)), global2.c.a, var_1.x <= u_input.a.x), vec3<bool>(global2.c.c.b.x == 1i, global2.c.a, !arg_2.a), all(!vec3<bool>(true, var_2.a.c.a, true))), vec3<bool>(false, true, false), select(vec3<bool>(!arg_2.a, true, all(vec3<bool>(var_2.a.c.a, var_2.a.c.a, false))), vec3<bool>(true, true, true), false)), select(!select(select(vec3<bool>(global2.c.a, arg_2.a, global2.c.a), vec3<bool>(global2.c.a, true, global2.c.a), true), !vec3<bool>(false, global2.c.a, global2.c.a), global2.c.a), vec3<bool>(true, global2.c.a, true), any(vec4<bool>(true, true, false, var_2.a.c.a || true))), !select(vec3<bool>(true, true, true), vec3<bool>(all(vec3<bool>(arg_2.a, false, true)), arg_2.a | true, any(vec4<bool>(arg_2.a, false, arg_2.a, false))), false));
    return any(!vec3<bool>(false, global2.d.x <= _wgslsmith_f_op_f32(arg_0.x * 1431f), any(select(vec2<bool>(var_3.x, var_3.x), var_3.yy, var_3.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.d.x + global2.a) * global2.a))), -2147483647i, Struct_2(select(global2.c.a, global2.c.a, all(vec4<bool>(true, false, true, global2.c.a)) && func_1(vec2<f32>(global2.d.x, 1146f), vec3<i32>(global2.b, 5772i, 1i), global2.c)), 0u, global2.c.c), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(global2.d, _wgslsmith_f_op_vec4_f32(step(global2.d, global2.d))))), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a.x, global2.e, 23758u, u_input.a.x) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(global2.e, 39038u, 44365u, u_input.a.x), vec4<u32>(0u, 4294967295u, u_input.a.x, 4294967295u)), ~vec4<u32>(4294967295u, 29418u, global2.e, global2.e)), ~(~vec4<u32>(17917u, 4294967295u, global2.c.c.a, 0u))));
    let var_1 = !vec4<bool>(~var_0.c.c.b.x >= ((i32(-1i) * -1i) ^ (47633i & var_0.b)), !all(vec2<bool>(false, false)), any(!vec4<bool>(var_0.c.a, global2.c.a, true, true)), !all(!vec2<bool>(var_0.c.a, var_0.c.a)));
    let var_2 = Struct_1(2936u, min(vec2<i32>(-2147483647i, -var_0.c.c.b.x) >> (u_input.a.zz % vec2<u32>(32u)), min(var_0.c.c.b, vec2<i32>(var_0.b, 28931i) | firstTrailingBit(var_0.c.c.b))));
    global2 = Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-216f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -147f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a))), global2.c.a)), -global2.c.c.b.x, Struct_2(!(!(false | var_1.x)), 48597u, Struct_1(~62708u, var_0.c.c.b)), global2.d, 4294967295u);
    global2 = var_0;
    var var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.d.xwy)), -max(vec2<i32>(_wgslsmith_mod_i32(var_2.b.x, -1i), global2.b), ~vec2<i32>(var_0.b, 3403i)), -global2.c.c.b.x);
}

