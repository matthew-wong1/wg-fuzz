// {"0:0":[96,255,124,33,46,140,76,76,187,130,35,97,207,236,105,199,152,255,68,19,21,208,215,122,96,99,168,125,169,24,68,245]}
// Seed: 2646125203933233020

struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec3<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 19>;

var<private> global1: i32 = i32(-2147483648);

var<private> global2: array<vec3<bool>, 6> = array<vec3<bool>, 6>(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false));

fn func_2(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_4) -> u32 {
    var var_0 = arg_2.c.a.c;
    let var_1 = select(vec2<bool>(!(!false), all(!arg_0.c.a.c)), vec2<bool>(false & !any(vec2<bool>(true, true)), (-604f / step(arg_2.a.d, arg_0.c.b)) > -135f), select(select(select(vec2<bool>(true, false), vec2<bool>(arg_2.c.a.c.x, false), arg_1.c.xz), select(vec2<bool>(var_0.x, true), vec2<bool>(true, var_0.x), false), !(!false)), var_0.zx, true));
    var var_2 = -(-651f / 851f);
    var var_3 = ~u_input.a;
    var var_4 = vec3<f32>(min(859f, (arg_0.b.b.x / arg_2.c.b) * arg_0.b.d) - (-(-1000f) - ((-1284f + 1040f) - -arg_1.b.x)), -1875f, (abs(887f) * -max(arg_1.b.x, arg_2.c.a.b.x)) - -840f);
    return 0u;
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<f32>) -> Struct_1 {
    global1 = arg_0.x | 33054i;
    var var_0 = Struct_4(Struct_1(-reverseBits(i32(-2147483648)), vec4<f32>(round(-1755f) - 1327f, round(arg_1.x - arg_1.x), 2361f, max(abs(global0[73572u]), arg_1.x)), vec3<bool>(max(0u, 18900u) == 4294967295u, (42360i * 1i) >= u_input.a.x, !(!false)), -807f), Struct_1(-(-(-u_input.a.x)), -(-vec4<f32>(arg_1.x, arg_1.x, -437f, arg_1.x)), vec3<bool>(false, -215f != arg_1.x, any(vec4<bool>(true, true, false, true)) && true), 688f), Struct_2(Struct_1(2147483647i, -(vec4<f32>(297f, arg_1.x, arg_1.x, arg_1.x) * vec4<f32>(-2340f, arg_1.x, global0[4294967295u], -706f)), vec3<bool>(all(vec4<bool>(true, false, true, true)), true, !false), -(-(-1183f))), -(-arg_1.x / -426f)));
    var var_1 = Struct_4(Struct_1(u_input.b.x, var_0.a.b - vec4<f32>(var_0.c.a.d, 1000f, var_0.c.a.d, -1269f * global0[0u]), vec3<bool>(var_0.c.a.c.x, !var_0.b.c.x, all(global2[4294967295u])), -(-(-1000f - 728f))), Struct_1(dot(select(vec3<i32>(2147483647i, u_input.a.x, arg_0.x), vec3<i32>(i32(-2147483648), -1i, arg_0.x), vec3<bool>(var_0.a.c.x, var_0.a.c.x, true)), u_input.b) & (i32(-2147483648) ^ -1i), -var_0.a.b, !(!global2[6934u & 0u]), var_0.a.d), Struct_2(var_0.a, var_0.c.b));
    let var_2 = var_1.c;
    let var_3 = vec3<i32>(dot(~(vec4<i32>(-1i, var_1.a.a, 70293i, var_0.b.a) % vec4<i32>(58273i, 51808i, 9539i, 2147483647i)), ~vec4<i32>(u_input.a.x, arg_0.x, var_0.a.a, u_input.b.x)), 21378i, ~0i) ^ countOneBits(select(vec3<i32>(1i * var_1.b.a, ~(-7607i), ~var_1.b.a), abs(vec3<i32>(37252i, var_0.b.a, 2147483647i) / u_input.b), true));
    return var_0.c.a;
}

