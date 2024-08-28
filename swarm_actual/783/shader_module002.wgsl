// {"0:0":[121,197,240,211,72,19,89,34,166,73,99,245,173,8,52,215,44,63,113,94,61,6,143,73,54,164,182,140,225,178,47,213,27,235,88,220,132,40,179,197,219,198,179,134,11,109,67,223]}
// Seed: 767555437925200654

struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<i32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: vec2<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: vec2<i32>, arg_3: Struct_3) -> vec2<i32> {
    let var_0 = !vec2<bool>(true, !(arg_3.a.b & false) || true);
    var var_1 = false;
    global0 = arg_0.a.x;
    var var_2 = arg_0.a.x;
    var var_3 = 5224u;
    return vec2<i32>(-arg_2.x, select(arg_0.a.x, i32(-2147483648), !(clamp(arg_2.x, -1i, u_input.c.x) == ~u_input.c.x)));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_3) -> bool {
    var var_0 = Struct_2(u_input.c >> select(~vec4<u32>(33742u, 19281u, u_input.b.x, 1u), ~(vec4<u32>(arg_1.a.a, u_input.b.x, u_input.b.x, 13534u) & vec4<u32>(u_input.b.x, 58189u, 21168u, u_input.b.x)), !(!arg_1.a.b)), reverseBits(1u));
    global0 = firstTrailingBit(3161i);
    var var_1 = -(arg_1.a.d.x / (-arg_1.a.d.x - select(arg_1.a.d.x + 518f, -(-220f), !true)));
    let var_2 = false;
    let var_3 = u_input.c;
    return var_2;
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: f32, arg_3: vec3<i32>) -> Struct_4 {
    return Struct_4(vec4<bool>(false, select(all(select(vec4<bool>(arg_0, false, arg_0, true), vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(true, false, arg_0, true))), arg_0, arg_0), false, func_4(func_3(Struct_2(vec4<i32>(u_input.c.x, 2147483647i, arg_3.x, arg_3.x), u_input.b.x), arg_0, ~vec2<i32>(arg_3.x, u_input.a), Struct_3(Struct_1(u_input.b.x, arg_0, vec2<i32>(arg_3.x, arg_3.x), vec4<f32>(752f, -278f, 933f, 596f)), arg_3.x, 0i, vec3<i32>(i32(-2147483648), arg_3.x, i32(-2147483648)))), Struct_3(Struct_1(u_input.b.x, false, u_input.c.wx, vec4<f32>(arg_2, arg_1, arg_1, -881f)), arg_3.x + 21186i, ~2147483647i, vec3<i32>(arg_3.x, 44091i, i32(-2147483648))))), u_input.b.xy - ~(~vec2<u32>(u_input.b.x, u_input.b.x) | reverseBits(u_input.b.yz)), select(select(vec2<bool>(false, !false), vec2<bool>(arg_0, arg_0), false), !select(select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, false), false), !vec2<bool>(false, arg_0), vec2<bool>(arg_0, arg_0)), vec2<bool>(arg_0, arg_0)));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_5, arg_3: bool) -> bool {
    let var_0 = arg_2;
    var var_1 = arg_2.b;
    var var_2 = Struct_2(max(select(firstLeadingBit(u_input.c), select(vec4<i32>(-47031i, -29021i, -12709i, -43275i), u_input.c, arg_2.b.a), var_1.a) % ~u_input.c, select(clamp(~u_input.c, u_input.c >> vec4<u32>(16664u, 4294967295u, 4294967295u, u_input.b.x), u_input.c), ~(vec4<i32>(0i, u_input.a, i32(-2147483648), -4020i) * u_input.c), true)), 68841u);
    var_1 = Struct_4(vec4<bool>(arg_1.b, false, true | false, all(vec2<bool>(!false, arg_2.a.a.d.x != -1000f))), var_1.b, arg_2.b.c);
    var var_3 = Struct_5(arg_2.a, arg_2.b);
    return !(!all(var_0.b.a));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_5, arg_2: vec4<f32>) -> bool {
    var var_0 = Struct_4(vec4<bool>(all(arg_1.b.a) & (arg_1.a.a.d.x < -arg_2.x), false, func_5(vec2<f32>(arg_1.a.a.d.x, arg_2.x), Struct_1(~u_input.b.x, select(false, arg_1.b.a.x, true), vec2<i32>(arg_1.a.c, 11168i), vec4<f32>(arg_2.x, arg_1.a.a.d.x, -514f, 1002f)), Struct_5(arg_1.a, func_2(false, -266f, arg_2.x, vec3<i32>(0i, arg_1.a.b, -33471i))), false), any(!arg_1.b.a.xwx)), ~(clamp(vec2<u32>(0u, arg_1.b.b.x), vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(u_input.b.x, 4294967295u)) << vec2<u32>(u_input.b.x, ~arg_1.a.a.a)), arg_0.yx);
    var var_1 = false;
    var var_2 = 960f;
    let var_3 = Struct_4(vec4<bool>(!var_0.a.x, var_0.a.x, arg_1.a.a.b, arg_1.a.a.b), reverseBits(firstLeadingBit(var_0.b)), func_2(arg_1.a.d.x == u_input.a, -(-547f), -127f - step(-740f, arg_2.x), arg_1.a.d).a.zx);
    var var_4 = (-25644i + -25521i) * i32(-2147483648);
    return !true;
}

