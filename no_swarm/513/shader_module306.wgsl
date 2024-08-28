// {"0:0":[55,17,78,94,229,24,119,207,4,213,140,56,213,102,249,151,117,98,40,89,127,92,175,149,193,15,40,49,85,38,31,54,105,79,103,10,134,17,114,140,194,64,221,139,95,213,180,123,163,251,141,248,27,209,46,223,129,26,83,143,246,102,175,233]}
// Seed: 16269654188264749876

struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec4<i32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec3<u32>, 12> = array<vec3<u32>, 12>(vec3<u32>(4294967295u, 72236u, 2068u), vec3<u32>(48397u, 4294967295u, 4294967295u), vec3<u32>(64198u, 28687u, 0u), vec3<u32>(32588u, 44790u, 4294967295u), vec3<u32>(34587u, 69783u, 1u), vec3<u32>(0u, 4294967295u, 18543u), vec3<u32>(1u, 48962u, 0u), vec3<u32>(43838u, 0u, 1u), vec3<u32>(49166u, 4294967295u, 0u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(25193u, 47243u, 0u), vec3<u32>(9658u, 0u, 1u));

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2) -> vec2<i32> {
    let var_0 = abs(min(round(-1328f) * -349f, floor(-1144f)));
    global1 = array<vec3<u32>, 12>();
    let var_1 = !(!(!select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true)), !vec4<bool>(true, true, true, false), false)));
    var var_2 = 9970i - (-(~(~u_input.d.x)) ^ 86602i);
    var var_3 = Struct_1(-arg_1.d.a * vec2<i32>(arg_0.x, ~(-1211i & arg_1.d.a.x)));
    return select(arg_0.wz, u_input.d.xy % abs(firstTrailingBit(vec2<i32>(arg_0.x, u_input.d.x)) | u_input.d.xx), (false && var_1.x) || (any(select(vec4<bool>(false, true, var_1.x, var_1.x), var_1, var_1.x)) & !(!var_1.x)));
}

fn func_2(arg_0: vec4<i32>) -> i32 {
    let var_0 = Struct_2(Struct_1(func_3(-(u_input.c << vec4<u32>(1u, u_input.a.x, 1u, u_input.a.x)), Struct_2(Struct_1(u_input.c.yz), ~vec3<i32>(arg_0.x, u_input.d.x, arg_0.x), Struct_1(vec2<i32>(u_input.d.x, 2147483647i)), Struct_1(vec2<i32>(11126i, arg_0.x)), Struct_1(u_input.c.yz)))), max(max(-(~arg_0.wyw), min(-arg_0.zyw, arg_0.yxz)), arg_0.yxx | vec3<i32>(-1i, dot(u_input.c, arg_0), ~u_input.d.x)), Struct_1(arg_0.zw), Struct_1(func_3(~u_input.c, Struct_2(Struct_1(u_input.d.zy), vec3<i32>(-20979i, u_input.d.x, arg_0.x) | arg_0.yxy, Struct_1(vec2<i32>(arg_0.x, -31125i)), Struct_1(vec2<i32>(-42465i, 17516i)), Struct_1(u_input.d.zy)))), Struct_1(select(arg_0.zz >> vec2<u32>(u_input.a.x, u_input.b.x), firstTrailingBit(u_input.c.zx) - -vec2<i32>(arg_0.x, arg_0.x), any(vec2<bool>(false, false)) && true)));
    global0 = -40787i;
    let var_1 = var_0;
    global1 = array<vec3<u32>, 12>();
    var var_2 = var_0.e.a.x;
    return var_1.e.a.x;
}

