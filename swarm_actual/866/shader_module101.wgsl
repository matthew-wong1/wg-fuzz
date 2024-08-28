// {"0:0":[153,16,138,191,238,117,188,106,111,185,226,101,177,179,129,80,138,111,251,127,99,239,150,134,114,66,232,41,62,206,122,168]}
// Seed: 7650920572267454988

struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: bool, arg_3: vec2<bool>) -> f32 {
    let var_0 = max(-(-(arg_0.a / arg_0.a)) / -11793i, i32(-2147483648));
    let var_1 = arg_0;
    var var_2 = ~39248u;
    let var_3 = -(-abs(arg_1));
    var var_4 = var_1.a;
    return (arg_1 * round(abs(abs(arg_1)))) - trunc(-ceil(arg_1));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<f32>) -> f32 {
    var var_0 = Struct_1(-func_3(Struct_3(arg_1.c), -1172f, true, !select(vec2<bool>(true, true), vec2<bool>(true, true), true)), reverseBits(-1i), arg_2.c | i32(-2147483648));
    var var_1 = -(countOneBits(-vec3<i32>(var_0.b, 23053i, arg_1.c) >> (vec3<u32>(1u, 11758u, arg_0) / vec3<u32>(4294967295u, arg_0, u_input.b.x))) ^ -select(vec3<i32>(43897i, arg_1.b, arg_1.c) / vec3<i32>(arg_1.b, var_0.c, var_0.c), select(vec3<i32>(var_0.c, arg_2.b, -17079i), vec3<i32>(2147483647i, arg_1.c, 1i), true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false))));
    var_0 = arg_2;
    var var_2 = -func_3(Struct_3(-1328i), func_3(Struct_3(i32(-2147483648)), -(-629f), false, select(vec2<bool>(true, true), vec2<bool>(false, false), true)) - 447f, select(!false, (-73175i / arg_1.b) < clamp(var_1.x, var_1.x, arg_1.b), arg_1.a != -669f), !select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, false), false), select(vec2<bool>(true, false), vec2<bool>(false, true), true)));
    var var_3 = u_input.b.yx;
    return exp2((sign(arg_1.a + arg_1.a) + var_0.a) * arg_1.a);
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: vec3<i32>, arg_3: Struct_2) -> Struct_3 {
    let var_0 = -(-(-select(vec2<f32>(arg_3.a.a, -136f), vec2<f32>(arg_3.a.a, arg_3.a.a), vec2<bool>(arg_3.b.x, false)))) * (vec2<f32>(-exp2(arg_3.a.a), -arg_3.a.a * -(-116f)) * (max(-vec2<f32>(-1481f, 300f), floor(vec2<f32>(-188f, arg_1))) - sign(vec2<f32>(arg_1, 1157f) / vec2<f32>(arg_1, arg_3.a.a))));
    let var_1 = ~(~vec2<i32>(2147483647i * arg_2.x, ~11197i) % vec2<i32>(-(-1i), arg_2.x));
    let var_2 = arg_3.a;
    var var_3 = Struct_3(2147483647i);
    var_3 = Struct_3(-1i);
    return Struct_3(max(~arg_3.a.b, dot(min(vec2<i32>(-6168i, -17333i), arg_2.xz), clamp(vec2<i32>(54191i, -58924i), arg_2.yx, arg_2.zx) / (vec2<i32>(arg_2.x, arg_3.a.c) & arg_2.yx))));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: i32) -> i32 {
    let var_0 = func_4(dot(arg_1.xz, ~vec2<u32>(~4294967295u, arg_1.x >> 100320u)), trunc(((-590f / 664f) * func_2(14126u, Struct_1(679f, -30602i, arg_2), Struct_1(-1679f, arg_2, 1i), vec4<f32>(908f, 260f, 885f, 1403f))) + -730f), countOneBits(select(reverseBits(vec3<i32>(arg_2, arg_2, arg_0.x)), vec3<i32>(arg_2 ^ arg_0.x, -15780i >> arg_1.x, countOneBits(26584i)), vec3<bool>(true, select(false, true, true), any(vec2<bool>(false, true))))), Struct_2(Struct_1(298f, dot(vec3<i32>(arg_2, -1i, 4385i) * vec3<i32>(arg_0.x, -1i, 0i), vec3<i32>(69860i, -57445i, 10063i)), arg_2), select(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), select(!vec2<bool>(false, false), vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true))), !(!vec2<bool>(false, true)))));
    let var_1 = Struct_1(-(-(floor(-388f) + -(-887f))), -arg_0.x, 2147483647i);
    return arg_0.x - (select(~(-(-3038i)), ~var_1.c & -arg_2, arg_0.x <= (var_1.b - 0i)) + -(-1i));
}