fn func_6(arg_0: Struct_1, arg_1: bool, arg_2: vec3<u32>) -> Struct_4 {
    let var_0 = Struct_2(-min(u_input.c, countOneBits(-u_input.c)), arg_2.x);
    global0 = countOneBits(-(-2589i + (u_input.c.x * countOneBits(-1i))));
    let var_1 = firstLeadingBit((u_input.c ^ ~(vec4<i32>(u_input.a, var_0.a.x, arg_0.c.x, 15281i) >> vec4<u32>(16964u, 1u, arg_0.a, 32106u))) << (~countOneBits(vec4<u32>(u_input.b.x, 1u, 4294967295u, u_input.b.x)) >> vec4<u32>(~52684u, 373u, 1u, ~arg_0.a)));
    var var_2 = Struct_1(~arg_0.a, var_0.b < (14303u >> (arg_2.x | (arg_2.x << arg_2.x))), u_input.c.xw, vec4<f32>(max(min(-arg_0.d.x, floor(682f)), arg_0.d.x), -1595f, ceil(arg_0.d.x), (-(-1000f) * -arg_0.d.x) / 1000f));
    let var_3 = arg_1;
    return func_2(false, -1468f, -(-1000f), ~(~var_0.a.xyz));
}

fn func_7(arg_0: Struct_4, arg_1: bool) -> f32 {
    var var_0 = Struct_4(vec4<bool>(!(!arg_0.a.x), arg_0.c.x, !(dot(vec4<u32>(arg_0.b.x, u_input.b.x, arg_0.b.x, arg_0.b.x), vec4<u32>(u_input.b.x, 1u, 4294967295u, 0u)) >= (4294967295u ^ 0u)), false), vec2<u32>(~dot(~vec4<u32>(u_input.b.x, 1u, u_input.b.x, 2570u), reverseBits(vec4<u32>(0u, 4294967295u, u_input.b.x, 4294967295u))), arg_0.b.x % (arg_0.b.x - ~1u)), arg_0.a.yz);
    var var_1 = arg_0.b.x;
    var var_2 = Struct_2(~(-(u_input.c & firstLeadingBit(vec4<i32>(2147483647i, u_input.c.x, u_input.a, 2147483647i)))), firstLeadingBit(~firstTrailingBit(12083u)));
    let var_3 = u_input.c;
    var var_4 = -(-1678f - -578f) / (exp2(min(894f - 1110f, 600f / -1009f)) / (sign(sign(713f)) - select(352f * 514f, 715f / -2094f, false)));
    return select(trunc(472f), -1067f, func_4(-vec2<i32>(42766i, dot(vec2<i32>(33457i, 2147483647i), vec2<i32>(u_input.c.x, var_3.x))), Struct_3(Struct_1(35414u & var_0.b.x, false, ~vec2<i32>(u_input.c.x, 3489i), exp2(vec4<f32>(770f, 1082f, -1173f, 269f))), (var_3.x >> var_0.b.x) * ~(-10235i), -34938i, -(~vec3<i32>(var_3.x, -32373i, -26493i)))));
}

