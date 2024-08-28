// {"0:0":[79,113,245,65]}
// Seed: 6715415053359715459

struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: bool,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: bool,
    d: Struct_3,
    e: vec3<u32>,
}

struct Struct_5 {
    a: bool,
    b: vec2<i32>,
    c: vec4<bool>,
    d: vec4<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<Struct_5, 26>;

var<private> global2: array<u32, 23> = array<u32, 23>(0u, 102252u, 1u, 1u, 1u, 55911u, 42283u, 17683u, 4294967295u, 48446u, 29648u, 8666u, 1u, 0u, 35254u, 4054u, 1u, 1u, 4294967295u, 1u, 12511u, 0u, 19082u);

var<private> global3: array<u32, 14> = array<u32, 14>(38566u, 9999u, 0u, 27202u, 29500u, 75809u, 0u, 0u, 1u, 4294967295u, 36396u, 80715u, 34525u, 1u);

fn func_3(arg_0: u32, arg_1: bool) -> i32 {
    global1 = array<Struct_5, 26>();
    let var_0 = ~vec4<u32>(38410u, global2[max(32234u, global3[26831u]) - (global3[4294967295u] * 44633u)], ~20944u ^ select(1u, 51910u, true), ~global3[firstTrailingBit(12033u)]) | abs(select(min(abs(vec4<u32>(1u, global2[4294967295u], global2[global3[4294967295u]], global2[arg_0])), vec4<u32>(global3[arg_0], 1u, 1u, 22322u) | vec4<u32>(arg_0, arg_0, 1u, global2[global2[global2[1u]]])), ~(vec4<u32>(global3[arg_0], arg_0, arg_0, global2[global3[arg_0]]) / vec4<u32>(global2[8024u], global2[0u], 7959u, 36602u)), true));
    var var_1 = var_0.wzx * (~(~vec3<u32>(52591u, 24208u, 5858u)) - vec3<u32>(~(~4294967295u), var_0.x << (17387u << 21361u), ~(arg_0 + global3[1u])));
    var var_2 = any(select(select(!vec4<bool>(false, false, global0.x, false), select(!vec4<bool>(arg_1, false, global0.x, true), vec4<bool>(true, true, global0.x, false), !vec4<bool>(true, true, true, true)), false), !select(!vec4<bool>(global0.x, arg_1, true, arg_1), !vec4<bool>(true, true, true, arg_1), select(vec4<bool>(false, global0.x, arg_1, false), vec4<bool>(false, global0.x, false, global0.x), false)), !(!(!vec4<bool>(true, false, false, global0.x)))));
    let var_3 = -1254f * max(ceil(825f), -(-(-(-1000f))));
    return ~(-1i) & u_input.a;
}

fn func_2(arg_0: Struct_5, arg_1: vec3<u32>, arg_2: vec2<i32>) -> Struct_5 {
    let var_0 = ~vec3<u32>(13739u, 72149u, countOneBits(arg_1.x));
    global0 = !(!arg_0.c.yxz);
    var var_1 = var_0.zy;
    let var_2 = arg_0.e;
    var var_3 = vec2<u32>(4294967295u, abs(reverseBits(~var_1.x)));
    return Struct_5(((-1000f / (613f / 179f)) == -361f) & true, ~(-(-vec2<i32>(var_2.a, 44562i))), vec4<bool>(any(arg_0.c.zxz) && false, false, !(!arg_0.c.x), !global0.x), ((vec4<f32>(arg_0.d.x, -128f, arg_0.d.x, arg_0.d.x) / -vec4<f32>(arg_0.d.x, arg_0.d.x, -732f, 816f)) - (-arg_0.d / vec4<f32>(arg_0.d.x, arg_0.d.x, arg_0.d.x, arg_0.d.x))) - (-arg_0.d * arg_0.d), Struct_1(-func_3(18386u, arg_0.a), 0i));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_5, arg_2: vec2<f32>) -> vec2<i32> {
    var var_0 = arg_1.e;
    global3 = array<u32, 14>();
    var var_1 = vec3<i32>(u_input.a, -16139i, reverseBits(((var_0.b << 1u) ^ ~(-38346i)) | 3120i));
    var_0 = func_2(func_2(func_2(func_2(func_2(Struct_5(false, arg_0.b, vec4<bool>(true, false, true, false), vec4<f32>(arg_1.d.x, arg_1.d.x, 630f, -2371f), arg_1.e), vec3<u32>(4294967295u, global3[1u], 3486u), vec2<i32>(-1i, -782i)), vec3<u32>(13684u, global3[global2[global3[global2[11071u]]]], global3[30455u]) % vec3<u32>(49916u, 33652u, global2[global2[global3[1u]]]), var_1.yz >> vec2<u32>(global2[3510u], global3[0u])), ~vec3<u32>(0u, 52278u, global3[global2[global2[global2[global2[global2[global3[4294967295u]]]]]]]) & ~vec3<u32>(global3[0u], 38786u, global2[19574u]), arg_0.b), ~(abs(vec3<u32>(4294967295u, global2[global3[global3[1u]]], global2[global3[25827u]])) % (vec3<u32>(global2[global3[27612u]], 65930u, 1u) / vec3<u32>(global3[global3[0u]], 4294967295u, global3[global3[global3[61343u]]]))), -(vec2<i32>(2147483647i, u_input.a) + vec2<i32>(27412i, 1i)) ^ vec2<i32>(reverseBits(arg_0.e.b), u_input.a ^ 0i)), vec3<u32>(global3[global2[min(~(global2[36887u] % global2[global3[3492u]]), global2[global2[countOneBits(15911u)]])]], ~(~1u) << (global2[clamp(global2[global2[80945u]], 151053u, 4294967295u)] - (4294967295u | global3[global3[global3[1u]]])), min(~(19912u + 4294967295u), max(0u / global3[1u], global3[dot(vec2<u32>(global3[3202u], global3[global2[global3[global3[global2[global3[58122u]]]]]]), vec2<u32>(1u, global2[2464u]))]))), vec2<i32>(arg_1.b.x | ~(-38399i ^ var_1.x), 22549i)).e;
    var var_2 = global2[select(global2[45635u] << ~(~0u), firstLeadingBit(1u) + ~(0u & ~1u), !any(select(vec4<bool>(true, global0.x, false, false), vec4<bool>(global0.x, global0.x, arg_1.c.x, arg_1.c.x), func_2(arg_1, vec3<u32>(0u, 1u, 0u), vec2<i32>(54274i, -1i)).c.x)))];
    return firstTrailingBit(~(~(~arg_0.b)) - vec2<i32>(firstTrailingBit(1i >> 1u), arg_1.e.a));
}

fn func_5(arg_0: Struct_5, arg_1: vec4<i32>) -> bool {
    var var_0 = min(firstTrailingBit((u_input.a + arg_1.x) + arg_1.x) | -17979i, arg_1.x);
    var var_1 = countOneBits(countOneBits(arg_1));
    var var_2 = Struct_4(!global0.x, countOneBits(25722u), !((arg_0.a | (false & arg_0.a)) | (true | arg_0.c.x)), Struct_3(~arg_1.wxx, dot(~vec2<u32>(global3[4294967295u], global2[global2[0u]]), vec2<u32>(4294967295u, global3[15300u])) <= global3[~24366u], (firstTrailingBit(vec3<u32>(global3[global2[global3[global2[global3[global3[0u]]]]]], 30277u, global3[global2[4533u]])) / vec3<u32>(19973u, 4294967295u, 4294967295u)) << ((vec3<u32>(global2[33156u], 0u, 26151u) * vec3<u32>(global3[0u], global3[global2[1u]], global2[4294967295u])) << firstTrailingBit(vec3<u32>(global3[0u], 4294967295u, global3[1u]))), abs(min(~vec2<u32>(global3[49486u], global3[85947u]), vec2<u32>(6067u, global3[94726u]) << vec2<u32>(global3[global3[global2[global2[0u]]]], global2[global3[global3[global3[global3[11659u]]]]]))), ~(abs(vec4<u32>(global2[global2[global2[global2[57649u]]]], global2[69460u], global2[13099u], global3[0u])) / vec4<u32>(global2[global2[global3[global3[global2[46340u]]]]], 4294967295u, 4294967295u, 1u))), ~(min(vec3<u32>(29660u, global3[global2[4294967295u]], global3[1u]), vec3<u32>(9294u, global2[global3[4294967295u]], global2[51626u])) % max(vec3<u32>(4294967295u, 22121u, global3[24448u]), vec3<u32>(36089u, 4294967295u, 1u))) * vec3<u32>(dot(vec3<u32>(3842u, 0u, 3152u) + vec3<u32>(global3[4294967295u], 4294967295u, global2[0u]), vec3<u32>(45509u, global3[1u], 81908u) >> vec3<u32>(0u, 34101u, 1472u)), ~global2[25409u], ~dot(vec4<u32>(36994u, 1u, 4294967295u, global3[global3[global3[global3[global3[global3[50989u]]]]]]), vec4<u32>(global3[global3[global2[33906u]]], 64105u, global3[54150u], 4294967295u))));
    var var_3 = min(vec2<u32>(var_2.e.x, global2[28392u | 1u] / ~78233u), var_2.e.zx | vec2<u32>(global3[0u - 0u] << var_2.d.e.x, 4294967295u));
    var var_4 = var_2.d;
    return any(vec3<bool>(!false, all(!arg_0.c.yyw), !arg_0.a | false)) == arg_0.c.x;
}

fn func_1() -> f32 {
    let var_0 = vec4<bool>(false, !global0.x, !global0.x, global0.x);
    var var_1 = var_0.yy;
    var var_2 = Struct_3(abs(vec3<i32>(dot(vec4<i32>(5148i, -1i, u_input.a, 0i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), 43993i * -70924i, u_input.a)) + (vec3<i32>(-1i, 2147483647i, ~u_input.a) + countOneBits(abs(vec3<i32>(-36489i, -1i, u_input.a)))), func_5(Struct_5(false, func_4(func_2(global1[43501u], vec3<u32>(1950u, 75645u, global3[global2[global2[global3[1u]]]]), vec2<i32>(-39363i, i32(-2147483648))), Struct_5(global0.x, vec2<i32>(-13194i, u_input.a), var_0, vec4<f32>(569f, -900f, 783f, 314f), Struct_1(25510i, u_input.a)), vec2<f32>(-1000f, -1000f) / vec2<f32>(-738f, 918f)), vec4<bool>(false, -527f <= -1030f, -1i >= u_input.a, var_0.x || true), round(vec4<f32>(851f, 1673f, -598f, -462f)) - vec4<f32>(-1020f, 394f, -409f, -1484f), func_2(Struct_5(var_0.x, vec2<i32>(-1i, u_input.a), var_0, vec4<f32>(138f, 818f, 1000f, 665f), Struct_1(u_input.a, u_input.a)), reverseBits(vec3<u32>(global2[global2[global3[21887u]]], global3[4294967295u], 44080u)), vec2<i32>(u_input.a, u_input.a) / vec2<i32>(u_input.a, 1i)).e), abs(vec4<i32>(func_2(Struct_5(true, vec2<i32>(u_input.a, -60341i), var_0, vec4<f32>(697f, 1338f, -1047f, -1000f), Struct_1(u_input.a, u_input.a)), vec3<u32>(global3[83580u], global2[4294967295u], 55865u), vec2<i32>(1i, u_input.a)).e.b, -(-9172i), reverseBits(u_input.a), ~u_input.a))), ((~vec3<u32>(20980u, 4294967295u, 4294967295u) << vec3<u32>(global2[global2[0u]], 0u, 4294967295u)) >> vec3<u32>(reverseBits(global3[12240u]), global2[dot(vec4<u32>(global3[global2[global2[4294967295u]]], global2[global2[4294967295u]], 31535u, 9068u), vec4<u32>(global2[1u], 42377u, global2[global2[0u]], global3[1u]))], global2[0u] << 28388u)) * max(~vec3<u32>(3731u, 0u, global2[global2[32474u]]), vec3<u32>(28386u & 39465u, dot(vec4<u32>(global3[64574u], 5323u, global3[38618u], global3[38505u]), vec4<u32>(global3[global3[global3[global2[0u]]]], global2[global2[4294967295u]], 1u, 0u)), global3[select(4294967295u, global3[global2[1u]], true)])), select(firstTrailingBit(min(vec2<u32>(4294967295u, 1u) ^ vec2<u32>(64841u, 70226u), vec2<u32>(1u, global2[1u]) & vec2<u32>(global2[97712u], 22623u))), vec2<u32>(global3[4294967295u] & global2[4294967295u], max(0u, global3[global2[0u]])) << vec2<u32>(dot(vec3<u32>(global3[global3[21810u]], 1u, global3[4294967295u]), vec3<u32>(global3[0u], global2[4294967295u], global3[global2[32445u]])), 1u), select(!(!global0.yz), !select(global0.yy, global0.xx, var_0.x), -1603f > -889f)), vec4<u32>(global3[~(~global2[4223u]) | global3[countOneBits(0u)]], global2[1u], global2[~(~global2[0u])] * global3[global3[0u]], dot(clamp(max(vec2<u32>(65852u, global3[global3[13133u]]), vec2<u32>(global2[global3[global3[5447u]]], 34772u)), vec2<u32>(37490u, 6554u) | vec2<u32>(4294967295u, global3[global2[1u]]), countOneBits(vec2<u32>(global2[global3[global3[4294967295u]]], global2[22856u]))), (vec2<u32>(global2[22125u], 0u) * vec2<u32>(global2[global3[global2[global2[0u]]]], global3[global3[global2[0u]]])) << ~vec2<u32>(global2[global2[global3[global3[global3[52009u]]]]], global2[4294967295u]))));
    let var_3 = -(vec3<f32>(ceil(104f), func_2(Struct_5(true, var_2.a.xy, vec4<bool>(false, true, var_2.b, false), vec4<f32>(121f, 1126f, -862f, 212f), Struct_1(u_input.a, 0i)), var_2.e.zwx, vec2<i32>(45878i, 32694i)).d.x, 624f + -1618f) * (vec3<f32>(-1000f, 536f, -794f) / (vec3<f32>(-681f, -311f, 1216f) - vec3<f32>(402f, 1085f, 137f)))) * vec3<f32>(round(floor(trunc(445f))), exp2(-func_2(Struct_5(true, vec2<i32>(-6657i, var_2.a.x), vec4<bool>(var_1.x, true, true, false), vec4<f32>(-1276f, -341f, -825f, 977f), Struct_1(u_input.a, 2147483647i)), var_2.e.zzw, var_2.a.yy).d.x), ceil(-abs(-337f)));
    global0 = !var_0.wyw;
    return 358f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(-func_1(), select(1498f, (-(-395f) / 1103f) / 3007f, false | (global0.x || !true)), -func_1());
    global0 = !select(!func_2(global1[0u ^ 79033u], vec3<u32>(global3[4294967295u], global3[global2[global2[44443u]]], global3[global2[11649u]]) + vec3<u32>(global3[global2[global3[global3[20366u]]]], 4294967295u, 0u), select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a), true)).c.xzw, select(vec3<bool>(global0.x, global0.x, var_0.x > 1000f), func_2(Struct_5(false, vec2<i32>(23746i, u_input.a), vec4<bool>(global0.x, true, global0.x, false), vec4<f32>(1000f, -364f, -1603f, -1014f), Struct_1(1i, u_input.a)), ~vec3<u32>(global3[0u], 112715u, global3[global2[4294967295u]]), reverseBits(vec2<i32>(0i, i32(-2147483648)))).c.zzw, (var_0.x < -1330f) | false), global0.x);
    global3 = array<u32, 14>();
    let var_1 = select(vec3<i32>(clamp(u_input.a, u_input.a << global3[8789u], u_input.a), -u_input.a, ~(u_input.a - u_input.a)), ~vec3<i32>(u_input.a, u_input.a, 11568i) * ~(~vec3<i32>(u_input.a, u_input.a, u_input.a)), select(select(select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, global0.x, global0.x), false), !vec3<bool>(true, global0.x, true), global0.x), select(!vec3<bool>(global0.x, false, true), !vec3<bool>(global0.x, false, global0.x), global0.x | false), func_2(Struct_5(global0.x, vec2<i32>(i32(-2147483648), -3640i), vec4<bool>(global0.x, global0.x, false, global0.x), vec4<f32>(1062f, var_0.x, -1285f, 501f), Struct_1(-1i, 12518i)), ~vec3<u32>(global3[global2[4294967295u]], global3[35786u], global3[0u]), select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-1i, -13584i), global0.xy)).a)) / countOneBits(~(vec3<i32>(-2869i, u_input.a, u_input.a) + vec3<i32>(u_input.a, u_input.a, 24559i)) & (-vec3<i32>(u_input.a, u_input.a, 76547i) << vec3<u32>(global2[global3[18696u]], 15001u, global3[1u])));
    let var_2 = vec3<bool>(select(all(!func_2(global1[global3[20112u]], vec3<u32>(4294967295u, 0u, global3[global2[92686u]]), var_1.xx).c.wz), global0.x, all(!vec2<bool>(global0.x, global0.x))), 1i == firstLeadingBit(-20333i), !func_5(func_2(Struct_5(true, var_1.zy, vec4<bool>(false, global0.x, false, global0.x), vec4<f32>(753f, -601f, -601f, var_0.x), Struct_1(-16211i, 2147483647i)), ~vec3<u32>(global2[global3[global3[1u]]], 68901u, 33997u), -var_1.xz), vec4<i32>(0i | i32(-2147483648), u_input.a, -2147483647i, u_input.a)));
    var var_3 = Struct_2((~(global3[12452u] + 101397u) > select(global3[global3[global2[global3[4294967295u]]] * 0u], global2[8905u], !true)) && ((!true && (u_input.a < 2147483647i)) || (!true & !false)), Struct_1(firstTrailingBit(func_4(Struct_5(false, vec2<i32>(var_1.x, u_input.a), vec4<bool>(false, global0.x, true, true), vec4<f32>(1355f, 222f, var_0.x, var_0.x), Struct_1(u_input.a, u_input.a)), func_2(global1[1u], vec3<u32>(global3[71627u], 38794u, global3[26402u]), var_1.yy), var_0.zx).x), (func_4(global1[global2[global2[global3[global3[global2[23428u]]]]]], Struct_5(var_2.x, vec2<i32>(var_1.x, u_input.a), vec4<bool>(global0.x, global0.x, true, true), vec4<f32>(-1726f, -1287f, -448f, 1000f), Struct_1(var_1.x, 2147483647i)), var_0.yz).x ^ clamp(var_1.x, var_1.x, var_1.x)) ^ ~35260i), -(i32(-2147483648) | ~min(u_input.a, 40410i)));
    var var_4 = -(-var_3.c) / abs(dot(reverseBits(vec3<i32>(-83813i, -1i, 14209i)), var_1 << vec3<u32>(0u, global3[global2[global3[38776u]]], 0u)) + (12154i * ~u_input.a));
    var var_5 = Struct_2(false && !(var_3.b.b == dot(vec3<i32>(i32(-2147483648), var_3.c, 1i), var_1)), Struct_1(dot(-abs(vec4<i32>(var_3.c, var_1.x, 2147483647i, 4137i)), reverseBits(vec4<i32>(-31834i, var_3.c, var_3.c, var_1.x)) & -vec4<i32>(69770i, 0i, var_3.b.b, u_input.a)), 2147483647i), ~min(22372i, u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(ceil(943f), -(dot(min(vec4<i32>(-1i, 35997i, var_3.b.b, var_5.c), vec4<i32>(var_5.c, u_input.a, 0i, var_1.x)), vec4<i32>(var_1.x, var_3.b.b, i32(-2147483648), u_input.a) | vec4<i32>(2147483647i, i32(-2147483648), u_input.a, var_1.x)) ^ -(~var_3.b.b)));
}

