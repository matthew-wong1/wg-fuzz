// {"0:0":[103,56,77,172,105,68,161,219,42,30,180,87,128,57,231,231,221,124,122,172,160,131,75,38,4,225,103,74,61,148,86,131,248,10,178,192,1,207,188,22,219,178,115,252,131,157,230,247]}
// Seed: 2750316473254071204

struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec4<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: u32,
    c: vec2<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<bool>,
    c: Struct_4,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3() -> vec4<bool> {
    let var_0 = 550f;
    let var_1 = firstTrailingBit(~vec2<i32>(i32(-2147483648), firstLeadingBit(u_input.d)) & (((vec2<i32>(u_input.a, 2147483647i) | vec2<i32>(u_input.a, 0i)) + (vec2<i32>(u_input.c, u_input.a) / vec2<i32>(u_input.d, u_input.d))) >> u_input.b.yx));
    let var_2 = var_0;
    let var_3 = true;
    var var_4 = (-12672i * -(-27322i + u_input.c)) | var_1.x;
    return !select(vec4<bool>(true, true, !(!var_3), all(select(vec3<bool>(true, true, var_3), vec3<bool>(true, var_3, true), vec3<bool>(false, var_3, var_3)))), vec4<bool>(!var_3, dot(u_input.b, vec3<u32>(u_input.b.x, 1u, u_input.b.x)) < clamp(83335u, 49584u, u_input.b.x), !(!true), -774i == 48703i), true);
}

fn func_2(arg_0: vec4<f32>) -> Struct_4 {
    var var_0 = select(~(-(~15278i)) < 0i, true, all(select(select(vec3<bool>(true, true, false), !vec3<bool>(true, true, false), false), select(vec3<bool>(true, false, false), !vec3<bool>(true, false, true), vec3<bool>(true, true, false)), vec3<bool>(true | false, !true, !true))));
    let var_1 = ~(vec2<i32>((2147483647i * 2195i) + (u_input.a | u_input.d), -(-1i & -40429i)) << u_input.b.xz);
    var_0 = false;
    var_0 = (i32(-2147483648) * 1i) > ~16373i;
    var_0 = true;
    return Struct_4(select(!select(func_3(), vec4<bool>(true, false, true, true), !true), select(func_3(), vec4<bool>(!true, all(vec3<bool>(true, false, true)), 22032u == 48847u, u_input.a < i32(-2147483648)), true), select(false && false, all(vec3<bool>(false, true, false)), false || true) || any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)))), 0u, !select(!func_3().zx, vec2<bool>(false, false), all(func_3().zw)));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: vec2<bool>, arg_3: f32) -> Struct_5 {
    let var_0 = Struct_1(787f, ~firstLeadingBit(u_input.a));
    var var_1 = -(-trunc(var_0.a));
    var var_2 = vec2<bool>(arg_0.x, !false);
    var var_3 = var_0.b;
    var var_4 = Struct_2(vec3<f32>(var_0.a, -arg_3, -select(var_0.a - var_0.a, 1504f - 2064f, arg_1.c.x)));
    return Struct_5(Struct_3(abs(u_input.b.x), var_0.b * -15603i, -(vec2<i32>(u_input.c, i32(-2147483648)) ^ vec2<i32>(u_input.d, var_0.b)) + (vec2<i32>(2147483647i, u_input.c) << reverseBits(u_input.b.xz)), arg_1.a), arg_1.a.xwx, func_2(vec4<f32>(-530f, 1581f, -(-223f), arg_3 - 930f) - max(vec4<f32>(486f, -527f, var_0.a, var_4.a.x), -vec4<f32>(-417f, arg_3, var_0.a, var_0.a))), Struct_2(-((vec3<f32>(var_0.a, 1678f, var_0.a) - vec3<f32>(arg_3, -438f, 1293f)) / var_4.a)), var_0.b & ~(max(var_0.b, u_input.a) / 1i));
}

