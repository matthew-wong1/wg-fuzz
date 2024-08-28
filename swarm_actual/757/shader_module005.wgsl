// {"0:0":[34,127,254,100,48,195,12,167,133,87,166,56,50,119,27,136,25,156,39,91,125,188,133,38,176,143,220,99,236,28,241,72]}
// Seed: 18218853991398657518

struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<bool>,
    d: vec3<bool>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: Struct_4,
    d: vec2<u32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24> = array<u32, 24>(4294967295u, 1u, 58325u, 1u, 1u, 3679u, 4294967295u, 4294967295u, 19149u, 0u, 19966u, 30141u, 21137u, 1u, 104977u, 17909u, 4294967295u, 4294967295u, 15437u, 0u, 2788u, 75684u, 4294967295u, 1u);

var<private> global1: vec2<i32> = vec2<i32>(-1i, 0i);

var<private> global2: array<Struct_3, 5>;

fn func_3() -> vec2<u32> {
    let var_0 = exp2((exp2(-351f) * -709f) / -130f) / -2571f;
    let var_1 = u_input.e;
    let var_2 = -vec2<i32>(-(-(7202i ^ u_input.b.x)), ((u_input.b.x / u_input.a) - min(u_input.d, 26234i)) | -17643i);
    let var_3 = Struct_3(Struct_1(global1.x, dot(~(~vec2<u32>(var_1, global0[var_1])), reverseBits(firstTrailingBit(vec2<u32>(0u, 1u)))), vec4<bool>(!(!false), all(vec3<bool>(true, false, false)), all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), any(!vec3<bool>(false, false, false))), vec3<bool>(false, any(!vec4<bool>(false, false, false, true)), false), vec2<bool>(!(!true), false)), Struct_2(-(-vec3<f32>(var_0, 527f, -375f)) * -abs(vec3<f32>(var_0, 1302f, -800f)), vec3<i32>(var_2.x, var_2.x, i32(-2147483648))), vec2<i32>(2147483647i, countOneBits(dot(-vec4<i32>(-1i, u_input.a, global1.x, 2147483647i), vec4<i32>(global1.x, 1i, 1i, global1.x) << vec4<u32>(52738u, 29373u, 4706u, 4294967295u)))), -(~(~vec4<i32>(18368i, global1.x, 0i, global1.x))) / (vec4<i32>(-var_2.x, 33004i, select(global1.x, 2147483647i, true), 15242i) & vec4<i32>(abs(var_2.x), 2147483647i, -29810i, var_2.x)));
    var var_4 = ~reverseBits(0i);
    return vec2<u32>(global0[global0[select(0u, ~min(global0[30802u] % var_1, global0[4294967295u] * 9308u), true)]], ~countOneBits(var_1 - (global0[var_3.a.b] / 23155u)));
}

