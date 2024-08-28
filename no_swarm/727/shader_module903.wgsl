// {"0:0":[74,121,190,253,165,218,118,197]}
// Seed: 5916121834567673267

struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<u32>,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_4 {
    a: f32,
    b: vec4<bool>,
    c: vec2<u32>,
    d: Struct_3,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
    c: Struct_2,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_4, 2> = array<Struct_4, 2>(Struct_4(-329f, vec4<bool>(true, true, true, true), vec2<u32>(0u, 86832u), Struct_3(Struct_2(Struct_1(vec3<i32>(i32(-2147483648), 978i, 1i), vec4<bool>(true, true, false, true)), false, Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), 544i), vec4<bool>(false, false, false, true)), vec3<u32>(1u, 47250u, 0u), Struct_1(vec3<i32>(-10595i, i32(-2147483648), 1i), vec4<bool>(false, true, true, true))), Struct_2(Struct_1(vec3<i32>(53724i, -41155i, 32964i), vec4<bool>(true, true, true, false)), true, Struct_1(vec3<i32>(-502i, -4226i, -88168i), vec4<bool>(true, true, true, false)), vec3<u32>(17157u, 0u, 59243u), Struct_1(vec3<i32>(i32(-2147483648), 42091i, -1i), vec4<bool>(false, false, true, true))), vec3<u32>(1u, 1u, 1u), Struct_1(vec3<i32>(1i, 2147483647i, 22144i), vec4<bool>(true, false, false, false)), vec4<i32>(62072i, 1i, -25942i, 10112i)), Struct_2(Struct_1(vec3<i32>(16238i, -1i, 0i), vec4<bool>(false, false, true, false)), true, Struct_1(vec3<i32>(-1i, -22318i, -13325i), vec4<bool>(true, false, true, false)), vec3<u32>(11010u, 0u, 77136u), Struct_1(vec3<i32>(1i, 9498i, 0i), vec4<bool>(false, true, false, false)))), Struct_4(399f, vec4<bool>(false, false, false, true), vec2<u32>(4294967295u, 1u), Struct_3(Struct_2(Struct_1(vec3<i32>(32259i, -9484i, -24224i), vec4<bool>(false, true, false, false)), false, Struct_1(vec3<i32>(-25768i, -6294i, -20479i), vec4<bool>(true, false, true, false)), vec3<u32>(4294967295u, 1u, 19328u), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)), vec4<bool>(true, false, true, false))), Struct_2(Struct_1(vec3<i32>(2147483647i, 2147483647i, 35618i), vec4<bool>(true, true, false, true)), true, Struct_1(vec3<i32>(30679i, 23126i, -11127i), vec4<bool>(true, false, false, false)), vec3<u32>(1u, 36591u, 4294967295u), Struct_1(vec3<i32>(-13240i, 2147483647i, -21063i), vec4<bool>(true, false, false, true))), vec3<u32>(8476u, 4294967295u, 15015u), Struct_1(vec3<i32>(-53462i, i32(-2147483648), 0i), vec4<bool>(false, false, false, false)), vec4<i32>(52223i, -46112i, -30371i, 2147483647i)), Struct_2(Struct_1(vec3<i32>(-39586i, 0i, 8259i), vec4<bool>(false, true, true, true)), true, Struct_1(vec3<i32>(i32(-2147483648), -11181i, -1486i), vec4<bool>(true, false, true, false)), vec3<u32>(7601u, 4294967295u, 4924u), Struct_1(vec3<i32>(-15420i, i32(-2147483648), 2147483647i), vec4<bool>(true, true, false, true)))));

var<private> global2: array<f32, 24> = array<f32, 24>(-690f, 161f, -407f, 111f, 142f, -622f, 1780f, 1000f, -629f, -885f, 1767f, -321f, -252f, 1000f, 748f, 920f, 1114f, -309f, 808f, 354f, 474f, -564f, 994f, -197f);