fn func_5(arg_0: i32, arg_1: i32) -> bool {
    let var_0 = Struct_2(Struct_1(-(-(-1196f)), dot(~vec3<i32>(-1i, 1i, arg_0) ^ ~vec3<i32>(i32(-2147483648), arg_0, arg_1), clamp(vec3<i32>(-24909i, arg_0, arg_1), vec3<i32>(1i, -1776i, arg_1), vec3<i32>(arg_1, arg_1, arg_0)) + -vec3<i32>(arg_1, i32(-2147483648), arg_0)), 10412i), !(!select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), select(vec2<bool>(true, false), vec2<bool>(true, false), false), false)));
    var var_1 = clamp(1u, ~dot(vec4<u32>(u_input.a, u_input.a, u_input.b.x, 0u) + vec4<u32>(u_input.a, u_input.c, 97880u, u_input.a), ~vec4<u32>(u_input.c, 0u, u_input.c, 4294967295u)), ~firstTrailingBit(42736u)) ^ (~(1u ^ ~0u) - ~u_input.c);
    var_1 = 59161u;
    let var_2 = arg_1;
    let var_3 = !select(!select(!vec3<bool>(false, var_0.b.x, var_0.b.x), !vec3<bool>(var_0.b.x, false, var_0.b.x), all(vec4<bool>(var_0.b.x, true, false, var_0.b.x))), select(vec3<bool>(false, var_0.a.a <= 185f, var_0.b.x), select(vec3<bool>(var_0.b.x, var_0.b.x, true), !vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x), select(vec3<bool>(false, false, var_0.b.x), vec3<bool>(false, var_0.b.x, var_0.b.x), vec3<bool>(var_0.b.x, var_0.b.x, false))), abs(1u) > (u_input.b.x | 1u)), !any(!vec3<bool>(var_0.b.x, var_0.b.x, true)));
    return any(!vec4<bool>(abs(432f) > (-212f - 442f), var_3.x, var_0.b.x, any(select(var_3, vec3<bool>(true, var_0.b.x, false), var_0.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(dot(vec2<i32>(0i, dot(firstTrailingBit(vec4<i32>(i32(-2147483648), -7328i, 1i, -1i)), select(vec4<i32>(2147483647i, 1i, -20686i, -1i), vec4<i32>(i32(-2147483648), -6195i, -15089i, 1i), true))), vec2<i32>(select(6029i, 15316i, true) ^ max(2147483647i, -12535i), select(45919i * 2147483647i, 2147483647i, false | false))), func_1(-(min(vec2<i32>(-1i, -1i), vec2<i32>(4389i, -1i)) % vec2<i32>(19102i, 0i)), ~vec3<u32>(64644u, 1u, 26595u) / (~u_input.b << vec3<u32>(u_input.a, 37517u, 4294967295u)), -1i));
    let x = u_input.a;
    s_output = StorageBuffer(~(vec3<u32>(u_input.c, 16607u, 63834u) / abs(u_input.b)) + ~(~vec3<u32>(26649u, 45922u, u_input.b.x)), -(trunc(-vec2<f32>(283f, -403f)) / max(vec2<f32>(1120f, -575f) / vec2<f32>(1811f, -316f), round(vec2<f32>(-989f, -1000f)))), round(func_2(firstTrailingBit(u_input.c), Struct_1(401f, -21055i, -1i), Struct_1(-418f, -13914i, -16411i), -vec4<f32>(1000f, -399f, 711f, 493f))) - (func_2(58201u, Struct_1(-951f, 0i, -22891i), Struct_1(-1000f, -46291i, 40204i), min(vec4<f32>(2266f, -651f, 1190f, -1693f), vec4<f32>(-676f, 1944f, 726f, -318f))) / floor(sign(-152f))));
}

