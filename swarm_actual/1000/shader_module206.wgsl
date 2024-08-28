// {"0:0":[11,87,113,184,8,58,180,140,94,225,255,228]}
// Seed: 18183969013705438995

struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12>;

var<private> global1: vec2<u32>;

fn func_3() -> u32 {
    global0 = array<bool, 12>();
    let var_0 = -abs((floor(-537f) * -1712f) / -(-1478f));
    var var_1 = global1.x;
    global0 = array<bool, 12>();
    var_1 = clamp(abs(28461u), select(27204u, u_input.c, any(vec2<bool>(all(vec3<bool>(true, true, global0[61179u])), true || global0[global1.x]))), 46707u);
    return max(abs(15710u), ~global1.x);
}

fn func_2(arg_0: vec2<bool>) -> vec2<u32> {
    var var_0 = countOneBits(~69772u);
    var var_1 = abs(~(0u % (15242u % func_3())));
    var var_2 = Struct_2(Struct_1(vec2<u32>(global1.x, global1.x), vec3<i32>(38848i, max(u_input.a, 26234i), u_input.a << 4294967295u) - ((vec3<i32>(u_input.b, u_input.b, -1i) * vec3<i32>(u_input.a, -16754i, u_input.b)) / countOneBits(vec3<i32>(12491i, -39092i, u_input.a))), vec2<u32>(dot(~vec2<u32>(743u, u_input.c), vec2<u32>(19448u, global1.x) ^ vec2<u32>(80179u, 1u)), 4294967295u / ~u_input.c), arg_0), Struct_1(~(vec2<u32>(u_input.c, 26195u) - vec2<u32>(u_input.c, 0u)) << vec2<u32>(global1.x / u_input.c, global1.x), (vec3<i32>(u_input.b, u_input.b, 51076i) << ~vec3<u32>(u_input.c, u_input.c, global1.x)) + vec3<i32>(0i, i32(-2147483648), firstLeadingBit(1138i)), min(~select(vec2<u32>(global1.x, global1.x), vec2<u32>(global1.x, u_input.c), vec2<bool>(true, true)), ~firstLeadingBit(vec2<u32>(u_input.c, 1u))), !(!arg_0)), Struct_1(vec2<u32>(~(0u ^ u_input.c), 128197u), vec3<i32>(0i >> global1.x, -9994i, -27639i) >> ~vec3<u32>(global1.x, u_input.c, 111143u), (max(vec2<u32>(global1.x, 50109u), vec2<u32>(4294967295u, u_input.c)) ^ vec2<u32>(global1.x, 26871u)) ^ vec2<u32>(global1.x, abs(4294967295u)), !select(select(vec2<bool>(global0[4294967295u], false), vec2<bool>(global0[1u], global0[0u]), global0[u_input.c]), vec2<bool>(global0[0u], arg_0.x), false)));
    let var_3 = trunc(round(vec2<f32>(round(1109f), 613f - 924f) / (-vec2<f32>(-983f, -1177f) * vec2<f32>(601f, -982f))));
    global1 = var_2.a.a;
    return ~var_2.c.a;
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = global0[4294967295u];
    let var_1 = max(vec2<u32>(~0u, firstLeadingBit(u_input.c)) - func_2(!vec2<bool>(global0[global1.x], false)), firstLeadingBit(vec2<u32>(4294967295u, global1.x)) / (vec2<u32>(0u, global1.x) & ~vec2<u32>(u_input.c, 7189u)));
    var var_2 = ~(~(4294967295u >> max(~56480u, 0u)));
    var var_3 = Struct_2(Struct_1(countOneBits(select(var_1, abs(vec2<u32>(4294967295u, 4294967295u)), !vec2<bool>(true, true))), -vec3<i32>(reverseBits(arg_0), u_input.b, arg_0 << 0u), var_1, !(!vec2<bool>(global0[9320u], false))), Struct_1(firstTrailingBit(var_1), vec3<i32>(u_input.b, ~(-(-13773i)), ~(-1i & i32(-2147483648))), vec2<u32>(4294967295u, 32913u), vec2<bool>(false, true)), Struct_1(var_1, vec3<i32>(~0i, u_input.a, -(i32(-2147483648))) % ~(vec3<i32>(arg_0, 2147483647i, -19008i) + vec3<i32>(u_input.a, 37623i, arg_0)), var_1 | firstTrailingBit(var_1), select(vec2<bool>(any(vec2<bool>(global0[u_input.c], true)), any(vec3<bool>(global0[23095u], false, global0[29696u]))), vec2<bool>(all(vec3<bool>(false, global0[4294967295u], global0[var_1.x])), global0[1u] && global0[var_1.x]), select(select(vec2<bool>(global0[u_input.c], true), vec2<bool>(false, global0[69706u]), global0[var_1.x]), select(vec2<bool>(global0[u_input.c], global0[11137u]), vec2<bool>(true, true), false), select(vec2<bool>(global0[global1.x], global0[global1.x]), vec2<bool>(false, false), vec2<bool>(true, false))))));
    var var_4 = ~abs(vec4<i32>(firstTrailingBit(arg_0), 2147483647i, ~var_3.b.b.x, firstLeadingBit(-arg_0)));
    return Struct_1(select(vec2<u32>(u_input.c, var_1.x) >> (vec2<u32>(global1.x, var_3.b.a.x) % vec2<u32>(48150u, var_3.c.a.x)), vec2<u32>(dot(vec3<u32>(var_3.b.c.x, var_1.x, var_3.c.a.x), vec3<u32>(33353u, var_3.a.c.x, 1491u)), u_input.c >> 22383u), true) * reverseBits(firstLeadingBit(var_1)), -(-(-var_3.b.b)), ~(~(~select(var_1, var_1, var_3.b.d.x))), !vec2<bool>(select(!var_3.c.d.x, true, global0[countOneBits(4294967295u)]), false));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_3) -> Struct_2 {
    let var_0 = u_input.c;
    global0 = array<bool, 12>();
    var var_1 = func_1(arg_2.a.b.b.x);
    var_1 = arg_2.a.a;
    global0 = array<bool, 12>();
    return Struct_2(arg_1.a, func_1(1i), arg_1.a);
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: Struct_3) -> Struct_3 {
    var var_0 = arg_1.c.c;
    var var_1 = abs((vec4<u32>(global1.x, global1.x, 1205u, arg_1.b.a.x) * select(vec4<u32>(u_input.c, u_input.c, u_input.c, arg_2.a.a.c.x), vec4<u32>(1u, 1u, 4294967295u, global1.x), vec4<bool>(arg_1.b.d.x, false, true, global0[1u]))) ^ ~abs(vec4<u32>(1u, 31163u, 15139u, arg_1.c.c.x))) >> ((((vec4<u32>(arg_2.a.b.c.x, 0u, 4294967295u, 1u) / vec4<u32>(0u, arg_2.a.a.a.x, 19629u, 5426u)) & vec4<u32>(11918u, 21999u, arg_2.a.c.c.x, 40321u)) & ~(vec4<u32>(0u, 0u, 15806u, 6360u) * vec4<u32>(1u, 4294967295u, arg_1.b.a.x, 5598u))) / vec4<u32>(global1.x, ~(~global1.x), (1u * arg_1.c.c.x) / u_input.c, global1.x));
    var var_2 = floor(vec4<f32>(round(-1000f), exp2(-744f), arg_0 / (-864f / -1117f), 501f) * -(vec4<f32>(1027f, -1251f, arg_0, 1000f) + vec4<f32>(1000f, -1251f, arg_0, arg_0)));
    let var_3 = arg_1.b.b.xx;
    var var_4 = func_1(arg_2.a.c.b.x);
    return arg_2;
}

