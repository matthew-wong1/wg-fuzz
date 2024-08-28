// {"0:0":[34,131,112,238]}
// Seed: 8592427696087419307

struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: u32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(50398u, 4294967295u);

var<private> global1: array<u32, 8> = array<u32, 8>(0u, 38022u, 1u, 0u, 30289u, 4294967295u, 4294967295u, 0u);

var<private> global2: array<vec4<f32>, 19> = array<vec4<f32>, 19>(vec4<f32>(250f, 195f, -939f, -693f), vec4<f32>(-813f, -1173f, 1477f, 232f), vec4<f32>(-1805f, -287f, 155f, 107f), vec4<f32>(179f, 203f, -853f, -850f), vec4<f32>(-692f, -874f, 323f, 1000f), vec4<f32>(-443f, 857f, 903f, 1411f), vec4<f32>(148f, 1572f, 349f, -1471f), vec4<f32>(644f, -1274f, 463f, -210f), vec4<f32>(-649f, -1245f, 381f, 1104f), vec4<f32>(421f, -1432f, 221f, 809f), vec4<f32>(-1000f, 687f, -530f, 1000f), vec4<f32>(1828f, -894f, 145f, 2235f), vec4<f32>(-645f, -946f, 801f, -359f), vec4<f32>(-1068f, 986f, 2069f, 113f), vec4<f32>(1000f, -1000f, -1102f, 145f), vec4<f32>(-1384f, -761f, 1930f, 390f), vec4<f32>(2057f, -1000f, 1273f, 724f), vec4<f32>(133f, -284f, -460f, 779f), vec4<f32>(-2156f, 345f, -870f, 1502f));

var<private> global3: bool;

var<private> global4: Struct_2;

