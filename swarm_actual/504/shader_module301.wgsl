// {"0:0":[162,17,141,56,222,129,127,203,245,129,204,222,169,51,57,84]}
// Seed: 4280401860899845683

struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
    d: i32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -55107i;

var<private> global1: array<Struct_2, 32>;

fn func_1(arg_0: i32) -> i32 {
    global1 = array<Struct_2, 32>();
    var var_0 = u_input.b.x + dot((~vec4<i32>(u_input.b.x, 2147483647i, arg_0, i32(-2147483648)) * vec4<i32>(11441i, arg_0, u_input.b.x, u_input.b.x)) - ~reverseBits(vec4<i32>(-1i, 5672i, 1i, i32(-2147483648))), (countOneBits(vec4<i32>(u_input.b.x, u_input.b.x, arg_0, 47301i)) + (vec4<i32>(-61945i, 14787i, 0i, u_input.b.x) - vec4<i32>(12321i, -15232i, -5169i, arg_0))) + (clamp(vec4<i32>(arg_0, u_input.b.x, u_input.b.x, -51844i), vec4<i32>(u_input.b.x, u_input.b.x, 1297i, 2147483647i), vec4<i32>(5822i, i32(-2147483648), u_input.b.x, -32755i)) ^ countOneBits(vec4<i32>(u_input.b.x, i32(-2147483648), u_input.b.x, -3767i))));
    var var_1 = select(min(vec4<i32>(-(-14245i) * countOneBits(20831i), abs(dot(vec4<i32>(arg_0, 22451i, -9662i, arg_0), vec4<i32>(-8373i, 12283i, 0i, 2147483647i))), countOneBits(-26230i) + ~arg_0, max(-34196i, 29583i - arg_0)), vec4<i32>(32158i, arg_0, 52565i, 0i)), vec4<i32>(2147483647i, -u_input.b.x % (-31716i * 2147483647i), u_input.b.x, 0i), any(!(!(!vec2<bool>(true, true)))));
    global0 = -47747i;
    var_0 = clamp(-1i, min(-(-(u_input.b.x % arg_0)), 9457i), arg_0);
    return abs(-((-1i >> 80692u) | var_1.x) * -11355i);
}

fn func_3(arg_0: u32, arg_1: vec2<i32>, arg_2: vec2<i32>) -> f32 {
    let var_0 = !all(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), !true));
    var var_1 = Struct_3(-1i, !vec3<bool>(!(true & false), any(!vec4<bool>(var_0, var_0, var_0, var_0)), !var_0 && var_0));
    global1 = array<Struct_2, 32>();
    let var_2 = select(!(!vec4<bool>(true || var_1.b.x, any(var_1.b), true, var_0)), !select(!(!vec4<bool>(var_0, false, true, var_0)), vec4<bool>(var_1.b.x, 62878u == 4294967295u, false, var_0), !(!vec4<bool>(var_1.b.x, true, false, var_0))), select(vec4<bool>(false || all(vec3<bool>(var_1.b.x, var_1.b.x, false)), sign(1387f) < -(-218f), any(select(var_1.b, var_1.b, var_1.b)), (17601u >= 4294967295u) | var_1.b.x), !(!(!vec4<bool>(false, true, true, true))), -7878i > arg_2.x));
    global0 = 31727i >> (~(countOneBits(1u) + u_input.a) % select(70868u, u_input.a, !true || (var_0 || var_1.b.x)));
    return -max(abs(abs(887f)), (floor(-1135f) - (-1694f / 291f)) / -(-437f * -1359f));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: bool, arg_3: i32) -> bool {
    global0 = 35889i;
    global1 = array<Struct_2, 32>();
    var var_0 = global1[4020u];
    global1 = array<Struct_2, 32>();
    var var_1 = Struct_4(arg_1.b.yx, Struct_2(Struct_1((var_0.a.a * arg_0.x) / func_3(u_input.a, vec2<i32>(arg_3, i32(-2147483648)), u_input.b), (u_input.a | u_input.a) >= u_input.a, any(!vec4<bool>(var_0.a.b, false, true, false)), u_input.b.x, var_0.a.e * var_0.a.e)), global1[u_input.a]);
    return !arg_1.b.x;
}

