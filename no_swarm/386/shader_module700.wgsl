// {"0:0":[117,223,159,108,26,154,65,84,248,210,73,205]}
// Seed: 14204487091213377471

struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec2<u32>,
    d: i32,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: vec4<f32>) -> vec2<u32> {
    var var_0 = Struct_2((~vec3<i32>(u_input.c, -55828i, u_input.a) ^ vec3<i32>(u_input.c, u_input.c, 46534i << 4100u)) % ~vec3<i32>(u_input.a, reverseBits(u_input.a), -23573i - i32(-2147483648)), Struct_1(!(!(!vec4<bool>(true, false, true, true))), vec4<i32>(u_input.a, u_input.c, dot(vec2<i32>(0i, u_input.c), vec2<i32>(u_input.c, 1i)) * dot(vec4<i32>(u_input.c, u_input.c, u_input.a, 2147483647i), vec4<i32>(u_input.c, i32(-2147483648), u_input.a, i32(-2147483648))), u_input.c), -reverseBits(u_input.c)), select(~vec2<u32>(89933u, u_input.b >> u_input.b), ~(vec2<u32>(0u, u_input.b) / vec2<u32>(u_input.b, u_input.b)) & select(~vec2<u32>(u_input.b, 1u), vec2<u32>(0u, u_input.b), vec2<bool>(true, false)), select(vec2<bool>(false, any(vec2<bool>(false, true))), vec2<bool>(!true, !true), !select(vec2<bool>(true, true), vec2<bool>(true, false), false))), -(-(i32(-2147483648)) ^ ((23651i >> u_input.b) % min(15440i, u_input.c))), arg_0.x);
    var_0 = Struct_2(-(~vec3<i32>(var_0.a.x / i32(-2147483648), 2147483647i << 35023u, 0i)), var_0.b, countOneBits(vec2<u32>(~(var_0.c.x << 1u), abs(var_0.c.x))), var_0.d, var_0.e / -189f);
    var_0 = Struct_2(var_0.b.b.ywx, var_0.b, ~vec2<u32>(~var_0.c.x, u_input.b), max(-39577i, -23011i), -var_0.e);
    let var_1 = -(-arg_0);
    let var_2 = var_0.b;
    return vec2<u32>(0u, ~(~1u) % ~var_0.c.x) | ~vec2<u32>(var_0.c.x, abs(0u ^ 0u));
}

