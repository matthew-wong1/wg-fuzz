// {"0:0":[166,121,130,238,50,82,29,78,172,78,97,244,148,206,15,200]}
// Seed: 5586360419719152198

struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: f32,
    d: vec3<i32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: bool,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26>;

fn func_3(arg_0: bool, arg_1: Struct_3) -> bool {
    global0 = array<bool, 26>();
    let var_0 = select(-(-arg_1.b.a.a) - arg_1.a.a.a, arg_1.a.a.a, !(!arg_1.a.a.e)) + (exp2(-(arg_1.b.a.a + vec2<f32>(arg_1.a.c, 408f))) / (arg_1.a.a.a - ((vec2<f32>(580f, arg_1.b.a.a.x) - vec2<f32>(146f, arg_1.c.a.x)) + arg_1.c.a)));
    global0 = array<bool, 26>();
    var var_1 = Struct_2(Struct_1(-min(-vec2<f32>(var_0.x, var_0.x), round(vec2<f32>(var_0.x, 723f))), 46984u, var_0.x, arg_1.a.a.d, vec2<bool>(!(global0[arg_1.b.a.b] || true), false)), ~dot(vec3<u32>(1u, 4294967295u / arg_1.e.x, ~6644u), clamp(vec3<u32>(0u, arg_1.e.x, 4294967295u), vec3<u32>(arg_1.b.b, arg_1.e.x, arg_1.e.x), vec3<u32>(4294967295u, 24222u, arg_1.c.b)) << abs(vec3<u32>(arg_1.c.b, 4294967295u, arg_1.a.a.b))), -186f);
    var var_2 = var_1.a.d.x;
    return true;
}

fn func_2() -> Struct_2 {
    var var_0 = !select(select(select(select(vec2<bool>(global0[8405u], true), vec2<bool>(global0[4294967295u], true), true), select(vec2<bool>(false, global0[131u]), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true)), vec2<bool>(false, func_3(global0[31465u], Struct_3(Struct_2(Struct_1(vec2<f32>(-634f, -1149f), 79704u, -1296f, u_input.a, vec2<bool>(false, true)), 30957u, -385f), Struct_2(Struct_1(vec2<f32>(410f, -1183f), 0u, 284f, vec3<i32>(u_input.a.x, 2147483647i, 21342i), vec2<bool>(false, global0[0u])), 4294967295u, -446f), Struct_1(vec2<f32>(-507f, -190f), 74207u, 1622f, vec3<i32>(u_input.a.x, u_input.a.x, 925i), vec2<bool>(false, true)), false, vec2<u32>(4294967295u, 60363u)))), global0[dot(vec4<u32>(8258u, 52899u, 10u, 21196u), vec4<u32>(0u, 4090u, 40075u, 4294967295u)) ^ (1u / 0u)]), !(!(!vec2<bool>(global0[49546u], true))), global0[4294967295u] | false);
    global0 = array<bool, 26>();
    var var_1 = -vec3<i32>(u_input.a.x, -(u_input.a.x | u_input.a.x), ~u_input.a.x);
    var_1 = vec3<i32>(-((39702i >> 30586u) / 26840i) - ~u_input.a.x, firstLeadingBit(var_1.x | ~(i32(-2147483648) & 2147483647i)), abs(u_input.a.x));
    return Struct_2(Struct_1(ceil(-(-vec2<f32>(-402f, 1350f))), dot(vec2<u32>(~1u, max(4294967295u, 88274u)), vec2<u32>(abs(4294967295u), ~31686u)), -1000f, u_input.a, !vec2<bool>(900f >= 1878f, func_3(var_0.x, Struct_3(Struct_2(Struct_1(vec2<f32>(375f, 782f), 4294967295u, -292f, vec3<i32>(var_1.x, var_1.x, -29421i), vec2<bool>(global0[5512u], global0[0u])), 37127u, -1367f), Struct_2(Struct_1(vec2<f32>(-1086f, -1591f), 1u, -1326f, vec3<i32>(u_input.a.x, u_input.a.x, 1i), vec2<bool>(global0[4294967295u], global0[0u])), 18546u, 655f), Struct_1(vec2<f32>(246f, -539f), 12136u, -707f, vec3<i32>(var_1.x, 30619i, u_input.a.x), vec2<bool>(global0[58543u], false)), false, vec2<u32>(38779u, 0u))))), reverseBits((0u + reverseBits(9531u)) * ~(16172u >> 0u)), 407f);
}

fn func_4(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: i32, arg_3: Struct_1) -> Struct_2 {
    global0 = array<bool, 26>();
    var var_0 = vec3<u32>(arg_0.c.b, abs(reverseBits(~select(arg_3.b, arg_3.b, true))), firstTrailingBit(~(~4294967295u)));
    let var_1 = i32(-2147483648);
    let var_2 = vec3<i32>(~u_input.a.x ^ 24782i, -1i, arg_0.b.a.d.x >> ~(arg_0.a.a.b >> (arg_3.b << 19551u)));
    let var_3 = func_2().a;
    return arg_0.b;
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    let var_0 = Struct_3(arg_0, func_4(Struct_3(arg_0, func_2(), arg_0.a, all(arg_0.a.e), select(vec2<u32>(4294967295u, arg_0.a.b), vec2<u32>(arg_0.b, arg_0.b), false) | vec2<u32>(arg_0.a.b, arg_0.b)), (-vec4<f32>(arg_0.a.a.x, 172f, 676f, arg_0.a.a.x) * -vec4<f32>(-918f, arg_0.c, 1625f, arg_0.a.a.x)) + min(min(vec4<f32>(332f, arg_0.c, arg_0.a.a.x, arg_0.c), vec4<f32>(arg_0.c, arg_0.a.c, arg_0.c, arg_0.c)), round(vec4<f32>(1000f, arg_0.c, arg_0.a.c, arg_0.a.a.x))), min(-1i, -30777i), func_2().a), arg_0.a, !((u_input.a.x | 3085i) <= dot(vec3<i32>(-60755i, arg_0.a.d.x, arg_0.a.d.x) | vec3<i32>(arg_0.a.d.x, u_input.a.x, u_input.a.x), ~arg_0.a.d)), vec2<u32>(14181u, 50480u));
    return var_0.b.a;
}

