// {"0:0":[110,184,54,230,180,70,122,211,253,94,203,125,241,138,68,83,229,19,140,131,42,157,86,102,170,183,136,247,195,242,204,162]}
// Seed: 2011908369117732158

struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: vec3<u32>,
    d: vec2<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: vec4<i32>,
    d: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_2,
    d: vec3<f32>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: u32) -> vec3<bool> {
    var var_0 = Struct_2((vec2<i32>(i32(-2147483648) % 14095i, 14515i) << ~(~vec2<u32>(arg_2, 65347u))) >> vec2<u32>(~0u % 4294967295u, (u_input.a.x >> 4294967295u) / (0u * u_input.b)), vec3<f32>(-(1714f - -272f), -(-1132f / -605f), -688f) * vec3<f32>(622f, -(-1016f) * ceil(224f), -960f), Struct_1(firstLeadingBit(clamp(u_input.a.wwx, vec3<u32>(92882u, u_input.b, 4294967295u), vec3<u32>(u_input.b, u_input.b, 39585u)) + vec3<u32>(4294967295u, 0u, arg_2)), vec3<bool>(arg_1.x, arg_1.x, arg_0.x), vec3<u32>(arg_2, ~max(1u, 0u), 20256u), arg_0.zx, -(-(-257f))), Struct_1(~abs(vec3<u32>(arg_2, 31008u, 4294967295u)) / firstLeadingBit(~u_input.a.zyw), !vec3<bool>(any(vec3<bool>(arg_0.x, arg_0.x, true)), !false, arg_0.x | arg_1.x), (firstLeadingBit(u_input.a.xwx) | countOneBits(u_input.a.zxy)) / ~firstTrailingBit(u_input.a.xxz), select(arg_0.yy, !vec2<bool>(arg_1.x, false), arg_1.x), -156f - ((186f - -1000f) / sign(1116f))), -(vec3<f32>(-1020f, -(-2229f), 1928f) * sign(sign(vec3<f32>(-2822f, -1247f, 606f)))));
    return vec3<bool>(false, !true, arg_2 == ~4294967295u);
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: Struct_4) -> vec4<bool> {
    var var_0 = select(!vec3<bool>(arg_2.c.a.x == ~arg_2.c.a.x, 341f >= 1725f, any(func_3(arg_2.c.c.b, vec4<bool>(arg_1, true, false, arg_0), arg_2.a.a.x))), !vec3<bool>(arg_1, !(arg_2.a.e == -1117f), false), func_3(vec3<bool>(true, !(0i >= arg_2.c.a.x), !true), select(vec4<bool>(!arg_2.a.b.x, any(arg_2.c.d.d), false, arg_2.a.b.x), select(vec4<bool>(true, arg_0, arg_1, arg_1), vec4<bool>(arg_2.c.d.b.x, false, true, false), true), !vec4<bool>(true, arg_1, false, false)), ~51785u));
    let var_1 = -(-round(vec4<f32>(arg_2.a.e, -722f, 543f, arg_2.c.b.x)) - select(-vec4<f32>(1575f, arg_2.a.e, arg_2.d.x, arg_2.d.x), min(vec4<f32>(1445f, arg_2.b.b.b.x, arg_2.a.e, arg_2.d.x), vec4<f32>(689f, -1529f, arg_2.a.e, arg_2.b.b.c.e)), arg_1)) * -vec4<f32>(-trunc(arg_2.d.x), round(arg_2.a.e - arg_2.c.b.x), arg_2.c.c.e / arg_2.d.x, arg_2.d.x - 296f);
    let var_2 = arg_1;
    let var_3 = !vec4<bool>(arg_0, var_0.x, true | (arg_2.a.e > -263f), -6990i >= (abs(arg_2.b.b.a.x) / arg_2.b.b.a.x));
    var_0 = vec3<bool>(all(!select(vec3<bool>(true, false, true), vec3<bool>(var_2, true, arg_2.b.b.d.b.x), !var_3.zxy)), any(select(!(!vec2<bool>(arg_2.c.c.b.x, true)), var_3.yw, var_0.x)), !(-184f >= abs(ceil(var_1.x))));
    return var_3;
}

