// {"0:0":[94,65,233,213,99,11,131,11,224,15,60,23,183,199,179,146,97,46,4,96,26,53,224,91,105,134,234,47,40,73,153,207,45,177,174,175,211,125,111,107,27,82,103,0,68,133,112,126]}
// Seed: 1634800194004295807

struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20> = array<u32, 20>(12502u, 51735u, 4294967295u, 1u, 0u, 1u, 4294967295u, 17373u, 24183u, 16403u, 104598u, 68011u, 4294967295u, 115568u, 1u, 4294967295u, 35055u, 12064u, 85273u, 20482u);

fn func_3(arg_0: Struct_1) -> i32 {
    global0 = array<u32, 20>();
    var var_0 = Struct_3(Struct_1(~select(vec3<u32>(33600u, 35154u, 57347u), u_input.a, !false), ~clamp(vec4<u32>(1u, u_input.a.x, 1u, 0u), arg_0.b, vec4<u32>(global0[global0[1168u]], 99196u, 10557u, global0[4294967295u])) ^ ((vec4<u32>(47007u, arg_0.a.x, u_input.c.x, 0u) >> vec4<u32>(global0[global0[global0[1u]]], u_input.c.x, global0[arg_0.b.x], 42812u)) + arg_0.b), step(-arg_0.c, arg_0.c / arg_0.c) - step(-vec3<f32>(-773f, arg_0.c.x, -1380f), -vec3<f32>(arg_0.c.x, -437f, -449f)), arg_0.d), Struct_2(u_input.b.x), max(u_input.a.x, arg_0.a.x), global0[1u - global0[29400u]] | max(u_input.a.x, ~dot(vec4<u32>(arg_0.d.x, 65517u, global0[arg_0.b.x], arg_0.d.x), arg_0.b)), Struct_2(0i));
    let var_1 = -821f;
    var_0 = Struct_3(Struct_1(max(vec3<u32>(dot(vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(45123u, 98150u)), var_0.d, min(u_input.c.x, arg_0.a.x)), ~clamp(var_0.a.a, arg_0.d, vec3<u32>(54602u, global0[var_0.d], 0u))), firstTrailingBit(~arg_0.b) % ~(arg_0.b ^ arg_0.b), arg_0.c, u_input.a), Struct_2(var_0.e.a), 4294967295u, 32169u, var_0.e);
    var var_2 = Struct_4(var_0.e);
    return 1i;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: vec3<bool>) -> vec3<u32> {
    global0 = array<u32, 20>();
    var var_0 = Struct_1(u_input.a, ~vec4<u32>(clamp(~u_input.a.x, global0[47047u], dot(u_input.a, u_input.a)), global0[0u >> u_input.c.x], 0u, dot(vec2<u32>(u_input.c.x, u_input.a.x), vec2<u32>(u_input.c.x, 0u)) % 40620u), step(vec3<f32>(sign(-765f) / min(-1064f, -1000f), sign(-1094f), -(-373f + -648f)), vec3<f32>(-1000f + ceil(1150f), round(377f), abs(-102f))), u_input.a);
    global0 = array<u32, 20>();
    global0 = array<u32, 20>();
    return vec3<u32>(min(countOneBits(var_0.a.x), 1u), arg_0.x, u_input.c.x);
}

