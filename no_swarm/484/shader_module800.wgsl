// {"0:0":[69,94,9,76,252,204,57,5,120,85,123,193,10,181,120,182,252,95,168,73,238,181,149,110,144,193,40,98,17,153,57,136,38,86,169,111,188,44,102,104,96,160,60,204,114,146,165,15,123,87,204,64,33,95,4,80,203,123,224,244,171,212,60,87]}
// Seed: 613008132444616323

struct Struct_1 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: vec3<u32>, arg_1: i32) -> f32 {
    let var_0 = !true;
    var var_1 = select(vec2<u32>(arg_0.x, ~(~(arg_0.x << arg_0.x))), arg_0.zy, !true);
    var var_2 = !select(!vec4<bool>(!var_0, !var_0, select(var_0, var_0, true), var_1.x <= 43237u), vec4<bool>(select(all(vec3<bool>(var_0, var_0, var_0)), true, var_0), select(59766i, -54806i, var_0) >= u_input.a.x, false, (arg_1 ^ 58177i) < (-1i + 2657i)), select(vec4<bool>(var_0, var_0, any(vec4<bool>(true, var_0, true, var_0)), any(vec2<bool>(var_0, false))), select(vec4<bool>(true, var_0, false, false), vec4<bool>(var_0, true, var_0, var_0), vec4<bool>(true, var_0, var_0, var_0)), vec4<bool>(var_0, 11300u == 4294967295u, select(true, true, false), !var_0)));
    var var_3 = vec4<bool>(all(!select(var_2.yy, var_2.wx, vec2<bool>(false, false))) || all(var_2.yxy), max(~(~1u), ~0u * 0u) <= countOneBits(~1u), var_0, !(-abs(-16057i) == ~firstLeadingBit(-33346i)));
    var_2 = select(vec4<bool>(var_3.x, var_3.x, all(!vec2<bool>(var_0, false)), !(33537i > u_input.c)), select(select(vec4<bool>(1351f <= -411f, true, var_3.x, 4294967295u <= 4294967295u), !(!vec4<bool>(true, false, var_3.x, var_3.x)), all(var_2.wzz) && var_2.x), vec4<bool>(!var_3.x, !all(var_2.wzw), false, false), !select(!vec4<bool>(var_2.x, var_3.x, var_0, true), vec4<bool>(var_3.x, true, var_3.x, true), !vec4<bool>(var_0, false, var_0, true))), false);
    return 568f;
}

fn func_2(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_1) -> f32 {
    var var_0 = func_3(vec3<u32>(68102u * ~4294967295u, countOneBits(countOneBits(1u)), 9388u), 2147483647i) / ((floor(-(-1503f)) / ((-395f + -2407f) * -1457f)) + min(-1820f - ceil(270f), 487f));
    var var_1 = max(max((1u - ~9874u) / ~(~0u), abs(firstTrailingBit(13092u + 37708u))), 6750u + ((dot(vec4<u32>(22094u, 0u, 49044u, 50951u), vec4<u32>(26933u, 10789u, 81663u, 44994u)) / ~10035u) + ~clamp(61066u, 1u, 2390u)));
    var_1 = ~abs(~dot(vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(9239u, 0u, 1u))) + ~1u;
    let var_2 = -abs(round(floor(-309f - 2159f)));
    let var_3 = !select(!select(vec4<bool>(true, false, arg_0, arg_0), select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, true, true), vec4<bool>(arg_0, true, arg_0, false)), false != arg_0), vec4<bool>(all(!vec4<bool>(true, arg_0, false, false)), false || arg_0, !all(vec4<bool>(arg_0, false, true, true)), all(!vec3<bool>(false, true, true))), select(!(!vec4<bool>(true, arg_0, true, arg_0)), vec4<bool>(false, arg_0, select(false, arg_0, false), 0u <= 55852u), any(select(vec3<bool>(false, true, arg_0), vec3<bool>(arg_0, false, arg_0), false))));
    return ceil(-1089f);
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = -abs(select(min(arg_1, vec4<f32>(-1000f, -1000f, 174f, arg_1.x)), -arg_1, !vec4<bool>(true, false, false, true)) * vec4<f32>(trunc(arg_0.x), trunc(arg_0.x), 1012f - -1032f, arg_0.x / 735f));
    let var_1 = vec4<i32>(-1i ^ -4915i, 0i, select(1i, dot(-u_input.a, -vec4<i32>(i32(-2147483648), -2079i, i32(-2147483648), u_input.b) / (u_input.e - vec4<i32>(arg_2.b, 2147483647i, arg_2.a, 1i))), !(true | (4294967295u <= 1u))), -arg_2.a);
    var_0 = -(-arg_1) + arg_1;
    var var_2 = Struct_1(clamp(37925i, arg_2.a, dot(-(vec2<i32>(arg_2.a, u_input.c) + u_input.e.zz), u_input.e.xx)), 20622i);
    var var_3 = arg_2;
    return Struct_1(var_1.x, ~arg_2.b);
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = vec2<f32>(trunc(-476f - (684f / -1248f)), max(round(-(-802f)), -502f)) / (-(-vec2<f32>(-409f, 1000f) * min(vec2<f32>(-1000f, -128f), vec2<f32>(-1000f, 1859f))) / -vec2<f32>(-1071f, 816f / -227f));
    var_0 = -(-(vec2<f32>(-1795f, 1145f) + -vec2<f32>(-722f, var_0.x)) / (-select(vec2<f32>(-1599f, -840f), vec2<f32>(var_0.x, -1000f), vec2<bool>(false, true)) * select(ceil(vec2<f32>(-445f, var_0.x)), vec2<f32>(983f, var_0.x), !vec2<bool>(true, false))));
    var_0 = vec2<f32>(var_0.x, ceil(var_0.x) - var_0.x);
    var_0 = round(exp2(vec2<f32>(var_0.x - var_0.x, func_3(vec3<u32>(1u, 72559u, 1u), u_input.c)) * round(min(vec2<f32>(-553f, 560f), vec2<f32>(var_0.x, 359f)))));
    var_0 = abs(-(vec2<f32>(trunc(var_0.x), func_2(false, vec3<i32>(u_input.c, -22691i, arg_0.b), arg_0)) + vec2<f32>(-1726f, -462f)));
    return Struct_1(~1i << min(~(18432u << 64004u), countOneBits(~1u)), u_input.b ^ -1i);
}

