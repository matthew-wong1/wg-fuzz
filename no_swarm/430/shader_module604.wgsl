// {"0:0":[249,1,126,129,87,17,51,202,80,153,68,226,140,134,153,189]}
// Seed: 2635802133535570288

struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec4<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 16>;

fn func_3(arg_0: vec2<i32>, arg_1: u32, arg_2: i32) -> vec4<f32> {
    var var_0 = Struct_4(vec2<bool>(!any(vec4<bool>(true, false, true, false)), any(vec2<bool>(59729u < arg_1, false))));
    let var_1 = var_0.a;
    var var_2 = Struct_3(Struct_1((vec3<i32>(arg_2, 29040i, arg_0.x) - clamp(vec3<i32>(arg_2, -22969i, i32(-2147483648)), u_input.a, vec3<i32>(arg_0.x, u_input.a.x, -17321i))) % u_input.a), Struct_2(vec4<u32>(arg_1, ~0u, ~4294967295u, arg_1) / (firstLeadingBit(vec4<u32>(7251u, arg_1, arg_1, arg_1)) ^ ~vec4<u32>(arg_1, arg_1, arg_1, arg_1)), -13510i), Struct_2(~(~(vec4<u32>(arg_1, arg_1, arg_1, 55879u) | vec4<u32>(12809u, 4841u, 1u, 14032u))), -countOneBits(-27624i) >> countOneBits(arg_1)));
    var var_3 = dot(~max(vec2<u32>(0u, arg_1), vec2<u32>(var_2.b.a.x, arg_1)) & ((vec2<u32>(14119u, arg_1) % var_2.b.a.ww) | var_2.c.a.yx), select(vec2<u32>(arg_1, arg_1 << 71773u), ~(~vec2<u32>(var_2.b.a.x, 51021u)), vec2<bool>(false, var_1.x))) ^ ((~0u * arg_1) * clamp(1u, 4294967295u, arg_1));
    var_2 = Struct_3(Struct_1(vec3<i32>(arg_2, -u_input.a.x, arg_0.x)), var_2.c, Struct_2(vec4<u32>(~(arg_1 | arg_1), ~dot(vec2<u32>(0u, var_2.c.a.x), vec2<u32>(var_2.c.a.x, 8323u)), arg_1, ~var_2.c.a.x), -(2147483647i & var_2.a.a.x)));
    return vec4<f32>(1451f, -466f, 509f, -837f);
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<f32>) -> vec2<f32> {
    let var_0 = vec3<i32>(max(-1i, u_input.a.x), u_input.a.x, -(31922i & u_input.a.x));
    global0 = array<vec2<i32>, 16>();
    var var_1 = -vec2<i32>(34983i, abs(abs(-var_0.x)));
    let var_2 = !true == select((-var_0.x & 0i) <= (var_1.x >> arg_0.x), all(!vec2<bool>(false, false)), !true);
    let var_3 = (select(~(~0u), ~arg_0.x, !var_2) % ((1u + arg_0.x) ^ (99587u | ~arg_0.x))) + firstLeadingBit(arg_0.x);
    return select(ceil(vec2<f32>(-692f, arg_1.x)), (arg_1.yz / -arg_1.ww) + arg_1.yz, false) / func_3(vec2<i32>(u_input.a.x / 25991i, abs(var_0.x)) * vec2<i32>(var_0.x * 10484i, -u_input.a.x), var_3, 2147483647i).yw;
}

fn func_2(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_3) -> Struct_3 {
    let var_0 = Struct_1(arg_2.a.a * vec3<i32>(reverseBits(i32(-2147483648) * 9045i), u_input.a.x << (arg_2.c.a.x + 110451u), select(0i << arg_2.c.a.x, ~arg_1, arg_2.a.a.x >= u_input.a.x)));
    global0 = array<vec2<i32>, 16>();
    var var_1 = -(-(-(-vec2<f32>(-1623f, 392f)) / func_4(arg_2.c.a.zwx, func_3(u_input.a.yz, arg_2.c.a.x, u_input.a.x))));
    var var_2 = !true;
    let var_3 = !vec2<bool>(-983f > -1000f, true);
    return Struct_3(var_0, arg_2.b, arg_2.b);
}

