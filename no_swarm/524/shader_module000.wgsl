// {"0:0":[99,219,68,178,203,238,205,108,42,61,194,24,92,13,144,207,94,198,162,119,43,102,3,221,61,163,10,51,104,114,18,136]}
// Seed: 14258928710633140391

struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec4<bool>,
    d: vec2<f32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: f32 = 2518f;

var<private> global2: array<vec4<u32>, 6>;

var<private> global3: vec4<i32> = vec4<i32>(-10596i, 1i, 7354i, -1i);

fn func_3(arg_0: Struct_5, arg_1: Struct_4, arg_2: vec3<f32>) -> vec4<f32> {
    let var_0 = select(select(select(arg_0.a.d.c.c, select(arg_0.b.c.c, select(vec4<bool>(arg_1.b.c.x, arg_1.b.c.x, false, arg_1.b.c.x), arg_1.b.c, arg_0.b.c.c.x), !true), arg_1.b.c), arg_1.c.c.c.c, !arg_0.b.c.c.x), select(select(select(arg_1.c.c.c.c, !arg_0.a.c.c.c, !arg_1.b.c), arg_0.b.c.c, arg_1.c.d.c.c), select(arg_0.a.a.c.c, !arg_0.b.c.c, true && false), select(select(arg_1.c.c.c.c, select(arg_1.b.c, vec4<bool>(arg_0.b.c.c.x, arg_0.b.c.c.x, true, false), arg_1.c.c.c.c.x), all(vec3<bool>(true, false, arg_1.b.c.x))), arg_0.a.c.c.c, select(arg_1.c.d.c.c, !arg_1.c.d.c.c, arg_0.b.c.c.x | arg_0.a.c.c.c.x))), arg_0.b.c.c.x && any(!(!arg_1.c.d.c.c)));
    let var_1 = max(firstTrailingBit(firstTrailingBit(vec4<i32>(-arg_1.c.b, arg_0.a.b - -87808i, 2147483647i, -(-56417i)))), min(vec4<i32>(global0.x, 0i, arg_0.a.b, global3.x + 0i) / firstTrailingBit(~vec4<i32>(arg_0.a.b, -62559i, arg_1.c.b, global0.x)), abs((vec4<i32>(global0.x, 2147483647i, global3.x, global0.x) * vec4<i32>(global3.x, -10236i, -23663i, arg_0.a.b)) | abs(vec4<i32>(-1i, arg_0.a.b, -20999i, global0.x)))));
    global3 = ((select(-vec4<i32>(2147483647i, 10515i, -16666i, 39226i), select(vec4<i32>(arg_0.a.b, arg_0.a.b, 2147483647i, global3.x), var_1, arg_0.b.c.c.x), select(arg_1.b.c.x, var_0.x, var_0.x)) + ~firstLeadingBit(vec4<i32>(global0.x, global0.x, global3.x, arg_0.a.b))) + var_1) ^ ((min(-var_1, abs(var_1)) - firstTrailingBit(~var_1)) >> arg_0.a.d.c.e);
    let var_2 = arg_1.b.a.x;
    let var_3 = ~(vec3<u32>(arg_1.b.a.x, ~(54413u / arg_1.b.a.x), ~abs(59139u)) - ~vec3<u32>(34420u, u_input.b.x ^ u_input.b.x, ~90161u));
    return (vec4<f32>(floor(exp2(arg_1.c.c.b.x)), arg_2.x, arg_0.a.e * floor(arg_1.b.d.x), 331f) + exp2(vec4<f32>(step(arg_2.x, -975f), arg_1.a.x / 920f, abs(arg_1.c.c.c.d.x), ceil(1394f)))) / arg_0.b.b;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: i32) -> i32 {
    var var_0 = arg_0.e;
    var_0 = arg_1.a.c.d.x;
    global0 = vec4<i32>(-7087i, ~(~arg_1.b), global0.x, -(-((2147483647i + 5530i) / clamp(global3.x, 0i, -41610i))));
    return ~(arg_2 >> 23474u) + countOneBits(37783i << clamp(arg_1.d.a.x, ~47109u, ~0u));
}

