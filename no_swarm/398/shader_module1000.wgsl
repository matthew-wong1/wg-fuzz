// {"0:0":[142,143,33,155,232,6,247,44,164,14,155,67,22,44,129,170,129,211,216,181,62,36,148,86,87,225,86,105,164,123,143,206]}
// Seed: 14403441744473918886

struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec2<f32>,
    d: vec4<f32>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: bool,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5>;

var<private> global1: array<vec3<f32>, 1>;

fn func_3(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: u32, arg_3: vec4<i32>) -> vec2<f32> {
    global0 = array<bool, 5>();
    let var_0 = ~vec2<u32>(arg_1.a, arg_1.a);
    let var_1 = Struct_3(u_input.b, trunc(abs(arg_1.b)), true);
    global1 = array<vec3<f32>, 1>();
    var var_2 = Struct_4(~vec2<u32>(countOneBits(arg_2), ~(~1u)), Struct_3(u_input.b + 24336u, abs(vec2<f32>(-1000f, arg_1.b.x) + vec2<f32>(arg_1.b.x, arg_1.b.x)), var_1.c), exp2(vec2<f32>(-(-1060f), arg_1.b.x)));
    return arg_1.b;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_4(abs(~(~vec2<u32>(u_input.b, 28164u))) + vec2<u32>(34295u, ~u_input.b + u_input.b), Struct_3(((u_input.b * u_input.b) - u_input.b) + 22302u, exp2(-vec2<f32>(1000f, -415f)) * vec2<f32>(step(1086f, -476f), min(1347f, -1000f)), min(-1609f / 1030f, -(-401f)) <= 855f), (func_3(vec4<i32>(u_input.d, -1017i, u_input.a.x, 0i), Struct_3(u_input.b, vec2<f32>(1337f, -425f), true), reverseBits(u_input.b), vec4<i32>(u_input.c.x, -1i, u_input.c.x, 20821i) % vec4<i32>(u_input.c.x, u_input.d, -16521i, 21191i)) / vec2<f32>(-682f, 1263f - 386f)) + vec2<f32>(sign(exp2(-1740f)), -1857f / trunc(1000f)));
    var var_1 = global0[19382u];
    var var_2 = Struct_3(u_input.b, vec2<f32>((-var_0.c.x - var_0.b.b.x) - var_0.b.b.x, max((var_0.c.x - var_0.b.b.x) / (-1000f - 1532f), var_0.c.x * exp2(-117f))), !global0[4294967295u]);
    let var_3 = ~(~24099u);
    var var_4 = Struct_1(false);
    return Struct_2(vec4<i32>(-u_input.d, -7453i, -(0i), select(u_input.c.x, -10898i >> 4294967295u, !var_2.c)) + ((vec4<i32>(i32(-2147483648), u_input.d, -39604i, -1i) - (vec4<i32>(u_input.d, i32(-2147483648), -11085i, i32(-2147483648)) * vec4<i32>(2147483647i, -5560i, i32(-2147483648), 1i))) * vec4<i32>(1i, 12336i, max(u_input.d, u_input.a.x), 5297i)), Struct_1(any(!vec3<bool>(true, false, false))), vec2<f32>(var_2.b.x, exp2(exp2(-385f))), -vec4<f32>(521f + trunc(-671f), -sign(var_2.b.x), step(var_0.c.x * var_2.b.x, floor(var_2.b.x)), var_2.b.x), firstTrailingBit(-select(-u_input.c, countOneBits(u_input.c), !vec2<bool>(true, true))));
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    let var_0 = func_2();
    global1 = array<vec3<f32>, 1>();
    global0 = array<bool, 5>();
    var var_1 = vec3<u32>(~reverseBits(u_input.b), arg_0.a, 7496u);
    let var_2 = Struct_4(~(~vec2<u32>(0u / u_input.b, 0u)), Struct_3(u_input.b << (select(0u, u_input.b, false) / 33409u), -vec2<f32>(-1193f, 1285f), global0[dot(~reverseBits(vec3<u32>(0u, 22844u, u_input.b)), abs(vec3<u32>(u_input.b, 1u, var_1.x)))]), ((-vec2<f32>(690f, var_0.d.x) * (var_0.c * vec2<f32>(-1000f, var_0.c.x))) / -vec2<f32>(var_0.c.x, arg_0.b.x)) - func_2().c);
    return var_0.b;
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    global0 = array<bool, 5>();
    let var_0 = Struct_3(0u, -(-arg_0.d.yz), true);
    global1 = array<vec3<f32>, 1>();
    global0 = array<bool, 5>();
    let var_1 = func_1(Struct_3(39543u << var_0.a, -sign(var_0.b) + -max(vec2<f32>(-177f, -511f), arg_0.c), !false));
    return func_2();
}

