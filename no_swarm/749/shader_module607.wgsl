// {"0:0":[209,3,136,19,186,92,159,255,42,87,119,146,92,132,53,151,68,69,57,138,106,242,104,72,61,43,54,36,184,43,159,175,47,219,75,47,189,87,117,176,75,30,131,232,208,13,158,77]}
// Seed: 8004708241150206312

struct Struct_1 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 15> = array<vec4<u32>, 15>(vec4<u32>(1u, 0u, 1u, 0u), vec4<u32>(4294967295u, 52789u, 9310u, 4294967295u), vec4<u32>(0u, 0u, 81268u, 1u), vec4<u32>(1233u, 4294967295u, 4294967295u, 1u), vec4<u32>(0u, 10058u, 85841u, 45224u), vec4<u32>(1u, 4294967295u, 0u, 98209u), vec4<u32>(4294967295u, 4294967295u, 0u, 0u), vec4<u32>(25080u, 4294967295u, 44436u, 1u), vec4<u32>(4342u, 0u, 4294967295u, 30911u), vec4<u32>(1u, 4294967295u, 0u, 0u), vec4<u32>(64538u, 1u, 73606u, 1u), vec4<u32>(4294967295u, 1u, 56832u, 4282u), vec4<u32>(1u, 41539u, 0u, 30500u), vec4<u32>(1u, 0u, 0u, 8720u), vec4<u32>(13648u, 40303u, 48187u, 18080u));

var<private> global1: vec2<i32>;

var<private> global2: array<vec4<bool>, 9> = array<vec4<bool>, 9>(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true));

var<private> global3: array<vec3<bool>, 24>;

var<private> global4: array<vec2<i32>, 6>;

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = global3[~(~u_input.b.x) / (arg_0.e.a.x + dot(global0[select(37345u, arg_1.a.x, true) & (arg_0.a.x % 1u)], global0[4294967295u >> 0u] & ~global0[0u]))];
    global0 = array<vec4<u32>, 15>();
    var var_1 = arg_0;
    let var_2 = Struct_2(arg_0.c, vec4<i32>(-var_1.b.x, arg_0.b.x * ~(-13312i % var_1.b.x), abs(-19402i), -2776i), vec4<u32>(~(~var_1.c.x), ~4294967295u, var_1.a.x, ~1u), true, Struct_1(~arg_1.a, !arg_1.b));
    var_1 = var_2;
    return min(vec4<i32>(var_1.b.x - (~(-25849i) % countOneBits(u_input.a.x)), firstLeadingBit(1i), countOneBits(-80626i) / arg_0.b.x, firstTrailingBit(var_2.b.x) % -(1i << arg_1.a.x)), ~(vec4<i32>(15595i, 0i, arg_0.b.x, var_1.b.x) | reverseBits(vec4<i32>(18781i, var_2.b.x, arg_0.b.x, u_input.a.x))) - select(vec4<i32>(0i, var_2.b.x, var_1.b.x, i32(-2147483648)) << vec4<u32>(120769u, var_2.a.x, var_2.e.a.x, 27251u), vec4<i32>(var_2.b.x | arg_0.b.x, ~var_2.b.x, u_input.a.x, 1i), global2[47270u]));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec4<i32>) -> u32 {
    global0 = array<vec4<u32>, 15>();
    var var_0 = min((~(arg_1.c.yyz % vec3<u32>(1u, arg_0.x, arg_0.x)) << select(select(vec3<u32>(6066u, u_input.b.x, arg_0.x), vec3<u32>(u_input.b.x, u_input.b.x, arg_1.a.x), global3[57687u]), firstTrailingBit(vec3<u32>(u_input.b.x, 31196u, 21517u)), vec3<bool>(false, true, true))) % vec3<u32>(~arg_1.c.x, ~arg_1.e.a.x, ~min(u_input.b.x, 4294967295u)), arg_1.a.yxz);
    let var_1 = Struct_2(min(reverseBits(arg_1.a), ~(~vec4<u32>(22549u, 0u, 4294967295u, 40909u))) & global0[0u], firstTrailingBit(arg_1.b), global0[clamp(arg_0.x, clamp(22712u, min(arg_1.e.a.x, u_input.b.x), ~arg_0.x) + (reverseBits(0u) & (0u & arg_0.x)), arg_0.x)], false | true, arg_1.e);
    var var_2 = vec4<bool>(!true, any(select(vec2<bool>(select(var_1.e.b, true, true), all(vec3<bool>(false, true, false))), !select(vec2<bool>(var_1.d, false), vec2<bool>(false, true), vec2<bool>(arg_1.d, false)), any(select(global3[22686u], global3[var_1.a.x], vec3<bool>(arg_1.d, false, arg_1.d))))), var_1.e.b, 1u != min(clamp(dot(var_1.c.wz, vec2<u32>(var_1.e.a.x, 1u)), ~0u, reverseBits(u_input.b.x)), 42860u));
    global0 = array<vec4<u32>, 15>();
    return max(~(~min(1u, dot(vec3<u32>(1u, 120956u, 59335u), vec3<u32>(0u, u_input.b.x, var_1.a.x)))), ~(~(u_input.b.x + 1u)));
}