fn func_8(arg_0: f32, arg_1: vec4<bool>, arg_2: vec3<u32>, arg_3: Struct_5) -> Struct_5 {
    let var_0 = exp2(-vec3<f32>(min(exp2(arg_0), arg_0 / arg_3.a.a.d.x), arg_0, -arg_0));
    var var_1 = arg_3.b;
    var var_2 = Struct_2(u_input.c, countOneBits(var_1.b.x << ~4294967295u) ^ (abs(var_1.b.x + 1u) + 43528u));
    let var_3 = ~vec4<i32>(u_input.a, -min(var_2.a.x - arg_3.a.b, -9002i * -1i), max(firstTrailingBit(var_2.a.x), -2147483647i), -(~max(2147483647i, arg_3.a.a.c.x)));
    var_2 = Struct_2(min(u_input.c, vec4<i32>(clamp(1i, -1i & -12522i, reverseBits(-50666i)), var_3.x, var_3.x & var_2.a.x, countOneBits(7793i))), ~(1u ^ func_2(false, var_0.x * -1200f, -1126f, u_input.c.yyy % var_2.a.yww).b.x));
    return Struct_5(Struct_3(Struct_1(var_2.b, var_1.a.x, (vec2<i32>(-1i, var_3.x) >> arg_2.zz) | ~arg_3.a.a.c, arg_3.a.a.d), ~(-4571i), (0i % 62249i) >> ~(4294967295u << 10465u), arg_3.a.d + select(arg_3.a.d & u_input.c.zzw, vec3<i32>(i32(-2147483648), u_input.c.x, u_input.c.x) + vec3<i32>(u_input.c.x, -11327i, u_input.a), !vec3<bool>(false, arg_1.x, var_1.a.x))), func_6(Struct_1(~(~0u), select(!arg_1.x, arg_1.x, true != true), vec2<i32>(0i, var_3.x), arg_3.a.a.d - -arg_3.a.a.d), arg_3.a.a.b, ~select(u_input.b, select(arg_2, vec3<u32>(var_2.b, var_1.b.x, var_1.b.x), false), var_1.a.wwx)));
}

