// {"0:0":[88,232,168,34,19,144,184,193,102,134,136,70,147,227,8,155]}
// Seed: 1250593453213816472

struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(14839u, 4294967295u);

var<private> global1: array<f32, 18> = array<f32, 18>(1000f, -363f, 1619f, 772f, -804f, 3345f, -412f, 664f, -329f, 393f, -1000f, 317f, 506f, -885f, -2067f, 1000f, 1000f, 851f);

var<private> global2: array<vec2<u32>, 8>;

var<private> global3: Struct_1;

var<private> global4: vec3<bool> = vec3<bool>(true, false, false);

fn func_3(arg_0: vec2<i32>, arg_1: vec3<f32>) -> bool {
    var var_0 = Struct_1(global3.a, -11466i ^ select(-17502i, ~u_input.b.x, !false), trunc(-2422f), global3.d);
    let var_1 = -1249f;
    let var_2 = -arg_1.x;
    global4 = !select(vec3<bool>(global0.x >= (u_input.a + 81932u), all(vec2<bool>(false, false)), -global1[u_input.a] > exp2(global1[u_input.a])), select(!select(vec3<bool>(global4.x, global4.x, true), vec3<bool>(global4.x, global4.x, false), vec3<bool>(global4.x, global4.x, true)), !(!vec3<bool>(false, global4.x, false)), !(!vec3<bool>(global4.x, global4.x, true))), ~(u_input.a + global0.x) < 18259u);
    let var_3 = u_input.b.x;
    return all(!vec4<bool>(select(!false, global4.x && true, global4.x), any(select(vec3<bool>(global4.x, true, global4.x), vec3<bool>(false, global4.x, true), false)), reverseBits(8202u) <= global0.x, global4.x));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    let var_0 = select(vec4<bool>(any(vec3<bool>(false, global4.x, true)), !(!global4.x), func_3(u_input.b, abs(arg_1) - max(arg_1, vec3<f32>(-364f, global1[u_input.a], global3.c))), !false | true), vec4<bool>(global4.x, any(vec2<bool>(any(vec3<bool>(false, true, global4.x)), true)), any(!vec2<bool>(true, global4.x)), true), !select(!vec4<bool>(global4.x, true, global4.x, global4.x), select(select(vec4<bool>(false, global4.x, global4.x, true), vec4<bool>(true, global4.x, false, true), vec4<bool>(global4.x, true, global4.x, true)), !vec4<bool>(true, global4.x, true, false), func_3(vec2<i32>(u_input.b.x, global3.a), vec3<f32>(arg_2.c, global3.c, -763f))), global4.x));
    var var_1 = select(select(var_0.yy, !global4.zy, !var_0.x), !global4.zx, true);
    global1 = array<f32, 18>();
    var var_2 = arg_0.c;
    let var_3 = (countOneBits(vec3<u32>(min(4294967295u, 34313u), 1u, abs(global0.x))) ^ ~(~(vec3<u32>(4294967295u, 0u, global0.x) - vec3<u32>(arg_3, 0u, u_input.a)))) % (~(reverseBits(vec3<u32>(0u, u_input.a, arg_3)) | vec3<u32>(global0.x, u_input.a, u_input.a)) | vec3<u32>(u_input.a, abs(~arg_3), ~(~46312u)));
    return Struct_1(-(select(countOneBits(global3.a), 11425i, false) / global3.b), -2147483647i, 1473f, step(-(floor(-599f) * 1000f), abs(min(global3.d, arg_1.x))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    global4 = !select(vec3<bool>(!(!true), !(arg_0.c >= global3.c), (10579i <= global3.a) || (155f < arg_1.d)), select(!vec3<bool>(global4.x, global4.x, global4.x), !select(vec3<bool>(global4.x, true, global4.x), vec3<bool>(global4.x, global4.x, global4.x), false), !(!vec3<bool>(global4.x, global4.x, false))), (false || (false != global4.x)) & global4.x);
    global2 = array<vec2<u32>, 8>();
    let var_0 = -1i;
    global1 = array<f32, 18>();
    global1 = array<f32, 18>();
    return 1i;
}

fn func_1() -> i32 {
    var var_0 = sign(select(-trunc(vec4<f32>(285f, global1[42423u], global3.d, -1961f)), -(vec4<f32>(-252f, global1[global0.x], global1[u_input.a], -1774f) / vec4<f32>(global3.c, global1[66593u], -1567f, -1003f)), vec4<bool>(global4.x, any(vec2<bool>(global4.x, global4.x)), false, !global4.x)) + -(vec4<f32>(global1[10545u], 332f, global1[1u], -985f) - (vec4<f32>(global3.c, -471f, 1305f, -859f) - vec4<f32>(-2127f, global1[global0.x], 134f, 540f))));
    let var_1 = ~vec4<u32>(86075u, global0.x << 66991u, ~(u_input.a >> global0.x), ~min(dot(vec2<u32>(24739u, u_input.a), vec2<u32>(global0.x, 1u)), global0.x));
    var var_2 = abs(countOneBits(u_input.b)) | vec2<i32>(~func_4(Struct_1(u_input.b.x, i32(-2147483648), global3.d, global1[u_input.a]), func_2(Struct_1(-21087i, u_input.b.x, global3.c, global1[var_1.x]), var_0.zyw, Struct_1(global3.b, u_input.b.x, -721f, 582f), 4294967295u)), global3.b);
    var var_3 = func_2(Struct_1(func_2(Struct_1(var_2.x, ~var_2.x, var_0.x / var_0.x, -1065f - -1169f), (vec3<f32>(global3.d, -2148f, -297f) * var_0.yzy) + (vec3<f32>(var_0.x, global1[u_input.a], var_0.x) * var_0.zxz), Struct_1(-u_input.b.x, var_2.x, var_0.x, func_2(Struct_1(u_input.b.x, u_input.b.x, -669f, global1[global0.x]), vec3<f32>(212f, var_0.x, 293f), Struct_1(global3.a, 26012i, 680f, -1486f), 4430u).d), clamp(22930u / 7065u, ~4294967295u, 4294967295u)).b, global3.b, round(-var_0.x), (-var_0.x / -(-141f)) + step(464f, -1000f)), -(-vec3<f32>(var_0.x, sign(346f), global1[13115u + global0.x])), Struct_1(global3.b, 38111i, global1[4294967295u ^ 9973u] * -(-(-115f)), -trunc(-1000f) + -1218f), ~select(29314u, dot(~var_1, vec4<u32>(59044u, global0.x, global0.x, 56700u)), true));
    global2 = array<vec2<u32>, 8>();
    return 0i;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = Struct_1(dot(-firstLeadingBit(select(vec2<i32>(-50874i, -1i), vec2<i32>(i32(-2147483648), 51885i), global4.x)), ~clamp(vec2<i32>(-12947i, var_0.b) % vec2<i32>(u_input.b.x, i32(-2147483648)), vec2<i32>(-9031i, 7638i), u_input.b + vec2<i32>(u_input.b.x, 0i))), select(arg_0.a, i32(-2147483648) | i32(-2147483648), global4.x), -(abs(-509f) + (277f / global3.d)) * -759f, step(-1000f, -710f));
    global1 = array<f32, 18>();
    var var_2 = !global4.x;
    let var_3 = vec4<i32>(~(-12757i), 0i, ~select(-8271i, global3.b, !true), ~global3.b);
    return Struct_1(~(-37437i), var_3.x * var_1.b, max(2460f, 727f), -max(var_1.c, 1474f));
}

fn func_6(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    var var_0 = func_2(Struct_1(((10702i / arg_1) << (1u >> u_input.a)) >> global0.x, ~u_input.b.x, -round(min(global3.c, 994f)), func_2(arg_0, vec3<f32>(-global1[u_input.a], -arg_0.c, global3.c + -128f), func_2(arg_0, -vec3<f32>(725f, -1000f, 789f), arg_0, 1u), ~clamp(u_input.a, global0.x, u_input.a)).d), -(-(-vec3<f32>(-242f, -1093f, global3.d))) - (vec3<f32>(-393f, global3.c, global1[global0.x ^ u_input.a]) - exp2(-vec3<f32>(-1000f, 1000f, 729f))), arg_0, 53994u & 14342u);
    var var_1 = Struct_1(firstTrailingBit(~var_0.a), i32(-2147483648), -(arg_0.c / 348f), exp2(789f));
    global2 = array<vec2<u32>, 8>();
    let var_2 = arg_0;
    var var_3 = false;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_1(-(-u_input.b.x * -16224i), ~global3.b, global1[1u], 276f);
    var var_0 = func_6(func_5(Struct_1(func_1() ^ -global3.a, -(-12345i), step(-603f, -global3.d), -global1[dot(vec3<u32>(global0.x, global0.x, 15309u), vec3<u32>(10168u, 82182u, u_input.a))])), ~(~reverseBits(-8704i << u_input.a)));
    let var_1 = Struct_1(7601i, global3.a, global3.d, -1151f / (-global3.d * ceil(global3.c)));
    let var_2 = clamp(vec4<i32>(~min(2147483647i, -24265i), var_0.b, max(2147483647i >> u_input.a, func_2(var_1, vec3<f32>(-1376f, -1279f, global1[u_input.a]), Struct_1(1i, 24352i, 2273f, global1[global0.x]), 1u).b), func_1()) << ~vec4<u32>(27923u, 33404u * u_input.a, global0.x, global0.x), (-(-vec4<i32>(var_0.a, -40655i, var_0.a, u_input.b.x)) >> (vec4<u32>(4294967295u, 0u, 5326u, u_input.a) >> ~vec4<u32>(65672u, 35909u, global0.x, 37872u))) ^ (vec4<i32>(20798i, u_input.b.x >> u_input.a, global3.b & 0i, abs(var_0.b)) + (max(vec4<i32>(u_input.b.x, 1i, global3.b, var_0.a), vec4<i32>(14409i, 34327i, global3.b, -7854i)) + (vec4<i32>(-49294i, 2147483647i, -49163i, global3.b) / vec4<i32>(var_0.a, u_input.b.x, var_1.b, 1i)))), abs(-(~vec4<i32>(-49037i, 1i, 43935i, i32(-2147483648)))));
    let x = u_input.a;
    s_output = StorageBuffer(-(~(vec3<i32>(25474i, var_2.x, -1i) + vec3<i32>(var_2.x, var_0.a, var_1.a))) + vec3<i32>(-1i, var_0.b, -var_1.b / -(-46096i)), func_6(func_5(func_5(var_1)), var_0.b).c, ~vec4<u32>(20255u, ~reverseBits(75254u), global0.x >> (u_input.a * global0.x), 0u));
}