fn func_3(arg_0: i32, arg_1: u32, arg_2: f32, arg_3: bool) -> bool {
    var var_0 = !vec3<bool>(arg_3, !false, all(!vec2<bool>(true, false)));
    let var_1 = Struct_1(-global4.a.a);
    let var_2 = global0.x;
    var var_3 = vec4<u32>(~1u / (global0.x >> 1u), ~(~(27515u + 1u)) >> u_input.a, global0.x, global4.b.x);
    let var_4 = Struct_3(arg_2, Struct_2(global4.a, vec4<u32>(~global4.b.x, ~var_3.x, 98671u, 43499u) / vec4<u32>(~u_input.a, ~var_3.x, global4.b.x - arg_1, ~u_input.a)), Struct_2(Struct_1((1i << 7487u) % global4.a.a), vec4<u32>(~4294967295u, global0.x, ~min(1u, global1[0u]), var_3.x)), Struct_2(global4.a, abs(global4.b)));
    return firstLeadingBit(((1i & 70092i) & -global4.a.a) / -848i) >= 9822i;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_3) -> Struct_2 {
    let var_0 = global2[global4.b.x ^ ~global4.b.x];
    global3 = func_3(arg_1.x, ~(~1u), var_0.x, (~arg_0.x - ~min(arg_3.c.b.x, arg_3.c.b.x)) == (~0u >> (global1[select(35190u, global1[37385u], true)] ^ (global1[u_input.a] + 4582u))));
    global4 = Struct_2(arg_2, vec4<u32>(dot(arg_0.zy >> vec2<u32>(0u, 4294967295u), ~arg_0.yy) * ((arg_3.d.b.x / global4.b.x) * 0u), u_input.a, ~(1u * 1u) | arg_3.c.b.x, abs(dot(arg_3.b.b, arg_3.d.b)) >> reverseBits(global4.b.x / 11305u)));
    let var_1 = Struct_4(max(-1534f, ceil(304f) + 1000f) / 675f, func_3(-(i32(-2147483648)), 1914u, 593f, (dot(arg_0, global4.b.yzz) != (arg_3.d.b.x + 1u)) && all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), false))), arg_3);
    global2 = array<vec4<f32>, 19>();
    return Struct_2(arg_2, clamp(arg_3.b.b, clamp(~(global4.b << vec4<u32>(82847u, 62860u, 100450u, u_input.a)), ~global4.b, vec4<u32>(~global0.x, select(arg_0.x, 17846u, var_1.b), min(global0.x, arg_3.b.b.x), min(1u, 12246u))), arg_3.b.b));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec2<i32>) -> Struct_4 {
    var var_0 = -826f;
    var var_1 = vec2<f32>(938f, -(arg_0.c.a / -241f) * -(-1539f + sign(arg_0.c.a)));
    global3 = arg_0.b;
    global3 = (((1i + firstTrailingBit(arg_2.x)) + (dot(vec4<i32>(arg_2.x, arg_1.a, arg_0.c.b.a.a, arg_1.a), vec4<i32>(i32(-2147483648), arg_1.a, -30806i, -33498i)) >> 63540u)) < arg_0.c.c.a.a) && false;
    var var_2 = ~select(~4294967295u, 4294967295u, ((global4.a.a - 0i) - -global4.a.a) != dot(firstTrailingBit(vec2<i32>(global4.a.a, 2147483647i)), firstTrailingBit(arg_2)));
    return arg_0;
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: vec4<i32>, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = false;
    let var_1 = max(abs(vec3<u32>(global4.b.x, u_input.a & u_input.a, func_2(global4.b.wxx, arg_0, Struct_1(22715i), Struct_3(775f, arg_1.c.b, Struct_2(global4.a, arg_1.c.b.b), Struct_2(global4.a, vec4<u32>(u_input.a, global4.b.x, u_input.a, 39611u)))).b.x) / (vec3<u32>(1u, 0u, global4.b.x) / select(vec3<u32>(global0.x, arg_1.c.b.b.x, 47044u), global4.b.xyy, vec3<bool>(var_0, arg_1.b, false)))), vec3<u32>(countOneBits(dot(vec4<u32>(global0.x, arg_1.c.b.b.x, arg_1.c.b.b.x, global4.b.x) >> arg_1.c.b.b, func_2(arg_1.c.b.b.xww, arg_0, global4.a, arg_1.c).b)), firstLeadingBit(func_2(vec3<u32>(u_input.a, global0.x, global1[global0.x]), arg_2.zz, arg_1.c.b.a, Struct_3(arg_3.x, arg_1.c.b, arg_1.c.c, Struct_2(global4.a, vec4<u32>(arg_1.c.d.b.x, 27442u, 4294967295u, global1[21457u])))).b.x / firstLeadingBit(54153u)), global1[((21524u & arg_1.c.d.b.x) >> u_input.a) - 0u]));
    global2 = array<vec4<f32>, 19>();
    return global4.a;
}

