// {"0:0":[43,142,32,35,185,254,22,0]}
// Seed: 1759659396594173951

struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_2,
    d: vec4<bool>,
}

struct Struct_4 {
    a: bool,
    b: vec4<f32>,
    c: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: f32) -> u32 {
    return 14735u;
}

fn func_2(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: u32) -> i32 {
    let var_0 = Struct_1(vec2<i32>(0i | 0i, countOneBits(i32(-2147483648))), (u_input.a.x / ~func_3(arg_0.b.x)) % ~(~3320u * ~arg_2), vec3<u32>(dot(firstLeadingBit(vec2<u32>(5819u, u_input.a.x)), vec2<u32>(u_input.a.x | arg_2, 4294967295u >> 1u)), u_input.a.x, (countOneBits(arg_2) << (4294967295u & arg_2)) | select(arg_2, reverseBits(arg_2), !arg_0.a)), arg_0.b.x);
    var var_1 = dot(~vec3<u32>(~(u_input.a.x ^ var_0.c.x), ~abs(var_0.b), abs(reverseBits(10869u))), vec3<u32>(~firstLeadingBit(arg_2 % var_0.c.x), ~96481u, ~arg_2));
    var_1 = 0u;
    let var_2 = firstTrailingBit(~(((vec4<u32>(2499u, u_input.a.x, u_input.a.x, var_0.b) % vec4<u32>(10539u, var_0.b, var_0.c.x, u_input.a.x)) << vec4<u32>(var_0.c.x, 64960u, arg_2, var_0.c.x)) & (abs(vec4<u32>(4294967295u, arg_2, arg_2, 4294967295u)) % reverseBits(vec4<u32>(4294967295u, 4294967295u, 12169u, 48512u)))));
    var_1 = u_input.a.x;
    return var_0.a.x;
}