fn func_3(arg_0: Struct_3, arg_1: Struct_5, arg_2: f32, arg_3: Struct_1) -> u32 {
    let var_0 = vec4<f32>(min(abs(arg_2) / -(-314f), round(global2[0u]) * global2[35025u]), -global2[~51466u >> (arg_1.c.d.x - 1u)], global2[arg_0.b.d.x - ~0u], -(-363f)) * step(step(floor(vec4<f32>(-247f, 514f, arg_2, arg_2)), vec4<f32>(arg_2, arg_2, arg_1.a.a, arg_2) - vec4<f32>(211f, 787f, global2[arg_1.d.a.d.x], -2514f)) * min(vec4<f32>(1000f, -421f, arg_2, arg_1.a.a) + vec4<f32>(1699f, 660f, arg_2, arg_2), vec4<f32>(global2[u_input.b], -1295f, -130f, arg_2) + vec4<f32>(1465f, arg_2, arg_1.a.a, arg_1.a.a)), vec4<f32>((global2[4294967295u] - global2[23237u]) * (arg_1.a.a * arg_2), 410f, -exp2(659f), -global2[~arg_1.c.d.x]));
    global0 = Struct_1(firstLeadingBit(clamp(vec3<i32>(-1i - arg_1.a.e.e.a.x, ~arg_1.c.c.a.x, -arg_1.a.d.d.a.x), vec3<i32>(select(arg_3.a.x, arg_3.a.x, arg_3.b.x), 28283i * -25190i, i32(-2147483648) - global0.a.x), ~(arg_0.d.a - vec3<i32>(arg_0.d.a.x, 5028i, -19495i)))), !vec4<bool>(-(-664f) > exp2(1973f), global0.b.x, all(vec3<bool>(false, true, false)), true));
    let var_1 = arg_1.a;
    var var_2 = Struct_1(arg_0.b.e.a, !arg_0.b.c.b);
    let var_3 = Struct_1(countOneBits(var_2.a), select(vec4<bool>(any(vec4<bool>(var_1.b.x, true, true, arg_3.b.x)), false, true, !all(vec4<bool>(arg_1.a.b.x, var_2.b.x, arg_0.b.e.b.x, true))), !select(vec4<bool>(true, true, false, false), select(arg_0.d.b, vec4<bool>(arg_3.b.x, true, var_2.b.x, false), false), var_2.b), arg_0.b.e.b.x));
    return arg_0.a.d.x;
}

