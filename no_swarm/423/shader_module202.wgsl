// {"0:0":[121,84,181,111,249,254,96,238,197,153,76,126,42,216,192,31]}
// Seed: 136937207682575380

struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 13> = array<vec4<u32>, 13>(vec4<u32>(7406u, 58694u, 103573u, 0u), vec4<u32>(4294967295u, 54282u, 78616u, 1u), vec4<u32>(4294967295u, 9382u, 12693u, 14915u), vec4<u32>(43596u, 0u, 1u, 32931u), vec4<u32>(51282u, 126599u, 12406u, 4013u), vec4<u32>(0u, 10574u, 1u, 4294967295u), vec4<u32>(4294967295u, 0u, 55527u, 10144u), vec4<u32>(77823u, 4294967295u, 46803u, 1u), vec4<u32>(446u, 22290u, 26592u, 8887u), vec4<u32>(39561u, 4538u, 366u, 32734u), vec4<u32>(11466u, 30424u, 49860u, 4294967295u), vec4<u32>(1u, 1u, 1u, 52398u), vec4<u32>(9443u, 1u, 16123u, 8248u));

var<private> global1: array<vec4<bool>, 20>;

var<private> global2: u32 = 4294967295u;

fn func_3(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: vec4<i32>) -> bool {
    global1 = array<vec4<bool>, 20>();
    var var_0 = ~reverseBits(abs(u_input.c.x) % ~(1i ^ 76857i));
    let var_1 = Struct_2(max(18398i, firstLeadingBit(~46488i / (arg_2.x / -1i))), Struct_1(true, false));
    var var_2 = (~firstLeadingBit(vec3<u32>(u_input.a, u_input.a, 901u) & vec3<u32>(29557u, 4294967295u, u_input.a)) * (countOneBits(min(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(0u, 0u, u_input.a))) >> abs(vec3<u32>(4294967295u, 41836u, u_input.a) * vec3<u32>(0u, u_input.a, u_input.a)))) ^ ~(vec3<u32>(u_input.a, u_input.a, u_input.a ^ 136822u) & ~vec3<u32>(u_input.a, 1u, 1u));
    global0 = array<vec4<u32>, 13>();
    return var_1.b.a;
}

fn func_2() -> vec2<i32> {
    var var_0 = 0i;
    var var_1 = func_3(select(-(-vec2<f32>(383f, -267f)), -vec2<f32>(-770f, -185f), !(!vec2<bool>(false, true))), ~abs(vec3<i32>(2147483647i, 2147483647i, -73281i)), -(-vec4<i32>(u_input.b, i32(-2147483648), 52540i, i32(-2147483648)) >> ~global0[u_input.a])) & (~u_input.a != u_input.a);
    let var_2 = select(select(select(!select(vec2<bool>(true, false), vec2<bool>(false, false), false), !(!vec2<bool>(true, true)), vec2<bool>(i32(-2147483648) < 1i, 22258i >= 2147483647i)), select(select(vec2<bool>(false, false), !vec2<bool>(false, true), 178f < 183f), select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(false, true), !vec2<bool>(false, true)), any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false)))), select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(true, false), true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false))), !select(vec2<bool>(true, false), vec2<bool>(true, true), false), !true)), select(vec2<bool>(false, (0u * u_input.a) == (u_input.a / 1u)), select(select(!vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, false)), select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true)), vec2<bool>(false, true)), vec2<bool>(!(u_input.b > 12232i), !(!true))), !(!func_3(select(vec2<f32>(877f, 1000f), vec2<f32>(639f, -1000f), vec2<bool>(false, false)), vec3<i32>(u_input.c.x, u_input.b, 2147483647i), -vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.c.x))));
    return u_input.c;
}

fn func_4(arg_0: vec2<i32>) -> Struct_4 {
    let var_0 = Struct_4(Struct_1(!any(!vec3<bool>(false, true, true)), true), u_input.a, ((vec4<i32>(u_input.b, u_input.b, 1i, -35150i) % (vec4<i32>(u_input.c.x, 0i, arg_0.x, u_input.c.x) >> vec4<u32>(u_input.a, 41387u, u_input.a, u_input.a))) + abs(reverseBits(vec4<i32>(-42545i, u_input.b, arg_0.x, -51948i)))) / ~(-vec4<i32>(i32(-2147483648), u_input.b, -1i, 37343i) & (vec4<i32>(-57070i, arg_0.x, i32(-2147483648), 2147483647i) + vec4<i32>(-3471i, -1i, 0i, arg_0.x))), dot(vec4<i32>(~(-u_input.c.x), u_input.c.x, 4779i, ~u_input.c.x), vec4<i32>(~7229i % (-27632i | 11805i), u_input.c.x + u_input.c.x, 56277i, 2147483647i)), Struct_2(-1i, Struct_1(select(true, true, true) | any(vec3<bool>(true, false, false)), false)));
    var var_1 = exp2(vec4<f32>(step(step(1000f, -607f), -343f - -212f), (937f + 461f) + (-1000f - -927f), -388f, -1266f) * ceil(vec4<f32>(-1000f + -209f, 323f - -1338f, min(277f, -1801f), -(-839f))));
    var var_2 = !(!all(vec3<bool>(false, !false, false && false)));
    var_2 = var_0.a.a;
    var var_3 = Struct_3(dot(vec2<u32>(var_0.b, 31381u), min(vec2<u32>(4294967295u, 3409u) * vec2<u32>(0u, 21321u), ~vec2<u32>(4294967295u, 97377u)) >> select(vec2<u32>(var_0.b, u_input.a), vec2<u32>(25433u, var_0.b) | vec2<u32>(0u, 48605u), !vec2<bool>(var_0.a.a, var_0.a.a))), var_0.a);
    return var_0;
}

