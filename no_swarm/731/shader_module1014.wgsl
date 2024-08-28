// {"0:0":[10,7,254,77,187,98,193,186,219,252,105,20,168,196,120,10,120,128,93,11,27,244,179,6,148,189,114,110,126,235,92,41]}
// Seed: 13663015217478205525

struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 21742i;

var<private> global1: array<vec3<f32>, 14> = array<vec3<f32>, 14>(vec3<f32>(1753f, 1064f, 1501f), vec3<f32>(-1063f, -904f, -1808f), vec3<f32>(1035f, -350f, 214f), vec3<f32>(573f, -819f, -302f), vec3<f32>(-799f, -884f, -902f), vec3<f32>(-706f, -663f, 539f), vec3<f32>(860f, 1410f, 1593f), vec3<f32>(-113f, -956f, 1000f), vec3<f32>(708f, -843f, 111f), vec3<f32>(-744f, 634f, 694f), vec3<f32>(1044f, -701f, -1000f), vec3<f32>(238f, -1000f, -802f), vec3<f32>(1014f, -560f, 2302f), vec3<f32>(519f, 183f, 1000f));

var<private> global2: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(true, vec4<u32>(0u, 0u, 1u, 18369u), vec4<i32>(0i, i32(-2147483648), 2147483647i, 27873i)), Struct_1(true, vec4<u32>(27194u, 0u, 57664u, 1u), vec4<i32>(15766i, 7958i, i32(-2147483648), -31109i)), Struct_1(true, vec4<u32>(50200u, 4294967295u, 0u, 10412u), vec4<i32>(-25848i, i32(-2147483648), -1945i, -22051i)), Struct_1(true, vec4<u32>(68977u, 1u, 4660u, 4294967295u), vec4<i32>(-1i, 38634i, -2799i, 574i)), Struct_1(true, vec4<u32>(25659u, 0u, 0u, 26133u), vec4<i32>(40563i, -49716i, -1i, -4624i)), Struct_1(true, vec4<u32>(0u, 1u, 1u, 52734u), vec4<i32>(4466i, -1i, 2147483647i, 0i)), Struct_1(true, vec4<u32>(32396u, 0u, 12748u, 32034u), vec4<i32>(1i, -9026i, -27942i, 2147483647i)), Struct_1(false, vec4<u32>(1u, 0u, 93168u, 688u), vec4<i32>(0i, 0i, -8637i, 2147483647i)), Struct_1(true, vec4<u32>(353u, 1u, 1u, 4294967295u), vec4<i32>(2147483647i, 7374i, 45766i, -34726i)), Struct_1(false, vec4<u32>(1755u, 1u, 43778u, 8208u), vec4<i32>(-23153i, i32(-2147483648), 0i, 2147483647i)), Struct_1(true, vec4<u32>(18359u, 7334u, 11795u, 35566u), vec4<i32>(0i, 0i, 59151i, 64205i)), Struct_1(true, vec4<u32>(43447u, 25822u, 1u, 4294967295u), vec4<i32>(2147483647i, -1i, -14302i, 1i)), Struct_1(false, vec4<u32>(4294967295u, 92825u, 25190u, 31930u), vec4<i32>(2147483647i, 3362i, 11639i, -69577i)), Struct_1(true, vec4<u32>(3158u, 10896u, 4294967295u, 48269u), vec4<i32>(-196i, -40870i, 0i, -9497i)), Struct_1(true, vec4<u32>(13694u, 4294967295u, 0u, 48714u), vec4<i32>(10610i, 1i, -1i, -1i)));

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: f32) -> i32 {
    var var_0 = Struct_3(8382i, Struct_1((-arg_1.a >> (4294967295u ^ 84749u)) > ((arg_0.a.c.x ^ u_input.b) / ~arg_0.b), ~vec4<u32>(~arg_0.a.b.x, 72505u << arg_1.b.b.x, u_input.a, ~u_input.a), arg_0.a.c));
    var var_1 = Struct_3(u_input.b, Struct_1(var_0.b.a, u_input.c, arg_1.b.c << (select(arg_1.b.b, arg_1.b.b, arg_1.b.a) - vec4<u32>(0u, var_0.b.b.x, arg_0.a.b.x, var_0.b.b.x))));
    var var_2 = vec2<i32>(17594i >> firstLeadingBit(u_input.c.x), u_input.b);
    let var_3 = any(select(vec4<bool>(false, (arg_2 / 293f) >= exp2(442f), false, any(select(vec3<bool>(true, true, false), vec3<bool>(var_0.b.a, true, arg_1.b.a), var_0.b.a))), vec4<bool>(arg_1.b.a, any(!vec3<bool>(var_1.b.a, false, var_0.b.a)), !(var_0.b.a && false), arg_1.b.a), select(select(!vec4<bool>(true, true, arg_0.a.a, true), vec4<bool>(arg_0.a.a, false, var_1.b.a, false), select(vec4<bool>(false, arg_0.a.a, false, arg_0.a.a), vec4<bool>(var_0.b.a, arg_1.b.a, var_1.b.a, true), arg_1.b.a)), !vec4<bool>(true, false, var_0.b.a, arg_0.a.a), vec4<bool>(true, !arg_0.a.a, -326f <= arg_2, var_0.b.a & var_1.b.a))));
    let var_4 = var_1.b;
    return u_input.b;
}

