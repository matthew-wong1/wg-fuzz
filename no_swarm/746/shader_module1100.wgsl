// {"0:0":[85,59,59,113,53,11,134,188,164,199,193,119,11,113,222,110,186,122,14,242,76,75,206,194,80,56,77,226,217,229,180,127,252,207,208,166,161,241,97,92,60,255,66,136,91,93,70,210]}
// Seed: 10415595747993211412

struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: f32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: u32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 22> = array<vec3<f32>, 22>(vec3<f32>(-712f, 971f, 1667f), vec3<f32>(956f, 1000f, 2051f), vec3<f32>(597f, 416f, 1769f), vec3<f32>(-374f, 104f, -1380f), vec3<f32>(-930f, 1000f, -1575f), vec3<f32>(409f, -1050f, -594f), vec3<f32>(-219f, -295f, -643f), vec3<f32>(475f, 2032f, -877f), vec3<f32>(1505f, 1000f, -322f), vec3<f32>(-1047f, -720f, -1000f), vec3<f32>(-1229f, 2079f, 533f), vec3<f32>(116f, -925f, -948f), vec3<f32>(-775f, 1013f, 1000f), vec3<f32>(503f, 455f, -114f), vec3<f32>(790f, -348f, 1018f), vec3<f32>(-1143f, 1000f, -611f), vec3<f32>(298f, -1533f, 287f), vec3<f32>(-746f, 1610f, 1250f), vec3<f32>(378f, 1067f, -156f), vec3<f32>(311f, 686f, 1487f), vec3<f32>(-482f, 1000f, -515f), vec3<f32>(446f, 864f, 1000f));

var<private> global1: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec3<bool>(true, false, false), vec2<u32>(55797u, 1u), -361f, 69611u, true), Struct_1(vec3<bool>(false, true, false), vec2<u32>(0u, 72628u), -175f, 63617u, false), Struct_1(vec3<bool>(false, false, false), vec2<u32>(21125u, 1u), -238f, 1586u, false), Struct_1(vec3<bool>(true, false, true), vec2<u32>(10954u, 28703u), 2181f, 30231u, true), Struct_1(vec3<bool>(true, true, false), vec2<u32>(22946u, 28540u), 1808f, 82105u, true), Struct_1(vec3<bool>(true, true, true), vec2<u32>(10286u, 0u), -817f, 4294967295u, true), Struct_1(vec3<bool>(false, false, false), vec2<u32>(67504u, 8348u), 186f, 0u, false), Struct_1(vec3<bool>(true, false, true), vec2<u32>(0u, 1u), 1685f, 8238u, true), Struct_1(vec3<bool>(false, false, false), vec2<u32>(951u, 63621u), -332f, 4294967295u, false));

var<private> global2: bool = false;

var<private> global3: array<Struct_1, 15>;

var<private> global4: array<i32, 25> = array<i32, 25>(79516i, 0i, -40i, 36306i, -43240i, 24956i, i32(-2147483648), 31328i, -29084i, 1330i, 1i, 1i, -8804i, i32(-2147483648), 0i, 2147483647i, -10182i, -41228i, i32(-2147483648), -23556i, -34136i, 7249i, -5554i, 0i, -2027i);

fn func_3(arg_0: vec3<u32>, arg_1: bool, arg_2: i32, arg_3: vec4<bool>) -> vec3<i32> {
    let var_0 = -select(max(-(-(-579f)), -1939f), -trunc(-(-138f)), all(vec3<bool>(arg_1 | true, -1i > -24255i, arg_1)));
    global4 = array<i32, 25>();
    global0 = array<vec3<f32>, 22>();
    var var_1 = Struct_2(Struct_1(vec3<bool>(arg_3.x, any(!vec4<bool>(false, arg_3.x, false, true)), !arg_3.x), select(select(select(arg_0.xx, u_input.a, vec2<bool>(arg_1, true)), arg_0.zx / u_input.a, select(arg_3.xx, vec2<bool>(arg_1, false), arg_1)), abs(arg_0.zz), arg_3.xy), -min(var_0, var_0) + -446f, u_input.c, !(reverseBits(u_input.d.x) == -2147483647i)), arg_0.zy, arg_0.x, vec3<f32>(-floor(1291f) / var_0, max(var_0, 933f), -ceil(-1744f - -465f)));
    global4 = array<i32, 25>();
    return -((~u_input.b + u_input.b) * (~(u_input.b >> vec3<u32>(35137u, var_1.a.b.x, arg_0.x)) << ~select(vec3<u32>(1u, arg_0.x, 64334u), vec3<u32>(1u, u_input.a.x, var_1.c), var_1.a.a)));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = dot(u_input.d.wyy & u_input.b, (func_3(vec3<u32>(u_input.c, u_input.c, u_input.a.x), true, -1i, vec4<bool>(true, true, false, true)) + -vec3<i32>(u_input.d.x, global4[86764u], u_input.d.x)) >> ~countOneBits(vec3<u32>(59836u, 6458u, 1u))) & -(-12015i);
    let var_1 = -vec4<f32>(1000f, round(arg_1.x), abs(-arg_1.x), min(-(1000f * -506f), arg_1.x));
    var var_2 = Struct_2(Struct_1(select(select(vec3<bool>(true, false, false), !vec3<bool>(false, true, false), vec3<bool>(false, true, true)), vec3<bool>(all(vec3<bool>(false, true, false)), all(vec2<bool>(true, false)), !true), !vec3<bool>(false, false, false)), (~vec2<u32>(4294967295u, u_input.c) & (vec2<u32>(1u, u_input.c) - vec2<u32>(u_input.c, u_input.c))) / (~vec2<u32>(u_input.c, 21779u) % vec2<u32>(11140u, u_input.c)), -(-(-1832f * 330f)), firstTrailingBit(67681u), false), u_input.a, 4294967295u, trunc(vec3<f32>(-1514f, ceil(-var_1.x), arg_1.x / (arg_1.x / var_1.x))));
    let var_3 = var_2.a.a;
    let var_4 = Struct_2(global1[119355u], vec2<u32>(firstTrailingBit(min(4294967295u * u_input.c, ~var_2.c)), u_input.a.x), ~(~2152u), vec3<f32>(1000f, floor(trunc(arg_0.x)), 421f));
    return Struct_1(var_2.a.a, countOneBits(vec2<u32>(var_2.a.b.x, select(~var_2.a.b.x, ~0u, var_4.a.e == false))), 2536f, var_4.a.d, !(!(!(!true))));
}

