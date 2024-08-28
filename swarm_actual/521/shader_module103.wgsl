// {"0:0":[175,196,0,93,206,53,251,1,186,135,151,211,179,128,173,147,78,238,184,0,117,138,20,226,97,105,118,83,118,98,197,16,132,112,89,176,151,80,19,37,13,1,152,250,41,152,189,10,29,253,176,155,146,52,130,149,41,164,172,228,52,10,74,185]}
// Seed: 12836462999500191514

struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
    c: vec2<i32>,
    d: f32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 21> = array<vec4<bool>, 21>(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true));

var<private> global1: Struct_1 = Struct_1(vec3<f32>(-1000f, 793f, 669f), vec4<bool>(true, false, true, false), 19037u);

var<private> global2: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(Struct_1(vec3<f32>(-1643f, 1259f, 287f), vec4<bool>(false, false, true, true), 27612u), 664f), Struct_2(Struct_1(vec3<f32>(-1261f, 590f, -2297f), vec4<bool>(false, true, false, true), 6373u), 930f), Struct_2(Struct_1(vec3<f32>(-847f, 517f, -922f), vec4<bool>(false, false, false, false), 24669u), -2372f), Struct_2(Struct_1(vec3<f32>(-1087f, -1106f, -1000f), vec4<bool>(true, false, false, true), 1u), -747f), Struct_2(Struct_1(vec3<f32>(802f, -829f, -2035f), vec4<bool>(true, false, false, false), 4294967295u), -356f), Struct_2(Struct_1(vec3<f32>(-128f, -180f, 143f), vec4<bool>(false, true, true, false), 489u), -308f), Struct_2(Struct_1(vec3<f32>(-1074f, 757f, -1000f), vec4<bool>(false, true, true, true), 1u), 1045f), Struct_2(Struct_1(vec3<f32>(810f, 380f, 840f), vec4<bool>(true, false, true, false), 21002u), 232f), Struct_2(Struct_1(vec3<f32>(-326f, 953f, 322f), vec4<bool>(false, true, true, true), 4294967295u), 205f), Struct_2(Struct_1(vec3<f32>(-280f, 1700f, 425f), vec4<bool>(false, true, false, true), 0u), 2169f), Struct_2(Struct_1(vec3<f32>(811f, 412f, -1087f), vec4<bool>(false, false, false, false), 106986u), -705f), Struct_2(Struct_1(vec3<f32>(315f, -212f, 899f), vec4<bool>(true, false, true, false), 4294967295u), -701f), Struct_2(Struct_1(vec3<f32>(205f, 2026f, 2231f), vec4<bool>(false, true, false, true), 64177u), -1326f), Struct_2(Struct_1(vec3<f32>(-543f, -1000f, -339f), vec4<bool>(true, false, false, true), 4294967295u), -829f), Struct_2(Struct_1(vec3<f32>(-599f, 272f, 1258f), vec4<bool>(true, false, true, true), 4294967295u), 737f), Struct_2(Struct_1(vec3<f32>(-289f, 361f, -657f), vec4<bool>(true, true, true, false), 0u), -278f), Struct_2(Struct_1(vec3<f32>(-766f, -435f, -315f), vec4<bool>(false, false, false, false), 4294967295u), 101f), Struct_2(Struct_1(vec3<f32>(683f, -922f, -1952f), vec4<bool>(true, false, false, true), 1331u), -262f), Struct_2(Struct_1(vec3<f32>(-817f, 423f, -1220f), vec4<bool>(true, true, true, true), 10965u), 1137f), Struct_2(Struct_1(vec3<f32>(741f, -1000f, 835f), vec4<bool>(false, true, true, true), 29203u), -761f), Struct_2(Struct_1(vec3<f32>(-1000f, 179f, 316f), vec4<bool>(true, true, true, false), 18213u), -278f), Struct_2(Struct_1(vec3<f32>(-594f, -992f, -1395f), vec4<bool>(true, true, false, true), 0u), 767f), Struct_2(Struct_1(vec3<f32>(-2299f, -1007f, -1000f), vec4<bool>(true, false, false, true), 13238u), -1620f), Struct_2(Struct_1(vec3<f32>(1000f, -542f, -1000f), vec4<bool>(false, false, false, false), 4294967295u), 516f), Struct_2(Struct_1(vec3<f32>(-1000f, 375f, 400f), vec4<bool>(false, true, true, true), 62174u), -694f), Struct_2(Struct_1(vec3<f32>(212f, -155f, -1180f), vec4<bool>(false, false, false, false), 1u), 1719f), Struct_2(Struct_1(vec3<f32>(993f, -153f, -1190f), vec4<bool>(true, false, false, false), 26633u), -2425f));

var<private> global3: array<vec4<f32>, 19>;

var<private> global4: array<Struct_3, 13>;

