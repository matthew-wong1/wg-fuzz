// {"0:0":[65,234,226,207,107,138,115,218,32,189,158,72,16,186,186,99,130,241,57,128,105,87,120,254,81,130,109,28,219,78,198,91]}
// Seed: 5192509519969739758

struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: f32,
    e: vec4<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec4<u32>, 1>;

var<private> global2: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(-214f, vec3<i32>(i32(-2147483648), 3216i, 1i), vec2<u32>(4294967295u, 105928u), -637f, vec4<i32>(i32(-2147483648), -15428i, 11117i, -55028i)), Struct_2(-955f, vec3<i32>(-3186i, -29286i, -47897i), vec2<u32>(4294967295u, 4294967295u), -1382f, vec4<i32>(-22466i, 2147483647i, 0i, -1i)), Struct_2(-642f, vec3<i32>(53135i, -15834i, 0i), vec2<u32>(4294967295u, 85630u), -958f, vec4<i32>(40345i, -1i, i32(-2147483648), 0i)), Struct_2(-511f, vec3<i32>(8847i, 2147483647i, -43742i), vec2<u32>(0u, 4294967295u), 1023f, vec4<i32>(-34754i, i32(-2147483648), -26645i, -8469i)), Struct_2(726f, vec3<i32>(-1594i, i32(-2147483648), 2147483647i), vec2<u32>(24518u, 4294967295u), 1067f, vec4<i32>(-31559i, -44650i, -1i, -89518i)), Struct_2(-1000f, vec3<i32>(1i, 52087i, 0i), vec2<u32>(4294967295u, 1u), -318f, vec4<i32>(26281i, 2147483647i, 2147483647i, -85479i)), Struct_2(1286f, vec3<i32>(-40342i, 1i, 9083i), vec2<u32>(0u, 1u), 432f, vec4<i32>(1i, -12826i, 35047i, -1i)), Struct_2(-405f, vec3<i32>(i32(-2147483648), 14898i, 2147483647i), vec2<u32>(19566u, 17177u), 601f, vec4<i32>(i32(-2147483648), 25376i, 0i, i32(-2147483648))), Struct_2(-681f, vec3<i32>(-1i, 1i, 0i), vec2<u32>(4294967295u, 0u), 618f, vec4<i32>(0i, 14078i, 20371i, 2147483647i)), Struct_2(-1103f, vec3<i32>(-1i, 2147483647i, 0i), vec2<u32>(4294967295u, 1682u), 895f, vec4<i32>(2147483647i, 29856i, 2147483647i, 1i)), Struct_2(1369f, vec3<i32>(-1i, -1i, -31303i), vec2<u32>(25560u, 2134u), -396f, vec4<i32>(-7419i, 12405i, 0i, 1i)), Struct_2(-544f, vec3<i32>(-23535i, -369i, 34680i), vec2<u32>(4294967295u, 124766u), -1090f, vec4<i32>(0i, 1i, -75104i, 0i)), Struct_2(-2127f, vec3<i32>(33661i, 12090i, -2255i), vec2<u32>(1u, 0u), 875f, vec4<i32>(-31818i, 0i, i32(-2147483648), 0i)), Struct_2(2656f, vec3<i32>(-37722i, 0i, -1i), vec2<u32>(0u, 60305u), 1054f, vec4<i32>(-39375i, -42262i, -16655i, -31849i)), Struct_2(615f, vec3<i32>(-6455i, -10173i, 21378i), vec2<u32>(19648u, 0u), 947f, vec4<i32>(i32(-2147483648), -1i, 2147483647i, 2147483647i)), Struct_2(1204f, vec3<i32>(i32(-2147483648), 2147483647i, 1i), vec2<u32>(1u, 51663u), 388f, vec4<i32>(-20413i, 23815i, i32(-2147483648), 17444i)), Struct_2(1000f, vec3<i32>(13386i, 0i, 1i), vec2<u32>(0u, 1u), 2001f, vec4<i32>(i32(-2147483648), i32(-2147483648), 2147483647i, 1i)), Struct_2(1152f, vec3<i32>(0i, 2147483647i, 13325i), vec2<u32>(44530u, 1u), -245f, vec4<i32>(20766i, -1i, 1i, -74753i)), Struct_2(-541f, vec3<i32>(-21878i, -6329i, -10660i), vec2<u32>(1u, 35358u), -223f, vec4<i32>(-17003i, 1i, 0i, -14275i)), Struct_2(1325f, vec3<i32>(i32(-2147483648), 600i, -1i), vec2<u32>(47613u, 4294967295u), 395f, vec4<i32>(-31385i, -1i, -3706i, 61187i)), Struct_2(370f, vec3<i32>(-22984i, 1i, 2147483647i), vec2<u32>(0u, 69332u), -1394f, vec4<i32>(26271i, i32(-2147483648), -1i, 2147483647i)), Struct_2(-654f, vec3<i32>(3797i, -21461i, 1i), vec2<u32>(56814u, 0u), 625f, vec4<i32>(2147483647i, 41407i, 1i, -2124i)), Struct_2(-1000f, vec3<i32>(10546i, 1i, 2147483647i), vec2<u32>(37820u, 18138u), 748f, vec4<i32>(17714i, 2147483647i, i32(-2147483648), 0i)), Struct_2(-1000f, vec3<i32>(0i, i32(-2147483648), -1i), vec2<u32>(0u, 4294967295u), 491f, vec4<i32>(-15968i, 30183i, -69538i, 37947i)), Struct_2(407f, vec3<i32>(20060i, 2147483647i, 2267i), vec2<u32>(0u, 1u), 836f, vec4<i32>(23877i, 2147483647i, 0i, -21648i)), Struct_2(273f, vec3<i32>(0i, 1i, -17016i), vec2<u32>(30147u, 1u), -608f, vec4<i32>(13051i, 2147483647i, 1i, 0i)), Struct_2(-907f, vec3<i32>(79835i, -7007i, 15470i), vec2<u32>(4294967295u, 1u), 832f, vec4<i32>(-12750i, -14494i, -1i, -17886i)), Struct_2(1329f, vec3<i32>(-47363i, 0i, 1i), vec2<u32>(1u, 36221u), -654f, vec4<i32>(-17098i, 2147483647i, 6595i, -1i)), Struct_2(1000f, vec3<i32>(19406i, -1i, -47944i), vec2<u32>(1u, 4294967295u), -251f, vec4<i32>(i32(-2147483648), -1i, -18207i, 43504i)), Struct_2(-182f, vec3<i32>(1i, 23136i, i32(-2147483648)), vec2<u32>(0u, 68489u), -292f, vec4<i32>(16838i, 11205i, 32256i, i32(-2147483648))), Struct_2(418f, vec3<i32>(2147483647i, -1i, -71218i), vec2<u32>(18476u, 31551u), 1038f, vec4<i32>(-17146i, -1i, 0i, 2147483647i)), Struct_2(595f, vec3<i32>(48658i, -69951i, 1i), vec2<u32>(54817u, 1u), -1439f, vec4<i32>(2147483647i, 0i, i32(-2147483648), 2147483647i)));

