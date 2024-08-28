// {"0:0":[92,250,124,225,85,26,76,14,198,186,123,113,88,196,183,162,242,40,173,112,126,131,93,140,99,145,201,203,36,82,137,207,25,10,184,77,165,205,122,254,64,9,233,56,21,5,251,3]}
// Seed: 9268420094193309971

struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(10905u, 86466u);

var<private> global1: vec3<i32> = vec3<i32>(1i, -15724i, 26993i);

fn func_3() -> vec2<f32> {
    let var_0 = ~(~clamp(~86084u, global0.x, u_input.b)) << dot(~vec3<u32>(0u, global0.x, u_input.d) & u_input.c.zww, vec3<u32>(clamp(u_input.b, global0.x, 9205u) ^ 4294967295u, 35583u, dot(u_input.c.xyz, vec3<u32>(u_input.d, u_input.d, 1u)) + ~4294967295u));
    global1 = vec3<i32>(-global1.x, global1.x, u_input.a ^ (reverseBits(~(-5658i)) ^ global1.x));
    let var_1 = Struct_1(!select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), !false), select(!vec3<bool>(true, false, true), !vec3<bool>(false, false, false), !vec3<bool>(true, false, true)), select(vec3<bool>(false, true, true), !vec3<bool>(false, false, false), !vec3<bool>(false, true, true))), -26009i, select(~vec2<i32>(-31356i, u_input.a) | global1.zx, reverseBits(vec2<i32>(2147483647i, 1i) % vec2<i32>(-1i, 647i)), 34517u <= u_input.c.x) & -global1.yx, ~(global0.x & 32067u), ~vec4<u32>(1u, dot(max(vec3<u32>(54338u, 0u, 0u), vec3<u32>(11399u, var_0, global0.x)), u_input.c.yzx), global0.x, 24473u));
    global0 = vec2<u32>(0u, 64966u);
    global0 = vec2<u32>(0u, min(var_0, var_1.e.x));
    return vec2<f32>(step(-948f, trunc(-234f - 999f)) * -536f, sign(exp2(round(-(-2943f)))));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: vec4<f32>) -> f32 {
    var var_0 = ~(((u_input.d | ~4294967295u) / ~u_input.c.x) / ~u_input.b);
    var var_1 = Struct_2(vec4<f32>(-ceil(arg_3.x), arg_0.x, trunc(-234f), -(-(-354f))), func_3() * -min(arg_0.xy, arg_3.yz), select(vec4<bool>(!true & !false, false, false, arg_2.x), !vec4<bool>(false, !arg_1.a.x, true, !arg_2.x), all(!(!arg_1.a))));
    let var_2 = vec2<f32>(-(-(-arg_3.x)), 465f) * ((ceil(arg_3.zw) + var_1.a.wy) + -arg_3.zw);
    let var_3 = global1.x;
    var var_4 = Struct_1(select(select(arg_2, select(select(arg_2, arg_2, vec3<bool>(false, true, true)), var_1.c.xwz, any(vec2<bool>(true, true))), global0.x == ~51936u), select(arg_2, select(select(vec3<bool>(arg_1.a.x, false, false), vec3<bool>(arg_1.a.x, true, arg_1.a.x), vec3<bool>(arg_2.x, var_1.c.x, arg_1.a.x)), var_1.c.zyw, select(var_1.c.yxx, vec3<bool>(false, true, true), arg_1.a.x)), vec3<bool>(arg_2.x, true, 1i > u_input.a)), arg_2), global1.x, vec2<i32>(~(reverseBits(i32(-2147483648)) / abs(u_input.a)), u_input.a ^ (global1.x - -1i)), ~(~u_input.b), ~(~u_input.c));
    return -(trunc(-var_2.x) + step(-trunc(229f), max(arg_3.x, -1067f)));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_2) -> Struct_2 {
    let var_0 = abs(dot(select(firstTrailingBit(vec2<i32>(global1.x, -1i)), select(arg_0.yz, vec2<i32>(arg_0.x, global1.x), !false), arg_1.c.x), arg_0.xx));
    return arg_2;
}

