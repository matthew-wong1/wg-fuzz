// {"0:0":[94,42,233,95]}
// Seed: 7861148721808825169

struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: vec2<bool>) -> i32 {
    return 0i;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: f32, arg_3: f32) -> u32 {
    let var_0 = arg_2;
    let var_1 = arg_1.x;
    var var_2 = Struct_1(1u, all(select(select(vec2<bool>(false, true), select(vec2<bool>(true, arg_0.x), vec2<bool>(false, false), vec2<bool>(false, arg_0.x)), true), !arg_0.wx, vec2<bool>(!false, !false))));
    let var_3 = dot(firstLeadingBit(countOneBits(vec2<i32>(1i, dot(vec2<i32>(2147483647i, 0i), vec2<i32>(1i, 17264i))))), vec2<i32>(clamp(func_3(Struct_1(0u, var_2.b), arg_0.yyy, Struct_2(Struct_1(92974u, arg_0.x), vec3<f32>(arg_3, var_0, -1131f), arg_0), arg_0.xy), 0i, 21296i | -52350i), 26796i) % vec2<i32>(-(~2147483647i), firstTrailingBit(i32(-2147483648) % -13406i)));
    var var_4 = ~(~(~vec4<u32>(6153u, u_input.a, 20264u, 69329u) % vec4<u32>(var_2.a >> 55309u, dot(vec2<u32>(1u, var_2.a), vec2<u32>(u_input.a, 35754u)), var_2.a, min(69484u, u_input.a))));
    return u_input.a;
}

