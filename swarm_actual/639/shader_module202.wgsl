// {"0:0":[68,222,117,157,40,192,205,36,144,49,95,215,24,7,196,27,197,25,54,188,148,255,230,87,152,232,78,131,120,202,185,63,147,138,185,16,118,174,149,9,103,212,237,61,124,90,123,198]}
// Seed: 866285828304375414

struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: i32, arg_1: vec2<i32>, arg_2: i32, arg_3: vec3<f32>) -> f32 {
    let var_0 = Struct_2(Struct_1(max(~(i32(-2147483648)), 2811i), 3194u, ~u_input.a.xyx), 55694u);
    let var_1 = abs(-(~firstLeadingBit(vec4<i32>(2147483647i, arg_2, arg_0, arg_1.x)) * firstLeadingBit(select(vec4<i32>(arg_1.x, -19595i, 5961i, 4552i), vec4<i32>(-61197i, -31261i, i32(-2147483648), -37367i), vec4<bool>(false, false, false, false)))));
    var var_2 = var_0;
    var var_3 = ~arg_0;
    var var_4 = firstTrailingBit(vec4<u32>(~(var_2.b << var_0.a.b), ~(u_input.b.x + var_0.a.c.x), var_2.b, ~3058u)) * u_input.a;
    return arg_3.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    var var_0 = vec3<f32>(-(-(-(-907f + 1193f))), (abs(-491f / -167f) - abs(floor(1124f))) * -ceil(-311f), -2090f);
    var_0 = vec3<f32>(-155f, max(ceil(var_0.x) * select(var_0.x * var_0.x, var_0.x, 0u < 4294967295u), -(-var_0.x) * -var_0.x), -func_3(arg_1.a >> arg_1.b, vec2<i32>(arg_0.a, 1i) & vec2<i32>(arg_0.a, arg_0.a), arg_0.a, select(vec3<f32>(var_0.x, var_0.x, -1000f), vec3<f32>(var_0.x, 1000f, 930f), vec3<bool>(true, true, false))) - 434f);
    let var_1 = arg_0;
    var_0 = max(trunc(vec3<f32>(abs(-1165f - var_0.x), -round(695f), -var_0.x)), step(vec3<f32>(-select(var_0.x, var_0.x, true), var_0.x, trunc(var_0.x)), vec3<f32>(-(-(-856f)), -select(var_0.x, -1431f, false), ceil(878f))));
    let var_2 = Struct_1(arg_0.a << 34523u, arg_0.b, vec3<u32>(3544u | 0u, ~abs(abs(arg_1.b)), ~(var_1.b | (1u ^ 72439u))));
    return Struct_2(arg_0, clamp(dot(~(~u_input.a), vec4<u32>(arg_0.c.x, 8042u, 4294967295u, 18202u) % firstTrailingBit(u_input.a)), (4294967295u * 0u) - arg_1.c.x, firstLeadingBit(max(26620u, 1u)) << 4294967295u));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec2<bool>, arg_3: Struct_2) -> vec2<i32> {
    var var_0 = vec4<bool>(arg_1, true, 2418f <= abs(1139f), true);
    var var_1 = func_2(Struct_1(arg_3.a.a, 1u, vec3<u32>(19189u & u_input.a.x, arg_3.a.b, u_input.b.x ^ arg_0.b) % vec3<u32>(arg_0.b, arg_3.a.c.x, 0u | arg_3.a.c.x)), arg_3.a).a;
    return max(~vec2<i32>((-54131i ^ var_1.a) - arg_3.a.a, ~(-1i) / -5273i), abs(vec2<i32>(16967i, -1821i)));
}