fn func_1(arg_0: Struct_3) -> Struct_2 {
    global1 = ~vec3<i32>(u_input.a, ~global1.x, u_input.a) << u_input.c.wzw;
    var var_0 = func_4(~firstTrailingBit(-(-vec3<i32>(-24071i, 8597i, -1i))), Struct_2(-(-vec4<f32>(330f, -589f, 1032f, -691f)) + (vec4<f32>(188f, 1021f, -1735f, 1179f) / -vec4<f32>(-879f, -1282f, 580f, -279f)), vec2<f32>(-(270f - 172f), func_2(-vec4<f32>(1000f, -1362f, -1053f, 349f), Struct_3(arg_0.a), !vec3<bool>(false, true, arg_0.a.x), abs(vec4<f32>(1784f, -1993f, -1935f, -1581f)))), select(!vec4<bool>(false, arg_0.a.x, true, arg_0.a.x), select(arg_0.a, vec4<bool>(false, true, true, arg_0.a.x), arg_0.a), arg_0.a.x)), Struct_2(trunc(-vec4<f32>(1000f, -686f, 978f, 769f) / (vec4<f32>(-165f, -235f, 536f, 138f) + vec4<f32>(-861f, -1000f, -322f, -475f))), vec2<f32>(1432f, -1063f + (1990f * 1369f)), !vec4<bool>(false, arg_0.a.x || arg_0.a.x, arg_0.a.x, any(arg_0.a.yxw))));
    let var_1 = Struct_3(arg_0.a);
    return Struct_2(floor(-ceil(-var_0.a)), -(var_0.b * -func_3()), vec4<bool>(true, global0.x != ((4294967295u / 20356u) * (50625u & global0.x)), false || var_1.a.x, (var_0.c.x && func_4(vec3<i32>(global1.x, u_input.a, 13602i), Struct_2(vec4<f32>(-1578f, -412f, 229f, var_0.b.x), var_0.b, arg_0.a), Struct_2(vec4<f32>(var_0.b.x, 310f, var_0.b.x, -980f), var_0.a.zx, vec4<bool>(true, var_0.c.x, true, var_1.a.x))).c.x) & var_1.a.x));
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: Struct_2) -> vec4<u32> {
    global0 = ~(~u_input.c.zy);
    return vec4<u32>(u_input.c.x, dot(min(clamp(vec3<u32>(5867u, global0.x, global0.x), vec3<u32>(global0.x, global0.x, 1u), u_input.c.ywx), u_input.c.xwx) ^ ~countOneBits(vec3<u32>(1u, u_input.b, u_input.b)), vec3<u32>(firstLeadingBit(1u), abs(0u), 1u - dot(u_input.c.wx, vec2<u32>(74587u, 6543u)))), global0.x + reverseBits(~(~110310u)), (~global0.x + dot(clamp(vec3<u32>(global0.x, u_input.d, 4294967295u), u_input.c.zxx, vec3<u32>(1u, 4294967295u, 8884u)), ~vec3<u32>(global0.x, 8656u, 75088u))) % (countOneBits(1u | 9159u) % u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = (vec3<i32>(dot(-vec2<i32>(u_input.a, global1.x), global1.zx), dot(firstLeadingBit(vec3<i32>(u_input.a, global1.x, u_input.a)), vec3<i32>(u_input.a, i32(-2147483648), 2147483647i) * vec3<i32>(7943i, u_input.a, -79148i)), global1.x) << (u_input.c.wxw * vec3<u32>(abs(u_input.d), global0.x * 1u, ~35380u))) + -(vec3<i32>(-2147483647i, -1i, clamp(2147483647i, i32(-2147483648), 18050i)) | countOneBits(vec3<i32>(global1.x, 6196i, -27006i) & vec3<i32>(-58190i, u_input.a, 1i)));
    var var_0 = Struct_1(!select(select(!vec3<bool>(false, true, true), vec3<bool>(true, true, true), !true), !select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), !vec3<bool>(false, true, true)), -20488i, global1.yz, 1u, func_5(Struct_3(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), true)), step(abs(-118f * 269f), min(ceil(2083f), -645f)), func_1(Struct_3(!vec4<bool>(false, false, true, true)))));
    var var_1 = ~0u;
    let x = u_input.a;
    s_output = StorageBuffer((vec3<i32>(~var_0.c.x, select(var_0.c.x, global1.x, var_0.a.x), ~u_input.a) + max(countOneBits(vec3<i32>(var_0.c.x, 16174i, 1i)), vec3<i32>(2147483647i, -58723i, -1i) / vec3<i32>(-14774i, global1.x, global1.x))) - firstLeadingBit((vec3<i32>(-5434i, -46736i, -55156i) << var_0.e.xyx) % ~vec3<i32>(22776i, global1.x, global1.x)), ~(~(25127u % (38849u | 4294967295u))), ~(~(~(~1u))), vec2<f32>(508f, -2105f / func_4(clamp(vec3<i32>(global1.x, -18339i, -24936i), vec3<i32>(global1.x, var_0.c.x, u_input.a), vec3<i32>(u_input.a, var_0.c.x, -10996i)), func_1(Struct_3(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, true))), func_4(vec3<i32>(43184i, -35187i, var_0.c.x), Struct_2(vec4<f32>(-810f, 431f, -1178f, -1608f), vec2<f32>(-488f, -1347f), vec4<bool>(true, true, var_0.a.x, var_0.a.x)), Struct_2(vec4<f32>(1793f, -550f, -2013f, 1137f), vec2<f32>(-1509f, -612f), vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x)))).a.x));
}