fn func_3(arg_0: f32) -> vec3<f32> {
    var var_0 = Struct_3(vec2<bool>(global1.b.x, all(global1.b.zyx)), -1i, ((~vec2<i32>(-71387i, u_input.a.x) & -vec2<i32>(810i, -18135i)) * -firstLeadingBit(u_input.a)) & u_input.a, arg_0);
    var var_1 = Struct_3(vec2<bool>(global1.b.x, !(!any(var_0.a))), var_0.c.x, var_0.c ^ ~(max(var_0.c, var_0.c) | (u_input.a * vec2<i32>(251i, u_input.a.x))), -(((1216f / -1000f) / -105f) * trunc(-1557f)));
    let var_2 = select(!(!vec4<bool>(var_1.a.x, !global1.b.x, -1i > var_0.b, var_1.a.x)), !(!select(global0[global1.c], vec4<bool>(var_1.a.x, true, false, true), all(vec2<bool>(var_0.a.x, var_0.a.x)))), vec4<bool>(!false, !true, global1.b.x & false, all(var_1.a)));
    let var_3 = Struct_4(select(!vec4<bool>(arg_0 < arg_0, global1.b.x, !true, var_0.a.x), vec4<bool>(!true != global1.b.x, false, (1056u << global1.c) >= ~12142u, dot(u_input.c, vec4<u32>(u_input.d, u_input.c.x, u_input.d, global1.c)) >= 0u), !all(select(var_0.a, var_2.xx, vec2<bool>(var_2.x, global1.b.x)))), Struct_3(!select(select(var_1.a, vec2<bool>(global1.b.x, false), vec2<bool>(var_0.a.x, global1.b.x)), vec2<bool>(var_2.x, global1.b.x), false), var_0.b, vec2<i32>(dot(reverseBits(vec3<i32>(-11102i, u_input.a.x, 871i)), vec3<i32>(var_0.c.x, -1i, 46719i)), min(-13201i, u_input.a.x | var_0.c.x)), -sign(-369f)), -(-(-trunc(vec4<f32>(var_1.d, 552f, var_0.d, arg_0)))));
    let var_4 = global2[~min(~((global1.c + u_input.b.x) / (10255u & global1.c)), global1.c)];
    return -global1.a;
}

fn func_2() -> Struct_4 {
    global3 = array<vec4<f32>, 19>();
    let var_0 = max(exp2(652f), abs(-(-803f)));
    var var_1 = Struct_2(Struct_1(-(-func_3(global1.a.x)), !vec4<bool>(global1.b.x, false, global1.b.x && global1.b.x, !true), u_input.d & (~global1.c + firstLeadingBit(4294967295u))), abs(-1569f));
    var var_2 = Struct_4(vec4<bool>(!true, false, global1.b.x || (all(vec3<bool>(false, false, global1.b.x)) != all(var_1.a.b.yy)), true), global4[~(~(~0u))], vec4<f32>(var_1.a.a.x, var_0, var_1.a.a.x * ((-323f - var_1.a.a.x) - -(-1678f)), var_0));
    let var_3 = Struct_4(var_1.a.b, Struct_3(!(!select(global1.b.xy, var_2.a.yz, var_2.a.x)), ~min(-u_input.a.x, min(u_input.a.x, i32(-2147483648))), ~(~(vec2<i32>(50078i, -1i) + u_input.a)), var_1.a.a.x), -vec4<f32>(-(var_0 - 976f), -global1.a.x, var_0 + var_1.b, var_1.a.a.x));
    return var_3;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_3) -> f32 {
    let var_0 = !false;
    global1 = Struct_1(vec3<f32>(-arg_1.a.x, ceil(sign(1728f) + arg_1.a.x), global1.a.x), !vec4<bool>(true, true, arg_2.x < ~62168i, true), ~global1.c);
    var var_1 = Struct_1(round(vec3<f32>(arg_1.a.x, floor(global1.a.x), -(arg_1.a.x - global1.a.x))), arg_1.b, ~(~(52971u - 22041u)) | ((~global1.c >> (global1.c >> 2919u)) ^ reverseBits(71271u)));
    var var_2 = func_2();
    global0 = array<vec4<bool>, 21>();
    return floor(global1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 27>();
    let var_0 = global1.b.wy;
    global2 = array<Struct_2, 27>();
    var var_1 = select(global1.b.yyz, vec3<bool>(any(select(vec4<bool>(false, var_0.x, true, false), vec4<bool>(var_0.x, false, true, var_0.x), global1.b)), any(vec4<bool>(any(global1.b.xxx), true, !false, global1.b.x)), global1.a.x > -(-global1.a.x)), global1.b.wxw);
    var_1 = !(!(!select(vec3<bool>(var_0.x, true, var_0.x), !global1.b.yzz, !vec3<bool>(global1.b.x, false, var_0.x))));
    var var_2 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(-func_1(1i | u_input.a.x, Struct_1(global1.a, !vec4<bool>(false, true, true, global1.b.x), dot(vec3<u32>(1u, 24518u, u_input.b.x), vec3<u32>(global1.c, global1.c, 51863u))), ~vec2<i32>(u_input.a.x, u_input.a.x) ^ vec2<i32>(23265i, u_input.a.x), global4[~u_input.b.x]), ~vec3<u32>(~abs(1u), 1u, ~global1.c));
}

