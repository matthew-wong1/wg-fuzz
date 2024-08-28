// {"0:0":[46,139,235,69,91,114,37,24,195,36,230,222,145,237,114,91]}
// Seed: 15808786805573178446

struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: vec2<bool>,
    d: bool,
}

struct Struct_4 {
    a: vec2<u32>,
    b: f32,
    c: bool,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-361f, -517f, -362f);

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: f32) -> vec2<bool> {
    global0 = -(-vec3<f32>(470f, -global0.x, arg_0));
    var var_0 = arg_1.a.x;
    global0 = trunc(select(vec3<f32>(arg_2, 1034f, arg_1.b) + vec3<f32>(1193f, 546f, -1488f), vec3<f32>(814f, floor(296f), -412f), vec3<bool>(u_input.a <= 10760u, !true, any(vec3<bool>(false, arg_1.c, false))))) + abs(max((vec3<f32>(arg_2, 1000f, arg_0) * vec3<f32>(arg_1.b, arg_1.b, -1000f)) - floor(vec3<f32>(1063f, arg_0, 324f)), -(-vec3<f32>(1240f, 235f, -152f))));
    var_0 = ~1u;
    let var_1 = arg_1;
    return arg_1.d.a;
}

fn func_2(arg_0: vec2<u32>, arg_1: u32) -> Struct_4 {
    global0 = -min(floor(step(vec3<f32>(global0.x, global0.x, 1937f), vec3<f32>(global0.x, -1565f, -355f))) - (vec3<f32>(1664f, 595f, global0.x) - -vec3<f32>(global0.x, global0.x, -661f)), max(-min(vec3<f32>(global0.x, 1399f, global0.x), vec3<f32>(global0.x, global0.x, global0.x)), -(vec3<f32>(-1246f, global0.x, -521f) / vec3<f32>(802f, 1000f, -966f))));
    let var_0 = Struct_4(vec2<u32>(dot(~(~vec4<u32>(1u, 20409u, 1u, 50788u)), vec4<u32>(4294967295u, 13276u & arg_1, 11864u, 1u)), ~dot(arg_0, arg_0)), global0.x, !((global0.x - global0.x) >= 1000f), Struct_3(select(func_3(global0.x, Struct_4(arg_0, global0.x, true, Struct_3(vec2<bool>(false, true), vec4<bool>(false, false, true, false), vec2<bool>(false, true), true)), -254f / global0.x), vec2<bool>(!true, true), u_input.c != firstTrailingBit(u_input.c)), !select(vec4<bool>(false, false, false, false), !vec4<bool>(false, false, false, true), true), select(select(!vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), true), select(!vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), true), any(func_3(global0.x, Struct_4(vec2<u32>(4294967295u, u_input.d), -1053f, false, Struct_3(vec2<bool>(true, true), vec4<bool>(true, true, true, false), vec2<bool>(true, true), true)), global0.x))), true));
    var var_1 = -(~firstTrailingBit(-(vec2<i32>(-1i, 15024i) / vec2<i32>(u_input.c, -27237i))));
    let var_2 = Struct_2(-(-vec2<f32>(1000f * 597f, global0.x + 1672f)), arg_1);
    let var_3 = vec2<bool>(false, var_0.c && !(var_2.b > reverseBits(16583u)));
    return Struct_4(~(~vec2<u32>(clamp(19057u, arg_1, 1u), countOneBits(4294967295u))), 744f, var_3.x, Struct_3(var_3, var_0.d.b, func_3(min(var_2.a.x, var_0.b) - trunc(1568f), Struct_4(arg_0, global0.x - var_0.b, true, var_0.d), -(292f * var_2.a.x)), !true));
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: Struct_4, arg_3: i32) -> vec3<f32> {
    let var_0 = -644f;
    global0 = -(-(-vec3<f32>(1455f, 957f, 288f) - (vec3<f32>(arg_2.b, -1207f, -359f) - vec3<f32>(var_0, 1156f, var_0)))) * vec3<f32>(-2057f / -exp2(global0.x), -sign(trunc(var_0)), arg_2.b);
    var var_1 = Struct_4(~(~abs(arg_2.a | vec2<u32>(arg_2.a.x, u_input.d))), -(-min(abs(1453f), 1311f / global0.x)), !(!func_3(-(-826f), func_2(vec2<u32>(arg_1, 64422u), arg_2.a.x), -global0.x).x), func_2((~vec2<u32>(arg_1, 4294967295u) - ~arg_0.a) ^ (arg_0.a / func_2(vec2<u32>(0u, 45273u), arg_0.a.x).a), 1u).d);
    let var_2 = arg_2.a.x;
    let var_3 = Struct_2(global0.xx / (-(global0.xx + vec2<f32>(-1433f, -1967f)) / vec2<f32>(-(-553f), var_0 / var_0)), ~max(var_1.a.x, ~arg_1) + (~(0u ^ var_2) & (arg_0.a.x + firstLeadingBit(arg_1))));
    return vec3<f32>(-var_3.a.x * var_1.b, floor(sign(var_0)) - trunc(-var_0), arg_0.b);
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_1) -> bool {
    let var_0 = ~arg_2.c;
    var var_1 = !arg_0.x;
    var_1 = all(!(!(!vec2<bool>(arg_2.a.x, false))));
    global0 = func_4(func_2(select(vec2<u32>(firstLeadingBit(u_input.d), abs(arg_1.b)), ~(~vec2<u32>(arg_2.c, var_0)), !(!arg_2.a.yx)), ~4294967295u), clamp(arg_1.b, abs(abs(arg_2.c) >> (u_input.d ^ 0u)), 1u), Struct_4(vec2<u32>(reverseBits(abs(var_0)), dot(vec2<u32>(arg_1.b, 4294967295u), vec2<u32>(arg_2.c, arg_1.b) - vec2<u32>(var_0, 1u))), step(global0.x, arg_1.a.x), true, func_2(~vec2<u32>(u_input.a, 10966u) >> ~vec2<u32>(var_0, u_input.a), firstTrailingBit(0u)).d), -35826i - clamp(-(2147483647i / -1i), u_input.b, -41957i));
    let var_2 = func_2(vec2<u32>(42207u, ~(~4294967295u) >> reverseBits(max(var_0, 4294967295u))), min(dot(vec3<u32>(arg_1.b, arg_1.b, 37222u), ~vec3<u32>(var_0, 12159u, var_0)) - 1u, arg_2.c)).d;
    return var_2.c.x;
}