fn func_5(arg_0: Struct_3) -> u32 {
    global0 = array<vec2<i32>, 16>();
    global0 = array<vec2<i32>, 16>();
    let var_0 = firstLeadingBit((select(vec2<i32>(u_input.a.x, u_input.a.x), arg_0.a.a.zx, true) + -vec2<i32>(42309i, arg_0.b.b)) * global0[~8643u]) & -u_input.a.xz;
    global0 = array<vec2<i32>, 16>();
    global0 = array<vec2<i32>, 16>();
    return ~arg_0.c.a.x;
}

fn func_1() -> i32 {
    var var_0 = Struct_2(vec4<u32>(63866u, ~(~dot(vec3<u32>(1u, 39180u, 40048u), vec3<u32>(4294967295u, 1u, 26683u))), 92262u % ~abs(51390u), min(~(4294967295u ^ 22371u), reverseBits(81352u << 28858u))), dot(u_input.a, u_input.a * (u_input.a % vec3<i32>(u_input.a.x, u_input.a.x, 0i))) + u_input.a.x);
    let var_1 = u_input.a.x;
    global0 = array<vec2<i32>, 16>();
    let var_2 = clamp(33401u, min(13078u, 18762u), min(func_5(func_2(max(vec3<i32>(var_1, var_1, u_input.a.x), u_input.a), -32060i, Struct_3(Struct_1(u_input.a), Struct_2(var_0.a, u_input.a.x), Struct_2(vec4<u32>(var_0.a.x, var_0.a.x, 12299u, 4294967295u), 51055i)))), var_0.a.x));
    let var_3 = Struct_3(Struct_1(~(-u_input.a) ^ vec3<i32>(-(-9352i), -u_input.a.x, 22153i)), func_2(~(-vec3<i32>(u_input.a.x, 0i, var_0.b) ^ vec3<i32>(var_1, var_0.b, var_1)), firstTrailingBit(22475i), func_2(u_input.a, 2147483647i, Struct_3(Struct_1(vec3<i32>(10431i, var_0.b, 7745i)), Struct_2(vec4<u32>(19346u, var_2, 4294967295u, 13453u), 1i), func_2(vec3<i32>(2788i, -63839i, var_0.b), -37332i, Struct_3(Struct_1(vec3<i32>(var_1, 6649i, var_1)), Struct_2(var_0.a, var_0.b), Struct_2(var_0.a, var_1))).b))).b, func_2(abs(abs(vec3<i32>(2147483647i, 34581i, u_input.a.x))), u_input.a.x, func_2(vec3<i32>(~2147483647i, var_1, dot(vec3<i32>(-1i, u_input.a.x, u_input.a.x), vec3<i32>(var_1, u_input.a.x, -6596i))), var_0.b, func_2(vec3<i32>(var_0.b, var_1, var_0.b) ^ u_input.a, dot(u_input.a, u_input.a), func_2(vec3<i32>(0i, 1i, i32(-2147483648)), var_1, Struct_3(Struct_1(u_input.a), Struct_2(var_0.a, u_input.a.x), Struct_2(var_0.a, -166i)))))).c);
    return 22393i;
}