fn func_2(arg_0: vec4<f32>, arg_1: bool, arg_2: bool) -> Struct_1 {
    var var_0 = ~(~vec2<u32>(3632u, ~1u) & ~(~(~vec2<u32>(u_input.e, 83970u))));
    var var_1 = arg_0.x;
    var var_2 = -742f;
    var_0 = ~(vec2<u32>(~var_0.x * abs(94839u), var_0.x >> 4294967295u) >> firstLeadingBit(max(vec2<u32>(u_input.e, global0[var_0.x]), func_3())));
    var var_3 = Struct_1(u_input.d, 22732u, vec4<bool>(arg_2, all(vec2<bool>(true, all(vec2<bool>(true, arg_1)))), !(!arg_2 && true), false), select(vec3<bool>(arg_1, !(4294967295u > u_input.c), any(!vec4<bool>(arg_2, arg_2, true, false))), select(!vec3<bool>(arg_1, arg_1, arg_1), select(vec3<bool>(arg_1, true, true), !vec3<bool>(false, arg_1, true), !vec3<bool>(true, false, false)), !(global0[23380u] < u_input.e)), false), select(select(vec2<bool>(!false, !arg_1), vec2<bool>(!false, !false), select(!vec2<bool>(false, true), select(vec2<bool>(false, arg_2), vec2<bool>(true, arg_1), true), !false)), !(!(!vec2<bool>(true, false))), arg_2));
    return Struct_1((min(dot(vec3<i32>(var_3.a, 1i, i32(-2147483648)), vec3<i32>(2147483647i, global1.x, -15658i)), select(i32(-2147483648), var_3.a, false)) + clamp(dot(vec3<i32>(global1.x, u_input.d, 2147483647i), vec3<i32>(-25915i, -7105i, u_input.d)), ~var_3.a, ~2147483647i)) << var_0.x, (var_3.b + ~(0u ^ var_0.x)) % clamp(~func_3().x, 11682u, min(u_input.c, global0[var_0.x]) | ~var_3.b), select(vec4<bool>(!arg_1, any(select(var_3.c, vec4<bool>(true, false, arg_2, true), arg_1)), false, !(true == arg_1)), var_3.c, !false), !var_3.d, select(!var_3.d.yx, select(!select(var_3.e, vec2<bool>(arg_1, arg_1), var_3.d.yx), select(select(vec2<bool>(true, false), vec2<bool>(arg_2, false), arg_2), !vec2<bool>(arg_2, true), !false), !select(vec2<bool>(arg_1, arg_2), var_3.c.wz, false)), !vec2<bool>(select(true, arg_1, arg_2), all(var_3.c.zz))));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_5 {
    global0 = array<u32, 24>();
    let var_0 = global1.x < -7943i;
    global2 = array<Struct_3, 5>();
    let var_1 = 0u;
    global1 = vec2<i32>(47608i, ~abs(~(-30056i)));
    return Struct_5(select(arg_1.c, select(arg_1.c, !(!vec4<bool>(true, arg_0.x, true, arg_0.x)), (1090f == 538f) | false), select(vec4<bool>(false && arg_0.x, !false, any(arg_1.d), var_0), vec4<bool>(u_input.a <= global1.x, arg_0.x, false, all(vec2<bool>(arg_1.e.x, arg_0.x))), !(!vec4<bool>(false, arg_1.c.x, arg_1.e.x, false)))), abs(vec4<u32>(46829u, abs(11992u), ~1u, ~var_1)), Struct_4(Struct_2(min(vec3<f32>(-1351f, -314f, 797f), vec3<f32>(1413f, -1059f, 1000f)) / vec3<f32>(-230f, 857f, -1037f), ~countOneBits(vec3<i32>(-22341i, u_input.b.x, i32(-2147483648)))), vec4<i32>(-67528i * (i32(-2147483648) - global1.x), abs(-u_input.b.x), 0i, 2147483647i)), vec2<u32>(reverseBits(global0[16447u]), 41134u) | firstTrailingBit(~vec2<u32>(global0[1u], global0[global0[var_1]])), arg_1.d);
}

fn func_1(arg_0: i32) -> Struct_5 {
    global0 = array<u32, 24>();
    global2 = array<Struct_3, 5>();
    global0 = array<u32, 24>();
    var var_0 = func_4(select(select(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), !(!vec2<bool>(true, true)), !select(vec2<bool>(false, false), vec2<bool>(false, true), true)), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), any(vec2<bool>(!true, true & false))), func_2(vec4<f32>(-185f, -2091f + 979f, -1000f, -681f) / ((vec4<f32>(-782f, 1202f, 355f, 422f) + vec4<f32>(1124f, 703f, 1000f, -524f)) - vec4<f32>(-1000f, 577f, -367f, 1326f)), true, select(false, -global1.x == clamp(arg_0, arg_0, arg_0), any(!vec4<bool>(false, false, false, true)))));
    global1 = ~(min(vec2<i32>(firstLeadingBit(global1.x), -(-8230i)), ~vec2<i32>(arg_0, var_0.c.b.x) - -vec2<i32>(var_0.c.a.b.x, -12778i)) * -(~vec2<i32>(-1i, arg_0)));
    return func_4(!vec2<bool>(all(vec3<bool>(true, true, true)), false), func_2(-(-vec4<f32>(var_0.c.a.a.x, -332f, 2758f, var_0.c.a.a.x) + vec4<f32>(-2122f, var_0.c.a.a.x, var_0.c.a.a.x, -224f)), var_0.e.x, true));
}

fn func_5(arg_0: Struct_5, arg_1: Struct_5) -> Struct_2 {
    global2 = array<Struct_3, 5>();
    var var_0 = vec2<i32>(u_input.a, 5939i);
    var var_1 = Struct_4(arg_1.c.a, abs((arg_0.c.b / ~vec4<i32>(u_input.d, var_0.x, 0i, 1i)) % vec4<i32>(reverseBits(-1i), ~1i, ~arg_0.c.b.x, -16287i * arg_1.c.a.b.x)));
    let var_2 = arg_0.c.a.a.yx;
    let var_3 = -arg_0.c.a.a.x;
    return arg_0.c.a;
}

