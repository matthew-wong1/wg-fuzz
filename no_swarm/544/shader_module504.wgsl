// {"0:0":[247,165,210,4,22,153,2,33,16,28,21,191,221,26,253,95,78,31,97,32,19,215,61,8,201,189,9,125,112,81,7,57]}
// Seed: 13462939130496767876

struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12>;

var<private> global1: Struct_1 = Struct_1(vec4<f32>(-318f, -295f, 202f, 242f));

var<private> global2: array<Struct_4, 13>;

var<private> global3: array<vec4<u32>, 15> = array<vec4<u32>, 15>(vec4<u32>(4294967295u, 3955u, 0u, 67776u), vec4<u32>(17342u, 0u, 54540u, 87090u), vec4<u32>(1u, 8397u, 4294967295u, 12207u), vec4<u32>(4294967295u, 3650u, 101541u, 1u), vec4<u32>(0u, 1u, 15338u, 0u), vec4<u32>(70150u, 37590u, 4294967295u, 68889u), vec4<u32>(124400u, 4294967295u, 4294967295u, 1u), vec4<u32>(1u, 14655u, 146476u, 81502u), vec4<u32>(1u, 0u, 4294967295u, 24942u), vec4<u32>(2848u, 9899u, 8302u, 94869u), vec4<u32>(4294967295u, 0u, 4294967295u, 1u), vec4<u32>(4294967295u, 0u, 0u, 4294967295u), vec4<u32>(0u, 19401u, 65211u, 1u), vec4<u32>(66630u, 29369u, 1u, 0u), vec4<u32>(97647u, 117281u, 10419u, 45928u));

