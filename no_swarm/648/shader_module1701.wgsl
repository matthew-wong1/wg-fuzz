// {"0:0":[211,88,133,204,98,168,26,60,79,105,176,38,113,167,40,71,105,107,167,216,56,11,180,38,198,21,204,220,197,56,77,45,145,143,77,53,75,82,36,189,128,172,51,225,56,240,161,53]}
// Seed: 15931592691449005216

struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: bool,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: vec2<i32>) -> vec3<u32> {
    let var_0 = -528f - sign(-113f);
    let var_1 = Struct_1(-dot(vec4<i32>(u_input.b.x, ~66300i, u_input.c.x << 37593u, arg_0.x), reverseBits(clamp(vec4<i32>(i32(-2147483648), 2147483647i, 1i, u_input.b.x), vec4<i32>(0i, u_input.c.x, -30852i, 0i), vec4<i32>(arg_0.x, arg_0.x, -1i, 2147483647i)))), vec3<u32>(~u_input.a.x, ~u_input.a.x, 1u), select(select(!(!vec2<bool>(true, false)), vec2<bool>(all(vec2<bool>(false, false)), any(vec4<bool>(false, true, true, false))), all(!vec4<bool>(true, true, false, true))), select(!select(vec2<bool>(false, true), vec2<bool>(true, false), true), select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(false, false), !vec2<bool>(true, false)), !all(vec4<bool>(true, true, true, false))), vec2<bool>(-var_0 >= 812f, !all(vec4<bool>(true, true, true, true)))));
    let var_2 = var_1.c;
    var var_3 = any(vec4<bool>((-118f + var_0) <= select(exp2(var_0), round(var_0), all(vec3<bool>(var_1.c.x, var_2.x, var_1.c.x))), firstTrailingBit(var_1.a - u_input.c.x) > var_1.a, false, ceil(-290f) != 1610f));
    let var_4 = 43760u >> 1u;
    return var_1.b >> reverseBits(select(~var_1.b, var_1.b, vec3<bool>(false, var_1.c.x, false)) << (var_1.b << vec3<u32>(3819u, 1u, 1u)));
}

fn func_2(arg_0: i32, arg_1: vec2<i32>) -> i32 {
    var var_0 = Struct_1(i32(-2147483648), ~(~abs(~vec3<u32>(0u, u_input.a.x, u_input.a.x))), vec2<bool>(all(!vec4<bool>(true, false, true, true)), !(!(true & true))));
    var var_1 = !(!var_0.c.x);
    var var_2 = Struct_1(-abs(u_input.b.x & (arg_0 % -22571i)), func_3(u_input.b.xz >> abs(u_input.a & vec2<u32>(var_0.b.x, 24395u))), select(vec2<bool>(all(select(vec3<bool>(var_0.c.x, var_0.c.x, true), vec3<bool>(var_0.c.x, true, true), vec3<bool>(var_0.c.x, true, false))), !(!true)), select(select(select(var_0.c, var_0.c, vec2<bool>(false, false)), !var_0.c, vec2<bool>(true, false)), !vec2<bool>(var_0.c.x, var_0.c.x), false), !select(vec2<bool>(var_0.c.x, var_0.c.x), var_0.c, vec2<bool>(var_0.c.x, var_0.c.x))));
    var_0 = Struct_1(0i, vec3<u32>(~((var_0.b.x + 4294967295u) ^ 62420u), 33528u, var_0.b.x), vec2<bool>(~22568i > (arg_0 << ~22509u), var_0.c.x));
    var var_3 = var_0.a;
    return 30838i;
}

