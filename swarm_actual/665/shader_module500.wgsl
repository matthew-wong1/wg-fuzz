// {"0:0":[238,178,231,238,73,12,155,0,165,81,88,171,83,183,103,53]}
// Seed: 11057052094949201707

struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: u32,
    d: u32,
    e: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23> = array<f32, 23>(722f, -624f, 1690f, 169f, 550f, 296f, -1071f, -2331f, -301f, 902f, 321f, 862f, 527f, -928f, -392f, -562f, 1044f, -2183f, 1546f, -957f, 2062f, -830f, 546f);

var<private> global1: i32;

var<private> global2: array<Struct_4, 30>;

var<private> global3: f32;

var<private> global4: array<vec3<bool>, 22> = array<vec3<bool>, 22>(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true));

fn func_3(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_4) -> f32 {
    global3 = trunc(sign(-(-907f + arg_2.c.a.a))) + -(floor(floor(815f)) / -(global0[u_input.a.x] / arg_2.a.e.x));
    var var_0 = arg_2.c.b.zy;
    global0 = array<f32, 23>();
    var var_1 = (-select(ceil(462f), arg_2.a.e.x, true) / abs(arg_2.a.e.x + (849f / -337f))) + var_0.x;
    let var_2 = arg_2.c;
    return 832f;
}

fn func_2() -> u32 {
    var var_0 = Struct_2(Struct_1(global0[17251u - (73264u | 76607u)] - func_3(vec4<i32>(17930i, i32(-2147483648), -10663i, -1i), u_input.a.x, global2[~u_input.a.x]), 0i), vec3<f32>(min(-712f * (189f + 746f), global0[u_input.a.x]), -global0[abs(firstLeadingBit(u_input.a.x))], (exp2(global0[u_input.a.x]) - (global0[u_input.a.x] + -1643f)) + -global0[~1u]));
    var var_1 = -sign((-vec4<f32>(1026f, -815f, global0[u_input.a.x], global0[u_input.a.x]) - select(vec4<f32>(global0[4294967295u], 830f, 1871f, -971f), vec4<f32>(-108f, -1780f, global0[1u], 786f), vec4<bool>(false, true, false, true))) * (vec4<f32>(global0[u_input.a.x], 389f, var_0.a.a, global0[44560u]) + -vec4<f32>(513f, -120f, -896f, var_0.b.x)));
    let var_2 = ~reverseBits(min(firstLeadingBit(u_input.a), ~vec4<u32>(63803u, 41823u, u_input.a.x, 4294967295u)));
    let var_3 = var_1.xwx;
    var var_4 = abs(var_0.a.b);
    return 1383u;
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: vec2<u32>, arg_3: Struct_4) -> Struct_2 {
    let var_0 = arg_3;
    global2 = array<Struct_4, 30>();
    let var_1 = Struct_1(step(-step(1155f, global0[62619u]), -(-(-904f))) / max(-107f, -(-1162f) - (arg_3.a.e.x / 704f)), 1i);
    var var_2 = arg_0;
    let var_3 = select(select(select(select(global4[1685u], global4[u_input.a.x | 10397u], false), global4[u_input.a.x], !select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false)), global4[52229u], (-30502i >= -(-80712i)) && true), !select(global4[31164u], vec3<bool>(2434f > var_0.c.a.a, !true, true | false), any(!vec3<bool>(true, false, true))), !any(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true))));
    return Struct_2(var_1, round(-vec3<f32>(var_1.a / 615f, -365f, global0[1u] - 1000f)));
}

fn func_1(arg_0: Struct_4) -> vec4<f32> {
    global0 = array<f32, 23>();
    let var_0 = round(-ceil(arg_0.a.b) + arg_0.a.b);
    let var_1 = func_4(u_input.a | vec4<u32>(43677u | firstLeadingBit(4294967295u), ~func_2(), 10946u, 48827u), min(vec2<i32>(-arg_0.c.a.b, reverseBits(arg_0.a.a.x)), -arg_0.a.a.wx) & arg_0.a.a.zx, ~select(firstLeadingBit(~vec2<u32>(4294967295u, 1u)), abs(vec2<u32>(0u, 62170u)), arg_0.a.a.x == 1i), arg_0);
    var var_2 = arg_0.a.a;
    global3 = var_1.b.x * -605f;
    return min(arg_0.a.b, vec4<f32>(-(-1176f) - min(1285f, -558f), -(var_1.a.a + 1117f), exp2(arg_0.a.b.x), 268f) + var_0);
}