fn func_2(arg_0: f32) -> bool {
    let var_0 = Struct_1(abs(func_4(vec2<u32>(~global0[u_input.a.x], 76056u % u_input.c.x), Struct_2(func_3(Struct_1(vec3<u32>(u_input.c.x, 52385u, 20641u), vec4<u32>(u_input.a.x, 0u, global0[u_input.c.x], 25820u), vec3<f32>(131f, arg_0, 1437f), u_input.a))), firstTrailingBit(vec3<i32>(1i, 0i, u_input.b.x) << vec3<u32>(34358u, 34475u, 17403u)), vec3<bool>(true && true, true || false, !false))), ~vec4<u32>(28659u, 72990u / dot(u_input.a, u_input.a), ~(~global0[0u]), u_input.a.x), round(vec3<f32>(ceil(round(arg_0)), min(-arg_0, -arg_0), arg_0)), vec3<u32>(~(~4294967295u), ~global0[~4728u], 4294967295u / (u_input.c.x - ~global0[u_input.c.x])));
    var var_1 = 1601f;
    var var_2 = 19653i;
    global0 = array<u32, 20>();
    var var_3 = vec4<u32>(4294967295u, 4294967295u, var_0.d.x, firstTrailingBit(var_0.d.x));
    return !true;
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: Struct_3) -> Struct_1 {
    let var_0 = !select(!select(!vec4<bool>(arg_1, true, arg_1, arg_1), !vec4<bool>(arg_1, arg_1, arg_1, true), select(vec4<bool>(arg_1, arg_1, arg_1, false), vec4<bool>(arg_1, true, arg_1, false), arg_1)), select(vec4<bool>(false, any(vec2<bool>(arg_1, true)), !arg_1, false), select(select(vec4<bool>(arg_1, true, arg_1, arg_1), vec4<bool>(false, false, false, arg_1), true), !vec4<bool>(false, arg_1, true, arg_1), !vec4<bool>(true, arg_1, arg_1, arg_1)), arg_1), select(vec4<bool>(global0[1u] >= 0u, arg_1, arg_1 || arg_1, arg_1), select(select(vec4<bool>(true, true, arg_1, true), vec4<bool>(arg_1, true, false, arg_1), false), select(vec4<bool>(false, arg_1, false, false), vec4<bool>(true, arg_1, true, arg_1), vec4<bool>(arg_1, false, true, false)), !vec4<bool>(arg_1, arg_1, true, false)), arg_1));
    let var_1 = arg_2.a;
    var var_2 = select(-arg_2.a.c, round(-ceil(arg_2.a.c) - var_1.c), vec3<bool>(var_0.x, !(-877f > arg_2.a.c.x), any(!vec4<bool>(arg_1, var_0.x, true, var_0.x))));
    let var_3 = var_0;
    var var_4 = exp2(-var_1.c);
    return arg_2.a;
}

