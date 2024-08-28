// {"0:0":[246,225,184,186,67,105,122,144,52,217,95,84,51,80,37,146,158,156,207,75,245,202,66,232,132,207,112,83,95,23,50,32,52,17,64,184,150,175,161,67,249,133,214,6,66,240,162,187,64,157,159,110,217,100,241,183,116,166,76,53,98,119,35,149]}
// Seed: 9617927039947233940

struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: vec2<u32>,
    e: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_2,
    d: bool,
    e: vec2<bool>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_2,
    c: u32,
    d: Struct_4,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 31>;

var<private> global1: array<Struct_5, 18>;

var<private> global2: array<i32, 16>;

fn func_3() -> f32 {
    var var_0 = -(-select(vec3<f32>(191f, -497f, -837f) / vec3<f32>(-1337f, 376f, 1937f), select(vec3<f32>(-554f, -437f, -682f), vec3<f32>(-1037f, -282f, 1275f), vec3<bool>(false, true, true)), !vec3<bool>(true, true, false)) * trunc(-floor(vec3<f32>(-634f, -639f, -205f))));
    var var_1 = (-(-238f) < -var_0.x) || all(select(select(!vec3<bool>(false, false, false), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true), vec3<bool>(false, false, true)), !vec3<bool>(true, true, true), !false));
    let var_2 = abs(vec2<i32>(~2147483647i, (-1i + -u_input.c.x) - (-20411i / max(26453i, i32(-2147483648)))));
    global1 = array<Struct_5, 18>();
    var_1 = 12416i > firstTrailingBit(-(-u_input.c.x + firstLeadingBit(-22144i)));
    return step(-var_0.x, var_0.x);
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec2<bool>) -> i32 {
    var var_0 = vec4<f32>(578f, arg_1.c, func_3(), trunc(-(-(-1694f))));
    var var_1 = Struct_4(-(-(-select(vec3<f32>(1282f, 226f, 209f), vec3<f32>(-979f, var_0.x, var_0.x), true))), Struct_1((~u_input.e | reverseBits(arg_1.a)) + arg_1.a, ~(~(0u * 38913u)), sign(var_0.x), ~u_input.e.wx, 2147483647i), Struct_2(select(!(!vec3<bool>(arg_2.x, false, false)), vec3<bool>(!arg_2.x, arg_2.x & true, !false), abs(i32(-2147483648)) <= i32(-2147483648)), arg_1, global2[((u_input.b | 1u) | (arg_1.a.x << 0u)) << 0u], arg_1, Struct_1(~u_input.e, u_input.b, -(-(-1082f)), ~(~arg_1.d), 0i)), true, arg_2);
    var_0 = (vec4<f32>(var_0.x + (arg_1.c / arg_1.c), var_0.x, select(-arg_1.c, select(469f, -254f, arg_2.x), any(vec3<bool>(arg_2.x, true, true))), var_0.x * 1877f) / vec4<f32>(round(var_0.x) + var_0.x, -arg_1.c * 285f, 693f, round(-1705f))) * select(-((vec4<f32>(3805f, 661f, var_0.x, -1560f) - vec4<f32>(227f, arg_1.c, 1157f, 384f)) + vec4<f32>(var_1.c.b.c, arg_1.c, var_0.x, var_1.a.x)), vec4<f32>(var_1.c.e.c - var_0.x, arg_1.c, var_1.b.c, -206f) + vec4<f32>(var_0.x, -arg_1.c, 191f, var_0.x), !(!true) && !true);
    let var_2 = var_1.c;
    let var_3 = -38797i;
    return abs(reverseBits(6509i ^ abs(u_input.c.x))) << 0u;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec4<i32>, arg_3: Struct_1) -> Struct_2 {
    global2 = array<i32, 16>();
    var var_0 = -938f;
    var var_1 = arg_1.b.d.x;
    let var_2 = reverseBits(-(-func_2(u_input.b, Struct_1(arg_3.a, u_input.e.x, arg_1.c.e.c, arg_0.b.e.d, arg_3.e), arg_0.b.a.xy))) << reverseBits(clamp(min(arg_3.a.x, ~arg_0.a), arg_0.c.d.x << (u_input.e.x ^ arg_3.b), arg_1.c.b.d.x));
    let var_3 = abs(arg_1.c.d.b);
    return Struct_2(vec3<bool>(arg_3.c > -295f, false, arg_0.b.a.x), Struct_1(~arg_3.a, ~arg_1.c.e.d.x, -(-1000f + -403f), arg_1.b.a.xx, dot(arg_2, -vec4<i32>(-3001i, -1i, -25506i, i32(-2147483648)))), arg_0.b.e.e, arg_0.c, arg_0.c);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>) -> f32 {
    global2 = array<i32, 16>();
    global2 = array<i32, 16>();
    let var_0 = -vec3<f32>(-481f, exp2(711f), max(-(-arg_0.b.c), exp2(arg_0.b.c)));
    var var_1 = global1[arg_0.e.a.x];
    var var_2 = global1[u_input.e.x];
    return var_1.b.d.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(clamp(~min(vec4<u32>(33459u, u_input.e.x, 25050u, u_input.e.x), vec4<u32>(58529u, u_input.b, u_input.e.x, u_input.e.x)), u_input.e, vec4<u32>(select(0u, firstTrailingBit(u_input.e.x), true), dot(vec3<u32>(23875u, u_input.e.x, 0u) ^ vec3<u32>(16002u, 19515u, 56532u), u_input.e.yxz % u_input.e.wyw), countOneBits(4294967295u % u_input.e.x), ~u_input.b)), 11703u, -(-func_4(func_1(Struct_3(u_input.e.x, Struct_2(vec3<bool>(true, false, true), Struct_1(vec4<u32>(u_input.b, 36950u, u_input.e.x, u_input.b), u_input.b, -1085f, u_input.e.yw, 0i), -20388i, Struct_1(u_input.e, 0u, 193f, vec2<u32>(u_input.e.x, u_input.b), i32(-2147483648)), Struct_1(vec4<u32>(u_input.e.x, 0u, 45057u, u_input.e.x), u_input.e.x, 331f, vec2<u32>(23693u, u_input.b), u_input.a.x)), Struct_1(u_input.e, u_input.e.x, -315f, vec2<u32>(4294967295u, u_input.b), 14818i)), Struct_4(vec3<f32>(814f, -2100f, 2313f), Struct_1(vec4<u32>(u_input.b, u_input.e.x, 17428u, u_input.b), 0u, -330f, u_input.e.wz, u_input.d), Struct_2(vec3<bool>(true, false, false), Struct_1(vec4<u32>(4294967295u, u_input.e.x, 1u, u_input.b), u_input.b, 1480f, u_input.e.xw, u_input.c.x), -2109i, Struct_1(u_input.e, u_input.b, -2098f, u_input.e.xy, u_input.a.x), Struct_1(vec4<u32>(u_input.e.x, 16772u, 1u, 1u), u_input.e.x, -660f, vec2<u32>(38790u, u_input.b), -44352i)), true, vec2<bool>(false, true)), vec4<i32>(global2[42608u], u_input.d, global2[27698u], u_input.c.x), Struct_1(u_input.e, u_input.b, -1857f, u_input.e.ww, i32(-2147483648))), vec3<u32>(18419u, u_input.e.x, u_input.e.x) << vec3<u32>(u_input.e.x, u_input.e.x, u_input.b))), ~(((u_input.e.xy ^ vec2<u32>(u_input.b, 4812u)) >> u_input.e.zw) + reverseBits(vec2<u32>(u_input.e.x, u_input.b))), firstLeadingBit(reverseBits(global2[u_input.e.x])));
    var_0 = func_1(Struct_3(77816u, Struct_2(vec3<bool>(var_0.c >= 783f, select(false, false, false), false), func_1(Struct_3(u_input.e.x, Struct_2(vec3<bool>(true, false, false), Struct_1(u_input.e, 4294967295u, var_0.c, var_0.a.zx, var_0.e), var_0.e, Struct_1(vec4<u32>(var_0.a.x, u_input.e.x, 1u, u_input.e.x), var_0.a.x, var_0.c, vec2<u32>(u_input.b, 0u), 2147483647i), Struct_1(var_0.a, u_input.b, -1000f, var_0.a.ww, 0i)), Struct_1(vec4<u32>(54174u, u_input.e.x, u_input.b, var_0.b), 49341u, var_0.c, var_0.a.xw, var_0.e)), Struct_4(vec3<f32>(var_0.c, -1000f, 112f), Struct_1(var_0.a, 71671u, var_0.c, vec2<u32>(u_input.b, 1u), 16739i), Struct_2(vec3<bool>(true, true, true), Struct_1(vec4<u32>(36088u, 49291u, u_input.e.x, var_0.b), u_input.b, var_0.c, u_input.e.ww, -38051i), 50077i, Struct_1(u_input.e, var_0.d.x, var_0.c, u_input.e.xz, var_0.e), Struct_1(vec4<u32>(var_0.a.x, 0u, u_input.b, 1u), 4294967295u, var_0.c, u_input.e.yy, var_0.e)), true, vec2<bool>(false, true)), u_input.a | u_input.a, func_1(Struct_3(var_0.d.x, Struct_2(vec3<bool>(false, false, true), Struct_1(vec4<u32>(var_0.a.x, 4294967295u, var_0.b, var_0.a.x), 12307u, -1000f, u_input.e.xx, global2[39975u]), global2[0u], Struct_1(vec4<u32>(7137u, var_0.d.x, u_input.e.x, 4294967295u), var_0.b, var_0.c, vec2<u32>(44199u, u_input.e.x), global2[43970u]), Struct_1(vec4<u32>(u_input.b, u_input.e.x, 4294967295u, u_input.e.x), u_input.e.x, var_0.c, vec2<u32>(var_0.a.x, u_input.e.x), global2[4294967295u])), Struct_1(vec4<u32>(4294967295u, 4294967295u, u_input.b, u_input.b), u_input.b, var_0.c, var_0.d, global2[0u])), Struct_4(vec3<f32>(var_0.c, 510f, 1000f), Struct_1(vec4<u32>(4294967295u, var_0.b, 44982u, var_0.d.x), u_input.e.x, -397f, vec2<u32>(0u, var_0.b), 7796i), Struct_2(vec3<bool>(true, true, true), Struct_1(var_0.a, 15570u, 730f, u_input.e.xx, u_input.d), u_input.d, Struct_1(var_0.a, 0u, -365f, var_0.a.yx, global2[77418u]), Struct_1(u_input.e, 27726u, var_0.c, vec2<u32>(u_input.e.x, var_0.d.x), 0i)), true, vec2<bool>(true, true)), vec4<i32>(global2[71407u], global2[95701u], 13310i, global2[u_input.e.x]), Struct_1(var_0.a, 1u, 801f, var_0.d, global2[1u])).e).e, clamp(global2[56091u], u_input.c.x, var_0.e) + var_0.e, Struct_1(firstLeadingBit(var_0.a), ~var_0.a.x, var_0.c, u_input.e.wx, ~global2[4294967295u]), Struct_1(var_0.a, dot(vec4<u32>(61326u, 1u, 0u, var_0.a.x), vec4<u32>(32930u, 24798u, u_input.b, 1u)), var_0.c, vec2<u32>(42654u, 38874u), var_0.e)), Struct_1(vec4<u32>(var_0.b & 0u, var_0.a.x, 54597u, ~var_0.d.x), u_input.e.x, -1952f, u_input.e.zw, 1i)), Struct_4(-vec3<f32>(var_0.c, -1058f, 719f) + -vec3<f32>(var_0.c, -1018f, var_0.c), Struct_1(abs(vec4<u32>(var_0.d.x, var_0.b, var_0.d.x, var_0.d.x)), 77310u, func_3(), vec2<u32>(0u, u_input.e.x) | u_input.e.xx, ~(-u_input.c.x)), func_1(Struct_3(abs(4294967295u), Struct_2(vec3<bool>(false, true, true), Struct_1(u_input.e, var_0.a.x, -164f, var_0.a.zz, global2[u_input.e.x]), i32(-2147483648), Struct_1(vec4<u32>(4294967295u, 51419u, 31041u, var_0.d.x), u_input.b, var_0.c, vec2<u32>(32226u, 4294967295u), global2[u_input.b]), Struct_1(var_0.a, u_input.b, 1000f, var_0.d, var_0.e)), func_1(Struct_3(u_input.e.x, Struct_2(vec3<bool>(true, true, true), Struct_1(u_input.e, u_input.e.x, -136f, vec2<u32>(35979u, 0u), -36498i), global2[40438u], Struct_1(var_0.a, u_input.e.x, -556f, u_input.e.xy, var_0.e), Struct_1(u_input.e, 19628u, var_0.c, u_input.e.ww, u_input.c.x)), Struct_1(vec4<u32>(var_0.a.x, u_input.e.x, 40702u, var_0.a.x), var_0.a.x, var_0.c, vec2<u32>(1u, 4294967295u), 56496i)), Struct_4(vec3<f32>(var_0.c, var_0.c, -471f), Struct_1(var_0.a, var_0.d.x, var_0.c, vec2<u32>(0u, u_input.b), u_input.c.x), Struct_2(vec3<bool>(false, false, true), Struct_1(vec4<u32>(8859u, 89726u, var_0.b, 1u), 36173u, var_0.c, u_input.e.xy, global2[0u]), var_0.e, Struct_1(vec4<u32>(106135u, var_0.a.x, var_0.b, 0u), u_input.b, 1971f, var_0.d, var_0.e), Struct_1(vec4<u32>(0u, u_input.b, 66868u, 19636u), u_input.b, var_0.c, vec2<u32>(0u, 1252u), i32(-2147483648))), true, vec2<bool>(true, true)), u_input.a, Struct_1(var_0.a, 15322u, 369f, u_input.e.zx, -1i)).e), Struct_4(-vec3<f32>(var_0.c, var_0.c, var_0.c), Struct_1(vec4<u32>(u_input.b, 17138u, 34398u, var_0.d.x), 15722u, 1248f, var_0.d, i32(-2147483648)), func_1(Struct_3(u_input.b, Struct_2(vec3<bool>(true, true, false), Struct_1(u_input.e, 29472u, -1606f, vec2<u32>(94870u, 1u), u_input.d), global2[4294967295u], Struct_1(vec4<u32>(42154u, var_0.b, u_input.e.x, 4294967295u), var_0.d.x, var_0.c, vec2<u32>(u_input.e.x, 111240u), var_0.e), Struct_1(vec4<u32>(1u, u_input.b, 0u, u_input.b), 4294967295u, 925f, u_input.e.wx, global2[u_input.e.x])), Struct_1(vec4<u32>(u_input.b, 21318u, var_0.b, var_0.d.x), u_input.b, -1115f, u_input.e.yx, 13279i)), Struct_4(vec3<f32>(-1000f, -1512f, var_0.c), Struct_1(vec4<u32>(var_0.b, var_0.a.x, 4294967295u, 1u), 1u, -339f, var_0.d, -8527i), Struct_2(vec3<bool>(true, true, false), Struct_1(vec4<u32>(0u, 99906u, 1u, var_0.a.x), u_input.e.x, 1119f, var_0.a.ww, i32(-2147483648)), 0i, Struct_1(var_0.a, u_input.b, var_0.c, var_0.a.yw, 2147483647i), Struct_1(vec4<u32>(u_input.e.x, u_input.b, u_input.b, 0u), 6129u, -275f, u_input.e.wy, 1i)), false, vec2<bool>(true, true)), vec4<i32>(u_input.c.x, global2[100940u], u_input.a.x, i32(-2147483648)), Struct_1(vec4<u32>(4294967295u, u_input.e.x, u_input.b, 4294967295u), 1u, -1273f, var_0.a.yx, u_input.a.x)), false, !vec2<bool>(false, true)), min(u_input.a, u_input.a % vec4<i32>(u_input.a.x, var_0.e, u_input.d, global2[52048u])), Struct_1(clamp(vec4<u32>(53920u, var_0.b, 4294967295u, 1u), vec4<u32>(var_0.a.x, u_input.e.x, 42787u, 38028u), vec4<u32>(u_input.e.x, 4294967295u, 13414u, 0u)), 44067u, 523f, reverseBits(vec2<u32>(var_0.a.x, 0u)), dot(vec2<i32>(global2[var_0.a.x], 2968i), u_input.a.yw))), false, vec2<bool>(true, false)), max(abs(-u_input.a), u_input.a), Struct_1(u_input.e, ~clamp(min(56507u, 0u), u_input.b, 0u), floor(256f), vec2<u32>(firstLeadingBit(u_input.b), 0u), global2[u_input.e.x])).b;
    let var_1 = !(!any(vec2<bool>(false, false)) || !(!false));
    let var_2 = select(vec4<bool>(false, true, var_0.e >= var_0.e, true), vec4<bool>(all(!select(vec2<bool>(var_1, true), vec2<bool>(var_1, true), var_1)), all(func_1(Struct_3(0u, Struct_2(vec3<bool>(true, var_1, false), Struct_1(u_input.e, u_input.e.x, 1000f, u_input.e.wx, 2147483647i), global2[25082u], Struct_1(var_0.a, var_0.a.x, -2985f, var_0.d, 33417i), Struct_1(vec4<u32>(var_0.b, 54157u, u_input.b, u_input.e.x), u_input.b, var_0.c, vec2<u32>(4294967295u, 0u), 46132i)), Struct_1(var_0.a, 0u, var_0.c, u_input.e.zz, u_input.c.x)), Struct_4(vec3<f32>(-894f, 110f, -501f), Struct_1(vec4<u32>(1u, 42445u, 7740u, var_0.a.x), 23112u, var_0.c, vec2<u32>(u_input.b, 4294967295u), 13075i), Struct_2(vec3<bool>(true, false, var_1), Struct_1(vec4<u32>(var_0.d.x, 4294967295u, u_input.e.x, u_input.b), var_0.b, var_0.c, var_0.d, 0i), u_input.d, Struct_1(u_input.e, u_input.b, -1000f, vec2<u32>(u_input.b, 51531u), 0i), Struct_1(u_input.e, var_0.d.x, var_0.c, var_0.d, var_0.e)), var_1, vec2<bool>(true, false)), vec4<i32>(u_input.c.x, 31891i, u_input.a.x, global2[4294967295u]), func_1(Struct_3(3348u, Struct_2(vec3<bool>(false, var_1, var_1), Struct_1(var_0.a, 9495u, var_0.c, vec2<u32>(4294967295u, 88162u), u_input.c.x), -23447i, Struct_1(vec4<u32>(0u, u_input.e.x, 37832u, u_input.e.x), 23917u, -561f, vec2<u32>(1u, var_0.d.x), 17898i), Struct_1(vec4<u32>(var_0.a.x, u_input.e.x, u_input.b, u_input.e.x), 4294967295u, var_0.c, u_input.e.xz, i32(-2147483648))), Struct_1(vec4<u32>(var_0.b, u_input.b, 2725u, 0u), 28352u, -379f, var_0.a.wy, u_input.c.x)), Struct_4(vec3<f32>(-299f, 102f, var_0.c), Struct_1(u_input.e, var_0.d.x, 369f, var_0.d, 3017i), Struct_2(vec3<bool>(var_1, var_1, true), Struct_1(vec4<u32>(var_0.d.x, var_0.a.x, var_0.d.x, u_input.b), 17898u, var_0.c, var_0.d, 1i), u_input.a.x, Struct_1(vec4<u32>(4294967295u, u_input.e.x, u_input.e.x, 77334u), u_input.e.x, var_0.c, var_0.d, var_0.e), Struct_1(u_input.e, u_input.b, var_0.c, u_input.e.yx, -1i)), var_1, vec2<bool>(true, false)), u_input.a, Struct_1(u_input.e, u_input.e.x, 1000f, vec2<u32>(0u, var_0.a.x), -19839i)).b).a), !(!var_1), !var_1), true);
    global1 = array<Struct_5, 18>();
    global1 = array<Struct_5, 18>();
    var var_3 = Struct_1((vec4<u32>(abs(57794u), clamp(u_input.e.x, 43565u, 1u), u_input.e.x / u_input.e.x, ~u_input.e.x) ^ var_0.a) - vec4<u32>(dot(var_0.a.wyz + var_0.a.zww, vec3<u32>(71511u, u_input.e.x, u_input.e.x) % u_input.e.ywz), u_input.b, u_input.e.x, dot(~var_0.a, vec4<u32>(var_0.d.x, 14341u, 31466u, 40837u) & vec4<u32>(4294967295u, 1u, var_0.b, 55110u))), 35677u, -select(var_0.c, -ceil(var_0.c), all(!vec4<bool>(var_2.x, var_1, var_2.x, var_2.x))), max(~u_input.e.yz, max(~u_input.e.xx ^ u_input.e.yw, vec2<u32>(var_0.b, u_input.e.x) | abs(vec2<u32>(21325u, 1u)))), -1i);
    let x = u_input.a;
    s_output = StorageBuffer(((sign(vec3<f32>(1311f, -719f, 105f)) / trunc(vec3<f32>(var_3.c, var_0.c, var_0.c))) - (round(vec3<f32>(588f, -1000f, var_3.c)) - select(vec3<f32>(var_0.c, var_0.c, var_3.c), vec3<f32>(var_3.c, var_0.c, var_3.c), var_2.xwx))) - -vec3<f32>(var_3.c, 604f, func_4(Struct_2(vec3<bool>(true, var_1, true), Struct_1(u_input.e, 0u, 268f, vec2<u32>(var_0.d.x, u_input.b), global2[var_0.a.x]), 2147483647i, Struct_1(u_input.e, var_3.b, var_3.c, vec2<u32>(u_input.b, u_input.e.x), var_3.e), Struct_1(vec4<u32>(1u, 40744u, u_input.e.x, var_0.b), 29339u, -1029f, var_3.d, -26060i)), u_input.e.xww)), -(-254f / -(-(-400f))));
}