fn func_1() -> vec2<i32> {
    let var_0 = Struct_2(func_2(vec3<f32>(2227f - 591f, -(-288f), -1160f) + select(-global0[4294967295u], global0[0u], vec3<bool>(false, true, false)), step(vec2<f32>(-357f, -544f) - vec2<f32>(907f, -1700f), select(vec2<f32>(-1140f, 1255f), vec2<f32>(-2424f, 833f), false)) + -vec2<f32>(-1000f, -298f)), vec2<u32>(u_input.a.x, u_input.c), 49276u << ~abs(62873u << 18570u), global0[u_input.c]);
    global0 = array<vec3<f32>, 22>();
    global2 = false;
    let var_1 = vec4<bool>(all(var_0.a.a.xx), var_0.a.e, all(select(select(vec4<bool>(false, var_0.a.e, var_0.a.e, var_0.a.a.x), vec4<bool>(var_0.a.a.x, false, var_0.a.a.x, false), var_0.a.a.x), select(vec4<bool>(var_0.a.e, false, var_0.a.e, true), vec4<bool>(var_0.a.a.x, true, var_0.a.a.x, false), vec4<bool>(true, false, var_0.a.e, var_0.a.a.x)), vec4<bool>(var_0.a.e, false, var_0.a.a.x, var_0.a.e))) | var_0.a.e, all(select(vec4<bool>(1u <= 45u, all(var_0.a.a), func_2(vec3<f32>(var_0.d.x, var_0.a.c, 800f), var_0.d.zx).a.x, select(true, true, true)), select(!vec4<bool>(var_0.a.a.x, var_0.a.e, false, var_0.a.a.x), !vec4<bool>(var_0.a.a.x, var_0.a.a.x, var_0.a.a.x, var_0.a.a.x), vec4<bool>(var_0.a.e, true, var_0.a.e, true)), any(vec4<bool>(false, false, var_0.a.e, false)))));
    var var_2 = Struct_2(Struct_1(!func_2(-vec3<f32>(var_0.d.x, var_0.d.x, 676f), vec2<f32>(var_0.a.c, var_0.d.x) / var_0.d.xy).a, ~u_input.a, abs(select(select(561f, var_0.a.c, var_0.a.a.x), -var_0.d.x, true)), ~(~26469u & (33446u >> u_input.c)), var_1.x), var_0.a.b, var_0.a.b.x, -var_0.d);
    return firstLeadingBit(u_input.b.zy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(-(~vec2<i32>(u_input.d.x, 13774i)), func_1());
    var_0 = countOneBits(-(~(~u_input.d.zz)));
    let var_1 = ~select(~vec2<u32>(abs(4294967295u), ~u_input.a.x), ~(~(vec2<u32>(u_input.c, 10341u) % vec2<u32>(u_input.a.x, u_input.a.x))), !select(!vec2<bool>(false, false), !vec2<bool>(false, false), true));
    let var_2 = true;
    let var_3 = Struct_1(vec3<bool>(true, any(!(!vec4<bool>(false, false, true, var_2))), var_2), ~countOneBits(select(clamp(vec2<u32>(u_input.a.x, var_1.x), u_input.a, vec2<u32>(u_input.a.x, var_1.x)), ~u_input.a, all(vec3<bool>(var_2, false, true)))), ((-1033f / -(-471f)) - (-314f * (827f / 512f))) / (-310f * step(-207f + 1120f, func_2(global0[var_1.x], vec2<f32>(1436f, 862f)).c)), var_1.x >> ~(~(u_input.c / 30759u)), all(vec4<bool>(var_2, !(-660f > 402f), -(-1000f) <= -308f, -534f <= 422f)));
    global3 = array<Struct_1, 15>();
    let x = u_input.a;
    s_output = StorageBuffer((-(-vec2<f32>(var_3.c, var_3.c)) * -(-vec2<f32>(-651f, -858f))) / (round(vec2<f32>(var_3.c, -118f) + vec2<f32>(1924f, -651f)) * -vec2<f32>(var_3.c, var_3.c)), reverseBits(~23172u));
}