fn func_1() -> Struct_2 {
    let var_0 = func_3(-(-vec2<i32>(0i * u_input.a.x, 1i)), vec3<f32>(-global0[func_2(Struct_4(Struct_1(-1i, vec4<f32>(global0[4294967295u], 1458f, global0[3667u], global0[1u]), global2[36606u], 1000f), Struct_1(1i, vec4<f32>(global0[4294967295u], global0[1u], 638f, -1258f), vec3<bool>(false, true, true), global0[12919u]), Struct_2(Struct_1(u_input.a.x, vec4<f32>(global0[49703u], -691f, 467f, 1100f), vec3<bool>(true, true, false), global0[61042u]), global0[4294967295u])), Struct_1(u_input.b.x, vec4<f32>(global0[75283u], 117f, global0[0u], 1000f), global2[51744u], 259f), Struct_4(Struct_1(1i, vec4<f32>(-113f, -1061f, global0[45822u], global0[4294967295u]), vec3<bool>(false, false, false), global0[88067u]), Struct_1(-9465i, vec4<f32>(global0[53037u], -1124f, global0[42267u], global0[0u]), vec3<bool>(true, true, false), global0[1u]), Struct_2(Struct_1(1i, vec4<f32>(global0[0u], 119f, 500f, global0[4294967295u]), vec3<bool>(true, true, true), -635f), global0[17174u])))], -(-258f), global0[firstLeadingBit(1u / 1u)] / ceil(global0[max(19956u, 1u)])));
    var var_1 = vec4<u32>(1u, dot(firstLeadingBit((vec2<u32>(4294967295u, 58416u) | vec2<u32>(0u, 18396u)) >> (vec2<u32>(0u, 48793u) + vec2<u32>(1243u, 8860u))), firstLeadingBit(max(vec2<u32>(33095u, 2006u), vec2<u32>(1u, 4294967295u) + vec2<u32>(4294967295u, 38449u)))), 1u, ~firstTrailingBit(min(~28135u, ~11059u)));
    var var_2 = 44392u;
    var var_3 = var_1.ywy;
    var var_4 = countOneBits(-vec4<i32>((var_0.a << 4294967295u) >> reverseBits(23660u), u_input.b.x + u_input.b.x, i32(-2147483648), u_input.b.x));
    return Struct_2(Struct_1(var_4.x, var_0.b - -(-vec4<f32>(331f, 151f, -1000f, -1290f)), vec3<bool>(false, -(-2699f) >= round(1268f), !(23354i <= var_0.a)), var_0.b.x), -231f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 19>();
    global2 = array<vec3<bool>, 6>();
    let var_0 = func_1();
    var var_1 = 8846u;
    global2 = array<vec3<bool>, 6>();
    var_1 = dot(clamp(vec4<u32>(func_2(Struct_4(var_0.a, Struct_1(30195i, vec4<f32>(231f, 373f, 1072f, global0[0u]), vec3<bool>(true, var_0.a.c.x, false), global0[4294967295u]), var_0), var_0.a, Struct_4(Struct_1(var_0.a.a, vec4<f32>(var_0.a.d, var_0.b, 1000f, global0[12796u]), vec3<bool>(var_0.a.c.x, var_0.a.c.x, var_0.a.c.x), global0[16444u]), var_0.a, Struct_2(Struct_1(u_input.b.x, var_0.a.b, global2[99414u], global0[0u]), -530f))), 71743u ^ 4294967295u, abs(4294967295u), 1u / 5104u), abs(abs(vec4<u32>(4294967295u, 4294967295u, 21471u, 1u))), abs(vec4<u32>(38046u, 35413u, 86616u, 62810u)) / (vec4<u32>(36670u, 1u, 36992u, 1u) ^ vec4<u32>(4294967295u, 46041u, 0u, 3241u))), select(vec4<u32>(25661u, 1u, 0u, 0u), vec4<u32>(22029u, 1u, 11773u, 4294967295u), !vec4<bool>(true, var_0.a.c.x, var_0.a.c.x, false)) - vec4<u32>(~63171u, 7574u, ~1u, clamp(0u, 163u, 4294967295u))) * select(4294967295u, select(~select(61719u, 14616u, false), dot(reverseBits(vec4<u32>(1u, 1u, 1072u, 15031u)), vec4<u32>(1u, 1u, 0u, 60997u)), !false), all(select(select(vec3<bool>(var_0.a.c.x, var_0.a.c.x, true), vec3<bool>(var_0.a.c.x, true, false), var_0.a.c), !var_0.a.c, var_0.a.c.x)));
    let var_2 = func_1().a.c.yx;
    var var_3 = vec4<bool>(!var_2.x, !(!((var_0.b <= -260f) || !var_2.x)), any(vec4<bool>(var_0.a.c.x, !(!true), func_2(Struct_4(var_0.a, var_0.a, Struct_2(Struct_1(u_input.b.x, vec4<f32>(global0[1692u], -243f, global0[0u], 137f), vec3<bool>(var_0.a.c.x, var_2.x, true), -1222f), var_0.a.b.x)), var_0.a, Struct_4(Struct_1(2147483647i, vec4<f32>(global0[6966u], var_0.a.d, 410f, global0[13136u]), vec3<bool>(var_2.x, var_2.x, var_2.x), -1200f), var_0.a, Struct_2(Struct_1(u_input.b.x, vec4<f32>(633f, var_0.a.d, global0[0u], global0[1u]), var_0.a.c, var_0.a.d), 580f))) == (4294967295u << 64260u), false)), (global0[~(~64301u)] - global0[~66273u >> select(1u, 55357u, true)]) < -min(global0[max(1u, 2504u)], step(global0[1u], var_0.b)));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b ^ reverseBits(u_input.b));
}

