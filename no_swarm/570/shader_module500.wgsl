// {"0:0":[238,125,228,235,152,82,221,35,165,252,107,1,41,10,20,85,3,221,60,32,57,51,133,209,65,30,149,151,169,190,176,39]}
// Seed: 14182635807461647421

struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30>;

var<private> global1: vec3<i32>;

fn func_3(arg_0: i32, arg_1: u32) -> vec2<bool> {
    let var_0 = true;
    global0 = array<Struct_2, 30>();
    let var_1 = Struct_1(max((~vec3<u32>(u_input.b, 0u, arg_1) / (vec3<u32>(u_input.d, arg_1, 7393u) & vec3<u32>(arg_1, 68637u, 2675u))) >> firstLeadingBit(vec3<u32>(1u, 5614u, arg_1) | vec3<u32>(arg_1, 0u, arg_1)), countOneBits(firstLeadingBit(vec3<u32>(u_input.a, u_input.a, 1u))) | (~vec3<u32>(arg_1, 92064u, arg_1) << vec3<u32>(u_input.a, arg_1, arg_1))), global1.zx, arg_1, select(u_input.d, ~(~arg_1 % (34694u & 34653u)), !(!true)), -1187f >= (round(exp2(1083f)) * step(exp2(-949f), -194f)));
    var var_2 = Struct_2(~select(max(var_1.d, arg_1), var_1.a.x, all(vec4<bool>(false, var_0, var_0, false))) >> (u_input.a + dot(~vec2<u32>(u_input.b, u_input.a), max(var_1.a.xx, vec2<u32>(4294967295u, u_input.d)))), arg_1 * ~var_1.a.x, -max(-312f / -1153f, 1398f / -804f) + abs(-(-1013f + 1769f)));
    global0 = array<Struct_2, 30>();
    return vec2<bool>(any(!(!vec4<bool>(var_1.e, true, var_1.e, var_1.e))), select(14580u < dot(var_1.a.zz & vec2<u32>(0u, var_1.c), var_1.a.zy * var_1.a.yy), any(select(!vec4<bool>(var_1.e, false, true, true), vec4<bool>(true, var_1.e, true, var_1.e), true)), !select(var_1.e, true, var_0) || (var_1.b.x <= -6465i)));
}

fn func_2(arg_0: Struct_1) -> Struct_3 {
    let var_0 = 615f - (-895f - 1958f);
    let var_1 = arg_0;
    global0 = array<Struct_2, 30>();
    let var_2 = select(select(select(select(vec2<bool>(var_1.e, arg_0.e), select(vec2<bool>(var_1.e, false), vec2<bool>(false, var_1.e), vec2<bool>(arg_0.e, var_1.e)), var_1.e & arg_0.e), !select(vec2<bool>(var_1.e, false), vec2<bool>(false, var_1.e), false), select(vec2<bool>(var_1.e, true), vec2<bool>(var_1.e, false), all(vec3<bool>(true, arg_0.e, false)))), select(!func_3(-12597i, 72709u), vec2<bool>(var_1.e, false), !(arg_0.b.x > var_1.b.x)), (var_0 <= -var_0) && ((global1.x <= 2147483647i) || true)), func_3(dot(u_input.c >> vec3<u32>(22459u, 6838u, 18265u), abs(-u_input.c)), ~(var_1.c / 93298u) ^ ~var_1.a.x), !var_1.e);
    global0 = array<Struct_2, 30>();
    return Struct_3(arg_0, var_1, arg_0, -ceil(376f) / var_0);
}