fn func_1() -> f32 {
    let var_0 = global4.b;
    let var_1 = 4294967295u;
    let var_2 = func_5(~(firstLeadingBit(vec2<i32>(-605i, global4.a.a) + vec2<i32>(-1i, 13783i)) - -vec2<i32>(global4.a.a, global4.a.a)), func_4(Struct_4(-1845f * 1120f, any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true))), Struct_3(-1088f, func_2(vec3<u32>(1u, var_0.x, global0.x), vec2<i32>(global4.a.a, 1i), Struct_1(-1i), Struct_3(1000f, Struct_2(global4.a, vec4<u32>(global4.b.x, 17066u, global4.b.x, global4.b.x)), Struct_2(global4.a, global4.b), Struct_2(Struct_1(1i), global4.b))), func_2(vec3<u32>(0u, 78854u, 19447u), vec2<i32>(-64298i, -30551i), Struct_1(2147483647i), Struct_3(236f, Struct_2(global4.a, vec4<u32>(var_0.x, 1u, 121244u, 62611u)), Struct_2(global4.a, global4.b), Struct_2(Struct_1(-12048i), global4.b))), func_2(global4.b.xxy, vec2<i32>(15480i, global4.a.a), Struct_1(global4.a.a), Struct_3(1000f, Struct_2(Struct_1(global4.a.a), global4.b), Struct_2(global4.a, vec4<u32>(global1[u_input.a], global1[15705u], 1u, 1u)), Struct_2(global4.a, vec4<u32>(u_input.a, global0.x, 0u, 1u)))))), func_2(vec3<u32>(min(4294967295u, var_0.x), ~4294967295u, var_0.x / 1u), vec2<i32>(global4.a.a / 16310i, -51895i), func_2(firstLeadingBit(global4.b.yxw), vec2<i32>(1i, 1i), func_2(vec3<u32>(12791u, var_1, 51096u), vec2<i32>(1i, global4.a.a), Struct_1(i32(-2147483648)), Struct_3(-785f, Struct_2(Struct_1(28384i), global4.b), Struct_2(Struct_1(global4.a.a), vec4<u32>(0u, var_1, 83171u, 4294967295u)), Struct_2(global4.a, vec4<u32>(34078u, 11317u, var_1, 55813u)))).a, Struct_3(-1024f, Struct_2(global4.a, global4.b), Struct_2(Struct_1(1i), global4.b), Struct_2(Struct_1(global4.a.a), vec4<u32>(var_0.x, var_0.x, global4.b.x, global4.b.x)))).a, Struct_3(ceil(2336f), func_2(var_0.zwx, vec2<i32>(-37921i, global4.a.a), Struct_1(global4.a.a), Struct_3(-799f, Struct_2(Struct_1(global4.a.a), vec4<u32>(111826u, global4.b.x, 12495u, 15387u)), Struct_2(Struct_1(-1i), vec4<u32>(8222u, global4.b.x, var_0.x, 100963u)), Struct_2(global4.a, vec4<u32>(var_1, 1u, var_1, global1[global1[global1[var_0.x]]])))), func_2(var_0.zyx, vec2<i32>(global4.a.a, -1i), global4.a, Struct_3(1000f, Struct_2(Struct_1(global4.a.a), global4.b), Struct_2(Struct_1(global4.a.a), vec4<u32>(var_1, var_0.x, 4294967295u, global1[var_1])), Struct_2(global4.a, vec4<u32>(4294967295u, global1[global1[11272u]], 0u, 4294967295u)))), Struct_2(Struct_1(global4.a.a), global4.b))).a, vec2<i32>(global4.a.a, func_2(vec3<u32>(4294967295u, 1u, 13207u) % global4.b.wxz, vec2<i32>(-1i, global4.a.a) & vec2<i32>(6920i, -1i), func_2(vec3<u32>(1u, global0.x, global1[global1[0u]]), vec2<i32>(global4.a.a, 1i), Struct_1(global4.a.a), Struct_3(1000f, Struct_2(Struct_1(global4.a.a), global4.b), Struct_2(global4.a, vec4<u32>(global4.b.x, var_0.x, var_0.x, global4.b.x)), Struct_2(Struct_1(global4.a.a), vec4<u32>(global4.b.x, 31761u, 1u, 4294967295u)))).a, Struct_3(528f, Struct_2(global4.a, vec4<u32>(global4.b.x, 1u, global1[global0.x], 1u)), Struct_2(Struct_1(global4.a.a), global4.b), Struct_2(Struct_1(-6841i), global4.b))).a.a)), min((vec4<i32>(2147483647i, -1i, global4.a.a, 1i) - (vec4<i32>(global4.a.a, global4.a.a, global4.a.a, -36263i) % vec4<i32>(16113i, 1i, global4.a.a, 0i))) - -firstLeadingBit(vec4<i32>(-8708i, global4.a.a, global4.a.a, global4.a.a)), ~vec4<i32>(global4.a.a, global4.a.a, -478i, 0i) ^ (-vec4<i32>(-1i, 1i, -1i, -51441i) << ~vec4<u32>(4294967295u, global1[var_1], 1u, u_input.a))), vec2<f32>(select(-(-(-769f)), -(-(-1188f)), true), -exp2(-256f)));
    global3 = global4.a.a < 14609i;
    global2 = array<vec4<f32>, 19>();
    return 1000f;
}