fn func_5(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_4) -> Struct_1 {
    global1 = array<vec4<bool>, 20>();
    global0 = array<vec4<u32>, 13>();
    var var_0 = !select(select(!vec2<bool>(false, true), !(!vec2<bool>(true, arg_0.b.b)), vec2<bool>(arg_2.a.a, arg_0.b.b)), select(select(!vec2<bool>(arg_2.e.b.b, true), select(vec2<bool>(arg_0.b.b, true), vec2<bool>(false, arg_0.b.a), arg_2.a.a), true), vec2<bool>(!arg_0.b.b, true | arg_2.e.b.b), arg_2.e.b.a), arg_0.b.b);
    return func_4(arg_2.c.ww).a;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_3) -> u32 {
    let var_0 = func_5(Struct_2(countOneBits(~u_input.c.x), arg_2.b), countOneBits(abs(vec2<u32>(arg_2.a, arg_2.a))), func_4(func_2()));
    let var_1 = func_4(u_input.c);
    var var_2 = -ceil(vec3<f32>(arg_1.x * -(-2292f), -(1000f / -1162f), 772f + arg_1.x));
    var var_3 = 2147483647i;
    global0 = array<vec4<u32>, 13>();
    return u_input.a % var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1((u_input.a * (57894u >> 0u)) < max(~28427u, ~func_1(Struct_1(false, true), vec3<f32>(579f, -1082f, 1035f), Struct_3(u_input.a, Struct_1(true, false)))), !false | (false | ((u_input.a >= u_input.a) || !true)));
    var var_1 = func_2().x;
    global2 = 4294967295u >> u_input.a;
    let var_2 = Struct_2(u_input.b, var_0);
    global0 = array<vec4<u32>, 13>();
    let var_3 = ~(~firstTrailingBit(min(vec2<u32>(u_input.a, 8031u), abs(vec2<u32>(44544u, 43494u)))));
    let var_4 = Struct_3(firstLeadingBit((529u * dot(vec3<u32>(19937u, 30775u, var_3.x), vec3<u32>(50784u, u_input.a, 4294967295u))) << ~(var_3.x & 1u)), Struct_1(!(!false), var_2.b.b));
    var var_5 = (firstTrailingBit(func_4(func_2()).b) % ~4294967295u) & 1u;
    let var_6 = ~(~vec3<u32>(u_input.a, var_4.a << 4294967295u, var_4.a % 42470u)) >> (vec3<u32>(~(u_input.a & 28073u), ~(4294967295u - 0u), ~28860u) ^ countOneBits(vec3<u32>(4294967295u, 1u / u_input.a, 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(-(-((vec2<f32>(-740f, 1169f) - vec2<f32>(1163f, -275f)) / (vec2<f32>(384f, 1491f) + vec2<f32>(-352f, 1181f)))), -select((11719i / 1i) + -(-39754i), 2147483647i, all(!vec3<bool>(false, var_4.b.b, var_0.b))), ((vec4<i32>(u_input.b, var_2.a, -8204i, -13186i) | vec4<i32>(17983i, 2147483647i, 2201i, 2147483647i)) * -(-vec4<i32>(-1i, var_2.a, u_input.b, u_input.b))) + vec4<i32>(abs(reverseBits(var_2.a)), -(~(-1i)), dot(max(vec4<i32>(var_2.a, -32806i, 1i, 0i), vec4<i32>(i32(-2147483648), 2147483647i, u_input.c.x, 1i)), vec4<i32>(-14389i, -1i, 7837i, -23915i)), 17604i), ((floor(vec2<f32>(513f, 370f)) / -vec2<f32>(204f, -714f)) / ceil(abs(vec2<f32>(-965f, -1000f)))) * (-min(vec2<f32>(-913f, -1000f), vec2<f32>(425f, 881f)) * exp2(-vec2<f32>(-863f, 634f))), abs(4294967295u) * var_3.x);
}