fn func_5(arg_0: Struct_2, arg_1: vec3<bool>) -> Struct_2 {
    global0 = array<bool, 5>();
    var var_0 = vec2<f32>(arg_0.d.x + ((-arg_0.c.x + abs(-291f)) * -(682f * arg_0.d.x)), arg_0.d.x);
    global0 = array<bool, 5>();
    global1 = array<vec3<f32>, 1>();
    var var_1 = arg_0.a.www;
    return Struct_2(func_2().a, arg_0.b, arg_0.c, ceil(trunc(abs(vec4<f32>(1220f, 156f, var_0.x, -751f)))) - arg_0.d, vec2<i32>(~(-var_1.x), var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<f32>, 1>();
    global0 = array<bool, 5>();
    global0 = array<bool, 5>();
    let var_0 = func_5(func_4(Struct_2(vec4<i32>(max(u_input.a.x, 13734i), u_input.c.x / u_input.d, dot(vec4<i32>(u_input.d, i32(-2147483648), 2147483647i, u_input.d), vec4<i32>(-3072i, u_input.d, 1i, i32(-2147483648))), -1i), func_1(Struct_3(u_input.b, vec2<f32>(-1270f, 155f), global0[97083u])), -(-vec2<f32>(-738f, 257f)), (vec4<f32>(-1000f, 1883f, 3340f, -416f) - vec4<f32>(1000f, 362f, -249f, -1814f)) / (vec4<f32>(-1397f, 1572f, 1000f, -487f) - vec4<f32>(646f, -2265f, -617f, 1528f)), u_input.a)), vec3<bool>(select(!global0[u_input.b], !(!global0[u_input.b]), global0[47186u | ~u_input.b]), global0[u_input.b], func_2().b.a));
    var var_1 = vec4<bool>(!all(!vec4<bool>(true, global0[u_input.b], global0[u_input.b], false)), !func_4(func_4(Struct_2(var_0.a, Struct_1(false), vec2<f32>(var_0.d.x, 1914f), var_0.d, vec2<i32>(u_input.a.x, u_input.a.x)))).b.a, (any(select(vec2<bool>(false, global0[u_input.b]), vec2<bool>(var_0.b.a, global0[u_input.b]), var_0.b.a)) && global0[dot(vec2<u32>(37618u, u_input.b) + vec2<u32>(4294967295u, u_input.b), vec2<u32>(1u, u_input.b))]) & all(select(!vec3<bool>(true, var_0.b.a, true), !vec3<bool>(var_0.b.a, false, global0[u_input.b]), vec3<bool>(true, false, false))), all(vec4<bool>(func_5(var_0, !vec3<bool>(true, true, false)).b.a, !global0[u_input.b], false, true)));
    var var_2 = ~(u_input.b + min(u_input.b, u_input.b));
    var_2 = 0u;
    var var_3 = vec4<bool>(!false, global0[4294967295u], false, var_1.x);
    var_2 = dot(vec4<u32>(u_input.b, u_input.b, u_input.b / min(~u_input.b, u_input.b), 0u), (~(vec4<u32>(u_input.b, 4294967295u, 0u, u_input.b) & vec4<u32>(u_input.b, u_input.b, 39861u, 1u)) | firstLeadingBit(vec4<u32>(u_input.b, u_input.b, 11551u, 100434u) - vec4<u32>(1u, 19661u, u_input.b, u_input.b))) ^ ~abs(select(vec4<u32>(u_input.b, u_input.b, 0u, 4294967295u), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<bool>(true, var_1.x, var_0.b.a, true))));
    let x = u_input.a;
    s_output = StorageBuffer(-dot(vec2<i32>(abs(0i), u_input.c.x), clamp(vec2<i32>(u_input.a.x, 9155i) << vec2<u32>(1u, u_input.b), u_input.c, -var_0.e)), var_0.d.x, vec4<f32>(-var_0.d.x, var_0.d.x, -(-452f), -var_0.d.x + exp2(228f)));
}