fn func_5(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_5, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = ((reverseBits(vec4<u32>(0u, arg_0.x, arg_0.x, 4294967295u) >> vec4<u32>(9566u, 1u, 1u, 46417u)) + vec4<u32>(~4294967295u, arg_2.c.b << arg_2.a.a, u_input.b.x, arg_0.x | u_input.b.x)) + ~(~min(vec4<u32>(1u, u_input.b.x, arg_0.x, arg_2.c.b), vec4<u32>(1u, arg_0.x, 51078u, 1u)))) % (vec4<u32>(clamp(u_input.b.x, ~12179u, arg_2.c.b), ~arg_0.x & 6331u, ~1u / (0u + arg_2.c.b), firstLeadingBit(clamp(2555u, arg_0.x, 49676u))) & abs(~abs(vec4<u32>(4294967295u, arg_0.x, 4294967295u, 11498u))));
    let var_1 = abs(4294967295u) > firstTrailingBit(u_input.b.x);
    var var_2 = dot(vec2<u32>(~u_input.b.x % clamp(40291u, 73097u, 1u), arg_0.x), ~(~vec2<u32>(2497u, 4294967295u)) * ((vec2<u32>(4294967295u, 4294967295u) & ~vec2<u32>(arg_2.c.b, arg_2.c.b)) ^ ~vec2<u32>(var_0.x, arg_2.c.b)));
    var var_3 = arg_2.d;
    var var_4 = dot(u_input.b.zz, ~arg_0.zy);
    return Struct_1(var_3.a.x * var_3.a.x, 54427i | 14783i);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_5) -> Struct_5 {
    let var_0 = arg_1;
    let var_1 = var_0.a.a;
    var var_2 = min(dot(u_input.b, vec3<u32>(var_0.c.b, 234u, arg_1.c.b)), ~(~4294967295u));
    var var_3 = vec3<bool>(!arg_1.b.x, (-var_0.a.b % 29589i) == var_0.e, any(arg_1.c.a));
    let var_4 = var_0;
    return func_4(!var_4.a.d.xz, func_2(-vec4<f32>(arg_0.a, 1000f, ceil(-723f), -1577f)), !arg_1.c.a.xz, var_4.d.a.x / func_5(abs(~u_input.b), var_0.a.d.x, func_4(select(vec2<bool>(false, false), var_4.b.yz, false), Struct_4(vec4<bool>(true, false, var_3.x, true), u_input.b.x, vec2<bool>(false, false)), vec2<bool>(false, false), -2035f), ~vec2<i32>(u_input.d, u_input.c) / vec2<i32>(-61230i, -15595i)).a);
}

