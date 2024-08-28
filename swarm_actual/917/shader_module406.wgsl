// {"0:0":[54,187,77,126,56,100,214,191,251,145,130,135,76,115,124,73,19,108,201,157,63,248,21,208]}
// Seed: 15650489415882893758

struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: f32,
    d: vec2<bool>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: vec4<i32>, arg_1: vec4<f32>) -> vec3<bool> {
    let var_0 = 0i;
    let var_1 = vec4<bool>((2027f <= -arg_1.x) | all(vec3<bool>(false, any(vec3<bool>(false, false, false)), false)), true, false, !(!false));
    var var_2 = Struct_2(Struct_1(-(-arg_0) & firstTrailingBit(clamp(arg_0, arg_0, arg_0)), ((vec2<i32>(25914i, 1668i) | vec2<i32>(6134i, 36403i)) * (arg_0.yy << vec2<u32>(u_input.b, u_input.a))) ^ ((u_input.d << vec2<u32>(u_input.b, u_input.a)) << (vec2<u32>(1u, 60191u) ^ vec2<u32>(43980u, 0u))), max(vec3<i32>(firstTrailingBit(u_input.d.x), abs(arg_0.x), var_0 * u_input.c), arg_0.yww << ~vec3<u32>(0u, u_input.b, u_input.a)), arg_1.x, u_input.a), -arg_1.zzx, -947f, var_1.xx, select(select(vec4<bool>(true, !false, 971f > arg_1.x, var_1.x), !(!vec4<bool>(var_1.x, false, var_1.x, var_1.x)), vec4<bool>(var_1.x, any(vec3<bool>(true, false, true)), false, -1161f >= -394f)), vec4<bool>(var_1.x, false, var_1.x | var_1.x, true), var_1.x));
    let var_3 = var_2.e.x;
    var var_4 = select(select(!(!(!var_2.e.yx)), var_1.yw, var_1.x), var_1.wx, var_2.e.ww);
    return var_2.e.xzw;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<i32>, arg_2: vec3<bool>, arg_3: Struct_1) -> f32 {
    let var_0 = -(arg_3.c << (vec3<u32>(55570u, u_input.a, 0u) | (vec3<u32>(arg_3.e, arg_3.e, 65535u) - vec3<u32>(1u, arg_3.e, 50458u)))) << vec3<u32>(dot(vec3<u32>(u_input.b, ~arg_3.e, 19235u * u_input.a), firstTrailingBit(vec3<u32>(arg_3.e, 0u, 20740u) % vec3<u32>(arg_3.e, 4294967295u, 4294967295u))), firstTrailingBit(~arg_3.e), 1u);
    let var_1 = Struct_3(Struct_2(Struct_1(select(-arg_3.a, clamp(vec4<i32>(var_0.x, 7079i, 1i, 13446i), arg_3.a, arg_3.a), false), firstLeadingBit(~u_input.d), var_0, arg_3.d, firstTrailingBit(u_input.b)), -max(vec3<f32>(arg_3.d, -1560f, arg_3.d), vec3<f32>(arg_3.d, arg_3.d, arg_3.d)) + floor(vec3<f32>(arg_3.d, arg_3.d, arg_3.d)), (arg_3.d + (-1557f * arg_3.d)) - arg_3.d, func_3((arg_1 - vec4<i32>(arg_1.x, arg_3.c.x, u_input.d.x, arg_3.a.x)) ^ (arg_3.a + vec4<i32>(-1i, 2147483647i, 25735i, arg_3.a.x)), max(sign(vec4<f32>(673f, -626f, -466f, arg_3.d)), vec4<f32>(arg_3.d, -606f, arg_3.d, -154f))).xz, arg_0), arg_3, max(~abs(select(vec4<u32>(1u, 32927u, 54695u, u_input.b), vec4<u32>(4294967295u, arg_3.e, 154u, 4294967295u), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true))), abs((vec4<u32>(u_input.b, 1u, u_input.b, arg_3.e) >> vec4<u32>(arg_3.e, u_input.b, u_input.b, 20578u)) << ~vec4<u32>(u_input.b, arg_3.e, u_input.b, arg_3.e))), Struct_1(reverseBits((arg_1 - arg_1) << (vec4<u32>(arg_3.e, arg_3.e, u_input.a, 4900u) >> vec4<u32>(0u, arg_3.e, 4294967295u, u_input.b))), abs(vec2<i32>(firstTrailingBit(22726i), -u_input.d.x)), vec3<i32>(firstTrailingBit(arg_1.x), select(32179i, -1i ^ 822i, select(false, false, true)), -max(-56742i, -39629i)), arg_3.d, 0u), Struct_2(arg_3, floor(-vec3<f32>(1363f, arg_3.d, 469f) - (vec3<f32>(arg_3.d, 1000f, 262f) + vec3<f32>(-240f, 509f, -854f))), arg_3.d / max(arg_3.d, arg_3.d), arg_2.yx, arg_0));
    let var_2 = select(vec4<bool>(var_1.e.e.x, false || arg_0.x, arg_2.x, true), select(!vec4<bool>(!arg_0.x, var_1.e.e.x, false, false), !(!(!arg_0)), all(arg_0.xwz)), !(!(!(!arg_0))));
    var var_3 = firstTrailingBit(var_1.c.xy);
    var var_4 = Struct_3(var_1.e, var_1.b, vec4<u32>(4294967295u, var_3.x, dot(var_1.c.xzz, vec3<u32>(47647u / var_3.x, ~u_input.a, arg_3.e)), dot(var_1.c.zx, vec2<u32>(arg_3.e + 1u, 27102u))), var_1.b, var_1.e);
    return var_1.a.b.x;
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    let var_0 = arg_0.a.b.x;
    var var_1 = 2147483647i;
    var var_2 = func_4(!arg_0.e, vec4<i32>(arg_0.a.a.x, u_input.d.x, -15762i, reverseBits(-12860i) - min(-1i, dot(vec2<i32>(var_0, i32(-2147483648)), vec2<i32>(16781i, u_input.d.x)))), func_3(~(~arg_0.a.a), -(vec4<f32>(700f, 632f, 1081f, -1268f) - vec4<f32>(496f, arg_0.b.x, arg_0.b.x, arg_0.c)) / min(vec4<f32>(-1107f, 125f, -759f, arg_0.c) + vec4<f32>(1821f, arg_0.b.x, -1390f, 277f), vec4<f32>(arg_0.b.x, arg_0.a.d, 860f, arg_0.c) + vec4<f32>(-464f, 123f, arg_0.c, 657f))), Struct_1(-countOneBits(vec4<i32>(-13512i, u_input.c, arg_0.a.b.x, u_input.d.x)), vec2<i32>(~var_0, ~(u_input.d.x - var_0)), arg_0.a.c | -arg_0.a.a.wzw, -587f, ~5489u / (dot(vec3<u32>(1u, arg_0.a.e, 0u), vec3<u32>(4294967295u, arg_0.a.e, 1u)) << (arg_0.a.e + arg_0.a.e))));
    let var_3 = arg_0.d.x;
    var_1 = ~min(24538i << u_input.b, abs(-var_0 - -u_input.c));
    return Struct_1(arg_0.a.a, clamp(~select(vec2<i32>(u_input.d.x, u_input.d.x), vec2<i32>(var_0, 1i) | u_input.d, func_3(arg_0.a.a, vec4<f32>(arg_0.b.x, 829f, -2001f, arg_0.c)).yz), arg_0.a.a.zz, vec2<i32>(max(arg_0.a.b.x, -3239i) & 32381i, 0i)), abs(reverseBits(arg_0.a.a.xyx ^ vec3<i32>(u_input.c, 29404i, arg_0.a.c.x))), -(2000f + min(436f, -1000f)), ~min(arg_0.a.e, u_input.b / u_input.a));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = Struct_2(func_2(arg_2.a), vec3<f32>(-(-min(-831f, 236f)), arg_3.d, exp2(-arg_1.d)), -round((arg_2.b.d * arg_2.b.d) + (387f * 460f)), func_3(vec4<i32>(dot(vec4<i32>(arg_2.b.c.x, -1i, 22831i, u_input.d.x), -arg_1.a), arg_1.a.x, dot(func_2(arg_2.e).a, countOneBits(vec4<i32>(u_input.c, -32034i, arg_2.d.c.x, 1i))), -(11546i - 1i)), vec4<f32>(-(-(-781f)), arg_3.d, 874f, arg_1.d + (-1000f - -1268f))).yx, arg_2.e.e);
    var var_1 = 0i;
    let var_2 = -arg_1.a.x;
    var var_3 = (var_0.c - var_0.c) <= (arg_2.e.a.d + arg_2.d.d);
    let var_4 = -1i / countOneBits(0i);
    return arg_2.e.e.zx;
}

