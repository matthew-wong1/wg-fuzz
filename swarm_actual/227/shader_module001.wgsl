// {"0:0":[143,81,155,43,34,156,239,177,204,105,162,22,142,231,219,236]}
// Seed: 11890961249730835762

struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: bool,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: bool) -> f32 {
    var var_0 = u_input.a.x;
    var var_1 = Struct_1(4294967295u, ~select(vec4<u32>(0u ^ 0u, 44716u, 12382u - u_input.a.x, 57774u % u_input.a.x), vec4<u32>(u_input.a.x - 4294967295u, 0u, ~4681u, u_input.a.x), vec4<bool>(false, true, any(vec2<bool>(false, arg_0)), all(vec3<bool>(false, true, true)))), arg_0, vec3<i32>(select(-16399i, ~(~(i32(-2147483648))), !(arg_0 && arg_0)), (0i % ~(-5315i)) % -12261i, min(firstTrailingBit(22213i), max(1i, i32(-2147483648)) / (25438i * 40930i))));
    var var_2 = max(-(-max(1200f, -2777f)), 171f);
    var_0 = ~(~0u);
    var var_3 = Struct_1(~u_input.a.x >> var_1.b.x, vec4<u32>(var_1.a, u_input.a.x, var_1.a | (min(var_1.a, 0u) ^ ~102572u), u_input.a.x), !(!(!true)) && !all(vec3<bool>(arg_0, arg_0, true)), vec3<i32>(0i, dot(var_1.d, vec3<i32>(var_1.d.x, var_1.d.x, var_1.d.x)) % -(-2147483647i), -reverseBits(dot(vec4<i32>(i32(-2147483648), 0i, var_1.d.x, var_1.d.x), vec4<i32>(25918i, -9044i, var_1.d.x, 1i)))));
    return -(trunc(select(exp2(1308f), -557f * -357f, all(vec2<bool>(var_3.c, false)))) / -(-(-(-1000f))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = floor(vec4<f32>(-152f, arg_3.x, -3282f, abs(504f)));
    var var_1 = !(true || any(!vec3<bool>(true, arg_2.c, arg_0.c))) & (~(~u_input.a.x - 88918u) == arg_0.b.x);
    let var_2 = arg_0;
    var var_3 = ((arg_3.x - 1205f) / 2040f) * arg_3.x;
    var_3 = -(-func_3(arg_2.c)) + -289f;
    return Struct_1(arg_0.a, vec4<u32>((0u + u_input.a.x) % arg_1.x, firstLeadingBit(dot(vec3<u32>(55603u, 4294967295u, 13035u), arg_0.b.yyz)), (arg_2.b.x ^ 16445u) - 103927u, 30693u) - vec4<u32>(73915u, u_input.a.x >> 4749u, 18107u, firstTrailingBit(arg_2.b.x / 654u)), true, var_2.d);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: bool) -> Struct_1 {
    let var_0 = arg_0.b.wwz;
    var var_1 = Struct_1(dot(~arg_0.b, (arg_0.b >> (vec4<u32>(u_input.a.x, u_input.a.x, arg_0.a, var_0.x) ^ arg_0.b)) + (arg_0.b - arg_0.b)), arg_0.b, !(!(!any(vec3<bool>(false, true, arg_1.x)))), -(-vec3<i32>(arg_0.d.x, arg_0.d.x, -33066i)) ^ countOneBits(arg_0.d));
    var var_2 = Struct_1((arg_0.b.x >> max(max(var_0.x, 43765u), dot(arg_0.b.zyx, vec3<u32>(71509u, arg_0.a, 46159u)))) - 1u, ~select(var_1.b, firstLeadingBit(arg_0.b), !select(vec4<bool>(false, true, true, arg_2), arg_1, arg_1.x)), -(-(1106f - 2294f)) >= func_3(floor(-551f) == -(-252f)), arg_0.d | (vec3<i32>(18073i % 27540i, 28384i, 1i) ^ vec3<i32>(~1i, var_1.d.x, var_1.d.x)));
    var var_3 = var_1.d.yz;
    var var_4 = arg_0;
    return Struct_1(4294967295u, ~var_2.b, arg_1.x, var_2.d);
}

fn func_5(arg_0: Struct_1, arg_1: bool) -> f32 {
    let var_0 = -(vec4<f32>(-750f - select(466f, -297f, true), func_3(true) * -(-449f), ceil(2402f) + select(638f, -2065f, true), -1660f) + vec4<f32>(-985f, 525f, -(-(-1000f)), 1067f));
    let var_1 = vec2<bool>(arg_1, !(!arg_0.c));
    var var_2 = arg_0;
    var_2 = func_2(Struct_1(u_input.a.x, ~vec4<u32>(var_2.a, arg_0.b.x, u_input.a.x, u_input.a.x) & var_2.b, any(select(vec4<bool>(true, arg_0.c, var_1.x, var_2.c), select(vec4<bool>(false, var_2.c, false, false), vec4<bool>(arg_1, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, false, arg_0.c, var_2.c)), !vec4<bool>(false, true, true, false))), (vec3<i32>(var_2.d.x, arg_0.d.x, var_2.d.x) | firstLeadingBit(arg_0.d)) >> u_input.a), var_2.b, func_2(Struct_1(~4294967295u, clamp(vec4<u32>(u_input.a.x, 1u, 4294967295u, var_2.a), var_2.b, vec4<u32>(arg_0.b.x, 4294967295u, u_input.a.x, var_2.b.x)) + ~vec4<u32>(arg_0.b.x, u_input.a.x, arg_0.a, 44402u), false, -var_2.d), vec4<u32>(~var_2.a, 14183u - 0u, 0u >> arg_0.b.x, reverseBits(1u)) * var_2.b, func_4(func_2(Struct_1(var_2.a, vec4<u32>(6154u, var_2.a, var_2.b.x, 4294967295u), var_2.c, var_2.d), arg_0.b, func_4(Struct_1(1u, arg_0.b, true, vec3<i32>(arg_0.d.x, 66910i, 1i)), vec4<bool>(false, true, arg_0.c, arg_0.c), var_1.x), vec3<f32>(var_0.x, 1000f, 1581f)), !select(vec4<bool>(arg_1, true, arg_0.c, false), vec4<bool>(false, true, true, false), var_2.c), (2198f >= -297f) && true), var_0.zww - vec3<f32>(var_0.x * var_0.x, var_0.x * -271f, exp2(var_0.x))), ceil(vec3<f32>(min(-(-2404f), -var_0.x), sign(-var_0.x), -(1106f + 844f))));
    let var_3 = 1u;
    return 1918f;
}

fn func_1() -> i32 {
    var var_0 = -abs(-vec3<f32>(-(-142f), 518f / -1736f, 1516f + 300f));
    var var_1 = vec3<f32>(-(-((var_0.x / 1000f) + (-333f + var_0.x))), var_0.x, var_0.x);
    var_1 = vec3<f32>(sign(-var_1.x), func_5(func_4(func_2(Struct_1(u_input.a.x, vec4<u32>(94490u, u_input.a.x, u_input.a.x, 49631u), true, vec3<i32>(-1i, 12783i, -54425i)), vec4<u32>(u_input.a.x, u_input.a.x, 124u, 1u), Struct_1(4294967295u, vec4<u32>(4294967295u, 1u, u_input.a.x, u_input.a.x), false, vec3<i32>(-1i, 31543i, 1i)), vec3<f32>(var_1.x, -388f, -1024f)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false)), any(vec3<bool>(true, false, false))), true), step(-(-(-3036f)), (-1340f + var_0.x) / select(-148f, var_0.x, true))) + sign(vec3<f32>(245f, -var_1.x, -489f - var_1.x) / select(vec3<f32>(var_1.x, var_0.x, var_0.x) + vec3<f32>(var_1.x, 414f, -168f), vec3<f32>(1014f, var_1.x, var_0.x), func_2(Struct_1(u_input.a.x, vec4<u32>(u_input.a.x, 39575u, u_input.a.x, 0u), false, vec3<i32>(0i, i32(-2147483648), 1i)), vec4<u32>(u_input.a.x, u_input.a.x, 1u, 4294967295u), Struct_1(u_input.a.x, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u), false, vec3<i32>(2147483647i, i32(-2147483648), -2618i)), vec3<f32>(-1000f, -1000f, var_1.x)).c));
    var_1 = min(vec3<f32>((max(-304f, -1176f) * (1305f + var_1.x)) + floor(var_1.x), -1000f, 1288f), (ceil(vec3<f32>(-517f, var_0.x, var_0.x)) / trunc(-vec3<f32>(var_1.x, var_0.x, var_0.x))) * trunc(-(vec3<f32>(var_1.x, var_0.x, var_0.x) - vec3<f32>(-362f, -1154f, 226f))));
    let var_2 = round(-(var_0.x * var_1.x) / 357f);
    return ((((36474i >> 4294967295u) + 1i) | 1i) | -78971i) << u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits((vec2<i32>(1i ^ -11340i, reverseBits(-13765i)) + vec2<i32>(13433i + -15507i, -1i)) & (max(vec2<i32>(-1i, -1i) << u_input.a.zx, countOneBits(vec2<i32>(27741i, i32(-2147483648)))) % vec2<i32>(i32(-2147483648), 33117i | 2147483647i)));
    var_0 = vec2<i32>(func_1(), var_0.x);
    var_0 = firstTrailingBit(-((vec2<i32>(45913i, i32(-2147483648)) >> (vec2<u32>(u_input.a.x, u_input.a.x) >> vec2<u32>(4294967295u, u_input.a.x))) & -(~vec2<i32>(var_0.x, -17620i))));
    var_0 = vec2<i32>(0i, dot(vec3<i32>(~dot(vec2<i32>(var_0.x, -84278i), vec2<i32>(13410i, var_0.x)), (9030i - var_0.x) & -1i, min(i32(-2147483648), -1i)), vec3<i32>(~(-19999i), -(var_0.x * -1i), abs(clamp(var_0.x, 0i, var_0.x)))));
    let var_1 = !(!select(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false)), select(!vec4<bool>(false, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)), vec4<bool>(false, true, true, true)), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), true)));
    var_0 = func_2(func_2(func_2(Struct_1(u_input.a.x, ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), !false, vec3<i32>(-1i, -40422i, var_0.x)), ~(vec4<u32>(u_input.a.x, 100808u, u_input.a.x, u_input.a.x) >> vec4<u32>(4294967295u, u_input.a.x, 1u, u_input.a.x)), func_4(func_2(Struct_1(u_input.a.x, vec4<u32>(78953u, 4766u, u_input.a.x, u_input.a.x), var_1.x, vec3<i32>(var_0.x, var_0.x, var_0.x)), vec4<u32>(u_input.a.x, 14593u, 1u, u_input.a.x), Struct_1(0u, vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x), var_1.x, vec3<i32>(-14597i, var_0.x, var_0.x)), vec3<f32>(2188f, 984f, -526f)), select(vec4<bool>(true, false, var_1.x, var_1.x), var_1, var_1.x), !var_1.x), vec3<f32>(sign(-1601f), floor(-1614f), exp2(240f))), ~(vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x) / vec4<u32>(0u, u_input.a.x, 0u, u_input.a.x)) * (~vec4<u32>(0u, u_input.a.x, 1u, u_input.a.x) % (vec4<u32>(0u, 1u, 4294967295u, u_input.a.x) * vec4<u32>(0u, 4294967295u, 4294967295u, u_input.a.x))), Struct_1(clamp(u_input.a.x, 80045u, u_input.a.x ^ 741u), vec4<u32>(dot(vec4<u32>(u_input.a.x, u_input.a.x, 0u, 1u), vec4<u32>(6355u, u_input.a.x, 59467u, 57127u)), 22019u, u_input.a.x | u_input.a.x, ~40354u), any(var_1) || var_1.x, vec3<i32>(var_0.x, firstLeadingBit(2147483647i), var_0.x)), vec3<f32>(select(-1566f, 341f, true) * -151f, -sign(-1000f), -202f)), max(vec4<u32>(~60703u, u_input.a.x >> (0u ^ u_input.a.x), 75210u, ~countOneBits(4294967295u)), vec4<u32>(~(~4294967295u), 1u, u_input.a.x, u_input.a.x)), func_4(func_4(func_4(func_2(Struct_1(u_input.a.x, vec4<u32>(17390u, u_input.a.x, u_input.a.x, 0u), true, vec3<i32>(var_0.x, var_0.x, var_0.x)), vec4<u32>(1u, 4294967295u, u_input.a.x, u_input.a.x), Struct_1(19928u, vec4<u32>(0u, u_input.a.x, 4294967295u, 1u), true, vec3<i32>(var_0.x, -36856i, var_0.x)), vec3<f32>(-1319f, -879f, 448f)), vec4<bool>(var_1.x, var_1.x, true, true), !false), select(!vec4<bool>(false, false, var_1.x, var_1.x), !vec4<bool>(var_1.x, var_1.x, var_1.x, false), select(vec4<bool>(var_1.x, var_1.x, true, false), vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<bool>(true, var_1.x, false, var_1.x))), all(vec2<bool>(true, true)) || (-1386f == -1625f)), !(!var_1), var_1.x), step(vec3<f32>(-273f, exp2(218f), func_3(var_1.x)), -vec3<f32>(-189f, 1000f, -1000f)) * -trunc(-vec3<f32>(-1405f, 323f, 464f))).d.zx;
    let var_2 = func_2(Struct_1(abs(u_input.a.x << 169958u), ~(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 93717u)), !false, func_4(Struct_1(reverseBits(u_input.a.x), ~vec4<u32>(44046u, u_input.a.x, 7125u, 0u), var_1.x, vec3<i32>(var_0.x, -19661i, 11261i) << vec3<u32>(1u, 12928u, u_input.a.x)), select(var_1, vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), !var_1.x), (742f >= -1872f) & true).d), reverseBits(~(~vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x))) * ~((vec4<u32>(u_input.a.x, 26976u, u_input.a.x, u_input.a.x) >> vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u)) & vec4<u32>(u_input.a.x, u_input.a.x, 2576u, u_input.a.x)), func_4(func_4(func_4(Struct_1(28702u, vec4<u32>(93717u, 1u, u_input.a.x, 0u), var_1.x, vec3<i32>(var_0.x, var_0.x, 44843i)), select(var_1, vec4<bool>(var_1.x, false, true, false), var_1), var_1.x), !var_1, min(-600f, 499f) > (1715f - -1000f)), vec4<bool>(var_1.x, dot(vec2<i32>(var_0.x, var_0.x), vec2<i32>(var_0.x, var_0.x)) > i32(-2147483648), any(select(var_1, vec4<bool>(false, var_1.x, var_1.x, false), false)), var_1.x), false == (var_1.x == var_1.x)), vec3<f32>((-(-372f) / (-827f - -1445f)) * -(-(-643f)), max(-(-848f), -(-1847f * -757f)), -1000f));
    let var_3 = var_2;
    var_0 = var_2.d.yz;
    let x = u_input.a;
    s_output = StorageBuffer(round(vec2<f32>(184f, -(-1348f))), -abs(floor(-(-1000f))));
}

