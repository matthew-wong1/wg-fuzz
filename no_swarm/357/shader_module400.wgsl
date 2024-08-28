// {"0:0":[242,142,169,180,133,31,171,220,116,55,107,46,209,183,71,212,155,8,199,95,188,113,246,56,28,123,207,78,234,109,103,135,205,238,109,181,19,157,124,74,62,1,3,13,213,226,33,171]}
// Seed: 9155018682355132365

struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: u32,
    d: vec3<f32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3() -> vec4<bool> {
    var var_0 = vec3<i32>(-1640i, ((u_input.a / -1i) ^ 0i) >> select(~dot(vec4<u32>(1u, 71316u, 43348u, 1u), vec4<u32>(1u, 18465u, 4294967295u, 0u)), clamp(8695u / 1u, 1u - 1u, 57682u), true), abs(select(u_input.a, reverseBits(u_input.b.x), 620f < -485f) / u_input.a));
    var_0 = u_input.b ^ (u_input.c * ~u_input.c);
    let var_1 = false;
    let var_2 = -(-vec3<f32>(1392f, -182f - 1000f, -1216f)) + vec3<f32>(1122f / step(-1666f, 442f + 666f), 777f + 1725f, -(-(-1000f)));
    var_0 = u_input.b;
    return !(!vec4<bool>(all(select(vec2<bool>(var_1, false), vec2<bool>(false, var_1), vec2<bool>(false, var_1))), var_1, any(select(vec4<bool>(var_1, false, true, false), vec4<bool>(false, var_1, var_1, var_1), var_1)), (var_1 | var_1) | true));
}

fn func_2(arg_0: f32) -> Struct_2 {
    var var_0 = !any(select(select(func_3(), vec4<bool>(true, false, false, false), false), vec4<bool>(true, select(true, false, false), false == true, !true), vec4<bool>(!false, true, false || true, arg_0 <= 135f)));
    var_0 = (arg_0 / arg_0) != (((-876f - 1500f) - trunc(arg_0)) / (-278f + -670f));
    var_0 = true;
    var_0 = 12264u <= (0u / firstLeadingBit(~48067u & ~1u));
    return Struct_2(trunc(arg_0 * ((-1393f + arg_0) / -arg_0)), u_input.b.x);
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: u32, arg_3: Struct_2) -> f32 {
    var var_0 = true;
    var var_1 = max(vec4<f32>(arg_0.a, exp2(arg_3.a), 1845f, -(-247f)), vec4<f32>(490f, floor(-(-207f / -1781f)), max(-1605f, 1351f), abs(arg_3.a * 227f)));
    var var_2 = vec4<u32>(~((~14100u >> 4294967295u) + arg_2), (dot(select(vec4<u32>(4294967295u, arg_2, 37087u, arg_1), vec4<u32>(137813u, 0u, 26149u, 4294967295u), false), vec4<u32>(1u, arg_2, 44303u, 9399u) & vec4<u32>(4294967295u, 4294967295u, 13517u, arg_2)) - arg_1) + arg_2, arg_2 + 20995u, 29160u);
    let var_3 = Struct_3(-min(-vec4<i32>(arg_3.b, -71895i, -1275i, u_input.b.x), vec4<i32>(i32(-2147483648), arg_3.b, -35229i, arg_0.b)) << (vec4<u32>(1u << 1u, 4294967295u, var_2.x - 31697u, ~1u) & ~(vec4<u32>(arg_1, 0u, 46722u, 30542u) / vec4<u32>(1u, var_2.x, 4294967295u, var_2.x))), (floor(var_1.yy) / var_1.ww) - (vec2<f32>(select(878f, arg_0.a, true), 167f / var_1.x) / var_1.xx), arg_2, vec3<f32>(-arg_0.a, -1654f - (var_1.x - var_1.x), exp2(max(-591f, arg_3.a))) * var_1.zyy, var_1.zw);
    let var_4 = !(!(false && true));
    return 426f;
}

fn func_5(arg_0: f32) -> Struct_1 {
    var var_0 = vec3<i32>(u_input.b.x | 2147483647i, -(~(-(0i - -1i))), u_input.c.x);
    let var_1 = -(-vec4<f32>(arg_0, func_4(Struct_2(arg_0, u_input.b.x), abs(15277u), firstTrailingBit(10695u), Struct_2(arg_0, var_0.x)), -(-108f), 1000f + -arg_0));
    let var_2 = false;
    var_0 = vec3<i32>(u_input.a, -22440i, 2147483647i);
    let var_3 = Struct_1(~1u, !(all(!vec3<bool>(true, true, var_2)) | any(!vec3<bool>(var_2, true, true))));
    return var_3;
}