fn func_6(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = vec2<f32>(arg_0.a.d, -158f);
    let var_1 = Struct_3(arg_0, Struct_1(vec4<i32>(arg_2.x, 14397i, -17522i, abs(~u_input.c)), arg_2, reverseBits(vec3<i32>(arg_0.a.c.x / -25839i, firstLeadingBit(1i), u_input.c | arg_0.a.b.x)), (729f - (arg_0.b.x / arg_0.a.d)) * max(arg_0.b.x, func_4(vec4<bool>(arg_0.d.x, true, false, false), vec4<i32>(arg_2.x, arg_2.x, 47442i, -10224i), arg_0.e.wxx, Struct_1(arg_0.a.a, arg_2, arg_0.a.c, var_0.x, 24426u))), (dot(vec4<u32>(arg_1.x, u_input.a, arg_0.a.e, 1u), vec4<u32>(arg_1.x, arg_1.x, arg_1.x, arg_0.a.e)) ^ clamp(arg_1.x, arg_1.x, 1u)) - ((arg_1.x % 36645u) | (u_input.a * arg_0.a.e))), vec4<u32>(abs(~41563u), ~clamp(~arg_0.a.e, arg_0.a.e >> u_input.b, firstLeadingBit(arg_1.x)), arg_1.x, firstLeadingBit(~u_input.a >> 20109u)), func_2(Struct_2(func_2(Struct_2(Struct_1(arg_0.a.a, vec2<i32>(-1i, arg_0.a.c.x), arg_0.a.a.wzy, var_0.x, 1u), vec3<f32>(-1585f, 1265f, var_0.x), -1203f, vec2<bool>(true, true), vec4<bool>(arg_0.e.x, false, arg_0.d.x, false))), -(-arg_0.b), 1277f / step(arg_0.a.d, -114f), arg_0.d, arg_0.e)), arg_0);
    let var_2 = Struct_2(arg_0.a, -(arg_0.b * var_1.a.b), -(-var_0.x), func_5(~(arg_1 << (vec4<u32>(4294967295u, 1u, arg_1.x, u_input.a) & vec4<u32>(10794u, 10476u, 20366u, var_1.b.e))), Struct_1(vec4<i32>(u_input.d.x, arg_0.a.c.x, 2147483647i, dot(vec4<i32>(u_input.d.x, 41671i, u_input.c, var_1.a.a.c.x), vec4<i32>(arg_2.x, u_input.d.x, 1i, 1i))), abs(var_1.e.a.b), arg_0.a.a.zyy, var_0.x, dot(vec4<u32>(var_1.e.a.e, var_1.e.a.e, 18786u, 0u), arg_1) - func_2(arg_0).e), var_1, Struct_1((vec4<i32>(-41380i, var_1.a.a.c.x, u_input.d.x, arg_2.x) * var_1.e.a.a) - var_1.e.a.a, -vec2<i32>(1i, 31483i), func_2(arg_0).c, -1105f, 0u)), select(var_1.e.e, vec4<bool>(arg_0.d.x, select(var_1.e.d.x || arg_0.d.x, arg_0.d.x, true), !false, true), vec4<bool>(arg_0.a.e != dot(arg_1.wxx, arg_1.wzy), -var_0.x < ceil(arg_0.b.x), var_1.e.d.x, var_1.d.e >= (25992u % arg_1.x))));
    var var_3 = min((-select(-1132f, -1055f, true) * arg_0.b.x) - (var_0.x + var_2.a.d), -var_2.b.x);
    var_3 = var_0.x;
    return arg_0.a;
}

