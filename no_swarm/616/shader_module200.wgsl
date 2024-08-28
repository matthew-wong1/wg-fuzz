// {"0:0":[177,246,142,167,15,166,68,142,107,77,63,37,239,170,250,126,226,55,36,56,178,25,177,130,148,86,182,181,124,68,231,234]}
// Seed: 4770107052112802215

struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec4<i32>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: bool,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<u32>, 6> = array<vec4<u32>, 6>(vec4<u32>(1u, 19830u, 4294967295u, 29162u), vec4<u32>(0u, 3265u, 4294967295u, 4294967295u), vec4<u32>(0u, 0u, 101134u, 52217u), vec4<u32>(3949u, 0u, 72282u, 98031u), vec4<u32>(50602u, 16046u, 26118u, 58299u), vec4<u32>(1u, 4294967295u, 1u, 0u));

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: vec4<u32>) -> vec3<bool> {
    let var_0 = Struct_3(vec2<u32>(arg_0.c.d, ~(~arg_3.x << arg_1.a)), -(reverseBits(max(u_input.a, arg_0.b)) >> (vec2<u32>(0u, arg_1.b) / vec2<u32>(0u, 13761u))), Struct_1(vec2<bool>(any(select(vec2<bool>(true, arg_0.c.a.x), global0.a, vec2<bool>(false, false))), true), all(select(select(vec3<bool>(arg_0.c.b, arg_1.c, true), vec3<bool>(false, false, false), vec3<bool>(arg_1.c, true, false)), vec3<bool>(true, global0.a.x, false), !vec3<bool>(true, global0.a.x, global0.b))), vec4<i32>(countOneBits(-13482i), arg_1.d.x, ~arg_1.d.x, -29662i), 4294967295u, step(global0.e, sign(-1616f * arg_0.c.e))));
    global1 = array<vec4<u32>, 6>();
    let var_1 = abs(~arg_2.zww);
    var var_2 = 2069f;
    var var_3 = Struct_3(abs(max(~(vec2<u32>(arg_0.c.d, 4294967295u) & arg_3.ww), arg_0.a + u_input.e)), min(arg_1.d.zx + -arg_0.c.c.xy, vec2<i32>(i32(-2147483648), clamp(1i, 1i, global0.c.x))) / global0.c.zz, arg_0.c);
    return select(select(vec3<bool>(var_3.c.a.x, countOneBits(arg_1.d.x) > 2147483647i, any(vec3<bool>(true, var_0.c.b, true))), !(!select(vec3<bool>(arg_1.c, true, false), vec3<bool>(var_3.c.a.x, var_0.c.b, true), false)), global0.b), vec3<bool>(!(-2851i >= dot(vec2<i32>(arg_1.d.x, arg_1.d.x), arg_1.d.yx)), (0i >> var_1.x) == var_3.b.x, (global0.c.x > (0i ^ 0i)) == all(arg_0.c.a)), select(vec3<bool>(!arg_0.c.b, false, all(select(vec2<bool>(var_0.c.a.x, var_3.c.a.x), vec2<bool>(global0.a.x, global0.a.x), arg_0.c.b))), vec3<bool>(any(select(vec3<bool>(arg_0.c.b, false, true), vec3<bool>(true, var_0.c.a.x, true), vec3<bool>(false, global0.a.x, arg_1.c))), false, all(var_0.c.a) != (arg_1.c & arg_1.c)), vec3<bool>(select(false, var_0.c.b, !var_3.c.b), reverseBits(0u) > 9545u, !(var_0.c.a.x != arg_0.c.b))));
}