fn func_1(arg_0: vec4<u32>, arg_1: u32, arg_2: u32) -> bool {
    let var_0 = -(-select(vec3<f32>(1701f, -719f, -208f) + vec3<f32>(-725f, 2218f, 924f), -(-vec3<f32>(1068f, -1042f, -1686f)), !(!vec3<bool>(true, true, false))));
    var var_1 = select(select(vec2<bool>(all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true))), select(any(vec3<bool>(false, false, false)), !false, true)), select(!select(vec2<bool>(false, true), vec2<bool>(false, true), false), !vec2<bool>(true, true), !(!vec2<bool>(false, true))), vec2<bool>(any(vec4<bool>(false, false, false, true)), -u_input.b.x == func_2(u_input.c.x, vec2<i32>(-8903i, 8058i)))), vec2<bool>(false | any(!vec2<bool>(true, true)), false), !(!true));
    var_1 = !select(vec2<bool>(!var_1.x || (var_1.x && true), true), vec2<bool>(any(select(vec4<bool>(false, var_1.x, true, var_1.x), vec4<bool>(var_1.x, false, var_1.x, false), vec4<bool>(true, var_1.x, false, true))), -u_input.b.x > ~0i), !(!(var_1.x && true)));
    let var_2 = !vec4<bool>(any(vec4<bool>(var_1.x, all(vec2<bool>(var_1.x, var_1.x)), var_1.x, !true)), !false, var_1.x, false);
    var var_3 = vec3<u32>(1u, 1u, max(~32247u, u_input.a.x)) ^ ~firstTrailingBit(clamp(arg_0.zyw | vec3<u32>(0u, u_input.a.x, arg_0.x), ~vec3<u32>(u_input.a.x, 9130u, 31096u), reverseBits(arg_0.xww)));
    return ~abs(~21770u ^ (arg_2 + 1u)) >= ~arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 71419u;
    var var_1 = select(vec3<bool>(-abs(u_input.c.x) > ~u_input.c.x, false, func_1(~vec4<u32>(81148u, u_input.a.x, u_input.a.x, u_input.a.x) / (vec4<u32>(0u, 48183u, u_input.a.x, 4294967295u) << vec4<u32>(4604u, u_input.a.x, u_input.a.x, 1u)), ~5191u << ~1u, 1u)), select(vec3<bool>(-30986i < u_input.b.x, !true, false & !false), !select(!vec3<bool>(false, true, true), !vec3<bool>(false, false, true), true), false && (true | false)), true);
    var var_2 = Struct_2(~(firstLeadingBit(~vec4<u32>(u_input.a.x, u_input.a.x, 18139u, u_input.a.x)) ^ ((vec4<u32>(u_input.a.x, 65752u, u_input.a.x, 0u) - vec4<u32>(u_input.a.x, u_input.a.x, 22687u, 37234u)) * vec4<u32>(40092u, u_input.a.x, 44766u, 6426u))), ~abs(~38122u) * ~u_input.a.x, -605f / -(-ceil(-512f)), select(~1u > firstLeadingBit(u_input.a.x), true, true) & all(select(vec4<bool>(var_1.x, false, true, var_1.x), !vec4<bool>(false, false, false, var_1.x), true)));
    let var_3 = Struct_3(select(step(vec3<f32>(1000f, var_2.c, -991f) + vec3<f32>(var_2.c, var_2.c, -2132f), vec3<f32>(var_2.c, 346f, 274f) - vec3<f32>(var_2.c, -513f, -1135f)), step(-vec3<f32>(var_2.c, var_2.c, -1000f), -vec3<f32>(var_2.c, var_2.c, var_2.c)), true) * -step(vec3<f32>(-1102f, 1942f, -498f), -vec3<f32>(-647f, 192f, -542f)), Struct_2(var_2.a, 0u, sign(var_2.c - -var_2.c), select(!false, var_1.x, func_1(var_2.a, u_input.a.x, 47427u)) && !var_2.d));
    let var_4 = select(true, select(false, -var_3.a.x <= -(-1877f), false & !func_1(vec4<u32>(1u, var_2.a.x, var_3.b.a.x, 22105u), 39438u, 4294967295u)), false);
    var_2 = Struct_2(vec4<u32>(8338u, ~(~(~1u)), var_2.b / reverseBits(var_2.b), reverseBits(var_3.b.b + dot(var_2.a.zw, var_2.a.yx))), min(var_3.b.a.x, var_2.a.x), 1000f, all(vec4<bool>(all(vec2<bool>(false, false)), var_4, -(-33364i) >= firstTrailingBit(7515i), var_3.b.d)));
    let var_5 = var_3.b.c;
    var_2 = var_3.b;
    var_2 = Struct_2(var_3.b.a, ~1u << (clamp(dot(vec3<u32>(47029u, var_2.b, var_2.b), vec3<u32>(var_3.b.b, var_2.b, 43523u)), 36092u % 0u, 29862u) << dot(func_3(vec2<i32>(-20400i, u_input.c.x)).xy, ~vec2<u32>(var_3.b.a.x, 51436u))), round(var_3.a.x), (~2147483647i << (1u * ~62900u)) >= -dot(u_input.b.zy / u_input.b.zz, u_input.b.xx));
    let x = u_input.a;
    s_output = StorageBuffer(round(var_3.a), var_2.c + 2386f, firstTrailingBit(firstLeadingBit(clamp(var_3.b.a.x, var_3.b.a.x, var_2.a.x) / ~var_3.b.a.x)), ~var_2.a);
}