fn func_4(arg_0: vec4<bool>) -> Struct_3 {
    var var_0 = -min(step(exp2(vec3<f32>(1000f, -885f, -991f) * vec3<f32>(-866f, -1085f, -224f)), vec3<f32>(-598f, -396f, exp2(-494f))), -vec3<f32>(-1382f, -803f, 965f));
    var var_1 = -(~(min(vec3<i32>(-38625i, i32(-2147483648), 2147483647i), vec3<i32>(19724i, 1i, -38774i)) | vec3<i32>(-10779i, -1i, 42965i))) & select(-vec3<i32>(2147483647i, 2147483647i + -1i, -2147483647i), max(abs(-vec3<i32>(-1i, -54872i, 2147483647i)), vec3<i32>(106840i, -1i, i32(-2147483648)) - vec3<i32>(-31i, 4060i, i32(-2147483648))), false && arg_0.x);
    var_1 = ~(-(-countOneBits(vec3<i32>(var_1.x, var_1.x, var_1.x))));
    let var_2 = Struct_2(vec2<i32>(23393i, -var_1.x) & min(vec2<i32>(~var_1.x, -1i), ~(vec2<i32>(-1i, var_1.x) - vec2<i32>(-8027i, 2147483647i))), vec3<f32>(var_0.x - var_0.x, -1469f / var_0.x, var_0.x * -1782f) - (-sign(vec3<f32>(937f, 1147f, 1320f)) + max(vec3<f32>(var_0.x, var_0.x, var_0.x) - vec3<f32>(var_0.x, var_0.x, var_0.x), vec3<f32>(var_0.x, -3126f, 924f))), Struct_1(countOneBits(u_input.a.www), arg_0.wzy, ~u_input.a.wzx >> ~(u_input.a.yxz * u_input.a.xzw), func_2(arg_0.x, arg_0.x, Struct_4(Struct_1(vec3<u32>(12227u, u_input.b, u_input.a.x), vec3<bool>(true, true, arg_0.x), vec3<u32>(u_input.a.x, u_input.b, u_input.a.x), vec2<bool>(arg_0.x, false), var_0.x), Struct_3(vec2<bool>(false, false), Struct_2(vec2<i32>(var_1.x, -13106i), vec3<f32>(729f, var_0.x, 571f), Struct_1(vec3<u32>(24488u, 27831u, 0u), vec3<bool>(true, true, true), u_input.a.yyz, arg_0.yz, var_0.x), Struct_1(u_input.a.wzy, arg_0.zxx, u_input.a.zxz, arg_0.zz, var_0.x), vec3<f32>(var_0.x, 1000f, var_0.x)), vec4<i32>(1i, var_1.x, -1i, -11804i), arg_0.x), Struct_2(var_1.zy, vec3<f32>(-1000f, 318f, -782f), Struct_1(vec3<u32>(95747u, u_input.b, u_input.a.x), arg_0.zyw, vec3<u32>(u_input.a.x, 1u, u_input.b), vec2<bool>(arg_0.x, arg_0.x), var_0.x), Struct_1(u_input.a.yxy, arg_0.yzy, u_input.a.zyw, arg_0.wz, var_0.x), vec3<f32>(var_0.x, -513f, 985f)), trunc(vec3<f32>(-295f, var_0.x, var_0.x)))).yy, -(-(-var_0.x))), Struct_1(~vec3<u32>(u_input.a.x, u_input.b, u_input.a.x + 49958u), !arg_0.zwy, ~(vec3<u32>(u_input.a.x, 4294967295u, u_input.b) & u_input.a.xwy) / vec3<u32>(max(4294967295u, u_input.b), countOneBits(u_input.b), 15739u << 1u), vec2<bool>(!arg_0.x, (var_0.x / var_0.x) == -1775f), abs(-763f + -1194f)), -select(min(vec3<f32>(var_0.x, 759f, -310f) / vec3<f32>(-1368f, var_0.x, 1186f), vec3<f32>(-579f, 303f, -675f) + vec3<f32>(386f, -340f, -121f)), -(-vec3<f32>(411f, var_0.x, 1285f)), !(false || false)));
    let var_3 = ~(-dot(min(vec4<i32>(1i, 16249i, -1i, var_2.a.x), vec4<i32>(-1148i, var_2.a.x, -1i, var_2.a.x)), ~vec4<i32>(i32(-2147483648), var_1.x, var_1.x, -4194i)) / select(reverseBits(i32(-2147483648) >> u_input.a.x), 2147483647i, !true));
    return Struct_3(vec2<bool>(!(-224f != 187f), arg_0.x), var_2, -abs(clamp(vec4<i32>(var_1.x, -27667i, var_3, var_1.x), vec4<i32>(var_1.x, -14013i, 2147483647i, var_1.x) % vec4<i32>(13539i, var_3, 1i, 2147483647i), vec4<i32>(0i, var_1.x, 23112i, var_1.x) * vec4<i32>(var_2.a.x, var_2.a.x, var_1.x, var_2.a.x))), !var_2.d.d.x);
}