fn func_2(arg_0: u32, arg_1: f32) -> f32 {
    global0 = Struct_1(global0.a, global0.b || any(func_3(Struct_3(u_input.e, global0.c.yx, Struct_1(vec2<bool>(false, true), global0.b, global0.c, 4294967295u, 141f)), Struct_2(u_input.e.x, arg_0, global0.b, vec3<i32>(-1631i, 2147483647i, 0i), u_input.e), global1[clamp(u_input.e.x, 0u, u_input.c)], ~vec4<u32>(45958u, 12415u, 4294967295u, arg_0))), global0.c, ~global0.d, arg_1);
    global1 = array<vec4<u32>, 6>();
    var var_0 = 1u;
    var_0 = arg_0;
    var var_1 = Struct_1(vec2<bool>(!global0.b & !(u_input.c <= u_input.c), global0.a.x), false, (abs(vec4<i32>(u_input.d, -1i, global0.c.x, global0.c.x)) % global0.c) << global1[4294967295u], arg_0, abs(-591f));
    return min(arg_1 * round((112f + -2023f) / -1000f), -1000f);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_3) -> vec4<i32> {
    var var_0 = global0.d;
    let var_1 = arg_1.d.yy;
    let var_2 = !(!select(!select(vec4<bool>(global0.b, true, arg_0.b, global0.a.x), vec4<bool>(global0.a.x, false, true, false), vec4<bool>(false, true, arg_1.c, true)), vec4<bool>(!arg_0.b, any(vec3<bool>(true, false, arg_2.c.a.x)), var_1.x != arg_0.c.x, global0.b), !vec4<bool>(arg_1.c, true, arg_2.c.b, global0.b)));
    global1 = array<vec4<u32>, 6>();
    global0 = Struct_1(vec2<bool>(false, sign(global0.e) < -(-702f)), arg_0.e <= func_2(arg_0.d, -(-874f) * (1582f - arg_0.e)), arg_0.c, 23031u, -922f);
    return global0.c >> global1[1u];
}