fn func_2() -> f32 {
    global4 = array<vec2<i32>, 6>();
    let var_0 = Struct_2(vec4<u32>(~(~(~0u)), 16888u, 0u >> u_input.b.x, 5095u), (vec4<i32>(5968i << u_input.b.x, u_input.a.x, i32(-2147483648), -14121i ^ u_input.c.x) << global0[u_input.b.x]) ^ u_input.a, vec4<u32>(u_input.b.x, ~clamp(81080u / 6766u, u_input.b.x, ~14871u), u_input.b.x, func_4(~u_input.b, Struct_2(vec4<u32>(u_input.b.x, 1u, u_input.b.x, 1u), firstLeadingBit(vec4<i32>(u_input.c.x, -23623i, 0i, -5335i)), min(vec4<u32>(0u, 28450u, 1u, u_input.b.x), global0[u_input.b.x]), all(vec3<bool>(false, false, false)), Struct_1(vec3<u32>(u_input.b.x, 0u, u_input.b.x), true)), (u_input.a * u_input.a) ^ func_3(Struct_2(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 0u), vec4<i32>(global1.x, u_input.a.x, 30572i, 8159i), global0[1u], false, Struct_1(vec3<u32>(u_input.b.x, 28054u, u_input.b.x), true)), Struct_1(vec3<u32>(11623u, 15378u, 39313u), false)))), u_input.b.x <= ((~4716u >> ~32511u) ^ dot(~global0[6060u], global0[min(u_input.b.x, 4294967295u)])), Struct_1(~(~(~vec3<u32>(4294967295u, 105882u, u_input.b.x))), false));
    var var_1 = vec4<f32>(-(-(-327f)), trunc(807f) / (-825f + (-320f * -302f)), sign(-(-207f)) * abs(-882f), round(-1141f + (-1000f - 1427f))) * vec4<f32>(exp2(-(1513f / -1439f)), -(-928f), -min(-(-370f), 804f), select(floor(646f) + -(-988f), select(-(-1644f), min(998f, 673f), true), all(vec3<bool>(var_0.e.b, false, false))));
    let var_2 = 9487i < ~(~(-global1.x));
    global1 = var_0.b.yy;
    return -var_1.x;
}