fn func_5(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: vec4<bool>, arg_3: Struct_5) -> Struct_1 {
    var var_0 = arg_0.b.e.x / (sign(arg_0.b.d.e) + arg_3.a.a.e);
    var_0 = abs(arg_3.a.c.c.e);
    return func_4(arg_2).b.c;
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: Struct_2) -> Struct_1 {
    var var_0 = arg_2.c;
    var_0 = func_5(func_4(select(select(vec4<bool>(false, arg_0, arg_0, true), !vec4<bool>(true, var_0.d.x, arg_2.c.d.x, false), arg_2.d.b.x), select(vec4<bool>(true, arg_0, arg_0, arg_2.c.d.x), vec4<bool>(true, false, false, var_0.b.x), !var_0.b.x), func_2(var_0.d.x, true, Struct_4(Struct_1(vec3<u32>(arg_2.c.a.x, 37750u, 50294u), arg_2.d.b, vec3<u32>(var_0.c.x, 5142u, u_input.a.x), arg_2.d.d, -1344f), Struct_3(var_0.b.xy, arg_2, vec4<i32>(-11223i, arg_2.a.x, arg_1, arg_2.a.x), false), arg_2, vec3<f32>(arg_2.b.x, 1557f, var_0.e))))), !(!(!(!vec4<bool>(arg_2.c.b.x, var_0.d.x, false, var_0.b.x)))), vec4<bool>(false, !false, arg_2.d.b.x, var_0.b.x), Struct_5(Struct_4(Struct_1(var_0.a, arg_2.d.b, vec3<u32>(4294967295u, 665u, 1u), vec2<bool>(false, arg_2.c.d.x), -arg_2.b.x), Struct_3(select(arg_2.c.b.yz, arg_2.c.d, var_0.d.x), Struct_2(arg_2.a, vec3<f32>(-456f, -392f, arg_2.e.x), Struct_1(var_0.a, arg_2.c.b, vec3<u32>(17301u, 49079u, 1u), vec2<bool>(true, true), -1483f), arg_2.c, vec3<f32>(772f, arg_2.d.e, var_0.e)), select(vec4<i32>(-11423i, -18091i, arg_1, -73734i), vec4<i32>(arg_2.a.x, 6182i, arg_2.a.x, 0i), false), select(var_0.d.x, arg_2.d.b.x, false)), arg_2, arg_2.b)));
    var var_1 = abs(func_4(func_2(arg_0 != (var_0.d.x && true), any(var_0.b) != true, Struct_4(arg_2.d, func_4(vec4<bool>(true, false, var_0.b.x, arg_0)), Struct_2(arg_2.a, arg_2.e, Struct_1(vec3<u32>(99716u, 30103u, arg_2.d.a.x), vec3<bool>(arg_2.d.d.x, true, false), var_0.a, var_0.b.yy, 1000f), arg_2.d, vec3<f32>(arg_2.c.e, 133f, arg_2.b.x)), -arg_2.b))).b.a.x);
    var var_2 = Struct_4(arg_2.c, func_4(func_2(!(true || arg_0), any(var_0.b), Struct_4(Struct_1(var_0.c, vec3<bool>(false, var_0.b.x, true), u_input.a.zzw, arg_2.c.b.zz, arg_2.b.x), func_4(vec4<bool>(arg_2.c.d.x, arg_2.c.b.x, false, arg_0)), func_4(vec4<bool>(true, false, true, arg_0)).b, vec3<f32>(-1000f, -677f, var_0.e)))), Struct_2(func_4(vec4<bool>(!var_0.b.x, all(arg_2.d.d), func_5(Struct_3(vec2<bool>(arg_2.c.d.x, false), Struct_2(arg_2.a, arg_2.e, arg_2.c, Struct_1(u_input.a.wxw, arg_2.c.b, u_input.a.wwz, vec2<bool>(var_0.b.x, var_0.b.x), -716f), arg_2.e), vec4<i32>(1i, arg_1, -1i, -45919i), var_0.b.x), vec4<bool>(arg_2.c.d.x, false, arg_0, var_0.d.x), vec4<bool>(true, true, arg_2.c.d.x, var_0.d.x), Struct_5(Struct_4(arg_2.d, Struct_3(arg_2.d.d, Struct_2(vec2<i32>(arg_1, arg_2.a.x), vec3<f32>(arg_2.c.e, 628f, arg_2.e.x), arg_2.c, Struct_1(vec3<u32>(var_0.c.x, 4294967295u, arg_2.c.c.x), var_0.b, var_0.c, arg_2.c.b.zz, -2131f), arg_2.b), vec4<i32>(arg_2.a.x, i32(-2147483648), -1i, arg_1), var_0.b.x), arg_2, vec3<f32>(arg_2.d.e, 1000f, -298f)))).b.x, all(vec4<bool>(var_0.d.x, false, false, true)))).b.a, vec3<f32>(var_0.e, -(-442f + arg_2.c.e), var_0.e), Struct_1(u_input.a.xww << arg_2.d.c, var_0.b, var_0.c, !vec2<bool>(true, arg_2.d.b.x), var_0.e), Struct_1(~(vec3<u32>(27969u, arg_2.d.c.x, 76974u) << vec3<u32>(var_0.a.x, 98229u, u_input.b)), !(!vec3<bool>(false, false, var_0.d.x)), min(u_input.a.yxy, vec3<u32>(1u, 8431u, u_input.a.x) + vec3<u32>(var_0.c.x, u_input.a.x, 49797u)), var_0.d, trunc(-1585f + arg_2.c.e)), arg_2.b), -arg_2.e);
    let var_3 = ~(~(u_input.b / (var_2.a.c.x & arg_2.d.c.x))) <= (8323u >> var_2.a.a.x);
    return func_4(func_2((-arg_2.e.x / -var_2.a.e) > func_4(select(vec4<bool>(true, true, arg_0, arg_0), vec4<bool>(var_2.c.d.b.x, false, var_0.d.x, var_0.d.x), var_3)).b.b.x, true, Struct_4(Struct_1(vec3<u32>(11747u, 1u, 71866u), select(vec3<bool>(true, false, true), var_0.b, vec3<bool>(arg_0, false, true)), vec3<u32>(arg_2.d.a.x, 84u, 6060u), !vec2<bool>(false, false), -1677f), func_4(vec4<bool>(true, false, true, arg_0)), var_2.c, -trunc(arg_2.e)))).b.c;
}

