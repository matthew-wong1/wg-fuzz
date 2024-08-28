// {"0:0":[223,73,237,199,60,226,153,220,53,178,56,145,223,17,102,139,207,142,40,158,242,3,189,12,45,157,231,236,241,167,121,149,173,49,8,83,126,115,229,67,122,253,109,92,99,197,13,166]}
// Seed: 8971802832510017637

struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1211f;

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_2(arg_0, any(select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false), !true), vec3<bool>(4294967295u >= 1u, false, u_input.c.x >= 1i), -264f > (-603f / -721f))), select(select(!vec2<bool>(true, false), select(vec2<bool>(false, true), !vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))), !(!vec2<bool>(false, false))), !select(vec2<bool>(true, true), vec2<bool>(true, false), !vec2<bool>(false, false)), vec2<bool>(any(vec4<bool>(true, true, true, true)) & false, false | false)), arg_2);
    var var_1 = Struct_1(vec4<u32>(dot(vec4<u32>(u_input.a.x, ~0u, 21351u, var_0.a.a.x ^ var_0.d.a.x), arg_2.a << (vec4<u32>(arg_0.a.x, u_input.a.x, arg_1, arg_1) | vec4<u32>(17816u, 16575u, u_input.a.x, 43690u))), arg_1, 47076u, arg_2.a.x), var_0.a.b);
    let var_2 = !vec2<bool>(false, var_0.b);
    let var_3 = -firstTrailingBit(vec2<i32>(-u_input.b.x, max(u_input.c.x, -1i)) % ~u_input.c.zx);
    global0 = -656f;
    return ~(~(firstTrailingBit(0u) >> 25358u) + (select(dot(u_input.a, arg_2.a.xyx), firstLeadingBit(u_input.a.x), var_0.b) / ~var_1.a.x));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec4<u32>, arg_3: vec3<u32>) -> f32 {
    var var_0 = Struct_1(vec4<u32>(arg_2.x, ~func_3(Struct_1(arg_2, arg_0.d.b), 31366u, Struct_1(vec4<u32>(arg_1.x, 1u, 7814u, 0u), arg_0.d.b)) << dot(countOneBits(arg_2), abs(vec4<u32>(u_input.a.x, arg_0.d.a.x, arg_1.x, u_input.a.x))), func_3(arg_0.a, u_input.a.x, arg_0.d), firstLeadingBit(27122u)), -select(sign(vec2<f32>(arg_0.a.b.x, arg_0.a.b.x)) - arg_0.a.b, vec2<f32>(arg_0.a.b.x, -373f) - (arg_0.a.b + vec2<f32>(-761f, -571f)), !all(vec2<bool>(arg_0.c.x, false))));
    global0 = max(269f, abs(arg_0.a.b.x - -345f));
    global0 = -710f;
    global0 = min(var_0.b.x / ((-(-331f) * (arg_0.a.b.x - arg_0.a.b.x)) - -(167f * arg_0.d.b.x)), -190f);
    let var_1 = u_input.c.x;
    return -(-(-arg_0.a.b.x)) + -833f;
}