fn func_1() -> Struct_1 {
    let var_0 = !select(!(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), false)), !(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false))), false == ((769f + 1056f) < -(-1613f)));
    var var_1 = func_5(func_4(func_2(2023f), ~(~4294967295u), 64728u % dot(vec3<u32>(54330u, 0u, 2033u), vec3<u32>(4294967295u, 3907u, 4294967295u)), func_2(-722f)) * -(913f + (371f * 1356f)));
    var var_2 = ~firstLeadingBit(~(~vec2<u32>(var_1.a, var_1.a)) | max(~vec2<u32>(var_1.a, var_1.a), vec2<u32>(var_1.a, var_1.a) - vec2<u32>(var_1.a, 4294967295u)));
    var var_3 = ceil(vec3<f32>(func_2(-244f).a, abs(881f / 545f) - -781f, exp2(-523f) + -sign(744f)));
    var_1 = Struct_1(~var_1.a & var_2.x, true);
    return func_5(-358f);
}

fn func_6(arg_0: bool, arg_1: Struct_1, arg_2: i32, arg_3: Struct_3) -> vec3<i32> {
    var var_0 = func_3().xw;
    let var_1 = ~(firstLeadingBit(~vec2<u32>(arg_3.c, arg_1.a)) - firstLeadingBit(~vec2<u32>(arg_1.a, 0u))) | (vec2<u32>((arg_1.a - arg_1.a) ^ 109376u, ~49660u) / vec2<u32>(38086u, arg_3.c ^ arg_3.c));
    var_0 = select(func_3().xz, select(select(select(select(vec2<bool>(false, true), vec2<bool>(var_0.x, arg_0), var_0.x), select(vec2<bool>(true, var_0.x), vec2<bool>(false, true), var_0.x), false), !vec2<bool>(arg_0, true), vec2<bool>(arg_1.b, select(true, arg_0, arg_0))), !func_3().xz, !vec2<bool>(false, false)), select(select(!vec2<bool>(arg_0, arg_0), vec2<bool>(true, 1i >= u_input.c.x), !any(vec3<bool>(true, var_0.x, true))), select(vec2<bool>(!arg_0, arg_1.b), !(!vec2<bool>(false, arg_0)), !(!vec2<bool>(false, true))), true | true));
    let var_2 = ~(clamp(~vec3<u32>(23223u, 0u, var_1.x), vec3<u32>(var_1.x, 0u, 1790u) * vec3<u32>(arg_3.c, arg_1.a, arg_1.a), vec3<u32>(4294967295u, var_1.x, arg_3.c)) & vec3<u32>(4294967295u >> arg_1.a, ~4294967295u, var_1.x)) | firstLeadingBit(~(clamp(vec3<u32>(arg_1.a, 49506u, arg_3.c), vec3<u32>(var_1.x, 4294967295u, arg_1.a), vec3<u32>(0u, var_1.x, arg_3.c)) % abs(vec3<u32>(67210u, 4294967295u, arg_1.a))));
    var_0 = vec2<bool>(func_3().x, all(vec2<bool>(false, !var_0.x)));
    return firstTrailingBit(arg_3.a.zxx);
}

