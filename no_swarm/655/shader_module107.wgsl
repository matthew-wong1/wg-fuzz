// {"0:0":[33,249,16,73,242,128,208,75,65,225,35,53,93,124,91,212,117,251,166,201,27,212,237,106,87,92,17,230,214,113,119,41,12,24,98,237,150,103,236,47,227,236,196,80,123,7,22,19]}
// Seed: 17353427041454441036

struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: i32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_2(arg_0: u32) -> bool {
    return !false || any(vec2<bool>(false, !(!false)));
}

fn func_3(arg_0: Struct_3) -> f32 {
    var var_0 = ~firstLeadingBit(vec4<i32>(-15949i - 52923i, max(u_input.b.x, u_input.b.x), -(i32(-2147483648)), -6448i)) ^ (clamp(~select(vec4<i32>(u_input.b.x, -1i, 2147483647i, u_input.b.x), vec4<i32>(u_input.b.x, 1492i, u_input.b.x, -3946i), arg_0.b), ~(vec4<i32>(u_input.b.x, 2147483647i, -1i, -19885i) & vec4<i32>(u_input.b.x, u_input.b.x, -1i, u_input.b.x)), -vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, -30235i) | vec4<i32>(19323i, u_input.b.x, 0i, 35381i)) ^ firstLeadingBit(vec4<i32>(u_input.b.x & -15821i, -6505i | 37413i, dot(vec4<i32>(u_input.b.x, u_input.b.x, -1i, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, -8907i, 0i)), u_input.b.x)));
    var var_1 = 48704u;
    let var_2 = countOneBits(var_0.x);
    let var_3 = arg_0.b;
    var_0 = (vec4<i32>(-firstTrailingBit(u_input.b.x), 25598i / var_2, ~var_0.x, reverseBits(54010i)) & ~(-vec4<i32>(u_input.b.x, var_0.x, u_input.b.x, u_input.b.x))) ^ select(vec4<i32>(var_2, -6612i, -var_2, select(0i, 0i, arg_0.b)) ^ (-vec4<i32>(var_2, 34579i, var_2, u_input.b.x) % select(vec4<i32>(var_2, 18314i, -9927i, 2147483647i), vec4<i32>(var_2, 2147483647i, 37177i, var_2), true)), vec4<i32>(28591i, ~(37241i - 0i), -18980i, u_input.b.x * abs(var_0.x)), var_3);
    return 1776f;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_2 {
    var var_0 = vec2<f32>(abs(433f), -114f);
    let var_1 = Struct_1(var_0.x, all(!select(!arg_0.yz, select(arg_0.yx, vec2<bool>(false, true), vec2<bool>(true, true)), -213f != -687f)));
    var var_2 = select(((vec4<i32>(u_input.b.x, arg_2.x, u_input.b.x, -1i) - abs(vec4<i32>(u_input.b.x, u_input.b.x, arg_1.x, arg_2.x))) * ~vec4<i32>(arg_1.x, arg_2.x, -1i, arg_1.x)) - (~vec4<i32>(0i, arg_2.x, -17495i, u_input.b.x) & firstTrailingBit(abs(vec4<i32>(arg_1.x, 1i, arg_1.x, -15767i)))), vec4<i32>(-u_input.b.x + (reverseBits(u_input.b.x) - -1i), (arg_1.x * -1i) - dot(vec3<i32>(arg_1.x, arg_1.x, 12116i) - vec3<i32>(u_input.b.x, arg_1.x, u_input.b.x), vec3<i32>(arg_1.x, 0i, u_input.b.x) + u_input.b), dot(vec4<i32>(-2466i, firstLeadingBit(-13454i), -(-1i), ~(-1i)), min(vec4<i32>(5121i, -14074i, arg_2.x, u_input.b.x) - vec4<i32>(arg_2.x, 1i, -1i, arg_1.x), vec4<i32>(59101i, 51470i, 0i, 1i))), firstLeadingBit(-max(-45303i, arg_2.x))), !(!select(!vec4<bool>(true, true, arg_0.x, var_1.b), vec4<bool>(false, true, true, arg_3.b), arg_1.x <= 1i)));
    var_0 = -step(-min(abs(vec2<f32>(var_0.x, var_0.x)), -vec2<f32>(var_0.x, var_0.x)), max(select(vec2<f32>(arg_3.a, -1000f), step(vec2<f32>(var_1.a, -345f), vec2<f32>(var_1.a, var_1.a)), select(arg_3.b, var_1.b, arg_3.b)), abs(vec2<f32>(var_0.x, 168f)) + sign(vec2<f32>(var_0.x, arg_3.a))));
    var_0 = round(select(-(-vec2<f32>(929f, -632f)), vec2<f32>(trunc(var_0.x), select(var_0.x, var_1.a, arg_3.b)), arg_0.xy)) * -(-vec2<f32>(-188f, 1755f) * select(sign(vec2<f32>(-1496f, 1483f)), -vec2<f32>(var_1.a, 181f), true & arg_0.x));
    return Struct_2(91811u, dot((~vec4<i32>(1i, u_input.b.x, u_input.b.x, 1i) / (vec4<i32>(var_2.x, arg_2.x, arg_1.x, arg_1.x) << vec4<u32>(u_input.c.x, 43481u, 26529u, u_input.c.x))) + (vec4<i32>(-325i, -1i, u_input.b.x, arg_1.x) - vec4<i32>(arg_2.x, var_2.x, 1i, var_2.x)), abs(vec4<i32>(~arg_1.x, u_input.b.x, arg_1.x, reverseBits(var_2.x)))));
}

