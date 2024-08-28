// {"0:0":[153,205,233,193,185,161,19,76,205,40,173,195,91,209,1,81,245,205,60,150,4,19,150,122,28,252,236,106,244,137,129,126,30,104,124,189,82,54,151,37,196,253,129,150,194,8,148,177]}
// Seed: 15496529936269953266

struct Struct_1 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 20> = array<vec2<f32>, 20>(vec2<f32>(188f, 720f), vec2<f32>(-254f, 1000f), vec2<f32>(-1190f, 667f), vec2<f32>(-1981f, -132f), vec2<f32>(470f, 873f), vec2<f32>(1000f, 1661f), vec2<f32>(-451f, 965f), vec2<f32>(1277f, 123f), vec2<f32>(1317f, -186f), vec2<f32>(-249f, -1599f), vec2<f32>(998f, -852f), vec2<f32>(217f, 336f), vec2<f32>(399f, 1864f), vec2<f32>(-879f, -269f), vec2<f32>(-912f, -1035f), vec2<f32>(-120f, -1464f), vec2<f32>(-224f, -952f), vec2<f32>(215f, 633f), vec2<f32>(-1187f, -1000f), vec2<f32>(1000f, -774f));

var<private> global1: vec2<i32> = vec2<i32>(-13131i, 2147483647i);

fn func_3(arg_0: vec2<f32>) -> u32 {
    global1 = u_input.a.yy;
    let var_0 = global1.x;
    let var_1 = ~(~u_input.d + vec3<u32>(21909u, dot(vec4<u32>(u_input.c, 0u, u_input.c, 0u), vec4<u32>(1u, u_input.d.x, u_input.d.x, u_input.d.x) + vec4<u32>(1u, 1u, u_input.d.x, 1u)), ~countOneBits(4294967295u)));
    let var_2 = any(!select(!vec4<bool>(false, true, true, true), vec4<bool>(true, all(vec4<bool>(true, true, true, false)), !true, true && false), global1.x >= firstLeadingBit(-14905i)));
    var var_3 = ~global1.x;
    return ~(53055u + 16280u);
}

fn func_2(arg_0: vec2<f32>) -> vec2<bool> {
    var var_0 = ~u_input.d.x;
    var var_1 = select(vec3<bool>(~abs(u_input.c) >= ~func_3(global0[4294967295u]), false, !(reverseBits(60207u) > ~1u)), select(vec3<bool>(all(!vec3<bool>(true, false, false)), false || false, true && all(vec4<bool>(true, false, false, true))), select(vec3<bool>(false && true, 40136u <= u_input.c, all(vec3<bool>(true, true, true))), select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), vec3<bool>(true, false, true), all(vec3<bool>(false, true, false))), !(!vec3<bool>(false, true, true))), select(-748f * arg_0.x, -2472f - -140f, false) <= -arg_0.x), !(!select(!vec3<bool>(true, true, false), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false)))));
    var var_2 = vec2<f32>(select(arg_0.x * arg_0.x, ceil(-1574f), !(var_1.x | (global1.x > i32(-2147483648)))), arg_0.x);
    var_0 = 43069u;
    var var_3 = max(firstTrailingBit((~vec4<u32>(u_input.d.x, 23880u, 26585u, u_input.d.x) | vec4<u32>(u_input.d.x, u_input.d.x, u_input.c, 37310u)) % (~vec4<u32>(4294967295u, 43483u, 52186u, u_input.c) >> abs(vec4<u32>(u_input.c, 23062u, 1u, u_input.d.x)))), vec4<u32>(dot((vec3<u32>(15942u, 0u, u_input.c) ^ u_input.d) | ~u_input.d, u_input.d), abs(select(33328u & 1u, u_input.c, false)), 1u, ~u_input.c));
    return select(!(!var_1.zy), !select(var_1.yx, select(vec2<bool>(var_1.x, false), select(vec2<bool>(var_1.x, false), var_1.xy, vec2<bool>(false, true)), select(false, false, var_1.x)), !(!var_1.x)), true);
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    let var_0 = Struct_2(0u, Struct_1(~vec3<i32>(~0i, u_input.a.x, u_input.b % global1.x), !(!arg_1)));
    let var_1 = Struct_2(var_0.a, Struct_1(var_0.b.a, select(var_0.b.b, true, arg_1 != (var_0.a <= 0u))));
    var var_2 = 2147483647i;
    let var_3 = u_input.d.xz - u_input.d.yy;
    var var_4 = Struct_2(~(var_1.a >> (reverseBits(142904u) + ~7436u)), var_0.b);
    return var_0.b;
}