fn func_7(arg_0: Struct_1) -> StorageBuffer {
    var var_0 = arg_0.e;
    let var_1 = ~(~(vec3<u32>(0u - u_input.b, u_input.b, ~1u) * vec3<u32>(u_input.b, 1u, ~4294967295u)));
    let var_2 = true;
    let var_3 = Struct_1(vec4<i32>(0i, ~73i, abs(arg_0.b.x), countOneBits(dot(~vec2<i32>(arg_0.b.x, arg_0.c.x), arg_0.a.wz))), -(-vec2<i32>(arg_0.c.x, arg_0.c.x)) << ~select(var_1.xx ^ var_1.zz, ~var_1.yy, vec2<bool>(true, var_2)), max(vec3<i32>(countOneBits(u_input.c) >> 49822u, -18813i, ~(-1i)), arg_0.a.xwz >> ~var_1), min(arg_0.d / 497f, -108f), dot(~min(~vec4<u32>(arg_0.e, 1u, u_input.a, arg_0.e), ~vec4<u32>(u_input.a, arg_0.e, u_input.a, 32247u)), ~(vec4<u32>(u_input.b, u_input.a, var_1.x, 4294967295u) & vec4<u32>(946u, 50069u, var_1.x, 0u)) >> vec4<u32>(u_input.a ^ arg_0.e, ~53907u, u_input.a, 49225u ^ arg_0.e)));
    let var_4 = Struct_2(arg_0, round(step((vec3<f32>(370f, arg_0.d, arg_0.d) - vec3<f32>(1354f, var_3.d, -704f)) - -vec3<f32>(var_3.d, -600f, arg_0.d), (vec3<f32>(-1289f, -2176f, var_3.d) / vec3<f32>(var_3.d, var_3.d, var_3.d)) / floor(vec3<f32>(arg_0.d, -200f, var_3.d)))), arg_0.d, vec2<bool>(!(var_2 && (arg_0.d <= -924f)), var_2), select(vec4<bool>(!(2147483647i == u_input.c), var_2, var_2, func_3(vec4<i32>(var_3.a.x, -42225i, -9729i, -23170i) % vec4<i32>(-1i, 29520i, -57314i, u_input.c), vec4<f32>(arg_0.d, var_3.d, var_3.d, -209f)).x), !select(vec4<bool>(true, true, true, var_2), !vec4<bool>(var_2, var_2, true, false), !vec4<bool>(true, var_2, var_2, true)), !(!(!vec4<bool>(true, false, true, var_2)))));
    return StorageBuffer(~vec4<u32>(65631u, var_3.e, var_4.a.e, ~min(u_input.b, var_4.a.e)), clamp(select(~min(vec4<u32>(var_3.e, var_3.e, 0u, var_1.x), vec4<u32>(arg_0.e, var_4.a.e, var_3.e, var_3.e)), vec4<u32>(var_1.x, 0u, u_input.a, 54477u) / (vec4<u32>(0u, u_input.a, u_input.b, u_input.a) / vec4<u32>(1u, u_input.a, 0u, 8810u)), !(!var_4.e)), vec4<u32>(0u / var_4.a.e, 5995u, var_4.a.e, var_1.x), ((vec4<u32>(var_3.e, u_input.a, u_input.a, var_3.e) << vec4<u32>(1u, var_1.x, arg_0.e, u_input.a)) - (vec4<u32>(9713u, 12952u, 1u, var_1.x) - vec4<u32>(0u, var_3.e, 9778u, arg_0.e))) >> (select(vec4<u32>(var_3.e, arg_0.e, 35712u, 1u), vec4<u32>(var_4.a.e, 1u, arg_0.e, var_1.x), var_2) & firstLeadingBit(vec4<u32>(4294967295u, var_3.e, var_4.a.e, 82546u)))), -(-535f / (var_4.b.x / -345f)));
}