fn func_6(arg_0: Struct_1, arg_1: bool) -> f32 {
    var var_0 = vec2<bool>(!(!(min(387f, -771f) == 722f)), !(arg_1 & ((-5643i << arg_0.c.x) > abs(0i))));
    var var_1 = arg_0.b;
    return -(-step(arg_0.e, arg_0.e));
}

fn func_7(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_5) -> Struct_1 {
    let var_0 = floor(-(arg_2.a.c.b + arg_2.a.b.b.b));
    var var_1 = func_4(vec4<bool>(!(!all(vec3<bool>(false, arg_2.a.b.d, false))), arg_2.a.b.b.d.b.x, true, -(-var_0.x) > -213f)).b;
    var_1 = arg_2.a.b.b;
    let var_2 = arg_2;
    var var_3 = arg_2.a.b.b.a.x;
    return func_4(!select(select(select(vec4<bool>(var_1.c.b.x, true, true, true), vec4<bool>(true, arg_2.a.b.a.x, arg_2.a.a.b.x, true), vec4<bool>(arg_2.a.b.b.d.b.x, false, true, false)), func_2(arg_2.a.a.b.x, true, arg_2.a), arg_2.a.c.d.d.x), vec4<bool>(125484u <= var_2.a.c.d.c.x, func_2(var_2.a.a.d.x, false, arg_2.a).x, func_5(Struct_3(vec2<bool>(var_1.d.d.x, true), var_2.a.b.b, vec4<i32>(10335i, var_2.a.b.c.x, var_1.a.x, 2147483647i), var_2.a.c.c.b.x), vec4<bool>(arg_2.a.a.d.x, var_1.d.d.x, var_2.a.c.c.b.x, true), vec4<bool>(var_1.d.d.x, arg_2.a.c.c.d.x, arg_2.a.c.d.b.x, var_2.a.b.b.d.b.x), Struct_5(Struct_4(var_1.c, Struct_3(vec2<bool>(var_2.a.c.d.d.x, true), Struct_2(vec2<i32>(16368i, 2147483647i), arg_2.a.d, var_1.d, Struct_1(var_2.a.a.a, arg_2.a.b.b.c.b, vec3<u32>(26559u, var_2.a.a.a.x, var_2.a.b.b.c.a.x), vec2<bool>(false, true), arg_2.a.d.x), var_1.b), vec4<i32>(2147483647i, 2147483647i, -1i, var_2.a.b.b.a.x), var_1.c.d.x), Struct_2(var_1.a, vec3<f32>(-454f, 427f, 697f), arg_2.a.b.b.c, Struct_1(var_1.c.a, vec3<bool>(false, true, var_2.a.c.d.d.x), u_input.a.xyw, var_1.d.d, -1000f), vec3<f32>(-113f, arg_2.a.d.x, 452f)), vec3<f32>(405f, var_2.a.b.b.c.e, 864f)))).b.x, var_2.a.b.d), all(func_1(true, arg_2.a.b.b.a.x, Struct_2(vec2<i32>(1915i, 12641i), arg_2.a.b.b.b, Struct_1(vec3<u32>(27383u, 73553u, var_2.a.a.c.x), var_2.a.c.d.b, arg_1.zzw, arg_2.a.a.d, var_1.b.x), arg_2.a.a, vec3<f32>(-1461f, -202f, arg_0))).d))).b.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(exp2(ceil(-444f - 1596f) * func_6(func_1(false, -61298i, Struct_2(vec2<i32>(0i, 2147483647i), vec3<f32>(-1692f, -1802f, 1362f), Struct_1(u_input.a.wxw, vec3<bool>(true, true, false), u_input.a.zxw, vec2<bool>(false, true), 2351f), Struct_1(u_input.a.xyw, vec3<bool>(true, true, true), u_input.a.yyz, vec2<bool>(true, true), 1134f), vec3<f32>(1563f, -1133f, 572f))), 8427i <= -1i)), u_input.a, Struct_5(Struct_4(Struct_1(u_input.a.zzw, !vec3<bool>(false, true, false), u_input.a.yzz, !vec2<bool>(true, false), -(-2195f)), func_4(!vec4<bool>(true, false, true, false)), func_4(vec4<bool>(false, true, true, true)).b, select(-vec3<f32>(809f, 508f, 278f), -vec3<f32>(-535f, 280f, 842f), any(vec4<bool>(false, true, false, true))))));
    var var_1 = vec4<u32>(abs(77531u), countOneBits(var_0.c.x), ~1u, u_input.b);
    var var_2 = vec4<bool>(func_3(func_7(-1584f, u_input.a | vec4<u32>(30005u, var_1.x, 0u, var_1.x), Struct_5(Struct_4(Struct_1(vec3<u32>(44422u, 12170u, var_1.x), vec3<bool>(var_0.b.x, var_0.b.x, false), vec3<u32>(4294967295u, var_0.c.x, 0u), vec2<bool>(var_0.b.x, var_0.d.x), -772f), Struct_3(vec2<bool>(true, true), Struct_2(vec2<i32>(2147483647i, -18104i), vec3<f32>(1680f, var_0.e, -523f), var_0, var_0, vec3<f32>(var_0.e, -1525f, var_0.e)), vec4<i32>(46818i, -8593i, 21760i, i32(-2147483648)), true), Struct_2(vec2<i32>(-5443i, 6960i), vec3<f32>(var_0.e, var_0.e, -189f), var_0, var_0, vec3<f32>(-211f, -197f, 526f)), vec3<f32>(var_0.e, -1352f, 490f)))).b, !vec4<bool>(!var_0.d.x, var_1.x < var_0.a.x, -331f == 1000f, !var_0.b.x), var_1.x % max(4294967295u, var_0.c.x)).x, select(-(-36178i << 0u), ~countOneBits(33836i), var_0.b.x) == -9179i, any(vec2<bool>(func_5(func_4(vec4<bool>(var_0.b.x, var_0.d.x, true, true)), !vec4<bool>(var_0.d.x, var_0.d.x, true, true), !vec4<bool>(var_0.b.x, var_0.b.x, false, false), Struct_5(Struct_4(var_0, Struct_3(var_0.b.xy, Struct_2(vec2<i32>(2147483647i, -1i), vec3<f32>(1000f, var_0.e, var_0.e), Struct_1(var_1.yxw, var_0.b, vec3<u32>(4294967295u, var_1.x, u_input.a.x), var_0.d, var_0.e), Struct_1(vec3<u32>(13722u, 0u, 1u), var_0.b, vec3<u32>(1941u, u_input.b, u_input.b), var_0.b.yy, -1099f), vec3<f32>(-1514f, 1663f, 432f)), vec4<i32>(-1i, -21507i, i32(-2147483648), 11616i), var_0.b.x), Struct_2(vec2<i32>(i32(-2147483648), -4045i), vec3<f32>(1641f, 154f, -487f), var_0, var_0, vec3<f32>(133f, var_0.e, -226f)), vec3<f32>(1982f, var_0.e, var_0.e)))).d.x, func_5(func_4(vec4<bool>(var_0.b.x, true, false, false)), !vec4<bool>(true, true, true, var_0.d.x), vec4<bool>(var_0.d.x, var_0.b.x, true, true), Struct_5(Struct_4(var_0, Struct_3(var_0.b.zy, Struct_2(vec2<i32>(-13703i, i32(-2147483648)), vec3<f32>(-702f, var_0.e, var_0.e), var_0, var_0, vec3<f32>(169f, var_0.e, 346f)), vec4<i32>(i32(-2147483648), 2147483647i, -18821i, 29717i), false), Struct_2(vec2<i32>(1i, 0i), vec3<f32>(var_0.e, var_0.e, -1379f), var_0, Struct_1(vec3<u32>(14280u, var_1.x, var_1.x), var_0.b, var_1.www, var_0.d, -2010f), vec3<f32>(var_0.e, var_0.e, -600f)), vec3<f32>(1478f, var_0.e, var_0.e)))).d.x)), !(!((var_0.d.x == true) && false)));
    let var_3 = vec3<bool>(var_0.b.x, var_2.x, !var_2.x);
    var_2 = func_2(any(var_0.b.yx) || false, func_2((abs(1i) / -(-12578i)) < (-4419i / ~(-1i)), any(!select(vec4<bool>(var_2.x, var_0.b.x, true, false), vec4<bool>(false, var_3.x, true, var_2.x), true)), Struct_4(func_5(Struct_3(var_2.xw, Struct_2(vec2<i32>(-1i, -5878i), vec3<f32>(-885f, var_0.e, var_0.e), var_0, Struct_1(u_input.a.xyz, vec3<bool>(true, false, true), vec3<u32>(21781u, var_1.x, 13758u), var_2.xz, 1636f), vec3<f32>(var_0.e, var_0.e, 1081f)), vec4<i32>(2147483647i, 24545i, -8774i, 0i), var_3.x), select(vec4<bool>(false, true, false, var_2.x), vec4<bool>(var_3.x, false, var_0.d.x, true), var_0.b.x), vec4<bool>(var_0.b.x, var_0.b.x, false, false), Struct_5(Struct_4(var_0, Struct_3(var_2.wz, Struct_2(vec2<i32>(2147483647i, -1i), vec3<f32>(-277f, -717f, 131f), Struct_1(var_1.wzy, vec3<bool>(true, var_0.b.x, true), var_1.ywy, var_2.wy, var_0.e), var_0, vec3<f32>(-1380f, var_0.e, -199f)), vec4<i32>(40989i, 46366i, 1i, -20733i), false), Struct_2(vec2<i32>(6789i, -3438i), vec3<f32>(var_0.e, -512f, var_0.e), Struct_1(vec3<u32>(u_input.a.x, 0u, var_1.x), vec3<bool>(var_0.b.x, var_0.b.x, false), vec3<u32>(1u, var_1.x, 4294967295u), vec2<bool>(true, var_2.x), 2294f), var_0, vec3<f32>(var_0.e, 1410f, 1396f)), vec3<f32>(-1000f, var_0.e, var_0.e)))), func_4(vec4<bool>(var_2.x, false, false, true)), Struct_2(min(vec2<i32>(-1756i, 2147483647i), vec2<i32>(-4251i, 38615i)), vec3<f32>(-980f, -1000f, -1251f), Struct_1(u_input.a.wzw, vec3<bool>(true, false, false), u_input.a.yyz, var_0.b.xy, -184f), Struct_1(var_1.xzx, var_2.zyy, u_input.a.zwy, var_3.zx, var_0.e), func_4(vec4<bool>(true, var_0.d.x, false, true)).b.e), -vec3<f32>(var_0.e, -1721f, var_0.e) * vec3<f32>(var_0.e, 1928f, 348f))).x, Struct_4(Struct_1(func_5(func_4(vec4<bool>(false, var_0.d.x, false, false)), !vec4<bool>(var_0.b.x, true, true, false), vec4<bool>(false, true, false, var_0.b.x), Struct_5(Struct_4(Struct_1(var_0.a, var_3, vec3<u32>(1u, u_input.a.x, 0u), var_2.wz, 538f), Struct_3(var_0.b.zy, Struct_2(vec2<i32>(-13477i, -1i), vec3<f32>(var_0.e, 356f, var_0.e), Struct_1(vec3<u32>(66989u, u_input.a.x, 0u), var_2.zwz, vec3<u32>(var_0.c.x, 5600u, u_input.a.x), vec2<bool>(var_3.x, var_3.x), 1146f), var_0, vec3<f32>(var_0.e, var_0.e, -1943f)), vec4<i32>(8791i, 9776i, 0i, -48294i), false), Struct_2(vec2<i32>(-54588i, 0i), vec3<f32>(1011f, var_0.e, var_0.e), var_0, Struct_1(vec3<u32>(26507u, var_1.x, 76120u), var_2.yxw, vec3<u32>(var_1.x, 14448u, 38717u), var_2.wx, var_0.e), vec3<f32>(var_0.e, 500f, -2223f)), vec3<f32>(var_0.e, var_0.e, var_0.e)))).a, select(var_2.xww, vec3<bool>(false, var_0.b.x, false), var_3.x), vec3<u32>(dot(u_input.a, vec4<u32>(var_1.x, 1u, u_input.b, 1u)), ~0u, ~69322u), vec2<bool>(var_2.x, !false), -var_0.e), func_4(func_2(all(var_3), false, Struct_4(var_0, Struct_3(var_3.yx, Struct_2(vec2<i32>(-5264i, -18555i), vec3<f32>(-125f, -1246f, var_0.e), var_0, Struct_1(vec3<u32>(var_1.x, var_1.x, 156u), vec3<bool>(var_0.b.x, false, var_0.d.x), u_input.a.yxw, vec2<bool>(false, var_0.d.x), 384f), vec3<f32>(236f, 1106f, var_0.e)), vec4<i32>(2147483647i, 1i, 0i, 60433i), var_2.x), Struct_2(vec2<i32>(31349i, -1i), vec3<f32>(var_0.e, 1000f, -1234f), var_0, var_0, vec3<f32>(var_0.e, var_0.e, -490f)), vec3<f32>(735f, var_0.e, 1374f)))), func_4(!select(vec4<bool>(false, true, var_2.x, var_3.x), vec4<bool>(var_2.x, var_0.d.x, var_0.b.x, var_0.d.x), vec4<bool>(var_2.x, var_3.x, var_0.b.x, false))).b, trunc(-(vec3<f32>(-1509f, var_0.e, 1855f) + vec3<f32>(var_0.e, -864f, var_0.e)))));
    let var_4 = vec3<u32>(firstLeadingBit(~(u_input.a.x * dot(vec2<u32>(58817u, u_input.a.x), u_input.a.xy))), u_input.a.x, 1241u);
    let var_5 = vec3<i32>(-52562i, ~clamp(~(-(-1i)), dot(min(vec3<i32>(25643i, -1i, -27792i), vec3<i32>(4138i, 1i, 3557i)), vec3<i32>(1i, 1i, -23715i)), abs(max(1i, -1i))), ~1i);
    let var_6 = ~(~(-var_5 << firstTrailingBit(u_input.a.wzx)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(~(2147483647i * -9488i), ~(-3322i << var_1.x)), vec3<f32>(step(var_0.e, var_0.e), -step(func_5(Struct_3(vec2<bool>(true, true), Struct_2(var_6.xz, vec3<f32>(201f, 924f, -127f), var_0, Struct_1(vec3<u32>(u_input.a.x, 76680u, 0u), var_2.yyw, vec3<u32>(4294967295u, 9645u, var_1.x), vec2<bool>(false, false), var_0.e), vec3<f32>(var_0.e, 252f, var_0.e)), vec4<i32>(var_6.x, var_6.x, var_5.x, var_5.x), true), vec4<bool>(true, var_3.x, var_0.d.x, false), vec4<bool>(var_0.b.x, false, false, var_0.b.x), Struct_5(Struct_4(var_0, Struct_3(var_3.yx, Struct_2(vec2<i32>(var_5.x, var_5.x), vec3<f32>(var_0.e, -400f, 270f), var_0, Struct_1(vec3<u32>(var_4.x, 42065u, 19704u), vec3<bool>(var_2.x, true, var_3.x), var_0.a, vec2<bool>(var_3.x, false), var_0.e), vec3<f32>(441f, var_0.e, var_0.e)), vec4<i32>(-1i, var_6.x, var_6.x, -24199i), false), Struct_2(var_6.yx, vec3<f32>(var_0.e, 352f, -206f), var_0, var_0, vec3<f32>(var_0.e, var_0.e, var_0.e)), vec3<f32>(723f, var_0.e, -1000f)))).e, var_0.e), var_0.e));
}