fn func_1() -> Struct_1 {
    var var_0 = !(abs(-(1657f - 832f)) >= ((-(-1346f) - (1499f + 811f)) / trunc(-(-587f))));
    global2 = array<vec4<bool>, 9>();
    var var_1 = countOneBits(u_input.c.yx) % ~(-(~(global4[u_input.b.x] << vec2<u32>(u_input.b.x, 50828u))));
    let var_2 = Struct_2(vec4<u32>(~(~0u + u_input.b.x), ~9176u, u_input.b.x, abs(u_input.b.x + u_input.b.x) ^ (u_input.b.x << (u_input.b.x - 14582u))), reverseBits(-u_input.a), global0[1u], (func_2() >= 928f) && all(vec2<bool>(!false, true)), Struct_1(clamp((vec3<u32>(u_input.b.x, 84233u, 13471u) * vec3<u32>(27778u, u_input.b.x, 0u)) ^ select(vec3<u32>(u_input.b.x, 49376u, 1u), vec3<u32>(4294967295u, u_input.b.x, 4294967295u), true), ~(vec3<u32>(21053u, 39753u, u_input.b.x) & vec3<u32>(1u, 0u, u_input.b.x)), reverseBits(vec3<u32>(u_input.b.x, 43035u, 218u) >> vec3<u32>(u_input.b.x, 14297u, 65890u))), select(any(!vec4<bool>(false, false, false, true)), false, firstLeadingBit(2147483647i) <= (2147483647i * 1i))));
    let var_3 = vec2<u32>(~572u * reverseBits(var_2.a.x ^ 44585u), firstTrailingBit(~(~u_input.b.x))) | abs(vec2<u32>(~(~64868u), ~dot(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.b.x), vec4<u32>(1u, u_input.b.x, var_2.a.x, 4294967295u))));
    return var_2.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !any(!vec4<bool>(false, false, global1.x <= u_input.c.x, all(global3[u_input.b.x])));
    global1 = (~(reverseBits(u_input.c.xy) * ~vec2<i32>(global1.x, u_input.c.x)) & vec2<i32>((global1.x / u_input.a.x) & reverseBits(-22713i), i32(-2147483648) % max(i32(-2147483648), 1i))) + clamp(global4[u_input.b.x], (max(global4[u_input.b.x], global4[u_input.b.x]) & u_input.c.xy) % select(u_input.a.yy, ~vec2<i32>(global1.x, -10147i), !vec2<bool>(true, var_0)), abs(u_input.c.zx) + firstLeadingBit(vec2<i32>(-1i, 15746i) << vec2<u32>(46594u, u_input.b.x)));
    var var_1 = func_1();
    let var_2 = var_0;
    var var_3 = vec4<i32>(dot(~((vec2<i32>(10675i, -26739i) & global4[8114u]) / ~vec2<i32>(global1.x, i32(-2147483648))), u_input.a.yx), -1i, -1i, ~(-20525i));
    var var_4 = Struct_2(select(clamp(global0[1u], global0[abs(1u)], global0[firstTrailingBit(func_4(var_1.a.zz, Struct_2(global0[u_input.b.x], u_input.a, global0[66985u], true, Struct_1(vec3<u32>(25036u, 1u, 1u), var_0)), vec4<i32>(u_input.a.x, i32(-2147483648), u_input.c.x, u_input.a.x)))]), ~firstLeadingBit(global0[4294967295u] ^ vec4<u32>(13330u, var_1.a.x, u_input.b.x, 14797u)), global2[abs(u_input.b.x)]), func_3(Struct_2(max(vec4<u32>(1u, 1u, var_1.a.x, 42948u), vec4<u32>(u_input.b.x, 32410u, 0u, u_input.b.x)), ~u_input.a + vec4<i32>(var_3.x, var_3.x, u_input.c.x, 2205i), vec4<u32>(dot(vec2<u32>(u_input.b.x, var_1.a.x), vec2<u32>(5744u, 41478u)), 4294967295u, dot(var_1.a, vec3<u32>(u_input.b.x, var_1.a.x, u_input.b.x)), 35405u ^ 8500u), false, func_1()), Struct_1(firstLeadingBit(vec3<u32>(1u, 70856u, u_input.b.x)), var_0)), ~clamp(reverseBits(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)) | vec4<u32>(u_input.b.x, 6233u, var_1.a.x, 29712u), ~global0[u_input.b.x], ~vec4<u32>(u_input.b.x, 0u, 66770u, var_1.a.x) >> (global0[u_input.b.x] << vec4<u32>(62437u, 43843u, 12165u, 25116u))), !(!func_1().b), func_1());
    let var_5 = func_1();
    global2 = array<vec4<bool>, 9>();
    var var_6 = Struct_2(~(~global0[u_input.b.x]), vec4<i32>(-var_3.x, reverseBits(u_input.a.x), (u_input.c.x << 74423u) + ~var_4.b.x, 1i) ^ ~(~vec4<i32>(global1.x, i32(-2147483648), -1i, -16204i)), ~(clamp(global0[~var_1.a.x], vec4<u32>(var_5.a.x, u_input.b.x, 1u, var_5.a.x) << global0[4294967295u], vec4<u32>(11060u, var_1.a.x, var_1.a.x, 1u)) & (vec4<u32>(var_1.a.x, 38077u, var_4.e.a.x, 63708u) & vec4<u32>(0u, 4294967295u, var_5.a.x, var_5.a.x))), var_4.b.x > var_4.b.x, var_4.e);
    let x = u_input.a;
    s_output = StorageBuffer((vec4<i32>(var_3.x, ~(-2936i), global1.x - -27741i, 0i) >> global0[(4294967295u >> u_input.b.x) + firstTrailingBit(var_4.e.a.x)]) % vec4<i32>(dot(u_input.a.zzy ^ var_6.b.wyz, vec3<i32>(6907i, var_6.b.x, 1i)), (var_4.b.x % -11326i) << 15123u, var_6.b.x, 0i), max(10508u, var_6.c.x), -(-(func_2() - (738f * 558f))));
}