fn func_4(arg_0: vec3<f32>, arg_1: f32, arg_2: vec2<u32>, arg_3: Struct_3) -> Struct_1 {
    global0 = array<Struct_2, 30>();
    var var_0 = arg_3;
    var var_1 = var_0.c.e;
    global1 = vec3<i32>(firstLeadingBit(~37007i) ^ (arg_3.b.b.x + arg_3.b.b.x), 998i, global1.x);
    let var_2 = Struct_1(vec3<u32>(dot(arg_3.c.a.xy << (vec2<u32>(4294967295u, u_input.a) / vec2<u32>(arg_2.x, 3355u)), arg_2), ~(~var_0.a.a.x) % var_0.a.d, ~dot(~arg_2, vec2<u32>(1u, var_0.b.c))), select(-global1.zy << ~(~vec2<u32>(arg_3.b.c, 4294967295u)), max(vec2<i32>(-8721i % arg_3.c.b.x, firstTrailingBit(-1i)), arg_3.a.b), !(!(!vec2<bool>(true, var_0.a.e)))), ~3070u, countOneBits(firstTrailingBit(~arg_2.x)), true);
    return Struct_1(abs(reverseBits(vec3<u32>(u_input.a >> arg_3.b.a.x, firstTrailingBit(1u), u_input.b))), ~var_2.b, ~(arg_2.x >> (~4294967295u << countOneBits(var_0.c.a.x))), u_input.b, false | (77769u == var_0.c.d));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec2<u32>) -> Struct_2 {
    var var_0 = select(vec4<i32>(0i, 0i | func_2(func_4(vec3<f32>(arg_1.d, 1212f, arg_0.d), -1171f, vec2<u32>(arg_0.b.a.x, 9540u), arg_0)).a.b.x, arg_1.b.b.x, (u_input.c.x ^ (arg_1.a.b.x / u_input.c.x)) / ~(1i ^ 1i)), -(-select(vec4<i32>(-66472i, arg_1.a.b.x, u_input.c.x, arg_1.a.b.x), vec4<i32>(12097i, -1i, u_input.c.x, global1.x), vec4<bool>(true, true, arg_0.b.e, arg_1.c.e)) - vec4<i32>(2147483647i, 4041i, clamp(global1.x, 1i, global1.x), func_2(arg_0.a).a.b.x)), !select(!(!vec4<bool>(true, false, true, true)), vec4<bool>(true || arg_1.a.e, false, true, arg_1.b.e), select(!vec4<bool>(false, arg_1.b.e, true, arg_0.a.e), !vec4<bool>(true, true, arg_1.a.e, true), func_2(Struct_1(arg_1.a.a, arg_1.a.b, 89215u, 0u, arg_1.b.e)).b.e)));
    return global0[arg_1.b.a.x];
}

fn func_6(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: bool) -> vec2<bool> {
    global1 = u_input.c;
    var var_0 = -(~dot(u_input.c.xx, u_input.c.yz));
    let var_1 = -arg_1.zz;
    let var_2 = Struct_3(func_4(min(-step(arg_1, vec3<f32>(-918f, -648f, 1135f)), -vec3<f32>(-1000f, 1017f, -433f)), arg_2.c, countOneBits(~reverseBits(vec2<u32>(u_input.d, 4294967295u))), func_2(func_4(arg_1 * vec3<f32>(var_1.x, -478f, 231f), -1335f, vec2<u32>(12800u, arg_2.b), func_2(Struct_1(vec3<u32>(arg_2.b, arg_2.b, u_input.b), vec2<i32>(u_input.c.x, u_input.c.x), 72946u, 6344u, true))))), Struct_1(~firstTrailingBit(~vec3<u32>(4294967295u, 4294967295u, arg_2.b)), firstLeadingBit(countOneBits(-u_input.c.yy)), 29709u, func_4(abs(vec3<f32>(-710f, arg_1.x, -770f)), -(-192f), ~(~vec2<u32>(0u, u_input.b)), Struct_3(Struct_1(vec3<u32>(arg_2.b, u_input.d, 19178u), u_input.c.xz, 40446u, u_input.a, true), func_4(vec3<f32>(arg_1.x, -1000f, 231f), arg_2.c, vec2<u32>(arg_2.b, 24120u), Struct_3(Struct_1(vec3<u32>(4294967295u, arg_2.a, 1u), global1.zy, 57157u, u_input.d, arg_0.x), Struct_1(vec3<u32>(1u, 35891u, 24505u), global1.xy, arg_2.a, u_input.b, true), Struct_1(vec3<u32>(0u, u_input.b, 4294967295u), u_input.c.xx, 1801u, 42636u, arg_3), arg_2.c)), func_2(Struct_1(vec3<u32>(arg_2.b, 4294967295u, 8775u), vec2<i32>(u_input.c.x, -30461i), u_input.a, 4294967295u, true)).b, -818f)).d, !false), Struct_1(~(vec3<u32>(arg_2.a, u_input.d, u_input.d) | vec3<u32>(0u, arg_2.a, 4294967295u)) >> (vec3<u32>(0u, 11255u, u_input.d) | select(vec3<u32>(13558u, 25096u, 1265u), vec3<u32>(1u, 0u, 1u), arg_0.zwx)), vec2<i32>(-8467i, select(5330i, 35017i, false) ^ (global1.x >> 42000u)), ~(~(arg_2.a << u_input.a)), u_input.b, func_4(floor(round(arg_1)), arg_1.x, clamp(vec2<u32>(arg_2.a, 12248u), vec2<u32>(90741u, u_input.b), vec2<u32>(0u, arg_2.a)) - vec2<u32>(arg_2.b, 2957u), Struct_3(func_2(Struct_1(vec3<u32>(u_input.b, 10070u, arg_2.a), global1.yy, arg_2.a, 46010u, false)).b, Struct_1(vec3<u32>(4294967295u, u_input.d, 4562u), vec2<i32>(i32(-2147483648), 1i), 36686u, u_input.b, false), Struct_1(vec3<u32>(13284u, arg_2.b, arg_2.b), u_input.c.yz, arg_2.b, 67337u, false), arg_1.x - var_1.x)).e), -arg_2.c);
    global1 = vec3<i32>(firstTrailingBit(-30998i), -1i, 0i) / countOneBits(clamp(u_input.c, min(reverseBits(vec3<i32>(-87443i, 6633i, 0i)), vec3<i32>(0i, -3225i, u_input.c.x)), vec3<i32>(u_input.c.x >> var_2.c.d, -46844i - global1.x, ~var_2.c.b.x)));
    return vec2<bool>(any(select(vec2<bool>(any(arg_0.zy), true & arg_3), arg_0.zz, false)), !any(arg_0.yz));
}