fn func_2(arg_0: u32) -> vec4<bool> {
    var var_0 = Struct_4(Struct_3(Struct_1(vec4<bool>(true || false, !true, any(vec3<bool>(false, false, false)), false), min(-vec4<i32>(u_input.c, -5502i, u_input.c, u_input.c), vec4<i32>(1i, -1i, 39333i, -27851i)), -(14688i | u_input.a)), 433f, Struct_1(!(!vec4<bool>(true, false, true, true)), vec4<i32>(-27132i, 0i, 1i, u_input.c), i32(-2147483648)), Struct_2(vec3<i32>(1i - u_input.a, ~u_input.c, ~u_input.c), Struct_1(vec4<bool>(true, false, false, false), vec4<i32>(u_input.c, 44514i, i32(-2147483648), i32(-2147483648)) >> vec4<u32>(6407u, u_input.b, arg_0, 4294967295u), -1i), func_3(-vec4<f32>(145f, 702f, -651f, 276f)), ~(-1i), round(ceil(793f)))), !(-1i < -abs(-8131i)));
    var_0 = Struct_4(Struct_3(var_0.a.a, ceil(-146f * min(1000f, var_0.a.d.e)), var_0.a.d.b, Struct_2((vec3<i32>(u_input.c, i32(-2147483648), var_0.a.d.a.x) ^ var_0.a.d.a) - countOneBits(var_0.a.c.b.yzx), var_0.a.a, ~var_0.a.d.c - (var_0.a.d.c & var_0.a.d.c), 43613i | (var_0.a.d.b.b.x << 56873u), exp2(var_0.a.b))), select(true, !false, true));
    var_0 = Struct_4(Struct_3(Struct_1(var_0.a.a.a, select(~vec4<i32>(1i, u_input.a, 2186i, var_0.a.a.b.x), select(vec4<i32>(2147483647i, -1i, 0i, var_0.a.c.b.x), var_0.a.a.b, var_0.a.a.a), vec4<bool>(true, false, true, var_0.b)), u_input.c / (var_0.a.c.b.x + u_input.a)), -(-(-1510f)), var_0.a.d.b, Struct_2(var_0.a.c.b.xwy, Struct_1(vec4<bool>(true, var_0.b, true, true), -var_0.a.d.b.b, -var_0.a.d.d), select(~var_0.a.d.c, vec2<u32>(14549u, 0u) % var_0.a.d.c, !vec2<bool>(true, var_0.a.c.a.x)), u_input.c, -(-1000f))), !true);
    let var_1 = var_0.a.a;
    var_0 = Struct_4(Struct_3(Struct_1(select(vec4<bool>(var_1.a.x, true, var_0.b, var_1.a.x), var_1.a, !false), abs(-vec4<i32>(u_input.c, 1i, u_input.a, var_0.a.a.b.x)), var_0.a.a.c), -min(exp2(-622f), var_0.a.d.e), var_0.a.c, var_0.a.d), all(var_0.a.d.b.a.ww));
    return var_1.a;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = vec2<bool>(true, (false && !arg_1.x) && !(35662i <= abs(-1i)));
    var var_1 = -(~(-vec2<i32>(u_input.c, u_input.a)) ^ vec2<i32>(u_input.c, firstTrailingBit(5813i)));
    let var_2 = arg_1;
    var var_3 = Struct_4(Struct_3(Struct_1(!vec4<bool>(false, false, false, false), -vec4<i32>(49623i, var_1.x, var_1.x, 54108i), dot(vec4<i32>(u_input.a, var_1.x, var_1.x, -677i), vec4<i32>(u_input.a, var_1.x, i32(-2147483648), var_1.x)) / -var_1.x), -(-769f), Struct_1(!(!vec4<bool>(var_2.x, arg_1.x, true, false)), select(vec4<i32>(u_input.c, u_input.a, -1i, 491i) | vec4<i32>(-25709i, -1i, u_input.c, 11963i), select(vec4<i32>(i32(-2147483648), u_input.c, -4763i, u_input.a), vec4<i32>(var_1.x, i32(-2147483648), 1i, var_1.x), vec4<bool>(false, arg_1.x, false, true)), var_1.x < 27693i), 0i * 2147483647i), Struct_2(-(-vec3<i32>(var_1.x, 45405i, var_1.x)), Struct_1(select(vec4<bool>(false, arg_1.x, var_2.x, true), arg_1, vec4<bool>(var_2.x, var_2.x, true, var_2.x)), ~vec4<i32>(var_1.x, 0i, -19810i, -1i), abs(-1i)), ~(vec2<u32>(u_input.b, 0u) * arg_0.yz), -(u_input.c + var_1.x), sign(-797f))), all(var_0));
    var var_4 = min(-28451i, max(-reverseBits(-62565i) & select(2147483647i, -6419i, var_0.x), var_1.x));
    return var_3.a.c;
}

