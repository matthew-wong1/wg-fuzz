// {"0:0":[68,69,84,102,236,114,68,85,82,90,109,228,178,130,55,81,166,240,101,94,204,184,247,179,80,252,79,132,170,30,228,17]}
// Seed: 3948608542668054583

struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<i32>,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<bool, 7> = array<bool, 7>(true, true, false, true, true, false, true);

var<private> global2: vec3<bool>;

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: vec2<f32>) -> vec4<f32> {
    var var_0 = arg_1.a.a.yxw;
    global1 = array<bool, 7>();
    global2 = select(vec3<bool>(global2.x, !any(select(vec3<bool>(global2.x, false, arg_2.x), arg_2, vec3<bool>(global2.x, arg_2.x, arg_2.x))), !global2.x), arg_2, false);
    var_0 = firstLeadingBit(vec3<u32>(arg_1.a.a.x, 62618u, countOneBits(min(45377u, 4294967295u))) - vec3<u32>(clamp(~0u, 26615u, dot(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(u_input.c, arg_1.a.a.x))), u_input.c, ~18842u));
    let var_1 = firstLeadingBit(select(vec3<i32>(u_input.e - 2147483647i, 57946i, 32633i * arg_0), firstTrailingBit(max(vec3<i32>(arg_0, -11358i, u_input.e), vec3<i32>(u_input.d, -28034i, arg_0))), arg_2) / (vec3<i32>(-1i, u_input.a, u_input.a >> u_input.c) % -vec3<i32>(74497i, 1i, -1i)));
    return exp2((select(-vec4<f32>(-1178f, 1649f, arg_3.x, -1066f), -vec4<f32>(-822f, 330f, -1263f, 538f), select(vec4<bool>(global1[1u], arg_2.x, false, arg_2.x), vec4<bool>(global2.x, false, false, false), vec4<bool>(arg_2.x, false, true, true))) - (vec4<f32>(1255f, 253f, arg_3.x, arg_3.x) + ceil(vec4<f32>(-688f, -1879f, 523f, arg_3.x)))) / floor(-ceil(vec4<f32>(-150f, -495f, 709f, arg_3.x))));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: u32) -> Struct_1 {
    var var_0 = vec4<bool>(true, global1[(~dot(arg_0, vec2<u32>(u_input.c, arg_2)) * reverseBits(u_input.b.x)) | ~4294967295u], global2.x, ~(47399u * ~17251u) <= (~(arg_2 >> 1u) & 37486u));
    global1 = array<bool, 7>();
    var var_1 = step(-exp2(-vec4<f32>(-1713f, -1034f, -711f, -518f)) * -(vec4<f32>(-1705f, -619f, -100f, 1042f) / func_3(u_input.d, Struct_3(Struct_1(vec4<u32>(u_input.b.x, u_input.b.x, 0u, arg_2)), Struct_1(vec4<u32>(arg_2, arg_0.x, 16352u, 1u))), vec3<bool>(arg_1.x, arg_1.x, var_0.x), vec2<f32>(-288f, -399f))), -select(round(min(vec4<f32>(-372f, -777f, 376f, 595f), vec4<f32>(-457f, -504f, 911f, -696f))), -(vec4<f32>(1000f, -992f, -312f, -290f) + vec4<f32>(919f, 565f, 1432f, 1294f)), vec4<bool>(any(vec4<bool>(true, false, false, true)), all(arg_1), !var_0.x, any(vec4<bool>(var_0.x, global1[arg_0.x], var_0.x, global1[u_input.b.x])))));
    var var_2 = ~vec3<u32>(countOneBits(arg_2), ~u_input.c ^ (arg_2 << (4294967295u | arg_2)), 4294967295u);
    var var_3 = firstLeadingBit(-(~min(-1i * u_input.d, ~u_input.a)));
    return Struct_1(select((vec4<u32>(arg_2, 43067u, 93576u, 17069u) >> vec4<u32>(arg_0.x, 21538u, 1u, arg_0.x)) & ~(~vec4<u32>(var_2.x, var_2.x, 4294967295u, u_input.c)), ~countOneBits(vec4<u32>(29652u, 0u, arg_2, 0u) * vec4<u32>(4294967295u, arg_0.x, 0u, u_input.c)), -func_3(-1i, Struct_3(Struct_1(vec4<u32>(0u, 40951u, 1941u, 65719u)), Struct_1(vec4<u32>(0u, var_2.x, var_2.x, 4294967295u))), vec3<bool>(global1[84581u], global1[u_input.c], arg_1.x), var_1.yz).x > round(1000f)));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_2 {
    global1 = array<bool, 7>();
    var var_0 = Struct_3(func_2(vec2<u32>(abs(~u_input.c), clamp(4294967295u, select(37151u, u_input.c, false), min(74030u, arg_1.x))), !select(select(vec4<bool>(global2.x, true, global1[35458u], global1[0u]), vec4<bool>(global1[4294967295u], true, true, true), vec4<bool>(false, global2.x, global1[arg_1.x], global2.x)), vec4<bool>(true, global1[arg_1.x], false, global2.x), select(vec4<bool>(true, true, global2.x, true), vec4<bool>(false, global2.x, false, false), global2.x)), 10823u), func_2(vec2<u32>(4294967295u * arg_0.a.x, reverseBits(37169u)) % u_input.b, select(vec4<bool>(global2.x, global2.x, global2.x && global1[14779u], select(false, global2.x, true)), !(!vec4<bool>(global1[arg_1.x], true, global1[arg_0.a.x], false)), select(select(vec4<bool>(false, false, true, global1[1u]), vec4<bool>(global2.x, true, global1[u_input.c], global2.x), vec4<bool>(false, global1[arg_0.a.x], global2.x, global2.x)), select(vec4<bool>(global2.x, true, true, global2.x), vec4<bool>(global1[arg_0.a.x], global2.x, true, global2.x), vec4<bool>(global2.x, true, true, global1[arg_1.x])), !global1[1u])), ~(~42989u)));
    var_0 = Struct_3(Struct_1(((vec4<u32>(4294967295u, 10008u, var_0.b.a.x, 34901u) << var_0.a.a) + arg_0.a) + (reverseBits(vec4<u32>(u_input.b.x, 34478u, 43566u, u_input.b.x)) | vec4<u32>(8940u, 31441u, arg_0.a.x, arg_1.x))), func_2(~var_0.b.a.zw, vec4<bool>(all(select(vec4<bool>(true, global1[95056u], true, false), vec4<bool>(global2.x, false, global1[0u], global2.x), global1[var_0.a.a.x])), true, 1109f <= -1100f, true), firstTrailingBit(arg_1.x)));
    global1 = array<bool, 7>();
    global2 = !vec3<bool>(true, any(!global2.zy), any(!select(vec4<bool>(global2.x, false, false, false), vec4<bool>(false, global2.x, global2.x, global2.x), false)));
    return Struct_2(arg_0, -235f, -(-abs(vec2<i32>(u_input.e, u_input.a))) ^ vec2<i32>(-abs(13270i), 2147483647i), func_3(0i, Struct_3(Struct_1(~var_0.b.a), Struct_1(firstTrailingBit(vec4<u32>(0u, 59436u, u_input.c, arg_1.x)))), select(!select(vec3<bool>(global2.x, true, true), vec3<bool>(true, global1[arg_0.a.x], false), vec3<bool>(false, false, global2.x)), select(vec3<bool>(false, global1[109430u], false), !vec3<bool>(false, global1[1u], true), vec3<bool>(true, true, true)), 0u != ~arg_1.x), vec2<f32>(1000f, (-1134f * -1800f) * -450f)).zw);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 7>();
    let var_0 = u_input.e;
    var var_1 = func_1(Struct_1(~((vec4<u32>(u_input.c, u_input.c, 4294967295u, u_input.c) & vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.c)) & ~vec4<u32>(u_input.c, u_input.c, u_input.b.x, u_input.b.x))), vec2<u32>(~83463u * ((0u >> 53546u) + abs(u_input.c)), u_input.b.x));
    let var_2 = select(vec3<u32>(1u, ~firstLeadingBit(1u) - (~u_input.c - ~u_input.b.x), max(4851u + var_1.a.a.x, ~var_1.a.a.x) ^ ~(3158u >> 0u)), var_1.a.a.xzx, !(~u_input.c < ((10380u << 62971u) / countOneBits(4294967295u))));
    let var_3 = var_1.a;
    let var_4 = var_1.a;
    var var_5 = Struct_3(Struct_1(var_4.a), var_1.a);
    var var_6 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(-var_1.b / (var_1.d.x * (356f - -1000f)));
}

