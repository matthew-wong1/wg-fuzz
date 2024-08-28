// {"0:0":[61,98,141,14,129,28,174,171,166,1,103,170,224,35,237,170,253,200,93,216,105,11,155,147,248,210,80,219,69,99,226,121]}
// Seed: 17385821839338912147

struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: vec3<u32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>) -> i32 {
    let var_0 = arg_0.a;
    let var_1 = Struct_2(var_0, ~var_0.d - clamp(54022u, var_0.a.x, (var_0.c.x * var_0.c.x) / (1777u + u_input.a.x)), -min(2147483647i, -1i), vec4<i32>(abs(~abs(-1i)), arg_0.d.x, ~dot(vec4<i32>(arg_0.d.x, arg_0.c, -1i, arg_1.x) & arg_0.d, vec4<i32>(-1i, u_input.b, u_input.d.x, u_input.b)), 63817i));
    var var_2 = false;
    var var_3 = 17917u;
    var_3 = ~12131u;
    return firstTrailingBit(arg_0.c);
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: Struct_1) -> bool {
    let var_0 = Struct_2(arg_2, 1u, 40822i | max(-u_input.b, arg_1), max(vec4<i32>(34981i & arg_1, -u_input.d.x, u_input.d.x, dot(vec3<i32>(-12584i, i32(-2147483648), arg_1) + vec3<i32>(arg_1, u_input.d.x, arg_1), vec3<i32>(u_input.b, arg_1, u_input.d.x))), ~vec4<i32>(arg_1, u_input.d.x, u_input.b, u_input.b) + clamp(vec4<i32>(66137i, u_input.d.x, 0i, u_input.b), -vec4<i32>(-988i, u_input.d.x, arg_1, arg_1), vec4<i32>(u_input.b, u_input.b, arg_1, 1i) - vec4<i32>(arg_1, -3505i, 0i, arg_1))));
    var var_1 = firstTrailingBit(var_0.d.zww % ~(reverseBits(vec3<i32>(u_input.b, i32(-2147483648), -1i)) ^ (var_0.d.wyz - vec3<i32>(i32(-2147483648), 1839i, 1i))));
    let var_2 = Struct_1(vec3<u32>(var_0.b, (~3985u * dot(vec4<u32>(var_0.b, var_0.b, u_input.c.x, u_input.a.x), vec4<u32>(4473u, var_0.b, u_input.c.x, 1u))) ^ 38467u, 4294967295u), select(var_0.a.b, vec4<bool>(var_0.a.b.x, all(!arg_2.b.wyy), dot(vec2<i32>(-6191i, 9932i), var_1.yz) <= -(-66444i), arg_2.b.x), var_1.x <= -countOneBits(arg_1)), firstTrailingBit(~vec3<u32>(arg_2.d, ~var_0.b, 0u)), u_input.a.x);
    var_1 = vec3<i32>(var_1.x, ~(func_3(var_0, var_0.d.yzx) ^ u_input.b) << 32889u, u_input.b ^ 32153i);
    var_1 = max((min(abs(vec3<i32>(var_1.x, var_1.x, -5722i)), var_0.d.ywz) * (var_0.d.xxx | var_0.d.wzx)) - select(vec3<i32>(var_0.d.x, i32(-2147483648), abs(var_1.x)), min(firstTrailingBit(var_0.d.xzx), var_0.d.zyz), select(!var_2.b.xxw, vec3<bool>(var_2.b.x, false, arg_2.b.x), true)), ~(var_0.d.yzy & ~firstTrailingBit(vec3<i32>(-15052i, var_1.x, var_0.d.x))));
    return false;
}