fn func_2() -> Struct_3 {
    var var_0 = global1[((countOneBits(u_input.c.x) * 51565u) * 4294967295u) * u_input.c.x];
    global0 = 46048i * dot(vec4<i32>(u_input.b, func_3(Struct_2(global2[4294967295u], 2147483647i), Struct_3(u_input.b, Struct_1(true, u_input.c, vec4<i32>(-1i, u_input.b, 2147483647i, 2147483647i))), step(-1028f, -1265f)), u_input.b, func_3(Struct_2(Struct_1(false, vec4<u32>(u_input.a, u_input.c.x, 4294967295u, u_input.c.x), vec4<i32>(u_input.b, 27713i, 0i, 0i)), -1i), Struct_3(u_input.b, Struct_1(false, vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), vec4<i32>(0i, u_input.b, 18106i, 1i))), var_0.x)), -select(-vec4<i32>(u_input.b, u_input.b, u_input.b, -38373i), min(vec4<i32>(u_input.b, i32(-2147483648), -1i, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.b, 20844i)), !false));
    var var_1 = Struct_3(clamp(-7138i, i32(-2147483648) / -(~u_input.b), -(-2147483647i) << ~(u_input.a >> 0u)), global2[u_input.a]);
    let var_2 = ~u_input.b - 32829i;
    global2 = array<Struct_1, 15>();
    return Struct_3(dot(abs(var_1.b.c.zz) & select(-vec2<i32>(1i, var_2), ~vec2<i32>(1i, var_2), select(vec2<bool>(var_1.b.a, false), vec2<bool>(true, true), var_1.b.a)), abs(~vec2<i32>(-1i, 1i))), var_1.b);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: vec4<i32>, arg_3: u32) -> Struct_3 {
    global2 = array<Struct_1, 15>();
    let var_0 = ~(((vec2<u32>(arg_3, 4294967295u) % vec2<u32>(arg_3, arg_3)) & ~firstTrailingBit(vec2<u32>(1u, 4294967295u))) % vec2<u32>(11947u - u_input.c.x, ~42764u >> 21435u));
    let var_1 = func_2();
    global2 = array<Struct_1, 15>();
    let var_2 = Struct_2(func_2().b, -(~35011i));
    return Struct_3(firstTrailingBit(~var_1.b.c.x), global2[arg_3]);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: bool, arg_3: Struct_2) -> vec2<bool> {
    return vec2<bool>(!func_2().b.a, 0u < 2018u);
}

