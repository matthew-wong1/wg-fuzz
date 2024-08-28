// {"0:0":[10,72,103,188,119,51,203,236,73,250,218,243,157,28,224,23,14,93,235,155,210,68,109,187,218,101,228,51,27,107,116,51]}
// Seed: 8127427966436686572

struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_1,
    c: bool,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn func_3() -> f32 {
    global0 = !true;
    var var_0 = Struct_2(((u_input.b.xz / ~vec2<i32>(-7247i, u_input.b.x)) % select(vec2<i32>(0i, -1i), u_input.b.xx, vec2<bool>(true, false))) | abs(-u_input.b.yy), Struct_1(select(vec3<bool>(!true, false, false || true), !vec3<bool>(true, false, false), !all(vec4<bool>(true, true, true, false))), any(!select(vec2<bool>(false, true), vec2<bool>(false, true), false)), -(-select(vec4<f32>(827f, 918f, -1566f, 455f), vec4<f32>(1429f, -1161f, -267f, 1000f), false))), Struct_1(!select(vec3<bool>(false, true, false), !vec3<bool>(true, true, false), !vec3<bool>(false, false, false)), all(!vec2<bool>(false, false)), vec4<f32>(698f - -1185f, -(-413f / -2186f), -(-(-253f)), 1511f)), -(-(-(-vec3<f32>(550f, 793f, -2069f)))));
    var_0 = Struct_2(-select(vec2<i32>(40868i + u_input.b.x, dot(u_input.b, vec4<i32>(1i, -1i, var_0.a.x, 23031i))), max(firstLeadingBit(vec2<i32>(0i, -19361i)), vec2<i32>(u_input.b.x, var_0.a.x)), (var_0.b.c.x - 500f) < (-1283f / -1480f)), Struct_1(vec3<bool>(!(!true), any(!vec2<bool>(var_0.b.b, true)), !false), false, vec4<f32>(-728f, (var_0.c.c.x - -1229f) / 700f, var_0.b.c.x, min(-var_0.c.c.x, var_0.d.x * var_0.b.c.x))), Struct_1(vec3<bool>(!(!var_0.b.a.x), !all(var_0.c.a.xz), false), var_0.b.b, var_0.b.c), abs(vec3<f32>(-(-833f), var_0.d.x, var_0.b.c.x)) / floor(vec3<f32>(256f, var_0.d.x, var_0.b.c.x / -679f)));
    let var_1 = vec3<f32>(-var_0.c.c.x, (var_0.c.c.x - abs(-178f)) / trunc(-(-2864f)), -1505f);
    global0 = var_0.c.b;
    return round(abs(select(-(-2591f), 820f, u_input.a < u_input.a)) + ((exp2(var_1.x) * (var_0.c.c.x / var_0.d.x)) / -var_1.x));
}

