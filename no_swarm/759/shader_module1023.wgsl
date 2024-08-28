// {"0:0":[85,237,217,168,241,97,99,109,156,146,82,244,35,172,122,213,32,90,252,137,201,66,22,67,121,17,75,17,71,73,89,11,200,227,159,85,89,128,135,200,76,162,113,112,38,200,156,100]}
// Seed: 12785785779490208323

struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: u32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 16>;

var<private> global1: array<vec2<f32>, 13>;

var<private> global2: array<u32, 14>;

fn func_3(arg_0: i32) -> vec2<f32> {
    global2 = array<u32, 14>();
    global1 = array<vec2<f32>, 13>();
    var var_0 = -(ceil(-vec2<f32>(-149f, -1372f)) / global1[13826u]) + global1[dot(u_input.a.zwz, (select(u_input.a.ywx, u_input.a.zwz, vec3<bool>(true, global0[1u], global0[global2[1u]])) % ~vec3<u32>(global2[u_input.a.x], 0u, 10081u)) + vec3<u32>(global2[u_input.a.x] * 35877u, global2[1u], 1u - u_input.a.x))];
    global0 = array<bool, 16>();
    let var_1 = Struct_1(vec2<bool>(global0[~1u], global0[~0u]), -287f, ~(~(10113u * 1u) - (~0u << global2[1u])), vec3<bool>(global0[39380u + 1u], global0[4294967295u - 21831u], false));
    return select(select(global1[~(~1u / (u_input.a.x >> var_1.c))], trunc(global1[(0u ^ 4294967295u) % global2[11941u]]), !(!global0[38208u]) | var_1.a.x), vec2<f32>(var_1.b, min(-(-var_0.x), 947f)), vec2<bool>(all(!(!vec4<bool>(var_1.d.x, false, false, global0[1u]))), var_1.d.x));
}

fn func_4(arg_0: i32, arg_1: vec2<f32>) -> vec3<i32> {
    var var_0 = round(vec3<f32>(trunc(exp2(floor(1570f))), -(-arg_1.x), -sign(arg_1.x)));
    var var_1 = Struct_1(vec2<bool>(global0[u_input.a.x], true), func_3(dot(-vec4<i32>(8658i, i32(-2147483648), -32572i, u_input.b) - vec4<i32>(u_input.b, u_input.d.x, u_input.d.x, 2147483647i), (vec4<i32>(arg_0, -21441i, 0i, 2147483647i) ^ vec4<i32>(1i, u_input.d.x, -5296i, -6544i)) << reverseBits(u_input.a))).x, select(~firstLeadingBit(dot(u_input.a, u_input.a)), ~dot(u_input.a.zzw & u_input.a.ywz, firstLeadingBit(vec3<u32>(global2[61866u], u_input.c.x, 0u))), !(!true)), !(!vec3<bool>(true, any(vec2<bool>(global0[16412u], false)), var_0.x != var_0.x)));
    var var_2 = countOneBits(abs(1i - u_input.d.x));
    var var_3 = ~4294967295u;
    var var_4 = clamp(dot(min(vec4<u32>(~global2[u_input.a.x], 72996u, max(1u, var_1.c), 4294967295u), vec4<u32>(u_input.c.x / 80584u, 0u | u_input.c.x, 2927u ^ 4294967295u, var_1.c)), u_input.a), ~(dot(~vec4<u32>(var_1.c, var_1.c, u_input.c.x, var_1.c), vec4<u32>(42127u, global2[0u], 4294967295u, global2[4930u]) / u_input.a) % firstTrailingBit(var_1.c)), countOneBits(37007u));
    return u_input.d;
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: bool, arg_3: Struct_1) -> i32 {
    let var_0 = (2147483647i % arg_1) % (countOneBits(-1i) / (0i << ~min(arg_0.c, 0u)));
    let var_1 = u_input.d.x;
    global2 = array<u32, 14>();
    let var_2 = arg_3;
    var var_3 = vec2<bool>(true, false);
    return dot(u_input.d + (vec3<i32>(-1i, countOneBits(arg_1), var_0 ^ var_1) % vec3<i32>(clamp(var_1, i32(-2147483648), u_input.d.x), -1i, var_0)), func_4(var_0, trunc(func_3(arg_1))));
}

