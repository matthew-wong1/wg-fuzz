// {"0:0":[245,146,81,197,8,96,237,164]}
// Seed: 10296425370789779503

struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: bool,
    e: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> bool {
    let var_0 = -u_input.a;
    var var_1 = arg_0;
    var_1 = arg_0;
    var var_2 = arg_1.c;
    let var_3 = Struct_3(Struct_1(select(-var_1.c.a, vec3<i32>(countOneBits(-58882i), 2147483647i | 13971i, i32(-2147483648)), !vec3<bool>(arg_1.d, arg_0.c.d, var_1.a)), min(~dot(var_1.c.e, vec2<u32>(24268u, 4294967295u)), ~(4294967295u >> arg_1.b)), abs(arg_1.c), false, vec2<u32>(~1u, 0u) << arg_0.c.e), Struct_2(false & false, ~vec2<i32>(clamp(32120i, u_input.a.x, 0i), 1i), Struct_1(vec3<i32>(25566i, dot(vec4<i32>(arg_1.a.x, var_0.x, arg_1.a.x, 2147483647i), vec4<i32>(var_1.b.x, 33499i, 81903i, -1i)), arg_1.a.x * 13542i), 0u * 26883u, abs(var_1.c.e.x), floor(var_1.d.x) <= (388f - -500f), vec2<u32>(firstLeadingBit(arg_0.c.b), arg_1.b ^ 4294967295u)), vec3<f32>(trunc(max(-225f, var_1.d.x)), -var_1.d.x * var_1.d.x, 915f)));
    return arg_0.c.d;
}

fn func_4(arg_0: vec3<bool>, arg_1: bool, arg_2: f32) -> vec3<i32> {
    let var_0 = -(-(~(~clamp(vec4<i32>(65814i, 10084i, u_input.a.x, 2147483647i), vec4<i32>(417i, u_input.a.x, u_input.a.x, 19212i), vec4<i32>(8240i, 0i, u_input.a.x, u_input.a.x)))));
    var var_1 = Struct_2(all(vec3<bool>(~u_input.a.x >= ~u_input.a.x, all(arg_0), true)), firstTrailingBit(vec2<i32>(select(i32(-2147483648), 26996i / var_0.x, !false), -abs(var_0.x))), Struct_1(max(abs(var_0.zwz), var_0.wxw), ~0u, 4294967295u, any(select(!vec3<bool>(arg_1, arg_0.x, false), vec3<bool>(false, arg_1, true), select(arg_0, vec3<bool>(arg_0.x, true, arg_0.x), true))), vec2<u32>(~(~1u), 56219u)), vec3<f32>(arg_2, -1598f, arg_2 - arg_2));
    var var_2 = select(countOneBits(var_1.c.e.x), ~(~4294967295u * var_1.c.e.x), all(!arg_0));
    let var_3 = Struct_2(true, u_input.a, Struct_1(vec3<i32>(i32(-2147483648), 1i, ~(-13915i)), var_1.c.c, var_1.c.e.x, arg_1 | select(var_1.c.d, var_1.c.d, !arg_0.x), ~select(vec2<u32>(0u, var_1.c.b), var_1.c.e, var_1.c.d) >> reverseBits(var_1.c.e * vec2<u32>(var_1.c.b, 2203u))), exp2(vec3<f32>(exp2(-(-613f)), var_1.d.x * 454f, var_1.d.x)));
    var var_4 = var_3.d.x - ((arg_2 * (-469f - 1601f)) - (1617f + -101f));
    return max(vec3<i32>(var_3.c.a.x, -38315i >> var_1.c.b, dot(vec2<i32>(var_1.c.a.x, 37259i), reverseBits(var_0.ww))), var_0.ywy) % var_0.xxw;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<f32>) -> u32 {
    var var_0 = Struct_1(func_4(vec3<bool>(55959i >= u_input.a.x, true, arg_0.x), !(arg_0.x == func_3(Struct_2(arg_0.x, u_input.a, Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, 95569i), 0u, 1u, arg_0.x, vec2<u32>(4294967295u, 19565u)), vec3<f32>(arg_1.x, arg_1.x, 1305f)), Struct_1(vec3<i32>(u_input.a.x, 21659i, u_input.a.x), 87704u, 45374u, false, vec2<u32>(23127u, 4825u)))), floor(arg_1.x)), ~(~4294967295u), 49845u, arg_0.x, countOneBits((~vec2<u32>(4294967295u, 4294967295u) * (vec2<u32>(0u, 1u) << vec2<u32>(23145u, 23449u))) / firstTrailingBit(~vec2<u32>(1u, 1u))));
    let var_1 = Struct_2(true, ~vec2<i32>(~reverseBits(1i), var_0.a.x), Struct_1(firstTrailingBit(~var_0.a), 29283u, var_0.b, true, firstTrailingBit(var_0.e)), trunc(min((vec3<f32>(1566f, arg_1.x, arg_1.x) * vec3<f32>(arg_1.x, 698f, -798f)) * min(vec3<f32>(1024f, -172f, arg_1.x), vec3<f32>(arg_1.x, arg_1.x, arg_1.x)), -(-vec3<f32>(arg_1.x, -1800f, -374f)))));
    var var_2 = ~var_0.e - var_0.e;
    var var_3 = Struct_3(var_1.c, Struct_2(49670u < ~(~1u), vec2<i32>(-28358i, abs(-1i)), Struct_1(select(vec3<i32>(2147483647i, 89915i, -61096i), vec3<i32>(u_input.a.x, -3109i, var_0.a.x), var_1.c.d) | var_0.a, var_2.x, 33816u, !(false | false), min(~vec2<u32>(var_1.c.e.x, 19438u), clamp(var_0.e, var_1.c.e, vec2<u32>(var_1.c.e.x, var_0.b)))), vec3<f32>(step(var_1.d.x + arg_1.x, var_1.d.x), ceil(max(559f, var_1.d.x)), -1519f)));
    let var_4 = var_1.c;
    return 31605u;
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: vec4<bool>, arg_3: Struct_2) -> Struct_2 {
    return arg_3;
}

