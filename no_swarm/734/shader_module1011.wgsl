// {"0:0":[77,94,204,114,125,69,79,35,83,228,89,166,117,165,152,224,64,176,178,102,125,243,191,83,161,205,221,215,255,68,223,155,41,54,157,142,44,43,149,95,116,188,144,209,113,135,154,114]}
// Seed: 13963091093605232080

struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: vec3<f32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3() -> u32 {
    let var_0 = Struct_2(Struct_1(vec4<u32>(countOneBits(14315u), 0u, ~4294967295u / u_input.a.x, 0u), select(vec4<bool>(all(vec2<bool>(false, true)), !false, -1i > u_input.e.x, !true), select(!vec4<bool>(false, false, true, false), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false)), !false), select(!vec4<bool>(false, true, false, false), !vec4<bool>(false, true, true, false), all(vec3<bool>(false, true, false)))), select(floor(vec3<f32>(-1433f, 426f, 165f)), round(vec3<f32>(920f, 1034f, -1728f)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false))) * (-vec3<f32>(1315f, 576f, -185f) / -vec3<f32>(-769f, 1162f, 1329f)), ~vec2<u32>(37323u, 33870u) - clamp(~vec2<u32>(4294967295u, 37036u), u_input.a.xz, vec2<u32>(u_input.a.x, 1u) & vec2<u32>(u_input.a.x, 90377u))));
    var var_1 = var_0.a.c.x;
    var_1 = -min(exp2(var_0.a.c.x), -994f);
    var_1 = -(-1079f);
    var var_2 = 104f;
    return ~u_input.b;
}

fn func_2(arg_0: Struct_2) -> Struct_3 {
    let var_0 = Struct_3(select(arg_0.a.b, vec4<bool>(all(arg_0.a.b), arg_0.a.b.x, !arg_0.a.b.x, arg_0.a.b.x), arg_0.a.b.x), false);
    var var_1 = vec3<bool>(u_input.a.x == (~func_3() / ~(4294967295u * 1u)), !var_0.b | all(vec4<bool>(arg_0.a.b.x, any(vec3<bool>(var_0.a.x, var_0.b, true)), any(vec2<bool>(var_0.b, true)), !var_0.b)), select(!arg_0.a.b.x, false, !(false || true) == (1u <= arg_0.a.a.x)));
    var_1 = var_0.a.yxw;
    var_1 = select(!select(vec3<bool>(var_1.x, var_0.b, all(var_0.a.xy)), var_0.a.xxx, arg_0.a.b.x), select(!vec3<bool>(arg_0.a.b.x, !arg_0.a.b.x, var_0.b), vec3<bool>(!false & all(var_1.xy), !var_1.x, !false), var_0.a.wzw), any(select(vec2<bool>(all(var_0.a), true), vec2<bool>(!true, all(vec4<bool>(false, true, arg_0.a.b.x, true))), !select(vec2<bool>(false, var_0.b), var_1.yz, true))));
    var_1 = vec3<bool>((18307u <= 23653u) == all(!vec2<bool>(true, false)), any(vec4<bool>(var_0.a.x & !false, !var_1.x, any(vec4<bool>(var_0.b, true, arg_0.a.b.x, true)), true)), !(var_0.b && var_1.x));
    return var_0;
}

