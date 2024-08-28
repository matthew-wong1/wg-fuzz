// {"0:0":[72,69,179,207,246,71,199,15,192,34,115,144,14,122,2,31,4,122,27,3,75,197,92,184,153,72,73,118,56,3,20,157]}
// Seed: 1666110333258561426

struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec2<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 23>;

var<private> global1: vec4<f32> = vec4<f32>(-394f, -243f, 1873f, -737f);

var<private> global2: array<u32, 26>;

var<private> global3: Struct_4;

var<private> global4: vec4<f32>;

fn func_3(arg_0: vec2<u32>) -> vec4<i32> {
    var var_0 = Struct_1(ceil(exp2(abs(vec3<f32>(global3.b.x, global4.x, global3.b.x) * global4.xzx))), firstLeadingBit(15779u) + ~arg_0.x);
    global1 = abs(round(vec4<f32>(var_0.a.x, global4.x + max(var_0.a.x, 692f), -max(global4.x, -1014f), -185f)));
    global1 = -(vec4<f32>(-global4.x, (-602f * var_0.a.x) - floor(global4.x), floor(-1004f), abs(sign(1857f))) * vec4<f32>(-global4.x, -2000f, -global3.b.x - -1000f, 1913f - -global4.x));
    let var_1 = ~global0[countOneBits(abs(4294967295u * u_input.c.x))] & ~max(41801u, firstTrailingBit(var_0.b));
    var var_2 = select(global3.a.wyz, global3.a.xyz, vec3<bool>(((global4.x * global1.x) - (global3.b.x / global3.b.x)) > (-var_0.a.x / global1.x), all(vec4<bool>(all(global3.a.xx), global3.a.x | global3.a.x, !true, var_0.a.x == 154f)), global3.a.x | global3.a.x));
    return vec4<i32>(~countOneBits((2147483647i * u_input.b.x) % -u_input.b.x), ~reverseBits(u_input.b.x), dot(-vec3<i32>(-u_input.b.x, 0i & u_input.b.x, u_input.b.x << var_0.b), ~((vec3<i32>(-46151i, u_input.b.x, 8540i) / vec3<i32>(u_input.b.x, 18116i, u_input.b.x)) * ~vec3<i32>(-2593i, u_input.b.x, u_input.b.x))), u_input.b.x - u_input.b.x);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_4) -> u32 {
    global0 = array<u32, 23>();
    var var_0 = abs(arg_0.e.a);
    global3 = arg_1;
    let var_1 = arg_0.e;
    var var_2 = ~func_3(vec2<u32>(var_1.d.b, global0[global0[41466u]])) << ~(select(select(arg_0.c, vec4<u32>(arg_0.c.x, arg_0.c.x, u_input.c.x, 35047u), arg_1.a), arg_0.c >> vec4<u32>(1424u, 4294967295u, 90103u, 69633u), !true) >> max(abs(vec4<u32>(global2[u_input.a.x], 9434u, global2[0u], var_1.e.b)), ~vec4<u32>(1u, arg_0.a.x, var_1.b.b, global0[1u])));
    return ~(~dot(vec4<u32>(60158u, arg_0.a.x, 1u, 32188u), arg_0.c)) % (global2[~(~(4294967295u ^ 0u))] << global2[u_input.a.x]);
}