fn func_2(arg_0: u32, arg_1: Struct_5, arg_2: f32, arg_3: vec4<bool>) -> vec2<bool> {
    var var_0 = round(-vec3<f32>(-1377f, -arg_1.a.c.x, 669f) / -vec3<f32>(func_3(), -(-1411f), 902f));
    var var_1 = select(select(!arg_3.zz, vec2<bool>(!any(arg_3), false | (2147483647i > 0i)), false || !(!false)), select(vec2<bool>(arg_3.x, true), arg_1.a.a.yx, false), vec2<bool>(true, true));
    var_0 = abs(vec3<f32>(-437f / arg_2, 1000f, max(411f + arg_1.a.c.x, min(arg_2, arg_1.a.c.x))) - (arg_1.a.c.ywz * arg_1.a.c.yzw));
    var var_2 = arg_1;
    var var_3 = arg_0;
    return arg_3.yw;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_5, arg_2: vec3<bool>) -> Struct_3 {
    global0 = i32(-2147483648) > -reverseBits(-29173i);
    let var_0 = 1u % 27351u;
    global0 = arg_2.x;
    return Struct_3(Struct_2(vec2<i32>(max(0i << var_0, select(u_input.b.x, -29048i, false)), u_input.b.x), arg_1.a, Struct_1(arg_1.a.a, arg_1.a.b, vec4<f32>(-arg_1.a.c.x, 1014f, -413f, arg_1.a.c.x)), arg_1.a.c.zzy));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: vec3<i32>, arg_3: Struct_5) -> bool {
    global0 = 0u > 0u;
    var var_0 = 4294967295u == ((~u_input.a << 34915u) | select(max(26425u, 4294967295u) | 0u, ~u_input.a, true));
    let var_1 = arg_3.a;
    var_0 = false;
    global0 = arg_0.a.c.b;
    return !true;
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: vec3<bool>) -> vec2<bool> {
    var var_0 = all(!vec3<bool>(!(arg_2.x | arg_2.x), true, true));
    var var_1 = vec2<u32>(arg_0, countOneBits(arg_0));
    var_1 = vec2<u32>(var_1.x, ~(abs(arg_1) - arg_1));
    global0 = all(arg_2.zy);
    global0 = !((true && false) != false) && func_5(func_4(select(!arg_2.xy, func_2(arg_0, Struct_5(Struct_1(arg_2, arg_2.x, vec4<f32>(1255f, 438f, 1045f, -1686f))), 1423f, vec4<bool>(false, true, false, false)), vec2<bool>(arg_2.x, false)), Struct_5(Struct_1(vec3<bool>(arg_2.x, true, true), false, vec4<f32>(1372f, -363f, 1159f, 1000f))), select(select(vec3<bool>(arg_2.x, true, true), arg_2, arg_2.x), vec3<bool>(arg_2.x, arg_2.x, true), false)), -abs(vec4<f32>(111f, -1428f, -565f, 1000f)) + vec4<f32>(-1554f, -637f - 1092f, 791f + 1831f, 210f + 1279f), select(vec3<i32>(i32(-2147483648), ~(-39965i), firstLeadingBit(-17189i)), vec3<i32>(u_input.b.x, u_input.b.x, max(2147483647i, u_input.b.x)), arg_2), Struct_5(func_4(func_2(8395u, Struct_5(Struct_1(arg_2, arg_2.x, vec4<f32>(-1000f, -427f, -232f, 2486f))), -561f, vec4<bool>(false, arg_2.x, false, false)), Struct_5(Struct_1(arg_2, arg_2.x, vec4<f32>(1195f, -1115f, -2170f, 1000f))), vec3<bool>(false, arg_2.x, false)).a.b));
    return arg_2.xy;
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_5, arg_2: Struct_5, arg_3: f32) -> vec2<bool> {
    global0 = arg_1.a.a.x;
    let var_0 = min(max((vec3<f32>(2424f, 1098f, arg_1.a.c.x) * arg_2.a.c.zxw) / exp2(vec3<f32>(arg_1.a.c.x, 489f, 1036f)), -(vec3<f32>(403f, 1136f, arg_3) / arg_1.a.c.zwz)) * arg_1.a.c.yyy, arg_2.a.c.xww);
    global0 = func_5(func_4(func_1(u_input.a, firstTrailingBit(u_input.a), vec3<bool>(select(arg_0.x, arg_2.a.b, true), true, true)), arg_2, select(!(!arg_2.a.a), !select(vec3<bool>(true, arg_1.a.a.x, arg_0.x), arg_1.a.a, true), !false)), arg_2.a.c + arg_2.a.c, vec3<i32>(~dot(vec2<i32>(-1i, u_input.b.x) & vec2<i32>(u_input.b.x, u_input.b.x), u_input.b.wz), -2147483647i, u_input.b.x), arg_2);
    var var_1 = Struct_1(vec3<bool>(true, !arg_0.x, -894f > (var_0.x * -1073f)), true, select(arg_2.a.c, round(min(vec4<f32>(-618f, 782f, arg_1.a.c.x, arg_2.a.c.x), vec4<f32>(arg_1.a.c.x, 278f, 148f, var_0.x))) / floor(min(vec4<f32>(var_0.x, var_0.x, -2671f, 1198f), arg_2.a.c)), !(!arg_1.a.b)));
    var_1 = arg_2.a;
    return func_4(func_1(~(dot(vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, 66481u)) + u_input.a), u_input.a - ~(~u_input.a), vec3<bool>(arg_1.a.b, !var_1.a.x, (33552u - 0u) > ~0u)), Struct_5(func_4(!vec2<bool>(var_1.b, arg_2.a.b), arg_1, select(!arg_2.a.a, !vec3<bool>(var_1.a.x, arg_1.a.a.x, arg_2.a.a.x), !arg_1.a.a)).a.b), select(!vec3<bool>(-46113i >= 0i, !true, true), vec3<bool>(true, false, any(func_4(var_1.a.yx, arg_1, vec3<bool>(arg_2.a.b, true, true)).a.b.a)), !(!arg_1.a.b | false))).a.b.a.zx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(func_6(select(select(func_1(4294967295u, 0u, vec3<bool>(false, false, true)), !vec2<bool>(true, false), !false), !(!vec2<bool>(true, true)), func_1(u_input.a, u_input.a, select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false))), Struct_5(Struct_1(vec3<bool>(false, false, false), 50073u == 33697u, vec4<f32>(-1000f, 448f, -2377f, -1345f) - vec4<f32>(812f, -871f, -863f, -1189f))), Struct_5(func_4(!vec2<bool>(false, true), Struct_5(Struct_1(vec3<bool>(false, true, true), true, vec4<f32>(-1000f, 1051f, -650f, -2380f))), vec3<bool>(true, false, true)).a.b), -abs(-149f)), !func_2(dot(vec4<u32>(21529u, u_input.a, u_input.a, 1u) | vec4<u32>(u_input.a, 1277u, u_input.a, u_input.a), ~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), Struct_5(Struct_1(vec3<bool>(true, false, false), true, vec4<f32>(356f, 1804f, 561f, -536f))), round(-412f), vec4<bool>(false, !true, true, false || true)), true | (2763f > (floor(783f) + func_4(vec2<bool>(true, false), Struct_5(Struct_1(vec3<bool>(false, false, true), true, vec4<f32>(1763f, 1446f, 249f, -1167f))), vec3<bool>(false, false, false)).a.b.c.x)));
    let var_1 = select(countOneBits(abs(vec4<u32>(11371u, u_input.a, 0u, u_input.a))) & (abs(vec4<u32>(1u, 7603u, 12081u, u_input.a)) - ~vec4<u32>(4294967295u, 78489u, 11357u, 51247u)), vec4<u32>(59477u, ~24921u, 15152u / ~u_input.a, ~(~0u)), var_0.x) & (~(~(~vec4<u32>(u_input.a, 4294967295u, u_input.a, 37034u))) + ~countOneBits(abs(vec4<u32>(137934u, 0u, u_input.a, 0u))));
    var var_2 = u_input.b.xxy;
    var var_3 = func_4(!func_6(vec2<bool>(var_0.x, true), Struct_5(func_4(vec2<bool>(false, var_0.x), Struct_5(Struct_1(vec3<bool>(false, var_0.x, var_0.x), true, vec4<f32>(1751f, -732f, -1000f, -517f))), vec3<bool>(false, false, var_0.x)).a.c), Struct_5(func_4(vec2<bool>(false, var_0.x), Struct_5(Struct_1(vec3<bool>(var_0.x, false, true), true, vec4<f32>(-484f, 1000f, 683f, 439f))), vec3<bool>(var_0.x, var_0.x, false)).a.b), -floor(1000f)), Struct_5(Struct_1(!vec3<bool>(var_0.x, true, var_0.x), select(!var_0.x, true | true, !var_0.x), -(vec4<f32>(-865f, 308f, -1013f, 784f) * vec4<f32>(1702f, -2996f, 405f, 479f)))), func_4(vec2<bool>(false, select(func_5(Struct_3(Struct_2(u_input.b.xw, Struct_1(vec3<bool>(var_0.x, true, false), var_0.x, vec4<f32>(245f, -376f, -565f, -398f)), Struct_1(vec3<bool>(false, true, false), var_0.x, vec4<f32>(-685f, 683f, -459f, -1640f)), vec3<f32>(122f, 1101f, 310f))), vec4<f32>(639f, -648f, 394f, -1208f), u_input.b.xzz, Struct_5(Struct_1(vec3<bool>(var_0.x, true, true), true, vec4<f32>(-709f, -693f, 645f, -776f)))), true, func_6(vec2<bool>(true, false), Struct_5(Struct_1(vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.x, vec4<f32>(1077f, -427f, -201f, -262f))), Struct_5(Struct_1(vec3<bool>(var_0.x, true, false), true, vec4<f32>(1728f, -714f, 336f, -1030f))), -2122f).x)), Struct_5(Struct_1(select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(false, var_0.x, var_0.x)), !var_0.x, vec4<f32>(292f, -497f, 364f, -556f) * vec4<f32>(640f, -3050f, 342f, -1332f))), vec3<bool>(all(select(vec4<bool>(true, var_0.x, true, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false), var_0.x)), var_2.x < (var_2.x * u_input.b.x), func_2(var_1.x, Struct_5(Struct_1(vec3<bool>(false, false, true), true, vec4<f32>(1108f, 1650f, 934f, 1020f))), step(1495f, 190f), vec4<bool>(false, var_0.x, true, var_0.x)).x)).a.c.a).a.b;
    let var_4 = ~vec4<u32>(dot(min(var_1.xx, var_1.yw) * max(vec2<u32>(var_1.x, 4294967295u), vec2<u32>(4294967295u, 0u)), abs(max(var_1.yy, vec2<u32>(49729u, 0u)))), u_input.a, select(u_input.a, dot(var_1.yy, ~var_1.yw), !var_0.x), var_1.x);
    let var_5 = Struct_1(!var_3.a, func_2(select(65828u, ~countOneBits(1u), false), Struct_5(func_4(func_2(57821u, Struct_5(Struct_1(var_3.a, true, var_3.c)), var_3.c.x, vec4<bool>(false, false, var_0.x, false)), Struct_5(Struct_1(vec3<bool>(false, false, var_3.b), var_0.x, var_3.c)), vec3<bool>(false, true, false)).a.b), var_3.c.x, select(select(vec4<bool>(true, false, false, false), !vec4<bool>(false, var_0.x, false, var_0.x), !true), vec4<bool>(!true, var_3.a.x || false, false, false && var_0.x), select(!vec4<bool>(var_3.b, var_3.b, var_0.x, var_0.x), !vec4<bool>(var_0.x, false, false, var_0.x), !vec4<bool>(true, var_3.a.x, var_3.a.x, var_0.x)))).x, vec4<f32>(1103f, var_3.c.x, -sign(-var_3.c.x), floor(func_3())));
    let x = u_input.a;
    s_output = StorageBuffer(clamp(vec4<i32>(dot(u_input.b.xz, ~u_input.b.yz), abs(u_input.b.x) ^ dot(vec2<i32>(2147483647i, -14059i), u_input.b.yw), -(-14499i >> 3402u), var_2.x), firstLeadingBit(vec4<i32>(~58715i, -39586i, 18681i, 10654i >> 5525u)), ((vec4<i32>(u_input.b.x, var_2.x, u_input.b.x, var_2.x) ^ u_input.b) + vec4<i32>(var_2.x, 49868i, 52914i, -1i)) >> (var_1 + abs(var_4))));
}

