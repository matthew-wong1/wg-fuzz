// {"0:0":[169,161,174,53,88,67,62,122,40,116,253,101,29,10,105,26,114,110,101,103,113,81,205,72,201,66,254,18,3,132,242,111]}
// Seed: 11042261747192825621

struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_2,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<u32, 23> = array<u32, 23>(1u, 21311u, 0u, 0u, 7757u, 1u, 9404u, 0u, 0u, 0u, 29425u, 0u, 0u, 66069u, 83304u, 17098u, 18075u, 5832u, 59479u, 1u, 0u, 4918u, 1u);

fn func_3(arg_0: vec4<f32>) -> bool {
    var var_0 = select(-731f, floor(floor(-(arg_0.x * 725f))), false);
    var var_1 = Struct_2(Struct_1(~(~reverseBits(1i)), global1[countOneBits(95567u)] | global1[dot(vec2<u32>(5922u, u_input.b.x), u_input.c.zy) + global1[~global1[u_input.a]]], clamp(~1716u, 6952u, (4294967295u % global1[62583u]) - (1u ^ 14724u)), u_input.c.x));
    var var_2 = -(sign(-(-156f)) / (arg_0.x * arg_0.x)) - arg_0.x;
    let var_3 = var_1.a;
    let var_4 = firstTrailingBit(~(vec3<i32>(11814i, -12755i, var_3.a) | vec3<i32>(var_1.a.a, var_1.a.a, 50787i)) >> (select(u_input.c.xzx, vec3<u32>(u_input.b.x, 136345u, 0u), vec3<bool>(true, true, true)) - ~vec3<u32>(var_1.a.b, global1[var_1.a.b], var_1.a.d))) + min(firstTrailingBit(countOneBits(vec3<i32>(var_1.a.a, 0i, i32(-2147483648))) ^ -vec3<i32>(i32(-2147483648), var_3.a, var_1.a.a)), (vec3<i32>(-1i, -3500i, var_1.a.a) << ~vec3<u32>(53554u, global1[4294967295u], global1[1u])) >> (u_input.c.zwz * ~u_input.c.zxw));
    return !true;
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: vec2<u32>) -> Struct_2 {
    let var_0 = arg_1;
    global0 = reverseBits(min(arg_0, firstTrailingBit(0u)) % abs(~14370u)) % max(arg_3.x & ~(~var_0.a.d), 385u);
    let var_1 = select(!true, all(!vec3<bool>(false, false, false)) || (-arg_2.x <= exp2(-arg_2.x)), func_3(abs(arg_2)));
    var var_2 = select(u_input.c, reverseBits(vec4<u32>(~(arg_1.a.b & arg_0), firstTrailingBit(u_input.c.x), arg_3.x, ~abs(u_input.b.x))), vec4<bool>(var_1, !any(select(vec2<bool>(var_1, false), vec2<bool>(var_1, var_1), true)), true, all(select(!vec2<bool>(false, var_1), select(vec2<bool>(true, var_1), vec2<bool>(var_1, var_1), true), select(vec2<bool>(var_1, var_1), vec2<bool>(var_1, var_1), false)))));
    let var_3 = arg_2.zx;
    return var_0;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec4<i32>) -> vec3<u32> {
    global0 = arg_1.b;
    var var_0 = !vec3<bool>(!(!false) && true, global1[~0u / ~arg_2.x] == select(min(5350u, 4294967295u), ~0u, arg_0.a.d > 4294967295u), select(!(!true), all(vec2<bool>(false, false)), !(!true)));
    global0 = arg_0.a.d;
    return ~select(vec3<u32>(arg_2.x, ~(arg_1.c >> 0u), func_2(~60629u, func_2(arg_2.x, arg_0, vec4<f32>(-866f, 757f, -778f, -574f), u_input.c.zy), vec4<f32>(514f, -592f, -2098f, -280f) / vec4<f32>(-1753f, -906f, -1462f, 120f), u_input.b).a.d), u_input.c.xyy, all(select(var_0.zx, select(var_0.zy, vec2<bool>(false, var_0.x), var_0.zx), vec2<bool>(false, true))));
}