fn func_4(arg_0: vec4<i32>, arg_1: bool, arg_2: vec4<bool>) -> vec2<bool> {
    var var_0 = Struct_3(~(~(~clamp(u_input.e, u_input.e, u_input.e))), ~arg_0.yx, Struct_1(select(arg_2.xz, !vec2<bool>(true, true), select(vec2<bool>(false, arg_1), arg_2.zx, true)), (~2147483647i == 0i) && all(!arg_2), arg_0, 65869u, exp2(-523f)));
    var var_1 = ~vec3<u32>(28712u, min(~(~0u), firstLeadingBit(4294967295u)), dot(vec3<u32>(5911u, 4294967295u, 73265u) & vec3<u32>(u_input.c, global0.d, 1u), vec3<u32>(u_input.e.x, 1247u, u_input.b) * vec3<u32>(1u, 4294967295u, global0.d)) * ~(~var_0.a.x));
    var var_2 = vec2<u32>(0u, ~var_0.a.x);
    var var_3 = vec4<bool>(!func_3(Struct_3(~u_input.e, select(global0.c.xx, vec2<i32>(-36259i, arg_0.x), arg_2.x), Struct_1(global0.a, var_0.c.b, global0.c, var_0.a.x, global0.e)), Struct_2(reverseBits(21986u), ~34848u, arg_2.x, arg_0.wxx, ~var_0.a), select(vec4<u32>(39521u, 0u, var_1.x, 1u), vec4<u32>(u_input.c, 0u, global0.d, 0u), var_0.c.b) | global1[global0.d], vec4<u32>(~u_input.b, var_1.x, dot(vec2<u32>(var_0.c.d, 56565u), var_1.xy), ~37399u)).x, true & !any(select(vec3<bool>(arg_1, false, var_0.c.b), arg_2.yxx, true)), any(select(select(arg_2.yx, !vec2<bool>(var_0.c.a.x, arg_1), false), vec2<bool>(arg_1, true), select(vec2<bool>(arg_1, false), var_0.c.a, func_3(Struct_3(var_0.a, vec2<i32>(-16962i, i32(-2147483648)), Struct_1(arg_2.xy, arg_1, vec4<i32>(-42275i, -23468i, 65130i, var_0.c.c.x), var_0.a.x, 183f)), Struct_2(0u, 33875u, true, var_0.c.c.wwy, vec2<u32>(35222u, 30911u)), global1[7247u], global1[u_input.c]).x))), all(vec2<bool>(global0.b, !var_0.c.a.x)));
    var var_4 = Struct_3(vec2<u32>(26940u, ~(dot(var_1.xy, vec2<u32>(global0.d, 35883u)) << (43340u - 12023u))), firstTrailingBit(min((u_input.a << vec2<u32>(var_1.x, 28597u)) >> vec2<u32>(global0.d, var_1.x), ~(~global0.c.xy))), Struct_1(func_3(Struct_3(min(vec2<u32>(24329u, var_0.a.x), var_1.xz), arg_0.yx, Struct_1(vec2<bool>(var_0.c.a.x, var_0.c.b), var_0.c.a.x, vec4<i32>(u_input.a.x, -23732i, global0.c.x, 2147483647i), 58789u, global0.e)), Struct_2(0u, ~global0.d, !arg_2.x, -arg_0.zxx, firstLeadingBit(vec2<u32>(1u, 4294967295u))), global1[4294967295u % 1u] + (global1[67860u] & global1[var_2.x]), min(global1[global0.d * 53764u], ~global1[14590u])).zz, all(!(!vec4<bool>(true, false, var_0.c.b, var_3.x))), ~abs(abs(arg_0)), abs(var_1.x), 387f));
    return vec2<bool>(!(!false), arg_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(func_4(min(global0.c, firstTrailingBit(func_1(Struct_1(global0.a, global0.a.x, vec4<i32>(global0.c.x, 5234i, global0.c.x, u_input.a.x), 51667u, -748f), Struct_2(107253u, u_input.b, global0.a.x, vec3<i32>(-59231i, global0.c.x, global0.c.x), vec2<u32>(4294967295u, u_input.e.x)), Struct_3(vec2<u32>(global0.d, 29300u), vec2<i32>(u_input.a.x, global0.c.x), Struct_1(global0.a, global0.b, vec4<i32>(u_input.a.x, 38387i, i32(-2147483648), -34567i), u_input.e.x, 446f))))), global0.d <= ~11208u, vec4<bool>(25894i == dot(global0.c.wz, u_input.a), !all(vec3<bool>(true, true, false)), global0.a.x, false)), global0.a.x & !global0.b, vec4<i32>(global0.c.x >> u_input.c, u_input.a.x >> global0.d, -firstLeadingBit(-u_input.d), 2147483647i), global0.d, (-(-global0.e) * -func_2(4294967295u, -877f)) + -756f);
    var var_0 = vec4<u32>(dot((abs(vec4<u32>(47453u, 12662u, 42436u, 107u)) / (vec4<u32>(22083u, u_input.b, u_input.c, 4294967295u) * global1[69291u])) << ~(vec4<u32>(u_input.e.x, 12252u, 1u, 0u) & vec4<u32>(u_input.e.x, 78008u, 4294967295u, 5595u)), ~((global1[23183u] & global1[u_input.e.x]) & vec4<u32>(u_input.e.x, 65457u, global0.d, 60975u))), countOneBits(~firstLeadingBit(17413u)) / countOneBits(global0.d), ~(~(clamp(0u, 0u, 94694u) << dot(vec4<u32>(u_input.c, u_input.e.x, 0u, 13761u), vec4<u32>(u_input.e.x, 1u, global0.d, global0.d)))), dot(vec3<u32>(~global0.d + ~0u, ~global0.d, 0u), vec3<u32>(u_input.c, 45916u, abs(max(u_input.e.x, 0u)))));
    let var_1 = -global0.c.zwx;
    global0 = Struct_1(vec2<bool>(false, false), max(-(-(-847f)), 1440f) < (global0.e * ((global0.e / global0.e) / -466f)), -global0.c | max(~global0.c, global0.c), 0u - 17850u, exp2(-(-(1601f + global0.e))));
    var var_2 = 16251u;
    let x = u_input.a;
    s_output = StorageBuffer(34729u, -select(step(global0.e, 1611f) + (global0.e / global0.e), select(global0.e, -1000f, !false), false));
}