var<private> global3: u32 = 1u;

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> vec3<i32> {
    global3 = ~(u_input.b.x - dot(vec2<u32>(4294967295u, global0.c.x), firstLeadingBit(firstTrailingBit(arg_1.c.wy))));
    global1 = array<vec4<u32>, 1>();
    var var_0 = max(~(~arg_0.c.zy), ((arg_0.c.zz % (arg_1.c.xw & arg_1.c.xz)) + min(abs(vec2<u32>(global0.c.x, 48521u)), arg_0.c.zy ^ vec2<u32>(arg_0.c.x, 48364u))) >> vec2<u32>(~(~0u), ~26348u));
    var_0 = firstTrailingBit(~arg_1.c.zx);
    let var_1 = 17855u;
    return -global0.b * global0.e.wxy;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_4) -> Struct_3 {
    global3 = 0u;
    var var_0 = true & false;
    global0 = arg_0;
    let var_1 = arg_0;
    global0 = Struct_2(max(global0.d, -(-1173f) / arg_0.a), clamp(arg_1.c, clamp(-(global0.b ^ vec3<i32>(arg_1.b.b.x, -19571i, arg_1.b.b.x)), func_3(Struct_1(vec3<bool>(arg_1.b.a, true, false), vec2<f32>(arg_0.a, arg_0.d), vec4<u32>(1u, 1u, 4294967295u, 0u)), Struct_1(vec3<bool>(arg_1.b.a, false, false), vec2<f32>(arg_0.d, 342f), global1[var_1.c.x]), arg_0.a + -1000f), max(~var_1.b, arg_1.c & arg_1.c)), ~arg_0.e.wyz * var_1.b), ~global0.c, -1008f * -1669f, vec4<i32>(arg_0.e.x, func_3(Struct_1(vec3<bool>(true, arg_1.a.a, true), vec2<f32>(-261f, -293f), ~vec4<u32>(var_1.c.x, 4729u, var_1.c.x, 4294967295u)), Struct_1(select(vec3<bool>(arg_1.b.a, arg_1.a.a, true), vec3<bool>(arg_1.b.a, arg_1.a.a, true), vec3<bool>(false, arg_1.b.a, false)), -vec2<f32>(var_1.d, -201f), vec4<u32>(u_input.a.x, var_1.c.x, 1u, 0u)), -abs(var_1.a)).x, -39390i, 2147483647i));
    return Struct_3(select(all(vec3<bool>(false, arg_1.a.a & arg_1.b.a, any(vec3<bool>(false, arg_1.b.a, false)))), false, false), ~vec3<i32>(-(~var_1.b.x), 62369i, 13653i));
}

