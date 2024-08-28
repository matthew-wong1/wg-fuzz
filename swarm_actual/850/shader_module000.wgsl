// {"0:0":[59,122,210,27,76,188,35,0,190,201,51,119,138,116,162,57]}
// Seed: 7055022028058196885

struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 32>;

fn func_3(arg_0: vec4<f32>) -> vec2<bool> {
    global0 = array<Struct_2, 32>();
    var var_0 = round(ceil(873f / arg_0.x));
    let var_1 = vec4<bool>(false, !all(!vec3<bool>(false, false, false)), u_input.a.x <= ~u_input.a.x, !(~firstLeadingBit(u_input.a.x) >= ~u_input.a.x));
    var_0 = abs(-(-1000f - -271f));
    var var_2 = -arg_0.zw;
    return !(!var_1.yx);
}

fn func_2(arg_0: bool) -> u32 {
    global0 = array<Struct_2, 32>();
    global0 = array<Struct_2, 32>();
    let var_0 = vec2<bool>(floor(sign(-1590f)) < 1564f, any(func_3(abs(-vec4<f32>(152f, -556f, -489f, 706f)))));
    var var_1 = select(-ceil(-(-829f) * -225f), ceil(-1084f) * ((select(-2011f, -816f, arg_0) - -(-454f)) + 1000f), !true & var_0.x);
    var_1 = max(-133f - 1769f, 368f / -604f);
    return dot(~vec2<u32>(u_input.a.x | u_input.a.x, dot(vec2<u32>(66433u, u_input.a.x), u_input.a.zy)), ~(firstLeadingBit(u_input.a.yz) | vec2<u32>(18415u, 0u))) + (u_input.a.x | ~(~reverseBits(4294967295u)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> Struct_3 {
    var var_0 = ceil(ceil(floor(vec2<f32>(-942f, -640f))) * (select(-vec2<f32>(611f, 2515f), vec2<f32>(-1213f, 440f), all(vec3<bool>(arg_1.a.c, arg_1.a.d, arg_1.c.d))) - -step(vec2<f32>(-1000f, -1107f), vec2<f32>(-420f, 184f))));
    var_0 = select(vec2<f32>(-var_0.x * var_0.x, -(-203f + -2799f) * -849f), -sign(sign(vec2<f32>(566f, var_0.x))), !vec2<bool>(all(!vec2<bool>(arg_1.b.d, arg_0.b.c.d)), func_3(ceil(vec4<f32>(var_0.x, var_0.x, 474f, -706f))).x));
    let var_1 = func_2(arg_1.a.d);
    var var_2 = arg_0.d;
    let var_3 = ~countOneBits(~arg_1.d.x) < (countOneBits(52069u << (arg_0.b.d.x & 4294967295u)) / dot(vec4<u32>(31287u, 0u, 0u, 1u) - arg_0.d, vec4<u32>(u_input.a.x, countOneBits(var_1), 18982u, 1u % arg_0.a.b.b)));
    return arg_0;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3) -> Struct_2 {
    var var_0 = vec4<bool>(!(true && any(select(vec4<bool>(arg_0.b.c.d, arg_1.a.b.d, true, arg_0.b.a.d), vec4<bool>(arg_0.a.c.d, arg_0.c.c, arg_1.b.a.c, arg_1.a.c.c), vec4<bool>(arg_1.a.b.c, arg_1.b.b.d, arg_1.a.a.d, true)))), any(!vec4<bool>(true, any(vec2<bool>(arg_0.b.a.c, false)), true, 218f > -1664f)), -31216i != (((-1i << 57913u) % u_input.b) + min(abs(arg_0.b.c.a), arg_1.a.c.a % u_input.b)), (~(~21110i) % ~u_input.b) == clamp((6342i + arg_0.a.c.a) + 2147483647i, -u_input.b, arg_1.c.a));
    var_0 = select(!(!vec4<bool>(select(true, arg_1.c.c, var_0.x), all(var_0.zz), i32(-2147483648) <= u_input.b, var_0.x)), select(vec4<bool>(!arg_0.c.c & !true, var_0.x, !any(var_0.xw), var_0.x), !vec4<bool>(!arg_1.b.a.d, arg_0.a.c.a <= u_input.b, true != arg_0.c.d, true), arg_0.b.b.c | arg_1.a.a.d), any(!var_0.wwy));
    let var_1 = round(-(-(-vec3<f32>(1560f, -1742f, -1174f) + -vec3<f32>(-135f, -146f, 1001f))));
    var_0 = !(!(!vec4<bool>(false, !var_0.x, var_0.x, true)));
    let var_2 = !select(var_0.xy, select(!vec2<bool>(false, true), func_3(-vec4<f32>(-1000f, var_1.x, var_1.x, 1323f)), select(select(var_0.yy, vec2<bool>(false, var_0.x), var_0.yx), select(var_0.zy, var_0.zy, var_0.xw), !arg_1.b.b.c)), !false | (!arg_1.a.a.d | (1227f >= var_1.x)));
    return Struct_2(arg_0.a.a, Struct_1(arg_1.a.b.a, ~(~abs(arg_1.c.b)), all(var_2), any(!(!vec4<bool>(arg_0.b.a.d, true, var_0.x, false))), u_input.a.x), func_4(func_4(arg_0, Struct_2(func_4(arg_0, arg_0.b).c, func_4(arg_0, Struct_2(arg_1.c, arg_1.b.a, arg_0.a.a, vec2<u32>(u_input.a.x, 4294967295u))).a.b, arg_0.b.a, vec2<u32>(0u, u_input.a.x) - arg_0.b.d)), global0[firstTrailingBit((u_input.a.x >> 11695u) - ~31402u)]).c, abs(vec2<u32>(abs(0u), arg_0.a.c.e)));
}

fn func_6(arg_0: Struct_3, arg_1: vec2<u32>) -> Struct_1 {
    global0 = array<Struct_2, 32>();
    var var_0 = func_4(func_4(func_4(Struct_3(arg_0.b, func_4(Struct_3(Struct_2(arg_0.c, Struct_1(-60115i, u_input.a.x, false, arg_0.a.a.c, 65980u), Struct_1(-51644i, 72272u, arg_0.a.b.c, arg_0.c.d, 65130u), vec2<u32>(u_input.a.x, 12913u)), Struct_2(Struct_1(-51337i, arg_1.x, true, arg_0.a.b.d, 1u), arg_0.c, Struct_1(-16385i, 63040u, true, arg_0.c.d, arg_1.x), arg_0.d.yz), arg_0.a.b, vec4<u32>(u_input.a.x, 4294967295u, 38145u, arg_1.x)), global0[1u]).b, func_4(arg_0, arg_0.a).b.b, ~vec4<u32>(arg_1.x, u_input.a.x, 5643u, arg_0.d.x)), global0[~arg_0.b.c.b]), global0[u_input.a.x]), Struct_2(Struct_1(-arg_0.c.a, (1017u - arg_0.b.c.b) | abs(1u), any(vec4<bool>(arg_0.b.a.c, false, true, arg_0.b.a.d)), false, ~(~arg_1.x)), func_4(func_4(Struct_3(arg_0.a, global0[4294967295u], Struct_1(arg_0.c.a, 1u, arg_0.c.d, false, u_input.a.x), vec4<u32>(arg_1.x, arg_0.c.e, 4294967295u, 1u)), Struct_2(arg_0.b.a, arg_0.b.a, arg_0.c, vec2<u32>(1u, 1u))), func_4(Struct_3(arg_0.b, global0[arg_0.d.x], Struct_1(u_input.b, 52967u, true, arg_0.c.c, u_input.a.x), vec4<u32>(u_input.a.x, arg_0.d.x, arg_0.b.a.e, 4294967295u)), Struct_2(Struct_1(-37183i, 65233u, true, true, 0u), arg_0.c, arg_0.a.c, vec2<u32>(4294967295u, 34009u))).a).a.a, func_5(Struct_3(Struct_2(arg_0.c, Struct_1(0i, 4294967295u, true, false, 63141u), Struct_1(u_input.b, arg_0.d.x, arg_0.b.a.c, true, 11248u), arg_0.d.wx), Struct_2(arg_0.c, Struct_1(arg_0.b.c.a, 4294967295u, true, arg_0.c.d, 1u), arg_0.b.a, u_input.a.zy), arg_0.b.b, min(vec4<u32>(arg_1.x, u_input.a.x, 94129u, arg_0.c.e), arg_0.d)), Struct_3(arg_0.a, global0[90467u], Struct_1(u_input.b, 1u, false, arg_0.a.b.c, 7232u), vec4<u32>(1581u, 4294967295u, 1u, 0u))).b, arg_1)).c;
    var var_1 = !(!select(!func_3(vec4<f32>(-547f, 1021f, 1357f, -282f)), vec2<bool>(var_0.c, false), !(!vec2<bool>(true, true))));
    let var_2 = abs(~vec2<i32>(max(arg_0.a.b.a, countOneBits(u_input.b)), u_input.b - u_input.b));
    let var_3 = vec2<i32>(~(i32(-2147483648)) % dot(var_2, var_2), reverseBits(arg_0.a.c.a)) + var_2;
    return arg_0.b.a;
}

fn func_1(arg_0: vec4<i32>) -> u32 {
    global0 = array<Struct_2, 32>();
    global0 = array<Struct_2, 32>();
    global0 = array<Struct_2, 32>();
    var var_0 = func_6(Struct_3(func_5(func_4(Struct_3(global0[23142u], Struct_2(Struct_1(-52027i, u_input.a.x, false, false, u_input.a.x), Struct_1(0i, u_input.a.x, true, false, 1u), Struct_1(arg_0.x, 47997u, true, false, u_input.a.x), vec2<u32>(u_input.a.x, 4294967295u)), Struct_1(arg_0.x, u_input.a.x, false, false, 46489u), vec4<u32>(73776u, 4294967295u, u_input.a.x, 29442u)), global0[func_2(false)]), func_4(func_4(Struct_3(global0[u_input.a.x], global0[0u], Struct_1(arg_0.x, u_input.a.x, false, false, 1806u), vec4<u32>(u_input.a.x, u_input.a.x, 35576u, 55329u)), global0[1u]), global0[69397u << 19563u])), func_4(Struct_3(func_4(Struct_3(global0[u_input.a.x], global0[4294967295u], Struct_1(-1i, 1u, false, false, u_input.a.x), vec4<u32>(0u, u_input.a.x, u_input.a.x, 4239u)), global0[1u]).b, Struct_2(Struct_1(u_input.b, 4294967295u, true, false, 1u), Struct_1(10632i, 17799u, true, false, u_input.a.x), Struct_1(arg_0.x, 57230u, false, false, u_input.a.x), u_input.a.yz), func_5(Struct_3(Struct_2(Struct_1(-6842i, u_input.a.x, false, true, 99802u), Struct_1(arg_0.x, 101534u, false, false, u_input.a.x), Struct_1(arg_0.x, u_input.a.x, false, false, 0u), u_input.a.xx), Struct_2(Struct_1(u_input.b, u_input.a.x, true, true, 4294967295u), Struct_1(11777i, 0u, false, false, u_input.a.x), Struct_1(0i, u_input.a.x, true, true, u_input.a.x), vec2<u32>(u_input.a.x, 10167u)), Struct_1(u_input.b, u_input.a.x, true, false, 85796u), vec4<u32>(u_input.a.x, 134615u, u_input.a.x, 4294967295u)), Struct_3(global0[u_input.a.x], global0[u_input.a.x], Struct_1(47505i, 83451u, false, true, u_input.a.x), vec4<u32>(121489u, u_input.a.x, u_input.a.x, 19921u))).b, select(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 0u, 4294967295u), vec4<bool>(true, true, true, false))), Struct_2(Struct_1(arg_0.x, u_input.a.x, true, false, 1u), Struct_1(u_input.b, 4294967295u, false, true, u_input.a.x), Struct_1(-21309i, 9414u, true, false, u_input.a.x), u_input.a.xx)).a, func_5(Struct_3(func_5(Struct_3(global0[70247u], Struct_2(Struct_1(-1i, 4294967295u, true, true, 4294967295u), Struct_1(arg_0.x, 0u, false, false, u_input.a.x), Struct_1(arg_0.x, u_input.a.x, true, true, 4294967295u), vec2<u32>(u_input.a.x, u_input.a.x)), Struct_1(arg_0.x, u_input.a.x, false, false, u_input.a.x), vec4<u32>(u_input.a.x, 41798u, 17151u, u_input.a.x)), Struct_3(Struct_2(Struct_1(arg_0.x, u_input.a.x, false, true, 1u), Struct_1(u_input.b, u_input.a.x, false, true, 20799u), Struct_1(53121i, 4294967295u, true, true, 24110u), vec2<u32>(u_input.a.x, u_input.a.x)), Struct_2(Struct_1(u_input.b, 4294967295u, true, true, u_input.a.x), Struct_1(60507i, 1u, true, false, u_input.a.x), Struct_1(u_input.b, u_input.a.x, true, false, 6357u), u_input.a.zy), Struct_1(u_input.b, 4294967295u, false, false, 17395u), vec4<u32>(13428u, 4294967295u, u_input.a.x, u_input.a.x))), func_5(Struct_3(global0[u_input.a.x], Struct_2(Struct_1(1i, u_input.a.x, true, true, u_input.a.x), Struct_1(-1i, u_input.a.x, false, true, u_input.a.x), Struct_1(4205i, u_input.a.x, false, false, u_input.a.x), u_input.a.zy), Struct_1(u_input.b, 4294967295u, false, false, 42432u), vec4<u32>(u_input.a.x, u_input.a.x, 68303u, 0u)), Struct_3(global0[26005u], Struct_2(Struct_1(-3675i, 28501u, false, true, 4294967295u), Struct_1(arg_0.x, u_input.a.x, false, false, 4294967295u), Struct_1(arg_0.x, u_input.a.x, false, false, u_input.a.x), vec2<u32>(0u, u_input.a.x)), Struct_1(u_input.b, u_input.a.x, false, false, u_input.a.x), vec4<u32>(u_input.a.x, 0u, u_input.a.x, 0u))), Struct_1(u_input.b, u_input.a.x, true, false, 0u), vec4<u32>(u_input.a.x, 1u, u_input.a.x, 3919u) | vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), Struct_3(global0[u_input.a.x / 29387u], Struct_2(Struct_1(arg_0.x, u_input.a.x, false, true, u_input.a.x), Struct_1(u_input.b, 222u, false, false, 1u), Struct_1(2147483647i, u_input.a.x, false, false, 1u), vec2<u32>(38102u, 4294967295u)), func_5(Struct_3(Struct_2(Struct_1(arg_0.x, u_input.a.x, true, true, u_input.a.x), Struct_1(i32(-2147483648), u_input.a.x, true, false, 0u), Struct_1(arg_0.x, u_input.a.x, false, true, 4294967295u), u_input.a.yz), Struct_2(Struct_1(-1i, 0u, false, false, 4294967295u), Struct_1(i32(-2147483648), 0u, false, true, u_input.a.x), Struct_1(arg_0.x, 8088u, true, true, u_input.a.x), u_input.a.zy), Struct_1(u_input.b, 5616u, true, false, u_input.a.x), vec4<u32>(52712u, u_input.a.x, u_input.a.x, 1u)), Struct_3(global0[u_input.a.x], Struct_2(Struct_1(79463i, u_input.a.x, false, true, u_input.a.x), Struct_1(arg_0.x, u_input.a.x, true, true, 1u), Struct_1(arg_0.x, u_input.a.x, false, false, 15982u), vec2<u32>(u_input.a.x, u_input.a.x)), Struct_1(u_input.b, 0u, true, true, 4294967295u), vec4<u32>(0u, 4294967295u, u_input.a.x, u_input.a.x))).a, ~vec4<u32>(29923u, 4872u, u_input.a.x, 1u))).c, vec4<u32>(firstTrailingBit(select(u_input.a.x, 4294967295u, true)), 0u, 1u, (u_input.a.x % 0u) / select(29325u, 26547u, true))), abs(firstTrailingBit(u_input.a.yy)));
    let var_1 = Struct_3(global0[var_0.e], func_4(func_4(Struct_3(func_5(Struct_3(Struct_2(Struct_1(var_0.a, 0u, true, true, 43127u), Struct_1(var_0.a, u_input.a.x, false, var_0.d, var_0.e), Struct_1(var_0.a, 0u, true, var_0.c, 315u), vec2<u32>(var_0.b, var_0.b)), Struct_2(Struct_1(17786i, u_input.a.x, var_0.d, true, 4294967295u), Struct_1(arg_0.x, 0u, true, var_0.c, u_input.a.x), Struct_1(u_input.b, u_input.a.x, var_0.c, true, 14512u), vec2<u32>(var_0.b, 17470u)), Struct_1(-1i, u_input.a.x, var_0.c, var_0.c, 60791u), vec4<u32>(var_0.b, var_0.b, 18384u, var_0.b)), Struct_3(global0[4294967295u], global0[var_0.b], Struct_1(0i, var_0.e, var_0.c, var_0.d, u_input.a.x), vec4<u32>(var_0.b, 4294967295u, 19294u, 42665u))), Struct_2(Struct_1(-1i, 21473u, var_0.d, true, var_0.b), Struct_1(-35700i, var_0.e, var_0.c, var_0.d, var_0.b), Struct_1(var_0.a, u_input.a.x, false, true, 0u), u_input.a.yz), Struct_1(u_input.b, u_input.a.x, true, var_0.d, 1u), ~vec4<u32>(u_input.a.x, var_0.e, var_0.e, u_input.a.x)), global0[~(~4294967295u)]), Struct_2(func_5(func_4(Struct_3(Struct_2(Struct_1(arg_0.x, 0u, var_0.d, false, 0u), Struct_1(u_input.b, u_input.a.x, var_0.d, var_0.d, u_input.a.x), Struct_1(2147483647i, 0u, var_0.c, false, 47773u), vec2<u32>(4294967295u, 85002u)), global0[u_input.a.x], Struct_1(46727i, u_input.a.x, var_0.c, false, var_0.e), vec4<u32>(var_0.b, u_input.a.x, var_0.b, var_0.e)), global0[0u]), Struct_3(Struct_2(Struct_1(u_input.b, var_0.b, var_0.c, var_0.c, 0u), Struct_1(var_0.a, 24191u, false, var_0.d, u_input.a.x), Struct_1(u_input.b, 55451u, true, false, u_input.a.x), vec2<u32>(1u, var_0.e)), Struct_2(Struct_1(-18183i, 4294967295u, var_0.d, var_0.d, u_input.a.x), Struct_1(arg_0.x, var_0.b, false, var_0.d, 0u), Struct_1(var_0.a, u_input.a.x, var_0.d, true, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x)), Struct_1(var_0.a, u_input.a.x, var_0.d, var_0.d, var_0.b), vec4<u32>(20846u, var_0.e, 6776u, 0u))).a, Struct_1(clamp(var_0.a, 47847i, arg_0.x), u_input.a.x - 4294967295u, !var_0.c, any(vec3<bool>(true, false, var_0.c)), var_0.e ^ var_0.e), Struct_1(i32(-2147483648), 5453u, var_0.c, !var_0.c, var_0.e), abs(select(u_input.a.zz, vec2<u32>(4294967295u, 0u), vec2<bool>(var_0.d, var_0.c))))).a, Struct_1(u_input.b, firstTrailingBit(4294967295u), false, !(!var_0.c && false), var_0.e), abs(firstTrailingBit(reverseBits(abs(vec4<u32>(101191u, 4294967295u, var_0.b, 4294967295u))))));
    return func_5(func_4(func_4(func_4(var_1, Struct_2(var_1.b.c, Struct_1(2147483647i, 4294967295u, var_1.b.c.d, true, 55566u), Struct_1(-21636i, u_input.a.x, false, var_1.b.c.d, var_1.b.c.b), vec2<u32>(3357u, u_input.a.x))), var_1.b), global0[0u]), var_1).b.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 32>();
    var var_0 = abs(~(i32(-2147483648)));
    var var_1 = vec3<u32>(25692u, clamp(func_1(vec4<i32>(u_input.b, u_input.b, u_input.b, -26969i) | abs(vec4<i32>(u_input.b, -1i, 1i, -10i))), 1u, ~(~u_input.a.x)), (91709u | reverseBits(~u_input.a.x)) + min(func_6(Struct_3(Struct_2(Struct_1(1254i, u_input.a.x, true, true, 0u), Struct_1(u_input.b, 1u, true, true, u_input.a.x), Struct_1(0i, u_input.a.x, false, true, 4294967295u), u_input.a.yx), global0[18086u], Struct_1(u_input.b, 39216u, false, false, 40606u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u)), u_input.a.zy | vec2<u32>(u_input.a.x, u_input.a.x)).b, 4294967295u));
    var_0 = countOneBits(-5425i);
    var_0 = -1016i;
    var var_2 = global0[abs((1u / u_input.a.x) % ((~u_input.a.x - var_1.x) >> 108758u))];
    let var_3 = global0[((countOneBits(~var_2.a.b) / 8738u) + firstLeadingBit(~firstTrailingBit(u_input.a.x))) >> (7884u * (0u % (~var_1.x << var_1.x)))];
    let var_4 = select(!vec4<bool>(true != (u_input.b > 2147483647i), -197f < -446f, select(!false, !true, true), func_4(Struct_3(Struct_2(Struct_1(var_3.c.a, 35730u, false, var_3.c.d, var_2.c.b), Struct_1(1i, 4294967295u, false, true, 0u), Struct_1(-1588i, 49320u, var_3.b.d, var_3.b.d, u_input.a.x), vec2<u32>(var_1.x, u_input.a.x)), global0[var_1.x], Struct_1(u_input.b, 38577u, var_2.c.c, var_2.a.c, var_1.x), vec4<u32>(var_2.c.e, var_1.x, var_1.x, u_input.a.x)), Struct_2(var_3.a, var_2.a, Struct_1(var_3.c.a, 13066u, var_2.c.d, var_3.b.c, u_input.a.x), vec2<u32>(var_1.x, var_2.c.b))).b.c.c), !(!(!vec4<bool>(true, false, var_3.c.d, true))), clamp(-(u_input.b % -16126i), abs(-7830i), 33144i) != -1i);
    var var_5 = vec3<i32>(-abs(-(var_2.b.a * -1i)), var_2.a.a, ~(-(~(-13151i) / var_2.c.a)));
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<f32>(-(-906f) - (-103f - -1000f), -1508f + round(1064f), sign(250f) * -688f, -round(-1000f)), max(select(vec4<u32>(4294967295u, 63878u, 4294967295u, 1u) % vec4<u32>(var_2.a.b, 56882u, 0u, var_1.x), ~vec4<u32>(4294967295u, u_input.a.x, 7026u, 1u), vec4<bool>(false, true, false, var_4.x)) & ~(vec4<u32>(var_1.x, 13483u, 4294967295u, var_1.x) + vec4<u32>(var_1.x, 4294967295u, 65586u, 0u)), vec4<u32>(var_1.x & (var_3.d.x + 36865u), 4294967295u, 42071u, dot(clamp(vec4<u32>(var_3.a.b, var_1.x, 0u, var_1.x), vec4<u32>(var_1.x, 1254u, 33973u, u_input.a.x), vec4<u32>(var_3.d.x, 0u, 1u, u_input.a.x)), max(vec4<u32>(var_3.a.e, 4294967295u, 4294967295u, var_3.b.b), vec4<u32>(1u, var_1.x, 4294967295u, 365u))))), step(-vec3<f32>(sign(107f), min(1000f, -1505f), 1413f - 1056f), ceil(vec3<f32>(-760f, 1395f, -1163f))));
}

