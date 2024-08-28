// {"0:0":[70,116,171,175,225,125,156,200,93,101,146,245,134,51,126,192,36,215,154,161,170,41,86,186,66,39,122,158,195,44,101,183,225,150,136,243,255,91,252,127,1,241,255,30,161,119,167,233]}
// Seed: 15630320969039534945

struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec3<bool>,
    d: vec2<u32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(Struct_1(vec4<u32>(1u, 4294967295u, 29272u, 4294967295u), 957f, vec3<bool>(true, false, false), vec2<u32>(4294967295u, 1u), 220f), 0i), Struct_2(Struct_1(vec4<u32>(13090u, 1u, 31298u, 4832u), -873f, vec3<bool>(true, false, true), vec2<u32>(45340u, 51305u), -1489f), 1i), Struct_2(Struct_1(vec4<u32>(8573u, 0u, 1u, 19965u), 1891f, vec3<bool>(true, false, true), vec2<u32>(19128u, 1u), -557f), 1i), Struct_2(Struct_1(vec4<u32>(4294967295u, 4082u, 1u, 4294967295u), -2018f, vec3<bool>(true, false, false), vec2<u32>(4606u, 4294967295u), 1000f), i32(-2147483648)), Struct_2(Struct_1(vec4<u32>(29704u, 31141u, 1u, 0u), -238f, vec3<bool>(false, true, true), vec2<u32>(0u, 17175u), 740f), 42949i), Struct_2(Struct_1(vec4<u32>(0u, 1u, 0u, 1u), 1286f, vec3<bool>(false, false, true), vec2<u32>(43527u, 28444u), -1000f), 0i), Struct_2(Struct_1(vec4<u32>(28966u, 0u, 0u, 4294967295u), 1000f, vec3<bool>(false, false, false), vec2<u32>(51163u, 27731u), -545f), -1i), Struct_2(Struct_1(vec4<u32>(1u, 24106u, 1u, 4294967295u), 1564f, vec3<bool>(false, false, false), vec2<u32>(133549u, 1u), -1000f), -9871i), Struct_2(Struct_1(vec4<u32>(4294967295u, 0u, 1u, 19387u), -333f, vec3<bool>(false, false, false), vec2<u32>(26675u, 59668u), 702f), 53908i), Struct_2(Struct_1(vec4<u32>(2950u, 4294967295u, 29298u, 101475u), -322f, vec3<bool>(false, true, true), vec2<u32>(1u, 2665u), -1045f), 88778i), Struct_2(Struct_1(vec4<u32>(19635u, 1u, 1u, 4294967295u), 788f, vec3<bool>(true, false, false), vec2<u32>(41193u, 1u), -1182f), -6211i), Struct_2(Struct_1(vec4<u32>(52041u, 4294967295u, 4294967295u, 0u), 1825f, vec3<bool>(true, true, true), vec2<u32>(1u, 64621u), -1533f), 1i));

var<private> global1: array<vec3<bool>, 17> = array<vec3<bool>, 17>(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true));

var<private> global2: array<bool, 8> = array<bool, 8>(true, true, true, true, false, true, false, true);

var<private> global3: f32;

var<private> global4: array<i32, 29> = array<i32, 29>(24212i, -14284i, -6512i, 2121i, 1i, 1i, 26775i, 0i, -40723i, 2147483647i, i32(-2147483648), i32(-2147483648), -21796i, i32(-2147483648), -46621i, -20774i, 12889i, -21886i, 2147483647i, -19593i, -19030i, 27192i, 2147483647i, -57725i, -16090i, -35644i, 2028i, 1023i, i32(-2147483648));

fn func_3(arg_0: i32) -> u32 {
    let var_0 = trunc((-(vec3<f32>(-494f, 1470f, -599f) - vec3<f32>(-206f, -530f, -1903f)) + max(vec3<f32>(1000f, -711f, 319f) + vec3<f32>(1469f, 734f, 1326f), max(vec3<f32>(1000f, -661f, -152f), vec3<f32>(551f, 189f, -1313f)))) * -(-ceil(vec3<f32>(1092f, -1762f, -375f))));
    let var_1 = vec2<i32>(~1i, arg_0 << reverseBits(0u));
    global0 = array<Struct_2, 12>();
    global0 = array<Struct_2, 12>();
    return u_input.b.x;
}

