// {"0:0":[125,215,221,235,97,95,172,162,191,24,179,51,77,62,161,76,45,51,87,137,135,146,31,35]}
// Seed: 5684027881748137309

struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 32> = array<vec2<bool>, 32>(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true));

var<private> global1: vec4<f32> = vec4<f32>(-1560f, 339f, 1836f, 496f);

var<private> global2: array<vec3<u32>, 27> = array<vec3<u32>, 27>(vec3<u32>(27400u, 25301u, 44283u), vec3<u32>(31611u, 66416u, 13355u), vec3<u32>(0u, 4294967295u, 5114u), vec3<u32>(7816u, 21441u, 0u), vec3<u32>(82403u, 1u, 27439u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(35458u, 81636u, 35280u), vec3<u32>(17376u, 13968u, 4294967295u), vec3<u32>(0u, 0u, 46345u), vec3<u32>(64776u, 4294967295u, 4294967295u), vec3<u32>(68128u, 10441u, 0u), vec3<u32>(1u, 121852u, 1u), vec3<u32>(1u, 3294u, 4294967295u), vec3<u32>(4294967295u, 5954u, 1u), vec3<u32>(1u, 27451u, 25043u), vec3<u32>(6078u, 21374u, 18569u), vec3<u32>(4294967295u, 1u, 26335u), vec3<u32>(1u, 4294967295u, 1988u), vec3<u32>(1u, 1u, 35859u), vec3<u32>(1u, 1u, 37666u), vec3<u32>(65127u, 1u, 1u), vec3<u32>(4294967295u, 4294967295u, 51978u), vec3<u32>(5433u, 1u, 6036u), vec3<u32>(4233u, 44377u, 0u), vec3<u32>(17365u, 0u, 0u), vec3<u32>(42728u, 0u, 45793u), vec3<u32>(69967u, 0u, 8642u));

var<private> global3: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec2<i32>(2147483647i, 1i), 4294967295u, -800f, false), Struct_1(vec2<i32>(-1i, -63535i), 4294967295u, 1809f, true), Struct_1(vec2<i32>(-1i, 51810i), 22922u, 101f, true));

var<private> global4: u32;

fn func_2(arg_0: Struct_1) -> i32 {
    var var_0 = -global1.x;
    let var_1 = vec4<i32>(-26803i, arg_0.a.x, u_input.d, dot(arg_0.a, vec2<i32>(-(arg_0.a.x | u_input.d), reverseBits(u_input.d))));
    var var_2 = arg_0.c;
    global1 = -vec4<f32>(global1.x, arg_0.c, -global1.x, round(floor(global1.x)) / -step(-613f, 100f));
    var var_3 = Struct_1(vec2<i32>(-3257i, abs(var_1.x)), 24850u, -1060f, arg_0.d);
    return i32(-2147483648);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: Struct_1) -> vec4<f32> {
    global3 = array<Struct_1, 3>();
    var var_0 = !select(vec3<bool>(all(!vec2<bool>(true, true)), all(vec4<bool>(arg_0.x, arg_2.d, false, arg_2.d)), false), vec3<bool>(any(vec4<bool>(false, arg_2.d, false, arg_0.x)), !arg_0.x, ~4294967295u > ~13103u), !vec3<bool>(select(arg_2.d, true, arg_0.x), -96579i >= -24871i, arg_0.x | true));
    return select(vec4<f32>(-global1.x + (146f / -515f), -floor(global1.x), -398f, global1.x) + -vec4<f32>(-122f, global1.x, -159f, arg_2.c), (-vec4<f32>(-840f, -749f, 1000f, 1230f) * (vec4<f32>(arg_2.c, 1000f, global1.x, 1000f) * -vec4<f32>(801f, arg_2.c, global1.x, 138f))) - vec4<f32>(step(global1.x, arg_2.c) * -arg_2.c, arg_2.c, exp2(-1034f), -1555f / -global1.x), u_input.c <= (4294967295u % ~(4294967295u << arg_2.b)));
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: vec4<f32>, arg_3: f32) -> Struct_1 {
    let var_0 = global3[(~dot(u_input.b, u_input.b) << abs(1u)) % ~70672u];
    var var_1 = 130f;
    let var_2 = var_0.b;
    let var_3 = ~var_0.b;
    let var_4 = vec4<u32>(firstTrailingBit(var_3), 9275u, ~0u, u_input.a);
    return global3[~(var_4.x << ((32734u & var_3) | (1u << var_3)))];
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec4<bool>) -> Struct_1 {
    global3 = array<Struct_1, 3>();
    let var_0 = ~(abs(~(vec4<u32>(arg_1.b, 1u, 75992u, 34727u) & vec4<u32>(1u, 0u, u_input.b.x, arg_1.b))) >> vec4<u32>(reverseBits(min(1u, 23982u)), arg_1.b, 1u << (0u + arg_1.b), 55524u));
    global2 = array<vec3<u32>, 27>();
    global0 = array<vec2<bool>, 32>();
    let var_1 = select(arg_3.wzz, !select(arg_3.yzw, vec3<bool>(arg_1.d, -23891i <= arg_1.a.x, select(false, false, arg_0.d)), func_4(-(-685f), 20841i << var_0.x, -vec4<f32>(arg_1.c, global1.x, -1310f, arg_0.c), -973f).d), arg_0.d);
    return func_4(step(-arg_2.x, round(arg_1.c)), ((-u_input.d % -14028i) / arg_1.a.x) - -(-firstTrailingBit(i32(-2147483648))), arg_2, -502f);
}