fn func_1() -> Struct_2 {
    global0 = array<u32, 20>();
    let var_0 = Struct_4(Struct_2(abs(~14377i)));
    var var_1 = Struct_3(func_5(sign(-265f), !select(select(true, true, true), func_2(-1643f), !false), Struct_3(Struct_1(~u_input.a, reverseBits(vec4<u32>(0u, 76560u, 85689u, u_input.c.x)), round(vec3<f32>(-1021f, 592f, 900f)), ~u_input.a), var_0.a, ~(~global0[u_input.a.x]), u_input.a.x, var_0.a)), var_0.a, 4294967295u, u_input.a.x, Struct_2(min(dot(-u_input.b, u_input.b % u_input.b), abs(-(-33370i)))));
    var_1 = Struct_3(var_1.a, Struct_2(22201i), u_input.c.x, var_1.d, var_1.e);
    let var_2 = Struct_3(var_1.a, var_1.b, ~global0[u_input.a.x - u_input.a.x], ~u_input.a.x, var_1.e);
    return var_0.a;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<f32>) -> vec2<bool> {
    global0 = array<u32, 20>();
    let var_0 = Struct_3(arg_0, func_1(), min(~(~(58104u * 1u)), firstTrailingBit(firstLeadingBit(6426u) + dot(u_input.a.yy, vec2<u32>(u_input.a.x, global0[4294967295u])))), ~1u << global0[arg_0.a.x], func_1());
    var var_1 = func_5(arg_0.c.x, true, var_0);
    var var_2 = sign(var_1.c.x) - 1502f;
    var var_3 = -max(vec4<f32>(var_0.a.c.x, var_0.a.c.x, -503f - -1000f, -arg_2.x), vec4<f32>(round(arg_0.c.x), exp2(var_0.a.c.x), -var_1.c.x, arg_2.x)) / (sign(-(vec4<f32>(-689f, 1238f, 1941f, -264f) - vec4<f32>(var_1.c.x, -2106f, arg_2.x, -1456f))) + vec4<f32>(round(sign(arg_0.c.x)), arg_2.x, var_1.c.x, arg_2.x));
    return !select(!(!select(vec2<bool>(false, true), vec2<bool>(false, true), false)), vec2<bool>(false, all(!vec2<bool>(false, false))), !all(vec2<bool>(true, false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!(!(!vec2<bool>(false, false))), select(select(!vec2<bool>(false, true), vec2<bool>(!false, true), !true && any(vec2<bool>(true, true))), !(!(!vec2<bool>(true, false))), select(vec2<bool>(23395u == 41837u, u_input.a.x < 4294967295u), func_6(Struct_1(vec3<u32>(52985u, u_input.c.x, 42966u), vec4<u32>(u_input.a.x, u_input.c.x, 54337u, 4294967295u), vec3<f32>(1604f, -2366f, -318f), vec3<u32>(global0[global0[global0[global0[u_input.a.x]]]], 1u, 1u)), func_1(), -vec2<f32>(-2126f, 1849f)), !(!vec2<bool>(true, false)))), select(true == !true, !(-1i > u_input.b.x), false) && select(false, func_6(Struct_1(vec3<u32>(0u, global0[1u], 4294967295u), vec4<u32>(u_input.c.x, u_input.a.x, 4294967295u, 4294967295u), vec3<f32>(-1148f, 860f, 554f), vec3<u32>(u_input.c.x, 0u, global0[79764u])), func_1(), vec2<f32>(209f, -1078f) + vec2<f32>(686f, -522f)).x, true));
    var var_1 = -(u_input.b.x / u_input.b.x);
    var var_2 = -func_5(-1105f, select(any(vec3<bool>(var_0.x, true, var_0.x)), true, 12637u < u_input.a.x), Struct_3(Struct_1(u_input.a, vec4<u32>(u_input.c.x, u_input.a.x, 0u, 9882u), vec3<f32>(1038f, -376f, -1022f), vec3<u32>(4294967295u, 51034u, 16261u)), func_1(), 1u, min(global0[56179u], u_input.a.x), func_1())).c.xz - ((((vec2<f32>(1278f, 1034f) + vec2<f32>(-776f, 1049f)) * (vec2<f32>(733f, -655f) + vec2<f32>(289f, -374f))) * vec2<f32>(-1228f, max(666f, -254f))) / vec2<f32>(-sign(-940f), max(step(-2831f, 2381f), -(-403f))));
    let var_3 = u_input.b.xzx;
    var var_4 = Struct_3(Struct_1(~(u_input.a | u_input.a) * u_input.a, select(vec4<u32>(1u, u_input.c.x, u_input.c.x, 1u) % select(vec4<u32>(48801u, 18704u, u_input.c.x, global0[u_input.c.x]), vec4<u32>(0u, u_input.a.x, 51175u, 1u), vec4<bool>(var_0.x, false, var_0.x, var_0.x)), ~vec4<u32>(u_input.c.x, global0[global0[global0[u_input.c.x]]], 0u, global0[global0[global0[global0[u_input.c.x]]]]), var_0.x || (var_3.x != u_input.b.x)), vec3<f32>(-688f, -1251f - -1183f, (var_2.x + -1000f) * abs(-803f)), u_input.a), func_1(), reverseBits(u_input.c.x), abs(u_input.a.x) << ~global0[func_5(-var_2.x, func_2(352f), Struct_3(Struct_1(u_input.a, vec4<u32>(52114u, global0[0u], global0[u_input.a.x], 32294u), vec3<f32>(var_2.x, var_2.x, var_2.x), u_input.a), Struct_2(var_3.x), global0[1u], global0[global0[u_input.c.x]], Struct_2(-39773i))).a.x], Struct_2(0i));
    let var_5 = func_5(1000f, !var_0.x, Struct_3(func_5(-var_4.a.c.x - step(1549f, var_2.x), var_0.x, Struct_3(var_4.a, var_4.e, var_4.d << u_input.a.x, clamp(0u, global0[4294967295u], u_input.a.x), func_1())), func_1(), var_4.d, 1u, Struct_2(dot(vec4<i32>(var_4.b.a, -8014i, u_input.b.x, var_3.x) % u_input.b, u_input.b >> vec4<u32>(4294967295u, u_input.a.x, var_4.d, var_4.d)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.b, min(max(u_input.b, vec4<i32>(firstTrailingBit(1i), -var_4.e.a, -26118i, -1i)), max(vec4<i32>(-18663i | i32(-2147483648), 1i % 12128i, reverseBits(1i), var_3.x % -2822i), clamp(u_input.b, abs(vec4<i32>(var_4.e.a, var_4.b.a, 0i, -46365i)), -vec4<i32>(var_4.b.a, 1i, i32(-2147483648), 1i)))));
}

