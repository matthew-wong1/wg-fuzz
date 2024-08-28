// {"0:0":[32,205,230,238,9,17,153,58,17,94,148,203,142,136,12,63]}
// Seed: 9905632800852874822

struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: f32,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: u32,
    c: Struct_2,
    d: Struct_1,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec4<bool>;

var<private> global2: vec4<f32>;

var<private> global3: array<vec2<i32>, 12>;

fn func_3(arg_0: u32) -> f32 {
    var var_0 = all(select(select(select(vec4<bool>(true, global1.x, false, true), !vec4<bool>(false, global1.x, false, global1.x), true && true), !vec4<bool>(false, global1.x, true, true), all(global1.zyx)), select(select(select(vec4<bool>(global1.x, true, false, false), vec4<bool>(true, global1.x, false, global1.x), global1.x), !vec4<bool>(global1.x, true, global1.x, false), any(vec4<bool>(true, true, global1.x, global1.x))), vec4<bool>(false, false, select(global1.x, false, true), all(global1.yzz)), !select(vec4<bool>(global1.x, true, false, true), vec4<bool>(true, global1.x, false, true), vec4<bool>(true, true, true, true))), select(select(select(vec4<bool>(global1.x, true, false, false), vec4<bool>(global1.x, false, global1.x, false), vec4<bool>(global1.x, global1.x, global1.x, global1.x)), !vec4<bool>(global1.x, true, false, global1.x), 0i <= u_input.a.x), !vec4<bool>(global1.x, global1.x, global1.x, false), select(!vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(false, global1.x, true, global1.x), !vec4<bool>(global1.x, global1.x, false, false)))));
    global1 = vec4<bool>(all(select(global1.zz, !(!vec2<bool>(true, global1.x)), vec2<bool>(any(global1.xw), global1.x))), select(all(vec4<bool>(global1.x, false, global1.x, global1.x)) | global1.x, any(vec3<bool>(true, false, global1.x)), global1.x) | !all(global1.yxx), false || any(vec3<bool>(all(vec4<bool>(true, global1.x, global1.x, global1.x)), !global1.x, all(vec4<bool>(false, true, false, global1.x)))), false);
    global0 = 1u;
    let var_1 = Struct_4(vec4<u32>(15931u & ~0u, arg_0, arg_0, 0u), u_input.b, Struct_2(select((vec3<u32>(70184u, 7541u, arg_0) - vec3<u32>(arg_0, 2300u, u_input.b)) << firstTrailingBit(vec3<u32>(arg_0, u_input.b, 105305u)), abs(max(vec3<u32>(8517u, 17615u, 6268u), vec3<u32>(4294967295u, u_input.b, 28166u))), !false & true), -(-clamp(15459i, -25996i, -15496i)), (-global2.x * global2.x) * min(161f, 1028f), abs(~vec2<u32>(arg_0, arg_0)) * (~vec2<u32>(arg_0, 26020u) - (vec2<u32>(37421u, 4294967295u) * vec2<u32>(0u, arg_0))), vec2<u32>(clamp(u_input.b, 109593u, u_input.b) >> ~arg_0, ~u_input.b)), Struct_1(-(-(-1790f)), ~2147483647i | u_input.a.x, vec4<f32>(global2.x, global2.x, global2.x, -(-172f)) * vec4<f32>(-470f + 1000f, 1391f * 1103f, -(-1915f), global2.x + global2.x), vec2<u32>(10324u + dot(vec4<u32>(u_input.b, arg_0, arg_0, arg_0), vec4<u32>(arg_0, 0u, u_input.b, arg_0)), arg_0)), vec4<u32>(arg_0, u_input.b ^ firstTrailingBit(arg_0 ^ 0u), u_input.b, reverseBits(u_input.b & dot(vec3<u32>(4294967295u, 16165u, 27042u), vec3<u32>(1u, u_input.b, u_input.b)))));
    var var_2 = Struct_2(vec3<u32>(((u_input.b % var_1.d.d.x) | u_input.b) & (37579u & ~1u), (dot(var_1.a, vec4<u32>(var_1.c.e.x, arg_0, u_input.b, 16126u)) % dot(vec2<u32>(0u, u_input.b), vec2<u32>(39710u, arg_0))) >> ~(~var_1.d.d.x), reverseBits(4294967295u)), -1i, 1027f, min(var_1.c.d, var_1.e.yw), vec2<u32>(44648u, max(arg_0, ~firstLeadingBit(58732u))));
    return 1751f;
}

fn func_2(arg_0: vec4<f32>, arg_1: u32, arg_2: i32) -> Struct_2 {
    var var_0 = Struct_1((global2.x / -1225f) / ceil(-345f), ~countOneBits(arg_2 % (arg_2 + u_input.a.x)), -(vec4<f32>(-103f, arg_0.x, -(-635f), -1000f) / -(arg_0 * arg_0)), ~(~select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(8088u, arg_1), vec2<bool>(global1.x, false)) ^ reverseBits(vec2<u32>(u_input.b, u_input.b) / vec2<u32>(3115u, 37668u))));
    let var_1 = Struct_3(Struct_2(min(vec3<u32>(~4294967295u, var_0.d.x << u_input.b, firstLeadingBit(u_input.b)), ~vec3<u32>(u_input.b, arg_1, var_0.d.x)), 0i, -func_3(95865u), abs(var_0.d), var_0.d), dot(~(~vec3<u32>(u_input.b, 52990u, 0u) % ~vec3<u32>(arg_1, 4294967295u, 9981u)), select(select(vec3<u32>(0u, 13934u, var_0.d.x) - vec3<u32>(var_0.d.x, u_input.b, 58976u), min(vec3<u32>(45085u, 51447u, u_input.b), vec3<u32>(60305u, arg_1, var_0.d.x)), true || true), ~vec3<u32>(var_0.d.x, 0u, 0u), false)), Struct_1(sign(round(-1447f)), var_0.b, vec4<f32>(func_3(4294967295u) / -402f, -(102f - arg_0.x), -528f, round(879f)), ~firstTrailingBit(~vec2<u32>(16430u, arg_1))), -342i);
    var var_2 = global2.x;
    let var_3 = ~62981u % ~u_input.b;
    let var_4 = ~(~(~(~vec4<u32>(var_0.d.x, 0u, 1u, 1u)))) | vec4<u32>(4294967295u, arg_1, 28179u, ~var_1.c.d.x);
    return var_1.a;
}