fn func_1() -> vec2<bool> {
    var var_0 = u_input.d.yz;
    let var_1 = vec4<i32>(37014i, u_input.b, max(countOneBits(reverseBits(9770i)), firstTrailingBit(-1i) ^ (-51357i * 46019i)), (~var_0.x % 2147483647i) * min(func_2(Struct_1(vec2<bool>(global0[1u], global0[48076u]), -893f, u_input.a.x, vec3<bool>(global0[global2[u_input.c.x]], false, true)), 1i, true, Struct_1(vec2<bool>(global0[global2[global2[u_input.a.x]]], global0[global2[global2[u_input.a.x]]]), 1305f, 0u, vec3<bool>(true, global0[46807u], true))), max(u_input.b, -29761i))) | -(((vec4<i32>(var_0.x, i32(-2147483648), u_input.d.x, u_input.d.x) >> u_input.a) / vec4<i32>(0i, var_0.x, u_input.d.x, 4184i)) + countOneBits(-vec4<i32>(u_input.d.x, var_0.x, -9717i, -45249i)));
    var var_2 = min(~(-(~select(vec3<i32>(-33501i, u_input.d.x, -21730i), vec3<i32>(var_0.x, var_0.x, -41720i), vec3<bool>(global0[1u], true, true)))), countOneBits(vec3<i32>(reverseBits(~var_1.x), reverseBits(~(-21837i)), -39923i)));
    var_2 = ~u_input.d;
    var_0 = ~vec2<i32>(0i, firstTrailingBit(var_0.x));
    return select(select(vec2<bool>(!(!global0[u_input.c.x]), all(!vec2<bool>(false, false))), vec2<bool>(false, global0[u_input.a.x] || !global0[31092u]), vec2<bool>(global0[4294967295u], global0[firstTrailingBit(global2[u_input.c.x]) >> 4294967295u])), select(select(!vec2<bool>(global0[1376u], global0[0u]), !select(vec2<bool>(false, global0[u_input.a.x]), vec2<bool>(global0[1u], global0[u_input.a.x]), true), global0[~firstLeadingBit(u_input.c.x)]), !(!vec2<bool>(global0[global2[1u]], global0[1u])), !select(vec2<bool>(global0[1u], global0[42213u]), vec2<bool>(global0[1u], false), true)), !false);
}