fn func_2(arg_0: i32, arg_1: u32) -> Struct_1 {
    var var_0 = global3.yxz + global0.yzx;
    let var_1 = arg_0;
    let var_2 = Struct_2(~max(firstLeadingBit(vec3<u32>(32519u, 1u, u_input.b.x)), u_input.b) << ~u_input.b, -(-vec4<f32>(1771f, -789f, -342f, -626f)) - -(select(vec4<f32>(-1000f, 266f, -218f, 478f), vec4<f32>(-793f, -1972f, 415f, -1414f), false) - sign(vec4<f32>(298f, -1252f, -439f, -181f))), Struct_1(vec3<u32>((u_input.b.x << 0u) % (u_input.a.x + u_input.a.x), 0u, arg_1), 46751u, vec4<bool>(false, false & (true | false), !false, true), floor(ceil(vec2<f32>(-713f, 671f) * vec2<f32>(-864f, -134f))), select(min(vec4<u32>(arg_1, u_input.a.x, arg_1, u_input.a.x) | vec4<u32>(arg_1, 4294967295u, arg_1, 4294967295u), global2[arg_1 >> 4294967295u]), select(global2[4294967295u], vec4<u32>(arg_1, u_input.b.x, 4294967295u, 1u), vec4<bool>(false, true, false, true)) / global2[select(1u, u_input.a.x, true)], all(select(vec2<bool>(true, true), vec2<bool>(false, false), false)))));
    let var_3 = func_4(Struct_3(Struct_2(firstTrailingBit(vec3<u32>(var_2.c.a.x, u_input.b.x, arg_1) >> vec3<u32>(1u, arg_1, 1u)), -vec4<f32>(1234f, var_2.c.d.x, -1161f, -677f), var_2.c), countOneBits(clamp(~7036i, var_1 ^ var_0.x, arg_0)), Struct_2(abs(var_2.a) << u_input.b, func_3(Struct_5(Struct_3(Struct_2(vec3<u32>(1u, u_input.a.x, 1u), vec4<f32>(484f, 2296f, -133f, -297f), Struct_1(vec3<u32>(var_2.a.x, u_input.a.x, 0u), 24505u, var_2.c.c, var_2.b.xw, vec4<u32>(1u, 4294967295u, u_input.a.x, arg_1))), -37689i, var_2, Struct_2(var_2.a, vec4<f32>(var_2.c.d.x, 1966f, -1305f, var_2.c.d.x), Struct_1(var_2.a, 3135u, vec4<bool>(false, var_2.c.c.x, true, false), var_2.c.d, global2[var_2.a.x])), var_2.c.d.x), var_2), Struct_4(var_2.b.xy, var_2.c, Struct_3(var_2, global0.x, Struct_2(vec3<u32>(20312u, u_input.b.x, arg_1), var_2.b, var_2.c), var_2, var_2.b.x)), vec3<f32>(194f, -1000f, 379f)) + (var_2.b / var_2.b), var_2.c), Struct_2((var_2.a - vec3<u32>(0u, 738u, 0u)) / (vec3<u32>(arg_1, u_input.a.x, 22769u) / vec3<u32>(arg_1, arg_1, 8720u)), vec4<f32>(var_2.b.x, var_2.b.x, var_2.b.x, var_2.b.x) - sign(var_2.b), Struct_1(~vec3<u32>(var_2.a.x, u_input.a.x, 17433u), ~103099u, var_2.c.c, sign(vec2<f32>(-751f, -198f)), var_2.c.e + global2[arg_1])), -(-196f)), Struct_3(Struct_2(~vec3<u32>(1u, 10213u, 4041u) * abs(u_input.b), vec4<f32>(-850f * -1010f, -(-186f), -var_2.c.d.x, abs(var_2.c.d.x)), var_2.c), arg_0, var_2, Struct_2(vec3<u32>(~20096u, 58837u ^ 1u, abs(61038u)), vec4<f32>(-1000f, trunc(var_2.c.d.x), func_3(Struct_5(Struct_3(Struct_2(vec3<u32>(34692u, 7017u, var_2.c.a.x), vec4<f32>(var_2.c.d.x, 1000f, var_2.b.x, 190f), var_2.c), arg_0, Struct_2(u_input.b, vec4<f32>(248f, var_2.c.d.x, var_2.b.x, 1787f), var_2.c), Struct_2(u_input.b, var_2.b, var_2.c), 105f), Struct_2(u_input.b, vec4<f32>(810f, 305f, 977f, -500f), Struct_1(var_2.c.a, arg_1, vec4<bool>(var_2.c.c.x, true, var_2.c.c.x, var_2.c.c.x), vec2<f32>(var_2.b.x, var_2.b.x), var_2.c.e))), Struct_4(vec2<f32>(-2176f, var_2.c.d.x), var_2.c, Struct_3(var_2, 1i, var_2, Struct_2(var_2.a, var_2.b, Struct_1(vec3<u32>(0u, u_input.b.x, 1u), arg_1, var_2.c.c, var_2.b.xz, vec4<u32>(u_input.a.x, u_input.b.x, arg_1, 0u))), var_2.c.d.x)), var_2.b.yxz).x, -1475f), Struct_1(u_input.b, max(u_input.a.x, 18614u), var_2.c.c, var_2.c.d, var_2.c.e)), 841f), reverseBits(dot(~global0.zwx, -(global3.xzx / global3.yyw))));
    let var_4 = select(select(var_2.c.c.zxz, vec3<bool>(!var_2.c.c.x, false, !select(true, var_2.c.c.x, false)), select(var_2.c.c.yxz, select(!var_2.c.c.zzw, vec3<bool>(var_2.c.c.x, var_2.c.c.x, false), var_2.c.c.zxw), vec3<bool>(any(vec4<bool>(var_2.c.c.x, var_2.c.c.x, false, var_2.c.c.x)), var_2.c.c.x, global0.x == var_1))), vec3<bool>(all(var_2.c.c.xyw), all(var_2.c.c), !(false && any(vec2<bool>(true, var_2.c.c.x)))), vec3<bool>(var_2.c.c.x, any(var_2.c.c.wyx), (firstTrailingBit(var_1) ^ var_0.x) > (-28000i | -arg_0)));
    return var_2.c;
}