fn func_5(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: Struct_3) -> f32 {
    global0 = array<bool, 26>();
    global0 = array<bool, 26>();
    var var_0 = select(select(select(func_4(Struct_3(Struct_2(arg_2.b.a, 1u, 1000f), Struct_2(arg_0.a.a, arg_2.e.x, 1000f), arg_0.b.a, arg_1.x, arg_2.e), vec4<f32>(538f, arg_2.b.a.a.x, 520f, -968f) - vec4<f32>(arg_2.b.c, arg_0.c.a.x, -108f, arg_2.b.a.a.x), dot(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(i32(-2147483648), arg_0.c.d.x, 36800i)), Struct_1(vec2<f32>(202f, arg_0.a.c), arg_2.c.b, -523f, vec3<i32>(0i, 2147483647i, arg_0.c.d.x), vec2<bool>(arg_1.x, true))).a.e, func_2().a.e, arg_0.b.a.e), !func_1(func_2()).e, vec2<bool>(arg_0.a.a.e.x == false, any(!arg_1.yz))), arg_1.xz, vec2<bool>(true, true));
    global0 = array<bool, 26>();
    var var_1 = arg_0.b.a;
    return (sign(-(-(-2429f))) * -787f) / -325f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 26>();
    global0 = array<bool, 26>();
    var var_0 = false;
    var var_1 = func_5(Struct_3(Struct_2(func_1(Struct_2(Struct_1(vec2<f32>(1088f, -1283f), 0u, 361f, vec3<i32>(u_input.a.x, -35285i, 2147483647i), vec2<bool>(false, false)), 15422u, -2077f)), abs(17542u), step(900f, -830f)), Struct_2(func_1(Struct_2(Struct_1(vec2<f32>(1695f, -530f), 73191u, -713f, u_input.a, vec2<bool>(global0[16619u], false)), 4500u, 1000f)), 0u, abs(1089f)), func_4(Struct_3(Struct_2(Struct_1(vec2<f32>(1043f, -730f), 19109u, -376f, u_input.a, vec2<bool>(false, true)), 11447u, -2381f), Struct_2(Struct_1(vec2<f32>(486f, -576f), 51177u, 1000f, vec3<i32>(-32203i, -1i, u_input.a.x), vec2<bool>(true, true)), 0u, 1563f), Struct_1(vec2<f32>(364f, 1427f), 24080u, -1340f, vec3<i32>(u_input.a.x, u_input.a.x, 4381i), vec2<bool>(false, true)), global0[0u], vec2<u32>(1u, 9576u)), select(vec4<f32>(-1381f, 131f, -1032f, 1338f), vec4<f32>(-1455f, -306f, -1596f, -2637f), global0[5555u]), -u_input.a.x, Struct_1(vec2<f32>(265f, -237f), 25579u, 111f, vec3<i32>(u_input.a.x, u_input.a.x, i32(-2147483648)), vec2<bool>(true, true))).a, global0[43651u], min(vec2<u32>(26306u, 4294967295u) - vec2<u32>(1u, 13725u), vec2<u32>(0u, 1u))), select(vec4<bool>(u_input.a.x > u_input.a.x, true, any(vec2<bool>(global0[1u], global0[29554u])), global0[select(0u, 3815u, global0[4294967295u])]), !(!vec4<bool>(global0[75511u], false, global0[79755u], false)), !(-945f < 1004f)), Struct_3(Struct_2(Struct_1(vec2<f32>(436f, -892f), 23028u, 692f, vec3<i32>(2147483647i, 0i, u_input.a.x), vec2<bool>(global0[0u], global0[12652u])), countOneBits(8856u), -(-1374f)), func_2(), Struct_1(vec2<f32>(444f, -389f), dot(vec4<u32>(53810u, 2314u, 36988u, 24970u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 0u)), -500f, vec3<i32>(u_input.a.x, 17335i, 1351i), vec2<bool>(global0[38225u], false)), !all(vec3<bool>(global0[108346u], true, true)), ~(~vec2<u32>(1u, 4294967295u)))) / -1000f;
    var var_2 = !any(!vec4<bool>(global0[firstLeadingBit(4294967295u)], !global0[38029u], !global0[0u], global0[1u]));
    let x = u_input.a;
    s_output = StorageBuffer(~clamp(reverseBits(46826u / 22825u), ~firstLeadingBit(1072u), ~(4294967295u | 62957u)), vec3<i32>(-35145i, max(firstLeadingBit(4360i) % 1i, 14276i | -u_input.a.x), 29156i), -dot(u_input.a, u_input.a) + (firstLeadingBit(u_input.a.x >> 1u) | dot(vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i), ~u_input.a)), -550f);
}

