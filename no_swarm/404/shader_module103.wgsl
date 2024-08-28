// {"0:0":[130,212,202,243,1,128,242,36]}
// Seed: 5271628213540394

struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3() -> u32 {
    return 29260u;
}

fn func_2(arg_0: i32) -> vec4<u32> {
    var var_0 = func_3();
    let var_1 = ceil(-select(vec2<f32>(843f, -450f) * vec2<f32>(-1003f, -503f), vec2<f32>(361f, -533f) - vec2<f32>(2230f, -130f), true)) / vec2<f32>(915f, -(206f * exp2(1177f)));
    var_0 = 51704u;
    let var_2 = -(vec3<i32>(2147483647i, 2147483647i, firstLeadingBit(27683i)) + (vec3<i32>(-14604i, 0i, 0i) - vec3<i32>(arg_0, 2147483647i, arg_0))) * select(~(-vec3<i32>(1028i, 4290i, arg_0)) % vec3<i32>(abs(arg_0), arg_0, -75700i), vec3<i32>((44171i ^ 2147483647i) % arg_0, i32(-2147483648), arg_0), false);
    var_0 = ~dot(~(firstLeadingBit(vec4<u32>(u_input.b, u_input.b, u_input.a, 29850u)) + vec4<u32>(u_input.b, 0u, u_input.a, u_input.a)), ~max(vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), vec4<u32>(1236u, u_input.b, u_input.a, u_input.a)) ^ ~vec4<u32>(0u, u_input.b, 1u, u_input.b));
    return clamp(vec4<u32>(~u_input.a + firstTrailingBit(u_input.b), ~(~u_input.a), u_input.a, 1u), ~vec4<u32>(u_input.b, firstTrailingBit(min(0u, u_input.a)), ~1u, ~83630u), ~vec4<u32>(firstTrailingBit(8070u), ~u_input.a, ~u_input.a, 4294967295u) - vec4<u32>((4294967295u | u_input.a) - ~u_input.a, 13509u, ~(~u_input.a), u_input.a));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<u32>) -> vec4<f32> {
    var var_0 = Struct_2(Struct_1(~(~dot(arg_1.wxz, arg_1.yyy)), dot(vec2<i32>(~(-41276i), -(-1i)), vec2<i32>(countOneBits(75068i), -22009i | -28238i)), 1000f, -sign(-1278f), !all(vec2<bool>(false, false))), vec3<bool>(true == (1i < 0i), any(!(!vec2<bool>(true, false))), select(true, !any(vec3<bool>(false, true, true)), !true || any(vec4<bool>(true, false, true, true)))), vec3<f32>(ceil(1086f), -((1212f / -392f) - abs(-408f)), -(-411f) + 1074f));
    let var_1 = any(vec4<bool>(var_0.b.x, var_0.b.x, all(var_0.b.yz), true));
    var var_2 = Struct_2(Struct_1(u_input.a, ~(i32(-2147483648)), round(-var_0.a.c), (1246f / sign(455f)) / -(-(-668f)), var_1), vec3<bool>(all(!var_0.b), ((27678u / 1u) & arg_0.x) > (clamp(4294967295u, 4147u, 0u) | (0u >> var_0.a.a)), false), vec3<f32>(ceil(round(exp2(757f))), var_0.a.c / sign(trunc(-525f)), step(876f, 522f)));
    var_0 = Struct_2(var_0.a, var_0.b, vec3<f32>(var_2.a.c, (-617f - -291f) * abs(-1748f * var_2.a.d), -472f));
    let var_3 = !vec2<bool>(!(!var_1), any(!vec2<bool>(true, var_2.b.x)));
    return floor(vec4<f32>(var_2.a.d, abs(var_0.a.d), var_2.a.c, -(var_0.c.x + -var_0.c.x)));
}

