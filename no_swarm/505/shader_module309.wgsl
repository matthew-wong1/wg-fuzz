// {"0:0":[109,54,229,16,21,10,133,126]}
// Seed: 10454777005438026259

struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec4<f32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: Struct_4, arg_1: Struct_2) -> vec4<u32> {
    var var_0 = vec4<bool>(false, arg_0.a && arg_0.a, true, any(select(vec3<bool>(any(vec3<bool>(arg_0.a, false, false)), arg_0.a, !arg_0.a), select(!vec3<bool>(arg_0.a, arg_0.a, arg_0.a), !vec3<bool>(arg_0.a, arg_0.a, true), !vec3<bool>(false, true, false)), vec3<bool>(923f >= arg_0.b.c.x, arg_0.a, true))));
    var var_1 = ~arg_1.b.a;
    var var_2 = step(arg_1.b.d.zy, vec2<f32>(arg_0.b.d.x, -2488f / min(-(-282f), select(arg_1.b.d.x, -258f, arg_0.a))));
    var var_3 = Struct_2(arg_0.b.d.x, arg_0.b, ~arg_0.b.e.x);
    var var_4 = vec4<bool>(any(select(vec4<bool>(-1312f == arg_0.b.d.x, arg_0.a & arg_0.a, false, 766f >= 523f), vec4<bool>(!var_0.x, select(var_0.x, arg_0.a, false), -339f != 1761f, all(vec2<bool>(arg_0.a, var_0.x))), select(!vec4<bool>(arg_0.a, false, false, var_0.x), vec4<bool>(true, false, var_0.x, false), !false))), all(vec4<bool>(any(!var_0.yy), false, all(select(vec4<bool>(arg_0.a, true, true, arg_0.a), vec4<bool>(var_0.x, var_0.x, false, true), false)), arg_0.a)), true, arg_1.b.b.x <= ~(~dot(var_3.b.b.ww, vec2<u32>(1u, var_3.b.b.x))));
    return abs(firstLeadingBit(var_3.b.b));
}