fn func_1() -> vec3<u32> {
    let var_0 = func_5(func_2(!vec3<bool>(false, select(true, false, false), false || true), -max(-vec2<f32>(453f, -1000f), vec2<f32>(875f, 1329f))), -1000f, !(!(!(!vec4<bool>(true, true, false, true)))), Struct_2(-1i >= countOneBits(u_input.a.x), vec2<i32>(2147483647i, -u_input.a.x) % -(-u_input.a), Struct_1(clamp(vec3<i32>(u_input.a.x, u_input.a.x, -5995i) / vec3<i32>(u_input.a.x, 34957i, -35182i), -vec3<i32>(i32(-2147483648), u_input.a.x, u_input.a.x), ~vec3<i32>(1i, 80869i, u_input.a.x)), dot(~vec2<u32>(0u, 2194u), ~vec2<u32>(0u, 0u)), ~1u - select(3233u, 1u, true), !(!false), ~(~vec2<u32>(75327u, 0u))), -(vec3<f32>(-1000f, 104f, 823f) + vec3<f32>(-1000f, 1164f, -199f)) / (abs(vec3<f32>(1428f, -316f, 1268f)) / vec3<f32>(-488f, 2676f, 202f))));
    let var_1 = var_0.c;
    var var_2 = Struct_3(func_5(4294967295u, var_0.d.x, vec4<bool>(var_0.c.d, var_0.c.d, func_5(var_1.c + var_1.c, floor(var_0.d.x), !vec4<bool>(false, var_1.d, false, true), func_5(18119u, -663f, vec4<bool>(var_1.d, var_1.d, var_1.d, false), Struct_2(var_1.d, vec2<i32>(47916i, var_1.a.x), var_0.c, vec3<f32>(-1000f, var_0.d.x, 1227f)))).a, false), func_5(0u, var_0.d.x, vec4<bool>(true || var_0.a, var_0.a, !var_0.c.d, false), Struct_2(var_0.c.a.x == -1i, ~var_0.c.a.zz, func_5(var_0.c.b, 1715f, vec4<bool>(var_1.d, var_0.a, var_0.a, false), Struct_2(true, u_input.a, Struct_1(var_0.c.a, var_0.c.c, var_1.e.x, var_1.d, vec2<u32>(1u, var_1.b)), vec3<f32>(-394f, -1006f, var_0.d.x))).c, -var_0.d))).c, var_0);
    var_2 = Struct_3(func_5(reverseBits(abs(~4294967295u)), ((621f - var_0.d.x) / select(var_0.d.x, var_2.b.d.x, var_0.a)) + (-273f - step(var_0.d.x, -459f)), select(vec4<bool>(any(vec4<bool>(false, false, var_0.c.d, var_2.b.a)), var_0.c.d, all(vec3<bool>(true, false, var_1.d)), var_2.b.c.d), select(!vec4<bool>(true, true, true, true), !vec4<bool>(false, true, true, var_0.a), !vec4<bool>(var_2.a.d, true, var_0.c.d, true)), select(vec4<bool>(var_2.a.d, true, var_0.c.d, var_2.a.d), vec4<bool>(false, var_0.a, var_1.d, var_0.c.d), select(vec4<bool>(false, true, true, true), vec4<bool>(true, var_1.d, var_2.b.a, true), vec4<bool>(var_2.b.a, var_1.d, var_2.a.d, false)))), var_2.b).c, func_5(countOneBits(~var_0.c.c), 2367f, select(select(vec4<bool>(true, true, var_2.a.d, var_1.d), !vec4<bool>(false, true, false, var_2.a.d), vec4<bool>(false, var_0.a, var_0.c.d, false)), vec4<bool>(false, !var_1.d, true, func_3(var_0, var_0.c)), vec4<bool>(var_2.b.d.x >= -1292f, 6373u >= var_2.a.c, var_0.d.x <= -484f, !var_0.a)), Struct_2(var_2.a.d, -vec2<i32>(u_input.a.x, -1i) % -vec2<i32>(1i, var_1.a.x), var_0.c, vec3<f32>(-(-533f), -935f, -149f / -487f))));
    var_2 = Struct_3(func_5((min(var_2.a.b, var_0.c.c) + ~var_0.c.c) | (firstLeadingBit(39131u) - ~41735u), var_0.d.x * exp2(var_2.b.d.x), vec4<bool>(func_5(var_1.b, -1481f, vec4<bool>(var_0.c.d, true, var_1.d, false), var_0).c.c != var_1.c, var_0.a, var_1.d, var_1.d), Struct_2(all(select(vec4<bool>(var_1.d, var_0.a, true, var_0.c.d), vec4<bool>(var_2.b.c.d, var_2.a.d, false, true), vec4<bool>(false, false, true, true))), -vec2<i32>(var_0.c.a.x, 27635i), var_1, -(-var_2.b.d))).c, func_5(1u, -(-(310f / -1027f)), !vec4<bool>(var_2.a.d, !var_2.a.d, -1050f < var_2.b.d.x, all(vec3<bool>(false, var_0.c.d, var_0.c.d))), var_0));
    return clamp(reverseBits(vec3<u32>(clamp(var_0.c.b, var_2.a.e.x, 4294967295u), dot(~vec3<u32>(var_2.b.c.c, 4311u, 4294967295u), ~vec3<u32>(var_1.c, 24840u, var_2.a.e.x)), var_1.b)), ~vec3<u32>(~(~var_2.a.e.x), var_1.b, ~func_2(vec3<bool>(var_1.d, false, false), var_0.d.zy)), vec3<u32>(firstTrailingBit(firstTrailingBit(0u) % ~62655u), select(19978u, 42663u, true & true) / ~(var_0.c.e.x % 28280u), 1u));
}

