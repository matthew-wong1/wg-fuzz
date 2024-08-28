// {"0:0":[19,36,196,149,136,5,233,200,146,7,170,4,127,36,177,189]}
// Seed: 9237290445166666489

struct Struct_1 {
    a: u32,
    b: f32,
    c: u32,
    d: bool,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29>;

var<private> global1: bool;

var<private> global2: array<Struct_4, 19>;

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_3, arg_3: f32) -> f32 {
    var var_0 = vec2<f32>(arg_1.b + (-(arg_1.b * arg_1.b) * -(1000f + -1092f)), arg_1.b);
    var var_1 = arg_2.a.a.zz;
    let var_2 = global2[firstLeadingBit(~countOneBits(1436u))];
    global1 = !true;
    let var_3 = var_2.a.yy;
    return arg_3;
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = vec4<f32>(878f, -1243f, ceil(max(exp2(-1000f), arg_1.b)), arg_1.b);
    var var_1 = ~abs(~(~arg_0));
    var var_2 = ~(vec3<i32>(abs(max(-61394i, arg_0)), ~21312i >> arg_1.c, dot(vec2<i32>(7781i, u_input.a.x), ~vec2<i32>(u_input.a.x, u_input.a.x))) / max(vec3<i32>(~19847i, max(u_input.a.x, arg_0), 0i), u_input.a.zwy));
    global1 = !any(select(!vec3<bool>(false, arg_1.d, arg_1.d), select(select(vec3<bool>(arg_1.d, true, global0[21225u]), vec3<bool>(true, true, false), true), !vec3<bool>(false, false, true), false & global0[arg_1.c]), !(!vec3<bool>(global0[arg_1.a], global0[21426u], global0[arg_1.e.x]))));
    return vec3<bool>(true, false, select(59098u, arg_1.c << dot(vec4<u32>(arg_1.e.x, arg_1.e.x, 56720u, arg_1.c), vec4<u32>(39955u, 20584u, 1u, arg_1.e.x)), arg_1.d) <= 18634u);
}

fn func_2() -> u32 {
    let var_0 = u_input.a.x;
    let var_1 = Struct_2(func_4(var_0, Struct_1(~0u >> 4294967295u, ceil(func_3(vec2<i32>(0i, 1i), Struct_1(0u, 1083f, 1u, global0[4294967295u], vec3<u32>(0u, 0u, 1u)), Struct_3(Struct_2(vec3<bool>(false, true, global0[46259u]))), 1215f)), 54108u + dot(vec2<u32>(11612u, 0u), vec2<u32>(0u, 4294967295u)), false, vec3<u32>(1u + 4294967295u, ~127153u, dot(vec2<u32>(54521u, 0u), vec2<u32>(0u, 22776u))))));
    let var_2 = vec3<i32>(u_input.a.x * -(-(-u_input.a.x)), ~((-1i / -(i32(-2147483648))) << ((4294967295u & 67438u) | abs(1u))), 38319i & -max(var_0 % u_input.a.x, u_input.a.x));
    global1 = false;
    var var_3 = Struct_1(1u, exp2(313f / -(-301f)) - -(-func_3(var_2.zz, Struct_1(27200u, -729f, 10950u, false, vec3<u32>(126429u, 4294967295u, 47041u)), Struct_3(var_1), 1465f)), firstTrailingBit(47405u), true, ~vec3<u32>((0u * 1u) % ~0u, 5737u, ~4294967295u));
    return var_3.e.x;
}

fn func_1(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: f32, arg_3: f32) -> vec3<u32> {
    let var_0 = firstLeadingBit(1i >> firstTrailingBit(func_2()));
    let var_1 = Struct_2(select(select(!vec3<bool>(arg_0.b.x, global0[arg_0.a.x], true), select(!vec3<bool>(false, arg_0.b.x, false), !vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x), global0[1u]), false), vec3<bool>(!(!arg_0.b.x), false, !false | !true), !vec3<bool>(-127f <= 2195f, !true, true)));
    global1 = !any(func_4(var_0, Struct_1(arg_0.a.x, arg_2, arg_0.a.x, var_1.a.x, arg_0.a))) & !true;
    global1 = global0[dot(select(~(~max(vec2<u32>(arg_0.a.x, 49132u), arg_0.a.yz)), countOneBits(vec2<u32>(arg_0.a.x, ~arg_0.a.x)), select(vec2<bool>(false, false || arg_0.b.x), select(vec2<bool>(global0[40987u], false), !var_1.a.xz, vec2<bool>(global0[arg_0.a.x], global0[arg_0.a.x])), !(!arg_0.b.zx))), vec2<u32>(max(abs(arg_0.a.x), ~arg_0.a.x), 57874u) | ((vec2<u32>(1u, arg_0.a.x) / (vec2<u32>(arg_0.a.x, 10685u) - vec2<u32>(arg_0.a.x, arg_0.a.x))) + ~(~vec2<u32>(arg_0.a.x, arg_0.a.x))))];
    let var_2 = ~vec3<u32>(~1u, ~(~(1u ^ 0u)), 4294967295u + arg_0.a.x);
    return ~vec3<u32>(arg_0.a.x - max(1u, ~var_2.x), ~arg_0.a.x | arg_0.a.x, ~arg_0.a.x);
}

