// {"0:0":[30,30,93,90,163,49,158,249,2,33,89,105,115,67,37,24]}
// Seed: 16785495735316333407

struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false));

fn func_3() -> vec3<i32> {
    let var_0 = vec2<bool>(!true, select(all(vec4<bool>(false, true, false, true)), false & (-258f <= 1097f), any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)))) & true);
    let var_1 = var_0.x;
    let var_2 = firstTrailingBit(10735u);
    global1 = array<Struct_1, 17>();
    global1 = array<Struct_1, 17>();
    return ~(-(-(-firstLeadingBit(vec3<i32>(1i, u_input.a, -17086i)))));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1) -> bool {
    var var_0 = ~clamp(vec3<i32>(85713i ^ -65129i, u_input.a - u_input.b.x, -u_input.a) & -(vec3<i32>(u_input.a, 1i, -21425i) * vec3<i32>(u_input.a, u_input.a, 2147483647i)), func_3() * vec3<i32>(u_input.a, ~u_input.b.x, -26505i), min(~(vec3<i32>(-1i, i32(-2147483648), u_input.a) >> vec3<u32>(31113u, 4294967295u, 19475u)), select(abs(vec3<i32>(u_input.b.x, 22541i, 1i)), vec3<i32>(u_input.b.x, u_input.a, -1730i) << vec3<u32>(0u, 81593u, 34019u), arg_1.a)));
    var var_1 = trunc(vec2<f32>(-585f, sign(floor(120f))) * (vec2<f32>(616f + 237f, sign(1386f)) / vec2<f32>(-111f - 587f, -(-2582f))));
    var var_2 = Struct_1(false == ((0i > (-9685i << 53177u)) || select(false, any(vec3<bool>(arg_1.a, arg_1.a, arg_1.a)), arg_0.x | false)));
    let var_3 = var_0.x + dot(vec4<i32>(dot(vec4<i32>(u_input.b.x, u_input.b.x, -1i, u_input.b.x), vec4<i32>(var_0.x, -2246i, 0i, var_0.x)), 17032i | var_0.x, var_0.x, func_3().x) & abs(max(vec4<i32>(1i, u_input.b.x, i32(-2147483648), var_0.x), vec4<i32>(u_input.a, -1i, var_0.x, -8597i))), ~(-(vec4<i32>(var_0.x, u_input.b.x, u_input.b.x, 1i) * vec4<i32>(-1i, u_input.b.x, var_0.x, var_0.x))));
    var var_4 = Struct_1(true);
    return (~1u / ~firstTrailingBit(4294967295u)) == ~abs(14606u << ~1u);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<i32>) -> bool {
    let var_0 = Struct_1(func_2(vec3<bool>(true, true, any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false)))), Struct_1((1u & 16026u) < 1u)));
    let var_1 = max(round(vec3<f32>(-arg_0.x, 597f, max(-1104f, 1635f) + (arg_0.x + 1342f))), -abs(-(vec3<f32>(arg_0.x, arg_0.x, arg_0.x) + vec3<f32>(-650f, 1096f, arg_0.x))));
    var var_2 = max(vec3<f32>(trunc(arg_0.x / -(-715f)), 940f, -var_1.x), var_1);
    global1 = array<Struct_1, 17>();
    let var_3 = select(~firstTrailingBit(vec2<u32>(~1u, min(0u, 1u))), vec2<u32>(~(~0u), dot((vec2<u32>(44769u, 1u) << vec2<u32>(4294967295u, 29262u)) / (vec2<u32>(1u, 1u) - vec2<u32>(1u, 60140u)), select(firstTrailingBit(vec2<u32>(2016u, 0u)), vec2<u32>(34361u, 1u) >> vec2<u32>(16123u, 16023u), all(vec2<bool>(var_0.a, true))))), vec2<bool>(true, false));
    return all(!vec3<bool>(!all(vec2<bool>(var_0.a, true)), select(var_0.a, !true, false), any(vec2<bool>(var_0.a, false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec2<bool>((-(-2207f) == -242f) & true, !(func_1(vec2<f32>(772f, 1983f), u_input.b) && false));
    var var_1 = max(step(-((-493f - -1000f) / -940f), -374f), (418f * -1000f) - (-(-(-1207f)) / -select(244f, 414f, true)));
    global0 = u_input.b.x ^ u_input.b.x;
    var var_2 = min(vec2<u32>(~(~101091u), 364u) | ~(~min(vec2<u32>(9896u, 1u), vec2<u32>(10223u, 28503u))), vec2<u32>(~(~(40679u >> 4294967295u)), dot(reverseBits(vec4<u32>(85967u, 0u, 63550u, 64631u)) >> max(vec4<u32>(11718u, 4294967295u, 75960u, 1u), vec4<u32>(59342u, 43947u, 4191u, 1u)), vec4<u32>(~30031u, ~1u, countOneBits(1u), ~24296u))));
    let var_3 = Struct_1(var_0.x);
    var var_4 = reverseBits(~var_2.x) + (max(~var_2.x & 59567u, var_2.x) - 13767u);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(round(step(-827f, -932f)), min(929f + -685f, -(-1000f))) - select(vec2<f32>(-587f, sign(1000f)), sign(vec2<f32>(743f, 2833f) - vec2<f32>(1306f, 2018f)), select(select(vec2<bool>(var_0.x, var_3.a), vec2<bool>(false, var_0.x), true), !vec2<bool>(false, var_3.a), select(vec2<bool>(var_0.x, var_3.a), vec2<bool>(var_3.a, var_3.a), vec2<bool>(var_0.x, false)))), func_3(), (-(vec4<f32>(1000f, 1842f, -907f, -1000f) + vec4<f32>(-778f, 142f, 806f, -913f)) / round(min(vec4<f32>(-886f, 694f, -303f, 178f), vec4<f32>(1843f, -1060f, 104f, -2253f)))) * -abs(vec4<f32>(1124f, 786f, -160f, 794f) * vec4<f32>(1448f, -568f, 130f, -1007f)), -(-571f));
}

