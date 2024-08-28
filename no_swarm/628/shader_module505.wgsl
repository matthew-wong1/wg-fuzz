// {"0:0":[71,234,206,74,253,49,249,20,55,108,35,21,13,96,173,10,90,207,253,235,192,211,130,78,34,139,132,20,198,115,199,222]}
// Seed: 14639692200459371154

struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: f32,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 16> = array<i32, 16>(11903i, 1i, 45633i, 11948i, 9490i, 23915i, 1i, 1i, -12703i, 83195i, i32(-2147483648), -1166i, 0i, -13373i, -31798i, 0i);

var<private> global1: u32 = 4294967295u;

var<private> global2: array<vec4<u32>, 21>;

var<private> global3: array<u32, 26>;

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: i32) -> i32 {
    let var_0 = -abs(vec4<f32>(round(-130f), -1000f, -600f, -656f)) / trunc(vec4<f32>(-(-1318f) - (-180f + 576f), -229f, -519f + floor(-1000f), exp2(249f)));
    global3 = array<u32, 26>();
    return arg_2;
}

fn func_2(arg_0: vec4<bool>, arg_1: bool) -> bool {
    global1 = (66155u ^ 4294967295u) / 1u;
    let var_0 = u_input.c.x + select(dot(countOneBits(~vec2<i32>(-43181i, u_input.c.x)), min(vec2<i32>(global0[u_input.b.x], global0[1u]), u_input.c) & u_input.c), (~46268i % 1i) | (func_3(arg_1, Struct_1(global3[72438u]), u_input.a) << global3[~u_input.b.x]), true);
    return u_input.d != -(~0i);
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = select(!vec4<bool>(!(-356f == -967f), true | func_2(vec4<bool>(true, false, false, true), false), false, select(true, true & true, global0[27821u] <= arg_0)), select(select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true)), !vec4<bool>(false, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), true)), !vec4<bool>(false, true, false, true), u_input.b.x >= 31646u), vec4<bool>(all(!vec4<bool>(true, true, true, false)), !(false & true), !false, floor(725f) > trunc(-990f)), global3[u_input.b.x] < 4294967295u), !(~(arg_0 + 1i) > clamp(-17547i, arg_0 >> 1u, 2147483647i)));
    var_0 = vec4<bool>(abs(-722f + -(-1354f)) < abs((-1967f + -1129f) + -1422f), true, !true, -((-215f * 1351f) * (552f / -2226f)) >= step(step(-2675f, 529f), 928f));
    global0 = array<i32, 16>();
    var var_1 = select(vec4<bool>(false, true, false, var_0.x), !vec4<bool>(true, all(vec4<bool>(false, false, var_0.x, false)), all(select(vec2<bool>(var_0.x, true), var_0.yx, var_0.xy)), (global3[u_input.b.x] + global3[59070u]) > global3[global3[1u]]), var_0.x | true);
    let var_2 = step(-(-vec3<f32>(-292f, 918f - -622f, -414f)), vec3<f32>(-(-1370f) / (trunc(-494f) / abs(-1376f)), 204f, -1629f));
    return Struct_1(~global3[reverseBits(global3[0u])]);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32, arg_3: Struct_3) -> i32 {
    var var_0 = vec3<u32>(~arg_0.e.a, 65155u, ~abs(arg_0.e.a));
    global0 = array<i32, 16>();
    let var_1 = ~(~dot(vec2<u32>(arg_0.e.a, select(80389u, 0u, true)), ~(~vec2<u32>(36474u, var_0.x))));
    var var_2 = (step(sign(-vec3<f32>(-1735f, 1035f, arg_0.d)), trunc(vec3<f32>(arg_2, 325f, arg_3.a.c) / vec3<f32>(arg_3.a.d, arg_2, arg_0.d))) * round(-(-vec3<f32>(215f, arg_0.d, 193f)))) * vec3<f32>(2353f, -(-arg_0.c), exp2(-408f));
    global3 = array<u32, 26>();
    return arg_0.b.x % 33763i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.e;
    var var_1 = Struct_2(min(-(-9895i / i32(-2147483648)), 0i) + func_4(Struct_2(select(global0[1u], global0[global3[5861u]], true), ~vec4<i32>(u_input.a, global0[u_input.b.x], u_input.a, global0[global3[u_input.b.x]]), -(-1128f), -1467f + -273f, Struct_1(4294967295u)), func_1(1i + 43606i), round(-1259f), Struct_3(Struct_2(global0[63195u], vec4<i32>(global0[global3[4294967295u]], 29536i, global0[global3[u_input.b.x]], global0[global3[global3[u_input.b.x]]]), -325f, -1223f, Struct_1(4294967295u)))), ~(vec4<i32>(~73254i, dot(vec2<i32>(-44147i, 6359i), vec2<i32>(u_input.a, u_input.e)), abs(u_input.d), reverseBits(-1i)) + ~(vec4<i32>(-1i, -18125i, 2147483647i, u_input.c.x) ^ vec4<i32>(1i, global0[u_input.b.x], global0[u_input.b.x], 1i))), (217f / trunc(-248f)) / -((-425f / -577f) / -703f), 728f, Struct_1(~8957u));
    var var_2 = !select(select(select(!vec2<bool>(true, true), vec2<bool>(false, true), true), select(!vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), !vec2<bool>(true, true)), func_2(vec4<bool>(true, false, false, true), !true)), !vec2<bool>(false, true || false), !true);
    let var_3 = sign(-floor(sign(vec2<f32>(var_1.d, -236f)) / vec2<f32>(-1935f, -1556f)));
    var_0 = dot(var_1.b.wwx, -(-(~var_1.b.xww)));
    global3 = array<u32, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(-34491i, var_3.x, ceil(-step(vec4<f32>(var_1.d, 1000f, -761f, var_3.x) / vec4<f32>(1596f, 250f, var_3.x, -101f), vec4<f32>(var_1.d, var_1.d, 930f, var_1.c))), (~abs(vec3<u32>(u_input.b.x, 23339u, 4294967295u)) * ~(~vec3<u32>(4294967295u, 0u, 2027u))) * vec3<u32>(global3[44881u] - (var_1.e.a >> var_1.e.a), 310u, ~41071u / (global3[58562u] / 0u)), ~(global0[var_1.e.a] >> 46749u) + -(-1i / (-2276i << global3[u_input.b.x])));
}