fn func_5(arg_0: vec3<u32>, arg_1: vec2<i32>) -> vec3<f32> {
    var var_0 = func_2(func_2(func_2(func_2(Struct_1(39670i, 4294967295u, vec3<u32>(1u, 0u, 4294967295u)), Struct_1(arg_1.x, 128650u, arg_0)).a, Struct_1(2147483647i, func_2(Struct_1(-11917i, 0u, vec3<u32>(arg_0.x, arg_0.x, 2283u)), Struct_1(arg_1.x, 11258u, vec3<u32>(1u, 55776u, arg_0.x))).b, ~vec3<u32>(4294967295u, arg_0.x, arg_0.x))).a, func_2(Struct_1(arg_1.x, 0u + 1u, vec3<u32>(arg_0.x, arg_0.x, 1u)), Struct_1(arg_1.x, u_input.d.x, vec3<u32>(98803u, u_input.a.x, u_input.c) / vec3<u32>(arg_0.x, u_input.a.x, 20665u))).a).a, func_2(Struct_1(-(~62624i), select(~0u, countOneBits(23879u), !true), firstTrailingBit(vec3<u32>(arg_0.x, 4294967295u, arg_0.x) - vec3<u32>(u_input.b.x, arg_0.x, 4294967295u))), Struct_1(func_4(Struct_1(arg_1.x, 4294967295u, vec3<u32>(arg_0.x, 1u, u_input.a.x)), all(vec4<bool>(true, false, false, true)), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), Struct_2(Struct_1(arg_1.x, 8376u, vec3<u32>(1u, arg_0.x, 4294967295u)), 1u)).x, u_input.d.x & (4294967295u >> 4294967295u), ~clamp(u_input.b, u_input.b, u_input.d))).a).a;
    var var_1 = (-max(vec4<i32>(var_0.a, 1i, 2147483647i, -76712i), max(vec4<i32>(arg_1.x, i32(-2147483648), var_0.a, var_0.a), vec4<i32>(0i, arg_1.x, arg_1.x, var_0.a))) | select(vec4<i32>(-2793i << 0u, select(35692i, -57056i, false), -arg_1.x, -arg_1.x), vec4<i32>(-7828i - 51642i, -2147483647i, dot(vec4<i32>(arg_1.x, 2147483647i, arg_1.x, 0i), vec4<i32>(arg_1.x, var_0.a, var_0.a, 3978i)), -31970i), vec4<bool>(38401i != arg_1.x, !true, !true, -267f >= -164f))) + -abs(firstTrailingBit(select(vec4<i32>(-1i, var_0.a, arg_1.x, i32(-2147483648)), vec4<i32>(-1i, var_0.a, 0i, arg_1.x), true)));
    var var_2 = func_2(func_2(func_2(func_2(func_2(Struct_1(var_1.x, 1u, arg_0), Struct_1(var_1.x, 10649u, u_input.a.www)).a, func_2(Struct_1(-1i, 5168u, vec3<u32>(var_0.c.x, var_0.c.x, var_0.b)), Struct_1(var_0.a, var_0.c.x, vec3<u32>(u_input.d.x, var_0.c.x, arg_0.x))).a).a, Struct_1(37043i << u_input.a.x, arg_0.x, vec3<u32>(var_0.c.x, 15867u, u_input.b.x) / var_0.c)).a, func_2(Struct_1(1i, ~arg_0.x, u_input.a.xzx), func_2(func_2(Struct_1(var_0.a, arg_0.x, u_input.a.zwx), Struct_1(2147483647i, 0u, vec3<u32>(arg_0.x, var_0.b, arg_0.x))).a, Struct_1(i32(-2147483648), var_0.b, vec3<u32>(61551u, arg_0.x, u_input.d.x))).a).a).a, func_2(Struct_1((-7203i + 0i) >> clamp(arg_0.x, var_0.b, arg_0.x), 117227u, ~func_2(Struct_1(11744i, 49469u, arg_0), Struct_1(1i, 1u, vec3<u32>(5511u, arg_0.x, 0u))).a.c), func_2(func_2(Struct_1(var_0.a, arg_0.x, u_input.d), func_2(Struct_1(28939i, arg_0.x, arg_0), Struct_1(-8713i, 4294967295u, vec3<u32>(arg_0.x, 0u, 36896u))).a).a, func_2(func_2(Struct_1(35095i, 29129u, vec3<u32>(var_0.b, var_0.b, var_0.c.x)), Struct_1(var_0.a, u_input.e, vec3<u32>(u_input.d.x, 1u, u_input.d.x))).a, func_2(Struct_1(arg_1.x, 1u, var_0.c), Struct_1(var_0.a, arg_0.x, vec3<u32>(46944u, arg_0.x, 1u))).a).a).a).a).a;
    let var_3 = arg_1.x + var_0.a;
    let var_4 = min(-max(vec2<f32>(1058f, 676f), -vec2<f32>(-1268f, -1777f)) - max((vec2<f32>(-1077f, -1000f) * vec2<f32>(514f, -1526f)) + vec2<f32>(1516f, 1000f), vec2<f32>(-(-1413f), -1201f - 1321f)), ceil(ceil(vec2<f32>(558f, 172f) * vec2<f32>(-1273f, -871f)) + (-vec2<f32>(1533f, 338f) * -vec2<f32>(465f, -1372f))));
    return -(exp2(-vec3<f32>(var_4.x, 312f, -375f)) / -(vec3<f32>(-743f, 1788f, var_4.x) / vec3<f32>(var_4.x, 1485f, var_4.x))) / vec3<f32>(step(var_4.x * -var_4.x, var_4.x), -(max(var_4.x, var_4.x) / (var_4.x + -1695f)), (-var_4.x - (574f / var_4.x)) + step(var_4.x, var_4.x));
}