fn func_1() -> Struct_2 {
    global0 = dot(u_input.c.xzy % (vec3<u32>(min(36456u, u_input.c.x), 32658u, ~u_input.a) & func_4(func_2(4341u, Struct_2(Struct_1(1i, u_input.b.x, 38756u, 35761u)), vec4<f32>(-1000f, -261f, 2419f, 1000f), u_input.b), func_2(u_input.c.x, Struct_2(Struct_1(i32(-2147483648), global1[global1[43311u]], u_input.a, 66008u)), vec4<f32>(179f, 692f, -476f, -767f), vec2<u32>(4294967295u, 17690u)).a, select(vec2<u32>(77595u, 25262u), u_input.b, vec2<bool>(false, true)), abs(vec4<i32>(0i, -20308i, 2147483647i, 2795i)))), firstLeadingBit(~vec3<u32>(1613u, abs(global1[52184u]), 4676u)));
    var var_0 = firstLeadingBit(firstTrailingBit(vec4<u32>(abs(u_input.b.x | global1[global1[u_input.c.x]]), global1[global1[global1[firstLeadingBit(~u_input.b.x)]]], dot(vec4<u32>(2855u, u_input.b.x, 37593u, u_input.a), abs(u_input.c)), global1[~81760u] + (global1[0u] - u_input.c.x))));
    let var_1 = ~vec2<i32>(~abs(~(-637i)), ~(i32(-2147483648) + dot(vec4<i32>(-1i, i32(-2147483648), 31084i, -1i), vec4<i32>(2147483647i, i32(-2147483648), 531i, 64206i))));
    var_0 = ~(reverseBits(~(vec4<u32>(u_input.c.x, 4294967295u, global1[1u], 23379u) ^ u_input.c)) % u_input.c);
    let var_2 = func_2(select(var_0.x, 36619u, select((17884i >= 2147483647i) || !false, true, (var_1.x % var_1.x) == var_1.x)), Struct_2(func_2(firstLeadingBit(u_input.b.x - 1u), Struct_2(func_2(15923u, Struct_2(Struct_1(20110i, global1[u_input.c.x], 0u, global1[12930u])), vec4<f32>(-1000f, -1984f, 1000f, 875f), var_0.zy).a), abs(vec4<f32>(404f, 131f, -858f, -1178f)), u_input.c.zz).a), select(vec4<f32>(-2227f, -max(-693f, 882f), round(1818f), -1801f), vec4<f32>(325f - -1767f, abs(-308f), -1597f, 500f) / -(vec4<f32>(-1166f, -424f, -645f, -335f) + vec4<f32>(484f, -1163f, -2697f, -324f)), (22867i % (2147483647i - var_1.x)) < max(-14841i / var_1.x, min(1i, 1i))), ~max(~vec2<u32>(0u, global1[1u]), reverseBits(vec2<u32>(0u, u_input.b.x)))).a;
    return Struct_2(func_2(0u, func_2(9044u, func_2(~4294967295u, func_2(37664u, Struct_2(var_2), vec4<f32>(-1286f, -1000f, 408f, -820f), vec2<u32>(var_2.d, 86754u)), step(vec4<f32>(788f, -849f, -754f, -2042f), vec4<f32>(-929f, -688f, 715f, 1686f)), countOneBits(var_0.zz)), vec4<f32>(-188f, exp2(265f), -1000f, max(245f, -476f)), ~(vec2<u32>(4294967295u, var_0.x) / vec2<u32>(0u, var_0.x))), trunc(-vec4<f32>(652f, 1000f, 1822f, 270f)) + -vec4<f32>(-306f, -336f, -913f, 397f), (~u_input.b + vec2<u32>(15621u, 4294967295u)) - vec2<u32>(52169u >> 0u, 18950u / 0u)).a);
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: i32, arg_3: u32) -> Struct_2 {
    var var_0 = Struct_2(func_2(~(global1[select(arg_1.b.d, u_input.a, true)] % 33767u), func_2(~(~1u), Struct_2(func_2(global1[0u], Struct_2(Struct_1(23491i, arg_3, arg_1.c.a.d, 7015u)), vec4<f32>(1121f, 1000f, -1017f, -1000f), vec2<u32>(global1[arg_3], 1u)).a), vec4<f32>(746f * -2106f, -1000f * 1874f, exp2(-279f), -173f), ~(u_input.b % vec2<u32>(global1[arg_1.b.b], 38693u))), vec4<f32>(ceil(step(689f, -121f)), -1222f + (575f + -951f), trunc(-337f) - -(-1284f), 371f), vec2<u32>(firstTrailingBit(dot(vec4<u32>(arg_3, u_input.c.x, 28478u, 4294967295u), vec4<u32>(6501u, arg_3, 0u, arg_3))), max(min(u_input.a, 4294967295u), func_1().a.c))).a);
    global1 = array<u32, 23>();
    let var_1 = ~(~((1u << 21477u) * dot(vec2<u32>(1u, u_input.c.x), u_input.b))) <= 4294967295u;
    var var_2 = ~arg_3 % 46526u;
    let var_3 = u_input.c.wxx;
    return Struct_2(var_0.a);
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: bool, arg_3: vec4<bool>) -> Struct_2 {
    let var_0 = trunc(-(-exp2(vec4<f32>(183f, -174f, -1000f, -1580f)) + -vec4<f32>(-262f, 538f, -504f, 363f)));
    global1 = array<u32, 23>();
    let var_1 = Struct_3(vec2<i32>(func_2(87849u & dot(u_input.c.wxy, u_input.c.xwy), arg_1, select(floor(vec4<f32>(var_0.x, 750f, var_0.x, var_0.x)), vec4<f32>(1623f, var_0.x, var_0.x, var_0.x), arg_2), vec2<u32>(55110u / global1[u_input.c.x], 13836u)).a.a, 91651i - (arg_0.x << 58973u)), arg_1.a, func_1(), vec2<i32>(func_2(func_1().a.c ^ dot(u_input.c.wx, vec2<u32>(0u, global1[73996u])), Struct_2(Struct_1(arg_1.a.a, 15974u, arg_1.a.d, u_input.b.x)), exp2(-var_0), u_input.c.yw).a.a, -1i / arg_0.x));
    var var_2 = var_1.a >> abs(u_input.c.xy);
    global0 = var_1.c.a.b;
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 23>();
    var var_0 = 2582f;
    var var_1 = func_6(vec2<i32>(~dot(vec4<i32>(2147483647i, 47374i, 20662i, 2147483647i), vec4<i32>(-4428i, i32(-2147483648), -8852i, i32(-2147483648))), -(-21026i) << ~global1[global1[global1[global1[16128u]]]]) | countOneBits(vec2<i32>(i32(-2147483648) / -26418i, ~1394i)), func_5(vec3<i32>(-25719i % -(i32(-2147483648)), -3434i % (-15291i + -11182i), dot(~vec4<i32>(36792i, 21537i, -51747i, i32(-2147483648)), vec4<i32>(19407i, 2147483647i, -1i, -28437i))), Struct_3(vec2<i32>(-1i, abs(-16786i)), Struct_1(abs(-1i), 40150u ^ global1[u_input.b.x], u_input.b.x * 4294967295u, ~global1[51225u]), func_1(), vec2<i32>(firstLeadingBit(-28007i), reverseBits(2147483647i))), -8928i, global1[67493u]), !false, vec4<bool>((0i * -30812i) == reverseBits(select(2147483647i, 1i, true)), all(vec4<bool>(false, !false, 895i <= 0i, true && false)), all(vec2<bool>(all(vec3<bool>(true, true, false)), any(vec2<bool>(true, true)))), select(false, all(select(vec2<bool>(false, false), vec2<bool>(false, true), true)), true)));
    var_0 = -1275f;
    let x = u_input.a;
    s_output = StorageBuffer(exp2(floor(exp2(vec2<f32>(-539f, 1486f)) * -vec2<f32>(736f, 675f))), ~(countOneBits(min(vec4<i32>(var_1.a.a, -5601i, 0i, var_1.a.a), vec4<i32>(-17541i, var_1.a.a, -35325i, 0i))) << u_input.c));
}