fn func_1(arg_0: vec2<bool>, arg_1: bool, arg_2: vec4<bool>) -> Struct_2 {
    let var_0 = arg_2;
    let var_1 = Struct_2(vec3<i32>(-abs(0i), -(~u_input.c), i32(-2147483648)) >> ~(~(~vec3<u32>(1u, u_input.b, 46772u))), func_4(abs(max(vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(22379u, u_input.b, u_input.b))) / ~abs(vec3<u32>(u_input.b, u_input.b, u_input.b)), select(!select(arg_2, vec4<bool>(arg_2.x, false, false, arg_0.x), arg_1), func_2(u_input.b), arg_2)), vec2<u32>(u_input.b, ~9142u), countOneBits(75425i << u_input.b), 1546f);
    let var_2 = Struct_4(Struct_3(Struct_1(vec4<bool>(false, true, arg_2.x, 261f >= var_1.e), vec4<i32>(var_1.b.b.x, 1i, -(i32(-2147483648)), var_1.a.x), ~39890i), -(-ceil(1379f)), func_4(vec3<u32>(dot(vec2<u32>(u_input.b, 11649u), var_1.c), u_input.b, ~29053u), var_0), Struct_2(abs(firstTrailingBit(vec3<i32>(u_input.c, var_1.a.x, 3354i))), func_4(vec3<u32>(u_input.b, 0u, var_1.c.x) - vec3<u32>(19559u, u_input.b, 1u), select(vec4<bool>(arg_0.x, true, true, arg_2.x), var_0, true)), select(clamp(var_1.c, var_1.c, var_1.c), vec2<u32>(var_1.c.x, var_1.c.x), all(arg_2.wz)), 2147483647i / (-30055i ^ var_1.a.x), step(var_1.e * -2767f, var_1.e * 290f))), arg_1 && ((90473u ^ 4294967295u) >= select(u_input.b, 0u, false)));
    var var_3 = Struct_3(func_4(select(max(~vec3<u32>(var_2.a.d.c.x, 37035u, 7944u), abs(vec3<u32>(0u, u_input.b, 0u))), ~min(vec3<u32>(23872u, 49149u, 66628u), vec3<u32>(40977u, var_2.a.d.c.x, var_1.c.x)), vec3<bool>(arg_1, !true, !arg_0.x)), var_2.a.d.b.a), 1000f, func_4(firstLeadingBit(~vec3<u32>(56274u, 60735u, 12890u)), select(arg_2, var_1.b.a, ~var_2.a.d.c.x > ~39097u)), Struct_2(vec3<i32>(~u_input.c, func_4(vec3<u32>(0u, 1u, u_input.b) + vec3<u32>(var_1.c.x, u_input.b, var_2.a.d.c.x), select(vec4<bool>(true, true, arg_2.x, var_0.x), var_1.b.a, vec4<bool>(false, var_1.b.a.x, var_0.x, var_0.x))).c, 52688i ^ (var_1.b.c >> 4276u)), var_1.b, min(~reverseBits(vec2<u32>(1u, u_input.b)), vec2<u32>(var_2.a.d.c.x, 4294967295u >> 139952u)), clamp(~var_1.a.x, min(var_1.b.c, u_input.a), var_1.a.x) & -(-var_2.a.a.c), sign(var_2.a.d.e)));
    var var_4 = -2147483647i;
    return Struct_2(select(-abs(vec3<i32>(-1i, var_3.a.b.x, u_input.a) >> vec3<u32>(4294967295u, 20074u, 1u)), vec3<i32>(19085i, u_input.a / -(-19178i), select(firstTrailingBit(14113i), 22135i, func_2(var_2.a.d.c.x).x)), vec3<bool>(!func_4(vec3<u32>(var_2.a.d.c.x, 17933u, u_input.b), var_0).a.x, var_2.a.c.a.x, any(vec3<bool>(false, arg_2.x, var_3.c.a.x)))), var_1.b, var_1.c, ~abs(var_1.b.c & min(1847i, u_input.c)), var_3.d.e - (min(var_3.b * var_2.a.b, 742f * var_2.a.b) / 1000f));
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    var var_0 = -(-sign(-678f) * arg_0.e) <= arg_0.e;
    let var_1 = vec3<bool>(-step(-919f, abs(-234f)) >= floor(-(-316f) + round(arg_0.e)), func_2(firstTrailingBit(arg_0.c.x) & ~35649u).x, !false);
    let var_2 = Struct_3(func_1(var_1.yx, true, arg_0.b.a).b, min(-260f, 612f) * round(round(-arg_0.e)), arg_0.b, Struct_2(arg_0.a % -firstLeadingBit(arg_0.b.b.xxx), Struct_1(!select(arg_0.b.a, arg_0.b.a, arg_0.b.a), arg_0.b.b << ~vec4<u32>(24697u, 0u, arg_0.c.x, arg_0.c.x), arg_0.b.b.x), ~vec2<u32>(122529u + u_input.b, u_input.b), -(-44276i ^ ~u_input.c), 1314f));
    var var_3 = -1i ^ max(var_2.a.b.x + firstLeadingBit(-14868i), -19415i);
    var_3 = 819i;
    return func_4(~vec3<u32>(arg_0.c.x, ~1u, abs(22497u)), vec4<bool>(false | !(!true), !false, true, var_1.x));
}