fn func_9(arg_0: Struct_5, arg_1: i32, arg_2: Struct_5) -> vec4<bool> {
    global0 = arg_2.a.a.c.x;
    let var_0 = arg_2.b.a;
    let var_1 = arg_2.b.b.x;
    let var_2 = vec4<f32>(arg_2.a.a.d.x, round(-exp2(arg_0.a.a.d.x)), arg_2.a.a.d.x, -416f) / floor(((arg_2.a.a.d / arg_2.a.a.d) * vec4<f32>(arg_0.a.a.d.x, 931f, 179f, arg_0.a.a.d.x)) - -arg_0.a.a.d);
    var var_3 = dot(~((u_input.b << vec3<u32>(0u, u_input.b.x, u_input.b.x)) - u_input.b) * u_input.b, u_input.b);
    return !arg_0.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~clamp(-39494i, ~(i32(-2147483648)), ~(u_input.a << u_input.b.x) & 2147483647i);
    var var_0 = func_9(func_8(func_7(func_6(Struct_1(56456u, false, u_input.c.yx, vec4<f32>(2185f, 1432f, 1101f, 183f)), func_1(vec3<bool>(true, false, false), Struct_5(Struct_3(Struct_1(895u, true, vec2<i32>(3801i, u_input.a), vec4<f32>(-1000f, 946f, -1189f, 1199f)), u_input.c.x, u_input.a, u_input.c.ywy), Struct_4(vec4<bool>(false, true, false, false), vec2<u32>(101390u, 4294967295u), vec2<bool>(false, false))), vec4<f32>(-775f, -1807f, 355f, -1240f)), ~vec3<u32>(u_input.b.x, 15870u, u_input.b.x)), max(662f, -1705f) >= 2032f), func_6(Struct_1(88643u, any(vec3<bool>(false, true, false)), vec2<i32>(u_input.a, u_input.c.x), vec4<f32>(-681f, 191f, 1189f, -349f)), !false, u_input.b).a, clamp(u_input.b, ~vec3<u32>(u_input.b.x, 1u, 4294967295u), vec3<u32>(u_input.b.x & 1u, u_input.b.x, 1u)), Struct_5(Struct_3(Struct_1(1u, false, u_input.c.yz, vec4<f32>(-720f, 687f, 1500f, -340f)), -25376i, i32(-2147483648), firstLeadingBit(vec3<i32>(u_input.a, u_input.c.x, u_input.c.x))), func_6(Struct_1(u_input.b.x, false, vec2<i32>(u_input.a, u_input.a), vec4<f32>(-1311f, -1051f, 671f, -773f)), false == false, select(u_input.b, u_input.b, vec3<bool>(false, false, false))))), 36114i, func_8(-353f, !func_8(abs(892f), !vec4<bool>(false, true, false, false), abs(u_input.b), Struct_5(Struct_3(Struct_1(u_input.b.x, false, u_input.c.xz, vec4<f32>(2111f, 1503f, -381f, 1873f)), 2147483647i, 29424i, vec3<i32>(1175i, 1064i, 1i)), Struct_4(vec4<bool>(false, true, false, true), vec2<u32>(u_input.b.x, u_input.b.x), vec2<bool>(true, true)))).b.a, vec3<u32>(u_input.b.x << 28625u, firstTrailingBit(1u), u_input.b.x | ~1u), Struct_5(func_8(-118f, select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true)), vec3<u32>(u_input.b.x, 0u, u_input.b.x) / vec3<u32>(1u, u_input.b.x, u_input.b.x), func_8(701f, vec4<bool>(false, false, false, false), vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x), Struct_5(Struct_3(Struct_1(u_input.b.x, true, vec2<i32>(1i, 25821i), vec4<f32>(-1707f, 239f, -588f, -540f)), u_input.a, 1i, vec3<i32>(-52657i, -49677i, u_input.c.x)), Struct_4(vec4<bool>(false, true, true, false), u_input.b.xz, vec2<bool>(true, true))))).a, func_6(func_8(589f, vec4<bool>(true, true, true, false), vec3<u32>(4294967295u, u_input.b.x, u_input.b.x), Struct_5(Struct_3(Struct_1(u_input.b.x, false, vec2<i32>(2147483647i, -4901i), vec4<f32>(-1000f, 284f, 1308f, 990f)), u_input.a, -39031i, u_input.c.yzx), Struct_4(vec4<bool>(true, false, false, false), u_input.b.zx, vec2<bool>(false, true)))).a.a, true, vec3<u32>(1u, u_input.b.x, u_input.b.x)))));
    let var_1 = ~(-(~(~u_input.a) << u_input.b.x));
    let var_2 = var_0.zx;
    var var_3 = Struct_2(~(-(vec4<i32>(1i, 1i, u_input.c.x, u_input.c.x) | -vec4<i32>(var_1, var_1, 1i, -1i))), 1u);
    let var_4 = true;
    var var_5 = all(!(!func_6(func_8(-131f, vec4<bool>(true, true, false, var_0.x), u_input.b, Struct_5(Struct_3(Struct_1(var_3.b, false, vec2<i32>(u_input.c.x, 2147483647i), vec4<f32>(-106f, -1363f, -703f, -1020f)), var_1, -50509i, var_3.a.zxx), Struct_4(vec4<bool>(true, var_2.x, true, true), u_input.b.yx, vec2<bool>(true, true)))).a.a, var_0.x, vec3<u32>(53418u, u_input.b.x, var_3.b)).a));
    let var_6 = ~abs(~(vec4<u32>(1u, var_3.b, 1u, 1u) * vec4<u32>(34162u, 28424u, u_input.b.x, var_3.b)));
    let x = u_input.a;
    s_output = StorageBuffer((vec3<i32>(-u_input.a, countOneBits(u_input.a), -44896i) + func_8(429f + -409f, !vec4<bool>(true, var_2.x, true, var_2.x), u_input.b ^ vec3<u32>(1u, u_input.b.x, var_6.x), Struct_5(Struct_3(Struct_1(var_3.b, false, u_input.c.wy, vec4<f32>(1000f, 506f, -1000f, -458f)), u_input.c.x, -1i, vec3<i32>(0i, var_1, 20213i)), Struct_4(vec4<bool>(false, var_2.x, true, var_0.x), vec2<u32>(1u, 71567u), var_0.ww))).a.d) | vec3<i32>(firstLeadingBit(var_1), abs(firstTrailingBit(var_3.a.x)), -var_1), var_3.a.x, ~vec4<u32>(4294967295u, var_6.x, ~25962u / ~14695u, var_3.b % ~u_input.b.x));
}