fn func_4(arg_0: Struct_4, arg_1: i32, arg_2: Struct_3) -> vec3<i32> {
    global0 = Struct_2(global0.a, vec3<i32>(-36112i, i32(-2147483648) / arg_2.b.x, arg_1), vec2<u32>(((global0.c.x / global0.c.x) >> (93357u - 4294967295u)) + countOneBits(abs(4294967295u)), u_input.a.x), global0.a, global0.e);
    var var_0 = func_2(global2[dot(u_input.b.wy, vec2<u32>(6852u, 3686u))], arg_0);
    var var_1 = reverseBits(~global0.c + u_input.b.yw);
    var_1 = u_input.a;
    let var_2 = arg_1;
    return select(-vec3<i32>(var_0.b.x, i32(-2147483648), clamp(i32(-2147483648), 0i, 24544i)) << u_input.b.wxz, ~min((arg_2.b * vec3<i32>(var_2, var_0.b.x, arg_2.b.x)) * ~arg_0.c, ~(global0.e.xyz | vec3<i32>(var_2, global0.e.x, arg_0.c.x))), !(!vec3<bool>(false, arg_2.a, u_input.b.x < 35282u)));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_3) -> Struct_3 {
    var var_0 = ~arg_1.e;
    global0 = Struct_2(-1000f, global0.b, (((vec2<u32>(arg_1.c.x, arg_1.c.x) ^ vec2<u32>(23126u, 33269u)) * clamp(arg_1.c, vec2<u32>(38567u, global0.c.x), vec2<u32>(global0.c.x, global0.c.x))) - ~arg_1.c) << clamp(~(vec2<u32>(1u, 1u) | global0.c), select(vec2<u32>(4294967295u, u_input.a.x), vec2<u32>(4294967295u, global0.c.x) >> vec2<u32>(0u, 0u), select(vec2<bool>(false, arg_0.b.a), vec2<bool>(true, arg_0.b.a), vec2<bool>(arg_2.a, true))), arg_1.c), -1000f / 672f, global0.e);
    var var_1 = select(vec4<bool>(!any(select(vec2<bool>(arg_0.a.a, false), vec2<bool>(true, arg_0.a.a), true)), arg_0.b.a, global0.c.x >= abs(4294967295u), true), !vec4<bool>(!(!arg_2.a), true, arg_1.c.x < reverseBits(arg_1.c.x), !(81058i == global0.b.x)), ~dot(~vec2<i32>(5182i, arg_1.b.x), vec2<i32>(global0.e.x, 1i)) > ~(~arg_1.b.x));
    let var_2 = select(func_4(Struct_4(Struct_3(arg_2.a, arg_1.b), Struct_3(false, arg_0.a.b), global0.e.yzy), 0i, func_2(global2[u_input.b.x], Struct_4(arg_2, Struct_3(true, global0.e.zwy), global0.b))), -arg_2.b % vec3<i32>(arg_2.b.x, ~(-1i), ~(-38146i)), !(!select(true, var_1.x, true))) % arg_2.b;
    let var_3 = -vec4<i32>(var_0.x, i32(-2147483648), var_2.x, max(dot(vec2<i32>(1i, 2147483647i), arg_2.b.yz), 1i) | abs(-31162i & arg_0.b.b.x));
    return Struct_3(arg_0.b.a, -vec3<i32>(~(-32132i), -1i, -1i));
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: u32, arg_3: Struct_2) -> vec2<u32> {
    global2 = array<Struct_2, 32>();
    var var_0 = func_1(Struct_4(Struct_3(arg_0.a, vec3<i32>(global0.e.x, global0.e.x, -32637i) << (u_input.b.zyy >> u_input.b.zyy)), arg_0, ~(global0.e.xyw & vec3<i32>(i32(-2147483648), arg_3.b.x, 2147483647i))), Struct_2(-(-162f), ~global0.b, ~(select(vec2<u32>(4294967295u, 44743u), global0.c, vec2<bool>(arg_0.a, false)) / vec2<u32>(u_input.b.x, 4294967295u)), 484f, arg_3.e), func_2(global2[17459u], Struct_4(Struct_3(!arg_0.a, global0.b), arg_0, vec3<i32>(global0.e.x, -34894i, max(global0.e.x, 6290i)))));
    var var_1 = Struct_1(vec3<bool>(var_0.a, !(!true), !any(!vec4<bool>(true, var_0.a, var_0.a, false))), -abs(floor(vec2<f32>(1225f, global0.d))) / (sign(-vec2<f32>(arg_3.d, arg_1)) + vec2<f32>(arg_1, arg_3.d)), u_input.b | vec4<u32>(arg_3.c.x, ~1u + countOneBits(4294967295u), ~global0.c.x, 4294967295u));
    var var_2 = true;
    global2 = array<Struct_2, 32>();
    return global0.c * ~var_1.c.zz;
}