fn func_1() -> vec2<i32> {
    global0 = u_input.d.x;
    global0 = func_2(-vec4<i32>(u_input.c.x, 19986i / -1i, -6911i, u_input.d.x)) / u_input.d.x;
    var var_0 = Struct_2(Struct_1(select(max(vec2<i32>(-1i, 27731i), u_input.c.ww), u_input.d.yx, select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(false, false), any(vec3<bool>(true, false, false))))), u_input.d / max(u_input.c.ywx, vec3<i32>(u_input.c.x, ~(-11745i), u_input.d.x >> 5360u)), Struct_1((reverseBits(vec2<i32>(u_input.c.x, 1i)) + -vec2<i32>(u_input.d.x, u_input.c.x)) << ~u_input.a.yx), Struct_1(select(u_input.c.xw, (u_input.c.xz % vec2<i32>(u_input.d.x, u_input.d.x)) << vec2<u32>(u_input.b.x, 35207u), vec2<bool>(!true, !false))), Struct_1(select(vec2<i32>(u_input.d.x, u_input.c.x) & select(vec2<i32>(u_input.c.x, u_input.c.x), vec2<i32>(-46672i, -1i), false), ~(u_input.c.zx - vec2<i32>(u_input.c.x, u_input.c.x)), select(all(vec4<bool>(false, true, false, false)), all(vec3<bool>(true, false, true)), u_input.c.x >= 0i))));
    let var_1 = Struct_1(vec2<i32>(var_0.d.a.x / select(u_input.d.x, -1i + u_input.c.x, !false), firstLeadingBit(-(-24482i)) / ~(-1i)));
    var var_2 = Struct_2(var_0.e, vec3<i32>(-(~16193i) >> firstLeadingBit(select(u_input.a.x, 1u, false)), var_0.e.a.x, i32(-2147483648)), var_1, var_0.e, Struct_1(vec2<i32>(var_0.c.a.x, func_2(u_input.c))));
    return -min(~reverseBits(var_0.e.a), vec2<i32>(func_3(vec4<i32>(2147483647i, var_2.e.a.x, var_1.a.x, var_1.a.x), Struct_2(var_2.a, vec3<i32>(var_2.e.a.x, 2147483647i, -22708i), Struct_1(vec2<i32>(-30693i, var_2.b.x)), var_2.a, Struct_1(vec2<i32>(35107i, -31383i)))).x, i32(-2147483648))) - var_1.a;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> Struct_2 {
    var var_0 = firstLeadingBit(~(select(vec4<u32>(u_input.b.x, u_input.a.x, 0u, 16903u), abs(vec4<u32>(u_input.b.x, 11693u, 61973u, 12595u)), all(vec3<bool>(true, true, true))) - (~vec4<u32>(0u, 20078u, u_input.b.x, u_input.a.x) << countOneBits(vec4<u32>(19304u, 4294967295u, 7926u, u_input.b.x)))));
    let var_1 = -(-((vec4<f32>(390f, 1586f, 327f, -838f) * vec4<f32>(1000f, 2351f, 1447f, 1023f)) + select(vec4<f32>(765f, -153f, 341f, 1081f), vec4<f32>(-1627f, 392f, -1565f, 625f), false)) / min(max(vec4<f32>(-700f, -1649f, -494f, -1396f), vec4<f32>(859f, 1000f, 1048f, 1460f)) / -vec4<f32>(1000f, 168f, 832f, -1000f), vec4<f32>(312f, 1480f, -689f, -431f - -1367f)));
    let var_2 = Struct_1(arg_1.a);
    let var_3 = arg_3.b.x;
    global1 = array<vec3<u32>, 12>();
    return arg_3;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2) -> Struct_1 {
    var var_0 = func_4(firstLeadingBit(u_input.c.yx), arg_0, func_4(reverseBits(-(vec2<i32>(-1196i, -42898i) >> vec2<u32>(u_input.a.x, 11539u))), func_4(abs(arg_1.b.xy & vec2<i32>(1i, arg_0.a.x)), arg_1.d, arg_0, Struct_2(func_4(vec2<i32>(3634i, arg_0.a.x), Struct_1(vec2<i32>(i32(-2147483648), 1i)), Struct_1(vec2<i32>(2147483647i, -5744i)), arg_1).a, select(u_input.d, arg_1.b, true), func_4(arg_0.a, Struct_1(vec2<i32>(u_input.d.x, 11876i)), arg_0, Struct_2(arg_0, vec3<i32>(0i, arg_0.a.x, 2147483647i), arg_1.d, arg_0, Struct_1(vec2<i32>(u_input.d.x, -14085i)))).a, arg_1.d, func_4(u_input.d.yy, arg_1.d, Struct_1(arg_1.a.a), Struct_2(Struct_1(vec2<i32>(16031i, arg_0.a.x)), u_input.d, Struct_1(arg_0.a), Struct_1(vec2<i32>(arg_0.a.x, -17204i)), arg_1.e)).c)).d, Struct_1(-u_input.d.yx), Struct_2(Struct_1(~arg_1.e.a), vec3<i32>(arg_0.a.x, u_input.c.x, 2147483647i), func_4(~arg_0.a, Struct_1(arg_1.d.a), func_4(arg_0.a, Struct_1(u_input.d.yy), arg_0, arg_1).d, func_4(vec2<i32>(30394i, 1i), arg_0, Struct_1(arg_1.c.a), Struct_2(arg_1.d, vec3<i32>(-35604i, arg_0.a.x, 91060i), arg_1.a, Struct_1(arg_0.a), arg_0))).e, func_4(-arg_0.a, Struct_1(arg_0.a), arg_0, func_4(u_input.d.zx, arg_1.d, arg_0, arg_1)).d, func_4(func_3(u_input.c, arg_1), func_4(arg_0.a, Struct_1(vec2<i32>(-59217i, 1i)), arg_0, arg_1).e, func_4(vec2<i32>(-2519i, u_input.d.x), arg_1.c, Struct_1(vec2<i32>(arg_0.a.x, i32(-2147483648))), Struct_2(Struct_1(arg_0.a), vec3<i32>(arg_0.a.x, -7702i, -4947i), arg_0, Struct_1(vec2<i32>(-61463i, 2147483647i)), Struct_1(vec2<i32>(arg_1.c.a.x, arg_1.a.a.x)))).a, arg_1).c)).a, arg_1);
    global0 = -1i & (~(-(-33516i) + -u_input.c.x) ^ (-arg_1.c.a.x >> u_input.b.x));
    var var_1 = vec4<u32>(5598u, 76887u, 7962u, 1u);
    var_1 = ~((firstLeadingBit(vec4<u32>(var_1.x, 1u, 1u, 4294967295u) ^ vec4<u32>(u_input.a.x, u_input.a.x, var_1.x, 48252u)) | vec4<u32>(max(49508u, 45868u), ~u_input.b.x, min(u_input.a.x, 4294967295u), u_input.a.x)) >> ~min(vec4<u32>(4294967295u, 13254u, u_input.a.x, 76996u) * vec4<u32>(56901u, 35024u, var_1.x, u_input.a.x), reverseBits(vec4<u32>(4294967295u, 35113u, 4918u, 4294967295u))));
    var_0 = func_4(clamp(abs(vec2<i32>(var_0.d.a.x, arg_1.e.a.x) << u_input.b), vec2<i32>((u_input.d.x - var_0.e.a.x) / -35394i, -32102i), (abs(arg_0.a) | (vec2<i32>(u_input.d.x, arg_1.b.x) + u_input.d.yy)) % arg_1.c.a), func_4(~(arg_1.c.a % ~vec2<i32>(u_input.d.x, u_input.c.x)), func_4(max(arg_0.a, vec2<i32>(arg_1.d.a.x, 0i)) % (var_0.e.a - vec2<i32>(var_0.d.a.x, 3057i)), arg_1.e, arg_1.d, arg_1).a, Struct_1(func_4(-var_0.a.a, var_0.e, func_4(vec2<i32>(u_input.c.x, arg_0.a.x), Struct_1(vec2<i32>(41949i, var_0.a.a.x)), Struct_1(var_0.e.a), Struct_2(Struct_1(vec2<i32>(var_0.a.a.x, arg_1.e.a.x)), vec3<i32>(12696i, -11071i, -1i), Struct_1(var_0.e.a), arg_0, arg_0)).c, func_4(var_0.a.a, Struct_1(vec2<i32>(arg_1.d.a.x, var_0.c.a.x)), arg_1.e, Struct_2(Struct_1(vec2<i32>(u_input.d.x, arg_1.e.a.x)), var_0.b, Struct_1(var_0.c.a), Struct_1(var_0.b.yy), arg_1.a))).e.a), func_4(u_input.c.wy, var_0.c, func_4(vec2<i32>(i32(-2147483648), var_0.c.a.x) << var_1.wx, func_4(arg_1.b.xz, var_0.c, var_0.e, Struct_2(var_0.c, vec3<i32>(-1i, 17521i, -16964i), arg_1.a, arg_0, Struct_1(var_0.b.yz))).d, func_4(vec2<i32>(arg_0.a.x, 14986i), Struct_1(u_input.d.zz), Struct_1(u_input.d.xz), arg_1).a, arg_1).d, Struct_2(arg_0, reverseBits(u_input.c.wyw), var_0.c, var_0.d, arg_1.a))).a, Struct_1(func_3(~firstTrailingBit(vec4<i32>(u_input.d.x, i32(-2147483648), 19733i, arg_1.c.a.x)), func_4(vec2<i32>(arg_0.a.x, var_0.d.a.x), var_0.d, func_4(u_input.c.zx, arg_1.e, Struct_1(vec2<i32>(1i, -1i)), arg_1).a, Struct_2(arg_1.d, u_input.d, Struct_1(u_input.c.zx), arg_0, arg_0)))), func_4(~(vec2<i32>(var_0.e.a.x, 23966i) + vec2<i32>(arg_0.a.x, 1i)) % vec2<i32>(~(i32(-2147483648)), arg_1.e.a.x), func_4(~(vec2<i32>(arg_0.a.x, 1i) | vec2<i32>(var_0.e.a.x, arg_1.c.a.x)), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648))), func_4(vec2<i32>(arg_0.a.x, var_0.c.a.x), func_4(vec2<i32>(var_0.d.a.x, -13495i), Struct_1(vec2<i32>(20132i, 2147483647i)), var_0.a, Struct_2(Struct_1(arg_0.a), var_0.b, arg_1.d, Struct_1(arg_1.c.a), Struct_1(var_0.a.a))).a, Struct_1(vec2<i32>(arg_0.a.x, 0i)), arg_1).d, arg_1).d, Struct_1(-vec2<i32>(arg_1.d.a.x, arg_0.a.x) / vec2<i32>(-14029i, -10512i)), arg_1));
    return func_4(~(-arg_0.a), var_0.d, Struct_1(((vec2<i32>(43598i, 9110i) * arg_1.c.a) << ~vec2<u32>(var_1.x, var_1.x)) / u_input.d.zz), arg_1).c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_1(firstTrailingBit(~(~vec2<i32>(19916i, 98i)))), func_4(func_1(), Struct_1(~vec2<i32>(u_input.c.x, 0i) + max(vec2<i32>(u_input.d.x, u_input.d.x), u_input.c.wz)), Struct_1(u_input.d.xz), Struct_2(Struct_1(~vec2<i32>(u_input.d.x, 2147483647i)), -vec3<i32>(u_input.c.x, -1i, 2147483647i), Struct_1(u_input.c.zw), Struct_1(u_input.d.zz & u_input.d.xx), Struct_1(u_input.c.ww))));
    let var_1 = func_4(-clamp(-u_input.c.yw, vec2<i32>(17858i, -12870i), ~u_input.d.yx) * ~(u_input.d.yz / ~vec2<i32>(var_0.a.x, 0i)), Struct_1(clamp(var_0.a, -u_input.d.yx, abs(~vec2<i32>(1i, var_0.a.x)))), Struct_1(min(vec2<i32>(-4663i, -118922i), -vec2<i32>(u_input.c.x, var_0.a.x))), func_4(~firstLeadingBit(u_input.d.zz), Struct_1(select(vec2<i32>(1i, -4063i), vec2<i32>(u_input.c.x, -4846i), vec2<bool>(true, false)) % -u_input.c.wy), func_5(func_4(~vec2<i32>(u_input.d.x, 0i), Struct_1(vec2<i32>(-6046i, 0i)), Struct_1(vec2<i32>(2147483647i, 1i)), func_4(var_0.a, Struct_1(vec2<i32>(2147483647i, var_0.a.x)), Struct_1(vec2<i32>(u_input.d.x, u_input.c.x)), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), var_0.a.x)), vec3<i32>(var_0.a.x, 1i, u_input.c.x), Struct_1(vec2<i32>(-16440i, var_0.a.x)), Struct_1(u_input.d.xy), Struct_1(vec2<i32>(u_input.d.x, 0i))))).c, func_4(~var_0.a, Struct_1(u_input.c.wz), func_5(Struct_1(vec2<i32>(i32(-2147483648), u_input.c.x)), Struct_2(Struct_1(u_input.c.xz), vec3<i32>(4542i, 1i, 0i), Struct_1(vec2<i32>(34958i, 1i)), Struct_1(vec2<i32>(var_0.a.x, var_0.a.x)), Struct_1(u_input.d.zz))), func_4(vec2<i32>(u_input.d.x, u_input.c.x), Struct_1(vec2<i32>(2147483647i, -40755i)), Struct_1(u_input.d.zz), Struct_2(Struct_1(u_input.d.zx), vec3<i32>(var_0.a.x, 1i, u_input.d.x), Struct_1(vec2<i32>(6293i, -39843i)), Struct_1(vec2<i32>(var_0.a.x, u_input.c.x)), Struct_1(u_input.c.xy))))), Struct_2(func_4(select(u_input.d.zy, var_0.a, vec2<bool>(false, false)), Struct_1(var_0.a), func_5(Struct_1(var_0.a), Struct_2(Struct_1(vec2<i32>(0i, var_0.a.x)), vec3<i32>(-25079i, u_input.d.x, 0i), Struct_1(vec2<i32>(-29109i, -33904i)), Struct_1(vec2<i32>(u_input.c.x, i32(-2147483648))), Struct_1(u_input.c.xx))), Struct_2(Struct_1(u_input.d.yy), u_input.d, Struct_1(var_0.a), Struct_1(u_input.c.zw), Struct_1(vec2<i32>(13886i, var_0.a.x)))).a, reverseBits(vec3<i32>(var_0.a.x, -22266i, 0i)) + clamp(u_input.d, u_input.c.wxz, vec3<i32>(2482i, var_0.a.x, u_input.d.x)), func_5(Struct_1(vec2<i32>(-23011i, u_input.c.x)), Struct_2(Struct_1(var_0.a), u_input.d, Struct_1(u_input.d.yy), Struct_1(u_input.d.xy), Struct_1(vec2<i32>(0i, var_0.a.x)))), func_5(Struct_1(var_0.a), Struct_2(Struct_1(vec2<i32>(var_0.a.x, var_0.a.x)), vec3<i32>(10801i, 1i, 0i), Struct_1(vec2<i32>(-1172i, i32(-2147483648))), Struct_1(vec2<i32>(-15376i, u_input.d.x)), Struct_1(u_input.d.xx))), func_5(func_4(vec2<i32>(-12174i, 0i), Struct_1(var_0.a), Struct_1(vec2<i32>(u_input.c.x, u_input.c.x)), Struct_2(Struct_1(vec2<i32>(u_input.d.x, 1i)), u_input.d, Struct_1(vec2<i32>(u_input.d.x, i32(-2147483648))), Struct_1(u_input.c.xx), Struct_1(u_input.c.yx))).e, func_4(var_0.a, Struct_1(u_input.d.yx), Struct_1(vec2<i32>(u_input.c.x, 28780i)), Struct_2(Struct_1(vec2<i32>(2147483647i, 1417i)), vec3<i32>(-1i, var_0.a.x, 4357i), Struct_1(vec2<i32>(-7798i, var_0.a.x)), Struct_1(var_0.a), Struct_1(vec2<i32>(u_input.d.x, u_input.d.x))))))));
    global1 = array<vec3<u32>, 12>();
    var_0 = func_5(Struct_1(-var_0.a), var_1);
    let var_2 = -(-(-vec3<f32>(-2552f, -1267f, 370f)) / exp2(-vec3<f32>(-1036f, -1458f, 592f))) + step(select(floor(vec3<f32>(263f, -401f, 2219f) * vec3<f32>(683f, 1299f, 748f)), -(vec3<f32>(860f, 1000f, -1628f) * vec3<f32>(1080f, 849f, 854f)), true), vec3<f32>(exp2(min(1536f, 363f)), ceil(-(-143f)), ceil(-1742f)));
    let var_3 = Struct_1(-((-u_input.c.zw * ~u_input.d.yz) >> u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.c, var_2.x, vec4<i32>(-2147483647i & -(-1i), func_2(u_input.c), -u_input.d.x, abs(firstLeadingBit(i32(-2147483648))) & ((1i << u_input.b.x) / var_0.a.x)), func_1().x, min(-(-1000f) * 1067f, var_2.x));
}