fn func_7(arg_0: vec3<i32>, arg_1: bool, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = arg_2.x;
    let var_1 = vec3<u32>(func_5(floor(func_4(Struct_2(-512f, u_input.b.x), arg_2.x, 0u, Struct_2(431f, u_input.c.x)) - 398f)).a, ~(~reverseBits(arg_2.x) << (reverseBits(4294967295u) & arg_2.x)), arg_2.x);
    var_0 = clamp(var_1.x, var_1.x, var_1.x);
    var var_2 = func_5(round(ceil(-(-1000f))));
    var_2 = Struct_1(arg_2.x, all(func_3().www));
    return Struct_1(54197u, !false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(func_6(true, func_1(), ~func_2(1313f + -1623f).b, Struct_3(~firstTrailingBit(vec4<i32>(-36981i, u_input.b.x, u_input.c.x, 4328i)), vec2<f32>(round(-972f), -1691f), func_1().a, -(-vec3<f32>(1000f, 777f, 448f)), select(vec2<f32>(-519f, 466f), vec2<f32>(-2510f, 1830f), true) * floor(vec2<f32>(384f, 1906f)))), select((dot(vec2<u32>(13030u, 0u), vec2<u32>(29000u, 82766u)) <= (928u % 16163u)) & func_1().b, func_1().b, ~(~4294967295u) < (12880u - 22454u)), ~(~vec4<u32>(0u, 2940u, 4294967295u, 52946u)) - vec4<u32>(abs(2820u), dot(firstTrailingBit(vec4<u32>(1u, 38563u, 4294967295u, 0u)), vec4<u32>(0u, 0u, 4294967295u, 53819u)), (1u << 27391u) % ~4294967295u, ~1u));
    var var_1 = round(-sign((625f / -488f) + 550f));
    var_0 = Struct_1((var_0.a / ~var_0.a) ^ var_0.a, true);
    var var_2 = select(vec4<i32>(69245i - -39462i, u_input.c.x, abs(-u_input.c.x), u_input.a), abs(abs(max(vec4<i32>(u_input.b.x, i32(-2147483648), 18086i, u_input.c.x), vec4<i32>(u_input.c.x, u_input.b.x, -36767i, 30968i)))), vec4<bool>(all(vec3<bool>(true, var_0.b, false)), var_0.b, var_0.b, false)) >> select(~(~vec4<u32>(51641u, var_0.a, 58147u, 1u)) - select(firstLeadingBit(vec4<u32>(var_0.a, var_0.a, var_0.a, 4294967295u)), ~vec4<u32>(var_0.a, 1u, 0u, var_0.a), func_3()), countOneBits(abs(firstTrailingBit(vec4<u32>(var_0.a, 33204u, var_0.a, 1u)))), false);
    var_0 = func_7(select(u_input.b, ~u_input.c + firstLeadingBit(~u_input.c), vec3<bool>(!(!var_0.b), !(1u > 75164u), !var_0.b)), !(!(~var_2.x >= (u_input.c.x & var_2.x))), vec4<u32>(~var_0.a >> 43612u, select(1894u, 0u, var_0.b), 1u, ~0u) ^ (vec4<u32>(var_0.a, ~var_0.a, ~var_0.a, select(var_0.a, var_0.a, var_0.b)) << vec4<u32>(~1u, abs(1u), 1u, 35194u)));
    var var_3 = func_2(275f);
    var var_4 = Struct_3(-(-vec4<i32>(~u_input.b.x, var_3.b - var_2.x, ~var_3.b, -var_3.b)), -((-vec2<f32>(var_3.a, var_3.a) - vec2<f32>(351f, -1531f)) + vec2<f32>(-477f, -(-387f))), ~abs(firstTrailingBit(1u) & (var_0.a >> 4294967295u)), -(((vec3<f32>(var_3.a, -1022f, var_3.a) * vec3<f32>(var_3.a, var_3.a, var_3.a)) / (vec3<f32>(-2229f, 271f, 480f) / vec3<f32>(-1551f, var_3.a, 1011f))) - (vec3<f32>(1273f, -139f, 733f) / vec3<f32>(1433f, -129f, var_3.a))), vec2<f32>((floor(-161f) - -425f) - (-438f * 507f), -1000f));
    let var_5 = 4294967295u;
    var var_6 = Struct_3(max(vec4<i32>(var_3.b, var_3.b << (var_4.c >> 0u), -u_input.b.x | var_4.a.x, -(-var_2.x)), ~vec4<i32>(~var_4.a.x, var_3.b, ~1i, var_2.x ^ 1i)), var_4.e, var_4.c, vec3<f32>(sign(-var_4.d.x), var_3.a, -var_4.d.x), step(vec2<f32>(-(846f * -1090f), -trunc(var_3.a)), var_4.b - var_4.e));
    let x = u_input.a;
    s_output = StorageBuffer(func_6(!(all(vec3<bool>(true, true, true)) & true), Struct_1(var_6.c, any(vec3<bool>(var_0.b, var_0.b, true))), ~(-(i32(-2147483648))) >> clamp(var_4.c, var_0.a, func_7(var_2.wwx, false, vec4<u32>(26866u, var_4.c, 4294967295u, var_4.c)).a), Struct_3((vec4<i32>(47351i, var_4.a.x, -14605i, 0i) << vec4<u32>(0u, var_4.c, 2089u, 4488u)) << (vec4<u32>(var_5, 29485u, var_4.c, var_5) % vec4<u32>(40181u, 430u, var_6.c, 58380u)), vec2<f32>(-(-1113f), min(-1000f, 1209f)), var_5, min(-var_4.d, var_6.d), vec2<f32>(-1000f, var_3.a / var_6.d.x))).x, -(-vec2<i32>(-1i, -19835i)), ~(~firstLeadingBit(vec4<u32>(1u, var_4.c, var_5, var_5)) & ~(~vec4<u32>(4294967295u, 65999u, 0u, var_6.c))));
}

