// {"0:0":[27,213,77,232,20,38,193,90,126,134,153,192,219,207,133,126]}
// Seed: 4825354882193228123

struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: i32,
}

struct Struct_3 {
    a: f32,
    b: i32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 19>;

var<private> global1: array<vec3<u32>, 28> = array<vec3<u32>, 28>(vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(4294967295u, 32537u, 11450u), vec3<u32>(0u, 769u, 1021u), vec3<u32>(45089u, 0u, 8427u), vec3<u32>(0u, 12250u, 14807u), vec3<u32>(63994u, 45169u, 118811u), vec3<u32>(4294967295u, 102521u, 12508u), vec3<u32>(10781u, 32731u, 39679u), vec3<u32>(78465u, 0u, 1u), vec3<u32>(1u, 54825u, 0u), vec3<u32>(6704u, 4294967295u, 1122u), vec3<u32>(33157u, 0u, 10925u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(22032u, 4294967295u, 66277u), vec3<u32>(21217u, 0u, 1u), vec3<u32>(4294967295u, 76175u, 1u), vec3<u32>(23101u, 7722u, 19622u), vec3<u32>(0u, 19269u, 97639u), vec3<u32>(4294967295u, 62255u, 20395u), vec3<u32>(103635u, 27090u, 16781u), vec3<u32>(0u, 62366u, 4294967295u), vec3<u32>(49231u, 4294967295u, 61809u), vec3<u32>(19063u, 4294967295u, 51277u), vec3<u32>(106160u, 91290u, 4294967295u), vec3<u32>(0u, 1u, 0u), vec3<u32>(49787u, 1u, 13623u), vec3<u32>(28849u, 0u, 73974u), vec3<u32>(57050u, 1u, 0u));

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>) -> i32 {
    global0 = array<vec3<i32>, 19>();
    let var_0 = Struct_4(abs(vec4<i32>(clamp(arg_0.c.x, 0i, -(-1i)), dot(select(vec4<i32>(-1i, 2147483647i, -1i, i32(-2147483648)), vec4<i32>(16548i, 2147483647i, 45737i, 72520i), arg_0.a), reverseBits(vec4<i32>(u_input.a.x, -16373i, u_input.a.x, arg_0.c.x))), select(-(i32(-2147483648)), u_input.a.x - 0i, arg_0.a), 0i)), ~25805u, floor(((449f + 1061f) - -arg_1.x) / arg_0.b.x));
    global0 = array<vec3<i32>, 19>();
    global1 = array<vec3<u32>, 28>();
    var var_1 = select(!(!vec3<bool>(arg_0.a, true, all(vec3<bool>(true, arg_0.a, false)))), !vec3<bool>(arg_0.a, any(vec4<bool>(false, true, true, true)), arg_0.a), !arg_0.a);
    return var_0.a.x;
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: u32, arg_3: vec4<u32>) -> vec3<i32> {
    var var_0 = vec3<bool>(!((any(vec3<bool>(arg_0.a, true, arg_0.a)) == (true || false)) && !(4699i < arg_1)), !true, trunc(step(ceil(622f), floor(1018f))) != arg_0.b.x);
    let var_1 = false;
    var var_2 = Struct_1(var_1, arg_0.b, vec3<i32>(-min(i32(-2147483648) | 20267i, clamp(-26945i, 1i, 54507i)), min(203i, 1i), 4159i));
    var_2 = arg_0;
    var var_3 = abs(u_input.a.xy);
    return -(-vec3<i32>(func_3(arg_0, arg_0.b.zx), -var_3.x, -1i) | select(~vec3<i32>(arg_0.c.x, var_2.c.x, i32(-2147483648)), vec3<i32>(0i + 2147483647i, 1i, u_input.a.x), var_1));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: vec2<i32>, arg_3: f32) -> Struct_3 {
    let var_0 = (-vec3<f32>(-1232f, 609f - -570f, exp2(arg_3)) * (vec3<f32>(-arg_3, sign(arg_3), 1221f) * abs(round(vec3<f32>(147f, arg_3, -1385f))))) - -vec3<f32>(-ceil(arg_3), -629f * 1044f, -(-1621f));
    var var_1 = Struct_1(!false, exp2(-var_0), ((~vec3<i32>(i32(-2147483648), arg_0.x, -1i) * func_2(Struct_1(false, vec3<f32>(var_0.x, var_0.x, -168f), vec3<i32>(u_input.a.x, arg_2.x, 29645i)), u_input.a.x, 4294967295u, vec4<u32>(arg_1.x, 4294967295u, 1u, 10904u))) * vec3<i32>(arg_0.x, arg_0.x, -18568i)) * vec3<i32>(func_3(Struct_1(true, vec3<f32>(arg_3, -729f, -703f), vec3<i32>(-47602i, arg_0.x, 2147483647i)), vec2<f32>(-925f, var_0.x)) << (arg_1.x ^ arg_1.x), 1i, 0i));
    let var_2 = ~arg_1;
    var var_3 = Struct_3(360f, countOneBits(~(var_1.c.x + select(i32(-2147483648), 45540i, false))));
    var var_4 = -(trunc(step(vec4<f32>(arg_3, var_1.b.x, var_0.x, 162f), vec4<f32>(-1000f, var_0.x, var_1.b.x, var_1.b.x)) - vec4<f32>(-406f, -811f, arg_3, -1046f)) * ((-vec4<f32>(1144f, arg_3, 933f, var_1.b.x) * -vec4<f32>(956f, arg_3, 1891f, var_1.b.x)) + -(-vec4<f32>(arg_3, 396f, var_1.b.x, var_0.x))));
    return Struct_3(abs(334f), 1i & var_1.c.x);
}

fn func_5(arg_0: Struct_3) -> f32 {
    let var_0 = -func_4(~(-(~vec3<i32>(u_input.a.x, u_input.a.x, 27972i))), vec2<u32>(81442u, ~1639u) >> ~min(vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 4294967295u)), reverseBits(u_input.a.zz), (-arg_0.a - 2696f) * -exp2(1063f)).a;
    let var_1 = ~(0u / 19897u) & dot(~vec4<u32>(1u, ~0u, ~0u, 12151u % 1u), ~(vec4<u32>(4294967295u, 4294967295u, 0u, 0u) >> (vec4<u32>(71809u, 34387u, 30166u, 4294967295u) << vec4<u32>(7400u, 0u, 3924u, 4294967295u))));
    let var_2 = clamp(~vec2<u32>((var_1 % var_1) ^ abs(var_1), 0u), vec2<u32>(var_1 ^ ~abs(var_1), 25489u), vec2<u32>(~(~(37671u << 4294967295u)), ~var_1));
    var var_3 = Struct_1(false, vec3<f32>(223f, -(-2029f), abs(var_0 * arg_0.a) - step(var_0, func_4(vec3<i32>(u_input.a.x, arg_0.b, arg_0.b), var_2, u_input.a.xz, arg_0.a).a)), -func_2(Struct_1(51116i <= -20080i, select(vec3<f32>(var_0, -341f, -1563f), vec3<f32>(arg_0.a, 730f, var_0), true), ~u_input.a), u_input.a.x, countOneBits(73547u), ~select(vec4<u32>(48244u, var_1, var_1, var_2.x), vec4<u32>(4294967295u, 38548u, var_2.x, 0u), vec4<bool>(false, false, false, true))));
    global1 = array<vec3<u32>, 28>();
    return -min(-406f, -(-669f * -var_0));
}