fn func_4(arg_0: vec3<bool>, arg_1: f32, arg_2: u32, arg_3: u32) -> f32 {
    global0 = array<u32, 23>();
    let var_0 = Struct_3(vec3<u32>(~40328u % dot(select(vec4<u32>(arg_3, global0[15757u], global0[1u], 0u), u_input.c, arg_0.x), select(vec4<u32>(global2[1u], 21343u, 25728u, 43672u), vec4<u32>(70689u, 86988u, 31651u, 45726u), false)), ~arg_3, dot(~select(vec3<u32>(arg_3, global2[20475u], global2[23217u]), u_input.c.yzw, arg_0), vec3<u32>(u_input.a.x, global0[arg_3], arg_2))), u_input.c.zz, u_input.c >> (u_input.c & (min(vec4<u32>(2920u, arg_2, u_input.a.x, u_input.a.x), u_input.c) << u_input.c)), -vec2<f32>(global4.x, select(-arg_1, sign(global4.x), false)), Struct_2(func_3(vec2<u32>(global0[arg_3] >> arg_3, 63409u)).zzw, Struct_1(-floor(vec3<f32>(global4.x, 375f, -444f)), 41539u), Struct_1(vec3<f32>(-1623f - global4.x, -193f, 2404f + global3.b.x), 1u), Struct_1(-vec3<f32>(-1000f, arg_1, -882f), 65130u), Struct_1(vec3<f32>(-1172f - global1.x, global3.b.x, 304f + 3114f), ~u_input.a.x)));
    global4 = step(vec4<f32>(-global1.x, select(-807f - -532f, -417f, any(arg_0.yy)) / -551f, -294f, -(select(global3.b.x, 622f, true) * (700f - 1034f))), max(vec4<f32>(775f, 530f / 845f, -(-1222f), -245f), vec4<f32>(var_0.e.e.a.x - -202f, 1239f, max(var_0.e.c.a.x, global4.x), trunc(global1.x))) * (-vec4<f32>(arg_1, global4.x, global1.x, arg_1) / -(vec4<f32>(-340f, -202f, var_0.d.x, arg_1) * vec4<f32>(-238f, 1522f, global3.b.x, global3.b.x))));
    var var_1 = var_0.e;
    var_1 = Struct_2(-clamp(-vec3<i32>(11297i, u_input.b.x, -110201i), ~vec3<i32>(var_0.e.a.x, -548i, var_1.a.x), func_3(u_input.c.yx).xzw), Struct_1(exp2(var_1.b.a), func_2(var_0, Struct_4(select(vec4<bool>(arg_0.x, global3.a.x, false, arg_0.x), global3.a, false), -vec3<f32>(-1314f, var_0.e.d.a.x, -352f)))), var_0.e.d, Struct_1(step(ceil(-vec3<f32>(350f, -625f, global3.b.x)), select(vec3<f32>(global1.x, var_0.e.c.a.x, -718f) / vec3<f32>(367f, 750f, arg_1), global4.yzx / vec3<f32>(117f, 706f, -973f), !vec3<bool>(arg_0.x, arg_0.x, global3.a.x))), ~(~(~var_1.b.b))), Struct_1(vec3<f32>(2718f, -(-(-600f)), 140f), ~21858u & 0u));
    return 702f / 1287f;
}