fn func_1() -> Struct_1 {
    var var_0 = (func_4(~vec2<u32>(1u, u_input.b) & ~vec2<u32>(9677u, u_input.b), func_2(967i) % vec4<u32>(22895u, u_input.b, u_input.b, 1u)) / (vec4<f32>(select(-957f, -664f, true), 897f, sign(-164f), -397f) + step(step(vec4<f32>(776f, 1000f, 659f, 745f), vec4<f32>(1724f, -1374f, -1303f, 1407f)), exp2(vec4<f32>(-277f, 389f, -1113f, -549f))))) / vec4<f32>(-(-(-1803f) - -856f), -(-1000f) / (step(687f, 1410f) + select(430f, 413f, true)), trunc(551f), -((1394f - 967f) + (971f / -464f)));
    let var_1 = Struct_2(Struct_1(1u, -dot(-vec3<i32>(2147483647i, -5682i, -1i), ~vec3<i32>(24681i, 20267i, i32(-2147483648))), -310f, var_0.x, true), vec3<bool>(any(select(vec4<bool>(false, false, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true)))), false, !all(!vec3<bool>(false, false, true))), vec3<f32>(var_0.x, -202f, -var_0.x));
    let var_2 = vec3<u32>(1u, var_1.a.a, u_input.a & u_input.b);
    var_0 = step((step(vec4<f32>(var_0.x, var_1.c.x, -1528f, -1192f) / vec4<f32>(var_0.x, 589f, var_0.x, var_1.a.c), step(vec4<f32>(var_1.c.x, -814f, var_1.c.x, var_1.a.d), vec4<f32>(-1384f, 1202f, -1665f, -1109f))) / -(vec4<f32>(-237f, var_0.x, 1000f, -1618f) - vec4<f32>(var_0.x, -142f, var_1.c.x, -1181f))) * round(vec4<f32>(-487f, var_0.x, var_0.x, 498f) - step(vec4<f32>(923f, var_0.x, -655f, -914f), vec4<f32>(var_1.c.x, 2143f, var_0.x, var_0.x))), (select(vec4<f32>(var_0.x, var_1.a.c, var_1.a.d, var_0.x) - vec4<f32>(2265f, -708f, 1806f, var_0.x), -vec4<f32>(var_0.x, var_0.x, -1159f, var_1.a.d), var_1.a.e) + (vec4<f32>(-718f, 1052f, var_0.x, -1000f) + -vec4<f32>(var_1.c.x, var_0.x, 776f, -764f))) * select(-func_4(vec2<u32>(4294967295u, var_2.x), vec4<u32>(22231u, var_1.a.a, 1u, 1u)), -vec4<f32>(var_0.x, -436f, var_1.c.x, var_0.x) / sign(vec4<f32>(357f, 717f, var_0.x, 1367f)), select(select(vec4<bool>(false, true, var_1.b.x, true), vec4<bool>(var_1.a.e, var_1.a.e, true, var_1.b.x), false), vec4<bool>(false, var_1.a.e, true, false), select(vec4<bool>(var_1.a.e, var_1.b.x, var_1.b.x, true), vec4<bool>(false, true, var_1.a.e, var_1.b.x), vec4<bool>(var_1.b.x, var_1.a.e, var_1.b.x, var_1.a.e)))));
    var_0 = -((vec4<f32>(var_1.c.x, var_1.c.x - -630f, var_0.x, var_0.x) * -min(vec4<f32>(var_0.x, var_0.x, var_1.c.x, -639f), vec4<f32>(var_0.x, -225f, 714f, -761f))) * -vec4<f32>(var_0.x, var_0.x, -111f, 1203f + var_1.c.x));
    return Struct_1(~(select(abs(4294967295u), 76368u, var_1.a.e) << ~5624u), var_1.a.b, round(trunc(sign(var_1.c.x))), -1000f, true);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32) -> StorageBuffer {
    let var_0 = arg_1;
    var var_1 = Struct_2(Struct_1(firstTrailingBit(47423u), arg_0.b, -(-var_0.c.x), -arg_1.c.x, var_0.b.x), select(!arg_1.b, vec3<bool>(arg_0.e, func_1().e, -239f <= (-273f / -266f)), vec3<bool>(false, !arg_0.e, !true)), vec3<f32>(trunc(-1000f / 1225f), func_4((vec2<u32>(1u, 27483u) + vec2<u32>(4294967295u, 1u)) / (vec2<u32>(var_0.a.a, u_input.a) << vec2<u32>(arg_0.a, 4294967295u)), vec4<u32>(max(arg_1.a.a, arg_2), func_2(29554i).x, ~10056u, ~arg_1.a.a)).x, (-1379f + ceil(-1671f)) + 503f));
    var var_2 = vec4<u32>(~1u, 1u, ~arg_0.a, ~121204u);
    var_1 = var_0;
    let var_3 = (max(arg_0.b, ~arg_1.a.b) % i32(-2147483648)) & -1i;
    return StorageBuffer(~(~vec4<u32>(select(var_0.a.a, 0u, false), ~4294967295u, 4294967295u, arg_1.a.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~max(vec2<u32>(u_input.a ^ 41318u, ~u_input.a) << vec2<u32>(47233u, u_input.a), ~(vec2<u32>(13083u, 57123u) % (vec2<u32>(u_input.b, u_input.b) + vec2<u32>(u_input.a, u_input.b))));
    let x = u_input.a;
    s_output = func_5(func_1(), Struct_2(Struct_1(~func_1().a, -2147483647i, -(-1577f) - 404f, 513f, all(!vec4<bool>(true, false, false, true))), select(select(!vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false), vec3<bool>(true, false, false)), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false), false), floor(-(vec3<f32>(-447f, -1000f, -845f) * vec3<f32>(-659f, -1331f, 108f)))), ~4294967295u);
}

