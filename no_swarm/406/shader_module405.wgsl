// {"0:0":[103,172,79,209,211,219,78,106,124,102,40,248,154,201,222,130,190,87,84,201,236,138,145,172,79,246,101,74,44,146,78,146]}
// Seed: 9608778086773387054

struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: vec3<u32>) -> f32 {
    var var_0 = vec4<f32>(-549f, -1433f, abs(select(-699f, 1157f, true)) * -(159f + 1000f), -229f) - (-floor(-vec4<f32>(1602f, -838f, 736f, 1701f)) * vec4<f32>(171f, -451f, 940f, -1000f / (1489f * -184f)));
    let var_1 = Struct_1(vec4<f32>(floor(var_0.x), var_0.x / round(-1827f), 1434f, var_0.x), 52112u, ~u_input.a, -24758i, vec4<i32>(min(firstTrailingBit(-u_input.c), u_input.a.x), 23448i, 41341i | u_input.b, ~u_input.c));
    var var_2 = dot(~(-(-vec3<i32>(-11137i, 54779i, u_input.a.x))) / abs(vec3<i32>(u_input.a.x / u_input.b, ~var_1.c.x, 2147483647i)), u_input.a);
    var var_3 = -179f;
    let var_4 = Struct_1(vec4<f32>(abs(1224f), -var_0.x, var_0.x, round(var_0.x)), abs(arg_0.x - (arg_0.x | 1u)), abs(vec3<i32>(max(~1i, dot(var_1.e.yx, u_input.a.yx)), -6647i, u_input.b % (41629i + var_1.e.x))), 1i, max(select(var_1.e, var_1.e, select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true)), vec4<bool>(false, true, true, false), false || false)), select(-(~vec4<i32>(i32(-2147483648), 0i, 31848i, -37013i)), abs(var_1.e), !true)));
    return var_4.a.x;
}

fn func_2(arg_0: f32) -> u32 {
    var var_0 = u_input.a.xz % ~(~u_input.a.yy);
    var var_1 = false;
    var var_2 = Struct_1(step(vec4<f32>(max(-368f, -1303f + 632f), -max(arg_0, arg_0), 940f, -1988f), select(vec4<f32>(arg_0, arg_0, 1000f, -526f), vec4<f32>(arg_0, -514f, 1328f, -401f), !vec4<bool>(false, false, true, false)) * vec4<f32>(func_3(vec3<u32>(1u, 4294967295u, 10452u)), arg_0 + arg_0, arg_0 + arg_0, -(-1384f))), 4294967295u, countOneBits(~(-abs(u_input.a))), 0i, (min(abs(vec4<i32>(var_0.x, u_input.b, -57653i, i32(-2147483648))), vec4<i32>(1i, u_input.b, var_0.x, -21513i)) & vec4<i32>(-(i32(-2147483648)), firstLeadingBit(-13702i), -8258i >> 13704u, -39490i)) * vec4<i32>(var_0.x, firstLeadingBit(1i), -17018i, ~(u_input.c % var_0.x)));
    var_1 = true & any(vec3<bool>(any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false))), (u_input.b * i32(-2147483648)) < dot(vec4<i32>(-3499i, var_2.e.x, var_0.x, var_0.x), var_2.e), all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)))));
    var var_3 = Struct_1(-(-(-(-vec4<f32>(var_2.a.x, -418f, 309f, 1985f)))), 48285u, abs(~u_input.a), reverseBits(clamp(var_2.c.x & -u_input.a.x, u_input.b, var_0.x)), firstTrailingBit(var_2.e));
    return ~0u;
}