fn func_6(arg_0: vec3<f32>) -> Struct_2 {
    let var_0 = Struct_2(func_2(Struct_1(~23148i, u_input.e, vec3<u32>(4294967295u | 1u, 33315u % u_input.d.x, u_input.d.x)), Struct_1(-(-1i), ~(19166u + u_input.e), ~(~vec3<u32>(13401u, 53249u, u_input.b.x)))).a, u_input.b.x / u_input.e);
    let var_1 = -vec2<f32>(func_5(~(~vec3<u32>(67699u, u_input.e, 59469u)), clamp(firstLeadingBit(vec2<i32>(var_0.a.a, 1i)), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-13921i, 25792i))).x, -2083f);
    let var_2 = min(arg_0, -arg_0 - ceil(-vec3<f32>(2037f, var_1.x, 1187f))) - vec3<f32>(-(-239f), arg_0.x, 1278f);
    var var_3 = firstTrailingBit(~var_0.a.c);
    var var_4 = -vec2<f32>(839f + (-(-814f) - round(-469f)), abs(-(-(-588f))));
    return var_0;
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: vec3<f32>) -> vec2<u32> {
    var var_0 = arg_2.xz - -arg_2.yy;
    var_0 = vec2<f32>(-(-arg_2.x), arg_2.x);
    let var_1 = trunc(460f);
    var_0 = -arg_2.yz;
    let var_2 = func_6(func_5(vec3<u32>(abs(2006u), arg_1, 27812u), firstTrailingBit(func_4(Struct_1(-25175i, 21960u, vec3<u32>(u_input.d.x, 0u, arg_0)), all(vec3<bool>(true, false, true)), vec2<bool>(false, true), func_2(Struct_1(-42440i, 1u, u_input.b), Struct_1(-42336i, arg_0, u_input.a.xzy))))));
    return func_2(func_6(vec3<f32>(-(-(-428f)), -(174f / var_0.x), -1520f)).a, Struct_1(-(~var_2.a.a) ^ var_2.a.a, abs(~arg_0), firstTrailingBit(~vec3<u32>(var_2.a.c.x, var_2.b, var_2.a.c.x) >> vec3<u32>(5406u, 59746u, arg_1)))).a.c.zx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(~u_input.b.xz / countOneBits(vec2<u32>(1u, 0u) & ~vec2<u32>(u_input.b.x, 2035u)), func_1((u_input.d.x << u_input.e) << ~(~9667u), u_input.e, (floor(vec3<f32>(-1772f, -574f, 325f)) + vec3<f32>(282f, -374f, -323f)) / (vec3<f32>(2027f, 1467f, 105f) * vec3<f32>(-198f, -1372f, -227f))), !(!select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, true), true), !vec2<bool>(true, true))));
    var var_1 = !select(!(!(!vec2<bool>(false, false))), !vec2<bool>(!true, false), vec2<bool>(!false == all(vec2<bool>(false, false)), select(select(false, true, false), !false, !true)));
    let var_2 = func_2(func_6(vec3<f32>(func_5(vec3<u32>(u_input.d.x, 43360u, var_0.x), vec2<i32>(670i, -1i)).x * select(569f, -1000f, var_1.x), -(-1741f), -513f)).a, Struct_1(1383i, ~(0u | 1359u) ^ var_0.x, u_input.a.zww * vec3<u32>(u_input.a.x, 1108u, firstLeadingBit(4294967295u))));
    var var_3 = var_2;
    var_3 = func_2(Struct_1(2147483647i, ~(9849u / u_input.b.x) << var_2.b, vec3<u32>(4294967295u * (u_input.e - 0u), 35251u, ~var_0.x ^ 15465u)), var_3.a);
    var var_4 = vec2<u32>(4294967295u, ~u_input.d.x);
    let var_5 = firstLeadingBit(~var_2.a.c);
    let var_6 = vec2<f32>(683f * round(step(-2009f, -268f + 168f)), -(-2271f));
    var_1 = select(select(vec2<bool>(true, !all(vec2<bool>(false, false))), select(vec2<bool>(var_1.x, all(vec2<bool>(var_1.x, var_1.x))), select(!vec2<bool>(var_1.x, false), select(vec2<bool>(false, var_1.x), vec2<bool>(var_1.x, var_1.x), var_1.x), !vec2<bool>(false, false)), !vec2<bool>(var_1.x, var_1.x)), all(!(!vec2<bool>(var_1.x, false)))), vec2<bool>(var_1.x, var_1.x), (~(~var_3.b) + func_6(-vec3<f32>(-3008f, var_6.x, -1653f)).a.c.x) > ~((1u & 0u) >> (4294967295u - 52390u)));
    let x = u_input.a;
    s_output = StorageBuffer(clamp(vec3<i32>(var_2.a.a, func_2(Struct_1(var_2.a.a, var_2.a.c.x, vec3<u32>(61648u, 100649u, 32035u)), var_3.a).a.a, var_2.a.a), select(-vec3<i32>(var_3.a.a, var_3.a.a, -5840i), ~vec3<i32>(2147483647i, var_3.a.a, -70390i), !vec3<bool>(true, true, false)) * vec3<i32>(-21099i * var_2.a.a, -var_2.a.a, var_2.a.a | 2569i), vec3<i32>(0i, 25689i - (var_3.a.a & 0i), 110453i / select(var_2.a.a, i32(-2147483648), false))));
}