fn func_5(arg_0: f32, arg_1: vec2<bool>, arg_2: vec2<u32>) -> i32 {
    let var_0 = func_2().b.a;
    var var_1 = -(-((exp2(arg_0) + floor(-3065f)) - -(-239f)));
    var_1 = arg_0;
    var var_2 = func_4(func_1(-(-(global1[4294967295u] - vec3<f32>(arg_0, 126f, arg_0))), abs(clamp(vec2<i32>(0i, u_input.b), vec2<i32>(20807i, u_input.b), vec2<i32>(u_input.b, -3967i))) * ~(~vec2<i32>(u_input.b, u_input.b)), vec4<i32>(-1i, -func_2().b.c.x, 2147483647i, firstTrailingBit(-16154i)), min(arg_2.x & 1u, u_input.c.x) * (arg_2.x / dot(vec4<u32>(14924u, 0u, arg_2.x, arg_2.x), vec4<u32>(20270u, 1u, arg_2.x, 67622u)))), Struct_3(40079i >> ~(~u_input.a), global2[19203u]), var_0, Struct_2(global2[arg_2.x], dot(vec3<i32>(u_input.b, 0i, u_input.b), select(vec3<i32>(u_input.b, 10807i, 2147483647i), vec3<i32>(-13627i, u_input.b, -21891i), vec3<bool>(false, true, var_0))) - (u_input.b ^ -9075i)));
    var_1 = arg_0;
    return firstLeadingBit(-5477i << ~(abs(0u) & 121086u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(-(-1305f) - 309f, func_4(Struct_3(clamp(-13267i, -1i, u_input.b), Struct_1(false, vec4<u32>(u_input.c.x, u_input.c.x, 57750u, 35934u), vec4<i32>(12609i, 24919i, -20262i, u_input.b))), func_1(vec3<f32>(-503f, 389f, -357f), vec2<i32>(u_input.b, -5505i), -vec4<i32>(u_input.b, u_input.b, u_input.b, 0i), abs(u_input.c.x)), !(72795u > u_input.a), Struct_2(global2[u_input.c.x], func_1(global1[u_input.c.x], vec2<i32>(2147483647i, u_input.b), vec4<i32>(u_input.b, -62409i, u_input.b, -36032i), u_input.a).a)), vec2<u32>(~(1u & u_input.a), ~u_input.c.x % u_input.a)) >> 0u;
    global2 = array<Struct_1, 15>();
    let var_0 = vec3<bool>(false != false, all(select(func_4(Struct_3(u_input.b, Struct_1(true, u_input.c, vec4<i32>(38640i, 0i, u_input.b, u_input.b))), func_2(), all(vec2<bool>(false, false)), Struct_2(global2[1u], i32(-2147483648))), select(vec2<bool>(false, false), func_4(Struct_3(u_input.b, global2[u_input.c.x]), Struct_3(18730i, Struct_1(true, vec4<u32>(u_input.c.x, u_input.a, 64240u, u_input.c.x), vec4<i32>(u_input.b, u_input.b, -44892i, i32(-2147483648)))), true, Struct_2(Struct_1(true, u_input.c, vec4<i32>(u_input.b, u_input.b, u_input.b, 2147483647i)), u_input.b)), func_4(Struct_3(u_input.b, global2[u_input.c.x]), Struct_3(35041i, global2[u_input.c.x]), false, Struct_2(global2[u_input.c.x], -6732i))), !vec2<bool>(false, false))), true);
    let var_1 = u_input.c.x;
    let var_2 = vec3<bool>(var_0.x, var_0.x, false);
    let var_3 = Struct_2(global2[dot(func_1(vec3<f32>(318f, -1472f, 1205f) * global1[u_input.c.x], vec2<i32>(1i, 0i) | vec2<i32>(0i, u_input.b), vec4<i32>(u_input.b, 0i, i32(-2147483648), 39301i) % vec4<i32>(u_input.b, -13121i, u_input.b, u_input.b), 89298u).b.b.yx * u_input.c.xw, vec2<u32>(reverseBits(~var_1), abs(u_input.c.x)))], 14266i);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

