// {"0:0":[165,193,112,112,60,17,12,98]}
// Seed: 16203974110339681247

struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: i32,
    d: vec2<f32>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2>;

fn func_3(arg_0: i32, arg_1: vec4<i32>, arg_2: f32, arg_3: vec2<bool>) -> i32 {
    global0 = array<Struct_2, 2>();
    var var_0 = select(~(-vec4<i32>(-1i, arg_0, 1i, -752i) | clamp(vec4<i32>(18358i, u_input.a, 11274i, arg_1.x), arg_1, vec4<i32>(arg_0, arg_0, u_input.a, arg_0))) * (-clamp(arg_1, arg_1, vec4<i32>(u_input.a, 1i, 1i, arg_0)) % vec4<i32>(0i, -18872i, 1i, arg_0 * 0i)), arg_1, -(-arg_0) != ((arg_1.x - 1i) - abs(clamp(u_input.a, 10454i, u_input.a))));
    var var_1 = Struct_2(Struct_1(u_input.b, 358f, vec2<u32>(1u, dot(vec2<u32>(1u, 0u) * vec2<u32>(u_input.b, u_input.b), ~vec2<u32>(0u, 13729u)))), vec2<bool>(!(all(vec2<bool>(arg_3.x, true)) & all(vec3<bool>(false, arg_3.x, arg_3.x))), arg_3.x), firstLeadingBit(48284i % ~arg_0) - abs(countOneBits(-59179i) >> abs(1u)), vec2<f32>(arg_2, -arg_2 * -arg_2), arg_3);
    let var_2 = global0[u_input.b & (min(min(1u, countOneBits(66846u)), u_input.b) + ~dot(var_1.a.c, countOneBits(vec2<u32>(var_1.a.a, u_input.b))))];
    global0 = array<Struct_2, 2>();
    return arg_1.x % ~(var_0.x + -var_0.x);
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: vec3<u32>) -> f32 {
    let var_0 = ~vec4<i32>(reverseBits(u_input.a) / -8656i, func_3(1i, vec4<i32>(u_input.a, i32(-2147483648), reverseBits(i32(-2147483648)), -7133i & u_input.a), floor(-arg_0), select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(false, false))), u_input.a, -(-u_input.a) * -18608i);
    var var_1 = Struct_3(Struct_1(4294967295u, arg_1, select(vec2<u32>(u_input.b, ~u_input.b), (arg_2.xy ^ arg_2.yx) - abs(arg_2.zy), select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, false), !true))), select(vec2<bool>((true || true) == false, false), vec2<bool>(true, all(!vec2<bool>(true, false))), vec2<bool>(!(!true), all(vec4<bool>(false, false, true, false)) || all(vec4<bool>(true, false, true, false)))), Struct_1(~arg_2.x, max(arg_0 * -644f, -(arg_0 * 687f)), arg_2.zz), ~(dot(select(vec4<i32>(2147483647i, -1i, i32(-2147483648), u_input.a), var_0, vec4<bool>(false, true, true, true)), var_0) * var_0.x));
    var var_2 = arg_0;
    var_2 = floor(arg_1);
    var_2 = -(-(-(arg_0 - arg_1)) + -(-var_1.c.b));
    return -(arg_0 - (-(-arg_1) * -275f));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: f32, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = ~(reverseBits(countOneBits(~1u)) - arg_1.x);
    var_0 = ~(~(~u_input.b));
    let var_1 = Struct_2(Struct_1(firstTrailingBit(abs(~12643u)), max(exp2(-arg_2), -1444f), ~(~arg_1 ^ vec2<u32>(13892u, 0u))), !(!select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), select(vec2<bool>(true, false), vec2<bool>(true, false), true), !vec2<bool>(false, true))), 9066i, arg_3.zw, select(!select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), true), vec2<bool>(false, !false && !true), vec2<bool>(false, any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true))))));
    var var_2 = Struct_3(Struct_1(~u_input.b / u_input.b, -1734f, ~(~(~arg_1))), var_1.b, var_1.a, 0i);
    var var_3 = var_1.e;
    return Struct_1(min(~(~4294967295u), 4294967295u), 406f, ~select(arg_0 * arg_0, vec2<u32>(arg_1.x, 4294967295u), !vec2<bool>(true, var_3.x)) / vec2<u32>(firstTrailingBit(509u), clamp(reverseBits(var_2.c.c.x), ~0u, ~u_input.b)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_3) -> i32 {
    var var_0 = Struct_3(arg_2.a, arg_3.b, arg_2.a, ~u_input.a);
    global0 = array<Struct_2, 2>();
    var_0 = arg_3;
    var var_1 = arg_3;
    let var_2 = -(min(floor(-1000f), arg_0.b) / -1080f);
    return -abs(var_0.d);
}

fn func_1(arg_0: i32) -> vec2<i32> {
    let var_0 = step(-floor(-1116f / (-239f + -592f)), trunc(ceil(-1940f) + (-393f + -1000f)) + -(-937f));
    let var_1 = func_5(func_4(vec2<u32>(0u, u_input.b), ~(~reverseBits(vec2<u32>(50437u, u_input.b))), func_2((var_0 + -450f) - (var_0 + var_0), 1237f, ~(vec3<u32>(0u, u_input.b, u_input.b) + vec3<u32>(u_input.b, u_input.b, u_input.b))), select(floor(vec4<f32>(-640f, -817f, 335f, var_0)), -select(vec4<f32>(var_0, var_0, var_0, var_0), vec4<f32>(-552f, 1195f, var_0, 855f), vec4<bool>(true, false, true, false)), select(false, false, false) & true)), func_4(~abs(min(vec2<u32>(u_input.b, 0u), vec2<u32>(u_input.b, 4294967295u))), countOneBits(vec2<u32>(20235u, 81025u) / vec2<u32>(u_input.b, 1u)) >> (~vec2<u32>(0u, 23213u) << ~vec2<u32>(0u, 27730u)), 1564f, (exp2(vec4<f32>(var_0, 1000f, 498f, 1410f)) + vec4<f32>(var_0, 986f, var_0, var_0)) + step(vec4<f32>(var_0, 1710f, var_0, -1033f), -vec4<f32>(var_0, var_0, var_0, 466f))), global0[min(40113u, ~(0u & firstTrailingBit(u_input.b)))], Struct_3(func_4((vec2<u32>(u_input.b, u_input.b) & vec2<u32>(40803u, u_input.b)) * (vec2<u32>(6264u, 0u) + vec2<u32>(u_input.b, u_input.b)), ~(vec2<u32>(0u, 0u) ^ vec2<u32>(u_input.b, u_input.b)), (610f / 343f) + var_0, -vec4<f32>(-563f, -1306f, -1048f, -1123f) * round(vec4<f32>(var_0, -376f, var_0, var_0))), !(!(!vec2<bool>(false, false))), Struct_1(0u, -var_0, abs(vec2<u32>(1u, u_input.b))), arg_0));
    global0 = array<Struct_2, 2>();
    let var_2 = clamp(vec4<i32>(-47386i, (u_input.a >> 4294967295u) * -var_1, 32940i, ~(i32(-2147483648))), vec4<i32>(~(~u_input.a), u_input.a, -34597i, ~(0i | u_input.a)), -(~vec4<i32>(var_1, arg_0, var_1, i32(-2147483648)) | abs(vec4<i32>(var_1, -10455i, u_input.a, u_input.a)))) >> ~(((vec4<u32>(u_input.b, 34261u, 0u, 67718u) | vec4<u32>(16142u, u_input.b, u_input.b, 4294967295u)) ^ (vec4<u32>(u_input.b, u_input.b, 4294967295u, 1u) << vec4<u32>(u_input.b, u_input.b, 3731u, 1u))) << ~(vec4<u32>(u_input.b, 0u, u_input.b, u_input.b) + vec4<u32>(0u, 0u, u_input.b, u_input.b)));
    global0 = array<Struct_2, 2>();
    return min((var_2.wx * clamp(vec2<i32>(-1i, -1i), vec2<i32>(var_1, 2183i), var_2.wy)) + (~var_2.yx << (vec2<u32>(u_input.b, u_input.b) << vec2<u32>(u_input.b, 1u))), (select(var_2.yw, vec2<i32>(u_input.a, -1389i), true) / var_2.zy) + var_2.wx) << ~vec2<u32>(1u, u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(u_input.a, dot(abs(vec2<i32>(u_input.a, u_input.a) | select(vec2<i32>(u_input.a, -2143i), vec2<i32>(u_input.a, u_input.a), true)), func_1(i32(-2147483648))));
    var_0 = reverseBits(-vec2<i32>(max(u_input.a | 48542i, 60956i), 1i));
    global0 = array<Struct_2, 2>();
    var var_1 = Struct_3(func_4(~(countOneBits(vec2<u32>(u_input.b, 49824u)) / (vec2<u32>(u_input.b, u_input.b) + vec2<u32>(42183u, 1u))), abs(~(~vec2<u32>(u_input.b, 1u))), round(-1000f) / min(select(-1000f, -565f, false), 200f), min(exp2(vec4<f32>(-594f, -1166f, -414f, 1408f)), vec4<f32>(-521f, -1166f, 976f, 1147f)) / vec4<f32>(abs(626f), floor(-1317f), sign(394f), trunc(-687f))), vec2<bool>(any(select(!vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, true), true))), -(i32(-2147483648) - var_0.x) != ((var_0.x - var_0.x) ^ var_0.x)), Struct_1(u_input.b, 718f, (~vec2<u32>(u_input.b, u_input.b) << ~vec2<u32>(4294967295u, 31671u)) & ~vec2<u32>(22723u, 69009u)), ~var_0.x);
    var_1 = Struct_3(func_4(~(~var_1.a.c + ~vec2<u32>(51082u, 0u)), min(vec2<u32>(~u_input.b, var_1.c.a), ~reverseBits(var_1.c.c)), 738f, vec4<f32>((1267f * 1000f) - exp2(498f), var_1.a.b, 2122f, 1371f)), vec2<bool>(var_1.b.x, any(vec3<bool>(false, true, any(vec2<bool>(false, var_1.b.x))))), func_4(vec2<u32>(4294967295u - dot(vec3<u32>(49461u, u_input.b, 38065u), vec3<u32>(0u, 21153u, u_input.b)), ~(~0u)), vec2<u32>(~(38834u >> var_1.a.c.x), min(firstLeadingBit(u_input.b), 26267u >> var_1.a.a)), -trunc(-597f) / -(var_1.a.b * var_1.c.b), vec4<f32>(-338f, floor(-1307f - -1176f), step(var_1.a.b, var_1.c.b), (var_1.a.b + var_1.a.b) * var_1.a.b)), 0i);
    global0 = array<Struct_2, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<f32>(floor(138f), 1405f, -min(var_1.c.b, var_1.a.b)), 3304i, vec2<f32>(var_1.c.b, 2230f - (var_1.a.b / var_1.a.b)));
}

