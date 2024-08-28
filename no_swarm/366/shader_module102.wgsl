// {"0:0":[40,255,175,84,117,78,245,24,87,238,28,19,73,175,227,219,195,179,125,193,102,153,230,110,240,155,157,8,179,123,208,1]}
// Seed: 9637553812058191381

struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: u32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 22> = array<u32, 22>(0u, 72145u, 0u, 4294967295u, 1u, 1u, 0u, 1u, 4294967295u, 13389u, 0u, 4294967295u, 28443u, 4294967295u, 0u, 35951u, 2726u, 73676u, 0u, 4294967295u, 4294967295u, 1u);

var<private> global1: vec3<f32> = vec3<f32>(254f, -2770f, 1000f);

var<private> global2: array<bool, 2>;

var<private> global3: array<vec2<u32>, 11>;

var<private> global4: array<vec3<bool>, 22> = array<vec3<bool>, 22>(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false));

fn func_2(arg_0: vec2<f32>) -> u32 {
    global1 = vec3<f32>(arg_0.x + 122f, global1.x, -(-1473f));
    var var_0 = min(-(-(arg_0 - vec2<f32>(global1.x, -248f)) - ((arg_0 * vec2<f32>(arg_0.x, 700f)) / vec2<f32>(global1.x, global1.x))), arg_0);
    global1 = exp2(vec3<f32>(-(-(-var_0.x)), -(-arg_0.x), step(round(-189f) + -(-1741f), var_0.x)));
    global0 = array<u32, 22>();
    let var_1 = Struct_1(vec4<bool>(any(!select(vec2<bool>(true, false), vec2<bool>(true, global2[global0[global0[global0[8723u]]]]), vec2<bool>(false, true))), global2[select(~global0[global0[4294967295u]] + global0[dot(global3[49994u], global3[8406u])], global0[4294967295u] & global0[firstTrailingBit(global0[global0[18125u]])], (arg_0.x * 920f) > var_0.x)], false, all(!global4[global0[dot(vec4<u32>(global0[71278u], 30118u, global0[75439u], global0[22515u]), vec4<u32>(global0[global0[4294967295u]], global0[0u], global0[0u], 0u))]])), !(all(!vec4<bool>(global2[global0[global0[34778u]]], true, false, false)) && global2[1u]), global0[(29633u - global0[~4294967295u]) + global0[global0[global0[dot(vec4<u32>(4294967295u, global0[0u], global0[64727u], global0[global0[1u]]), vec4<u32>(global0[global0[global0[global0[3364u]]]], 1u, global0[724u], 4294967295u) | vec4<u32>(4950u, global0[2814u], global0[global0[global0[58951u]]], 87756u))] % dot(~vec3<u32>(2082u, 4294967295u, global0[global0[1u]]), ~vec3<u32>(global0[0u], 1u, 26183u))]]], global2[56420u], 1321f);
    return countOneBits(~(~(reverseBits(var_1.c) << (var_1.c << var_1.c))));
}

fn func_3(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_4, arg_3: vec2<u32>) -> bool {
    let var_0 = max(dot(vec2<i32>(u_input.c, -(i32(-2147483648))), vec2<i32>(-1i, u_input.d.x)) * (~arg_0.x ^ arg_2.c.x), arg_2.c.x);
    var var_1 = countOneBits(~(~abs(vec4<u32>(0u, 0u, 0u, 4294967295u))));
    global3 = array<vec2<u32>, 11>();
    let var_2 = ~vec4<u32>(52012u, 1u & arg_2.d.x, global0[arg_3.x], arg_2.b.b.c);
    global1 = -arg_2.b.a;
    return false;
}