fn func_1(arg_0: vec2<i32>) -> vec3<f32> {
    var var_0 = func_4(vec3<bool>(func_2(u_input.a), !((u_input.b.x >= arg_0.x) && (718f > -346f)), !(!func_2(u_input.c.x))), u_input.b.xy, u_input.b, Struct_1(-sign(func_3(Struct_3(vec3<f32>(-480f, -457f, -783f), false))), !any(!vec3<bool>(true, true, false))));
    var_0 = Struct_2(reverseBits(1u), -(select(i32(-2147483648), -55294i, false) * var_0.b) ^ dot(u_input.b - max(u_input.b, u_input.b), vec3<i32>(~(i32(-2147483648)), var_0.b, 0i)));
    var_0 = func_4(select(vec3<bool>(true, func_2(dot(u_input.c, vec3<u32>(18103u, var_0.a, u_input.a))), any(!vec2<bool>(false, false))), select(!vec3<bool>(false, true, false), vec3<bool>(any(vec2<bool>(false, false)), !false, !false), vec3<bool>(all(vec2<bool>(false, false)), all(vec2<bool>(true, true)), false || true)), !vec3<bool>(true | true, true, var_0.a != u_input.a)), ~(arg_0 % ~select(u_input.b.xy, arg_0, true)), (select(vec3<i32>(arg_0.x, 2147483647i, i32(-2147483648)) & vec3<i32>(var_0.b, var_0.b, -29349i), u_input.b, false) * vec3<i32>(reverseBits(var_0.b), dot(u_input.b.yz, u_input.b.xx), ~var_0.b)) | -reverseBits(~u_input.b), Struct_1(sign(-128f), any(select(vec4<bool>(false, true, false, false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), false), vec4<bool>(true, true, true, true)))));
    return sign(round(-((vec3<f32>(856f, -1056f, -825f) / vec3<f32>(135f, 478f, 2003f)) * (vec3<f32>(2184f, 182f, 1290f) + vec3<f32>(270f, -1218f, -294f)))));
}

fn func_5(arg_0: f32, arg_1: vec4<f32>, arg_2: f32, arg_3: Struct_3) -> Struct_1 {
    return Struct_1(-926f, countOneBits(i32(-2147483648)) > 0i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1071f;
    var var_1 = Struct_1(var_0, select(!(~u_input.b.x != -27567i), true == (~u_input.c.x == ~1u), false));
    var_1 = Struct_1(-(1771f - (var_1.a / var_0)) - -var_0, !(!true || false));
    let var_2 = -(-(var_1.a / ((var_1.a - -1090f) + var_0)));
    var_1 = func_5(635f, vec4<f32>(var_1.a, 831f, -var_1.a, trunc(1168f)), var_0, Struct_3(step(trunc(vec3<f32>(var_0, -1000f, 2396f) / vec3<f32>(var_2, -1157f, 889f)), func_1(u_input.b.zx) * vec3<f32>(var_2, -272f, 1854f)), any(!(!vec2<bool>(false, false)))));
    let var_3 = Struct_2(u_input.c.x, -(~u_input.b.x));
    let var_4 = reverseBits(0i);
    var var_5 = vec4<f32>(-2406f, -697f, func_1(vec2<i32>(u_input.b.x, 0i)).x, -(-(-1666f))) / vec4<f32>(var_2, -1000f * -1799f, 1713f, sign(-362f));
    let x = u_input.a;
    s_output = StorageBuffer(-503f);
}

