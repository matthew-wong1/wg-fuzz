// {"0:0":[237,134,226,75,81,112,108,48,182,50,218,196,224,215,166,125,83,79,18,2,139,103,32,82,151,255,80,183,10,158,56,251,164,137,139,202,120,103,133,202,123,250,36,240,156,9,107,67,113,176,165,2,39,248,10,20,37,34,89,76,169,35,122,22]}
// Seed: 12933775231384523459

struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3() -> bool {
    let var_0 = Struct_1(select(!select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true), vec3<bool>(true, false, false)), select(select(vec3<bool>(true, true, false), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), vec3<bool>(true, true, false)), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false), vec3<bool>(false, false, false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false)), !vec3<bool>(false, false, true)), vec3<bool>(false, any(vec2<bool>(false, false)), any(vec3<bool>(false, false, true)))), u_input.b.x, vec4<u32>(min((1u - u_input.a.x) >> (u_input.d.x * 16250u), dot(u_input.d.ywx, abs(u_input.d.yyy))), ~dot(u_input.a, u_input.d.yy) & 0u, ~(u_input.d.x * 1u), (u_input.c.x * 23628u) << firstTrailingBit(0u)), select(u_input.a.x, 5921u, (u_input.b.x * u_input.b.x) > countOneBits(u_input.b.x / u_input.b.x)));
    let var_1 = Struct_4(-(-(-1595f)), var_0);
    let var_2 = Struct_1(select(!vec3<bool>(var_0.a.x, var_1.b.c.x > u_input.d.x, all(var_0.a.xx)), !var_0.a, (-1000f * var_1.a) < var_1.a), firstTrailingBit(2147483647i) - firstLeadingBit(-(-17033i)), vec4<u32>(1u, var_1.b.d, reverseBits(var_1.b.c.x), var_1.b.d % (var_1.b.d / ~1u)), ~(~u_input.c.x + 1u));
    let var_3 = Struct_2(all(select(vec4<bool>(all(vec3<bool>(false, var_0.a.x, var_0.a.x)), var_2.a.x, var_1.b.a.x, all(var_2.a)), !(!vec4<bool>(var_0.a.x, true, false, var_0.a.x)), !(false || var_1.b.a.x))));
    let var_4 = countOneBits(clamp(countOneBits(u_input.b.x), abs(min(~(-1i), 0i % var_2.b)), clamp(dot(vec2<i32>(var_2.b, 2147483647i), u_input.b.xx) | max(-12409i, 0i), 21194i, firstLeadingBit(-var_1.b.b))));
    return var_0.b >= firstTrailingBit(i32(-2147483648) | dot(u_input.b.yx, u_input.b.zy));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_3) -> bool {
    var var_0 = vec2<bool>(func_3(), !((!false || !true) | (countOneBits(arg_0.x) >= arg_0.x)));
    var var_1 = Struct_3(~min(~vec3<u32>(12551u, 6566u, arg_1.a.x), select(vec3<u32>(20981u, u_input.c.x, 4294967295u), vec3<u32>(u_input.d.x, 4294967295u, arg_1.a.x) & arg_1.a, !var_0.x)));
    var var_2 = select(select(!select(!vec3<bool>(var_0.x, false, var_0.x), select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, true, true), vec3<bool>(false, var_0.x, var_0.x)), false), vec3<bool>(any(!vec4<bool>(var_0.x, false, true, var_0.x)), !var_0.x, !true), any(!(!vec4<bool>(var_0.x, var_0.x, var_0.x, true)))), select(!vec3<bool>(var_0.x, func_3(), any(vec3<bool>(var_0.x, var_0.x, var_0.x))), select(select(select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(true, var_0.x, true), true), select(vec3<bool>(false, var_0.x, true), vec3<bool>(var_0.x, var_0.x, true), var_0.x), false), !(!vec3<bool>(false, var_0.x, true)), false), dot(vec3<u32>(var_1.a.x, 60788u, 87841u) ^ u_input.d.zwz, vec3<u32>(13637u, arg_1.a.x, 0u)) <= (~1u / clamp(var_1.a.x, 4294967295u, u_input.c.x))), !vec3<bool>(!var_0.x, true & var_0.x, func_3()));
    var var_3 = dot(~vec4<i32>(arg_0.x, -13449i & ~u_input.b.x, dot(vec4<i32>(arg_0.x, u_input.b.x, arg_0.x, arg_0.x) * vec4<i32>(-31084i, u_input.b.x, 0i, u_input.b.x), vec4<i32>(-28366i, arg_0.x, -4011i, -24635i) + vec4<i32>(21171i, -1i, -28893i, 1i)), max(arg_0.x, reverseBits(-1i))), ~vec4<i32>(-1i >> dot(u_input.d, vec4<u32>(1u, 7764u, 1u, arg_1.a.x)), dot(select(vec2<i32>(arg_0.x, arg_0.x), vec2<i32>(u_input.b.x, -36028i), true), firstTrailingBit(vec2<i32>(1i, arg_0.x))), dot(min(u_input.b, vec3<i32>(arg_0.x, i32(-2147483648), u_input.b.x)), -u_input.b), -(~0i)));
    let var_4 = Struct_5(arg_1.a.x, ~clamp(1u / arg_1.a.x, var_1.a.x, var_1.a.x), Struct_1(!vec3<bool>(!var_2.x, false, !false), arg_0.x, vec4<u32>(4294967295u >> countOneBits(29861u), 47565u, var_1.a.x, arg_1.a.x + 0u), ~(~var_1.a.x ^ ~0u)));
    return !any(vec3<bool>((var_1.a.x >= 51820u) || var_2.x, !select(true, true, var_2.x), var_2.x));
}