fn func_5(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: u32) -> vec3<bool> {
    let var_0 = u_input.b | -47693i;
    let var_1 = arg_0;
    var var_2 = vec4<bool>(true, !all(select(!vec4<bool>(global0[4294967295u], false, true, true), select(vec4<bool>(global0[arg_1.x], true, global0[81015u], true), vec4<bool>(true, arg_2.d.x, global0[4294967295u], arg_2.d.x), arg_2.d.x), !false)), ~arg_3 < (((80368u | 37922u) ^ countOneBits(7209u)) ^ (~0u & min(6941u, 22095u))), arg_2.d.x & select(!(arg_2.a.x | false), all(!vec4<bool>(false, global0[u_input.a.x], global0[39089u], true)), all(select(vec3<bool>(false, arg_2.d.x, true), arg_2.d, true))));
    var var_3 = true;
    var var_4 = arg_2;
    return select(var_2.zyw, !var_2.yzy, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~vec4<i32>(-25866i, u_input.b, u_input.b, u_input.d.x | u_input.b)) - vec4<i32>(-u_input.b, ~(~(~u_input.d.x)), dot(clamp(~vec4<i32>(1i, u_input.d.x, u_input.b, u_input.b), clamp(vec4<i32>(-51112i, -15453i, u_input.d.x, 25583i), vec4<i32>(2147483647i, 2147483647i, u_input.d.x, u_input.d.x), vec4<i32>(u_input.b, u_input.b, i32(-2147483648), u_input.d.x)), ~vec4<i32>(2147483647i, u_input.b, 33756i, 0i)), (vec4<i32>(60877i, 2147483647i, u_input.b, 1i) - vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.b)) << (u_input.a ^ u_input.a)), ~(-(38800i + 29687i)));
    var var_1 = Struct_1(vec2<bool>(any(select(vec2<bool>(global0[global2[24171u]], global0[26180u]), !vec2<bool>(global0[1u], true), select(vec2<bool>(true, true), vec2<bool>(global0[1u], true), true))), 13696u != ~global2[~global2[17827u]]), exp2(-abs(1614f)), abs(0u) | ~global2[(global2[46893u] >> u_input.a.x) - 43499u], select(func_5(vec3<f32>(-385f, -1198f, -(-555f)), u_input.a.wzy ^ vec3<u32>(global2[u_input.c.x], 1u, 0u), Struct_1(func_1(), step(331f, -188f), firstTrailingBit(u_input.c.x), !vec3<bool>(true, false, true)), 35202u), vec3<bool>(true, all(vec4<bool>(global0[global2[u_input.a.x]], true, global0[u_input.a.x], global0[global2[1u]])), true == all(vec2<bool>(false, true))), select(select(!vec3<bool>(false, true, global0[global2[u_input.c.x]]), select(vec3<bool>(global0[0u], global0[global2[38166u]], false), vec3<bool>(false, false, false), vec3<bool>(global0[global2[u_input.c.x]], false, global0[global2[4294967295u]])), vec3<bool>(true, global0[global2[0u]], global0[u_input.a.x])), select(!vec3<bool>(global0[u_input.a.x], false, false), !vec3<bool>(global0[0u], global0[u_input.c.x], false), func_5(vec3<f32>(1126f, 357f, -409f), u_input.a.yyw, Struct_1(vec2<bool>(global0[1u], global0[47396u]), -413f, 4294967295u, vec3<bool>(global0[1u], true, false)), 0u)), global0[select(34932u, ~0u, false)])));
    global2 = array<u32, 14>();
    let var_2 = Struct_1(!select(vec2<bool>(var_1.b <= var_1.b, select(global0[4294967295u], var_1.a.x, var_1.a.x)), select(select(var_1.d.yx, var_1.d.xy, true), var_1.d.yy, global0[1u]), var_1.a), var_1.b, ~(~(~(59923u >> u_input.a.x))), !var_1.d);
    let var_3 = false;
    let var_4 = (firstLeadingBit(1u ^ dot(vec4<u32>(33697u, var_2.c, 0u, var_2.c), vec4<u32>(0u, 4294967295u, 0u, var_1.c))) >> select(~(~15426u), 13711u, true)) > abs(~20787u);
    let var_5 = vec2<u32>(~dot(max(~u_input.a, u_input.a), u_input.a + vec4<u32>(global2[var_1.c], var_1.c, 48158u, u_input.c.x)), clamp(56660u, dot(abs(u_input.a.yz), abs(u_input.a.yw)) / (dot(u_input.a.yyz, vec3<u32>(u_input.a.x, global2[var_2.c], 0u)) >> ~4294967295u), dot(~abs(u_input.a), max(vec4<u32>(var_1.c, 1u, u_input.a.x, 1u) >> vec4<u32>(var_2.c, 95201u, 4294967295u, u_input.c.x), ~vec4<u32>(var_2.c, 1u, u_input.c.x, 4294967295u)))));
    let var_6 = u_input.a.ywx & (vec3<u32>(var_5.x, ~firstLeadingBit(71162u), ~var_2.c) + (vec3<u32>(dot(vec3<u32>(var_1.c, var_2.c, var_2.c), vec3<u32>(0u, global2[13800u], var_2.c)), 53432u, 4294967295u - 1u) >> (vec3<u32>(var_5.x, 4294967295u, 4294967295u) % (vec3<u32>(u_input.a.x, 4294967295u, 715u) + vec3<u32>(var_2.c, 4294967295u, 4294967295u)))));
    global0 = array<bool, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_5.x, dot(firstLeadingBit(u_input.a) & u_input.a, ~(~u_input.a)), u_input.a.x, var_1.c), -(vec3<f32>(var_2.b, -339f, var_1.b) / (vec3<f32>(var_2.b, var_2.b, -785f) + vec3<f32>(var_1.b, var_2.b, var_1.b))) - -vec3<f32>(trunc(1347f), 639f, 1000f), floor(-(-vec4<f32>(214f, 271f, var_1.b, 1108f) - vec4<f32>(-858f, var_2.b, var_1.b, var_2.b))), exp2(-var_1.b), -var_1.b);
}