fn func_1() -> f32 {
    return exp2(-402f / round(exp2(global1.a.x + global0[0u])));
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: f32, arg_3: Struct_3) -> Struct_2 {
    let var_0 = Struct_2(arg_3.c, Struct_1(min(step(arg_3.c.a, floor(global1.a)), -vec4<f32>(187f, -314f, arg_3.b.x, arg_3.b.x))), ~(arg_3.a >> ((1u >> 0u) & countOneBits(0u))));
    var var_1 = arg_0;
    global2 = array<Struct_4, 13>();
    global0 = array<f32, 12>();
    global1 = arg_3.c;
    return arg_0;
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: u32) -> bool {
    var var_0 = func_2(arg_1, trunc(abs(global0[firstLeadingBit(0u)])), -global0[countOneBits(dot(arg_0.xww, vec3<u32>(arg_3, arg_0.x, arg_0.x)) << firstLeadingBit(arg_0.x))], Struct_3(dot(vec3<i32>(i32(-2147483648), 1i, arg_1.c), vec3<i32>(u_input.a.x, arg_1.c, 2147483647i)) & (u_input.a.x & u_input.b.x), vec4<f32>(ceil(global0[arg_3 - 0u]), global1.a.x, (global0[151857u] / arg_2.b.x) * 137f, 1015f), Struct_1(-(arg_2.c.a / vec4<f32>(-629f, global0[36308u], global0[40140u], global0[arg_0.x])))));
    let var_1 = select(vec4<bool>(false, (4294967295u + arg_3) > (0u + ~56925u), false, !(!(!false))), vec4<bool>((~(i32(-2147483648)) << clamp(arg_3, arg_0.x, arg_0.x)) > max(2147483647i, -arg_1.c), all(vec2<bool>(!true, false != false)), (~(-1i) & select(var_0.c, var_0.c, true)) < (-17025i - -1i), !false), vec4<bool>(2147483647i == (var_0.c + arg_2.a), false, false, all(vec4<bool>(!false, any(vec3<bool>(false, false, false)), true, true))));
    global3 = array<vec4<u32>, 15>();
    global2 = array<Struct_4, 13>();
    global3 = array<vec4<u32>, 15>();
    return !any(!(!vec2<bool>(true, var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(vec4<f32>(abs(-(-1673f)) - -func_1(), (global1.a.x + (1000f + global1.a.x)) * (global0[1u] * 725f), -(-(global1.a.x - global1.a.x)), global0[select((1u & 0u) << firstTrailingBit(16699u), abs(0u), func_3(~global3[34734u], func_2(Struct_2(Struct_1(vec4<f32>(global1.a.x, -1323f, global1.a.x, global0[0u])), Struct_1(global1.a), u_input.a.x), global1.a.x, global0[0u], Struct_3(u_input.a.x, global1.a, Struct_1(vec4<f32>(414f, 1008f, 534f, 1360f)))), Struct_3(u_input.b.x, vec4<f32>(-587f, global1.a.x, 1783f, global0[1u]), Struct_1(vec4<f32>(global1.a.x, global1.a.x, -677f, global0[0u]))), ~1u))]));
    global0 = array<f32, 12>();
    global2 = array<Struct_4, 13>();
    global3 = array<vec4<u32>, 15>();
    var var_0 = Struct_2(func_2(func_2(func_2(func_2(Struct_2(Struct_1(vec4<f32>(-2006f, global1.a.x, 365f, -898f)), Struct_1(vec4<f32>(global1.a.x, 1798f, global0[1u], -625f)), -1i), 1000f, -883f, Struct_3(1024i, vec4<f32>(635f, 657f, -1319f, 208f), Struct_1(global1.a))), global0[0u] / global1.a.x, -global0[4294967295u], Struct_3(-36472i, global1.a, Struct_1(vec4<f32>(global1.a.x, -821f, global0[1u], global1.a.x)))), -148f, global1.a.x, Struct_3(~2147483647i, global1.a, func_2(Struct_2(Struct_1(vec4<f32>(global0[63645u], global0[0u], 386f, -2367f)), Struct_1(global1.a), 2147483647i), -1898f, global1.a.x, Struct_3(u_input.b.x, vec4<f32>(-144f, 1239f, global0[32312u], 343f), Struct_1(global1.a))).b)), -(-global0[1u] * abs(658f)), global1.a.x, Struct_3(u_input.b.x, -vec4<f32>(-418f, global0[1u], global1.a.x, -750f), func_2(func_2(Struct_2(Struct_1(global1.a), Struct_1(vec4<f32>(global1.a.x, global0[7198u], global1.a.x, -984f)), -1927i), 1219f, 964f, Struct_3(u_input.c, global1.a, Struct_1(vec4<f32>(1744f, 583f, -141f, -227f)))), -364f, global0[firstTrailingBit(37835u)], Struct_3(u_input.c, global1.a, Struct_1(vec4<f32>(592f, global0[38448u], global0[0u], -581f)))).b)).b, func_2(Struct_2(func_2(func_2(Struct_2(Struct_1(global1.a), Struct_1(global1.a), i32(-2147483648)), -893f, 513f, Struct_3(1i, global1.a, Struct_1(vec4<f32>(542f, -1000f, 749f, 1150f)))), -1000f, global0[24673u], Struct_3(-1i, global1.a, Struct_1(vec4<f32>(global0[0u], global0[11331u], -647f, -150f)))).a, func_2(func_2(Struct_2(Struct_1(global1.a), Struct_1(vec4<f32>(global1.a.x, 1074f, global0[38266u], global1.a.x)), u_input.c), global1.a.x, global1.a.x, Struct_3(1i, vec4<f32>(global1.a.x, 325f, 1062f, global1.a.x), Struct_1(global1.a))), -(-1381f), -3923f / global1.a.x, Struct_3(26262i, global1.a, Struct_1(global1.a))).a, -1i), global0[~abs(3643u | 31316u)], -(-(-796f * global1.a.x)), Struct_3(u_input.a.x, vec4<f32>(max(161f, global0[101667u]), ceil(global0[0u]), global1.a.x, -601f), func_2(func_2(Struct_2(Struct_1(global1.a), Struct_1(vec4<f32>(-696f, global1.a.x, global1.a.x, 1235f)), -28626i), -1196f, -250f, Struct_3(2147483647i, global1.a, Struct_1(vec4<f32>(-253f, 968f, -953f, global0[6233u])))), floor(-1069f), -585f, Struct_3(u_input.b.x, vec4<f32>(623f, 604f, 114f, global1.a.x), Struct_1(vec4<f32>(1296f, global0[1u], global0[0u], -796f)))).b)).a, (~(-u_input.c) | 2147483647i) << ~(~(~78650u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~57313u, dot((global3[0u] - vec4<u32>(1926u, 3826u, 4294967295u, 4294967295u)) * global3[firstTrailingBit(3275u)], max(vec4<u32>(62829u, 1u, 25492u, 0u) | global3[0u], ~vec4<u32>(1u, 4294967295u, 26232u, 1u)))), -8967i, ~(~clamp(52730u, 1u * 4294967295u, 45595u)));
}