fn func_2(arg_0: Struct_2) -> bool {
    let var_0 = Struct_1(arg_0.b.b.x, func_3(Struct_4(false, arg_0.b), Struct_2(floor(1000f), Struct_1(arg_0.b.b.x, arg_0.b.b, arg_0.b.d.yyw, vec4<f32>(-1000f, 618f, arg_0.b.d.x, -1000f), arg_0.b.e), arg_0.c)) * arg_0.b.b, vec3<f32>(arg_0.a, -538f, 530f), vec4<f32>(-arg_0.a, -(-(-1632f - arg_0.a)), arg_0.b.d.x, arg_0.b.d.x), arg_0.b.e & vec3<i32>(u_input.a.x, u_input.a.x, ~firstTrailingBit(-35698i)));
    var var_1 = Struct_4(!(!false || !false) && any(vec2<bool>(u_input.a.x > -36020i, !false)), Struct_1(~(~var_0.a), var_0.b, vec3<f32>(-(var_0.d.x / 1747f), max(-2232f, -125f), -531f), sign(round(max(vec4<f32>(var_0.c.x, arg_0.b.d.x, -435f, var_0.d.x), var_0.d))), -(abs(vec3<i32>(u_input.a.x, var_0.e.x, u_input.a.x)) >> select(var_0.b.wwz, arg_0.b.b.zyx, vec3<bool>(true, true, true)))));
    let var_2 = vec2<i32>(dot(var_0.e.yx, var_0.e.yx), u_input.a.x);
    var var_3 = Struct_3(!(!(!select(vec4<bool>(var_1.a, var_1.a, var_1.a, false), vec4<bool>(var_1.a, var_1.a, false, true), var_1.a))));
    var_3 = Struct_3(!select(vec4<bool>(false, var_0.b.x > var_0.a, var_1.a, -1i < -27255i), select(!var_3.a, !var_3.a, vec4<bool>(false, var_3.a.x, true, true)), vec4<bool>(var_3.a.x, all(vec4<bool>(var_3.a.x, var_3.a.x, var_1.a, var_1.a)), true, all(var_3.a.wz))));
    return any(vec4<bool>(var_3.a.x && (-607f != ceil(-1385f)), all(var_3.a.zxx), var_1.a, true));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec4<u32>) -> vec4<bool> {
    var var_0 = 4294967295u;
    var_0 = 9380u;
    var_0 = 92680u;
    var var_1 = arg_0.a | 0u;
    let var_2 = arg_1.b.zyy;
    return !select(!select(vec4<bool>(true, true, true, true), !vec4<bool>(false, true, false, false), false), !(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true))), select(vec4<bool>(false, func_2(Struct_2(1689f, Struct_1(1u, arg_3, vec3<f32>(-1000f, arg_1.c.x, 2087f), vec4<f32>(arg_1.d.x, -1148f, arg_1.d.x, 1000f), arg_1.e), arg_1.e.x)), all(vec3<bool>(false, true, true)), true == true), vec4<bool>(true, false, !true, !false), func_2(Struct_2(arg_1.d.x, arg_0, -1i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(all(!(!func_1(Struct_1(4294967295u, vec4<u32>(0u, 24764u, 52354u, 0u), vec3<f32>(271f, 515f, 355f), vec4<f32>(233f, 1000f, -1670f, -1785f), vec3<i32>(u_input.a.x, -1i, u_input.a.x)), Struct_1(52692u, vec4<u32>(0u, 57306u, 4294967295u, 1u), vec3<f32>(-1109f, -140f, 826f), vec4<f32>(-1011f, 1000f, -1671f, 463f), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec3<i32>(i32(-2147483648), 0i, -38074i), vec4<u32>(47575u, 6136u, 1u, 4294967295u)))), ~((43305u % 4294967295u) & 0u) != ~firstTrailingBit(0u));
    let var_1 = firstTrailingBit(dot(-((vec2<i32>(u_input.a.x, u_input.a.x) / u_input.a) & (u_input.a & vec2<i32>(i32(-2147483648), 14700i))), ~abs(vec2<i32>(2147483647i, u_input.a.x))));
    var_0 = select(select(select(vec2<bool>(false, all(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))), vec2<bool>(!true, !false), -u_input.a.x == ~(-53620i)), !func_1(Struct_1(0u, vec4<u32>(0u, 13098u, 1u, 0u), vec3<f32>(-1195f, -776f, -750f), vec4<f32>(-397f, -452f, 348f, -692f), vec3<i32>(u_input.a.x, u_input.a.x, var_1)), Struct_1(21969u, vec4<u32>(9290u, 56008u, 77434u, 6878u), vec3<f32>(1275f, -756f, 2276f), vec4<f32>(758f, -719f, -498f, 735f), vec3<i32>(1i, var_1, -21130i)), vec3<i32>(40768i, var_1, 1i), vec4<u32>(71914u, 1u, 8006u, 12647u) >> vec4<u32>(44583u, 50604u, 13571u, 4294967295u)).zz, var_0.x), func_1(Struct_1(45714u, vec4<u32>(~35825u, ~4294967295u, max(67930u, 1u), firstLeadingBit(69304u)), -vec3<f32>(-3311f, 100f, 481f) + -vec3<f32>(762f, -888f, -1478f), -vec4<f32>(1610f, 1474f, -155f, 703f) / (vec4<f32>(-1407f, -376f, 476f, -1542f) * vec4<f32>(-1438f, -382f, 2255f, -232f)), vec3<i32>(1i, dot(vec4<i32>(var_1, u_input.a.x, 0i, 0i), vec4<i32>(var_1, var_1, -1i, u_input.a.x)), u_input.a.x)), Struct_1(~firstLeadingBit(1u), clamp(~vec4<u32>(0u, 4294967295u, 29451u, 1009u), countOneBits(vec4<u32>(1u, 0u, 0u, 0u)), ~vec4<u32>(41571u, 18086u, 88098u, 5072u)), min(-vec3<f32>(-565f, -156f, 164f), -vec3<f32>(1019f, -476f, -1452f)), -(vec4<f32>(456f, -1162f, -515f, -1000f) / vec4<f32>(-1897f, 799f, 458f, 1000f)), ~vec3<i32>(35419i, u_input.a.x, 40032i)), min(select(-vec3<i32>(1i, var_1, var_1), vec3<i32>(-21827i, var_1, i32(-2147483648)) * vec3<i32>(var_1, var_1, var_1), false), vec3<i32>(firstLeadingBit(u_input.a.x), select(-1i, 19093i, true), var_1)), ~vec4<u32>(~1u, 31792u, 1u | 31251u, func_3(Struct_4(var_0.x, Struct_1(40619u, vec4<u32>(14425u, 4294967295u, 4294967295u, 4294967295u), vec3<f32>(-562f, -740f, -1917f), vec4<f32>(861f, 1045f, 1918f, -1000f), vec3<i32>(u_input.a.x, 25966i, i32(-2147483648)))), Struct_2(1951f, Struct_1(22301u, vec4<u32>(92199u, 32228u, 25961u, 4294967295u), vec3<f32>(712f, -1000f, -658f), vec4<f32>(629f, -696f, 538f, -1000f), vec3<i32>(var_1, 19979i, -1i)), i32(-2147483648))).x)).wy, true & !(!select(true, var_0.x, true)));
    var var_2 = Struct_3(func_1(Struct_1(37366u, vec4<u32>(5129u, dot(vec3<u32>(49623u, 34978u, 6612u), vec3<u32>(13514u, 23332u, 26358u)), ~0u, 51172u), -(-vec3<f32>(530f, -148f, 425f)), -(-vec4<f32>(-630f, 2677f, -161f, 820f)), vec3<i32>(39931i | var_1, clamp(-11191i, i32(-2147483648), -49984i), 1i)), Struct_1(29204u >> dot(vec4<u32>(4294967295u, 2643u, 17913u, 1u), vec4<u32>(96536u, 17115u, 53803u, 16498u)), vec4<u32>(~4294967295u, 1u ^ 56427u, ~1u, dot(vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 4294967295u))), vec3<f32>(1373f - 724f, -328f, -261f), -round(vec4<f32>(697f, 1000f, -1711f, -616f)), vec3<i32>(var_1, ~14348i, u_input.a.x)), max(-(vec3<i32>(31005i, 0i, var_1) & vec3<i32>(u_input.a.x, var_1, 9885i)), countOneBits(vec3<i32>(var_1, -1i, -41142i)) * min(vec3<i32>(0i, 35200i, var_1), vec3<i32>(2147483647i, var_1, 2147483647i))), max(vec4<u32>(select(0u, 55618u, true), 0u | 4294967295u, reverseBits(92879u), dot(vec3<u32>(23855u, 40982u, 9695u), vec3<u32>(16416u, 10202u, 15610u))), vec4<u32>(19655u >> 42025u, ~1u, func_3(Struct_4(false, Struct_1(127678u, vec4<u32>(4294967295u, 0u, 4294967295u, 37595u), vec3<f32>(1184f, -481f, 908f), vec4<f32>(-1760f, 132f, -1332f, 627f), vec3<i32>(u_input.a.x, var_1, u_input.a.x))), Struct_2(-1562f, Struct_1(4294967295u, vec4<u32>(0u, 1u, 0u, 11130u), vec3<f32>(-561f, -501f, -1700f), vec4<f32>(863f, -1823f, 850f, 625f), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), -15367i)).x, 28747u - 4294967295u))));
    var_2 = Struct_3(vec4<bool>(!var_0.x, var_2.a.x, true, var_0.x));
    let var_3 = !var_2.a.ww;
    let var_4 = Struct_3(!func_1(Struct_1(54216u % 46188u, vec4<u32>(12309u, 1889u, 4294967295u, 0u) & vec4<u32>(83289u, 0u, 1u, 27455u), vec3<f32>(1000f, -1216f, 1760f), vec4<f32>(-528f, 616f, -1529f, -1000f), vec3<i32>(var_1, -2449i, 0i) >> vec3<u32>(4294967295u, 66880u, 1u)), Struct_1(7406u, vec4<u32>(0u, 4294967295u, 1u, 4294967295u), exp2(vec3<f32>(1000f, -122f, 1007f)), abs(vec4<f32>(1665f, 1000f, -1657f, -661f)), clamp(vec3<i32>(-31307i, var_1, u_input.a.x), vec3<i32>(var_1, var_1, u_input.a.x), vec3<i32>(u_input.a.x, 7715i, 34418i))), -(vec3<i32>(u_input.a.x, i32(-2147483648), u_input.a.x) + vec3<i32>(var_1, -18987i, u_input.a.x)), (vec4<u32>(6273u, 4294967295u, 23606u, 16982u) & vec4<u32>(47038u, 26651u, 4294967295u, 4294967295u)) % ~vec4<u32>(1u, 1u, 31349u, 23174u)));
    var var_5 = false;
    var var_6 = select(~countOneBits(~vec3<u32>(1u, 13551u, 31848u) * select(vec3<u32>(48130u, 0u, 11706u), vec3<u32>(22877u, 0u, 51434u), var_2.a.zyw)), vec3<u32>(func_3(Struct_4(all(vec3<bool>(false, var_2.a.x, var_3.x)), Struct_1(17637u, vec4<u32>(0u, 43928u, 0u, 0u), vec3<f32>(132f, -2084f, -1580f), vec4<f32>(172f, 568f, 1163f, -803f), vec3<i32>(var_1, -42665i, i32(-2147483648)))), Struct_2(max(1125f, 765f), Struct_1(7492u, vec4<u32>(1u, 21903u, 30338u, 4294967295u), vec3<f32>(-695f, -121f, 833f), vec4<f32>(232f, -939f, 603f, 1268f), vec3<i32>(var_1, 0i, 22588i)), -var_1)).x, dot(vec4<u32>(42591u, 1u, 34185u, 4294967295u) + ~vec4<u32>(0u, 9692u, 21921u, 0u), select(~vec4<u32>(32331u, 5056u, 1u, 0u), vec4<u32>(4294967295u, 4294967295u, 0u, 1u), var_0.x || true)), 4294967295u), select(vec3<bool>(true, !(1u == 0u), true), vec3<bool>(!(-1942f < 919f), all(vec4<bool>(false, var_4.a.x, false, false)), false), select(vec3<bool>(!var_2.a.x, var_4.a.x, false), vec3<bool>(!var_2.a.x, var_4.a.x, select(var_4.a.x, true, true)), !(!true))));
    let x = u_input.a;
    s_output = StorageBuffer(~(vec3<u32>(var_6.x, var_6.x, 4294967295u) % ~countOneBits(vec3<u32>(var_6.x, var_6.x, 0u))), select(min(vec2<f32>(-1000f + -740f, sign(-848f)), -(-vec2<f32>(-343f, -1672f))), vec2<f32>(-(-274f), select(783f, -559f, false)) + trunc(vec2<f32>(237f, 197f) * vec2<f32>(-3433f, 436f)), clamp(~0u, ~0u, 0u) <= ~(~var_6.x)), sign(-(-(-1104f))), 0i * 1i);
}