fn func_1(arg_0: i32, arg_1: vec4<i32>) -> vec4<bool> {
    var var_0 = global1.x;
    var var_1 = func_5(func_4(global1.x, func_2(Struct_1(arg_1.wx, 1720u, 202f, any(vec3<bool>(false, true, false)))), ((vec4<f32>(-714f, global1.x, global1.x, global1.x) - vec4<f32>(306f, global1.x, -104f, global1.x)) - min(vec4<f32>(global1.x, 811f, 972f, global1.x), vec4<f32>(263f, -803f, global1.x, 325f))) + (step(vec4<f32>(1570f, -111f, global1.x, -681f), vec4<f32>(-969f, global1.x, 1831f, 181f)) * func_3(global0[1u], vec3<i32>(-59174i, 1i, 1i), Struct_1(arg_1.wx, 0u, 620f, true))), floor(global1.x * -(-659f))), func_4(1000f, 1i, -(vec4<f32>(global1.x, global1.x, -471f, global1.x) - step(vec4<f32>(global1.x, 278f, -594f, 1171f), vec4<f32>(1514f, -2710f, 2491f, global1.x))), abs(219f)), -(vec4<f32>(-global1.x, func_3(vec2<bool>(true, false), arg_1.yyw, global3[u_input.c]).x, global1.x, 1662f) - floor(-vec4<f32>(-392f, global1.x, 1072f, 1032f))), !vec4<bool>(true != (true | true), !(!true), true, any(global0[u_input.c & 0u])));
    let var_2 = global0[u_input.c * ~var_1.b];
    global1 = vec4<f32>(var_1.c, var_1.c, round(-3332f / 638f) + 815f, 106f - var_1.c) * abs(-func_3(vec2<bool>(false, true), vec3<i32>(i32(-2147483648), -21428i, arg_0), global3[56165u]) / select(vec4<f32>(265f, -235f, -1619f, global1.x), sign(vec4<f32>(global1.x, var_1.c, -728f, 1000f)), var_1.d));
    let var_3 = func_4(global1.x / func_3(select(!vec2<bool>(true, var_2.x), select(global0[1u], vec2<bool>(true, var_2.x), var_2.x), var_2.x | false), -arg_1.xxw, Struct_1(-vec2<i32>(2147483647i, u_input.d), abs(var_1.b), var_1.c * 517f, true)).x, -(-(~(-8808i))), vec4<f32>(max(-(-498f), -604f), var_1.c, global1.x, -1249f), 645f);
    return select(select(!(!(!vec4<bool>(var_2.x, true, var_2.x, var_2.x))), select(!vec4<bool>(var_2.x, true, var_2.x, false), vec4<bool>(any(global0[41091u]), true, !true, 28619i >= 1i), true), any(select(vec4<bool>(false, false, var_1.d, true), select(vec4<bool>(false, false, true, true), vec4<bool>(var_3.d, var_3.d, var_2.x, true), true), vec4<bool>(true, var_2.x, true, false)))), select(vec4<bool>(false, !(!false), (false || var_1.d) & var_2.x, false), !select(!vec4<bool>(true, false, true, var_2.x), vec4<bool>(var_2.x, var_1.d, var_1.d, false), vec4<bool>(true, true, false, var_2.x)), func_4(-var_1.c, var_1.a.x, vec4<f32>(292f, var_3.c, global1.x, var_1.c) / trunc(vec4<f32>(272f, var_3.c, var_3.c, var_1.c)), -1046f).d), vec4<bool>(!var_3.d, !var_2.x, true, !(var_1.a.x != var_1.a.x) & var_1.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(global0[1u], vec2<bool>(false, (u_input.d >> (18683u % u_input.a)) < -(u_input.d % -19919i)), all(select(select(func_1(u_input.d, vec4<i32>(u_input.d, 10458i, u_input.d, 37397i)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), true), false), !(!vec4<bool>(true, true, false, false)), !vec4<bool>(false, true, true, false))));
    let var_1 = func_5(Struct_1(vec2<i32>(1i, -5635i), ~13780u & min(~4294967295u, 0u), 436f - global1.x, u_input.b.x != u_input.a), func_5(func_4(-(-174f + 1431f), ~dot(vec3<i32>(-5575i, -1i, u_input.d), vec3<i32>(u_input.d, u_input.d, 18231i)), (vec4<f32>(1770f, global1.x, 1000f, global1.x) + vec4<f32>(-1000f, global1.x, -1130f, global1.x)) * vec4<f32>(913f, -439f, -1944f, global1.x), global1.x), func_5(Struct_1(vec2<i32>(-10524i, 0i), ~1u, -global1.x, !var_0.x), Struct_1(vec2<i32>(u_input.d, 53284i), 7478u, -global1.x, !var_0.x), -exp2(vec4<f32>(619f, global1.x, global1.x, global1.x)), select(select(vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>(var_0.x, true, false, var_0.x), true), vec4<bool>(false, var_0.x, var_0.x, false), any(vec4<bool>(var_0.x, var_0.x, var_0.x, true)))), -vec4<f32>(global1.x, global1.x, -847f, 311f) / (vec4<f32>(1294f, -116f, 1897f, -118f) - (vec4<f32>(387f, global1.x, -966f, 626f) / vec4<f32>(-1201f, -871f, 1283f, -2149f))), vec4<bool>(var_0.x, false & (true && var_0.x), all(select(vec3<bool>(true, false, true), vec3<bool>(true, var_0.x, var_0.x), var_0.x)), var_0.x)), exp2(select(select(vec4<f32>(global1.x, 1653f, global1.x, global1.x), vec4<f32>(-504f, 934f, global1.x, global1.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false)), ceil(vec4<f32>(378f, 216f, global1.x, global1.x)), vec4<bool>(false, var_0.x, var_0.x, false)) * vec4<f32>(round(global1.x), -1319f, global1.x * global1.x, -global1.x)), !vec4<bool>(true, !any(vec4<bool>(false, true, true, var_0.x)), (u_input.a + 0u) < clamp(u_input.b.x, 28080u, 0u), var_0.x)).c;
    var var_2 = func_4(-(-1283f - -(var_1 - -1000f)), (((-1i | u_input.d) | -1422i) - 2147483647i) % u_input.d, -round(vec4<f32>(-global1.x, -global1.x, abs(-2107f), min(global1.x, -1549f))), 220f);
    let var_3 = global3[abs(~(~(~var_2.b)))];
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(global1.x, -((790f - 1000f) - ceil(805f)), -ceil(-var_1), var_2.c), -24556i);
}