fn func_4(arg_0: vec4<bool>, arg_1: u32, arg_2: f32, arg_3: Struct_5) -> Struct_5 {
    var var_0 = vec3<i32>(arg_3.c.b >> u_input.c.x, arg_3.c.b, reverseBits(arg_3.c.b % arg_3.c.b));
    var_0 = vec3<i32>(~(15391i ^ (-(i32(-2147483648)) & max(32700i, var_0.x))), var_0.x, u_input.b.x);
    var var_1 = arg_3.c;
    let var_2 = ~countOneBits(abs(var_1.c.wz));
    let var_3 = vec2<bool>(min(max(abs(arg_1), ~40355u), ~(~4294967295u)) > 91751u, arg_0.x);
    return Struct_5(abs(dot(select(vec2<u32>(35175u, var_1.d), u_input.d.xy, vec2<bool>(false, false)) ^ vec2<u32>(arg_3.b, arg_1), var_1.c.xy)), ~1u, arg_3.c);
}

fn func_1(arg_0: i32, arg_1: bool) -> Struct_1 {
    let var_0 = min(abs(32445i), ~(~(55671i - (2902i | 2147483647i))));
    var var_1 = func_4(select(vec4<bool>(arg_1, true, !false, !func_2(u_input.b.yx, Struct_3(vec3<u32>(u_input.a.x, 49220u, u_input.d.x)))), vec4<bool>(false == !arg_1, !arg_1 & arg_1, !(arg_1 && arg_1), arg_1), vec4<bool>(arg_1, all(select(vec4<bool>(true, arg_1, false, arg_1), vec4<bool>(true, arg_1, arg_1, true), vec4<bool>(true, arg_1, arg_1, true))), !true, func_3())), firstTrailingBit(u_input.c.x), 1000f, Struct_5(u_input.a.x, u_input.a.x, Struct_1(select(!vec3<bool>(false, true, arg_1), select(vec3<bool>(false, arg_1, false), vec3<bool>(arg_1, arg_1, false), arg_1), 228f >= 1333f), u_input.b.x, vec4<u32>(u_input.c.x, 28974u, 14856u, u_input.a.x) | u_input.d, u_input.a.x)));
    var var_2 = var_1.c.b % var_1.c.b;
    let var_3 = 1u <= 4294967295u;
    var var_4 = ~u_input.c.x;
    return Struct_1(vec3<bool>(~47853i < (var_1.c.b ^ dot(u_input.b, vec3<i32>(var_0, u_input.b.x, 0i))), select(true, any(!vec4<bool>(true, var_3, false, var_3)), all(select(vec3<bool>(true, false, var_1.c.a.x), vec3<bool>(var_3, true, true), vec3<bool>(true, false, var_3)))), !arg_1), ~arg_0, vec4<u32>(~(~0u), 7966u, ~(var_1.a | firstLeadingBit(3354u)), abs(1u)), ~reverseBits(abs(var_1.a << 38018u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(-(-(-(1283f - 536f))), func_1(u_input.b.x, all(!vec4<bool>(false, false, true, false))));
    var_0 = Struct_4(1000f, func_1(-var_0.b.b, var_0.b.a.x));
    let var_1 = Struct_3(~(~(vec3<u32>(u_input.a.x, u_input.d.x, u_input.a.x) << u_input.d.zwy) - ~(vec3<u32>(4294967295u, var_0.b.d, var_0.b.c.x) >> vec3<u32>(u_input.a.x, 1u, u_input.c.x))));
    let var_2 = Struct_4(var_0.a, var_0.b);
    var_0 = Struct_4(step(-290f, var_2.a / 1000f), func_1(-50094i - (0i % 18335i), !var_2.b.a.x || all(func_1(u_input.b.x, var_0.b.a.x).a)));
    var var_3 = func_4(!vec4<bool>(!all(var_0.b.a), !false && (0i == 2147483647i), false, !(-1i != -5995i)), (dot(vec4<u32>(4294967295u, 0u, 53084u, 4294967295u) % vec4<u32>(62129u, var_1.a.x, 8916u, 1u), vec4<u32>(91337u, var_1.a.x, 4294967295u, u_input.d.x) | var_2.b.c) << ~17459u) / u_input.a.x, (var_2.a + var_0.a) + trunc(-561f), Struct_5(var_1.a.x, select(50557u, var_1.a.x, false), var_2.b)).c;
    let var_4 = var_1.a.yz;
    var_0 = var_2;
    var var_5 = vec3<bool>(true, false || func_1(-16423i - (i32(-2147483648) << 67190u), min(var_2.a, 1160f) <= -(-989f)).a.x, func_1(~countOneBits(22570i + 0i), var_2.b.a.x).a.x);
    let x = u_input.a;
    s_output = StorageBuffer(12904u >> firstTrailingBit(~var_1.a.x), abs(~41388i), -var_0.a / -var_0.a, var_3.d);
}