fn func_2() -> vec4<u32> {
    global1 = array<Struct_2, 32>();
    var var_0 = abs(abs(-(~vec4<i32>(u_input.b.x, 1i, -12389i, -25402i))));
    var var_1 = Struct_4(vec2<bool>(!true, any(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true)))), global1[0u], Struct_2(Struct_1(412f * step(-164f, 1285f), !true, (u_input.a >> 0u) > (u_input.a * 14639u), 4098i, vec3<i32>(var_0.x, u_input.b.x, var_0.x) ^ ~vec3<i32>(u_input.b.x, u_input.b.x, 27716i))));
    let var_2 = Struct_2(Struct_1(var_1.c.a.a, var_1.a.x, func_4(vec3<f32>(func_3(0u, vec2<i32>(u_input.b.x, i32(-2147483648)), vec2<i32>(2147483647i, var_0.x)), 432f, 792f), Struct_3(var_1.b.a.e.x / var_0.x, select(vec3<bool>(var_1.c.a.b, var_1.c.a.c, true), vec3<bool>(var_1.a.x, true, true), var_1.c.a.c)), var_1.c.a.c, -15802i << (u_input.a ^ u_input.a)), ~61988i / (func_1(-28435i) / 0i), reverseBits((var_1.b.a.e ^ vec3<i32>(-314i, var_0.x, 0i)) % (var_1.b.a.e << vec3<u32>(u_input.a, 72976u, u_input.a)))));
    let var_3 = abs(~(~firstLeadingBit(15083u)));
    return vec4<u32>(0u, 1u, countOneBits(0u), countOneBits(var_3 % dot(vec2<u32>(83537u, u_input.a), vec2<u32>(u_input.a, 976u))) | (var_3 % (max(var_3, u_input.a) + dot(vec2<u32>(22722u, 0u), vec2<u32>(0u, 1u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = firstLeadingBit(func_1(~(abs(1i) ^ 1i)));
    global0 = func_1(u_input.b.x);
    let var_0 = func_2();
    var var_1 = -u_input.b;
    var var_2 = vec4<bool>(all(select(vec2<bool>(false, func_4(vec3<f32>(1192f, -1000f, 371f), Struct_3(u_input.b.x, vec3<bool>(true, false, true)), true, 69809i)), vec2<bool>(true && false, any(vec3<bool>(false, false, false))), select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false))))), -step(-2120f, -(-980f)) != select((-303f * 1182f) + -168f, (1400f / 2096f) * select(-1541f, -643f, true), false), !all(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), false)), !false);
    let var_3 = dot(vec4<u32>(u_input.a, abs(4294967295u), ~0u, u_input.a), vec4<u32>((~1u | (0u - 0u)) - u_input.a, ~dot(func_2().xy, firstTrailingBit(vec2<u32>(u_input.a, u_input.a))), u_input.a, func_2().x));
    var_2 = vec4<bool>(!var_2.x, all(!vec3<bool>(var_2.x, var_2.x, var_2.x)), !var_2.x, var_0.x < reverseBits((u_input.a * 60367u) * u_input.a));
    var_2 = vec4<bool>(var_2.x, select(var_2.x, !var_2.x, all(var_2.yx)), var_2.x, select(!true, ((-27731i >= 38068i) || true) || !all(vec2<bool>(true, false)), (~4294967295u / ~42774u) >= 1u));
    let x = u_input.a;
    s_output = StorageBuffer(1i, u_input.a, max(dot(clamp(~vec4<i32>(1i, 46360i, var_1.x, -1i), vec4<i32>(2147483647i, 2147483647i, var_1.x, 2147483647i) ^ vec4<i32>(u_input.b.x, var_1.x, var_1.x, 0i), vec4<i32>(u_input.b.x, var_1.x, -33027i, var_1.x)), vec4<i32>(i32(-2147483648), var_1.x, i32(-2147483648), -1i) * ~vec4<i32>(u_input.b.x, u_input.b.x, -33087i, u_input.b.x)), -6010i), ~(((var_0 >> var_0) << (vec4<u32>(var_0.x, 4294967295u, 4294967295u, 8233u) + var_0)) - ~(~var_0)), var_1.x / -dot(~vec3<i32>(-8837i, var_1.x, 2147483647i), vec3<i32>(var_1.x, u_input.b.x, var_1.x)));
}

