// {"0:0":[113,132,167,169,25,177,41,79,78,75,247,126,188,231,248,74,106,17,55,111,59,216,204,198,71,1,69,221,228,97,236,4,106,239,111,236,106,21,76,0,70,199,146,123,217,222,86,253]}
// Seed: 2067095038368992953

struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_2(arg_0: u32, arg_1: vec2<bool>) -> f32 {
    var var_0 = u_input.b.x;
    var var_1 = vec2<u32>(6780u, ~arg_0);
    var_0 = (-dot(vec4<i32>(35218i, u_input.b.x, u_input.b.x, u_input.d.x), vec4<i32>(u_input.d.x, u_input.b.x, 2147483647i, u_input.d.x) & vec4<i32>(u_input.b.x, u_input.d.x, -7873i, u_input.d.x)) ^ ~(u_input.b.x * dot(vec4<i32>(-5400i, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(23902i, u_input.b.x, u_input.d.x, u_input.b.x)))) ^ -(-u_input.b.x);
    return exp2(-floor(-max(1145f, -644f)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec3<i32>) -> vec3<f32> {
    let var_0 = u_input.c.zz;
    var var_1 = firstTrailingBit(~var_0);
    var var_2 = Struct_1(vec2<i32>(arg_0.a.x, arg_2.x), 212f);
    let var_3 = min(-(vec2<f32>(arg_1, 1033f) / vec2<f32>(134f, var_2.b)) - (vec2<f32>(-449f, -305f) * -(vec2<f32>(235f, arg_1) * vec2<f32>(-1297f, -1697f))), step(abs(vec2<f32>(var_2.b, -574f)), round(vec2<f32>(-216f - -646f, var_2.b))));
    let var_4 = select(select(!vec4<bool>(!true, !true, all(vec3<bool>(false, true, false)), true), !(!vec4<bool>(true, true, false, true)), vec4<bool>(any(!vec2<bool>(true, false)), !(!false), false, false)), select(select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), false), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), true)), select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true)), !vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true)), vec4<bool>(0i >= -1i, false, all(vec3<bool>(false, true, true)), var_1.x != var_0.x)), select(select(!vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), select(true, false, false)), vec4<bool>(!true, 5113i != 0i, false, true), (u_input.a.x >= var_1.x) != all(vec3<bool>(true, false, true))), true), (~31294u ^ u_input.c.x) != 14734u);
    return (-(-select(vec3<f32>(arg_0.b, arg_1, -1000f), vec3<f32>(-1419f, var_3.x, -636f), var_4.xww)) * -((vec3<f32>(var_2.b, 1171f, -1170f) - vec3<f32>(-520f, -272f, var_3.x)) + (vec3<f32>(-2202f, var_3.x, -331f) * vec3<f32>(-227f, -149f, -157f)))) * (round(-(vec3<f32>(var_2.b, var_2.b, -1000f) + vec3<f32>(var_2.b, -2520f, arg_1))) - (-(-vec3<f32>(2315f, -504f, 853f)) * -(vec3<f32>(arg_0.b, -750f, var_3.x) + vec3<f32>(-379f, var_3.x, var_2.b))));
}

fn func_4(arg_0: vec3<f32>) -> bool {
    var var_0 = Struct_1(-vec2<i32>(~(-16865i) * -u_input.d.x, select(~u_input.b.x, u_input.b.x & 19969i, 0u < u_input.c.x)), arg_0.x);
    let var_1 = Struct_1(vec2<i32>(-51038i, -(~u_input.b.x)), var_0.b);
    let var_2 = var_1;
    var var_3 = u_input.c.xy * ((~vec2<u32>(1u, 25411u) + u_input.a) + u_input.a);
    var var_4 = true | false;
    return any(!vec4<bool>(!all(vec2<bool>(true, false)), dot(vec4<u32>(1u, u_input.a.x, var_3.x, var_3.x), vec4<u32>(0u, var_3.x, var_3.x, 75903u)) > ~17677u, !(!false), any(select(vec2<bool>(true, false), vec2<bool>(true, false), true))));
}