fn func_1() -> vec3<bool> {
    let var_0 = func_4(Struct_1(~u_input.a.yxx, u_input.c == ~(18009u | 4294967295u)), any(select(!func_2(vec2<f32>(-556f, -1000f)), !select(vec2<bool>(false, true), vec2<bool>(true, false), false), !false | (4294967295u >= u_input.d.x))));
    global0 = array<vec2<f32>, 20>();
    var var_1 = vec4<i32>(~abs(-(-1i << 1u)), firstTrailingBit(firstLeadingBit(21200i)), 1274i, ~clamp(~var_0.a.x, -53328i, u_input.a.x - -1i));
    let var_2 = any(!(!(!vec2<bool>(var_0.b, true))));
    var var_3 = Struct_2(reverseBits(u_input.d.x), var_0);
    return select(select(vec3<bool>(var_0.b, true, var_2 && true), !vec3<bool>(false, !var_2, true | var_3.b.b), vec3<bool>(var_0.b, true, any(vec2<bool>(var_2, var_0.b)))), vec3<bool>(true, var_3.b.b, !(!var_0.b & !var_2)), vec3<bool>(!(45517i <= ~var_1.x), true, false));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: u32, arg_3: Struct_2) -> Struct_2 {
    let var_0 = arg_3.b.b;
    global0 = array<vec2<f32>, 20>();
    var var_1 = select(vec4<bool>(min(1375f - -1186f, -739f * 729f) > 649f, false, !func_4(Struct_1(arg_1.b.a, true), true).b, all(func_1().xz)), !vec4<bool>(false && (var_0 && var_0), var_0, arg_0.x, var_0), !select(vec4<bool>(true, var_0, 95125u != u_input.d.x, !var_0), !select(vec4<bool>(arg_1.b.b, arg_0.x, false, var_0), vec4<bool>(true, var_0, false, false), false), arg_1.b.b || !var_0));
    global0 = array<vec2<f32>, 20>();
    var_1 = !vec4<bool>(false, arg_3.b.b, !func_1().x, false);
    return Struct_2(arg_3.a / arg_1.a, arg_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 20>();
    global0 = array<vec2<f32>, 20>();
    let var_0 = func_5(select(!select(vec3<bool>(false, true, false), func_1(), false), select(!vec3<bool>(false, false, true), vec3<bool>(true && false, !false, -1i >= 36774i), !(!vec3<bool>(true, false, true))), all(!vec3<bool>(true, true, false))), Struct_2(~50156u << u_input.c, func_4(func_4(Struct_1(u_input.a.wwz, false), !false), any(vec3<bool>(false, false, true)))), u_input.c, Struct_2(u_input.d.x, Struct_1(-(vec3<i32>(u_input.a.x, u_input.a.x, global1.x) * u_input.a.wyx), select(-734f, -305f, false) >= 321f)));
    var var_1 = func_5(!vec3<bool>(var_0.b.b, var_0.b.b, false), func_5(!select(vec3<bool>(var_0.b.b, var_0.b.b, true), vec3<bool>(true, var_0.b.b, false), !vec3<bool>(true, true, false)), var_0, u_input.d.x, Struct_2(var_0.a, func_4(var_0.b, !var_0.b.b))), ~var_0.a >> (~(~u_input.c) + 4294967295u), func_5(vec3<bool>(false, !var_0.b.b, any(select(vec3<bool>(var_0.b.b, true, false), vec3<bool>(false, true, true), var_0.b.b))), func_5(!select(vec3<bool>(var_0.b.b, true, true), vec3<bool>(false, var_0.b.b, true), vec3<bool>(var_0.b.b, true, false)), var_0, ~var_0.a * 132715u, func_5(vec3<bool>(var_0.b.b, var_0.b.b, false), Struct_2(var_0.a, Struct_1(u_input.a.zyx, var_0.b.b)), u_input.c >> 39538u, var_0)), var_0.a, func_5(!vec3<bool>(var_0.b.b, true, var_0.b.b), Struct_2(var_0.a, Struct_1(vec3<i32>(-1i, 27760i, u_input.b), var_0.b.b)), reverseBits(u_input.d.x), Struct_2(0u - var_0.a, func_5(vec3<bool>(var_0.b.b, false, false), Struct_2(u_input.c, Struct_1(u_input.a.zzx, var_0.b.b)), var_0.a, var_0).b))));
    var var_2 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(select((-vec4<f32>(-1844f, -618f, -1477f, -1233f) * ceil(vec4<f32>(-921f, 392f, -866f, -644f))) / -(-vec4<f32>(181f, -266f, -1089f, 394f)), vec4<f32>(-(-(-2271f)), -(793f - -343f), 1341f, -511f + -1000f), !(!(!false))), u_input.a.yyw, var_1.b.a, vec4<u32>(func_3(global0[(u_input.d.x + u_input.d.x) | ~u_input.c]), var_1.a % (var_1.a << countOneBits(var_1.a)), ~(var_1.a % ~0u), dot(vec3<u32>(41796u, u_input.c, var_1.a) << ~u_input.d, vec3<u32>(var_1.a + 1u, 4294967295u, u_input.d.x << u_input.c))));
}