fn func_1(arg_0: i32) -> i32 {
    var var_0 = ~(~(vec2<u32>(23822u, ~4294967295u) + vec2<u32>(~0u, 4294967295u)));
    global1 = array<vec3<u32>, 28>();
    var var_1 = (-min(-356f - -1000f, floor(377f)) + (-(-2124f) - ((-1000f - -1639f) * max(1591f, 1449f)))) - select(-(-1132f), trunc(exp2(1000f - -1021f)), !(-988f > trunc(-1234f)));
    var_1 = func_5(func_4(func_2(Struct_1(false, vec3<f32>(-726f, 205f, 206f), vec3<i32>(arg_0, arg_0, arg_0)), max(7688i, arg_0), 4294967295u, firstLeadingBit(vec4<u32>(4294967295u, var_0.x, var_0.x, 33727u))), vec2<u32>(var_0.x % 24005u, var_0.x), vec2<i32>(-11475i, arg_0), 459f)) - -(-783f);
    var_0 = vec2<u32>(((var_0.x & 20674u) & var_0.x) * abs(var_0.x), var_0.x) - vec2<u32>(0u % 0u, 27939u);
    return func_2(Struct_1(false, select((vec3<f32>(416f, -1000f, -811f) / vec3<f32>(1178f, -1000f, 982f)) + (vec3<f32>(459f, 2174f, 1082f) + vec3<f32>(-527f, 1659f, 1000f)), -(-vec3<f32>(569f, 640f, 1000f)), !true == !true), global0[~1u]), -1i ^ firstTrailingBit(-(13595i & 6455i)), ~dot(~abs(vec2<u32>(var_0.x, var_0.x)), ~(~vec2<u32>(var_0.x, var_0.x))), vec4<u32>(~(~var_0.x + (var_0.x << var_0.x)), (4294967295u ^ countOneBits(var_0.x)) + abs(var_0.x), ~(var_0.x >> 1u) & 4294967295u, ~(42580u * var_0.x) / (var_0.x % (var_0.x + 30440u)))).x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>((2540f - -(-979f)) + -(-290f / -594f), 1616f, (-433f + (638f - -2128f)) * -327f, -1255f) + -abs(vec4<f32>(-560f, 347f / -1205f, 1000f, 1229f));
    global0 = array<vec3<i32>, 19>();
    let var_1 = func_1(5070i);
    var_0 = exp2(-(-(vec4<f32>(var_0.x, var_0.x, 1377f, 1455f) - vec4<f32>(var_0.x, -1378f, 1043f, -2403f)))) / round(((vec4<f32>(-193f, -312f, var_0.x, -209f) / vec4<f32>(var_0.x, var_0.x, -309f, var_0.x)) / (vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x) / vec4<f32>(var_0.x, -633f, -624f, -554f))) - round(select(vec4<f32>(-122f, -254f, var_0.x, 720f), vec4<f32>(-1466f, -501f, var_0.x, 1000f), vec4<bool>(false, true, true, false))));
    var var_2 = !select(!(!true), select(-14353i < var_1, !false, true && true), any(select(vec2<bool>(false, true), vec2<bool>(false, false), false))) | all(select(select(vec4<bool>(false, true, true, false), !vec4<bool>(true, true, false, true), 1482f != var_0.x), vec4<bool>(false & false, !false, true, true && false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), !vec4<bool>(true, false, true, true))));
    var var_3 = vec4<bool>(var_1 < (-53214i + var_1), any(!vec2<bool>(1961f <= 292f, !false)), !true, 2159f >= exp2(min(var_0.x, -365f)));
    var var_4 = Struct_2(reverseBits(clamp(5514u, 11145u, 1u * 4294967295u)), i32(-2147483648), -var_0.xyy, var_1);
    var var_5 = i32(-2147483648) >> var_4.a;
    var var_6 = -dot(vec3<i32>(var_4.b, var_4.b, var_1), global0[~(~(~var_4.a))]);
    let x = u_input.a;
    s_output = StorageBuffer(-1i, -vec3<f32>(-366f / trunc(-1227f), -176f, var_0.x), dot(-global0[(4294967295u * var_4.a) % 9270u], firstTrailingBit(func_2(Struct_1(var_3.x, vec3<f32>(var_4.c.x, 773f, 1000f), global0[var_4.a]), var_4.d, 19651u, vec4<u32>(1u, var_4.a, 34147u, 0u))) << (~vec3<u32>(var_4.a, 28611u, 0u) % global1[~28431u])), func_5(Struct_3(var_0.x, abs(var_4.d) << 8560u)));
}