fn func_6(arg_0: f32, arg_1: f32, arg_2: Struct_1, arg_3: i32) -> u32 {
    var var_0 = 2147483647i;
    let var_1 = -arg_1;
    return 4223u;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = max(0u + 4294967295u, ~(~0u)) >= countOneBits(func_6(-442f, step(-(-1518f), func_1()), global4.a, -select(global4.a.a, -83640i, false)));
    global3 = false;
    var var_0 = vec2<i32>(-2351i - global4.a.a, -global4.a.a);
    global1 = array<u32, 8>();
    let var_1 = Struct_4(exp2(-1186f), !(!(131f < (-110f * -711f))), Struct_3(1534f - step(1341f / 1286f, -(-113f)), func_4(func_4(func_4(Struct_4(1000f, false, Struct_3(146f, Struct_2(Struct_1(var_0.x), vec4<u32>(global1[u_input.a], 0u, global1[global1[global0.x]], 0u)), Struct_2(global4.a, vec4<u32>(global0.x, 33261u, 7407u, global4.b.x)), Struct_2(Struct_1(1i), global4.b))), global4.a, vec2<i32>(23164i, var_0.x)), Struct_1(var_0.x), min(vec2<i32>(var_0.x, 0i), vec2<i32>(-1i, 2147483647i))), global4.a, vec2<i32>(var_0.x + var_0.x, global4.a.a)).c.b, func_2(global4.b.xxy, min(max(vec2<i32>(global4.a.a, -1i), vec2<i32>(1i, var_0.x)), firstLeadingBit(vec2<i32>(global4.a.a, 2147483647i))), func_5(-vec2<i32>(global4.a.a, var_0.x), Struct_4(1039f, false, Struct_3(-172f, Struct_2(Struct_1(var_0.x), global4.b), Struct_2(Struct_1(-1i), global4.b), Struct_2(Struct_1(var_0.x), vec4<u32>(global0.x, global4.b.x, global0.x, 12430u)))), vec4<i32>(-62689i, 23914i, global4.a.a, global4.a.a) / vec4<i32>(18895i, 1i, var_0.x, -73216i), vec2<f32>(-1736f, -1077f)), func_4(Struct_4(1484f, false, Struct_3(-849f, Struct_2(Struct_1(global4.a.a), global4.b), Struct_2(global4.a, vec4<u32>(4294967295u, global0.x, global1[4294967295u], 4294967295u)), Struct_2(global4.a, vec4<u32>(global1[global4.b.x], 21335u, global4.b.x, 9771u)))), global4.a, firstTrailingBit(vec2<i32>(-1i, global4.a.a))).c), Struct_2(Struct_1(2147483647i), global4.b)));
    global4 = var_1.c.b;
    let x = u_input.a;
    s_output = StorageBuffer(clamp(vec2<i32>(16417i * -3260i, var_1.c.c.a.a) - (vec2<i32>(0i, var_1.c.d.a.a) >> ~global4.b.yx), -(-select(vec2<i32>(-44539i, 0i), vec2<i32>(var_1.c.c.a.a, global4.a.a), true)), ~reverseBits(vec2<i32>(var_0.x, global4.a.a))), select(-(-vec3<f32>(-1046f, -1509f, var_1.c.a)), vec3<f32>(var_1.c.a * var_1.c.a, 656f, -1448f), vec3<bool>(all(vec4<bool>(false, false, false, false)), !false, var_1.b)) - (vec3<f32>(min(var_1.a, var_1.a), var_1.a, 776f) + sign(-vec3<f32>(132f, -608f, -1927f))), 38065u, global4.b.x, -993f);
}