fn func_1(arg_0: u32) -> bool {
    var var_0 = !(!(!vec4<bool>(!false, func_2(-390f, 1i, Struct_1(vec3<u32>(u_input.a.x, 55256u, 27047u), vec4<bool>(false, true, true, false), vec3<u32>(u_input.c.x, 1u, 1u), arg_0)), false, !false)));
    var var_1 = Struct_1(max(vec3<u32>(8483u, arg_0, ~(arg_0 & 0u)), ~(~vec3<u32>(u_input.c.x, u_input.a.x, 41459u) - (vec3<u32>(u_input.a.x, u_input.a.x, arg_0) % vec3<u32>(8328u, u_input.a.x, u_input.c.x)))), vec4<bool>(~(~41592u) != 1u, (-433f < (259f + -324f)) && (dot(vec3<u32>(arg_0, u_input.c.x, arg_0), vec3<u32>(80890u, arg_0, u_input.a.x)) >= (u_input.a.x / 0u)), u_input.a.x <= (u_input.a.x << 57395u), var_0.x), ((select(vec3<u32>(u_input.c.x, arg_0, 65260u), vec3<u32>(u_input.a.x, arg_0, arg_0), var_0.x) | ~vec3<u32>(arg_0, 23341u, 0u)) >> clamp(~vec3<u32>(1u, arg_0, u_input.c.x), select(vec3<u32>(arg_0, arg_0, arg_0), vec3<u32>(20207u, 1u, arg_0), vec3<bool>(var_0.x, var_0.x, var_0.x)), clamp(vec3<u32>(arg_0, 63564u, 1u), vec3<u32>(0u, arg_0, 4294967295u), vec3<u32>(arg_0, arg_0, arg_0)))) ^ ((~vec3<u32>(0u, 50691u, u_input.a.x) ^ abs(vec3<u32>(53600u, arg_0, u_input.a.x))) / (select(vec3<u32>(68674u, arg_0, arg_0), vec3<u32>(u_input.a.x, u_input.a.x, 1u), vec3<bool>(true, var_0.x, true)) / (vec3<u32>(4294967295u, u_input.c.x, u_input.a.x) ^ vec3<u32>(4294967295u, 0u, u_input.a.x)))), abs(dot(~(~vec3<u32>(u_input.a.x, u_input.a.x, 1u)), ~firstLeadingBit(vec3<u32>(26880u, 0u, arg_0)))));
    var_0 = !vec4<bool>(true, !(!all(var_1.b.yxw)), !any(!vec4<bool>(true, var_1.b.x, var_0.x, true)), select(!var_0.x, !(!false), true));
    var var_2 = -1515f;
    let var_3 = Struct_1(~var_1.a, var_1.b, var_1.a, ~(~(~(~u_input.a.x))));
    return any(select(var_3.b.ww, var_0.xz, vec2<bool>(!var_3.b.x, !false)));
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: i32) -> vec3<bool> {
    let var_0 = vec4<f32>(168f, floor(max(abs(580f * -179f), floor(-746f))), 426f, -432f);
    let var_1 = Struct_1(~(~(abs(vec3<u32>(u_input.c.x, arg_1, 23483u)) - ~vec3<u32>(arg_1, 1u, 1u))), vec4<bool>(any(vec2<bool>(arg_0, !false)), arg_0, func_2(var_0.x, 1i, Struct_1(vec3<u32>(arg_1, 0u, 0u) & vec3<u32>(109236u, arg_1, arg_1), select(vec4<bool>(false, true, true, false), vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(true, arg_0, true, arg_0)), abs(vec3<u32>(arg_1, 27461u, 1u)), ~arg_1)), true), ~((clamp(vec3<u32>(4294967295u, 1u, 31754u), vec3<u32>(22539u, u_input.c.x, arg_1), vec3<u32>(arg_1, arg_1, arg_1)) >> ~vec3<u32>(arg_1, 4294967295u, arg_1)) * firstTrailingBit(~vec3<u32>(4294967295u, u_input.a.x, arg_1))), abs(106186u));
    let var_2 = Struct_1(var_1.c, var_1.b, (reverseBits(vec3<u32>(var_1.d, arg_1, 70926u)) / firstTrailingBit(vec3<u32>(var_1.d, 4294967295u, u_input.c.x))) - ~vec3<u32>(7038u - 4294967295u, 28468u, ~18669u), u_input.c.x);
    let var_3 = -max(var_0.xxx, step((var_0.wzy * var_0.xxz) - var_0.xxw, vec3<f32>(-(-540f), -var_0.x, var_0.x)));
    let var_4 = vec2<f32>((1849f * var_0.x) / (-2243f - (-353f * 1143f)), -(-185f));
    return !var_1.b.xzx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(select(vec3<bool>((40464u >> 4294967295u) >= 1u, true, all(select(vec2<bool>(true, true), vec2<bool>(true, true), false))), func_4(func_1(u_input.c.x), ~60916u, -28119i ^ 3306i), vec3<bool>(round(453f) < 1632f, false, !(-666f == -1010f))));
    var_0 = false;
    var var_1 = step(717f - (round(-424f - -495f) / (-(-1687f) + ceil(-1237f))), -543f * -floor(-944f * 702f));
    let x = u_input.a;
    s_output = StorageBuffer(select(firstLeadingBit(countOneBits(vec4<u32>(u_input.a.x, u_input.a.x, u_input.c.x, u_input.a.x))), min(vec4<u32>(21390u, 0u, u_input.c.x, 47415u), vec4<u32>(u_input.c.x, 1u, 4294967295u, 13612u)) * (vec4<u32>(u_input.c.x, 0u, 22577u, 4294967295u) ^ vec4<u32>(u_input.a.x, 0u, 39325u, 1u)), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true))) - (~vec4<u32>(u_input.a.x, 65936u, 23345u, u_input.a.x) << vec4<u32>(u_input.c.x, u_input.a.x, u_input.c.x, 8242u & 4710u)), ~u_input.c.x, vec3<f32>(788f, -(-140f) * 677f, (-388f * -952f) / floor(548f)));
}

