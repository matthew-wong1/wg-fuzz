// {"0:0":[125,224,4,64,40,42,121,218,166,246,186,184,162,16,103,221,92,1,22,116,186,189,209,7,142,53,231,97,181,209,199,53]}
// Seed: 15073485621385640572

struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
    c: Struct_2,
    d: Struct_1,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 25> = array<f32, 25>(-941f, 812f, -1062f, 1200f, 408f, 351f, -1272f, 569f, 1000f, -1078f, 1056f, 304f, 319f, 709f, -989f, 569f, -1929f, -1364f, -371f, 118f, 829f, -229f, 267f, -683f, -1569f);

var<private> global1: array<vec3<i32>, 21>;

var<private> global2: vec4<i32>;

fn func_3(arg_0: vec4<bool>) -> i32 {
    global1 = array<vec3<i32>, 21>();
    let var_0 = vec2<f32>((874f / 183f) / -2298f, 795f / -(-310f));
    global2 = vec4<i32>(u_input.b - clamp(dot(vec2<i32>(0i, 13138i), global2.zw) | -global2.x, 4807i, global2.x), max(global2.x, u_input.b), 1i, i32(-2147483648) - abs(countOneBits(firstTrailingBit(-15447i))));
    let var_1 = var_0;
    var var_2 = Struct_1(round(-(-var_1.x)));
    return ~u_input.b;
}