fn func_7(arg_0: Struct_5, arg_1: vec4<bool>, arg_2: Struct_1) -> f32 {
    var var_0 = Struct_1(arg_0.d.a.x, (reverseBits(dot(vec3<i32>(arg_2.b, -5003i, arg_2.b), vec3<i32>(10193i, arg_0.a.b, arg_0.e))) << arg_0.c.b) * arg_2.b);
    var_0 = arg_2;
    var var_1 = vec2<f32>(arg_0.d.a.x - var_0.a, var_0.a + 546f) + floor(arg_0.d.a.zz);
    var var_2 = true;
    var var_3 = min(~6676u << 27490u, func_6(arg_2, arg_0).c.b);
    return var_1.x;
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = func_7(func_6(func_5(vec3<u32>(21373u * 44427u, 50103u, min(u_input.b.x, u_input.b.x)), (true || true) & !true, func_4(!vec2<bool>(false, true), func_2(vec4<f32>(1000f, 965f, 859f, 1000f)), vec2<bool>(false, true), exp2(1000f)), -arg_0.yz), func_4(vec2<bool>(all(vec2<bool>(false, false)), any(vec3<bool>(true, true, true))), Struct_4(vec4<bool>(true, true, false, true), min(33172u, u_input.b.x), !vec2<bool>(false, true)), vec2<bool>(u_input.d > u_input.d, all(vec4<bool>(true, true, true, false))), -(979f * 1000f))), vec4<bool>(!(!all(vec2<bool>(false, false))), firstLeadingBit(~u_input.b.x) <= ((0u + u_input.b.x) | (72538u / 26133u)), ((-1429f * 983f) * (130f * 309f)) == ((-485f * 825f) / -647f), func_4(func_3().xx, Struct_4(vec4<bool>(false, false, false, true), 0u, vec2<bool>(false, false)), func_4(vec2<bool>(false, false), Struct_4(vec4<bool>(true, false, false, false), u_input.b.x, vec2<bool>(true, true)), vec2<bool>(false, true), -343f).a.d.ww, exp2(-993f)).c.a.x && (2147483647i >= ~17685i)), func_5(firstTrailingBit(~u_input.b * (u_input.b / u_input.b)), select(false, !func_6(Struct_1(-1440f, arg_0.x), Struct_5(Struct_3(11607u, 1192i, vec2<i32>(u_input.a, arg_0.x), vec4<bool>(true, true, false, true)), vec3<bool>(true, true, false), Struct_4(vec4<bool>(false, true, true, true), 7458u, vec2<bool>(false, false)), Struct_2(vec3<f32>(1000f, -1411f, 1175f)), 1i)).a.d.x, false), func_6(Struct_1(-1417f, select(-36655i, arg_0.x, false)), Struct_5(Struct_3(u_input.b.x, arg_0.x, arg_0.zx, vec4<bool>(true, true, true, true)), vec3<bool>(true, false, true), func_6(Struct_1(-898f, 2147483647i), Struct_5(Struct_3(u_input.b.x, arg_0.x, vec2<i32>(-37822i, arg_0.x), vec4<bool>(true, true, false, false)), vec3<bool>(false, true, true), Struct_4(vec4<bool>(true, true, false, true), u_input.b.x, vec2<bool>(false, false)), Struct_2(vec3<f32>(1000f, -310f, -106f)), arg_0.x)).c, Struct_2(vec3<f32>(1356f, -651f, 1032f)), arg_0.x)), -arg_0.wz));
    var var_1 = func_4(vec2<bool>(!func_6(Struct_1(var_0, arg_0.x), Struct_5(Struct_3(1u, arg_0.x, vec2<i32>(2147483647i, 0i), vec4<bool>(false, true, true, true)), vec3<bool>(false, true, false), Struct_4(vec4<bool>(false, false, true, true), 1u, vec2<bool>(false, true)), Struct_2(vec3<f32>(var_0, -221f, var_0)), arg_0.x)).a.d.x & true, !true), func_4(select(vec2<bool>(true != true, false), vec2<bool>(true | false, !true), func_4(func_3().yx, Struct_4(vec4<bool>(false, false, false, false), 156035u, vec2<bool>(false, false)), vec2<bool>(true, false), exp2(var_0)).c.a.yx), func_6(func_5(u_input.b, !false, func_6(Struct_1(-166f, i32(-2147483648)), Struct_5(Struct_3(u_input.b.x, u_input.d, arg_0.xw, vec4<bool>(true, true, true, true)), vec3<bool>(true, true, false), Struct_4(vec4<bool>(true, true, true, true), 50393u, vec2<bool>(true, true)), Struct_2(vec3<f32>(var_0, var_0, 756f)), 16075i)), arg_0.zx), Struct_5(Struct_3(u_input.b.x, u_input.c, arg_0.yw, vec4<bool>(true, false, true, false)), !vec3<bool>(true, false, true), Struct_4(vec4<bool>(true, false, true, false), 1u, vec2<bool>(false, true)), Struct_2(vec3<f32>(769f, -1107f, 639f)), -(i32(-2147483648)))).c, vec2<bool>(!(!false), all(vec4<bool>(true, false, false, true))), var_0).c, select(func_6(func_5(~u_input.b, !true, func_4(vec2<bool>(true, true), Struct_4(vec4<bool>(true, true, true, false), u_input.b.x, vec2<bool>(false, true)), vec2<bool>(true, true), -210f), select(arg_0.ww, vec2<i32>(u_input.a, -22793i), vec2<bool>(true, false))), func_6(Struct_1(1290f, arg_0.x), func_6(Struct_1(var_0, u_input.d), Struct_5(Struct_3(73092u, 4729i, vec2<i32>(0i, i32(-2147483648)), vec4<bool>(false, false, true, false)), vec3<bool>(true, false, true), Struct_4(vec4<bool>(false, false, true, false), 4294967295u, vec2<bool>(false, false)), Struct_2(vec3<f32>(var_0, -283f, -141f)), i32(-2147483648))))).a.d.zx, !func_4(!vec2<bool>(false, false), func_4(vec2<bool>(false, true), Struct_4(vec4<bool>(false, true, false, false), u_input.b.x, vec2<bool>(false, false)), vec2<bool>(true, false), var_0).c, vec2<bool>(false, false), -(-1703f)).b.yy, true), -132f).d;
    var_1 = Struct_2(max(-(-vec3<f32>(428f, 540f, var_0)), -(round(var_1.a) - vec3<f32>(var_0, var_1.a.x, -637f))));
    let var_2 = Struct_4(select(select(func_6(Struct_1(var_0, arg_0.x), Struct_5(Struct_3(22461u, u_input.c, vec2<i32>(arg_0.x, -13462i), vec4<bool>(true, false, false, true)), vec3<bool>(false, true, true), Struct_4(vec4<bool>(true, true, true, true), 42931u, vec2<bool>(true, true)), Struct_2(var_1.a), u_input.c)).c.a, !vec4<bool>(false, false, true, false), func_4(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), Struct_4(vec4<bool>(false, false, true, false), u_input.b.x, vec2<bool>(true, true)), !vec2<bool>(true, false), -var_0).a.d), vec4<bool>(all(vec4<bool>(false, false, true, false)) != !false, false, !false || !true, false), !func_6(Struct_1(1444f, -1i), func_4(vec2<bool>(true, true), Struct_4(vec4<bool>(true, false, true, false), 55073u, vec2<bool>(true, false)), vec2<bool>(true, false), var_0)).c.c.x), 4294967295u, vec2<bool>(~(~21845u) != ~(~u_input.b.x), func_4(vec2<bool>(!true, true), Struct_4(!vec4<bool>(false, true, true, true), ~4294967295u, vec2<bool>(false, false)), vec2<bool>(all(vec3<bool>(true, false, false)), func_3().x), -var_1.a.x * select(-1159f, -656f, true)).c.a.x));
    let var_3 = 254f * (var_1.a.x / -var_1.a.x);
    return Struct_1((1462f / step(var_1.a.x, var_0)) * sign(func_5(vec3<u32>(19918u, 6281u, 4294967295u) + vec3<u32>(15304u, var_2.b, 22709u), func_6(Struct_1(-271f, 1i), Struct_5(Struct_3(var_2.b, -17373i, vec2<i32>(5135i, 12089i), vec4<bool>(false, var_2.c.x, var_2.c.x, false)), var_2.a.wwx, Struct_4(vec4<bool>(var_2.c.x, false, var_2.a.x, var_2.a.x), 1u, var_2.a.zy), Struct_2(var_1.a), arg_0.x)).c.a.x, func_4(var_2.a.yx, var_2, vec2<bool>(var_2.a.x, true), var_0), arg_0.wx).a), min(2147483647i, firstLeadingBit(dot(vec4<i32>(-13177i, 7037i, arg_0.x, 1i) + vec4<i32>(arg_0.x, arg_0.x, -31445i, arg_0.x), select(arg_0, vec4<i32>(i32(-2147483648), u_input.c, u_input.d, 2147483647i), vec4<bool>(true, true, var_2.a.x, var_2.c.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(i32(-2147483648), ~(abs(u_input.c) + ((u_input.d >> 4294967295u) + dot(vec3<i32>(u_input.a, -1i, u_input.a), vec3<i32>(u_input.d, u_input.d, 113435i)))));
    var var_1 = func_1(reverseBits(select(-(-vec4<i32>(var_0.x, u_input.a, u_input.a, var_0.x)), firstTrailingBit(vec4<i32>(-29183i, u_input.d, 3902i, u_input.c)) | vec4<i32>(u_input.d, u_input.d, 1i, var_0.x), !true && (false || true))));
    var var_2 = Struct_3(u_input.b.x / 45231u, var_1.b, vec2<i32>(-1i, func_5(u_input.b, -33901i > var_1.b, func_6(Struct_1(-307f, u_input.a), Struct_5(Struct_3(0u, var_0.x, vec2<i32>(-1i, var_1.b), vec4<bool>(false, false, true, true)), vec3<bool>(false, true, false), Struct_4(vec4<bool>(true, false, true, false), u_input.b.x, vec2<bool>(true, true)), Struct_2(vec3<f32>(var_1.a, var_1.a, var_1.a)), u_input.c)), max(vec2<i32>(u_input.d, -1i), vec2<i32>(var_1.b, u_input.c))).b * -(var_0.x * var_0.x)), select(!select(!vec4<bool>(false, false, true, true), !vec4<bool>(true, true, true, false), func_6(Struct_1(var_1.a, var_0.x), Struct_5(Struct_3(u_input.b.x, var_1.b, vec2<i32>(u_input.d, u_input.c), vec4<bool>(true, true, false, true)), vec3<bool>(true, true, true), Struct_4(vec4<bool>(true, false, true, true), 12748u, vec2<bool>(true, false)), Struct_2(vec3<f32>(-1036f, var_1.a, var_1.a)), u_input.c)).a.d), vec4<bool>(-281f >= var_1.a, !(!false), true, !(true && false)), !(!(!vec4<bool>(false, true, true, true)))));
    var_1 = func_1(abs(clamp(vec4<i32>(u_input.a ^ i32(-2147483648), i32(-2147483648), -18432i, var_0.x), abs(vec4<i32>(-13826i, -56634i, 9226i, 23554i) | vec4<i32>(var_0.x, 1778i, -35822i, -1i)), ~vec4<i32>(1i, var_0.x, var_0.x, -22404i) & vec4<i32>(var_2.b, var_2.b, var_1.b, 2147483647i))));
    var var_3 = u_input.b.x;
    let var_4 = 0u;
    var var_5 = -vec4<i32>(i32(-2147483648), ~max(~21295i, 1i), reverseBits(-(-32377i)), clamp(~dot(vec2<i32>(1i, 39881i), var_2.c), -var_0.x, -(-(-12293i))));
    var_1 = Struct_1(1084f, 16394i + -(i32(-2147483648)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a, vec4<f32>(trunc(577f), 164f / (var_1.a + var_1.a), 848f, var_1.a) / (-(vec4<f32>(var_1.a, var_1.a, var_1.a, var_1.a) - vec4<f32>(2925f, -1391f, var_1.a, var_1.a)) + (-vec4<f32>(891f, -1601f, var_1.a, -624f) * (vec4<f32>(var_1.a, -141f, 389f, var_1.a) * vec4<f32>(-1000f, var_1.a, 2334f, -579f)))), vec4<f32>(-713f, -func_5(firstTrailingBit(u_input.b), var_1.a < var_1.a, Struct_5(Struct_3(4294967295u, -61794i, vec2<i32>(var_0.x, -24314i), var_2.d), var_2.d.zxx, Struct_4(var_2.d, var_2.a, vec2<bool>(var_2.d.x, var_2.d.x)), Struct_2(vec3<f32>(var_1.a, 1724f, var_1.a)), var_5.x), var_5.xw).a, -max(var_1.a, var_1.a - var_1.a), func_7(func_6(Struct_1(var_1.a, -18057i), func_4(var_2.d.zz, Struct_4(var_2.d, 0u, vec2<bool>(var_2.d.x, true)), var_2.d.xz, var_1.a)), !select(var_2.d, vec4<bool>(var_2.d.x, true, false, false), var_2.d), func_5(u_input.b & vec3<u32>(u_input.b.x, u_input.b.x, 54460u), var_2.d.x, Struct_5(Struct_3(35785u, i32(-2147483648), var_5.wy, vec4<bool>(false, var_2.d.x, false, false)), var_2.d.xxw, Struct_4(vec4<bool>(true, var_2.d.x, true, true), var_2.a, vec2<bool>(true, true)), Struct_2(vec3<f32>(var_1.a, var_1.a, -1707f)), 2147483647i), firstTrailingBit(vec2<i32>(var_2.b, 14832i))))));
}

