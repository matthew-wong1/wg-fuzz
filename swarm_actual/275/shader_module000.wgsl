// {"0:0":[89,104,12,67,157,21,9,226,39,199,114,8,39,23,225,57,205,84,63,62,52,210,55,76,109,227,233,59,26,156,140,139,98,19,97,162,60,44,230,9,46,28,84,6,142,137,22,49]}
// Seed: 4256102084235044896

struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: f32) -> vec4<bool> {
    var var_0 = arg_1.c.a.x;
    var var_1 = arg_1.b;
    var_1 = Struct_1(!select(var_1.a, var_1.a, all(var_1.a.xz)));
    var var_2 = Struct_2(firstTrailingBit(arg_1.a) << ~arg_0.wz, arg_1.c, arg_1.b);
    var var_3 = ~vec4<u32>(~select(u_input.e, arg_0.x | 0u, true), clamp(~reverseBits(u_input.e), dot(arg_0.yx, arg_0.xy) ^ reverseBits(u_input.e), ~0u & 0u), ((0u | 58275u) % ~arg_0.x) / arg_0.x, min(0u, 4294967295u) * u_input.e);
    return select(select(!select(select(arg_1.c.a, vec4<bool>(false, var_1.a.x, var_2.c.a.x, var_1.a.x), vec4<bool>(false, var_1.a.x, var_1.a.x, false)), select(var_1.a, vec4<bool>(true, arg_1.b.a.x, true, false), vec4<bool>(true, false, false, var_1.a.x)), any(arg_1.c.a)), select(select(select(var_2.c.a, var_2.c.a, vec4<bool>(true, arg_1.c.a.x, arg_1.c.a.x, false)), vec4<bool>(false, arg_1.b.a.x, arg_1.b.a.x, false), !var_1.a), select(vec4<bool>(false, var_2.b.a.x, false, false), !var_1.a, !var_1.a.x), vec4<bool>(!arg_1.c.a.x, true && true, var_2.c.a.x, var_1.a.x)), vec4<bool>(true, !true, !(!var_1.a.x), !var_1.a.x)), select(!select(arg_1.c.a, !vec4<bool>(true, arg_1.b.a.x, true, arg_1.b.a.x), arg_1.a.x < u_input.b), !vec4<bool>(!var_1.a.x, -10269i <= u_input.d.x, var_2.a.x >= 0i, var_2.c.a.x), any(select(var_2.c.a, vec4<bool>(var_1.a.x, true, true, var_1.a.x), var_1.a.x))), all(select(!(!var_2.b.a.zzx), var_1.a.yzy, !arg_1.b.a.zxw)));
}

fn func_2() -> Struct_2 {
    let var_0 = !false;
    let var_1 = Struct_2(firstTrailingBit(vec2<i32>(abs(-1i), -(~u_input.a))), Struct_1(select(!(!vec4<bool>(true, var_0, false, var_0)), !select(vec4<bool>(false, var_0, true, var_0), vec4<bool>(false, var_0, var_0, true), vec4<bool>(var_0, true, true, var_0)), var_0)), Struct_1(select(select(select(vec4<bool>(true, false, var_0, var_0), vec4<bool>(false, true, true, false), vec4<bool>(var_0, var_0, true, var_0)), vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(false, var_0, true, var_0)), func_3(clamp(vec4<u32>(4294967295u, u_input.e, u_input.e, 10083u), vec4<u32>(1u, 4294967295u, u_input.e, u_input.e), vec4<u32>(u_input.e, 24253u, u_input.e, 0u)), Struct_2(vec2<i32>(29063i, u_input.a), Struct_1(vec4<bool>(var_0, var_0, var_0, true)), Struct_1(vec4<bool>(var_0, var_0, var_0, var_0))), 319f / -968f), vec4<bool>(false, any(vec4<bool>(var_0, true, false, false)), !var_0, any(vec3<bool>(true, var_0, true))))));
    var var_2 = var_0;
    var_2 = true;
    var_2 = false;
    return var_1;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = func_2();
    let var_1 = ~(((abs(vec3<u32>(u_input.e, arg_2.x, arg_2.x)) << arg_2) >> countOneBits(abs(vec3<u32>(u_input.e, 0u, 0u)))) ^ abs(~select(vec3<u32>(0u, u_input.e, arg_2.x), vec3<u32>(12351u, 72521u, u_input.e), arg_1.c.a.x)));
    var_0 = Struct_2(abs(~(u_input.c - firstLeadingBit(vec2<i32>(1i, u_input.a)))), Struct_1(vec4<bool>(all(vec3<bool>(arg_1.b.a.x, var_0.b.a.x, true)), !true, arg_1.b.a.x, all(arg_1.c.a.zwz))), arg_1.c);
    var_0 = arg_1;
    let var_2 = -(-(-365f * -392f));
    return func_2().c;
}