fn func_6(arg_0: Struct_1) -> Struct_2 {
    let var_0 = -(-select(1000f, -exp2(106f), all(!vec3<bool>(true, arg_0.d, arg_0.d))));
    let var_1 = 1000f;
    var var_2 = Struct_1(arg_0.a, arg_0.c, ~1u, !true, ~vec2<u32>(11476u, 9231u / 4294967295u));
    var_2 = func_5(~func_1().x, -1433f, select(select(select(!vec4<bool>(var_2.d, true, var_2.d, arg_0.d), !vec4<bool>(true, arg_0.d, arg_0.d, true), vec4<bool>(false, true, true, true)), select(vec4<bool>(false, var_2.d, arg_0.d, true), !vec4<bool>(true, false, arg_0.d, false), -1i >= 36468i), select(!vec4<bool>(true, var_2.d, true, var_2.d), !vec4<bool>(false, arg_0.d, false, arg_0.d), vec4<bool>(var_2.d, var_2.d, true, arg_0.d))), select(!vec4<bool>(var_2.d, false, false, arg_0.d), !(!vec4<bool>(true, var_2.d, var_2.d, var_2.d)), vec4<bool>(all(vec4<bool>(arg_0.d, arg_0.d, var_2.d, false)), arg_0.d, select(false, arg_0.d, var_2.d), !true)), !select(vec4<bool>(false, false, var_2.d, true), vec4<bool>(arg_0.d, false, arg_0.d, var_2.d), -1000f < 650f)), Struct_2(arg_0.e.x > var_2.b, vec2<i32>(dot(vec2<i32>(var_2.a.x, arg_0.a.x) ^ vec2<i32>(arg_0.a.x, arg_0.a.x), abs(u_input.a)), (u_input.a.x * -44491i) - -1i), Struct_1(arg_0.a, 2648u, var_2.c, var_2.d, min(firstLeadingBit(arg_0.e), ~arg_0.e)), -vec3<f32>(-228f, -502f, -var_0))).c;
    var_2 = Struct_1(arg_0.a, reverseBits(0u % 1u), 59633u, !true, ~abs(select(vec2<u32>(var_2.c, 57504u), arg_0.e - vec2<u32>(0u, 7296u), var_2.d)));
    return Struct_2(false, vec2<i32>(~(-20421i) % -u_input.a.x, func_5(arg_0.e.x, round(2662f), select(vec4<bool>(false, true, arg_0.d, true), vec4<bool>(false, arg_0.d, arg_0.d, true), !vec4<bool>(true, false, var_2.d, false)), func_5(var_2.e.x, var_1, vec4<bool>(arg_0.d, var_2.d, true, true), func_5(1u, var_1, vec4<bool>(arg_0.d, arg_0.d, arg_0.d, true), Struct_2(arg_0.d, vec2<i32>(2147483647i, 15045i), arg_0, vec3<f32>(-1726f, -1000f, var_0))))).c.a.x), func_5(max(min(firstTrailingBit(1u), var_2.b >> 1u), func_1().x), var_0, select(select(select(vec4<bool>(false, true, arg_0.d, true), vec4<bool>(var_2.d, true, false, var_2.d), true), !vec4<bool>(true, false, var_2.d, arg_0.d), false), select(!vec4<bool>(var_2.d, var_2.d, var_2.d, false), !vec4<bool>(var_2.d, true, true, false), select(var_2.d, true, false)), vec4<bool>(!false, var_2.d, arg_0.d & var_2.d, arg_0.d)), func_5(~0u % arg_0.c, 362f, !select(vec4<bool>(var_2.d, arg_0.d, var_2.d, true), vec4<bool>(arg_0.d, arg_0.d, var_2.d, arg_0.d), vec4<bool>(var_2.d, arg_0.d, arg_0.d, var_2.d)), func_5(124537u / 0u, var_1, !vec4<bool>(true, arg_0.d, arg_0.d, true), func_5(arg_0.c, -429f, vec4<bool>(var_2.d, var_2.d, arg_0.d, false), Struct_2(var_2.d, vec2<i32>(u_input.a.x, 1i), arg_0, vec3<f32>(var_0, var_1, var_0)))))).c, sign(step(-(-vec3<f32>(var_1, -510f, var_1)), -(vec3<f32>(-953f, var_1, 1730f) - vec3<f32>(var_1, var_1, var_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_1(-(vec3<i32>(1i, i32(-2147483648), 10029i) ^ vec3<i32>(-50501i, u_input.a.x, i32(-2147483648))), select(6374u, min(0u << 98737u, 1u ^ 47406u), (1i | u_input.a.x) == (-1i % u_input.a.x)), dot(func_1(), vec3<u32>(~4294967295u, 4294967295u, func_5(19328u, -1650f, vec4<bool>(false, false, true, false), Struct_2(true, u_input.a, Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, 32053i), 0u, 11870u, false, vec2<u32>(49424u, 4294967295u)), vec3<f32>(1640f, 1444f, 362f))).c.b)), !false, ~vec2<u32>(0u, firstTrailingBit(15462u))));
    var var_1 = func_6(var_0.c).d.zz;
    var_1 = var_0.d.xz;
    let x = u_input.a;
    s_output = StorageBuffer(100683u, -(abs(vec3<i32>(var_0.b.x, 27334i, -6941i)) ^ vec3<i32>(u_input.a.x % var_0.b.x, -94i % -1i, func_6(Struct_1(var_0.c.a, 1u, var_0.c.c, var_0.a, vec2<u32>(1u, 4294967295u))).b.x)), var_0.c.a.zx);
}