fn func_5(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_4(vec2<u32>(~(~(~8668u)), ~(~80210u / u_input.a)), global0.x / max(-trunc(-168f), -(-(-1000f))), false, Struct_3(arg_1.zx, arg_1, !(!vec2<bool>(arg_3.a.x, arg_0.x)), func_3(-(-global0.x), Struct_4(countOneBits(vec2<u32>(4294967295u, u_input.d)), sign(1000f), !arg_0.x, Struct_3(vec2<bool>(arg_1.x, true), vec4<bool>(arg_3.d, arg_0.x, arg_3.a.x, false), arg_3.a.zz, arg_1.x)), step(1224f, global0.x) / -301f).x));
    global0 = vec3<f32>(-(1036f + ((global0.x + var_0.b) + -(-1264f))), -global0.x, global0.x);
    let var_1 = global0.xz;
    var var_2 = -1650f;
    let var_3 = ~(~u_input.b);
    return Struct_1(vec3<bool>(any(vec2<bool>(func_1(arg_2.yx, Struct_2(global0.zx, 42267u), Struct_1(vec3<bool>(arg_1.x, arg_1.x, false), arg_3.b, arg_3.c, arg_1.x)), arg_0.x)), func_3(var_0.b, var_0, exp2(578f) * exp2(var_0.b)).x, func_3(var_0.b, var_0, select(var_1.x * -1138f, max(-829f, global0.x), select(true, true, true))).x), arg_3.b, countOneBits(countOneBits((9725u & var_0.a.x) / ~7891u)), arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(select(!vec4<bool>(all(vec3<bool>(true, false, true)), func_1(vec2<bool>(true, false), Struct_2(global0.zy, u_input.d), Struct_1(vec3<bool>(true, false, false), vec2<i32>(2147483647i, u_input.c), u_input.a, true)), true, false && false), vec4<bool>(!(-22856i != 1i), any(!vec4<bool>(false, false, false, false)), -u_input.c > -u_input.c, (false | true) && !true), func_2(vec2<u32>(~u_input.d, ~u_input.d), (1u + 30472u) >> (u_input.d % 13426u)).d.b), select(vec4<bool>(!any(vec2<bool>(false, true)), false, all(vec2<bool>(false, true)), false), select(func_2(vec2<u32>(u_input.d, u_input.a), ~4356u).d.b, vec4<bool>(true, !true, false && false, false & true), true), step(min(-1000f, global0.x), -633f) >= min(global0.x * 1809f, global0.x)), !(!(!(!vec3<bool>(false, true, false)))), Struct_1(vec3<bool>(func_2(reverseBits(vec2<u32>(28993u, 37759u)), 48588u).d.b.x, !(!true), (false && true) || !false), vec2<i32>(-(~u_input.b), -52903i), u_input.d, !(!all(vec3<bool>(false, false, false)))));
    var var_1 = func_5(vec4<bool>(!var_0.d, true, -sign(1247f) < -(global0.x * global0.x), var_0.d), !(!(!vec4<bool>(false, true, false, true))), vec3<bool>(var_0.a.x, false, -(global0.x / global0.x) >= floor(844f)), Struct_1(select(var_0.a, !func_5(vec4<bool>(true, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(var_0.d, true, var_0.a.x, false), var_0.a, var_0).a, func_3(func_4(Struct_4(vec2<u32>(70624u, var_0.c), -1715f, true, Struct_3(vec2<bool>(var_0.d, var_0.a.x), vec4<bool>(var_0.d, var_0.a.x, true, var_0.d), vec2<bool>(true, true), var_0.a.x)), 48702u, Struct_4(vec2<u32>(u_input.d, 38750u), -176f, var_0.d, Struct_3(var_0.a.yy, vec4<bool>(true, var_0.a.x, false, var_0.a.x), var_0.a.yz, true)), var_0.b.x).x, Struct_4(vec2<u32>(70931u, u_input.a), -2091f, var_0.a.x, Struct_3(vec2<bool>(false, true), vec4<bool>(var_0.a.x, false, false, var_0.d), vec2<bool>(var_0.a.x, var_0.a.x), var_0.a.x)), func_2(vec2<u32>(u_input.d, u_input.d), 1u).b).x), ((var_0.b & var_0.b) / abs(vec2<i32>(var_0.b.x, 0i))) / select(var_0.b, abs(vec2<i32>(43184i, -1i)), !false), 12666u, all(vec2<bool>(var_0.a.x, false))));
    let var_2 = global0.x;
    global0 = vec3<f32>(179f, step(-(-703f), -(global0.x - -1487f)), global0.x) / vec3<f32>(-(global0.x + -global0.x), -539f, -213f);
    var var_3 = Struct_2(-vec2<f32>(max(global0.x, global0.x), global0.x + -1761f), var_0.c);
    let var_4 = -var_1.b.x >> ~53648u;
    var var_5 = -(vec2<f32>(-ceil(var_3.a.x), global0.x) / (vec2<f32>(global0.x / 207f, global0.x) - vec2<f32>(global0.x * -1128f, var_3.a.x / var_3.a.x)));
    var var_6 = func_5(select(func_2(~vec2<u32>(var_0.c, 0u), var_1.c).d.b, vec4<bool>(var_0.d, var_1.d, func_5(vec4<bool>(true, var_1.d, true, false), select(vec4<bool>(var_1.d, true, var_1.d, true), vec4<bool>(true, false, false, var_1.a.x), vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, true)), !vec3<bool>(false, var_0.a.x, false), Struct_1(vec3<bool>(false, true, false), vec2<i32>(-4864i, 0i), var_1.c, true)).a.x, (var_0.b.x != 1i) | var_1.a.x), vec4<bool>(!var_1.d, var_1.d, !select(var_1.d, false, false), (var_1.a.x != var_1.a.x) && false)), vec4<bool>(!var_0.a.x | false, var_0.d, true, var_0.d), var_1.a, var_0);
    let var_7 = vec4<i32>(-(~max(1i / -26254i, ~(-10318i))), dot(firstLeadingBit(vec2<i32>(-1i, dot(vec2<i32>(var_4, 8396i), vec2<i32>(u_input.c, var_6.b.x)))), reverseBits(vec2<i32>(~var_1.b.x, dot(vec4<i32>(var_0.b.x, 1i, 1i, var_1.b.x), vec4<i32>(-17172i, 1i, var_1.b.x, var_1.b.x))))), 6228i << var_0.c, ~min(countOneBits(u_input.c) % (var_6.b.x % var_1.b.x), 37391i));
    let x = u_input.a;
    s_output = StorageBuffer(var_7, u_input.d);
}