fn func_1() -> vec4<f32> {
    var var_0 = u_input.d.x;
    let var_1 = func_5(func_4(-(vec2<f32>(-323f, 708f) * (vec2<f32>(-1268f, 643f) + vec2<f32>(484f, -2254f))), vec4<f32>(-abs(-1351f), -331f / floor(456f), -func_2(false, vec3<i32>(19263i, -1i, -5148i), Struct_1(u_input.b, u_input.a.x)), func_3(vec3<u32>(1u, 0u, 4294967295u), 1i) / -1227f), Struct_1(i32(-2147483648), -(0i % u_input.b))));
    var_0 = u_input.e.x;
    var var_2 = var_1;
    var var_3 = vec2<i32>(26961i, 1i);
    return (round(vec4<f32>(-732f, -1000f, -1526f, -1000f) * (vec4<f32>(-193f, -157f, -1090f, -399f) - vec4<f32>(-810f, -1426f, 1491f, 733f))) + ((-vec4<f32>(1198f, 222f, -139f, 943f) * (vec4<f32>(138f, 1204f, 305f, 1174f) / vec4<f32>(1007f, 1295f, -2212f, 1046f))) + (vec4<f32>(1119f, -1319f, 2448f, 715f) / (vec4<f32>(-997f, 1209f, 1473f, 200f) - vec4<f32>(1000f, 507f, 1360f, -429f))))) - step(abs(vec4<f32>(func_2(false, vec3<i32>(u_input.b, var_2.a, -3232i), var_1), 235f + 739f, -(-959f), 363f - 276f)), -(vec4<f32>(962f, 1000f, -1000f, 282f) / vec4<f32>(-1637f, 241f, 681f, 1000f)) - vec4<f32>(select(1111f, -712f, false), step(-205f, -227f), -1000f, trunc(-1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    let var_1 = ((ceil(min(vec4<f32>(476f, -991f, 692f, 1000f), vec4<f32>(1079f, 206f, -982f, -1121f))) * func_1()) * vec4<f32>(-178f, func_1().x, func_1().x, -1140f)) * (-step(-vec4<f32>(1000f, 744f, -1000f, 125f), -vec4<f32>(-1021f, -958f, -140f, 274f)) * -vec4<f32>(-1000f, -978f + -941f, -223f * -620f, floor(-394f)));
    var_0 = ~((((1u & 81583u) + 0u) % (~2503u >> ~0u)) % ~(reverseBits(0u) | clamp(4294967295u, 0u, 70856u)));
    var_0 = 0u;
    var_0 = 21950u;
    var_0 = ~(1u - 20505u);
    let var_2 = Struct_1(u_input.b, u_input.c % -1i);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(ceil(-(-var_1.x)), -(func_1().x * func_1().x)), reverseBits(vec3<u32>(firstTrailingBit(4294967295u), ~58069u, ~(~2248u))), var_1.zy * trunc(sign(vec2<f32>(708f, var_1.x)) - -var_1.xw), var_1.x);
}