fn func_6(arg_0: Struct_4, arg_1: bool, arg_2: u32, arg_3: Struct_2) -> Struct_2 {
    var var_0 = ~(~(~(~(vec2<u32>(54461u, arg_2) / vec2<u32>(global0[arg_2], 4294967295u)))));
    global2 = array<Struct_3, 5>();
    global1 = max((~arg_3.b.xy - -(-vec2<i32>(11755i, global1.x))) >> func_4(!(!vec2<bool>(true, arg_1)), func_2(vec4<f32>(arg_0.a.a.x, 272f, arg_0.a.a.x, 679f), global0[4294967295u] == 4294967295u, true)).d, min(arg_3.b.zy, select(u_input.b, arg_0.b.ww, arg_1)));
    let var_1 = !vec3<bool>(func_4(func_2(-vec4<f32>(607f, arg_0.a.a.x, 627f, arg_3.a.x), var_0.x < global0[u_input.c], arg_1).d.xy, func_2(vec4<f32>(-1868f, arg_3.a.x, -392f, arg_0.a.a.x) + vec4<f32>(arg_0.a.a.x, arg_0.a.a.x, 1430f, arg_0.a.a.x), arg_1 | arg_1, any(vec3<bool>(arg_1, arg_1, arg_1)))).e.x, false, arg_1);
    global2 = array<Struct_3, 5>();
    return Struct_2(-sign(vec3<f32>(-486f, 445f - arg_0.a.a.x, func_4(vec2<bool>(false, true), Struct_1(arg_3.b.x, var_0.x, vec4<bool>(arg_1, true, var_1.x, false), vec3<bool>(true, false, var_1.x), vec2<bool>(arg_1, arg_1))).c.a.a.x)), arg_0.b.wwx);
}

fn func_7(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_5) -> StorageBuffer {
    global0 = array<u32, 24>();
    return StorageBuffer(arg_2.c.a.a.xx, -func_6(arg_2.c, !true, ~1u | 0u, Struct_2(-vec3<f32>(arg_2.c.a.a.x, 1476f, -707f), -arg_0.b)).b, -(~(0i % global1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<i32>(dot(-(~u_input.b) >> clamp(vec2<u32>(global0[global0[1u]], u_input.c), vec2<u32>(0u, u_input.e) * vec2<u32>(18205u, global0[4294967295u]), ~vec2<u32>(u_input.c, 75006u)), vec2<i32>(-16380i, global1.x)), u_input.d | global1.x);
    global2 = array<Struct_3, 5>();
    global2 = array<Struct_3, 5>();
    global0 = array<u32, 24>();
    global0 = array<u32, 24>();
    let x = u_input.a;
    s_output = func_7(func_6(Struct_4(func_5(func_1(u_input.a), Struct_5(vec4<bool>(false, true, true, false), vec4<u32>(123080u, 8579u, u_input.e, u_input.c), Struct_4(Struct_2(vec3<f32>(-1000f, 376f, 1410f), vec3<i32>(55348i, u_input.b.x, u_input.d)), vec4<i32>(-32659i, u_input.b.x, i32(-2147483648), u_input.a)), vec2<u32>(global0[36803u], global0[global0[u_input.e]]), vec3<bool>(false, true, false))), max(vec4<i32>(1i, -37724i, u_input.a, -1i), vec4<i32>(27210i, u_input.b.x, 2147483647i, global1.x))), all(vec3<bool>(any(vec4<bool>(false, false, true, true)), all(vec2<bool>(false, false)), u_input.e < u_input.c)), 0u, func_4(vec2<bool>(true, global1.x <= i32(-2147483648)), func_2(vec4<f32>(1000f, -906f, -715f, 1395f) - vec4<f32>(-1022f, 804f, 593f, 140f), func_1(global1.x).a.x, select(false, true, false))).c.a), max(min(~vec2<u32>(u_input.c, u_input.e), max(vec2<u32>(0u, 1u), vec2<u32>(27231u, u_input.e))), abs(vec2<u32>(14276u, u_input.e))) % vec2<u32>(99072u, 4294967295u | 20631u), func_1(dot(vec3<i32>(-1i, global1.x, 0i), vec3<i32>(u_input.a, 1i, 34464i)) >> func_4(select(vec2<bool>(true, true), vec2<bool>(true, false), true), Struct_1(39871i, global0[12103u], vec4<bool>(true, false, true, true), vec3<bool>(false, true, false), vec2<bool>(false, true))).d.x));
}