fn func_1(arg_0: vec3<i32>) -> Struct_2 {
    var var_0 = ~vec2<u32>(~0u + 0u, u_input.a);
    let var_1 = sign(-841f + 990f);
    var_0 = vec2<u32>(96953u, select(var_0.x, u_input.a - ~14044u, false));
    var var_2 = ~((dot(firstTrailingBit(vec3<u32>(u_input.a, 1u, u_input.a)), vec3<u32>(u_input.a, var_0.x, 1u) - vec3<u32>(95240u, var_0.x, var_0.x)) / u_input.a) | ~(1u * func_2(vec4<bool>(false, false, true, true), vec2<f32>(var_1, var_1), 489f, 580f)));
    let var_3 = vec3<u32>(var_0.x, ~13210u, ~1u);
    return Struct_2(Struct_1(~u_input.a, !(!any(vec3<bool>(false, true, true)))), -(-(vec3<f32>(var_1, var_1, var_1) / vec3<f32>(var_1, var_1, -1381f))) / -(-(vec3<f32>(var_1, var_1, -1324f) - vec3<f32>(var_1, 861f, var_1))), vec4<bool>((!true != !true) || (arg_0.x == dot(arg_0, arg_0)), func_2(!vec4<bool>(false, true, true, false), vec2<f32>(var_1, var_1) * vec2<f32>(var_1, 1000f), -var_1, var_1) != ~clamp(u_input.a, 4294967295u, var_3.x), false, all(!(!vec4<bool>(false, true, true, true)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> Struct_2 {
    let var_0 = func_1((((vec3<i32>(2147483647i, -37588i, 17102i) & vec3<i32>(0i, 22302i, 0i)) >> (vec3<u32>(1u, u_input.a, arg_0.a) << vec3<u32>(1u, arg_2.a.a, 101626u))) << ~select(vec3<u32>(40369u, 15357u, 15170u), vec3<u32>(arg_1.a.a, 0u, 0u), vec3<bool>(true, true, false))) + ((firstLeadingBit(vec3<i32>(0i, 38553i, -1i)) + select(vec3<i32>(-49026i, -3921i, 8117i), vec3<i32>(22600i, -15073i, 2147483647i), vec3<bool>(false, arg_0.b, arg_1.c.x))) >> vec3<u32>(~arg_1.a.a, ~31574u, countOneBits(arg_0.a)))).a;
    var var_1 = ((select(min(vec3<u32>(14480u, arg_1.a.a, arg_2.a.a), vec3<u32>(arg_0.a, arg_0.a, var_0.a)), vec3<u32>(0u, arg_2.a.a, arg_0.a) / vec3<u32>(1u, 0u, arg_0.a), !vec3<bool>(true, false, true)) >> (~vec3<u32>(arg_2.a.a, arg_1.a.a, 1u) | ~vec3<u32>(56588u, 4294967295u, arg_1.a.a))) / vec3<u32>(~arg_1.a.a >> 1u, firstTrailingBit(4294967295u), ~clamp(50340u, arg_1.a.a, arg_1.a.a))) | clamp(((vec3<u32>(arg_0.a, 0u, 0u) + vec3<u32>(1u, 4294967295u, arg_0.a)) ^ vec3<u32>(4294967295u, u_input.a, arg_0.a)) - select(vec3<u32>(10182u, arg_0.a, arg_2.a.a) * vec3<u32>(1u, arg_2.a.a, 1u), vec3<u32>(38600u, 1u, 17768u) - vec3<u32>(4294967295u, var_0.a, arg_2.a.a), false), countOneBits(~vec3<u32>(arg_0.a, arg_1.a.a, 41099u)) | (vec3<u32>(102488u, var_0.a, u_input.a) + (vec3<u32>(u_input.a, 1u, arg_1.a.a) - vec3<u32>(u_input.a, arg_2.a.a, u_input.a))), vec3<u32>(36756u, dot(~vec2<u32>(u_input.a, arg_1.a.a), vec2<u32>(51110u, u_input.a)), arg_2.a.a));
    var_1 = max(abs(vec3<u32>(~arg_1.a.a, 48007u + u_input.a, reverseBits(1u))) | vec3<u32>(~78811u, 4294967295u - (39395u << arg_0.a), arg_2.a.a), vec3<u32>((0u + arg_1.a.a) >> min(var_0.a, arg_2.a.a), ~(~u_input.a), arg_2.a.a) % (reverseBits(vec3<u32>(10350u, 27342u, arg_1.a.a)) / vec3<u32>(20907u, ~arg_0.a, ~var_0.a)));
    var var_2 = arg_1.c;
    var_1 = clamp(vec3<u32>(arg_0.a, var_1.x, ~arg_1.a.a), ~(~(~(~vec3<u32>(u_input.a, var_0.a, 1u)))), ~(~(~firstTrailingBit(vec3<u32>(18034u, arg_0.a, arg_1.a.a)))));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(1u, ~(~u_input.a) > ~u_input.a), func_1(vec3<i32>(~(-1i), clamp(dot(vec4<i32>(i32(-2147483648), 15115i, -74116i, 0i), vec4<i32>(i32(-2147483648), -1i, 5347i, -13747i)), i32(-2147483648) << u_input.a, ~2147483647i), ~(45518i ^ 1i))), Struct_2(func_1(select(~vec3<i32>(39722i, 0i, 36525i), abs(vec3<i32>(0i, 0i, -26158i)), vec3<bool>(true, false, true))).a, vec3<f32>(-244f - -282f, -(-127f), -(-1319f)), !vec4<bool>(any(vec2<bool>(false, true)), any(vec2<bool>(true, true)), false, -265f >= 1000f)));
    var var_1 = vec2<u32>(~var_0.a.a | func_2(!vec4<bool>(false, var_0.c.x, var_0.a.b, var_0.c.x), var_0.b.yy / vec2<f32>(1225f, -187f), -829f - var_0.b.x, select(912f, 1000f, var_0.c.x)), ~(1u ^ max(51883u, u_input.a))) & (min(~reverseBits(vec2<u32>(0u, u_input.a)), ~vec2<u32>(u_input.a, u_input.a)) >> ~(~(vec2<u32>(var_0.a.a, 1u) ^ vec2<u32>(u_input.a, 4294967295u))));
    var var_2 = Struct_2(Struct_1(var_1.x, any(vec2<bool>(var_0.c.x == true, !var_0.a.b))), -(var_0.b + (trunc(vec3<f32>(-171f, 610f, 665f)) / var_0.b)), var_0.c);
    var var_3 = reverseBits(~clamp(vec4<u32>(var_2.a.a, var_1.x, u_input.a, var_2.a.a * 57786u), select(vec4<u32>(9270u, 4294967295u, var_1.x, u_input.a) >> vec4<u32>(4294967295u, 1u, var_1.x, 12470u), vec4<u32>(var_1.x, 26395u, var_1.x, 4294967295u), !var_2.c), ~(vec4<u32>(31613u, u_input.a, 24750u, 55102u) % vec4<u32>(41126u, var_2.a.a, 44661u, 1u))));
    var var_4 = var_0.a.b;
    let var_5 = var_0.a;
    let var_6 = false || select(false, var_5.b, !(!var_5.b));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(var_0.a, func_4(Struct_1(1u, var_5.b && false), func_4(var_2.a, Struct_2(var_2.a, var_2.b, var_2.c), Struct_2(var_2.a, var_2.b, var_0.c)), Struct_2(Struct_1(4294967295u, false), func_1(vec3<i32>(-26690i, -22768i, -7913i)).b, vec4<bool>(false, false, false, true))), func_4(var_0.a, func_1(vec3<i32>(-20220i, 2147483647i, -18844i)), func_1(vec3<i32>(2147483647i, 2147483647i, -1i)))).b.x, 1258u, var_5.a);
}