fn func_1(arg_0: Struct_2, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = func_2(arg_0);
    var var_1 = var_0;
    var var_2 = -29886i;
    var var_3 = select(-(u_input.d + i32(-2147483648)) <= ~(~2147483647i), !true, (~(~u_input.a.x) * 4294967295u) >= clamp(~(~u_input.b), firstTrailingBit(~u_input.b), ~0u + 9349u));
    var_1 = Struct_3(vec4<bool>(true, false, true, all(arg_0.a.b.wy)), !false);
    return arg_0.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2, arg_3: bool) -> Struct_2 {
    var var_0 = arg_0.a;
    var var_1 = ~(~((vec3<i32>(u_input.e.x, u_input.c.x, -15372i) >> arg_1.a.a.xxy) + ~vec3<i32>(9611i, 2147483647i, 13441i))) ^ vec3<i32>(abs(~2147483647i) >> (var_0.x >> 26682u), -reverseBits(-u_input.e.x), u_input.c.x);
    let var_2 = false;
    var_0 = arg_1.a.a ^ (arg_0.a * ~(~(~arg_0.a)));
    var_1 = ~(~(~(vec3<i32>(u_input.d, 3845i, var_1.x) << vec3<u32>(4294967295u, 18469u, arg_1.a.d.x)) | -vec3<i32>(var_1.x, 1i, u_input.e.x)));
    return Struct_2(Struct_1(~select(vec4<u32>(39579u, arg_1.a.a.x, 11439u, arg_2.a.d.x), vec4<u32>(var_0.x, arg_1.a.d.x, arg_0.a.x, 31421u) + arg_1.a.a, !arg_1.a.b), arg_2.a.b, -vec3<f32>(trunc(arg_2.a.c.x), -424f, -arg_2.a.c.x), arg_1.a.a.ww));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(Struct_2(Struct_1(vec4<u32>(u_input.b, u_input.b, 0u, u_input.a.x) ^ vec4<u32>(42661u, u_input.b, u_input.a.x, u_input.a.x), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false)), vec3<f32>(-562f, -249f, 375f) + vec3<f32>(851f, -1350f, -549f), u_input.a.zz)), !(!vec3<bool>(false, false, true))), Struct_2(func_1(Struct_2(func_1(Struct_2(Struct_1(vec4<u32>(2232u, 54378u, 92783u, u_input.a.x), vec4<bool>(true, true, false, false), vec3<f32>(1000f, 1516f, -216f), u_input.a.xy)), vec3<bool>(true, false, false))), func_1(Struct_2(Struct_1(vec4<u32>(4294967295u, u_input.a.x, 0u, u_input.a.x), vec4<bool>(true, true, false, false), vec3<f32>(227f, -256f, 542f), u_input.a.zz)), vec3<bool>(true, true, false)).b.zzx)), Struct_2(func_1(Struct_2(func_1(Struct_2(Struct_1(vec4<u32>(1u, u_input.a.x, u_input.b, 20202u), vec4<bool>(false, false, false, true), vec3<f32>(-2728f, 745f, 735f), u_input.a.yy)), vec3<bool>(false, true, true))), !vec3<bool>(true, false, false))), any(func_2(Struct_2(Struct_1(vec4<u32>(u_input.a.x, 35766u, 0u, u_input.b), vec4<bool>(false, false, false, true), vec3<f32>(155f, -296f, -622f), u_input.a.yy))).a.zx));
    var_0 = func_4(var_0.a, Struct_2(Struct_1(var_0.a.a, var_0.a.b, func_4(var_0.a, Struct_2(Struct_1(var_0.a.a, vec4<bool>(false, false, var_0.a.b.x, true), var_0.a.c, var_0.a.d)), Struct_2(var_0.a), false).a.c * (vec3<f32>(var_0.a.c.x, -705f, 179f) + var_0.a.c), select(var_0.a.d, select(u_input.a.yy, vec2<u32>(u_input.b, u_input.a.x), var_0.a.b.x), var_0.a.a.x >= 4294967295u))), Struct_2(func_1(Struct_2(func_1(Struct_2(Struct_1(vec4<u32>(u_input.a.x, var_0.a.a.x, 130340u, 68843u), vec4<bool>(var_0.a.b.x, var_0.a.b.x, true, false), var_0.a.c, vec2<u32>(56633u, 1u))), var_0.a.b.wwy)), !select(var_0.a.b.yzx, vec3<bool>(var_0.a.b.x, var_0.a.b.x, var_0.a.b.x), var_0.a.b.x))), !(!var_0.a.b.x));
    var_0 = Struct_2(var_0.a);
    var_0 = func_4(var_0.a, Struct_2(var_0.a), func_4(func_1(Struct_2(Struct_1(var_0.a.a, vec4<bool>(false, var_0.a.b.x, false, var_0.a.b.x), vec3<f32>(1114f, var_0.a.c.x, 1423f), u_input.a.xz)), !(!vec3<bool>(var_0.a.b.x, var_0.a.b.x, false))), func_4(Struct_1(var_0.a.a, vec4<bool>(false, var_0.a.b.x, var_0.a.b.x, false), -vec3<f32>(1327f, var_0.a.c.x, 2727f), reverseBits(u_input.a.xy)), Struct_2(var_0.a), func_4(func_4(var_0.a, Struct_2(Struct_1(var_0.a.a, vec4<bool>(var_0.a.b.x, false, false, var_0.a.b.x), var_0.a.c, vec2<u32>(87762u, u_input.b))), Struct_2(var_0.a), var_0.a.b.x).a, func_4(var_0.a, Struct_2(var_0.a), Struct_2(Struct_1(var_0.a.a, var_0.a.b, var_0.a.c, vec2<u32>(10609u, 4294967295u))), false), Struct_2(Struct_1(vec4<u32>(u_input.b, 4294967295u, 0u, 36014u), var_0.a.b, vec3<f32>(-927f, var_0.a.c.x, -204f), var_0.a.a.yy)), var_0.a.b.x || var_0.a.b.x), false), func_4(var_0.a, Struct_2(var_0.a), func_4(func_1(Struct_2(Struct_1(vec4<u32>(var_0.a.d.x, 6350u, var_0.a.a.x, var_0.a.d.x), var_0.a.b, var_0.a.c, var_0.a.a.ww)), vec3<bool>(true, false, var_0.a.b.x)), func_4(Struct_1(var_0.a.a, vec4<bool>(true, var_0.a.b.x, var_0.a.b.x, false), var_0.a.c, var_0.a.d), Struct_2(Struct_1(var_0.a.a, vec4<bool>(false, var_0.a.b.x, var_0.a.b.x, true), var_0.a.c, u_input.a.xy)), Struct_2(Struct_1(vec4<u32>(0u, 49194u, var_0.a.d.x, 1u), var_0.a.b, vec3<f32>(-722f, var_0.a.c.x, -1071f), vec2<u32>(39466u, 94834u))), false), Struct_2(Struct_1(vec4<u32>(1u, var_0.a.a.x, 1u, 14751u), var_0.a.b, vec3<f32>(var_0.a.c.x, 1423f, var_0.a.c.x), vec2<u32>(1u, 1u))), func_4(Struct_1(vec4<u32>(var_0.a.d.x, 57182u, 40465u, var_0.a.a.x), vec4<bool>(false, true, var_0.a.b.x, true), var_0.a.c, vec2<u32>(92875u, 4294967295u)), Struct_2(Struct_1(vec4<u32>(var_0.a.d.x, 0u, u_input.a.x, var_0.a.d.x), vec4<bool>(false, false, true, true), var_0.a.c, var_0.a.a.wz)), Struct_2(Struct_1(var_0.a.a, var_0.a.b, var_0.a.c, vec2<u32>(var_0.a.a.x, var_0.a.d.x))), false).a.b.x), var_0.a.b.x), ~(~1u) < max(29104u, 1u ^ 23018u)), all(select(select(vec4<bool>(var_0.a.b.x, var_0.a.b.x, var_0.a.b.x, var_0.a.b.x), vec4<bool>(var_0.a.b.x, false, false, var_0.a.b.x), var_0.a.b.x), vec4<bool>(var_0.a.b.x, false, false, var_0.a.b.x), false)) || ((true || true) & func_4(var_0.a, Struct_2(Struct_1(var_0.a.a, var_0.a.b, vec3<f32>(-253f, -1149f, 636f), var_0.a.d)), func_4(Struct_1(var_0.a.a, var_0.a.b, var_0.a.c, u_input.a.yx), Struct_2(var_0.a), Struct_2(Struct_1(vec4<u32>(4294967295u, 44186u, u_input.a.x, var_0.a.a.x), vec4<bool>(true, false, var_0.a.b.x, var_0.a.b.x), vec3<f32>(var_0.a.c.x, var_0.a.c.x, var_0.a.c.x), u_input.a.yz)), var_0.a.b.x), var_0.a.b.x).a.b.x));
    var_0 = func_4(Struct_1(var_0.a.a, var_0.a.b, -(-vec3<f32>(1204f, var_0.a.c.x, var_0.a.c.x)), func_4(Struct_1(~vec4<u32>(1u, var_0.a.d.x, 4862u, 38420u), !var_0.a.b, -var_0.a.c, firstTrailingBit(vec2<u32>(u_input.a.x, u_input.b))), Struct_2(Struct_1(var_0.a.a, vec4<bool>(true, false, false, false), var_0.a.c, u_input.a.yx)), func_4(Struct_1(var_0.a.a, var_0.a.b, vec3<f32>(-418f, var_0.a.c.x, -458f), vec2<u32>(24902u, 0u)), func_4(var_0.a, Struct_2(Struct_1(var_0.a.a, var_0.a.b, vec3<f32>(var_0.a.c.x, -377f, var_0.a.c.x), vec2<u32>(u_input.a.x, 96835u))), Struct_2(var_0.a), var_0.a.b.x), func_4(Struct_1(var_0.a.a, vec4<bool>(true, var_0.a.b.x, false, false), var_0.a.c, vec2<u32>(39177u, var_0.a.d.x)), Struct_2(var_0.a), Struct_2(var_0.a), var_0.a.b.x), var_0.a.c.x > -396f), func_1(Struct_2(Struct_1(vec4<u32>(u_input.a.x, var_0.a.d.x, var_0.a.d.x, u_input.a.x), vec4<bool>(true, false, var_0.a.b.x, false), var_0.a.c, var_0.a.a.xw)), func_2(Struct_2(Struct_1(vec4<u32>(25822u, 0u, 4294967295u, 4294967295u), var_0.a.b, vec3<f32>(var_0.a.c.x, var_0.a.c.x, -1061f), vec2<u32>(var_0.a.d.x, u_input.b)))).a.wyx).b.x).a.d), func_4(Struct_1(~var_0.a.a | ~vec4<u32>(u_input.a.x, u_input.b, 17064u, 24481u), vec4<bool>(!var_0.a.b.x, true, false, !false), abs(-var_0.a.c), u_input.a.zx), Struct_2(func_1(Struct_2(var_0.a), !vec3<bool>(true, true, true))), Struct_2(var_0.a), all(func_4(func_1(Struct_2(Struct_1(var_0.a.a, vec4<bool>(false, var_0.a.b.x, var_0.a.b.x, false), var_0.a.c, vec2<u32>(11997u, 1u))), var_0.a.b.xyz), Struct_2(Struct_1(var_0.a.a, vec4<bool>(var_0.a.b.x, var_0.a.b.x, true, false), var_0.a.c, vec2<u32>(26958u, 72861u))), Struct_2(Struct_1(var_0.a.a, var_0.a.b, vec3<f32>(-859f, -1934f, var_0.a.c.x), var_0.a.d)), 26123u <= 97853u).a.b.zx)), func_4(var_0.a, func_4(var_0.a, Struct_2(var_0.a), Struct_2(func_4(var_0.a, Struct_2(var_0.a), Struct_2(var_0.a), false).a), !(var_0.a.d.x != var_0.a.a.x)), func_4(func_1(func_4(var_0.a, Struct_2(var_0.a), Struct_2(var_0.a), true), vec3<bool>(true, var_0.a.b.x, var_0.a.b.x)), func_4(Struct_1(var_0.a.a, var_0.a.b, vec3<f32>(-403f, 1889f, -245f), vec2<u32>(10381u, var_0.a.a.x)), func_4(Struct_1(vec4<u32>(4294967295u, 4294967295u, var_0.a.d.x, 6903u), var_0.a.b, vec3<f32>(var_0.a.c.x, var_0.a.c.x, var_0.a.c.x), vec2<u32>(25339u, 50522u)), Struct_2(Struct_1(vec4<u32>(u_input.b, var_0.a.d.x, var_0.a.d.x, 5871u), vec4<bool>(var_0.a.b.x, var_0.a.b.x, var_0.a.b.x, false), vec3<f32>(-414f, var_0.a.c.x, var_0.a.c.x), vec2<u32>(var_0.a.a.x, var_0.a.a.x))), Struct_2(var_0.a), false), func_4(Struct_1(vec4<u32>(1u, 1u, u_input.a.x, 4294967295u), var_0.a.b, var_0.a.c, vec2<u32>(48743u, u_input.a.x)), Struct_2(Struct_1(var_0.a.a, var_0.a.b, var_0.a.c, vec2<u32>(19290u, 1u))), Struct_2(var_0.a), false), !true), Struct_2(var_0.a), !(!var_0.a.b.x)), func_4(Struct_1(vec4<u32>(var_0.a.a.x, u_input.b, var_0.a.d.x, 0u), !var_0.a.b, trunc(var_0.a.c), var_0.a.a.zy), func_4(func_4(Struct_1(vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b), var_0.a.b, vec3<f32>(var_0.a.c.x, -989f, 549f), vec2<u32>(1u, 1u)), Struct_2(Struct_1(var_0.a.a, vec4<bool>(true, var_0.a.b.x, true, false), vec3<f32>(var_0.a.c.x, -2123f, -902f), var_0.a.a.xy)), Struct_2(Struct_1(var_0.a.a, var_0.a.b, vec3<f32>(var_0.a.c.x, -721f, var_0.a.c.x), vec2<u32>(u_input.b, 62412u))), true).a, func_4(Struct_1(vec4<u32>(74944u, var_0.a.a.x, 19511u, 0u), vec4<bool>(var_0.a.b.x, var_0.a.b.x, var_0.a.b.x, var_0.a.b.x), vec3<f32>(-901f, -861f, var_0.a.c.x), vec2<u32>(u_input.a.x, 4294967295u)), Struct_2(Struct_1(var_0.a.a, vec4<bool>(false, false, true, var_0.a.b.x), vec3<f32>(var_0.a.c.x, var_0.a.c.x, 839f), vec2<u32>(u_input.b, 1u))), Struct_2(Struct_1(var_0.a.a, vec4<bool>(true, true, var_0.a.b.x, true), vec3<f32>(-1000f, var_0.a.c.x, -619f), vec2<u32>(16137u, 28921u))), var_0.a.b.x), func_4(Struct_1(vec4<u32>(42367u, u_input.a.x, var_0.a.d.x, 8703u), var_0.a.b, var_0.a.c, vec2<u32>(var_0.a.a.x, 1u)), Struct_2(var_0.a), Struct_2(Struct_1(var_0.a.a, vec4<bool>(var_0.a.b.x, var_0.a.b.x, true, var_0.a.b.x), var_0.a.c, var_0.a.a.ww)), var_0.a.b.x), var_0.a.b.x), Struct_2(var_0.a), !(!true)).a.b.x), var_0.a.b.x);
    var var_1 = ~var_0.a.a.zx;
    var_1 = ~var_0.a.a.yz;
    var var_2 = func_2(Struct_2(func_4(Struct_1(~vec4<u32>(var_0.a.d.x, u_input.b, 0u, 72886u), select(vec4<bool>(var_0.a.b.x, var_0.a.b.x, false, var_0.a.b.x), var_0.a.b, vec4<bool>(var_0.a.b.x, var_0.a.b.x, var_0.a.b.x, var_0.a.b.x)), var_0.a.c, var_0.a.a.wx), Struct_2(func_1(Struct_2(var_0.a), var_0.a.b.yyw)), Struct_2(func_1(Struct_2(var_0.a), var_0.a.b.yyw)), any(vec2<bool>(true, var_0.a.b.x))).a));
    var var_3 = func_4(var_0.a, func_4(Struct_1(vec4<u32>(var_1.x, var_1.x, 26030u, 0u) & func_4(Struct_1(var_0.a.a, var_0.a.b, vec3<f32>(var_0.a.c.x, -1280f, 1898f), vec2<u32>(var_1.x, 60744u)), Struct_2(Struct_1(var_0.a.a, vec4<bool>(var_0.a.b.x, false, var_0.a.b.x, true), vec3<f32>(1893f, var_0.a.c.x, var_0.a.c.x), vec2<u32>(1u, var_0.a.d.x))), Struct_2(Struct_1(vec4<u32>(0u, var_1.x, var_0.a.d.x, 46437u), var_2.a, vec3<f32>(1795f, 892f, var_0.a.c.x), vec2<u32>(0u, 1u))), true).a.a, select(func_1(Struct_2(var_0.a), vec3<bool>(var_2.a.x, var_0.a.b.x, true)).b, func_1(Struct_2(var_0.a), var_2.a.ywy).b, var_2.a), (var_0.a.c / vec3<f32>(-726f, var_0.a.c.x, -128f)) * var_0.a.c, ~var_0.a.d + (u_input.a.zx % vec2<u32>(0u, u_input.a.x))), func_4(Struct_1(var_0.a.a, func_2(Struct_2(var_0.a)).a, var_0.a.c / vec3<f32>(var_0.a.c.x, var_0.a.c.x, var_0.a.c.x), reverseBits(vec2<u32>(var_1.x, 0u))), Struct_2(Struct_1(var_0.a.a, vec4<bool>(false, false, true, var_2.b), vec3<f32>(-230f, 292f, var_0.a.c.x), u_input.a.yz)), func_4(Struct_1(vec4<u32>(var_1.x, u_input.a.x, var_1.x, 4294967295u), vec4<bool>(false, var_2.b, true, false), var_0.a.c, var_0.a.a.zw), Struct_2(var_0.a), Struct_2(var_0.a), var_0.a.b.x), u_input.d != -(-1i)), Struct_2(var_0.a), !func_1(func_4(var_0.a, Struct_2(Struct_1(vec4<u32>(u_input.a.x, var_1.x, 29347u, 2220u), var_0.a.b, var_0.a.c, var_0.a.a.ww)), Struct_2(Struct_1(vec4<u32>(var_0.a.a.x, 3021u, 1u, var_0.a.a.x), vec4<bool>(var_0.a.b.x, false, true, var_2.b), var_0.a.c, var_0.a.d)), true), !vec3<bool>(true, var_0.a.b.x, false)).b.x), Struct_2(var_0.a), var_0.a.b.x).a;
    let x = u_input.a;
    s_output = StorageBuffer(func_4(var_0.a, Struct_2(func_1(Struct_2(var_0.a), vec3<bool>(var_0.a.b.x, true, var_3.b.x))), func_4(var_0.a, func_4(var_0.a, func_4(var_0.a, Struct_2(var_0.a), Struct_2(Struct_1(vec4<u32>(var_1.x, 4294967295u, var_1.x, 4294967295u), vec4<bool>(true, var_3.b.x, true, true), var_3.c, vec2<u32>(u_input.b, var_0.a.a.x))), var_2.b), func_4(var_0.a, Struct_2(Struct_1(var_3.a, vec4<bool>(true, true, false, var_2.a.x), var_0.a.c, u_input.a.yy)), Struct_2(var_0.a), var_0.a.b.x), 31018u >= 4294967295u), Struct_2(var_0.a), select(!false, true & var_2.a.x, false)), firstTrailingBit(var_3.d.x + 0u) <= min(var_0.a.a.x, 0u)).a.c.yx);
}