fn func_2(arg_0: f32, arg_1: vec3<f32>) -> u32 {
    global0 = array<Struct_2, 12>();
    global3 = arg_0;
    let var_0 = Struct_3(!(!vec3<bool>(!false, global2[30047u * 1u], any(vec2<bool>(global2[u_input.b.x], false)))), Struct_1(vec4<u32>(4294967295u, u_input.b.x, func_3(1i), 1u), arg_1.x, global1[u_input.c.x & u_input.b.x], u_input.c.zy, arg_0));
    let var_1 = all(select(vec4<bool>(all(vec3<bool>(true, var_0.b.c.x, var_0.b.c.x)), !(var_0.b.c.x != global2[var_0.b.a.x]), var_0.a.x | select(false, false, false), global2[abs(var_0.b.d.x) | (1u ^ 1u)]), vec4<bool>(select(true, 410f > arg_0, !true), all(!global1[66752u]), all(!vec2<bool>(false, true)), var_0.a.x), !false));
    var var_2 = u_input.b.zz;
    return 4294967295u - dot(vec2<u32>(firstLeadingBit(var_2.x ^ var_2.x), ~1u), firstLeadingBit(var_0.b.a.xx));
}

fn func_1(arg_0: i32, arg_1: Struct_4) -> vec4<u32> {
    let var_0 = Struct_1(u_input.b % vec4<u32>(max(0u, u_input.c.x) & func_2(-1855f, vec3<f32>(1818f, -1170f, -699f)), 11411u, ~u_input.b.x, u_input.b.x), -(-(212f - -1582f)) * select(max(-1786f, round(-165f)), floor(785f - -1199f), global2[u_input.b.x] | !true), global1[24976u], vec2<u32>(select(u_input.c.x, 1u, all(select(vec3<bool>(global2[u_input.c.x], arg_1.a, arg_1.a), vec3<bool>(true, false, false), global1[u_input.c.x]))), func_2(-(-778f), vec3<f32>(-1200f, -359f * -582f, 276f))), floor(-202f / -490f) / ((-1000f * (503f / -1150f)) + round(-184f)));
    var var_1 = -(vec4<f32>(var_0.b, var_0.b, floor(exp2(var_0.e)), abs(1706f)) - sign((vec4<f32>(var_0.e, -729f, 683f, 189f) * vec4<f32>(var_0.b, var_0.e, var_0.e, 1750f)) * -vec4<f32>(var_0.e, var_0.e, -657f, var_0.b)));
    let var_2 = abs((vec3<i32>(~(-1i), ~arg_0, 15733i) << min(clamp(vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(var_0.d.x, 85378u, u_input.c.x), var_0.a.yyw), countOneBits(vec3<u32>(9161u, 20077u, u_input.c.x)))) << firstTrailingBit(u_input.b.ywz));
    global3 = var_1.x;
    var var_3 = Struct_3(select(select(!select(vec3<bool>(arg_1.a, arg_1.a, arg_1.a), global1[1u], true), !vec3<bool>(true, true, true), vec3<bool>(all(vec4<bool>(false, global2[u_input.c.x], global2[var_0.d.x], var_0.c.x)), !true, var_0.c.x)), global1[reverseBits(var_0.a.x)], vec3<bool>(global2[~(0u | var_0.d.x)], any(select(vec4<bool>(var_0.c.x, var_0.c.x, global2[48579u], arg_1.a), vec4<bool>(true, arg_1.a, var_0.c.x, false), true)), (global4[var_0.d.x] + arg_1.b) <= -2587i)), var_0);
    return var_3.b.a;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: bool) -> Struct_4 {
    var var_0 = -(-ceil(arg_0.b));
    let var_1 = u_input.c.zy & vec2<u32>(abs(abs(0u - arg_0.d.x)), dot(arg_0.a.yw, arg_0.d));
    global4 = array<i32, 29>();
    let var_2 = global1[u_input.c.x ^ (1u ^ min(arg_0.a.x, ~u_input.b.x))];
    let var_3 = Struct_1(vec4<u32>(var_1.x >> abs(0u), dot(u_input.b / u_input.b, abs(~vec4<u32>(arg_0.d.x, 1u, 0u, 0u))), firstTrailingBit(~clamp(12693u, 0u, 1u)), ~var_1.x), (-1029f - trunc(arg_0.e)) / 1000f, !select(select(select(vec3<bool>(false, var_2.x, arg_0.c.x), arg_0.c, vec3<bool>(true, arg_1.x, true)), !vec3<bool>(true, global2[u_input.c.x], true), arg_0.c), !arg_0.c, any(!vec4<bool>(true, arg_1.x, false, arg_2))), reverseBits(arg_0.a.wx), arg_0.b - 268f);
    return Struct_4(u_input.a >= u_input.a, -9691i);
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_4) -> vec3<f32> {
    var var_0 = arg_1;
    global0 = array<Struct_2, 12>();
    let var_1 = step(floor(-(-(-657f))) / arg_2.a.b, -(-arg_2.a.e - (arg_2.a.e * var_0.a.b)));
    var var_2 = Struct_3(arg_2.a.c, Struct_1(min(max(vec4<u32>(94u, arg_1.a.a.x, 4294967295u, 4294967295u) - vec4<u32>(23625u, arg_2.a.d.x, 7204u, 1u), ~vec4<u32>(var_0.a.a.x, 60392u, 2040u, arg_1.a.d.x)), arg_1.a.a), 1255f, !(!select(vec3<bool>(false, arg_1.a.c.x, true), vec3<bool>(false, false, false), vec3<bool>(global2[4294967295u], arg_3.a, arg_2.a.c.x))), ~var_0.a.a.zw, -693f));
    let var_3 = max(vec4<f32>(step(439f + var_2.b.b, 752f) / ((var_2.b.e + var_2.b.e) / (1773f / var_0.a.e)), ((arg_1.a.b - -1031f) + 359f) + -(-1267f - var_0.a.b), 1305f + 218f, var_1), abs(vec4<f32>(-1310f, round(var_1 * -239f), min(arg_1.a.e, 536f / arg_1.a.e), var_2.b.b)));
    return var_3.wxx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = step(func_5(~firstLeadingBit(u_input.c & u_input.b.yyy), Struct_2(Struct_1(vec4<u32>(10665u, 1u, 84254u, 0u), 166f - 1000f, !global1[u_input.c.x], vec2<u32>(63847u, u_input.c.x), 839f / 451f), abs(2147483647i >> 4294967295u)), global0[101252u], func_4(Struct_1(func_1(-1i, Struct_4(false, u_input.a)), -930f, !global1[u_input.c.x], vec2<u32>(72231u, 37379u) * u_input.c.zy, exp2(1300f)), !select(vec2<bool>(true, true), vec2<bool>(global2[u_input.b.x], global2[4294967295u]), true), global2[4294967295u])), -select(vec3<f32>(exp2(686f), -1000f, -817f), -vec3<f32>(1000f, -531f, 553f) + (vec3<f32>(-1000f, -1523f, -1000f) * vec3<f32>(-1351f, 1051f, -719f)), vec3<bool>(global2[45022u << 7810u], true, false)));
    let var_1 = vec4<u32>(u_input.c.x, (4294967295u ^ 0u) & u_input.c.x, u_input.c.x, 15610u / 1u) * u_input.b;
    let var_2 = 0i;
    let var_3 = select(global1[reverseBits(~(~dot(vec4<u32>(192u, var_1.x, var_1.x, var_1.x), u_input.b)))], global1[~50118u], all(vec3<bool>(any(vec4<bool>(true, global2[var_1.x], global2[var_1.x], global2[u_input.c.x])), (-1649f <= var_0.x) & (u_input.b.x == var_1.x), !global2[var_1.x >> 29061u])));
    global0 = array<Struct_2, 12>();
    global3 = -354f;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-(-(-178f)), func_5(vec3<u32>(u_input.b.x, 4294967295u, var_1.x), global0[35186u], Struct_2(Struct_1(vec4<u32>(21675u, var_1.x, 71769u, 36359u), 1157f, vec3<bool>(false, false, var_3.x), vec2<u32>(31686u, u_input.b.x), var_0.x), 25581i), Struct_4(true, 19897i)).x * exp2(2222f), exp2(floor(1054f) + -(-613f)), 399f));
}

