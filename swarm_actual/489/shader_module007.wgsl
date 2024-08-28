// {"0:0":[186,124,55,125]}
// Seed: 14111211051956412525

struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: u32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: u32,
    d: Struct_2,
    e: bool,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: vec3<i32>,
    b: f32,
    c: vec3<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec3<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3> = array<bool, 3>(false, true, true);

var<private> global1: array<Struct_4, 17> = array<Struct_4, 17>(Struct_4(true), Struct_4(true), Struct_4(true), Struct_4(true), Struct_4(false), Struct_4(true), Struct_4(true), Struct_4(true), Struct_4(false), Struct_4(true), Struct_4(false), Struct_4(true), Struct_4(false), Struct_4(false), Struct_4(false), Struct_4(true), Struct_4(true));

fn func_3(arg_0: bool) -> vec3<bool> {
    let var_0 = firstTrailingBit(clamp(abs(vec2<u32>(abs(u_input.a), ~u_input.a)), max(vec2<u32>(u_input.a, 1u) | ~vec2<u32>(0u, 4294967295u), vec2<u32>(95183u * u_input.a, u_input.a >> 4294967295u)), select(vec2<u32>(85803u, u_input.a) | vec2<u32>(u_input.a, 35220u), max(vec2<u32>(4294967295u, 71303u), vec2<u32>(u_input.a, u_input.a)), !vec2<bool>(true, arg_0)) * reverseBits(~vec2<u32>(28081u, 68951u))));
    let var_1 = abs(vec2<u32>(var_0.x, u_input.a));
    var var_2 = u_input.a >> 0u;
    let var_3 = ~(~(~vec3<u32>(var_0.x, u_input.a, 7196u) + clamp(vec3<u32>(var_0.x, 4294967295u, 50432u), vec3<u32>(14330u, 57463u, var_1.x), vec3<u32>(29641u, var_0.x, var_1.x)))) / ~(~vec3<u32>(var_0.x, var_1.x, 22519u) * (~vec3<u32>(0u, 0u, u_input.a) >> (vec3<u32>(9455u, 1u, 50629u) / vec3<u32>(var_0.x, 4294967295u, var_0.x))));
    var var_4 = var_1.x;
    return select(select(vec3<bool>(!(!global0[var_1.x]), !(u_input.a < 6038u), any(vec3<bool>(global0[1u], true, global0[1u]))), select(select(vec3<bool>(true, true, global0[u_input.a]), vec3<bool>(global0[23256u], true, arg_0), vec3<bool>(false, false, global0[var_1.x])), !vec3<bool>(arg_0, arg_0, true), vec3<bool>(4294967295u == 19093u, 0i <= -21633i, !arg_0)), !(!false)), select(select(vec3<bool>(global0[var_3.x], false, !true), vec3<bool>(false, 689f >= -368f, global0[var_0.x]), !(!vec3<bool>(true, global0[4294967295u], global0[4294967295u]))), !vec3<bool>(!false, arg_0, arg_0), select(!(!vec3<bool>(arg_0, global0[var_0.x], false)), select(!vec3<bool>(false, arg_0, arg_0), vec3<bool>(arg_0, false, global0[54699u]), !true), all(!vec4<bool>(global0[var_1.x], true, false, false)))), false);
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_2(select(~(vec3<u32>(49861u, u_input.a, 3198u) * ~vec3<u32>(18727u, 77943u, u_input.a)), ((vec3<u32>(19496u, u_input.a, u_input.a) - vec3<u32>(4881u, 0u, 0u)) << firstLeadingBit(vec3<u32>(u_input.a, 4294967295u, u_input.a))) * reverseBits(vec3<u32>(9368u, u_input.a, 4294967295u)), func_3(false)), arg_0.x < 1534f, dot(select(abs(vec4<u32>(u_input.a, u_input.a, 1u, u_input.a)), ~vec4<u32>(u_input.a, u_input.a, 13770u, 1u), !(!vec4<bool>(true, false, global0[u_input.a], true))), clamp(~abs(vec4<u32>(1341u, u_input.a, 65052u, u_input.a)), abs(vec4<u32>(u_input.a, u_input.a, 0u, 4294967295u)) ^ vec4<u32>(102690u, 54327u, u_input.a, 28444u), vec4<u32>(33829u, 43828u, 1u, u_input.a) % ~vec4<u32>(u_input.a, 4294967295u, u_input.a, 22434u))));
    var var_1 = Struct_2(~clamp(select(vec3<u32>(36295u, var_0.a.x, var_0.a.x), select(vec3<u32>(u_input.a, 9191u, var_0.c), vec3<u32>(var_0.c, 1u, var_0.a.x), vec3<bool>(global0[85597u], true, true)), var_0.b), vec3<u32>(abs(28566u), var_0.a.x, u_input.a), vec3<u32>(116932u, 50518u, 46610u) / (vec3<u32>(var_0.a.x, var_0.a.x, 47585u) + vec3<u32>(13140u, var_0.c, 12753u))), any(!vec4<bool>(!false, var_0.b, func_3(global0[12789u]).x, 4294967295u <= var_0.a.x)), 43284u);
    var var_2 = 27068i;
    var var_3 = (vec3<f32>(-1606f, floor(-(-370f)), arg_0.x / -arg_0.x) - -(step(arg_0, arg_0) - (arg_0 - arg_0))) - vec3<f32>(arg_0.x, arg_0.x, select(round(-arg_0.x), arg_0.x, select(global0[1u], true, false) && var_0.b));
    global1 = array<Struct_4, 17>();
    return Struct_1(false, max(32000u, dot(vec3<u32>(0u, var_0.c, 47636u) >> ~var_1.a, vec3<u32>(var_0.c, 1u, u_input.a))), -(-(720f * var_3.x) - (step(-401f, -880f) - 657f)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: f32) -> vec3<i32> {
    var var_0 = select(vec2<i32>(-(~firstLeadingBit(22603i)), ~(-45254i) / firstLeadingBit(select(0i, i32(-2147483648), arg_0.a))), ~(~(max(vec2<i32>(2147483647i, 45124i), vec2<i32>(-1i, 0i)) % (vec2<i32>(-1i, 0i) / vec2<i32>(-1i, -1i)))), false);
    let var_1 = !(!(!vec3<bool>(global0[0u] & true, global0[63089u], 818f < -1088f)));
    var var_2 = Struct_5(vec3<i32>(var_0.x, ~1i, -45505i), arg_2 * (sign(abs(arg_2)) * -(-arg_2)), reverseBits(firstLeadingBit(vec3<i32>(var_0.x, dot(vec3<i32>(62841i, 1i, -1i), vec3<i32>(var_0.x, var_0.x, var_0.x)), min(var_0.x, -10296i)))), func_2(-(vec3<f32>(arg_2, -1000f, -216f) - vec3<f32>(arg_0.c, -613f, arg_2)) + -vec3<f32>(464f, arg_2, -574f)));
    let var_3 = Struct_5(firstTrailingBit(vec3<i32>(~62918i, var_2.c.x, var_0.x) / var_2.a), 1162f, firstTrailingBit(select(-vec3<i32>(2147483647i, var_2.a.x, var_0.x), vec3<i32>(var_2.c.x, 1i, var_2.a.x), var_1.x) * (firstTrailingBit(vec3<i32>(var_0.x, 24017i, 43366i)) / reverseBits(var_2.a))), var_2.d);
    var_0 = -(-min(var_3.a.yz, vec2<i32>(select(var_2.c.x, -10718i, false), ~(-22929i))));
    return vec3<i32>(26463i >> (~(4294967295u + var_3.d.b) * ~var_2.d.b), var_2.a.x + firstTrailingBit(var_0.x), 1i - (dot(select(vec3<i32>(var_0.x, -3191i, var_2.c.x), vec3<i32>(var_0.x, var_2.c.x, var_0.x), var_1), vec3<i32>(-391i, 0i, 24680i)) >> arg_0.b));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: f32, arg_3: vec4<bool>) -> u32 {
    let var_0 = vec3<i32>(i32(-2147483648), -select(firstTrailingBit(-4356i), -1i, !(!true)), clamp(firstTrailingBit(firstLeadingBit(2147483647i) & countOneBits(2147483647i)), 1i, ~2147483647i));
    var var_1 = -select(countOneBits(func_4(func_2(vec3<f32>(1461f, -482f, 1261f)), ~vec4<u32>(1u, arg_0.b, 23851u, u_input.a), -(-1000f))), var_0 & (-vec3<i32>(var_0.x, var_0.x, var_0.x) + vec3<i32>(var_0.x, 2147483647i, var_0.x)), arg_3.www);
    let var_2 = Struct_2(~(~vec3<u32>(arg_0.b, arg_0.b | 29567u, 0u)), true, abs(17583u));
    let var_3 = Struct_4(any(select(vec2<bool>(arg_0.a, all(arg_3.zy)), select(!vec2<bool>(true, true), vec2<bool>(global0[u_input.a], true), !vec2<bool>(global0[arg_0.b], arg_3.x)), !false)));
    let var_4 = func_3(func_3(!(!arg_0.a)).x).xz;
    return ~firstLeadingBit(arg_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 3>();
    global0 = array<bool, 3>();
    let var_0 = vec4<u32>(func_1(Struct_1(!(false && true), u_input.a, floor(trunc(-1199f))), 2744f * -744f, min(-1000f, min(1028f, -2201f)) * sign(min(195f, -241f)), !(!(!vec4<bool>(false, global0[2250u], global0[u_input.a], global0[7742u])))), ~((u_input.a >> 4294967295u) - (countOneBits(u_input.a) % 68794u)), u_input.a - abs(1u), 59638u - ~func_1(func_2(vec3<f32>(208f, -217f, 268f)), 106f, -1411f, !vec4<bool>(global0[97925u], false, global0[1u], true)));
    global1 = array<Struct_4, 17>();
    var var_1 = Struct_1(false, 23454u, floor(596f));
    var var_2 = Struct_5(reverseBits(~reverseBits(vec3<i32>(5514i, 0i, 17403i) + vec3<i32>(-9895i, 2147483647i, -1i))), -1636f, vec3<i32>(abs(~(-20050i)), func_4(Struct_1(true, var_1.b, var_1.c), var_0, min(var_1.c, -165f)).x, 0i * ~16604i) & (reverseBits(~vec3<i32>(71671i, -11586i, 0i)) >> ~max(vec3<u32>(0u, u_input.a, 1u), vec3<u32>(4294967295u, var_1.b, u_input.a))), func_2(step(-vec3<f32>(var_1.c, 1000f, -938f), max(vec3<f32>(var_1.c, -114f, var_1.c), vec3<f32>(-1437f, -3061f, var_1.c))) * ((vec3<f32>(-1516f, -562f, var_1.c) + vec3<f32>(-1188f, var_1.c, -244f)) * (vec3<f32>(var_1.c, -338f, var_1.c) / vec3<f32>(618f, var_1.c, var_1.c)))));
    var var_3 = false;
    let var_4 = Struct_3(~19535u, var_2.d, var_1.b << ~var_2.d.b, Struct_2((vec3<u32>(var_2.d.b, var_2.d.b, 4294967295u) ^ vec3<u32>(0u, var_0.x, var_2.d.b)) * vec3<u32>(var_0.x % var_0.x, 1u, dot(var_0.wzx, var_0.xyz)), false, u_input.a | dot(reverseBits(var_0.zzx), vec3<u32>(var_1.b, 4294967295u, 23396u))), func_2(exp2(vec3<f32>(928f, -var_2.b, step(var_1.c, 262f)))).a);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c, floor(-select(var_2.d.c + var_2.b, 1161f + 1000f, false || var_4.e)), abs(2147483647i) / var_2.a.x, vec3<f32>(-1273f, var_2.b, -913f), vec3<f32>(trunc(func_2(vec3<f32>(var_2.d.c, -855f, 1537f) * vec3<f32>(1002f, -877f, var_1.c)).c), -(-func_2(vec3<f32>(var_4.b.c, 1214f, 3196f)).c), var_4.b.c));
}