fn func_6(arg_0: u32, arg_1: Struct_3, arg_2: vec2<i32>) -> StorageBuffer {
    var var_0 = func_4(max(func_4(arg_1.a.c.b.x, Struct_2(func_4(2147483647i, arg_1.a, Struct_3(arg_1.a)).a, arg_1.a.a, arg_1.a.a), arg_1).c.b.x, select(reverseBits(min(arg_1.a.c.b.x, arg_2.x)), 0i, global0[17191u])), Struct_2(func_5(1000f, arg_1.a, arg_1).a.a, Struct_1(firstLeadingBit(vec2<u32>(arg_1.a.c.c.x, arg_1.a.b.c.x) | vec2<u32>(0u, 1u)), func_1(-1i).b, ~(arg_1.a.a.a | vec2<u32>(u_input.c, arg_1.a.b.a.x)), vec2<bool>(all(arg_1.a.b.d), false)), func_1(abs(arg_1.a.a.b.x))), Struct_3(func_5(-(678f - -216f), func_4(-68617i, arg_1.a, arg_1), func_5(1219f, Struct_2(arg_1.a.c, arg_1.a.c, Struct_1(vec2<u32>(4294967295u, 4294967295u), arg_1.a.c.b, vec2<u32>(arg_1.a.c.a.x, arg_0), arg_1.a.a.d)), Struct_3(Struct_2(arg_1.a.c, arg_1.a.c, arg_1.a.c)))).a)).a;
    var var_1 = arg_1.a.b;
    let var_2 = vec3<bool>(all(!(!vec3<bool>(true, arg_1.a.b.d.x, arg_1.a.c.d.x))), global0[1u], false);
    var var_3 = ~firstLeadingBit(34985u) << u_input.c;
    var var_4 = -(-trunc(261f / 807f)) * (-501f + -(-602f + -(-945f)));
    return StorageBuffer(~arg_2.x, -(-993f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 12>();
    let var_0 = u_input.a;
    global1 = ~vec2<u32>(u_input.c, 43179u);
    let var_1 = global1.x;
    let x = u_input.a;
    s_output = func_6(~((~u_input.c + ~4294967295u) % max(u_input.c, 50936u)), func_5((ceil(424f) / abs(1333f)) * ((1255f + -592f) - (920f * -1151f)), func_4(var_0, Struct_2(Struct_1(vec2<u32>(4294967295u, 4294967295u), vec3<i32>(2147483647i, -1i, 2147483647i), vec2<u32>(global1.x, global1.x), vec2<bool>(global0[u_input.c], global0[8317u])), Struct_1(vec2<u32>(global1.x, 0u), vec3<i32>(0i, u_input.a, var_0), vec2<u32>(u_input.c, u_input.c), vec2<bool>(false, false)), func_1(u_input.a)), Struct_3(Struct_2(Struct_1(vec2<u32>(global1.x, global1.x), vec3<i32>(-1i, u_input.b, var_0), vec2<u32>(u_input.c, global1.x), vec2<bool>(true, global0[u_input.c])), Struct_1(vec2<u32>(1u, global1.x), vec3<i32>(var_0, -1i, var_0), vec2<u32>(1u, global1.x), vec2<bool>(true, true)), Struct_1(vec2<u32>(26170u, global1.x), vec3<i32>(u_input.b, -22069i, 19067i), vec2<u32>(1u, global1.x), vec2<bool>(global0[65387u], global0[4294967295u]))))), Struct_3(Struct_2(Struct_1(vec2<u32>(4294967295u, u_input.c), vec3<i32>(2147483647i, 39641i, -15531i), vec2<u32>(46220u, 48712u), vec2<bool>(true, false)), Struct_1(vec2<u32>(10234u, global1.x), vec3<i32>(2147483647i, u_input.a, var_0), vec2<u32>(4294967295u, u_input.c), vec2<bool>(global0[1u], global0[u_input.c])), func_4(var_0, Struct_2(Struct_1(vec2<u32>(global1.x, 4294967295u), vec3<i32>(28009i, u_input.b, var_0), vec2<u32>(8447u, 1u), vec2<bool>(true, global0[24057u])), Struct_1(vec2<u32>(global1.x, 60282u), vec3<i32>(var_0, var_0, u_input.b), vec2<u32>(4294967295u, global1.x), vec2<bool>(global0[u_input.c], false)), Struct_1(vec2<u32>(u_input.c, 61352u), vec3<i32>(var_0, u_input.a, u_input.b), vec2<u32>(u_input.c, 17372u), vec2<bool>(global0[global1.x], false))), Struct_3(Struct_2(Struct_1(vec2<u32>(96970u, global1.x), vec3<i32>(var_0, var_0, 1i), vec2<u32>(global1.x, u_input.c), vec2<bool>(global0[u_input.c], global0[u_input.c])), Struct_1(vec2<u32>(26247u, global1.x), vec3<i32>(1475i, var_0, u_input.a), vec2<u32>(1u, global1.x), vec2<bool>(global0[global1.x], global0[u_input.c])), Struct_1(vec2<u32>(1u, u_input.c), vec3<i32>(u_input.a, 0i, 43868i), vec2<u32>(4294967295u, u_input.c), vec2<bool>(global0[1u], global0[global1.x]))))).b))), ~vec2<i32>(dot(-vec4<i32>(2147483647i, 0i, -17054i, 2147483647i), min(vec4<i32>(var_0, -67585i, u_input.a, u_input.b), vec4<i32>(2147483647i, u_input.b, u_input.a, u_input.b))), ~(u_input.a * u_input.b)));
}