fn func_1(arg_0: vec4<f32>) -> StorageBuffer {
    return func_7(func_6(Struct_2(Struct_1(reverseBits(vec4<i32>(u_input.c, 42958i, u_input.d.x, u_input.d.x)), vec2<i32>(u_input.c, -27401i) ^ vec2<i32>(-32923i, 2147483647i), ~vec3<i32>(22291i, u_input.c, u_input.d.x), arg_0.x - arg_0.x, u_input.a), arg_0.zzw, -(-2393f) * exp2(arg_0.x), func_5(vec4<u32>(31326u, u_input.a, 1u, 84607u), func_2(Struct_2(Struct_1(vec4<i32>(3106i, u_input.d.x, 1i, 2147483647i), vec2<i32>(-12954i, -1i), vec3<i32>(0i, u_input.d.x, u_input.d.x), -615f, u_input.b), vec3<f32>(-2232f, arg_0.x, 1000f), arg_0.x, vec2<bool>(true, false), vec4<bool>(true, true, true, true))), Struct_3(Struct_2(Struct_1(vec4<i32>(18196i, i32(-2147483648), u_input.d.x, u_input.d.x), vec2<i32>(u_input.d.x, u_input.c), vec3<i32>(1i, u_input.c, i32(-2147483648)), arg_0.x, 16717u), arg_0.zzy, -499f, vec2<bool>(false, false), vec4<bool>(false, false, false, true)), Struct_1(vec4<i32>(2147483647i, u_input.d.x, u_input.d.x, i32(-2147483648)), u_input.d, vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x), arg_0.x, u_input.b), vec4<u32>(u_input.a, u_input.a, 15983u, 0u), Struct_1(vec4<i32>(0i, 37604i, u_input.d.x, u_input.d.x), u_input.d, vec3<i32>(u_input.c, u_input.c, 37696i), -610f, u_input.a), Struct_2(Struct_1(vec4<i32>(1i, u_input.c, u_input.d.x, u_input.c), vec2<i32>(63368i, u_input.d.x), vec3<i32>(46113i, u_input.d.x, u_input.c), 935f, u_input.a), arg_0.ywy, arg_0.x, vec2<bool>(false, false), vec4<bool>(false, false, false, true))), func_2(Struct_2(Struct_1(vec4<i32>(60021i, 21990i, i32(-2147483648), u_input.c), u_input.d, vec3<i32>(i32(-2147483648), 2147483647i, u_input.c), 1303f, 4294967295u), arg_0.xxw, arg_0.x, vec2<bool>(true, true), vec4<bool>(true, false, false, true)))), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false))), (~vec4<u32>(u_input.b, u_input.a, u_input.a, 4246u) / select(vec4<u32>(7470u, 28674u, u_input.b, u_input.b), vec4<u32>(u_input.a, u_input.b, 16697u, u_input.b), vec4<bool>(false, true, false, false))) % vec4<u32>(~1u, ~u_input.b, u_input.b ^ 0u, reverseBits(u_input.a)), select(vec2<i32>(1i, u_input.c), u_input.d, vec2<bool>(!true, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(((vec4<f32>(1051f, -1806f, -497f, -1669f) + -vec4<f32>(-138f, 730f, 221f, -222f)) * -(vec4<f32>(-380f, 522f, 334f, -253f) - vec4<f32>(965f, -791f, -777f, -458f))) + exp2(vec4<f32>(-1000f + -469f, -719f * -800f, 119f, max(1365f, -555f))));
}