fn func_6(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_4) -> Struct_2 {
    var var_0 = global2[global0.c.x >> ~arg_0.x];
    var var_1 = var_0.d;
    let var_2 = Struct_4(arg_2.a, arg_2.a, vec3<i32>(var_0.b.x, ~(arg_2.a.b.x / global0.e.x) & ((-18674i * var_0.b.x) << arg_1.c.x), -abs(-2171i)));
    var var_3 = arg_1.b;
    global1 = array<vec4<u32>, 1>();
    return global2[4294967295u];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(~vec2<u32>(firstTrailingBit(global0.c.x), 1u >> 39283u) & (u_input.b.zx >> func_5(func_1(Struct_4(Struct_3(false, vec3<i32>(-2368i, -17564i, 1i)), Struct_3(true, vec3<i32>(global0.e.x, global0.e.x, -22i)), vec3<i32>(i32(-2147483648), 1i, 0i)), Struct_2(global0.a, global0.b, vec2<u32>(11990u, global0.c.x), global0.d, global0.e), Struct_3(false, vec3<i32>(-48016i, -11316i, 20151i))), -global0.a, 64316u, Struct_2(-122f, global0.e.xwx, vec2<u32>(u_input.a.x, u_input.b.x), -1332f, global0.e))), Struct_1(vec3<bool>(!(!false), !func_1(Struct_4(Struct_3(false, vec3<i32>(global0.b.x, 2147483647i, global0.b.x)), Struct_3(true, vec3<i32>(1i, -13691i, global0.e.x)), vec3<i32>(-17934i, global0.e.x, global0.b.x)), Struct_2(-443f, global0.b, vec2<u32>(global0.c.x, u_input.b.x), -434f, global0.e), Struct_3(true, vec3<i32>(41780i, global0.b.x, global0.b.x))).a, (global0.a * global0.a) < (global0.d + 1623f)), -exp2(vec2<f32>(-359f, -1000f) / vec2<f32>(global0.d, 1354f)), u_input.b), Struct_4(Struct_3(true, reverseBits(vec3<i32>(-28744i, -1i, global0.b.x))), Struct_3(select(true, func_2(global2[1u], Struct_4(Struct_3(true, vec3<i32>(2147483647i, global0.b.x, global0.e.x)), Struct_3(true, global0.e.yyy), global0.e.wyz)).a, select(true, true, false)), vec3<i32>(0i, -(-13245i), global0.b.x - 0i)), vec3<i32>(global0.b.x, -63543i, -global0.e.x)));
    var var_0 = ceil(-(-(vec2<f32>(2023f, -1207f) * vec2<f32>(global0.d, -885f)) + min(vec2<f32>(-225f, -1226f), -vec2<f32>(-101f, -796f))));
    var var_1 = !(!vec2<bool>(false || !true, any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.b.x, -(-global0.e.x << 63480u) | global0.e.x, 26732u, -vec4<i32>(-global0.b.x, (-2571i >> 40841u) / func_6(vec2<u32>(u_input.a.x, 27667u), Struct_1(vec3<bool>(var_1.x, var_1.x, var_1.x), vec2<f32>(var_0.x, var_0.x), global1[1u]), Struct_4(Struct_3(true, vec3<i32>(global0.b.x, global0.e.x, global0.b.x)), Struct_3(true, global0.b), global0.e.xyz)).e.x, (2147483647i * global0.b.x) / 2147483647i, global0.b.x));
}

