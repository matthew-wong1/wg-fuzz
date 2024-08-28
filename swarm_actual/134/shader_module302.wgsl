// {"0:0":[175,13,115,169,113,86,167,44,142,207,132,13,126,165,0,42,189,101,218,182,227,138,217,55,177,109,192,32,210,37,221,47,83,162,242,53,131,233,196,113,233,221,234,60,140,112,165,142]}
// Seed: 5501517179874728722

struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec2<f32>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec2<i32>,
    d: i32,
}

struct Struct_4 {
    a: u32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 12>;

var<private> global1: array<bool, 1>;

var<private> global2: array<f32, 12>;

fn func_3(arg_0: i32, arg_1: vec2<i32>) -> i32 {
    global1 = array<bool, 1>();
    return ~(-((~arg_1.x - (29160i / arg_1.x)) & clamp(max(arg_1.x, arg_0), abs(arg_1.x), 1011i)));
}

fn func_2() -> f32 {
    var var_0 = -(countOneBits(-(-7886i) | func_3(17902i, vec2<i32>(-28978i, -22445i))) & min(i32(-2147483648), firstTrailingBit(~(-9643i))));
    let var_1 = vec4<f32>(exp2(step(-abs(399f), step(global2[u_input.b], 2047f) - step(global2[48797u], 388f))), global2[~(~(~0u))], global2[u_input.d.x], global2[17322u]);
    let var_2 = global1[4294967295u] | (~u_input.a >= 1u);
    let var_3 = Struct_1(vec2<u32>(~dot(vec4<u32>(1u, u_input.d.x, 0u, u_input.e) * vec4<u32>(u_input.d.x, 1u, 153242u, u_input.e), ~u_input.c), 1u), -sign(vec4<f32>(var_1.x, var_1.x, -1308f, -844f)) - vec4<f32>(-171f * var_1.x, select(var_1.x, var_1.x, all(vec3<bool>(var_2, var_2, true))), -(-517f), var_1.x - var_1.x), ((-15961i % -7912i) * (dot(vec3<i32>(0i, -1i, 20595i), vec3<i32>(7395i, 1i, i32(-2147483648))) + clamp(-32575i, -25023i, -9945i))) & firstTrailingBit(5803i), countOneBits(0i));
    var var_4 = var_3;
    return var_4.b.x;
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: Struct_3) -> Struct_1 {
    let var_0 = Struct_4(27388u, floor(abs(arg_0.zx)) * arg_2.a.b.wy, arg_2.a.b.yz, arg_2, arg_3.a.x);
    global2 = array<f32, 12>();
    var var_1 = !vec2<bool>(arg_2.e.x, any(vec2<bool>(!false, true)));
    var_1 = select(!arg_1.xx, !vec2<bool>(true, !(arg_1.x & false)), vec2<bool>(true, arg_1.x));
    var_1 = !vec2<bool>(global1[4294967295u - reverseBits(countOneBits(1u))], true);
    return Struct_1(vec2<u32>(0u * ~69443u, ~clamp(17864u + 1040u, ~arg_3.b.a.x, 4294967295u)), vec4<f32>(arg_0.x, -993f, 807f, -arg_2.a.b.x), 1i, i32(-2147483648) + (arg_2.c.d - clamp(arg_2.b, 8434i, reverseBits(arg_3.b.c))));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<f32>) -> f32 {
    var var_0 = func_4(vec3<f32>(-(1000f - arg_1.x), 1416f, -742f) - -vec3<f32>(-1504f, func_2(), max(global2[9951u], -1025f)), vec4<bool>(all(vec3<bool>(false, false, true)), false, 18515i != 0i, !(global1[7518u] && global1[~u_input.e])), Struct_2(Struct_1(~vec2<u32>(24379u, u_input.b), -vec4<f32>(447f, 607f, global2[u_input.a], -1986f), ~22057i >> (u_input.b >> 496u), -37879i ^ -25083i), countOneBits(max(-1i, -3430i) - (i32(-2147483648) & 33198i)), Struct_1(~vec2<u32>(u_input.d.x, 23790u), (vec4<f32>(106f, -1000f, 1168f, arg_1.x) + vec4<f32>(512f, -1513f, arg_1.x, global2[2217u])) / vec4<f32>(global2[u_input.c.x], -730f, arg_1.x, 2299f), -19267i, firstTrailingBit(13485i >> u_input.e)), arg_1, select(arg_0, vec2<bool>(arg_0.x | false, 0u <= 0u), !(!vec2<bool>(global1[59734u], false)))), Struct_3(vec2<i32>(10351i * i32(-2147483648), select(i32(-2147483648), 1i, arg_0.x)) | reverseBits(select(vec2<i32>(1i, 0i), vec2<i32>(1i, 4546i), arg_0)), Struct_1(~vec2<u32>(9332u, u_input.b), round(-vec4<f32>(277f, global2[u_input.d.x], -443f, 398f)), countOneBits(~13655i), 28662i >> 4294967295u), ~((vec2<i32>(2147483647i, -24624i) & vec2<i32>(9991i, -1i)) / (vec2<i32>(1i, 54723i) - vec2<i32>(0i, i32(-2147483648)))), ~func_3(0i / 2147483647i, -vec2<i32>(6666i, -35745i))));
    let var_1 = func_4(vec3<f32>(round(arg_1.x) / global2[u_input.a * var_0.a.x], var_0.b.x, sign(-(-629f))), global0[u_input.a], Struct_2(func_4(exp2(vec3<f32>(1382f, var_0.b.x, 332f)), !(!global0[var_0.a.x]), Struct_2(func_4(var_0.b.zxx, global0[1u], Struct_2(Struct_1(vec2<u32>(u_input.d.x, u_input.c.x), var_0.b, var_0.d, 2147483647i), 16787i, Struct_1(vec2<u32>(u_input.a, 0u), vec4<f32>(arg_1.x, 106f, global2[4294967295u], global2[4294967295u]), 0i, 23829i), arg_1, arg_0), Struct_3(vec2<i32>(var_0.c, var_0.c), Struct_1(var_0.a, vec4<f32>(-576f, arg_1.x, var_0.b.x, -1442f), 0i, -27786i), vec2<i32>(var_0.c, 0i), -8673i)), -(-1i), Struct_1(u_input.c.xz, vec4<f32>(arg_1.x, arg_1.x, var_0.b.x, -563f), var_0.c, 0i), vec2<f32>(1099f, 1856f), !arg_0), Struct_3(min(vec2<i32>(1i, 0i), vec2<i32>(-1i, 0i)), func_4(vec3<f32>(318f, 1000f, -786f), vec4<bool>(arg_0.x, global1[var_0.a.x], global1[var_0.a.x], false), Struct_2(Struct_1(var_0.a, vec4<f32>(643f, -174f, 1294f, -1000f), var_0.c, var_0.c), var_0.d, Struct_1(vec2<u32>(var_0.a.x, u_input.a), vec4<f32>(global2[1u], var_0.b.x, -313f, arg_1.x), 1i, i32(-2147483648)), var_0.b.zz, arg_0), Struct_3(vec2<i32>(0i, var_0.c), Struct_1(vec2<u32>(var_0.a.x, 89350u), vec4<f32>(1143f, 781f, var_0.b.x, global2[var_0.a.x]), 19691i, 2147483647i), vec2<i32>(i32(-2147483648), 0i), var_0.c)), vec2<i32>(var_0.c, var_0.c) ^ vec2<i32>(var_0.d, var_0.d), -(-21449i))), -(~85657i), Struct_1(~u_input.d.yy, var_0.b * vec4<f32>(var_0.b.x, arg_1.x, -607f, global2[var_0.a.x]), -var_0.c, var_0.d), -vec2<f32>(-arg_1.x, arg_1.x * global2[u_input.a]), vec2<bool>(false, !global1[18887u])), Struct_3(vec2<i32>(22220i, ~47684i), Struct_1(var_0.a, var_0.b * vec4<f32>(arg_1.x, 1000f, -2647f, -599f), min(2147483647i & var_0.d, ~var_0.d), var_0.c), min(vec2<i32>(-61512i, 11754i), firstTrailingBit(select(vec2<i32>(2147483647i, 31332i), vec2<i32>(57101i, var_0.c), vec2<bool>(true, true)))), firstTrailingBit((-1i % -1i) + firstTrailingBit(var_0.c))));
    let var_2 = -vec3<i32>(func_3(var_0.d, -vec2<i32>(-116105i, var_1.c)), -21181i, abs((var_0.d - 0i) / select(var_0.d, 1i, false)));
    var var_3 = !global1[37100u];
    let var_4 = Struct_3(vec2<i32>(func_3(var_2.x + var_1.c, vec2<i32>(i32(-2147483648), var_2.x)), ~var_2.x) - ~vec2<i32>(var_0.d | 1i, 1i + 5573i), Struct_1(~(var_0.a | ~var_0.a), -vec4<f32>(1000f, 1000f, step(-488f, -327f), arg_1.x), min((32948i + var_1.d) % -15480i, reverseBits(-var_0.d)), -(-(2505i * -45764i))), var_2.xz, -(-(-var_1.c)));
    return select(var_4.b.b.x, -(-min(var_0.b.x, -var_1.b.x)), select(!(!arg_0.x), all(select(vec2<bool>(global1[6890u], global1[34014u]), !arg_0, select(arg_0, arg_0, vec2<bool>(global1[5029u], arg_0.x)))), false));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 12>();
    let var_0 = any(global0[u_input.e]);
    global2 = array<f32, 12>();
    global0 = array<vec4<bool>, 12>();
    let var_1 = abs(~(-31723i));
    global1 = array<bool, 1>();
    let var_2 = -((select(floor(global2[2626u]), 286f, !global1[16735u]) / func_1(!vec2<bool>(global1[4294967295u], false), step(vec2<f32>(1636f, 1000f), vec2<f32>(167f, global2[1u])))) + -901f);
    let var_3 = u_input.b;
    let var_4 = vec3<f32>(512f - exp2(global2[var_3]), -((floor(793f) * (144f - var_2)) / -(global2[var_3] + global2[114729u])), 1000f);
    let x = u_input.a;
    s_output = StorageBuffer(-((var_4.xz + min(var_4.yx, vec2<f32>(var_4.x, var_2))) * (var_4.yy * (var_4.yx * vec2<f32>(-599f, -401f)))), firstTrailingBit(-vec4<i32>(var_1 * 3311i, var_1 * 28642i, 2147483647i, var_1)), var_1, ~firstLeadingBit(max(-(-1i), ~2147483647i)));
}

