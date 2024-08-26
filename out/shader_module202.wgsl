// {"0:0":[74,63,114,19,69,145,129,180,172,200,157,105,157,193,254,18,54,45,253,241,179,15,213,167,236,223,71,148,168,246,155,111,113,5,65,29,103,193,59,4,20,105,55,120,237,92,7,30]}
// Seed: 14898222510266360492

struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_2(arg_0: bool) -> Struct_3 {
    return Struct_3(arg_0);
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: f32, arg_3: vec3<i32>) -> bool {
    let var_0 = dot(vec3<i32>(2147483647i, 9668i >> 18321u, 0i), ~arg_3);
    let var_1 = ~1u + ~dot(u_input.c, vec3<u32>(15988u, 31493u, u_input.c.x) ^ ~u_input.c);
    var var_2 = vec2<bool>(arg_0.a.a.x, arg_0.d.a.x);
    let var_3 = min(-round((vec4<f32>(arg_2, 720f, -1119f, 107f) * vec4<f32>(arg_0.a.c.x, 208f, -1582f, -595f)) * vec4<f32>(1557f, 1362f, 1522f, arg_2)), -(-sign(vec4<f32>(arg_0.c.c.x, arg_2, arg_0.d.c.x, -710f)) / ((vec4<f32>(arg_2, arg_2, arg_2, -1146f) / vec4<f32>(-1519f, -1356f, 2484f, -1806f)) - (vec4<f32>(-336f, arg_0.a.c.x, arg_0.a.c.x, arg_0.c.c.x) / vec4<f32>(arg_2, arg_2, 428f, -1188f)))));
    var var_4 = dot(reverseBits(vec2<u32>(4294967295u, 4294967295u)), vec2<u32>(~0u, 33928u)) ^ firstTrailingBit(~1u);
    return (arg_0.c.c.x < exp2(var_3.x)) & true;
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: vec2<i32>, arg_3: vec4<bool>) -> Struct_3 {
    let var_0 = arg_2.x;
    var var_1 = func_2(!(!all(!vec2<bool>(arg_0.a, arg_1))));
    var_1 = arg_0;
    let var_2 = Struct_1(!vec2<bool>(all(vec2<bool>(arg_3.x, true)), arg_0.a), 45033i, -(-trunc(min(vec2<f32>(438f, 210f), vec2<f32>(-527f, 528f)))));
    let var_3 = select(~(-(~clamp(vec4<i32>(var_2.b, i32(-2147483648), 0i, u_input.b.x), vec4<i32>(i32(-2147483648), 1i, arg_2.x, i32(-2147483648)), u_input.b))), u_input.a, arg_3);
    return Struct_3(all(select(vec4<bool>(!var_1.a, all(vec3<bool>(true, var_2.a.x, true)), var_2.a.x, all(vec4<bool>(false, true, true, true))), select(select(vec4<bool>(false, false, arg_3.x, false), arg_3, true), arg_3, !vec4<bool>(arg_1, arg_1, var_1.a, arg_1)), select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, true, arg_1, true), arg_3, vec4<bool>(arg_0.a, arg_0.a, arg_0.a, true)), true))));
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_2) -> f32 {
    var var_0 = arg_2.b.zz;
    var_0 = ~u_input.c.zy;
    let var_1 = u_input.a.x;
    var var_2 = arg_2.b.x;
    var var_3 = func_4(func_2(arg_2.c.a.x), !all(vec3<bool>(!false, 16135i == -23571i, true)), -(-(~countOneBits(vec2<i32>(u_input.a.x, u_input.b.x)))), !vec4<bool>(!any(arg_2.d.a), any(vec3<bool>(arg_2.c.a.x, arg_2.d.a.x, false)) & func_3(Struct_2(arg_2.c, vec3<u32>(arg_2.b.x, 45644u, 14794u), Struct_1(arg_2.a.a, var_1, vec2<f32>(arg_2.c.c.x, arg_2.d.c.x)), arg_2.d, 2438i), arg_2.a.b, arg_1, vec3<i32>(2147483647i, u_input.a.x, arg_2.c.b)), func_2(any(vec3<bool>(arg_2.c.a.x, false, arg_2.c.a.x))).a, arg_2.a.a.x | true));
    return -arg_2.a.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(select(vec4<f32>(845f, 1538f, 398f, -1342f) + vec4<f32>(377f, -350f, 1264f, -105f), vec4<f32>(-893f, -1134f, -171f, 1455f) - vec4<f32>(-927f, 1000f, -690f, -238f), -440f != -223f), vec4<f32>(-728f, ceil(409f), 112f, func_1(u_input.c.zx, -1386f, Struct_2(Struct_1(vec2<bool>(false, false), u_input.a.x, vec2<f32>(1561f, 481f)), vec3<u32>(u_input.c.x, 82664u, u_input.c.x), Struct_1(vec2<bool>(false, false), -1i, vec2<f32>(2288f, 753f)), Struct_1(vec2<bool>(false, false), -38516i, vec2<f32>(-223f, 377f)), 2147483647i))), any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), false))), vec4<f32>(round(500f), exp2(max(1631f, 1000f)), exp2(-217f), -step(-1001f, -140f)), any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, true), true)))) * (vec4<f32>(step(-(-498f), -(-512f)), floor(-742f) + abs(-419f), (753f / -1000f) + -1585f, -(-757f) / -(-822f)) + vec4<f32>(func_1(u_input.c.yz, min(1931f, 287f), Struct_2(Struct_1(vec2<bool>(true, true), u_input.b.x, vec2<f32>(1365f, -577f)), vec3<u32>(1u, 4294967295u, 1u), Struct_1(vec2<bool>(true, true), u_input.b.x, vec2<f32>(-622f, -771f)), Struct_1(vec2<bool>(false, false), u_input.b.x, vec2<f32>(-634f, 1957f)), 2147483647i)), 479f, -1401f, -(-(-664f))));
    let var_1 = Struct_2(Struct_1(vec2<bool>(any(vec3<bool>(true, false, true)), func_2(!true).a), i32(-2147483648) + countOneBits(u_input.a.x - u_input.a.x), vec2<f32>(var_0.x, -(-var_0.x))), vec3<u32>(~firstTrailingBit(dot(vec4<u32>(u_input.c.x, 0u, u_input.c.x, 5603u), vec4<u32>(38715u, 53125u, u_input.c.x, u_input.c.x))), ((u_input.c.x << u_input.c.x) << ~0u) * firstLeadingBit(1u), reverseBits(dot(vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, 1u, 46950u, 4294967295u)) + (0u - u_input.c.x))), Struct_1(select(vec2<bool>(false, any(vec3<bool>(true, true, false))), select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), !vec2<bool>(false, true), !vec2<bool>(true, true)), !(u_input.b.x > u_input.b.x)), -1i, var_0.yx), Struct_1(vec2<bool>(all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false))), all(vec4<bool>(false, false, false, false))), 0i, var_0.zz), 57700i);
    var var_2 = Struct_2(var_1.c, u_input.c, var_1.d, Struct_1(!var_1.c.a, var_1.e % (dot(vec3<i32>(u_input.b.x, var_1.c.b, 0i), u_input.b.ywx) ^ u_input.a.x), round((vec2<f32>(var_1.a.c.x, var_0.x) - var_0.xz) / var_1.a.c)), dot(u_input.a.wwy, (-u_input.a.wyw * u_input.a.wyy) - u_input.b.xzw));
    let var_3 = true;
    var var_4 = select(!select(vec4<bool>(any(vec4<bool>(false, false, var_2.a.a.x, false)), true, var_2.d.a.x, false & true), !(!vec4<bool>(var_1.a.a.x, true, var_1.a.a.x, var_2.c.a.x)), select(!vec4<bool>(var_2.d.a.x, true, var_2.a.a.x, var_1.d.a.x), vec4<bool>(var_1.d.a.x, var_1.a.a.x, true, var_2.a.a.x), select(vec4<bool>(var_3, false, false, var_2.a.a.x), vec4<bool>(var_1.d.a.x, false, true, var_3), vec4<bool>(false, var_3, false, true)))), select(select(vec4<bool>(any(vec4<bool>(false, false, var_3, false)), !var_1.a.a.x, u_input.c.x != 4294967295u, any(vec4<bool>(var_2.c.a.x, var_1.a.a.x, false, true))), vec4<bool>(var_1.a.c.x >= var_2.d.c.x, var_1.a.a.x, func_2(false).a, var_1.c.a.x), ~u_input.b.x <= countOneBits(i32(-2147483648))), select(!(!vec4<bool>(var_1.c.a.x, var_1.d.a.x, false, var_3)), select(!vec4<bool>(var_3, false, var_3, true), select(vec4<bool>(var_3, var_1.a.a.x, true, var_3), vec4<bool>(var_2.a.a.x, var_2.a.a.x, var_1.c.a.x, true), vec4<bool>(false, false, false, true)), select(vec4<bool>(var_3, true, false, var_1.a.a.x), vec4<bool>(var_2.c.a.x, true, var_2.d.a.x, true), vec4<bool>(true, true, true, true))), false), select(select(vec4<bool>(false, var_1.d.a.x, true, var_1.d.a.x), vec4<bool>(var_3, true, false, var_2.d.a.x), !var_2.d.a.x), !(!vec4<bool>(true, var_2.c.a.x, false, false)), !var_2.d.a.x || any(var_2.a.a))), !(!true || all(vec3<bool>(true, var_2.c.a.x, var_1.a.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(abs(1u) | abs(1u))), var_2.d.c.x, u_input.a.zwz);
}