fn func_2(arg_0: bool, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_2) -> Struct_2 {
    global0 = array<f32, 25>();
    let var_0 = arg_1.d;
    let var_1 = arg_1.d;
    var var_2 = func_3(arg_1.c.a) & (i32(-2147483648) - u_input.b);
    let var_3 = global2.x;
    return arg_1.c;
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> f32 {
    let var_0 = u_input.b;
    let var_1 = countOneBits(vec2<u32>(u_input.d, u_input.a.x));
    global1 = array<vec3<i32>, 21>();
    var var_2 = false;
    var var_3 = ~(-2747i + func_3(!(!vec4<bool>(false, true, true, arg_0.a.x))));
    return sign(global0[~firstTrailingBit(63024u | u_input.d) ^ (0u / (~var_1.x ^ countOneBits(var_1.x)))]);
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(select(-select(361f, -326f, false) - -514f, step(func_4(Struct_2(arg_1.a), u_input.b) * (1613f - global0[u_input.a.x]), -step(841f, -814f)), func_2(-33908i <= i32(-2147483648), Struct_3(~vec4<i32>(global2.x, global2.x, i32(-2147483648), u_input.b), u_input.b == u_input.b, arg_1, arg_2, firstTrailingBit(vec2<u32>(u_input.d, 4294967295u))), Struct_2(vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, true)), func_2(any(vec2<bool>(arg_1.a.x, arg_1.a.x)), Struct_3(vec4<i32>(1i, global2.x, 16535i, u_input.b), arg_1.a.x, arg_1, arg_2, u_input.a.yx), func_2(false, Struct_3(vec4<i32>(15596i, 47422i, u_input.b, -3450i), false, arg_1, arg_2, vec2<u32>(12449u, 5476u)), arg_1, Struct_2(vec4<bool>(arg_1.a.x, arg_1.a.x, false, false))), Struct_2(vec4<bool>(arg_1.a.x, arg_1.a.x, false, arg_1.a.x)))).a.x));
    var var_1 = (((exp2(global0[u_input.c]) - step(1000f, 564f)) / -(-847f)) + arg_0) - func_4(Struct_2(!(!vec4<bool>(arg_1.a.x, false, false, false))), global2.x % (~(-1i) + u_input.b));
    var var_2 = Struct_1(-1402f);
    var_1 = min(-global0[reverseBits(u_input.c) ^ u_input.c], -1434f) / arg_0;
    let var_3 = 1u;
    return arg_2;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: u32) -> u32 {
    var var_0 = func_5(489f * min(-1319f, func_4(func_2(true, Struct_3(vec4<i32>(-2835i, u_input.b, global2.x, u_input.b), true, Struct_2(vec4<bool>(true, true, true, true)), Struct_1(-1143f), arg_0), Struct_2(vec4<bool>(false, true, false, false)), Struct_2(vec4<bool>(true, true, true, false))), 15433i)), func_2(!any(func_2(true, Struct_3(arg_1, true, Struct_2(vec4<bool>(false, false, true, true)), Struct_1(-1000f), vec2<u32>(22838u, arg_2)), Struct_2(vec4<bool>(false, false, false, false)), Struct_2(vec4<bool>(true, false, true, true))).a.xz), Struct_3(-arg_1, !true, Struct_2(vec4<bool>(false, true, true, false)), Struct_1(global0[arg_0.x + arg_0.x]), arg_0), Struct_2(func_2(!false, Struct_3(arg_1, false, Struct_2(vec4<bool>(false, false, false, true)), Struct_1(-231f), vec2<u32>(50010u, arg_0.x)), Struct_2(vec4<bool>(false, true, false, false)), func_2(false, Struct_3(vec4<i32>(2723i, i32(-2147483648), -2418i, global2.x), true, Struct_2(vec4<bool>(false, true, false, true)), Struct_1(global0[880u]), u_input.a.zz), Struct_2(vec4<bool>(true, true, true, true)), Struct_2(vec4<bool>(false, false, true, true)))).a), func_2(!(!false), Struct_3(arg_1 | vec4<i32>(-25697i, i32(-2147483648), 33011i, arg_1.x), !true, Struct_2(vec4<bool>(true, true, true, true)), Struct_1(-213f), u_input.a.zx), func_2(!false, Struct_3(vec4<i32>(arg_1.x, i32(-2147483648), arg_1.x, u_input.b), false, Struct_2(vec4<bool>(false, false, true, false)), Struct_1(-328f), arg_0), func_2(true, Struct_3(arg_1, false, Struct_2(vec4<bool>(true, true, false, true)), Struct_1(-518f), arg_0), Struct_2(vec4<bool>(true, true, true, false)), Struct_2(vec4<bool>(false, false, true, true))), func_2(true, Struct_3(vec4<i32>(arg_1.x, 1i, arg_1.x, 12060i), true, Struct_2(vec4<bool>(false, true, false, false)), Struct_1(767f), arg_0), Struct_2(vec4<bool>(true, true, false, true)), Struct_2(vec4<bool>(true, true, false, false)))), Struct_2(func_2(true, Struct_3(vec4<i32>(19326i, global2.x, arg_1.x, global2.x), true, Struct_2(vec4<bool>(true, true, true, true)), Struct_1(global0[0u]), vec2<u32>(u_input.a.x, arg_2)), Struct_2(vec4<bool>(false, false, true, false)), Struct_2(vec4<bool>(false, false, false, false))).a))), Struct_1(global0[abs(0u)]));
    var_0 = Struct_1(389f - 2320f);
    var var_1 = global2.x;
    let var_2 = false;
    let var_3 = ~vec2<i32>(u_input.b, i32(-2147483648));
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(select(select(vec2<bool>(all(vec4<bool>(true, true, true, true)), false && true), vec2<bool>(any(vec3<bool>(false, false, false)), all(vec3<bool>(true, false, false))), false), vec2<bool>(global2.x > 8727i, !(!false)), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), false))));
    let var_1 = vec4<u32>(0u, dot(max(~vec4<u32>(1u, u_input.d, 28884u, u_input.d), select(vec4<u32>(17522u, u_input.a.x, 24616u, 4294967295u), vec4<u32>(u_input.c, u_input.a.x, 0u, u_input.a.x), vec4<bool>(true, false, true, false))) % vec4<u32>(~5853u, u_input.c & 1u, 1u, select(18786u, 1u, true)), vec4<u32>(u_input.a.x, 1u, func_1(vec2<u32>(u_input.a.x, u_input.d), vec4<i32>(global2.x, -12593i, global2.x, global2.x), u_input.d), 1u) * u_input.a), ~(~(~5144u)) % 1u, u_input.d);
    var var_2 = func_2(false, Struct_3(vec4<i32>(firstLeadingBit(func_3(vec4<bool>(false, true, false, var_0))), (global2.x & global2.x) / -u_input.b, min(firstLeadingBit(u_input.b), -global2.x), global2.x), u_input.b <= func_3(vec4<bool>(var_0, var_0, false, var_0)), Struct_2(!(!vec4<bool>(false, false, false, var_0))), func_5(-134f, Struct_2(!vec4<bool>(false, var_0, true, false)), Struct_1(exp2(168f))), ~(select(var_1.xx, vec2<u32>(var_1.x, var_1.x), true) * min(var_1.zz, u_input.a.xz))), func_2(!(~1064u > ~u_input.d), Struct_3(~vec4<i32>(u_input.b, 2147483647i, -23454i, u_input.b), !(!var_0), Struct_2(select(vec4<bool>(true, true, var_0, true), vec4<bool>(false, false, var_0, var_0), var_0)), Struct_1(global0[min(u_input.a.x, u_input.a.x)]), ~var_1.yz << firstLeadingBit(var_1.yw)), func_2(all(vec4<bool>(true, false, var_0, var_0)), Struct_3(~vec4<i32>(global2.x, 10944i, -27918i, 0i), false, func_2(var_0, Struct_3(vec4<i32>(-6122i, 2147483647i, global2.x, -38628i), true, Struct_2(vec4<bool>(var_0, true, var_0, false)), Struct_1(global0[u_input.a.x]), var_1.yz), Struct_2(vec4<bool>(false, var_0, true, true)), Struct_2(vec4<bool>(true, var_0, var_0, var_0))), func_5(279f, Struct_2(vec4<bool>(var_0, false, true, var_0)), Struct_1(-1630f)), var_1.xy), func_2(!true, Struct_3(vec4<i32>(8085i, -1i, global2.x, 12390i), false, Struct_2(vec4<bool>(true, var_0, var_0, false)), Struct_1(global0[u_input.d]), u_input.a.wy), func_2(var_0, Struct_3(vec4<i32>(u_input.b, global2.x, 0i, u_input.b), var_0, Struct_2(vec4<bool>(false, var_0, false, var_0)), Struct_1(2083f), vec2<u32>(40898u, var_1.x)), Struct_2(vec4<bool>(false, false, var_0, var_0)), Struct_2(vec4<bool>(var_0, var_0, true, false))), Struct_2(vec4<bool>(false, true, var_0, false))), Struct_2(!vec4<bool>(true, var_0, false, var_0))), Struct_2(select(vec4<bool>(false, var_0, var_0, false), !vec4<bool>(true, var_0, false, var_0), var_0))), func_2(!var_0, Struct_3(vec4<i32>(global2.x, u_input.b, global2.x, u_input.b) - select(vec4<i32>(1i, global2.x, global2.x, 14408i), vec4<i32>(0i, -1i, -3776i, 8117i), false), var_0, func_2(false, Struct_3(vec4<i32>(-22240i, 0i, -1i, -30299i), false, Struct_2(vec4<bool>(true, var_0, var_0, var_0)), Struct_1(837f), vec2<u32>(29003u, var_1.x)), func_2(var_0, Struct_3(vec4<i32>(global2.x, global2.x, global2.x, i32(-2147483648)), false, Struct_2(vec4<bool>(true, var_0, true, var_0)), Struct_1(global0[u_input.d]), u_input.a.wx), Struct_2(vec4<bool>(true, var_0, false, var_0)), Struct_2(vec4<bool>(var_0, var_0, var_0, false))), func_2(true, Struct_3(vec4<i32>(-9389i, u_input.b, global2.x, -1i), true, Struct_2(vec4<bool>(var_0, var_0, var_0, false)), Struct_1(global0[var_1.x]), vec2<u32>(var_1.x, var_1.x)), Struct_2(vec4<bool>(true, false, var_0, var_0)), Struct_2(vec4<bool>(var_0, var_0, false, true)))), func_5(306f / global0[var_1.x], Struct_2(vec4<bool>(var_0, var_0, false, true)), func_5(-724f, Struct_2(vec4<bool>(true, var_0, var_0, true)), Struct_1(global0[5020u]))), countOneBits(vec2<u32>(var_1.x, var_1.x)) + vec2<u32>(var_1.x, var_1.x)), func_2(!func_2(var_0, Struct_3(vec4<i32>(global2.x, 0i, 0i, u_input.b), true, Struct_2(vec4<bool>(false, var_0, true, false)), Struct_1(1673f), var_1.xz), Struct_2(vec4<bool>(var_0, var_0, var_0, var_0)), Struct_2(vec4<bool>(var_0, false, false, true))).a.x, Struct_3(vec4<i32>(u_input.b, u_input.b, -26623i, -1i) * vec4<i32>(u_input.b, u_input.b, u_input.b, global2.x), var_0, func_2(var_0, Struct_3(vec4<i32>(global2.x, 54510i, global2.x, u_input.b), true, Struct_2(vec4<bool>(true, false, var_0, var_0)), Struct_1(global0[72855u]), vec2<u32>(0u, 23628u)), Struct_2(vec4<bool>(var_0, var_0, var_0, var_0)), Struct_2(vec4<bool>(false, var_0, true, var_0))), Struct_1(-1000f), vec2<u32>(u_input.a.x, 23868u) % u_input.a.ww), Struct_2(vec4<bool>(false, var_0, var_0, var_0)), Struct_2(vec4<bool>(true, var_0, true, true))), Struct_2(select(vec4<bool>(var_0, true, false, false), vec4<bool>(var_0, var_0, var_0, var_0), !vec4<bool>(var_0, var_0, var_0, true)))));
    let var_3 = func_2(var_2.a.x, Struct_3(select(vec4<i32>(-(-46478i), 1i, 14731i ^ -2952i, countOneBits(i32(-2147483648))), max(-vec4<i32>(u_input.b, 30090i, u_input.b, -59412i), vec4<i32>(-9767i, global2.x, global2.x, global2.x)), var_2.a.x), false, Struct_2(vec4<bool>(true && var_0, true, var_2.a.x, any(vec3<bool>(false, var_2.a.x, var_2.a.x)))), func_5(-(-global0[1u]), Struct_2(select(var_2.a, vec4<bool>(var_2.a.x, var_0, false, var_0), vec4<bool>(var_2.a.x, var_0, var_0, var_0))), Struct_1(global0[u_input.a.x | 68051u])), u_input.a.xw), func_2(var_0, Struct_3(abs(~vec4<i32>(-14913i, global2.x, i32(-2147483648), -1i)), var_2.a.x, func_2(all(var_2.a.ww), Struct_3(vec4<i32>(-15666i, 53432i, u_input.b, 1i), var_0, Struct_2(var_2.a), Struct_1(global0[var_1.x]), u_input.a.wx), Struct_2(var_2.a), Struct_2(var_2.a)), Struct_1(-global0[0u]), clamp(var_1.yx, vec2<u32>(var_1.x, var_1.x), ~var_1.zz)), Struct_2(!var_2.a), Struct_2(vec4<bool>(false, all(vec4<bool>(true, var_0, var_2.a.x, var_0)), !false, !var_0))), func_2(!var_0, Struct_3(abs(vec4<i32>(-1i, u_input.b, -1i, u_input.b)), false, func_2(4294967295u >= u_input.d, Struct_3(vec4<i32>(u_input.b, u_input.b, -11248i, -17744i), true, Struct_2(var_2.a), Struct_1(global0[u_input.c]), vec2<u32>(52985u, 4294967295u)), Struct_2(vec4<bool>(true, var_0, true, var_2.a.x)), Struct_2(var_2.a)), func_5(global0[var_1.x] / global0[0u], func_2(var_0, Struct_3(vec4<i32>(u_input.b, 8875i, global2.x, global2.x), true, Struct_2(vec4<bool>(var_2.a.x, false, true, var_2.a.x)), Struct_1(global0[4294967295u]), vec2<u32>(var_1.x, 1u)), Struct_2(vec4<bool>(true, var_2.a.x, var_0, false)), Struct_2(var_2.a)), func_5(global0[17590u], Struct_2(var_2.a), Struct_1(193f))), abs(vec2<u32>(43344u, 77195u))), func_2(var_2.a.x | !var_0, Struct_3(vec4<i32>(-88647i, i32(-2147483648), 1i, global2.x) | vec4<i32>(-385i, global2.x, u_input.b, i32(-2147483648)), var_0, Struct_2(var_2.a), Struct_1(global0[0u]), clamp(vec2<u32>(var_1.x, 1u), u_input.a.wz, u_input.a.zz)), Struct_2(func_2(var_0, Struct_3(vec4<i32>(global2.x, u_input.b, -36304i, global2.x), true, Struct_2(vec4<bool>(true, var_0, false, var_0)), Struct_1(global0[var_1.x]), vec2<u32>(19649u, u_input.c)), Struct_2(var_2.a), Struct_2(var_2.a)).a), func_2(true, Struct_3(vec4<i32>(-14024i, 39523i, -1i, global2.x), var_0, Struct_2(vec4<bool>(var_0, true, true, var_2.a.x)), Struct_1(global0[16560u]), vec2<u32>(u_input.a.x, var_1.x)), func_2(var_2.a.x, Struct_3(vec4<i32>(global2.x, global2.x, global2.x, -22371i), true, Struct_2(var_2.a), Struct_1(661f), vec2<u32>(20280u, 7047u)), Struct_2(var_2.a), Struct_2(vec4<bool>(false, var_2.a.x, false, var_0))), func_2(true, Struct_3(vec4<i32>(u_input.b, 24294i, global2.x, u_input.b), var_2.a.x, Struct_2(vec4<bool>(false, true, true, true)), Struct_1(1000f), vec2<u32>(73683u, 60149u)), Struct_2(var_2.a), Struct_2(vec4<bool>(false, false, false, false))))), func_2((global0[var_1.x] * 494f) <= global0[51420u], Struct_3(-vec4<i32>(u_input.b, -28480i, 2862i, -1i), -909f != -1225f, func_2(var_2.a.x, Struct_3(vec4<i32>(-1i, 1i, global2.x, -27307i), true, Struct_2(vec4<bool>(var_2.a.x, false, var_0, var_0)), Struct_1(-938f), vec2<u32>(1u, 4294967295u)), Struct_2(var_2.a), Struct_2(var_2.a)), Struct_1(global0[4294967295u]), vec2<u32>(29300u, u_input.d)), func_2(true, Struct_3(vec4<i32>(3405i, u_input.b, -59812i, i32(-2147483648)), false, Struct_2(vec4<bool>(true, true, var_0, var_2.a.x)), Struct_1(475f), vec2<u32>(var_1.x, 0u)), Struct_2(var_2.a), func_2(true, Struct_3(vec4<i32>(14971i, global2.x, 5479i, global2.x), true, Struct_2(vec4<bool>(false, var_2.a.x, var_0, var_0)), Struct_1(global0[var_1.x]), var_1.xx), Struct_2(var_2.a), Struct_2(vec4<bool>(true, var_0, true, var_2.a.x)))), Struct_2(var_2.a)))).a.x;
    var var_4 = !select((-global0[51627u] * -287f) != sign(global0[u_input.d]), !var_2.a.x, !var_2.a.x);
    let var_5 = Struct_2(vec4<bool>(any(vec3<bool>(var_0, global0[1u] != global0[73534u], true)), all(vec3<bool>(true, false, true)) && true, var_3, all(!var_2.a.zw)));
    let var_6 = var_1;
    let var_7 = Struct_2(vec4<bool>(select(any(vec4<bool>(var_0, true, var_3, var_5.a.x)), all(!vec4<bool>(false, var_3, true, true)), !(u_input.d == 3897u)), false, var_3, var_5.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(-906f, (~(vec2<u32>(17096u, var_6.x) + vec2<u32>(0u, 0u)) / vec2<u32>(var_6.x, 4294967295u)) / vec2<u32>(4294967295u, var_1.x), floor(-252f), ~vec3<u32>(clamp(var_1.x, 23989u, 0u | 34096u), 0u, ~45364u));
}