fn func_6(arg_0: i32, arg_1: u32, arg_2: i32) -> Struct_3 {
    global0 = array<vec2<i32>, 16>();
    global0 = array<vec2<i32>, 16>();
    let var_0 = Struct_2(vec4<u32>(~(~(~35762u)), 21093u, 0u | arg_1, 26528u / 0u), u_input.a.x);
    var var_1 = vec3<i32>(-1i, ~arg_2, func_1());
    var_1 = (vec3<i32>(var_0.b, arg_0, arg_0) << vec3<u32>(0u / arg_1, 33362u, var_0.a.x)) >> select(vec3<u32>(var_0.a.x, arg_1, func_2(u_input.a ^ u_input.a, var_1.x, func_2(vec3<i32>(348i, 2124i, u_input.a.x), 2147483647i, Struct_3(Struct_1(vec3<i32>(28519i, 16640i, var_1.x)), Struct_2(var_0.a, var_1.x), Struct_2(vec4<u32>(var_0.a.x, arg_1, arg_1, arg_1), 1i)))).c.a.x), min(vec3<u32>(37155u, var_0.a.x, arg_1 % var_0.a.x), ~min(var_0.a.xwx, vec3<u32>(arg_1, arg_1, 4294967295u))), vec3<bool>((1684f + -491f) < (1249f / 380f), true, !(true || false)));
    return func_2(-vec3<i32>(-arg_2, u_input.a.x % arg_0, firstTrailingBit(var_1.x)) + -vec3<i32>(arg_0, u_input.a.x + 31385i, var_1.x - 43483i), func_2(~(~(u_input.a * vec3<i32>(-9273i, var_0.b, var_0.b))), 9875i, func_2(vec3<i32>(-1i, ~var_0.b, -(-31392i)), u_input.a.x, Struct_3(Struct_1(u_input.a), func_2(vec3<i32>(1i, arg_2, var_0.b), 2147483647i, Struct_3(Struct_1(vec3<i32>(u_input.a.x, 0i, var_1.x)), Struct_2(vec4<u32>(0u, arg_1, var_0.a.x, var_0.a.x), -6557i), Struct_2(vec4<u32>(var_0.a.x, var_0.a.x, var_0.a.x, 4294967295u), var_0.b))).c, Struct_2(vec4<u32>(0u, var_0.a.x, var_0.a.x, var_0.a.x), 42239i)))).a.a.x, func_2(u_input.a, i32(-2147483648), Struct_3(Struct_1(vec3<i32>(arg_0, 1i, arg_2)), var_0, Struct_2(~var_0.a, -1i & arg_2))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(dot(~vec3<i32>(u_input.a.x << 1u, -21237i, u_input.a.x), u_input.a), ~min(reverseBits(~26843u), 25193u), func_1() / i32(-2147483648));
    var var_1 = vec4<i32>(-27725i, clamp(1i, -10107i + (25796i << (0u + 8492u)), u_input.a.x), -(~var_0.a.a.x), reverseBits(33613i * 0i));
    var var_2 = Struct_3(Struct_1(reverseBits(vec3<i32>(2147483647i << var_0.c.a.x, ~(-5174i), ~var_0.c.b))), Struct_2(var_0.c.a + ~(~vec4<u32>(0u, 22258u, 0u, var_0.b.a.x)), var_1.x | ~var_0.c.b), func_6(57965i, ~var_0.b.a.x, func_6(var_0.c.b >> var_0.c.a.x, var_0.b.a.x, -12972i).a.a.x).b);
    let var_3 = vec4<f32>(426f, 810f, 1824f, 1127f);
    var_2 = func_2(-abs(vec3<i32>(var_2.a.a.x, clamp(2147483647i, -48931i, i32(-2147483648)), 5216i)), var_2.b.b, func_6(abs(0i), (reverseBits(31751u) / var_2.b.a.x) >> ((1u & var_0.c.a.x) >> ~11469u), ~1i));
    var_1 = vec4<i32>(~var_1.x, func_6(-(43964i ^ -u_input.a.x), var_0.c.a.x, countOneBits(firstTrailingBit(1i))).b.b, var_2.a.a.x, 0i);
    let x = u_input.a;
    s_output = StorageBuffer(-var_3.zw, 522f, min(~((vec4<i32>(1i, var_0.b.b, i32(-2147483648), u_input.a.x) & vec4<i32>(2147483647i, 50954i, i32(-2147483648), -4488i)) * -vec4<i32>(var_2.c.b, -12908i, u_input.a.x, var_1.x)), -vec4<i32>(~var_0.a.a.x, func_6(58167i, 4294967295u, var_0.c.b).c.b, 0i ^ var_0.b.b, countOneBits(var_2.b.b))), firstTrailingBit(abs(var_0.b.a)));
}