fn func_1() -> vec2<bool> {
    var var_0 = Struct_2(u_input.b, -vec4<f32>(ceil(-1130f * 428f), trunc(1670f), -(-1646f), -763f * -477f), func_2(1i + global0.x, max(~(0u - u_input.a.x), ~u_input.b.x)));
    var var_1 = ~(~min(max(global2[4294967295u] >> vec4<u32>(var_0.a.x, var_0.c.a.x, 0u, var_0.c.e.x), max(vec4<u32>(u_input.b.x, var_0.c.b, var_0.c.b, u_input.b.x), vec4<u32>(u_input.b.x, 1u, u_input.a.x, var_0.c.e.x))), vec4<u32>(abs(52449u), u_input.a.x ^ u_input.a.x, u_input.a.x, ~70529u)));
    var_1 = var_0.c.e;
    let var_2 = ~vec3<u32>(min(u_input.b.x, var_1.x & min(var_0.a.x, 32967u)), var_0.a.x, var_0.c.b - var_0.c.b);
    let var_3 = vec3<i32>(global0.x, min(i32(-2147483648), dot(-(-vec4<i32>(global0.x, -49164i, -1i, global3.x)), clamp(vec4<i32>(global3.x, 2147483647i, 2147483647i, i32(-2147483648)), vec4<i32>(global0.x, global0.x, global3.x, i32(-2147483648)) | vec4<i32>(2147483647i, global0.x, global3.x, 2147483647i), vec4<i32>(-46290i, 5460i, 14057i, 21600i) * vec4<i32>(-1i, 10658i, 58285i, 50250i)))), -35157i);
    return var_0.c.c.zz;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = vec4<i32>(global0.x, ~(global3.x << u_input.b.x), ~(-(-1i)), dot(global3.zz, -vec2<i32>(27013i, 11889i)) << countOneBits((u_input.b.x / u_input.a.x) + 35167u));
    global3 = vec4<i32>(-global0.x, -15915i, countOneBits(2147483647i) >> 42194u, global3.x) - -vec4<i32>(global3.x, global3.x, -(i32(-2147483648)) % 43971i, 8625i * -global3.x);
    let var_0 = select(!select(func_1(), !vec2<bool>(false, true), any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false)))), !vec2<bool>((u_input.a.x <= u_input.a.x) == !true, (14337u < u_input.b.x) || (u_input.b.x <= u_input.b.x)), func_2(~45857i * (~global0.x << 4294967295u), u_input.b.x).c.x);
    global0 = abs(vec4<i32>(global3.x, -global3.x, dot(firstTrailingBit(global0.wyw & global3.wwx), ~vec3<i32>(global0.x, global0.x, global3.x)), global0.x));
    var var_1 = Struct_1(u_input.b, 29801u, func_2(57415i, ~89283u).c, -(-vec2<f32>(-728f, -710f) + vec2<f32>(-201f, 850f)) / vec2<f32>(-(-(-283f)), (435f / -1578f) + func_3(Struct_5(Struct_3(Struct_2(u_input.b, vec4<f32>(-213f, -163f, 747f, 1226f), Struct_1(vec3<u32>(u_input.b.x, u_input.b.x, 20240u), 8462u, vec4<bool>(var_0.x, true, false, var_0.x), vec2<f32>(785f, -1254f), vec4<u32>(u_input.a.x, u_input.a.x, 1354u, u_input.b.x))), global3.x, Struct_2(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec4<f32>(573f, -2202f, 717f, 287f), Struct_1(vec3<u32>(0u, 4294967295u, u_input.a.x), 4294967295u, vec4<bool>(var_0.x, var_0.x, false, false), vec2<f32>(1262f, -428f), vec4<u32>(u_input.b.x, u_input.b.x, u_input.a.x, u_input.b.x))), Struct_2(u_input.b, vec4<f32>(667f, 470f, 2374f, 617f), Struct_1(vec3<u32>(u_input.b.x, u_input.b.x, 37766u), u_input.a.x, vec4<bool>(var_0.x, true, true, true), vec2<f32>(702f, -478f), global2[10773u])), 602f), Struct_2(vec3<u32>(96615u, 1u, 107127u), vec4<f32>(-687f, 644f, 1000f, -1000f), Struct_1(vec3<u32>(u_input.b.x, u_input.a.x, u_input.b.x), u_input.b.x, vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec2<f32>(1773f, -872f), vec4<u32>(4294967295u, 4294967295u, 75420u, u_input.b.x)))), Struct_4(vec2<f32>(-910f, 231f), Struct_1(vec3<u32>(103607u, u_input.a.x, 5923u), 25762u, vec4<bool>(true, var_0.x, var_0.x, true), vec2<f32>(1935f, 1000f), vec4<u32>(4294967295u, 76273u, u_input.b.x, 9746u)), Struct_3(Struct_2(vec3<u32>(0u, 38860u, 19126u), vec4<f32>(-2201f, 879f, -240f, 723f), Struct_1(vec3<u32>(u_input.b.x, 1u, 4294967295u), 0u, vec4<bool>(false, true, true, false), vec2<f32>(1454f, 669f), vec4<u32>(1u, u_input.a.x, 53550u, 27136u))), global0.x, Struct_2(vec3<u32>(u_input.b.x, u_input.a.x, 21703u), vec4<f32>(-1000f, 525f, 1273f, -2132f), Struct_1(u_input.b, 4294967295u, vec4<bool>(var_0.x, false, true, var_0.x), vec2<f32>(-434f, 527f), global2[4294967295u])), Struct_2(u_input.b, vec4<f32>(-217f, 1572f, 1153f, 1529f), Struct_1(u_input.b, 34768u, vec4<bool>(true, var_0.x, true, true), vec2<f32>(240f, 129f), vec4<u32>(u_input.b.x, u_input.a.x, u_input.b.x, 41524u))), -915f)), vec3<f32>(-743f, 309f, 1000f)).x), func_2(-dot(vec2<i32>(0i, -5082i) + global0.ww, global3.yy << u_input.b.yz), ~(~(u_input.a.x | u_input.a.x))).e);
    let var_2 = Struct_4(vec2<f32>(var_1.d.x, round(min(1221f, -1735f) + -1122f)), Struct_1(~(~vec3<u32>(0u, var_1.a.x, u_input.a.x)), ~(~(~4294967295u)), var_1.c, -trunc(-vec2<f32>(-813f, 1377f)), clamp(firstLeadingBit(select(vec4<u32>(6173u, 110144u, 48653u, 47895u), vec4<u32>(var_1.e.x, 0u, u_input.b.x, 20170u), vec4<bool>(var_1.c.x, var_0.x, var_0.x, var_1.c.x))), vec4<u32>(~0u, 12920u, var_1.e.x, dot(vec2<u32>(var_1.a.x, 1u), var_1.e.yw)), ~(global2[u_input.a.x] / vec4<u32>(1u, u_input.b.x, var_1.a.x, var_1.a.x)))), Struct_3(Struct_2(var_1.e.yzz, vec4<f32>(var_1.d.x, var_1.d.x, var_1.d.x, var_1.d.x) / -vec4<f32>(var_1.d.x, 370f, 1699f, var_1.d.x), Struct_1(vec3<u32>(u_input.b.x, 25660u, var_1.a.x) * vec3<u32>(1u, 4294967295u, 54907u), 1u, func_2(1i, 4294967295u).c, var_1.d, func_2(global0.x, 71391u).e)), reverseBits(global0.x - global0.x), Struct_2(func_2(-23959i >> var_1.a.x, ~0u).a, (vec4<f32>(var_1.d.x, 1292f, var_1.d.x, var_1.d.x) - vec4<f32>(395f, 1000f, var_1.d.x, var_1.d.x)) * step(vec4<f32>(var_1.d.x, var_1.d.x, var_1.d.x, -1600f), vec4<f32>(var_1.d.x, -229f, var_1.d.x, var_1.d.x)), func_2(30092i, ~0u)), Struct_2(u_input.b, -vec4<f32>(-1075f, var_1.d.x, var_1.d.x, var_1.d.x), func_2(global0.x, u_input.a.x / 0u)), -(-(884f - var_1.d.x))));
    global0 = -(~(vec4<i32>(1i + i32(-2147483648), -(-32594i), global3.x / -1364i, firstLeadingBit(global0.x)) << var_1.e));
    var var_3 = Struct_5(var_2.c, Struct_2(firstTrailingBit(var_2.c.a.a), var_2.c.d.b, var_2.b));
    let x = u_input.a;
    s_output = StorageBuffer(step(-(func_3(Struct_5(var_2.c, Struct_2(vec3<u32>(u_input.b.x, 62443u, var_3.b.a.x), var_3.a.a.b, var_3.a.a.c)), Struct_4(var_2.b.d, Struct_1(vec3<u32>(u_input.a.x, 9856u, var_3.b.a.x), u_input.b.x, vec4<bool>(true, var_3.b.c.c.x, var_0.x, false), var_1.d, vec4<u32>(16270u, 31731u, var_2.b.e.x, var_1.b)), Struct_3(Struct_2(vec3<u32>(var_3.a.c.a.x, var_3.a.d.a.x, 50883u), vec4<f32>(1157f, var_2.b.d.x, -895f, 1477f), var_2.c.c.c), global0.x, var_3.a.c, Struct_2(vec3<u32>(var_1.b, 4294967295u, 13662u), var_2.c.a.b, var_2.c.c.c), var_2.a.x)), vec3<f32>(var_2.a.x, var_1.d.x, 443f)).x / (1450f - var_1.d.x)), var_3.b.c.d.x), global3.xxz, -989i, firstLeadingBit(-reverseBits(firstLeadingBit(vec4<i32>(i32(-2147483648), -22629i, global0.x, 8375i)))));
}