fn func_1(arg_0: f32, arg_1: vec3<u32>) -> bool {
    var var_0 = Struct_1(~u_input.d.xx & (-firstTrailingBit(vec2<i32>(-16453i, u_input.b.x)) << (~u_input.a + arg_1.zx)), min(-abs(987f) / max(arg_0 / -1964f, max(1172f, arg_0)), -arg_0));
    let var_1 = arg_1.x;
    var_0 = Struct_1(var_0.a, -(-721f));
    let var_2 = vec4<bool>(false, func_4((select(vec3<f32>(-528f, -743f, arg_0), vec3<f32>(arg_0, arg_0, arg_0), vec3<bool>(true, true, true)) * -vec3<f32>(-178f, arg_0, -474f)) * func_3(Struct_1(var_0.a, var_0.b), func_2(u_input.a.x, vec2<bool>(false, false)), abs(vec3<i32>(-1i, var_0.a.x, -11942i)))), all(select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), false)), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), false), vec4<bool>(true, false, true, false), true), vec4<bool>(any(vec3<bool>(true, false, false)), func_4(vec3<f32>(-1000f, var_0.b, -313f)), false, true))), !(!(!true)));
    var_0 = Struct_1(-(~(-vec2<i32>(var_0.a.x, -34315i))), ceil(ceil((-1383f * var_0.b) / -(-1116f))));
    return u_input.d.x <= 14989i;
}

fn func_5(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = u_input.c;
    return Struct_1((abs(~u_input.b) >> vec2<u32>(~17723u, var_0.x / u_input.c.x)) * u_input.b, ceil(-(arg_2.b * 439f) / ceil(arg_0.x)));
}

fn func_6(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = u_input.a ^ (abs(vec2<u32>(~u_input.c.x, 0u ^ 10037u)) >> u_input.a);
    var var_1 = Struct_1(min(reverseBits(-vec2<i32>(arg_1.x, 16816i)), u_input.d.xx), func_3(Struct_1(select(-arg_0.a, reverseBits(arg_1.xx), all(vec2<bool>(false, true))), 478f), -abs(1615f), countOneBits(select(countOneBits(vec3<i32>(-22973i, u_input.d.x, -37673i)), vec3<i32>(0i, 25219i, u_input.d.x), !vec3<bool>(true, true, true)))).x);
    let var_2 = arg_0;
    let var_3 = func_5(-(-sign(vec2<f32>(-568f, -1317f))) + vec2<f32>(689f * var_1.b, -1361f), !(!vec4<bool>(true || false, -33044i > 2147483647i, !false, !false)), func_5(min(-vec2<f32>(-1822f, var_2.b), sign(sign(vec2<f32>(-2672f, 1471f)))), select(!vec4<bool>(false, false, false, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), true), false), var_2));
    var_1 = arg_0;
    return Struct_1(clamp(func_5(vec2<f32>(-647f, -(-1139f)), select(!vec4<bool>(false, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false)), !vec4<bool>(false, true, true, true)), arg_0).a, vec2<i32>(u_input.b.x, max(20622i, -18650i) ^ reverseBits(-1422i)), firstLeadingBit(vec2<i32>(var_1.a.x / var_2.a.x, var_2.a.x))), func_3(Struct_1(-vec2<i32>(11181i, var_2.a.x) * (vec2<i32>(var_2.a.x, var_3.a.x) - u_input.d.xy), -(1683f / var_3.b)), -((-1381f * var_1.b) / ceil(-487f)), ~vec3<i32>(-2147483647i, var_1.a.x, 1i)).x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d.x;
    var_0 = u_input.b.x / select(-u_input.b.x, u_input.d.x, true);
    let var_1 = func_6(func_5(vec2<f32>(826f, 190f), vec4<bool>(u_input.b.x != ~1i, select(!false, true, func_1(-152f, u_input.c)), any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false))), (u_input.b.x - -30480i) <= -1i), Struct_1(u_input.d.yy, -310f)), u_input.d);
    var_0 = u_input.b.x;
    var var_2 = -(-((vec4<f32>(988f, 708f, var_1.b, var_1.b) - vec4<f32>(-200f, var_1.b, var_1.b, -1927f)) / trunc(vec4<f32>(var_1.b, var_1.b, 1634f, var_1.b)))) + select(-trunc(min(vec4<f32>(var_1.b, var_1.b, var_1.b, -1009f), vec4<f32>(var_1.b, var_1.b, 556f, 162f))), vec4<f32>(var_1.b + (var_1.b - 1189f), var_1.b, var_1.b * -(-944f), -var_1.b - (854f + var_1.b)), false);
    var var_3 = ~(select(var_1.a, ~u_input.d.zy, select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(false, false), false), true)) << u_input.c.zx);
    let var_4 = Struct_1(-u_input.b, max(-1399f, var_1.b));
    var var_5 = Struct_1(var_1.a, -(-round(var_4.b)));
    let var_6 = vec3<f32>(var_1.b, -(var_2.x + var_1.b), -var_1.b - trunc(807f)) / sign(vec3<f32>(183f, -(-1028f) - (-303f * var_4.b), func_3(Struct_1(var_5.a, 233f), step(382f, 699f), firstTrailingBit(u_input.d)).x));
    let x = u_input.a;
    s_output = StorageBuffer(357f, ~(~59163u ^ ((26095u + 0u) | ~7264u)));
}

