// {"0:0":[11,223,68,79,203,0,106,198,31,64,25,116,84,169,188,160,68,178,244,17,68,192,88,232,191,174,135,134,157,70,10,152,251,6,79,160,210,49,62,156,159,185,68,193,96,100,19,23]}
// Seed: 2779012496342379336

struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: vec3<f32>, arg_1: i32) -> vec2<f32> {
    let var_0 = Struct_1(-(276f / -(-arg_0.x)), firstTrailingBit(select(vec2<u32>(u_input.d, 1u), vec2<u32>(~0u, dot(vec3<u32>(7139u, u_input.d, u_input.d), vec3<u32>(u_input.d, u_input.d, 1u))), !select(vec2<bool>(true, false), vec2<bool>(false, true), true))), arg_0.yx, all(select(!vec3<bool>(true, true, false), vec3<bool>(false, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)))) == !(firstTrailingBit(16239i) < arg_1));
    return -(sign(vec2<f32>(arg_0.x, -182f - arg_0.x)) - -ceil(var_0.c));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = vec3<bool>(true, 1788f <= arg_1.x, !arg_0.d);
    var_0 = !(!(!vec3<bool>(all(vec3<bool>(false, var_0.x, false)), true, 0i != u_input.c.x)));
    let var_1 = arg_0;
    var var_2 = ~vec4<u32>(abs(50403u), ~min(14972u, min(63690u, var_1.b.x)), firstTrailingBit(u_input.d), dot(~vec2<u32>(var_1.b.x, u_input.d), var_1.b));
    let var_3 = Struct_1(arg_0.c.x, vec2<u32>(45247u, var_1.b.x), func_3(-trunc(vec3<f32>(var_1.c.x, -2868f, var_1.c.x)), clamp(select(-1i, 21091i, false), -(-1i), 1i) * u_input.b.x), false);
    return Struct_1(min((-1229f - (arg_0.c.x * 733f)) * -231f, 702f), firstLeadingBit(~(~select(vec2<u32>(var_3.b.x, 4294967295u), vec2<u32>(u_input.d, var_1.b.x), true))), round(vec2<f32>(var_3.a, arg_0.a)), var_1.d);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = func_2(arg_1, step(vec4<f32>(356f * arg_1.a, -424f + arg_0, var_0.c.x, arg_0 + arg_0) - vec4<f32>(trunc(984f), arg_1.a, -622f, abs(arg_1.c.x)), vec4<f32>(844f, -(-var_0.a), -(var_0.c.x / arg_0), -trunc(var_0.c.x))));
    var var_2 = !vec2<bool>(func_2(Struct_1(step(arg_1.c.x, -831f), vec2<u32>(67718u, 1u), var_1.c, arg_1.d || var_1.d), -(-vec4<f32>(arg_0, -322f, arg_1.c.x, -830f))).d, true);
    var_2 = !select(!select(!vec2<bool>(arg_1.d, var_2.x), vec2<bool>(var_2.x, var_0.d), u_input.c.x != 1i), select(!vec2<bool>(arg_1.d, var_1.d), select(select(vec2<bool>(true, var_2.x), vec2<bool>(var_0.d, false), vec2<bool>(var_1.d, var_0.d)), vec2<bool>(true, false), !vec2<bool>(true, arg_1.d)), any(select(vec4<bool>(true, arg_1.d, true, true), vec4<bool>(var_2.x, false, false, var_1.d), vec4<bool>(var_0.d, false, true, arg_1.d)))), select(!arg_1.d, func_2(func_2(arg_1, vec4<f32>(arg_0, var_0.c.x, arg_1.c.x, -2329f)), vec4<f32>(-1142f, 1000f, arg_1.c.x, arg_0)).d, var_2.x));
    var_2 = select(vec2<bool>(var_2.x, !(var_2.x & false) | var_2.x), select(vec2<bool>(all(select(vec2<bool>(var_1.d, false), vec2<bool>(var_2.x, var_0.d), var_2.x)), true), select(!vec2<bool>(var_0.d, var_0.d), select(vec2<bool>(arg_1.d, true), vec2<bool>(true, false), select(vec2<bool>(var_1.d, false), vec2<bool>(true, true), vec2<bool>(arg_1.d, false))), !(4294967295u > 0u)), vec2<bool>(!var_0.d, 1385f == (arg_0 * arg_0))), var_0.d);
    return func_2(var_1, trunc(-vec4<f32>(-429f, arg_0, -411f, arg_1.a + 1885f)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = func_2(func_2(func_4(-arg_0.a * arg_1.a, Struct_1(-(-508f), ~arg_1.b, func_4(-1032f, Struct_1(322f, arg_0.b, arg_0.c, false), u_input.b.x).c, u_input.d >= 31905u), -9779i), vec4<f32>(arg_0.a, round(-128f), -(-432f + 1957f), -308f)), vec4<f32>(1699f, func_2(Struct_1(1000f / arg_1.a, arg_1.b + arg_1.b, vec2<f32>(arg_1.c.x, 893f) - vec2<f32>(-1755f, -660f), !false), -vec4<f32>(890f, arg_0.c.x, arg_0.c.x, arg_0.a) - vec4<f32>(arg_1.a, arg_0.a, arg_0.a, 636f)).a, exp2(abs(arg_1.a) / -(-262f)), arg_0.a));
    let var_1 = func_4(arg_1.c.x, arg_1, dot(u_input.c.xz, vec2<i32>(select(-66763i, -30701i, arg_1.d), 0i)) & (((1i | u_input.a.x) << select(var_0.b.x, 0u, true)) << 62768u));
    let var_2 = -148f / ((arg_0.c.x - arg_0.c.x) - ((-arg_0.a * -(-847f)) - -(-526f)));
    var var_3 = var_0.d;
    let var_4 = sign(((159f * arg_0.c.x) + (var_2 * var_1.a)) + -var_2) + -var_1.c.x;
    return Struct_1(-(-(-829f)), ~arg_0.b, vec2<f32>(abs(1396f) / var_0.c.x, -1229f) / arg_1.c, reverseBits(u_input.c.x) != ~(-21729i));
}

fn func_6(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = !(!select(!select(vec2<bool>(false, arg_2.d), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(false, all(vec3<bool>(false, arg_2.d, arg_2.d))), all(!vec2<bool>(arg_2.d, false))));
    var_0 = !select(vec2<bool>(false, !false), select(select(select(vec2<bool>(arg_0.d, arg_2.d), vec2<bool>(false, true), vec2<bool>(arg_2.d, true)), !vec2<bool>(true, arg_0.d), var_0.x), vec2<bool>(false, arg_0.d), !vec2<bool>(false, true)), select(select(vec2<bool>(true, true), !vec2<bool>(true, arg_0.d), !vec2<bool>(true, false)), vec2<bool>(!arg_2.d, arg_0.b.x != arg_2.b.x), !(!var_0.x)));
    var var_1 = Struct_1(924f, ~(vec2<u32>(~6402u, arg_0.b.x) % vec2<u32>(min(u_input.d, arg_2.b.x), ~arg_0.b.x)), arg_0.c / step(-(-arg_2.c), func_4(-960f, arg_0, -1i).c), any(!select(!vec4<bool>(true, false, false, arg_2.d), select(vec4<bool>(false, arg_0.d, arg_0.d, arg_2.d), vec4<bool>(false, true, false, true), vec4<bool>(arg_2.d, true, var_0.x, false)), func_4(arg_1, Struct_1(-1288f, arg_0.b, vec2<f32>(357f, arg_2.a), true), u_input.a.x).d)));
    return arg_2;
}

fn func_1(arg_0: i32) -> vec3<f32> {
    let var_0 = step(1000f, abs(-(-(-256f))));
    var var_1 = Struct_1(-var_0, countOneBits(vec2<u32>(u_input.d, 4565u)), -((-vec2<f32>(-728f, var_0) * vec2<f32>(365f, 286f)) / vec2<f32>(-(-742f), 1385f * -730f)), !((!false || true) | false));
    var_1 = func_6(func_5(Struct_1(-(-var_1.c.x), ~(vec2<u32>(u_input.d, u_input.d) / var_1.b), floor(var_1.c), any(vec3<bool>(var_1.d, var_1.d, var_1.d)) | var_1.d), func_4((var_0 * var_1.a) - var_1.a, func_2(Struct_1(-737f, vec2<u32>(u_input.d, u_input.d), var_1.c, var_1.d), vec4<f32>(var_1.a, 1038f, var_1.a, var_1.a) * vec4<f32>(-124f, 1226f, var_0, -1234f)), -1i)), var_0, Struct_1(var_0, select(~var_1.b, ~var_1.b, select(vec2<bool>(false, var_1.d), vec2<bool>(var_1.d, false), var_1.d)) - countOneBits(vec2<u32>(u_input.d, 8450u)), var_1.c, !true));
    var var_2 = (step(vec4<f32>(func_6(Struct_1(993f, var_1.b, var_1.c, var_1.d), var_0, Struct_1(var_0, var_1.b, vec2<f32>(var_1.a, var_0), false)).a, 1184f + 1197f, -429f + 883f, -var_0), -abs(vec4<f32>(var_0, -1000f, var_0, -1044f))) - vec4<f32>(var_1.a / (1000f / 249f), -(-111f), -(var_0 / var_1.c.x), var_0)) * sign(abs(vec4<f32>(-101f, var_0, 100f, var_0) - -vec4<f32>(-1636f, -863f, 234f, var_1.c.x)));
    let var_3 = u_input.b.xz;
    return vec3<f32>(-(var_2.x * -(-1459f)), 908f, var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (-(-vec3<f32>(722f, -1066f, -220f) / vec3<f32>(-1576f, -205f, -644f)) * (trunc(vec3<f32>(-1967f, 793f, -162f)) / (-vec3<f32>(-512f, -640f, 1678f) - (vec3<f32>(1000f, 1297f, 1000f) / vec3<f32>(-817f, 1180f, 750f))))) / func_1(u_input.b.x);
    var_0 = vec3<f32>(1000f, func_5(Struct_1(409f, vec2<u32>(12342u, 0u) * vec2<u32>(u_input.d, u_input.d), vec2<f32>(-425f, 831f) * vec2<f32>(1082f, -2172f), false), Struct_1(180f, ~vec2<u32>(u_input.d, u_input.d), var_0.zx, !false)).c.x, 1134f) / -(-sign(vec3<f32>(732f, -408f, -292f)) / sign(-vec3<f32>(590f, var_0.x, 328f)));
    var var_1 = firstLeadingBit(vec4<u32>(4294967295u >> u_input.d, u_input.d * ~(u_input.d & 1u), ~(~1u / countOneBits(u_input.d)), countOneBits(dot(vec4<u32>(u_input.d, u_input.d, u_input.d, 14689u) >> vec4<u32>(u_input.d, 10600u, 41138u, u_input.d), vec4<u32>(0u, 1u, 4294967295u, 4294967295u) % vec4<u32>(41329u, u_input.d, u_input.d, 9982u)))));
    var_0 = vec3<f32>(-356f, func_6(Struct_1((-217f + var_0.x) * var_0.x, vec2<u32>(0u, u_input.d & var_1.x), vec2<f32>(var_0.x / var_0.x, 2388f * -1071f), !(false || true)), var_0.x, Struct_1(var_0.x, vec2<u32>(var_1.x, 0u) & firstLeadingBit(var_1.wy), select(func_1(8166i).zx, step(vec2<f32>(850f, var_0.x), var_0.xy), vec2<bool>(false, true)), !all(vec3<bool>(false, false, false)))).a, 801f - (step(trunc(var_0.x), var_0.x) + (1184f * (var_0.x - var_0.x))));
    let var_2 = clamp(abs(~var_1.yz << vec2<u32>(clamp(u_input.d, 9712u, var_1.x), var_1.x)), abs(select(max(~var_1.xy, var_1.xz), select(var_1.yw, var_1.wy, func_4(var_0.x, Struct_1(1205f, var_1.yx, var_0.zx, true), u_input.b.x).d), !(49079u != 103725u))), ~(~(~vec2<u32>(var_1.x, var_1.x)) / ~(var_1.xx & var_1.yx)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(reverseBits(u_input.a % (vec2<i32>(0i, u_input.b.x) / u_input.c.zz))));
}