fn func_1(arg_0: f32) -> vec4<f32> {
    let var_0 = func_2((-(vec4<f32>(arg_0, 606f, -1000f, 1633f) * vec4<f32>(1241f, arg_0, -665f, -1321f)) - ceil(vec4<f32>(204f, global2.x, arg_0, -1243f))) - (-vec4<f32>(arg_0, arg_0, -807f, arg_0) - floor(vec4<f32>(global2.x, 1624f, -201f, arg_0) - vec4<f32>(864f, -433f, -1237f, global2.x))), u_input.b, ~2147483647i);
    let var_1 = vec4<i32>(var_0.b - ~dot(vec3<i32>(-1i, -36559i, var_0.b), vec3<i32>(0i, var_0.b, 1i)), -3953i, u_input.a.x, -19494i) >> vec4<u32>(4294967295u, ~(~var_0.e.x - (1u << u_input.b)), (70062u >> ~4294967295u) % 6909u, ~0u);
    var var_2 = Struct_1(((-238f + -160f) * exp2(-global2.x)) * -914f, ~(-1i), -vec4<f32>(-(-1293f), step(round(var_0.c), -1855f), 162f * min(global2.x, 480f), var_0.c), ~var_0.d % (firstLeadingBit(var_0.a.zx % vec2<u32>(4294967295u, 0u)) << vec2<u32>(~var_0.a.x, firstTrailingBit(1u))));
    let var_3 = dot(select(~firstTrailingBit(vec4<u32>(3359u, 1u, var_2.d.x, u_input.b)), max(~vec4<u32>(var_2.d.x, u_input.b, var_0.a.x, 0u), vec4<u32>(var_2.d.x, 4294967295u, 0u, var_2.d.x)), global1.x) >> clamp(~firstTrailingBit(vec4<u32>(u_input.b, var_0.d.x, var_0.d.x, var_0.e.x)), abs(vec4<u32>(1u, 1u, var_2.d.x, 60908u)), vec4<u32>(144460u, var_0.e.x, var_0.e.x - 58625u, 60537u >> var_2.d.x)), ~(vec4<u32>(48378u, dot(vec4<u32>(70800u, u_input.b, var_2.d.x, 85657u), vec4<u32>(0u, 71520u, u_input.b, u_input.b)), firstLeadingBit(1u), var_0.e.x - 9851u) ^ ~clamp(vec4<u32>(var_2.d.x, var_0.d.x, 23040u, 0u), vec4<u32>(var_0.a.x, u_input.b, var_0.e.x, 4294967295u), vec4<u32>(34042u, var_2.d.x, 4294967295u, var_0.a.x))));
    var var_4 = var_0;
    return round(vec4<f32>(abs(2107f / -392f), select(-(-195f), global2.x / 598f, false | false) / floor(1202f / global2.x), abs(-1370f), step(func_2(var_2.c * vec4<f32>(var_4.c, global2.x, 1464f, var_2.c.x), u_input.b, reverseBits(0i)).c, -1300f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !all(vec3<bool>(global1.x != false, !global1.x, any(vec3<bool>(true, true, global1.x)))) | !(!all(vec2<bool>(global1.x, global1.x)));
    var var_1 = step(vec4<f32>(-1000f, global2.x, 868f / global2.x, -(732f - global2.x)) - -vec4<f32>(global2.x, global2.x * global2.x, global2.x * -584f, round(428f)), trunc(floor(func_1(-625f)) + ceil(vec4<f32>(1092f, -630f, global2.x, -353f) - vec4<f32>(-410f, global2.x, -735f, global2.x))));
    var var_2 = Struct_2(vec3<u32>(func_2(vec4<f32>(-2449f, var_1.x, 772f, var_1.x * 450f), 37640u, u_input.a.x).d.x, ~u_input.b, abs(u_input.b) ^ u_input.b), -284i, global2.x - var_1.x, vec2<u32>(u_input.b, ~(~firstTrailingBit(1u))), (reverseBits(vec2<u32>(u_input.b, u_input.b) + vec2<u32>(4294967295u, u_input.b)) / ~min(vec2<u32>(34583u, u_input.b), vec2<u32>(0u, u_input.b))) - min(abs(firstTrailingBit(vec2<u32>(u_input.b, u_input.b))), ~vec2<u32>(u_input.b, u_input.b)));
    var_1 = vec4<f32>(426f, abs(-global2.x) / (var_2.c * ((-579f / -1255f) - -411f)), func_1(func_2(vec4<f32>(select(874f, 313f, var_0), ceil(global2.x), -949f, 516f), var_2.a.x, func_2(vec4<f32>(global2.x, -337f, 1559f, 141f), u_input.b, ~1i).b).c).x, global2.x);
    var var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(-1i);
}