fn func_6(arg_0: Struct_4, arg_1: u32, arg_2: Struct_2) -> vec3<bool> {
    let var_0 = arg_0;
    let var_1 = arg_0.a.d;
    var var_2 = -22280i;
    var_2 = var_0.a.d.d;
    let var_3 = -(-(-(-vec2<f32>(-1491f, 1112f))));
    return vec3<bool>(var_0.b, any(!var_1.b.a.wyx), func_4(~(abs(vec3<u32>(0u, 1u, 50337u)) + select(vec3<u32>(21187u, var_1.c.x, 32306u), vec3<u32>(76078u, var_1.c.x, arg_0.a.d.c.x), var_1.b.a.yxw)), func_2(func_3(ceil(vec4<f32>(1201f, var_3.x, 886f, var_1.e))).x)).a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(-2527f, max(abs(1053f), -748f));
    var var_1 = Struct_1(!(!(!vec4<bool>(false, true, false, true))), abs(reverseBits(~vec4<i32>(-23883i, u_input.a, 10490i, u_input.a)) + ~(vec4<i32>(-1i, 9588i, u_input.c, u_input.a) << vec4<u32>(u_input.b, 0u, u_input.b, u_input.b))), -77767i + -((u_input.a ^ u_input.a) / u_input.c));
    let var_2 = reverseBits(u_input.b);
    var var_3 = -(-vec2<f32>(floor(-199f), var_0 / var_0));
    var var_4 = func_6(Struct_4(Struct_3(func_5(func_1(vec2<bool>(var_1.a.x, false), false, var_1.a)), (var_0 * 1007f) + (-1000f / var_0), func_4(abs(vec3<u32>(4294967295u, 1u, 4294967295u)), var_1.a), Struct_2(vec3<i32>(var_1.c, -53436i, var_1.c), func_1(var_1.a.zz, false, vec4<bool>(false, false, false, var_1.a.x)).b, vec2<u32>(u_input.b, u_input.b) % vec2<u32>(59254u, 0u), -7667i, 577f)), !var_1.a.x), func_1(func_2(var_2).yy, true, vec4<bool>(!select(false, true, var_1.a.x), !(!var_1.a.x), false, var_1.a.x)).c.x, Struct_2(-vec3<i32>(var_1.c, -var_1.b.x, u_input.c / 1i), Struct_1(var_1.a, func_5(Struct_2(vec3<i32>(u_input.c, 12321i, u_input.a), Struct_1(var_1.a, var_1.b, i32(-2147483648)), vec2<u32>(var_2, 87115u), -15459i, -837f)).b, ~0i), func_3(vec4<f32>(795f, var_0, var_3.x, 712f)) + vec2<u32>(var_2 | 0u, ~var_2), abs(~(var_1.c - var_1.c)), var_3.x));
    let var_5 = 1u;
    let var_6 = Struct_4(Struct_3(Struct_1(var_1.a, func_5(func_1(vec2<bool>(var_1.a.x, false), var_1.a.x, vec4<bool>(true, false, true, var_1.a.x))).b, abs(u_input.c)), var_3.x - var_3.x, func_4(vec3<u32>(4294967295u, 4294967295u, u_input.b), var_1.a), func_1(vec2<bool>(var_4.x, var_4.x), !false, !(!vec4<bool>(true, false, false, var_4.x)))), !false);
    var var_7 = ceil(-step(vec3<f32>(-547f, 763f, -1290f) * vec3<f32>(1826f, var_6.a.b, 1801f), vec3<f32>(var_6.a.d.e, 195f, var_6.a.b) * vec3<f32>(var_3.x, 1039f, var_6.a.b)) * -(min(vec3<f32>(-1023f, 1000f, var_6.a.d.e), vec3<f32>(1000f, var_6.a.b, 1018f)) - vec3<f32>(var_6.a.d.e, var_3.x, 267f)));
    let var_8 = trunc(-627f) + func_1(!(!var_6.a.a.a.ww), false | var_6.b, vec4<bool>(~var_6.a.d.c.x > ~u_input.b, !func_1(vec2<bool>(var_1.a.x, false), var_1.a.x, var_1.a).b.a.x, true, -2244f <= (var_7.x / -760f))).e;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-1i, ((i32(-2147483648) >> var_2) - min(u_input.c, 1i)) * dot(min(var_6.a.a.b, vec4<i32>(u_input.a, 31292i, var_1.b.x, var_1.b.x)), var_1.b | vec4<i32>(0i, 2147483647i, -7792i, var_6.a.d.b.b.x)), u_input.a), (var_6.a.d.c % (vec2<u32>(var_2, 4294967295u) % vec2<u32>(var_2, var_2))) + abs(~(~var_6.a.d.c)), ~var_6.a.d.b.b, firstLeadingBit(reverseBits(~vec4<u32>(55145u, var_2, 1u, 0u))) >> vec4<u32>(func_1(vec2<bool>(true, var_4.x), func_2(4294967295u).x, var_6.a.d.b.a).c.x, 0u, 14183u, func_3(vec4<f32>(343f, 706f, -1363f, var_3.x) - vec4<f32>(889f, var_0, 649f, var_0)).x), -2456f);
}