fn func_2() -> Struct_3 {
    let var_0 = global0.b.x;
    var var_1 = !global0.b.ww;
    global0 = Struct_1(global0.a, select(!global0.b, vec4<bool>(30603u > min(33220u, u_input.b), (-129f / 367f) < round(global2[u_input.a]), false, false), -1i != 0i));
    let var_2 = global2[dot(~abs(firstLeadingBit(vec3<u32>(4294967295u, 5769u, u_input.a))), min(vec3<u32>(~66580u, ~u_input.b, 750u) * ~vec3<u32>(u_input.a, 58302u, 0u), vec3<u32>(60471u, func_3(Struct_3(Struct_2(Struct_1(vec3<i32>(i32(-2147483648), global0.a.x, global0.a.x), global0.b), global0.b.x, Struct_1(vec3<i32>(global0.a.x, 69728i, global0.a.x), vec4<bool>(var_1.x, global0.b.x, var_1.x, var_1.x)), vec3<u32>(u_input.a, 4294967295u, u_input.b), Struct_1(vec3<i32>(global0.a.x, 5704i, -17959i), global0.b)), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), global0.a.x, global0.a.x), global0.b), false, Struct_1(global0.a, global0.b), vec3<u32>(u_input.a, 18092u, u_input.b), Struct_1(global0.a, vec4<bool>(global0.b.x, var_1.x, false, false))), vec3<u32>(4294967295u, 4294967295u, 0u), Struct_1(global0.a, vec4<bool>(var_1.x, true, true, var_1.x)), vec4<i32>(global0.a.x, i32(-2147483648), global0.a.x, global0.a.x)), Struct_5(global1[0u], Struct_3(Struct_2(Struct_1(global0.a, global0.b), global0.b.x, Struct_1(vec3<i32>(global0.a.x, 1i, i32(-2147483648)), vec4<bool>(global0.b.x, true, var_1.x, global0.b.x)), vec3<u32>(34364u, 1u, 100366u), Struct_1(vec3<i32>(1i, global0.a.x, 13442i), vec4<bool>(global0.b.x, true, false, global0.b.x))), Struct_2(Struct_1(global0.a, vec4<bool>(global0.b.x, false, var_1.x, false)), true, Struct_1(global0.a, global0.b), vec3<u32>(30078u, 0u, 27196u), Struct_1(vec3<i32>(i32(-2147483648), -17467i, -16832i), vec4<bool>(true, var_1.x, global0.b.x, global0.b.x))), vec3<u32>(1u, u_input.b, 44912u), Struct_1(global0.a, vec4<bool>(true, true, false, var_1.x)), vec4<i32>(global0.a.x, 2147483647i, global0.a.x, 1i)), Struct_2(Struct_1(vec3<i32>(2147483647i, global0.a.x, 18739i), vec4<bool>(global0.b.x, global0.b.x, var_1.x, true)), var_1.x, Struct_1(vec3<i32>(global0.a.x, global0.a.x, global0.a.x), global0.b), vec3<u32>(u_input.b, 4294967295u, u_input.a), Struct_1(vec3<i32>(i32(-2147483648), global0.a.x, global0.a.x), vec4<bool>(global0.b.x, global0.b.x, false, true))), Struct_3(Struct_2(Struct_1(vec3<i32>(0i, i32(-2147483648), global0.a.x), global0.b), true, Struct_1(vec3<i32>(0i, 278i, -19070i), vec4<bool>(global0.b.x, false, global0.b.x, false)), vec3<u32>(u_input.b, 4294967295u, 0u), Struct_1(vec3<i32>(global0.a.x, -10269i, 35712i), global0.b)), Struct_2(Struct_1(vec3<i32>(global0.a.x, global0.a.x, 2147483647i), vec4<bool>(global0.b.x, var_1.x, var_1.x, global0.b.x)), var_1.x, Struct_1(global0.a, vec4<bool>(true, true, true, true)), vec3<u32>(0u, u_input.b, u_input.b), Struct_1(vec3<i32>(7238i, 22444i, i32(-2147483648)), vec4<bool>(global0.b.x, false, false, false))), vec3<u32>(4294967295u, u_input.a, 44293u), Struct_1(vec3<i32>(-37603i, global0.a.x, 33763i), vec4<bool>(true, var_1.x, var_1.x, false)), vec4<i32>(11600i, 11656i, global0.a.x, 0i))), select(-1139f, -870f, false), Struct_1(global0.a, global0.b)), u_input.a)))];
    global2 = array<f32, 24>();
    return Struct_3(Struct_2(Struct_1(-vec3<i32>(1i, 1i, global0.a.x) ^ -global0.a, vec4<bool>(var_1.x, true | true, !var_1.x, global0.a.x < -29668i)), true, Struct_1(countOneBits(~vec3<i32>(global0.a.x, -38299i, -19297i)), vec4<bool>(global0.b.x | var_1.x, true, global0.b.x || false, true & global0.b.x)), ~abs(firstLeadingBit(vec3<u32>(22480u, 18090u, u_input.b))), Struct_1(max(vec3<i32>(47280i, global0.a.x, -1i), -global0.a), select(vec4<bool>(global0.b.x, true, global0.b.x, false), global0.b, global0.b.x))), Struct_2(Struct_1(global0.a, !global0.b), var_1.x, Struct_1(-(vec3<i32>(23072i, global0.a.x, global0.a.x) << vec3<u32>(0u, 43676u, u_input.b)), vec4<bool>(global0.a.x < -26881i, var_1.x & global0.b.x, 0u == 35273u, any(global0.b.xwy))), clamp((vec3<u32>(27873u, 18797u, 67285u) >> vec3<u32>(u_input.a, 36590u, u_input.b)) ^ ~vec3<u32>(u_input.b, u_input.a, 3142u), vec3<u32>(1u, 95069u, ~u_input.a), (vec3<u32>(80517u, u_input.a, 6494u) ^ vec3<u32>(0u, 2749u, 72814u)) + vec3<u32>(u_input.a, 80057u, 4294967295u)), Struct_1(vec3<i32>(-586i, i32(-2147483648), -48252i), global0.b)), ~(~firstLeadingBit(vec3<u32>(u_input.b, u_input.b, u_input.a)) | vec3<u32>(u_input.a + 0u, u_input.b + 24240u, countOneBits(0u))), Struct_1(select(vec3<i32>(global0.a.x, 0i / -4768i, clamp(-1i, global0.a.x, 40275i)), -(vec3<i32>(31902i, 2147483647i, global0.a.x) << vec3<u32>(u_input.a, 4294967295u, u_input.b)), global0.b.xyx), global0.b), vec4<i32>(select(~global0.a.x | -global0.a.x, (20722i >> 0u) << ~u_input.b, true), 11360i, -13067i, -5041i));
}