fn func_5(arg_0: f32, arg_1: vec4<f32>, arg_2: u32, arg_3: Struct_1) -> bool {
    let var_0 = Struct_2(select(vec2<i32>(abs(u_input.b) << 1u, u_input.b), ~u_input.d.zy, vec2<bool>(select(select(arg_3.a.x, arg_3.a.x, false), !false, func_4(u_input.d, Struct_2(u_input.c, Struct_1(arg_3.a), Struct_1(vec4<bool>(arg_3.a.x, arg_3.a.x, arg_3.a.x, arg_3.a.x))), vec3<u32>(7392u, 4294967295u, arg_2)).a.x), any(select(arg_3.a.zy, vec2<bool>(arg_3.a.x, arg_3.a.x), true)))), func_2().c, Struct_1(vec4<bool>(!true, !(false || true), func_2().c.a.x, func_2().c.a.x)));
    let var_1 = func_3(~(~(firstTrailingBit(vec4<u32>(arg_2, 22968u, 0u, 1u)) % vec4<u32>(21861u, 4294967295u, u_input.e, 14718u))), func_2(), ceil(-1214f)).yzw;
    let var_2 = firstLeadingBit(u_input.e);
    let var_3 = u_input.d;
    return var_0.b.a.x;
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = func_5(-1000f, min(vec4<f32>(-217f + -1038f, -1615f, -(-175f), -1000f), trunc(min(vec4<f32>(-1000f, -916f, 224f, 676f), vec4<f32>(-1233f, -179f, 482f, 1021f)))) - vec4<f32>(exp2(-704f - 1000f), floor(117f) / (-1369f + -896f), (-1378f + 654f) + -1000f, max(1593f, -1442f) / -231f), ~min(44007u / max(u_input.e, 28475u), ~arg_0.x), func_4(firstLeadingBit(u_input.d) / u_input.d, func_2(), arg_0.wwx));
    let var_1 = firstTrailingBit(1i);
    let var_2 = any(vec3<bool>(u_input.b <= (u_input.d.x + ~(-11397i)), var_0, (-83i << (u_input.e ^ arg_0.x)) == -22032i));
    let var_3 = vec4<f32>(-1459f, -120f, floor(1781f) - (max(floor(247f), -293f) * ceil(max(467f, -1593f))), sign(-step(110f - -931f, round(679f))));
    let var_4 = var_1;
    return func_2().b;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = !vec2<bool>(!arg_2.a.x, false);
    let var_1 = func_2().b;
    var var_2 = vec4<f32>(-(select(605f * 1264f, round(386f), true) - ceil(exp2(-392f))), round(-(-736f)), -((-(-1209f) * 993f) + (-150f - -(-242f))), ceil(min(1000f, -634f)));
    let var_3 = vec2<i32>(clamp(-1i, max(29285i, ~19129i) - (u_input.b + (-2327i & u_input.b)), select(-1i * reverseBits(u_input.d.x), ~(-u_input.a), !true && false)), dot(-(vec3<i32>(u_input.a, u_input.a, u_input.c.x) << vec3<u32>(1u, 4294967295u, u_input.e)), u_input.d.yzw));
    let var_4 = func_2().b;
    return arg_2;
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    let var_0 = arg_1;
    var var_1 = !true;
    let var_2 = func_1(~(~(vec4<u32>(u_input.e, u_input.e, u_input.e, u_input.e) + vec4<u32>(u_input.e, u_input.e, u_input.e, u_input.e)) ^ (firstTrailingBit(vec4<u32>(4294967295u, u_input.e, u_input.e, 38631u)) - max(vec4<u32>(0u, 1u, u_input.e, 1u), vec4<u32>(4294967295u, 60451u, 1u, u_input.e)))));
    var var_3 = vec3<i32>(~(-1323i) * abs(-(~15012i)), ~0i * -1i, -min(countOneBits(dot(vec2<i32>(1i, u_input.a), arg_2.a)), arg_2.a.x));
    var var_4 = 1610f;
    return arg_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.x;
    var var_1 = (reverseBits(~87000u) | max(abs(u_input.e) / u_input.e, (u_input.e * u_input.e) - ~20314u)) ^ u_input.e;
    var var_2 = !vec2<bool>(!false, select(!(true || false), true, u_input.e < u_input.e));
    var var_3 = func_7(func_6(func_1(~select(vec4<u32>(1u, u_input.e, u_input.e, 7009u), vec4<u32>(0u, 4294967295u, 18429u, u_input.e), vec4<bool>(true, var_2.x, false, var_2.x))), func_4(u_input.d, Struct_2(vec2<i32>(var_0, 2147483647i), Struct_1(vec4<bool>(true, var_2.x, var_2.x, false)), Struct_1(vec4<bool>(true, var_2.x, false, false))), ~select(vec3<u32>(u_input.e, u_input.e, 1u), vec3<u32>(u_input.e, u_input.e, 48786u), var_2.x)), Struct_1(vec4<bool>(func_2().c.a.x, var_2.x && var_2.x, any(vec4<bool>(false, var_2.x, false, var_2.x)), false && var_2.x))), func_4(min((u_input.d << vec4<u32>(0u, 16386u, 87360u, 17354u)) ^ u_input.d, select(u_input.d, vec4<i32>(var_0, -24130i, var_0, u_input.b), false) | vec4<i32>(-53502i, 23157i, u_input.a, 1i)), func_2(), vec3<u32>(0u, clamp(42848u, u_input.e, u_input.e), u_input.e) << select(firstLeadingBit(vec3<u32>(u_input.e, u_input.e, 0u)), ~vec3<u32>(u_input.e, 1u, u_input.e), vec3<bool>(var_2.x, true, true))), Struct_2(~abs(u_input.d.wz - u_input.c), Struct_1(select(select(vec4<bool>(true, var_2.x, var_2.x, var_2.x), vec4<bool>(var_2.x, true, true, false), false), select(vec4<bool>(true, true, var_2.x, var_2.x), vec4<bool>(var_2.x, true, var_2.x, false), var_2.x), select(vec4<bool>(false, var_2.x, false, var_2.x), vec4<bool>(var_2.x, var_2.x, false, var_2.x), var_2.x))), Struct_1(vec4<bool>(!var_2.x, -1000f >= -1264f, var_2.x, var_2.x))));
    let var_4 = max(u_input.d.zww, ~u_input.d.xzx);
    let var_5 = func_2();
    let var_6 = var_5;
    var var_7 = func_7(func_4(~firstTrailingBit(u_input.d), var_6, ~reverseBits(vec3<u32>(10944u, 4294967295u, u_input.e)) & ~firstLeadingBit(vec3<u32>(1u, u_input.e, 1u))), func_6(Struct_1(!var_5.c.a), func_7(var_5.b, var_5.b, Struct_2(u_input.d.xx, Struct_1(var_3.a), var_5.c)), var_6.c), var_5);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(2147483647i, ~(var_5.a.x & u_input.b), ~dot(var_4.zy, u_input.c), 32463i) / vec4<i32>(var_6.a.x, 23796i, var_0, -9397i), ~(~vec2<u32>(u_input.e << 20110u, u_input.e)), dot(u_input.d - min(~vec4<i32>(24341i, var_6.a.x, var_0, var_5.a.x), u_input.d), firstTrailingBit(u_input.d)), (~abs(vec2<u32>(u_input.e, u_input.e)) | select(min(vec2<u32>(118821u, u_input.e), vec2<u32>(0u, u_input.e)), ~vec2<u32>(0u, u_input.e), vec2<bool>(true, false))) + reverseBits(countOneBits(~vec2<u32>(4177u, u_input.e))), clamp(~(~abs(u_input.e)), ~1u, ~max(u_input.e, 4294967295u & u_input.e)));
}