fn func_5(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_4, arg_3: bool) -> vec4<u32> {
    global1 = all(vec4<bool>(arg_2.b.x, true | (-1472f > (arg_1.x - arg_1.x)), all(!(!vec4<bool>(arg_3, global0[91256u], false, global0[arg_2.a.x]))), firstTrailingBit(arg_0) <= arg_0));
    var var_0 = dot(min(vec4<i32>(-14430i, u_input.a.x, arg_0, 25430i), -u_input.a) << vec4<u32>(arg_2.a.x, 0u, ~arg_2.a.x, 4294967295u), u_input.a ^ (abs(u_input.a) & u_input.a)) >> arg_2.a.x;
    return ~vec4<u32>(min(4294967295u, 0u), arg_2.a.x, abs(~(~arg_2.a.x)), ~(58990u - firstTrailingBit(22091u)));
}

fn func_6(arg_0: vec4<u32>, arg_1: u32, arg_2: u32) -> Struct_2 {
    global0 = array<bool, 29>();
    let var_0 = Struct_3(Struct_2(!vec3<bool>(true, global0[0u % arg_0.x], !global0[arg_1])));
    global0 = array<bool, 29>();
    let var_1 = u_input.a.x;
    global2 = array<Struct_4, 19>();
    return Struct_2(var_0.a.a);
}

fn func_7(arg_0: Struct_4, arg_1: Struct_2) -> Struct_4 {
    var var_0 = Struct_1(~1u, sign(-(-843f)) + step(617f, -637f), arg_0.a.x, !arg_0.b.x, ~vec3<u32>(arg_0.a.x, max(~arg_0.a.x, min(arg_0.a.x, arg_0.a.x)), arg_0.a.x));
    let var_1 = step(select((step(vec3<f32>(2500f, var_0.b, -1107f), vec3<f32>(732f, -803f, var_0.b)) - (vec3<f32>(2085f, var_0.b, var_0.b) - vec3<f32>(319f, var_0.b, var_0.b))) + -exp2(vec3<f32>(var_0.b, var_0.b, var_0.b)), -(-(vec3<f32>(499f, -150f, 782f) / vec3<f32>(var_0.b, 804f, var_0.b))), vec3<bool>(all(!arg_1.a.zx), any(!vec4<bool>(arg_0.b.x, arg_1.a.x, false, var_0.d)), !(false | false))), -(-vec3<f32>(ceil(-1000f), var_0.b - var_0.b, 177f * 287f)));
    let var_2 = Struct_4(~var_0.e, !(!arg_0.b));
    let var_3 = var_1.yx;
    var var_4 = ~(~2147483647i);
    return global2[~dot(var_0.e, vec3<u32>(62170u, 4936u, arg_0.a.x)) << ~4294967295u];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(Struct_4(vec3<u32>(abs(21075u), countOneBits(0u % 4294967295u), abs(29993u | 4294967295u)), select(!select(vec3<bool>(true, false, true), vec3<bool>(global0[27152u], false, false), vec3<bool>(global0[8014u], global0[4294967295u], global0[54052u])), vec3<bool>(global0[dot(vec2<u32>(4294967295u, 1u), vec2<u32>(2338u, 1u))], global0[7245u] | global0[4294967295u], !global0[28936u]), select(select(vec3<bool>(global0[0u], global0[40304u], false), vec3<bool>(true, false, global0[1u]), global0[2957u]), select(vec3<bool>(global0[0u], global0[4294967295u], false), vec3<bool>(global0[0u], global0[83362u], false), vec3<bool>(global0[0u], global0[52160u], true)), select(vec3<bool>(true, global0[4294967295u], false), vec3<bool>(true, false, false), global0[6549u])))), func_6(func_5(-abs(-20339i), step(vec4<f32>(706f, 1000f, 170f, 609f), vec4<f32>(800f, -746f, -1625f, 1193f) / vec4<f32>(-567f, -601f, 299f, -509f)), Struct_4(func_1(global2[0u], vec2<f32>(-121f, 1591f), 1400f, 594f), select(vec3<bool>(global0[1u], global0[0u], false), vec3<bool>(true, false, global0[9992u]), global0[1927u])), any(vec4<bool>(global0[50814u], global0[61721u], global0[15312u], global0[12612u]))), ~(80242u - 44719u) >> countOneBits(~2983u), firstTrailingBit(1u) / ~func_1(Struct_4(vec3<u32>(4294967295u, 56990u, 20623u), vec3<bool>(false, false, false)), vec2<f32>(1561f, -169f), 255f, 299f).x));
    let var_1 = -vec3<f32>(-791f - func_3(u_input.a.wy, Struct_1(6399u, 951f, 4294967295u, var_0.b.x, vec3<u32>(27012u, 49858u, var_0.a.x)), Struct_3(Struct_2(vec3<bool>(false, global0[4294967295u], false))), 2183f), select(-1076f, 1212f, true) - max(-1924f, 120f), -988f / (-1499f - 1507f)) - (vec3<f32>(-788f * -883f, select(trunc(-124f), floor(-519f), false), -(-(-1000f))) / vec3<f32>(-189f, -min(-1025f, -1303f), step(trunc(-1484f), -(-1099f))));
    var var_2 = func_7(global2[4294967295u], func_6(vec4<u32>(var_0.a.x, func_2(), ~var_0.a.x, 92176u) % vec4<u32>(var_0.a.x - var_0.a.x, min(35350u, var_0.a.x), var_0.a.x | var_0.a.x, ~6722u), 17483u, 35358u));
    var var_3 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit((u_input.a.wx >> vec2<u32>(1u, 4294967295u)) >> (vec2<u32>(0u, 50411u) * var_0.a.zx)) ^ vec2<i32>(abs(u_input.a.x), 1i), u_input.a.x, ~var_2.a.x, -select(-428f, -(-(-1190f)), true), var_0.a.yx);
}