fn func_1() -> StorageBuffer {
    global0 = array<Struct_2, 30>();
    let var_0 = vec4<f32>(1000f, 621f, -2503f, step(-(-(-1000f + 1202f)), -(1000f / -1562f)));
    var var_1 = var_0.x;
    var var_2 = func_6(!vec4<bool>(true, true, !(!false), false), var_0.wxz, func_5(Struct_3(Struct_1(vec3<u32>(u_input.d, 45255u, u_input.b), vec2<i32>(i32(-2147483648), -44002i), 0u, max(15983u, 57103u), !true), Struct_1(vec3<u32>(4294967295u, u_input.a, 4154u) + vec3<u32>(1u, 4735u, 4294967295u), countOneBits(u_input.c.zy), firstTrailingBit(u_input.d), ~45233u, 4294967295u > u_input.d), func_4(-vec3<f32>(var_0.x, var_0.x, var_0.x), step(var_0.x, var_0.x), vec2<u32>(1u, 37559u) + vec2<u32>(u_input.b, u_input.b), func_2(Struct_1(vec3<u32>(u_input.d, u_input.d, 0u), vec2<i32>(28642i, global1.x), u_input.d, 0u, true))), abs(160f)), Struct_3(Struct_1(~vec3<u32>(u_input.b, 1u, 38044u), u_input.c.zx << vec2<u32>(u_input.a, u_input.a), 15920u * u_input.d, 8619u, all(vec2<bool>(true, true))), Struct_1(vec3<u32>(19081u, 85144u, u_input.b), global1.xx, ~u_input.a, ~u_input.a, !false), Struct_1(vec3<u32>(u_input.d, 4294967295u, 15882u), select(global1.xz, u_input.c.xz, vec2<bool>(true, true)), ~u_input.a, 99137u >> u_input.a, true), -(-(-214f))), ~((vec2<u32>(62848u, u_input.d) << vec2<u32>(u_input.d, u_input.d)) / reverseBits(vec2<u32>(4294967295u, 1u)))), all(select(!(!vec3<bool>(true, true, false)), !vec3<bool>(false, false, true), select(!vec3<bool>(false, true, false), vec3<bool>(false, false, true), !vec3<bool>(false, true, true)))));
    global1 = -vec3<i32>(u_input.c.x, -1i, dot(vec4<i32>(u_input.c.x, 18077i, global1.x, u_input.c.x), vec4<i32>(1i, u_input.c.x, 50653i, u_input.c.x)) | -31388i) + vec3<i32>(dot(u_input.c + select(u_input.c, vec3<i32>(u_input.c.x, 1i, global1.x), var_2.x), abs(vec3<i32>(u_input.c.x, global1.x, -1i))), u_input.c.x, clamp(-17445i, countOneBits(2147483647i), -(2147483647i + 2147483647i)));
    return StorageBuffer(clamp(firstLeadingBit(min(vec4<i32>(global1.x, -41963i, 2147483647i, 1i), vec4<i32>(u_input.c.x, u_input.c.x, 14142i, 0i))), clamp(vec4<i32>(~16328i, global1.x, global1.x, -global1.x), -(~vec4<i32>(-26014i, 13679i, -1i, 2147483647i)), -vec4<i32>(2147483647i, u_input.c.x, u_input.c.x, -67033i) * -vec4<i32>(17262i, i32(-2147483648), 2147483647i, u_input.c.x)), ~vec4<i32>(abs(global1.x), 2147483647i, u_input.c.x, -u_input.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 30>();
    var var_0 = u_input.c;
    let x = u_input.a;
    s_output = func_1();
}