fn func_1(arg_0: bool, arg_1: Struct_3, arg_2: vec2<u32>) -> f32 {
    global0 = array<u32, 23>();
    global1 = vec4<f32>(global1.x, 141f - -abs(global1.x), arg_1.d.x - func_4(global3.a.yww, global3.b.x, arg_1.c.x, global0[func_2(arg_1, Struct_4(vec4<bool>(global3.a.x, global3.a.x, arg_0, arg_0), global4.xyx))]), arg_1.d.x + (arg_1.d.x / -2295f)) + select(vec4<f32>(-228f, (-431f / global4.x) - (global4.x + 511f), -(-248f), trunc(-1693f)), exp2(vec4<f32>(707f, global1.x, global4.x, -328f) - ceil(vec4<f32>(206f, global3.b.x, global3.b.x, global4.x))), !(!(!false)));
    return select(global3.b.x, -(1184f + trunc(max(-1926f, 1208f))), !(!(0i < dot(vec4<i32>(-1i, arg_1.e.a.x, -1i, 2147483647i), vec4<i32>(0i, u_input.b.x, -62900i, 2147483647i)))));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_4) -> vec4<f32> {
    global0 = array<u32, 23>();
    var var_0 = vec3<u32>(firstTrailingBit(u_input.c.x), (~abs(9207u) | max(select(54918u, 4294967295u, global3.a.x), func_2(Struct_3(u_input.c.wwz, u_input.a, vec4<u32>(global2[10195u], u_input.a.x, 30431u, global2[u_input.a.x]), arg_0.b.yy, Struct_2(vec3<i32>(i32(-2147483648), 1i, 2147483647i), Struct_1(vec3<f32>(916f, arg_1.b.x, global3.b.x), global2[2546u]), Struct_1(vec3<f32>(global1.x, -824f, -1059f), 4294967295u), Struct_1(global1.wyx, u_input.a.x), Struct_1(vec3<f32>(1527f, 1000f, arg_1.b.x), 45793u))), arg_0))) % ~25553u, ~(~(~100817u)));
    var var_1 = u_input.c;
    global0 = array<u32, 23>();
    global3 = Struct_4(vec4<bool>(!true, false, all(!select(vec3<bool>(false, arg_0.a.x, true), vec3<bool>(arg_0.a.x, false, arg_0.a.x), true)), false), vec3<f32>(-884f, select((198f + global1.x) * -242f, floor(floor(global3.b.x)), arg_1.a.x), (min(global4.x, global3.b.x) / func_4(vec3<bool>(false, true, false), global4.x, var_1.x, 18058u)) + global3.b.x));
    return step(-select(ceil(vec4<f32>(global4.x, global3.b.x, -2182f, arg_0.b.x)), round(vec4<f32>(global3.b.x, 190f, global3.b.x, global1.x)), false) / -select(-vec4<f32>(-858f, 713f, -1096f, -599f), vec4<f32>(177f, arg_1.b.x, -367f, global3.b.x), select(vec4<bool>(false, arg_0.a.x, arg_1.a.x, global3.a.x), arg_0.a, arg_1.a)), max(vec4<f32>(step(-1000f, 2397f), -134f, -arg_0.b.x, 565f * global4.x) + (step(vec4<f32>(1512f, 1174f, 394f, 861f), vec4<f32>(-646f, 204f, -283f, arg_1.b.x)) * (vec4<f32>(global4.x, arg_1.b.x, -1065f, global1.x) + vec4<f32>(global1.x, global3.b.x, 777f, arg_0.b.x))), -(max(vec4<f32>(global3.b.x, global3.b.x, global3.b.x, 116f), vec4<f32>(global1.x, arg_0.b.x, arg_0.b.x, 355f)) + vec4<f32>(arg_1.b.x, 508f, 417f, arg_0.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -global3.b.x;
    let var_1 = round(func_5(Struct_4(global3.a, vec3<f32>(-894f, global3.b.x, func_1(global3.a.x, Struct_3(vec3<u32>(global0[71879u], global0[global2[global0[global0[35825u]]]], 0u), u_input.a, u_input.c, vec2<f32>(743f, 114f), Struct_2(vec3<i32>(i32(-2147483648), u_input.b.x, -1i), Struct_1(global4.wzz, u_input.a.x), Struct_1(global3.b, global2[15020u]), Struct_1(vec3<f32>(global3.b.x, -457f, global3.b.x), 0u), Struct_1(vec3<f32>(global4.x, global3.b.x, global3.b.x), global2[global2[u_input.c.x]]))), vec2<u32>(75075u, 12984u)))), Struct_4(select(select(vec4<bool>(global3.a.x, false, false, global3.a.x), vec4<bool>(global3.a.x, global3.a.x, true, global3.a.x), global3.a), !vec4<bool>(global3.a.x, global3.a.x, false, global3.a.x), !true), (vec3<f32>(global4.x, 1855f, -1000f) * vec3<f32>(1259f, -512f, -1225f)) + (vec3<f32>(421f, global3.b.x, global1.x) * global1.ywx))));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i | firstTrailingBit(reverseBits(-u_input.b.x)), -(-vec3<f32>(-1322f, trunc(1408f), -964f + global1.x)), global3.b.x * -(-(-293f)), reverseBits(abs(select(func_3(vec2<u32>(0u, 125174u)).xzx, vec3<i32>(10788i, u_input.b.x, i32(-2147483648)), false))));
}