fn func_1(arg_0: Struct_2, arg_1: vec2<i32>) -> Struct_2 {
    var var_0 = ~abs(vec2<u32>(dot(~vec4<u32>(u_input.a.x, arg_0.a.a.x, arg_0.a.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, arg_0.d.a.x, 39678u)), ~(arg_0.d.a.x * 0u)));
    let var_1 = Struct_1(vec4<u32>(~0u, 62359u, var_0.x, arg_0.a.a.x), (floor(trunc(vec2<f32>(arg_0.a.b.x, arg_0.a.b.x))) - vec2<f32>(-arg_0.a.b.x, arg_0.d.b.x)) + vec2<f32>(func_2(arg_0, vec2<u32>(0u, 49094u) / vec2<u32>(4294967295u, u_input.a.x), arg_0.d.a, vec3<u32>(4294967295u, arg_0.a.a.x, 1u)), -1000f));
    var var_2 = arg_0.d;
    var var_3 = var_1.b.x;
    var var_4 = arg_0.b;
    return Struct_2(arg_0.a, true, select(!arg_0.c, select(arg_0.c, !arg_0.c, 4294967295u <= ~var_2.a.x), any(select(!vec3<bool>(false, arg_0.c.x, false), vec3<bool>(arg_0.c.x, true, arg_0.b), 4294967295u > 52735u))), var_1);
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2) -> bool {
    let var_0 = -(-109f) - func_1(func_1(Struct_2(func_1(arg_2, vec2<i32>(u_input.c.x, -42124i)).d, arg_1.a.a.x == 4433u, arg_1.c, Struct_1(arg_1.a.a, vec2<f32>(arg_2.a.b.x, -430f))), select(u_input.c.zy, ~vec2<i32>(u_input.c.x, u_input.b.x), select(vec2<bool>(arg_2.b, arg_2.b), arg_2.c, vec2<bool>(arg_2.c.x, arg_0)))), reverseBits(vec2<i32>(u_input.c.x, 18730i)) << vec2<u32>(firstTrailingBit(arg_1.a.a.x), select(arg_1.a.a.x, arg_2.a.a.x, arg_2.b))).d.b.x;
    let var_1 = !vec2<bool>(false, arg_1.c.x);
    var var_2 = var_1;
    let var_3 = Struct_2(func_1(Struct_2(arg_1.d, !arg_1.c.x, !arg_1.c, Struct_1(arg_1.a.a, vec2<f32>(-537f, var_0) * arg_1.d.b)), vec2<i32>(u_input.b.x, u_input.c.x) >> (select(u_input.a.zx, vec2<u32>(arg_2.d.a.x, arg_2.d.a.x), vec2<bool>(var_2.x, var_1.x)) % (vec2<u32>(46170u, 20202u) % vec2<u32>(u_input.a.x, arg_2.d.a.x)))).a, var_2.x, select(vec2<bool>(!arg_1.c.x, any(vec3<bool>(var_2.x, false, true)) || false), arg_1.c, !(!false)), func_1(Struct_2(func_1(arg_1, clamp(vec2<i32>(-1i, u_input.b.x), u_input.b.wx, u_input.b.zw)).a, arg_1.b, var_1, Struct_1(arg_1.d.a, -vec2<f32>(arg_2.a.b.x, -2565f))), countOneBits(u_input.c.xx)).a);
    var var_4 = vec4<u32>(4294967295u % ~28574u, arg_1.d.a.x, var_3.d.a.x, arg_2.a.a.x) & var_3.d.a;
    return any(!(!(!select(vec3<bool>(true, var_2.x, false), vec3<bool>(arg_2.c.x, var_1.x, true), vec3<bool>(true, var_1.x, true)))));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: f32) -> Struct_1 {
    var var_0 = Struct_2(func_1(arg_0, ~u_input.b.xw ^ countOneBits(-vec2<i32>(-1i, u_input.c.x))).a, true, select(func_1(func_1(arg_0, u_input.c.yx), u_input.c.zx).c, arg_0.c, !(1000f == 396f)), func_1(func_1(arg_0, u_input.c.zy), vec2<i32>(1i, -u_input.c.x)).a);
    var var_1 = arg_0;
    var var_2 = (-1i - 27758i) & u_input.c.x;
    let var_3 = u_input.c.x;
    var var_4 = Struct_2(func_1(Struct_2(Struct_1(~var_1.d.a, arg_0.d.b), arg_1.x, !(!var_0.c), Struct_1(countOneBits(arg_0.a.a), floor(var_0.d.b))), max(u_input.b.ww, u_input.c.xz)).d, 1i != (-(~0i) & 0i), arg_1.zx, var_0.d);
    return var_4.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_2(Struct_1((vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(u_input.a.x, 78504u, 1u, 29933u)) | ~vec4<u32>(9858u, 23657u, u_input.a.x, u_input.a.x), max(vec2<f32>(1000f, -1085f), vec2<f32>(-847f, -944f)) * (vec2<f32>(-258f, 456f) - vec2<f32>(-301f, 167f))), !func_4(false & false, func_1(Struct_2(Struct_1(vec4<u32>(3301u, u_input.a.x, 21614u, 0u), vec2<f32>(-1000f, -541f)), true, vec2<bool>(false, true), Struct_1(vec4<u32>(u_input.a.x, 50083u, 4294967295u, u_input.a.x), vec2<f32>(-723f, 836f))), u_input.c.wy), Struct_2(Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, 0u, 21422u), vec2<f32>(994f, -147f)), false, vec2<bool>(false, false), Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x), vec2<f32>(-2017f, 610f)))), vec2<bool>(any(vec3<bool>(true, false, false)) & !true, !all(vec3<bool>(true, false, true))), func_1(func_1(func_1(Struct_2(Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, 11362u, u_input.a.x), vec2<f32>(2812f, 503f)), false, vec2<bool>(true, false), Struct_1(vec4<u32>(u_input.a.x, 25012u, u_input.a.x, u_input.a.x), vec2<f32>(1531f, -602f))), vec2<i32>(u_input.c.x, 2147483647i)), max(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(u_input.b.x, 18846i))), u_input.c.wy).a), select(!select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false), vec3<bool>(true, false, false)), !(!vec3<bool>(false, true, true)), select(select(!vec3<bool>(true, true, false), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), !vec3<bool>(false, false, true)), vec3<bool>(false || true, func_1(Struct_2(Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 68097u), vec2<f32>(779f, -1662f)), false, vec2<bool>(false, true), Struct_1(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 36800u), vec2<f32>(-1810f, 960f))), vec2<i32>(u_input.c.x, -10851i)).c.x, !true), !select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true))), (((458f - 1700f) / (-516f - -128f)) + -(-748f)) / (exp2(-433f / 1046f) / max(620f, exp2(-589f))));
    global0 = -2283f;
    let var_1 = -1000f;
    let var_2 = func_1(Struct_2(var_0, !(!(!true)), vec2<bool>(!(!false), false), Struct_1(var_0.a, -vec2<f32>(847f, -476f))), vec2<i32>(max(firstTrailingBit(u_input.b.x), -26100i) * (i32(-2147483648) ^ 19313i), max(u_input.c.x, -u_input.c.x) >> (func_5(Struct_2(Struct_1(var_0.a, var_0.b), false, vec2<bool>(true, false), Struct_1(vec4<u32>(u_input.a.x, 9181u, u_input.a.x, u_input.a.x), vec2<f32>(-472f, var_1))), vec3<bool>(true, true, false), 1015f).a.x << (4294967295u - 10931u))));
    let var_3 = var_2;
    let var_4 = u_input.b.x;
    global0 = var_0.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(abs(0u) >> ~var_3.a.a.x)));
}