fn func_1(arg_0: vec3<bool>) -> vec2<i32> {
    let var_0 = Struct_4(true, -(-vec4<f32>(-(-693f), 1764f, -572f, round(329f))), select(countOneBits(func_2(Struct_4(true, vec4<f32>(888f, -744f, -1000f, -1202f), arg_0.x), arg_0.yx, u_input.a.x)) >= clamp(~2147483647i, -(-5605i), firstLeadingBit(-1i)), !(arg_0.x & all(arg_0.yx)), !true));
    let var_1 = vec4<i32>((34635i - -(2147483647i ^ 1i)) | -countOneBits(26228i & 1i), -497i, -1109i >> ~u_input.a.x, countOneBits(-1i ^ ~(~(-29040i))));
    var var_2 = vec3<i32>(min(firstLeadingBit(dot(vec3<i32>(var_1.x, 2147483647i, 1i) >> vec3<u32>(u_input.a.x, 62390u, 97243u), vec3<i32>(var_1.x, 3684i, var_1.x))), ~(-min(var_1.x, var_1.x))), -min(var_1.x >> select(u_input.a.x, 83263u, var_0.c), func_2(Struct_4(var_0.c, vec4<f32>(1881f, -629f, var_0.b.x, 1418f), true), select(vec2<bool>(var_0.a, arg_0.x), arg_0.xz, vec2<bool>(var_0.c, arg_0.x)), 4294967295u)), ~(-1293i));
    var var_3 = Struct_3(!(true | arg_0.x), u_input.a.x, Struct_2(dot(~(~vec3<i32>(var_1.x, var_2.x, 2147483647i)), vec3<i32>(-(-21570i), abs(-28556i), var_2.x)), Struct_1(abs(vec2<i32>(var_2.x, var_1.x)), ~0u + countOneBits(u_input.a.x), ~vec3<u32>(u_input.a.x, 43218u, u_input.a.x) / vec3<u32>(u_input.a.x, 28786u, u_input.a.x), max(var_0.b.x, 419f)), true), vec4<bool>(!all(vec2<bool>(arg_0.x, arg_0.x)), all(select(!vec4<bool>(arg_0.x, false, true, var_0.a), vec4<bool>(arg_0.x, true, false, true), !vec4<bool>(true, true, true, var_0.c))), arg_0.x, dot(var_1.zzw, firstTrailingBit(var_1.xyx)) != var_1.x));
    let var_4 = -(~(-(-22712i)));
    return min(clamp(var_1.yy, vec2<i32>(dot(vec3<i32>(var_1.x, var_2.x, var_4), vec3<i32>(15380i, -1i, var_3.c.a)), var_2.x), abs(vec2<i32>(var_2.x, -1i))), -(firstTrailingBit(var_3.c.b.a) * var_2.zx)) >> vec2<u32>(~(~min(138133u, 25594u)), u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = dot(func_1(vec3<bool>(!(true != false), all(vec3<bool>(true, false, true)), 1i >= 0i)), select(-abs(~vec2<i32>(78734i, -13918i)), vec2<i32>(-(~(-58975i)), 25943i), !(u_input.a.x <= 1u)));
    var var_1 = Struct_5(Struct_2(13795i, Struct_1(vec2<i32>(i32(-2147483648) / -23405i, -(-13974i)), u_input.a.x, ~abs(vec3<u32>(u_input.a.x, 0u, u_input.a.x)), abs(538f) - (1250f * -913f)), abs(~(i32(-2147483648))) == -83584i), Struct_2(-firstLeadingBit(func_2(Struct_4(false, vec4<f32>(1110f, -2755f, -150f, 1000f), true), vec2<bool>(false, false), 3668u)), Struct_1(vec2<i32>(-78312i, 10130i), ~(~28740u), vec3<u32>(1u, 3425u, 24634u), ceil(ceil(868f))), -(14447i - -6111i) < -52291i), Struct_1(~vec2<i32>(-1i, 49617i) % reverseBits(vec2<i32>(0i, 21758i)), countOneBits(79877u) << 2952u, vec3<u32>((4294967295u << 1u) / 51476u, ~firstLeadingBit(u_input.a.x), u_input.a.x), floor(round(abs(-454f)))));
    let var_2 = Struct_5(Struct_2(var_1.b.b.a.x, var_1.b.b, ceil(-1348f) <= max(-224f * 1000f, ceil(-129f))), Struct_2((~65436i + firstTrailingBit(-1i)) / -2891i, var_1.a.b, !(var_1.b.c || any(vec3<bool>(var_1.a.c, false, false)))), Struct_1(var_1.c.a, var_1.c.b, firstLeadingBit(var_1.c.c), min(step(667f, var_1.c.d), -var_1.c.d) / ceil(-237f)));
    let var_3 = vec4<bool>(var_2.b.b.d <= sign(-(var_2.a.b.d * var_1.b.b.d)), !var_2.b.c && (!(11869i < var_2.b.a) || !all(vec4<bool>(false, var_1.b.c, true, var_2.b.c))), round(-206f) == var_2.c.d, !((-var_2.b.a * 2147483647i) > var_2.b.b.a.x));
    let var_4 = var_2.a.b.d / var_2.b.b.d;
    let var_5 = Struct_1(reverseBits(vec2<i32>(var_1.a.a, var_2.a.a)), ~(~var_1.a.b.c.x % max(1u, 1u)) * var_1.b.b.c.x, ~var_1.b.b.c, exp2(-1000f));
    let x = u_input.a;
    s_output = StorageBuffer(~25395u, vec3<i32>(2147483647i, var_1.a.b.a.x, abs(abs(reverseBits(2147483647i)))), var_1.a.b.c.xy ^ vec2<u32>(abs(var_1.a.b.c.x) - max(var_1.c.c.x, 17174u), 18092u & ~u_input.a.x), firstTrailingBit(37273i * min(min(var_2.a.a, -1i), ~var_5.a.x)), var_5.a.x);
}

