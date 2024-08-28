// {"0:0":[73,1,30,158,111,7,101,55,43,136,20,136,27,152,97,143]}
// Seed: 11206253009027483186

struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 1u);

var<private> global1: array<u32, 22>;

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 14>;

var<private> global4: vec3<bool>;

fn func_3(arg_0: bool, arg_1: bool) -> vec2<u32> {
    global3 = array<Struct_1, 14>();
    let var_0 = Struct_1(global2.a, sign(-(-2228f) - min(-global2.b, min(global2.b, -1000f))));
    var var_1 = countOneBits(vec3<u32>(global0.x, select(0u, 14487u * (global1[global0.x] >> global0.x), any(select(vec3<bool>(arg_1, arg_1, global4.x), vec3<bool>(true, true, true), vec3<bool>(global4.x, arg_1, global4.x)))), global1[72423u] & 28243u));
    let var_2 = global3[dot(vec4<u32>(global1[1u], (global1[108626u] | 0u) & ~8996u, 27853u, abs(~global1[4294967295u])) * clamp(~vec4<u32>(global0.x, global1[global1[global0.x]], 20348u, 4294967295u), vec4<u32>(var_1.x, dot(vec3<u32>(global1[global1[var_1.x]], global1[var_1.x], var_1.x), vec3<u32>(4294967295u, var_1.x, 0u)), ~1u, ~var_1.x), countOneBits(~vec4<u32>(var_1.x, global1[global0.x], 51311u, 0u))), vec4<u32>(21370u, ~4294967295u, reverseBits(var_1.x % 4294967295u) / countOneBits(38757u), ~(var_1.x >> ~global0.x)))];
    global4 = vec3<bool>(arg_1, all(!vec2<bool>(global4.x, 16938u >= 0u)), false);
    return ~(vec2<u32>(4294967295u >> (4294967295u % 0u), global0.x) * abs(firstTrailingBit(select(var_1.yy, vec2<u32>(4294967295u, global0.x), vec2<bool>(true, arg_1)))));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = arg_1;
    let var_1 = !(!arg_2.x) && !true;
    global4 = !(!vec3<bool>(false, !var_1, var_1));
    global0 = abs(vec2<u32>(~global0.x, global0.x) & clamp(vec2<u32>(global0.x - 4294967295u, 1u), ~(~vec2<u32>(global1[global1[1u]], 104527u)), ~(vec2<u32>(1u, 33587u) & vec2<u32>(0u, 14067u))));
    var var_2 = abs((abs(vec2<u32>(global0.x, global0.x)) & func_3(global4.x, global4.x)) & (vec2<u32>(global1[global1[global0.x]], global0.x) >> (vec2<u32>(global0.x, global1[88012u]) >> vec2<u32>(global1[global1[global0.x]], 76834u)))) + ((~(~vec2<u32>(64591u, global1[global1[48300u]])) + abs(firstTrailingBit(vec2<u32>(0u, 25941u)))) & ((vec2<u32>(111325u, global0.x) | firstLeadingBit(vec2<u32>(global0.x, global1[91312u]))) * (abs(vec2<u32>(global0.x, global0.x)) >> (vec2<u32>(15861u, global0.x) / vec2<u32>(0u, 12251u)))));
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> u32 {
    return dot(vec2<u32>(global0.x, global1[0u]), ~(~(vec2<u32>(30188u, global0.x) << vec2<u32>(global0.x, global1[global0.x]))) - abs(~reverseBits(vec2<u32>(arg_1, 0u))));
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> u32 {
    global4 = select(select(select(vec3<bool>(false != global4.x, global4.x, global2.b <= global2.b), !(!vec3<bool>(global4.x, true, global4.x)), vec3<bool>(true, true, !global4.x)), !vec3<bool>(false, global4.x, true), select(select(select(vec3<bool>(true, global4.x, global4.x), vec3<bool>(global4.x, false, true), global4.x), !vec3<bool>(global4.x, true, global4.x), select(vec3<bool>(global4.x, global4.x, global4.x), vec3<bool>(global4.x, true, global4.x), vec3<bool>(global4.x, global4.x, true))), !(!vec3<bool>(global4.x, global4.x, true)), global4.x)), select(vec3<bool>(!false == !true, true, func_2(global2.b, arg_0, vec3<bool>(global4.x, false, false)).b <= round(arg_2.b)), vec3<bool>(false, global1[global0.x] == (global1[61825u] << 39819u), !global4.x), global4.x), arg_2.b <= -global2.b);
    let var_0 = select(~(min(vec3<u32>(1u, 76345u, global1[global1[global0.x]]), vec3<u32>(28913u, 4294967295u, 1u)) | vec3<u32>(4294967295u, 1u, 15202u)), ~(vec3<u32>(51217u, global1[global1[44883u]], 458u) | vec3<u32>(0u, global1[40808u], 1u)), global4.x) - countOneBits(vec3<u32>(select(global1[global1[global0.x]], global1[global0.x], global4.x) % ~0u, func_3(!global4.x, all(vec4<bool>(global4.x, global4.x, global4.x, true))).x, global1[select(0u, 18548u, true)]));
    var var_1 = func_2(((-643f - -arg_0.b) * arg_0.b) / exp2(-(-1000f / -272f)), func_2(max(exp2(exp2(-421f)), sign(global2.b - arg_2.b)), arg_2, !vec3<bool>(!false, global4.x, global2.b == -1000f)), vec3<bool>(true, global4.x, !false));
    var var_2 = arg_2;
    let var_3 = arg_2.b / exp2(arg_2.b / select(-938f, exp2(arg_2.b), all(vec4<bool>(global4.x, true, true, false))));
    return 1u & firstLeadingBit(~global1[73565u - global1[24307u]] / global1[~firstLeadingBit(global0.x)]);
}

fn func_1(arg_0: vec3<f32>, arg_1: bool, arg_2: bool, arg_3: vec2<f32>) -> f32 {
    global0 = vec2<u32>(func_5(Struct_1(global2.a >> vec3<u32>(global0.x, global1[global0.x], global0.x), 450f), global2.a.x, global3[func_4(func_2(1189f, Struct_1(global2.a, 1234f), vec3<bool>(false, arg_1, global4.x)), 47429u, func_2(-248f, global3[global0.x], vec3<bool>(arg_2, true, true)))]), countOneBits(~14876u - abs(global0.x))) / firstLeadingBit(func_3(any(select(vec3<bool>(true, false, global4.x), vec3<bool>(global4.x, false, global4.x), vec3<bool>(arg_2, global4.x, arg_1))), !any(vec4<bool>(arg_1, arg_2, false, false))));
    return 970f;
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: f32) -> bool {
    let var_0 = arg_1;
    let var_1 = abs(~(dot(vec4<u32>(83585u, 4294967295u, global1[global0.x], 49917u), vec4<u32>(global1[40559u], 771u, global1[global0.x], 120763u)) << 138173u));
    let var_2 = global3[16139u * (var_1 * ~4294967295u)];
    let var_3 = arg_1.a.x;
    var var_4 = abs(~firstTrailingBit(select(vec4<u32>(42879u, global1[global0.x], global0.x, 4294967295u), vec4<u32>(var_1, 9449u, global0.x, 51876u), vec4<bool>(false, global4.x, false, global4.x)))) % vec4<u32>(1u, ~(~45040u - 0u), 0u | ~37131u, ~global0.x % var_1);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global3[global1[38191u % ~4294967295u]];
    let var_0 = global3[global1[14368u]];
    let var_1 = ~dot(vec3<i32>(-79296i, var_0.a.x, ~(i32(-2147483648) / global2.a.x)), -(vec3<i32>(-1i, 1i, 5868i) | -vec3<i32>(i32(-2147483648), var_0.a.x, -1i)));
    var var_2 = vec2<f32>(100f, -(var_0.b + (step(397f, var_0.b) / select(var_0.b, var_0.b, true))));