fn func_1(arg_0: u32, arg_1: vec4<u32>, arg_2: f32) -> Struct_2 {
    global1 = vec3<f32>(trunc(arg_2), global1.x, arg_2);
    let var_0 = global2[~global0[arg_1.x ^ 4294967295u]] && (!global2[select(func_2(global1.zz), firstTrailingBit(arg_0), select(global2[1u], true, global2[arg_0]))] || func_3(~vec4<i32>(-7652i, 2147483647i, 1i, i32(-2147483648)), -arg_2, Struct_4(vec4<f32>(global1.x, 473f, arg_2, -281f) * vec4<f32>(arg_2, 1173f, global1.x, arg_2), Struct_2(vec3<f32>(global1.x, arg_2, arg_2), Struct_1(vec4<bool>(false, false, global2[13544u], global2[arg_0]), global2[global0[4294967295u]], arg_1.x, global2[arg_0], arg_2)), -vec3<i32>(u_input.e, u_input.e, u_input.e), ~arg_1.ww), ~vec2<u32>(16384u, 1u)));
    var var_1 = select(select(vec2<bool>(1u > clamp(124706u, global0[4294967295u], arg_0), true), vec2<bool>(any(global4[firstTrailingBit(0u)]), global2[~global0[~arg_0]]), func_3(firstTrailingBit(vec4<i32>(i32(-2147483648), 31055i, i32(-2147483648), u_input.c)) >> arg_1, floor(464f), Struct_4(vec4<f32>(-2845f, 1745f, arg_2, global1.x), Struct_2(vec3<f32>(global1.x, arg_2, arg_2), Struct_1(vec4<bool>(global2[global0[4294967295u]], false, var_0, var_0), global2[6042u], 0u, false, 828f)), vec3<i32>(1i, u_input.e, -12481i) >> vec3<u32>(global0[arg_0], 20531u, arg_1.x), global3[~arg_0]), ~(arg_1.zy & vec2<u32>(arg_0, arg_1.x)))), vec2<bool>(false, global2[8565u]), var_0);
    global4 = array<vec3<bool>, 22>();
    global2 = array<bool, 2>();
    return Struct_2(vec3<f32>(arg_2, global1.x, max(-(-1506f * global1.x), -2262f)), Struct_1(vec4<bool>(false, trunc(-178f) > -(-180f), true, var_1.x), all(vec4<bool>(var_1.x || var_1.x, !false, var_1.x, var_0 & false)), 35426u, func_3(firstLeadingBit(vec4<i32>(u_input.a, 0i, 1860i, u_input.c)), arg_2, Struct_4(-vec4<f32>(1000f, global1.x, global1.x, -1589f), Struct_2(vec3<f32>(1332f, global1.x, arg_2), Struct_1(vec4<bool>(true, true, global2[914u], global2[arg_1.x]), global2[23047u], 4294967295u, false, 442f)), vec3<i32>(u_input.b, u_input.d.x, u_input.c), global3[firstTrailingBit(arg_0)]), ~global3[arg_0] << clamp(vec2<u32>(4294967295u, global0[4294967295u]), vec2<u32>(arg_0, 16605u), vec2<u32>(arg_1.x, 75240u))), arg_2));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: f32, arg_3: Struct_3) -> Struct_2 {
    global1 = arg_0.a.xyz;
    global3 = array<vec2<u32>, 11>();
    var var_0 = select(func_1(dot(~vec2<u32>(global0[1u], global0[arg_0.d.x]) % vec2<u32>(0u, global0[0u]), vec2<u32>(29717u & 1u, 1u - global0[arg_0.d.x])), vec4<u32>(~arg_0.b.b.c, global0[arg_0.d.x], 54012u, 1u) >> ((vec4<u32>(global0[global0[arg_0.d.x]], 15823u, 4294967295u, 1u) - vec4<u32>(5353u, global0[arg_0.b.b.c], 0u, 50702u)) / ~vec4<u32>(arg_0.b.b.c, global0[global0[arg_0.d.x]], global0[30352u], global0[global0[global0[arg_0.b.b.c]]])), 1212f).b.a.zxy, vec3<bool>(abs(step(arg_0.a.x, global1.x)) == -260f, false, !global2[arg_0.d.x]), !(!(func_1(global0[0u], vec4<u32>(25884u, 0u, 1u, global0[global0[34778u]]), -1175f).b.b | global2[max(0u, arg_0.d.x)])));
    let var_1 = Struct_1(vec4<bool>(false & !true, arg_0.b.b.b, any(!vec3<bool>(true, arg_0.b.b.b, false)), !((1u >> arg_0.d.x) == ~1u)), true, global0[37337u] % 26839u, global0[~(~arg_0.b.b.c)] < ~7832u, arg_1.x);
    var var_2 = var_1;
    return Struct_2(-vec3<f32>(-var_2.e - -1504f, exp2(-global1.x), var_1.e), Struct_1(vec4<bool>(global2[~global0[var_2.c] + 4294967295u], func_3(vec4<i32>(47887i, arg_3.a, u_input.c, 39757i) & vec4<i32>(arg_3.a, -19398i, i32(-2147483648), 28761i), arg_2 + -1135f, arg_0, ~global3[51572u]), (-1497i == arg_3.a) == var_1.b, (u_input.a / -1i) != (1i - -28396i)), !var_1.b, var_2.c, 456f > (-arg_2 * -(-137f)), global1.x));
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: Struct_4, arg_3: bool) -> Struct_2 {
    global3 = array<vec2<u32>, 11>();
    let var_0 = select(!vec3<bool>(arg_0, ~15923u < firstLeadingBit(9426u), arg_0), vec3<bool>(false, true, ((1741i < u_input.a) & !arg_1.b.a.x) & !any(arg_1.b.a.xyx)), select(select(arg_2.b.b.a.xzw, !arg_2.b.b.a.xwx, vec3<bool>(all(arg_1.b.a), arg_1.b.b, !arg_2.b.b.d)), func_4(Struct_4(-vec4<f32>(-247f, 358f, arg_1.a.x, -1000f), Struct_2(vec3<f32>(arg_1.b.e, 1000f, global1.x), arg_1.b), vec3<i32>(arg_2.c.x, arg_2.c.x, u_input.e) & vec3<i32>(19430i, 17596i, i32(-2147483648)), ~vec2<u32>(arg_2.b.b.c, 1u)), vec3<f32>(arg_1.b.e, -global1.x, 1000f), global1.x + -845f, Struct_3(0i ^ u_input.a, -141f / -1036f)).b.a.yzx, !(true & global2[14956u])));
    var var_1 = !(!(u_input.e > 2650i));
    global2 = array<bool, 2>();
    global4 = array<vec3<bool>, 22>();
    return arg_1;
}