fn func_5(arg_0: Struct_3) -> Struct_1 {
    global0 = array<f32, 23>();
    global3 = max(min(-(-225f), func_4(countOneBits(~u_input.a), firstTrailingBit(~arg_0.a.yy), ~u_input.a.zz - select(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.a.x, arg_0.d), false), Struct_4(Struct_3(vec4<i32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, -6164i), arg_0.b, 4294967295u, 4294967295u, vec3<f32>(-262f, arg_0.e.x, arg_0.e.x)), arg_0.a.yww, Struct_2(Struct_1(arg_0.b.x, arg_0.a.x), vec3<f32>(global0[arg_0.d], global0[21250u], arg_0.b.x)))).a.a), (global0[firstTrailingBit(arg_0.c) + arg_0.d] * 660f) * -global0[clamp(4294967295u << 2026u, max(38653u, 4294967295u), u_input.a.x)]);
    global1 = 1i;
    let var_0 = -55357i;
    var var_1 = arg_0;
    return func_4(vec4<u32>(arg_0.d, 12932u, ~14253u, var_1.c), vec2<i32>((firstTrailingBit(var_0) + 2147483647i) & reverseBits(dot(vec2<i32>(-4873i, var_1.a.x), vec2<i32>(var_0, -30537i))), arg_0.a.x), firstLeadingBit(~(u_input.a.xw / u_input.a.zw) & u_input.a.yw), global2[~arg_0.d]).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(global0[~(~(u_input.a.x >> u_input.a.x))] * abs(-(117f / -1447f)));
    var var_1 = func_5(Struct_3(((vec4<i32>(i32(-2147483648), -1i, 1i, 1i) / vec4<i32>(0i, -1i, -14337i, 30365i)) / -vec4<i32>(-1i, 1i, 1i, -31638i)) / reverseBits(vec4<i32>(28762i, 33196i, 1i, -42401i) << vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x)), -(-vec4<f32>(global0[1u], 726f, 184f, global0[4294967295u])) / (func_1(global2[u_input.a.x]) * -vec4<f32>(995f, -1291f, 537f, 2043f)), ~u_input.a.x, ~clamp(min(u_input.a.x, 6925u), clamp(u_input.a.x, 24435u, u_input.a.x), 4294967295u), max(vec3<f32>(1000f, global0[u_input.a.x] / -1464f, -650f * -194f), -(-vec3<f32>(global0[u_input.a.x], -118f, global0[9322u])))));
    let var_2 = vec4<f32>(-198f, 846f, -1119f, func_1(Struct_4(Struct_3(vec4<i32>(var_1.b, var_1.b, 29673i, var_1.b), vec4<f32>(global0[u_input.a.x], 985f, 1325f, global0[1u]), 50194u, u_input.a.x, vec3<f32>(811f, global0[4294967295u], var_1.a)), vec3<i32>(var_1.b, var_1.b, var_1.b) - vec3<i32>(var_1.b, i32(-2147483648), var_1.b), func_4(vec4<u32>(64199u, 19166u, 106293u, 12127u), vec2<i32>(-19939i, 1i), u_input.a.yx, Struct_4(Struct_3(vec4<i32>(var_1.b, 10660i, 46899i, -32374i), vec4<f32>(-395f, var_1.a, global0[57951u], -1527f), u_input.a.x, 96026u, vec3<f32>(-398f, global0[u_input.a.x], var_1.a)), vec3<i32>(var_1.b, 2147483647i, var_1.b), Struct_2(Struct_1(-811f, var_1.b), vec3<f32>(global0[u_input.a.x], var_1.a, global0[u_input.a.x])))))).x) + vec4<f32>(-var_1.a, 298f, global0[(~0u & dot(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x), u_input.a)) + (0u / 4294967295u)], -(-(-956f)));
    var var_3 = sign(vec2<f32>(round(-1647f) + 2032f, max(-243f / -341f, global0[max(17600u, u_input.a.x)]))) + -(-(vec2<f32>(var_1.a, var_2.x) + var_2.xy) - -vec2<f32>(1111f, -315f));
    global3 = -var_3.x;
    let var_4 = Struct_1(-266f, ~(-29508i));
    var var_5 = var_4;
    var var_6 = ceil(1344f);
    let var_7 = ~vec3<u32>(4294967295u, dot(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), ~u_input.a.ywx), ~19280u) + ~(~((u_input.a.wwx + vec3<u32>(u_input.a.x, 4294967295u, 4294967295u)) & u_input.a.xyw));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b >> (u_input.a.x - abs(~u_input.a.x)), u_input.a.zw, func_1(Struct_4(Struct_3(~vec4<i32>(0i, var_5.b, 1i, 44154i), var_2, 0u, ~4294967295u, -vec3<f32>(var_5.a, 306f, global0[1u])), ~(~vec3<i32>(var_1.b, 1i, var_5.b)), func_4(u_input.a, vec2<i32>(2567i, 17978i), abs(vec2<u32>(1u, var_7.x)), Struct_4(Struct_3(vec4<i32>(-3543i, var_5.b, 2147483647i, var_1.b), vec4<f32>(-429f, var_4.a, var_3.x, var_1.a), var_7.x, 35136u, var_2.zyz), vec3<i32>(var_1.b, i32(-2147483648), var_5.b), Struct_2(var_4, vec3<f32>(var_1.a, -266f, -1000f)))))).x);
}