fn func_1() -> i32 {
    global2 = array<f32, 24>();
    var var_0 = vec4<i32>(-(-(global0.a.x >> firstTrailingBit(u_input.a))), 1i, 0i, -global0.a.x / -14427i);
    var var_1 = func_2();
    let var_2 = global1[53337u];
    var var_3 = Struct_4(959f, var_2.e.c.b, var_2.c, func_2(), func_2().a);
    return var_1.a.c.a.x % ((1777i | firstLeadingBit(42664i)) >> ~dot(vec2<u32>(var_1.b.d.x, u_input.b), var_2.c & var_1.a.d.yx));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1((global0.a * vec3<i32>(func_1(), 0i, clamp(global0.a.x, global0.a.x, 1i))) << ~(~(~vec3<u32>(u_input.a, 4294967295u, 25797u))), vec4<bool>(((u_input.a << 37400u) >= ~u_input.b) && false, func_2().a.c.b.x, countOneBits(u_input.b) >= 70968u, -1083f > 328f));
    var var_0 = select(vec3<bool>(!(!global0.b.x && all(vec2<bool>(global0.b.x, global0.b.x))), !(!any(vec3<bool>(global0.b.x, global0.b.x, true))), global0.b.x), vec3<bool>(false, global0.b.x, all(global0.b.zzy)), global0.b.www);
    global1 = array<Struct_4, 2>();
    var var_1 = func_2().b;
    global0 = var_1.a;
    let var_2 = global2[u_input.a];
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-1000f, global2[4294967295u] - 1000f), vec4<u32>((~u_input.b ^ firstLeadingBit(u_input.a)) | 4673u, ((var_1.d.x - 28556u) + ~u_input.a) + 4294967295u, ~(~(~u_input.b)), dot(var_1.d.xy, firstLeadingBit(var_1.d.yz))), global2[4294967295u >> ((dot(var_1.d, var_1.d) - ~var_1.d.x) | var_1.d.x)], reverseBits(~vec2<u32>(func_3(Struct_3(Struct_2(Struct_1(vec3<i32>(var_1.a.a.x, global0.a.x, var_1.a.a.x), vec4<bool>(true, false, var_1.c.b.x, var_0.x)), var_1.b, var_1.e, vec3<u32>(0u, 12744u, var_1.d.x), Struct_1(vec3<i32>(global0.a.x, i32(-2147483648), -45080i), vec4<bool>(var_0.x, true, var_0.x, false))), Struct_2(Struct_1(global0.a, var_1.c.b), true, var_1.c, var_1.d, var_1.c), vec3<u32>(4170u, u_input.b, 69742u), var_1.a, vec4<i32>(var_1.e.a.x, 30491i, 1i, var_1.e.a.x)), Struct_5(Struct_4(1020f, vec4<bool>(var_0.x, global0.b.x, false, false), vec2<u32>(u_input.b, 4294967295u), Struct_3(Struct_2(Struct_1(vec3<i32>(9896i, -39761i, 10448i), vec4<bool>(true, false, var_1.e.b.x, global0.b.x)), global0.b.x, var_1.e, vec3<u32>(u_input.a, u_input.b, 25037u), var_1.a), Struct_2(var_1.c, false, var_1.c, var_1.d, Struct_1(vec3<i32>(global0.a.x, -1314i, global0.a.x), var_1.a.b)), var_1.d, var_1.a, vec4<i32>(2147483647i, i32(-2147483648), global0.a.x, 0i)), Struct_2(var_1.c, global0.b.x, var_1.c, vec3<u32>(1u, 4294967295u, 4294967295u), Struct_1(vec3<i32>(1i, 7337i, -25374i), global0.b))), Struct_3(Struct_2(var_1.c, true, var_1.c, vec3<u32>(var_1.d.x, 77848u, var_1.d.x), Struct_1(global0.a, vec4<bool>(true, true, true, true))), Struct_2(Struct_1(vec3<i32>(-10416i, var_1.c.a.x, var_1.c.a.x), vec4<bool>(false, false, global0.b.x, var_0.x)), var_0.x, var_1.a, vec3<u32>(u_input.a, var_1.d.x, var_1.d.x), var_1.e), vec3<u32>(var_1.d.x, 5618u, 10475u), Struct_1(global0.a, var_1.a.b), vec4<i32>(-21088i, global0.a.x, var_1.c.a.x, i32(-2147483648))), Struct_2(var_1.c, true, var_1.c, vec3<u32>(var_1.d.x, u_input.a, var_1.d.x), Struct_1(var_1.c.a, vec4<bool>(false, global0.b.x, var_1.c.b.x, global0.b.x))), Struct_3(Struct_2(var_1.e, false, Struct_1(vec3<i32>(-1i, 35026i, -43507i), global0.b), var_1.d, Struct_1(var_1.e.a, var_1.e.b)), Struct_2(var_1.c, global0.b.x, Struct_1(vec3<i32>(1i, -47908i, 2147483647i), var_1.c.b), var_1.d, Struct_1(vec3<i32>(-44981i, -15403i, global0.a.x), vec4<bool>(var_1.b, true, global0.b.x, var_1.a.b.x))), var_1.d, var_1.c, vec4<i32>(global0.a.x, 9814i, -1i, 10102i))), global2[0u], var_1.a), u_input.a & u_input.a)));
}