fn func_6(arg_0: i32, arg_1: Struct_2) -> Struct_2 {
    global0 = array<u32, 22>();
    global4 = array<vec3<bool>, 22>();
    global0 = array<u32, 22>();
    var var_0 = Struct_4(-(-vec4<f32>(global1.x, arg_1.b.e, 649f, 654f) + vec4<f32>(-1728f, global1.x, -1556f, global1.x)) * step(vec4<f32>(-arg_1.b.e, max(arg_1.a.x, 2480f), arg_1.b.e, 570f + -1472f), -(-vec4<f32>(global1.x, 116f, 1059f, global1.x))), func_5(func_3(countOneBits(countOneBits(vec4<i32>(-4789i, u_input.b, arg_0, arg_0))), 123f, Struct_4(abs(vec4<f32>(-309f, global1.x, arg_1.b.e, global1.x)), func_5(true, arg_1, Struct_4(vec4<f32>(741f, -434f, arg_1.a.x, 1304f), Struct_2(arg_1.a, arg_1.b), vec3<i32>(arg_0, 43749i, u_input.a), global3[arg_1.b.c]), arg_1.b.b), vec3<i32>(2147483647i, 0i, arg_0), ~global3[1u]), select(global3[57366u] - global3[9899u], vec2<u32>(global0[61961u], global0[47620u]) * vec2<u32>(4294967295u, global0[global0[45110u]]), false == global2[global0[0u]])), arg_1, Struct_4(-sign(vec4<f32>(global1.x, global1.x, global1.x, 731f)), arg_1, select(u_input.d, vec3<i32>(u_input.a, arg_0, arg_0), !global4[global0[arg_1.b.c]]), global3[~(~0u)]), global2[1u & (arg_1.b.c ^ 0u)]), reverseBits(max(max(~vec3<i32>(arg_0, arg_0, arg_0), u_input.d), abs(u_input.d))), vec2<u32>(51894u, abs(1u ^ ~4294967295u)));
    var var_1 = -firstLeadingBit(~vec2<i32>(arg_0, 0i));
    return Struct_2(abs(vec3<f32>(exp2(-1553f), func_4(Struct_4(vec4<f32>(-794f, arg_1.b.e, arg_1.b.e, -2432f), var_0.b, u_input.d, vec2<u32>(arg_1.b.c, 10333u)), vec3<f32>(global1.x, 1725f, -1425f), arg_1.a.x, Struct_3(1i, -456f)).b.e, func_5(false, Struct_2(var_0.b.a, var_0.b.b), Struct_4(vec4<f32>(500f, var_0.b.b.e, 1000f, var_0.b.b.e), var_0.b, u_input.d, var_0.d), arg_1.b.d).b.e)) - (arg_1.a / arg_1.a), var_0.b.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(((u_input.c * 0i) ^ ~u_input.e) >> abs(~(~58426u)), func_5(global2[global0[33350u]], func_4(Struct_4(-vec4<f32>(global1.x, global1.x, 1385f, global1.x), func_1(global0[32220u], vec4<u32>(4294967295u, 1u, global0[68919u], global0[global0[global0[global0[global0[19362u]]]]]), global1.x), vec3<i32>(u_input.b, -1i, u_input.b) * u_input.d, global3[~global0[0u]]), vec3<f32>(435f, global1.x, 837f) - (vec3<f32>(1183f, 2192f, -1000f) / vec3<f32>(1166f, global1.x, global1.x)), 1242f, Struct_3(u_input.b, global1.x * global1.x)), Struct_4(vec4<f32>(-global1.x, global1.x, trunc(global1.x), -1322f), Struct_2(trunc(vec3<f32>(-758f, global1.x, global1.x)), Struct_1(vec4<bool>(true, true, global2[global0[global0[global0[global0[global0[global0[global0[4294967295u]]]]]]]], global2[68998u]), global2[global0[global0[92990u]]], 22222u, global2[global0[0u]], global1.x)), u_input.d, vec2<u32>(~4294967295u, ~global0[global0[0u]])), global2[59912u] | global2[global0[61892u]]));
    let var_1 = reverseBits(-vec4<i32>(clamp(u_input.e / u_input.e, ~14937i, 1i), dot(abs(u_input.d.xx), reverseBits(vec2<i32>(20813i, -26399i))), u_input.e, firstLeadingBit(~u_input.d.x)));
    let var_2 = var_0.b;
    global0 = array<u32, 22>();
    global4 = array<vec3<bool>, 22>();
    global0 = array<u32, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.yzw, var_1.x);
}