fn func_1(arg_0: u32, arg_1: vec4<u32>, arg_2: vec2<bool>, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = arg_3.a.x;
    let var_1 = 48108i;
    var var_2 = !true;
    var_0 = -(-(-977f));
    let var_3 = ~max(arg_1.www, vec3<u32>(func_2(arg_3.a.x), firstLeadingBit(arg_1.x), ~4072u));
    return ~arg_1.zx ^ firstTrailingBit(reverseBits(~(~vec2<u32>(4294967295u, 36063u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(dot(func_1(0u, vec4<u32>(1u, 0u, 1u, 50552u) - vec4<u32>(4970u, 27321u, 4294967295u, 0u), vec2<bool>(false, false), Struct_1(vec4<f32>(870f, -893f, 454f, -1140f), 11637u, u_input.a, u_input.c, vec4<i32>(u_input.c, u_input.c, -15954i, u_input.c))), ~firstLeadingBit(vec2<u32>(23860u, 35871u))) > 1u, any(vec3<bool>(true, 1u < ~60745u, true)), true);
    let var_1 = max(select((vec4<u32>(62000u, 52545u, 21830u, 1u) ^ vec4<u32>(6485u, 36848u, 1u, 19458u)) * (vec4<u32>(0u, 38155u, 23932u, 6331u) * vec4<u32>(55877u, 1u, 8768u, 47539u)), ~vec4<u32>(72275u, 9200u, 25512u, 4294967295u), select(select(vec4<bool>(true, true, var_0.x, true), vec4<bool>(var_0.x, var_0.x, false, var_0.x), false), vec4<bool>(var_0.x, false, var_0.x, true), true)) << firstTrailingBit(countOneBits(~vec4<u32>(150756u, 0u, 88328u, 54336u))), abs(select((vec4<u32>(30950u, 59108u, 4294967295u, 4294967295u) << vec4<u32>(1u, 28128u, 32320u, 0u)) - select(vec4<u32>(89274u, 1u, 0u, 1u), vec4<u32>(1u, 0u, 4294967295u, 15046u), vec4<bool>(false, var_0.x, true, true)), firstTrailingBit(vec4<u32>(0u, 4294967295u, 20282u, 0u)), select(-1i < u_input.a.x, select(true, false, false), true & false))));
    var_0 = vec3<bool>(!(u_input.c <= 0i), true, -(-(-358f) / select(188f, 1369f, true)) <= 373f);
    var_0 = select(!select(vec3<bool>(var_0.x | true, var_0.x && var_0.x, all(var_0.zx)), vec3<bool>(u_input.b >= u_input.c, !var_0.x, var_0.x), all(select(vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>(var_0.x, true, true, true), true))), select(vec3<bool>(var_0.x, max(1644f, 493f) >= (603f / 337f), true), select(vec3<bool>(true == false, 2182f == -707f, any(vec3<bool>(var_0.x, true, var_0.x))), vec3<bool>(var_0.x, any(vec4<bool>(true, var_0.x, true, var_0.x)), var_1.x > 10045u), var_0.x), any(vec4<bool>(false, u_input.b != 28696i, !true, var_0.x))), select(select(select(!vec3<bool>(var_0.x, false, true), select(vec3<bool>(var_0.x, true, true), vec3<bool>(false, var_0.x, var_0.x), false), !var_0.x), vec3<bool>(all(var_0.yz), -30445i >= -1i, !false), select(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, true), var_0.x), vec3<bool>(false, true, var_0.x), select(vec3<bool>(false, false, true), vec3<bool>(true, var_0.x, false), var_0.x))), select(vec3<bool>(var_0.x, false, var_0.x && false), !(!vec3<bool>(var_0.x, true, false)), vec3<bool>(!false, all(vec4<bool>(var_0.x, var_0.x, var_0.x, true)), var_0.x)), select(vec3<bool>(true, !var_0.x, any(vec3<bool>(true, false, var_0.x))), select(!vec3<bool>(var_0.x, var_0.x, var_0.x), select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(false, true, false), vec3<bool>(false, true, var_0.x)), !true), any(select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(false, true, var_0.x, var_0.x), var_0.x)))));
    var var_2 = firstTrailingBit(var_1);
    var_0 = vec3<bool>(any(!(!vec3<bool>(var_0.x, true, false))), !all(!(!vec3<bool>(var_0.x, var_0.x, true))), ((u_input.b | 1i) * (u_input.b ^ max(u_input.a.x, u_input.b))) < u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(i32(-2147483648), reverseBits(vec2<i32>(2147483647i & -(-44718i), firstLeadingBit(u_input.c))), vec3<i32>((u_input.a.x - (13741i / 0i)) << dot(var_1, var_1), u_input.c, 0i), (36575u - ~var_1.x) * 93320u, abs(((vec3<i32>(1i, u_input.c, u_input.c) * u_input.a) ^ -u_input.a) - ((vec3<i32>(i32(-2147483648), i32(-2147483648), u_input.b) + u_input.a) % vec3<i32>(u_input.c, -15584i, u_input.b))));
}

