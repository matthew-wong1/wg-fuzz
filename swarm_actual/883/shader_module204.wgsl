// {"0:0":[189,181,42,46,184,96,14,204,125,153,68,203,147,231,161,74,184,46,31,92,31,40,100,119,9,210,57,7,173,223,199,183]}
// Seed: 14064595208421722303

struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec2<bool>,
    d: vec3<bool>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_1 = Struct_1(-1i, vec2<i32>(34351i, 1i));

var<private> global2: Struct_1;

fn func_3() -> u32 {
    let var_0 = -1000f;
    var var_1 = u_input.a.x;
    global0 = global2.a <= global2.a;
    global0 = !true;
    var var_2 = Struct_1(global2.b.x, global2.b);
    return ~(~u_input.a.x);
}

fn func_2() -> vec2<bool> {
    var var_0 = Struct_2(Struct_1(~8677i, vec2<i32>(-64926i, 0i)), vec2<u32>(u_input.a.x | reverseBits(1u ^ u_input.a.x), 75731u), vec2<bool>(!((global2.a <= u_input.b.x) != !false), any(!vec2<bool>(false, false))), !vec3<bool>(4294967295u < func_3(), all(!vec3<bool>(true, true, false)), true), max(abs(vec4<f32>(-386f, -250f, 1000f, 1000f) - -vec4<f32>(163f, 189f, -823f, -1933f)), vec4<f32>(ceil(503f) - -2782f, (493f - -1000f) + -758f, -(387f - 184f), step(558f, 571f) - 1727f)));
    var var_1 = 898f;
    var var_2 = var_0.a;
    let var_3 = ~var_0.b;
    var var_4 = vec4<f32>(max(1367f, var_0.e.x), 892f, max(-638f, exp2(-min(221f, var_0.e.x))), -137f);
    return select(!var_0.c, vec2<bool>(!(!true), any(var_0.d.xz)), !var_0.d.xz);
}

fn func_4(arg_0: vec2<bool>, arg_1: i32) -> Struct_1 {
    let var_0 = 0u << abs(dot(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u), min(vec4<u32>(u_input.a.x, u_input.a.x, 26775u, u_input.a.x), vec4<u32>(u_input.a.x, 92572u, 4294967295u, 4294967295u))) << max(76090u * 18175u, u_input.a.x));
    var var_1 = Struct_2(Struct_1(~49865i, vec2<i32>(-11616i & global2.a, 20595i)), reverseBits(abs(~u_input.a.ww)), vec2<bool>(true, false), vec3<bool>(arg_0.x, (global1.b.x / global2.b.x) <= u_input.b.x, any(select(select(vec4<bool>(true, false, arg_0.x, false), vec4<bool>(true, arg_0.x, false, true), false), !vec4<bool>(arg_0.x, false, false, arg_0.x), global2.a < 16377i))), vec4<f32>(-(-141f / (1522f * 1033f)), -(-125f), 681f, (-1000f + -616f) * ((781f / 860f) / (-1497f + -1000f))));
    let var_2 = 294f;
    return var_1.a;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> Struct_2 {
    var var_0 = Struct_2(func_4(func_2(), abs(~1i)), abs(vec2<u32>(arg_2, 16220u) * u_input.a.xx), !(!vec2<bool>(false, false)), !(!vec3<bool>(!false, !true, 16081i >= -1i)), trunc(-(select(vec4<f32>(arg_0, arg_0, -1000f, 2863f), vec4<f32>(arg_0, -1182f, arg_0, -703f), true) - sign(vec4<f32>(-1326f, 3129f, arg_0, 888f)))));
    var var_1 = Struct_2(arg_1, var_0.b | vec2<u32>(~(u_input.a.x | u_input.a.x), 0u), var_0.c, vec3<bool>(var_0.d.x, true, firstTrailingBit(var_0.b.x) != 0u), -(vec4<f32>(1000f, -arg_0, arg_0, -1012f) / var_0.e));
    var_1 = Struct_2(Struct_1(0i & min(-49463i, 2147483647i), ~vec2<i32>(global2.b.x, -27841i)), vec2<u32>(dot(u_input.a.zxw - (vec3<u32>(18989u, 1u, var_0.b.x) | u_input.a.yyy), u_input.a.wzw), 0u), !vec2<bool>(true, all(vec2<bool>(true, true)) | true), !(!vec3<bool>(all(var_0.c), var_1.d.x == false, var_1.c.x)), vec4<f32>(var_1.e.x + max(-var_1.e.x, 1135f), abs(-(-arg_0)), round(1534f) - (abs(-592f) - (385f * 668f)), floor(floor(sign(arg_0)))));
    var_1 = Struct_2(Struct_1(2147483647i, ~(-(global1.b >> vec2<u32>(var_1.b.x, u_input.a.x)))), ~(abs(~vec2<u32>(41215u, arg_2)) - ((vec2<u32>(7281u, var_1.b.x) - var_1.b) | (vec2<u32>(1u, 4294967295u) * vec2<u32>(79751u, var_1.b.x)))), vec2<bool>(any(!(!vec4<bool>(var_0.d.x, false, false, true))), !((-1i * 8396i) == (u_input.b.x | -8077i))), select(!select(select(var_0.d, vec3<bool>(true, false, var_0.d.x), false), var_1.d, var_0.d.x), vec3<bool>(true, (574f * -1356f) <= (825f - arg_0), all(var_1.c)), !(global1.a <= var_1.a.b.x)), floor(vec4<f32>(-(427f * 133f), abs(var_1.e.x), min(-arg_0, -192f), arg_0)));
    global0 = any(!(!select(vec4<bool>(false, var_0.c.x, false, false), vec4<bool>(var_0.c.x, var_1.d.x, var_1.d.x, var_0.d.x), vec4<bool>(true, true, var_1.c.x, var_1.c.x))));
    return Struct_2(func_4(!func_2(), arg_1.a), vec2<u32>(var_0.b.x, var_1.b.x), var_0.c, !select(!var_1.d, var_0.d, !var_1.c.x), vec4<f32>(-(-(-var_1.e.x)), step((-823f - -554f) * -1148f, min(arg_0 * -944f, trunc(arg_0))), -215f + 1814f, abs(step(var_1.e.x, var_1.e.x) * arg_0)));
}

fn func_1() -> Struct_1 {
    var var_0 = func_5(-(-1249f), func_4(!select(func_2(), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), false), -select(global2.b.x / 0i, u_input.b.x, all(vec2<bool>(true, true)))), 1u);
    let var_1 = var_0.e.x;
    let var_2 = dot((vec4<u32>(var_0.b.x, 4294967295u + var_0.b.x, 4294967295u / 37128u, var_0.b.x) / ~vec4<u32>(var_0.b.x, 36129u, var_0.b.x, var_0.b.x)) / abs(vec4<u32>(0u, ~var_0.b.x, 0u, var_0.b.x)), vec4<u32>(firstLeadingBit(u_input.a.x), reverseBits(reverseBits(~u_input.a.x)), var_0.b.x, 4294967295u + u_input.a.x));
    let var_3 = func_5(sign(ceil(1101f)), func_4(select(vec2<bool>(!var_0.c.x, u_input.a.x > var_2), vec2<bool>(var_0.d.x, any(vec4<bool>(true, var_0.c.x, var_0.d.x, var_0.c.x))), var_0.d.yx), u_input.b.x), var_0.b.x);
    global0 = (var_2 & (10200u & var_3.b.x)) >= (var_3.b.x % ~((u_input.a.x + 0u) / min(4294967295u, u_input.a.x)));
    return Struct_1(global2.a - global2.b.x, ~((-var_0.a.b - ~vec2<i32>(-12752i, u_input.b.x)) + (global1.b & -var_3.a.b)));
}

fn func_6(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<bool>) -> vec4<f32> {
    global1 = func_4(vec2<bool>(arg_2.d.x, arg_2.d.x), arg_2.a.b.x - arg_0);
    global1 = Struct_1(func_5(arg_2.e.x, func_4(arg_3, -u_input.b.x | -9072i), 0u).a.a, vec2<i32>(~6677i, -(arg_1.a * (-17615i % arg_1.a))));
    let var_0 = arg_2;
    global2 = func_4(vec2<bool>(false, (-var_0.e.x * abs(-1327f)) > (var_0.e.x + arg_2.e.x)), -(func_5(-375f, Struct_1(global1.b.x, arg_2.a.b), u_input.a.x).a.b.x * (0i >> dot(vec2<u32>(var_0.b.x, 1u), var_0.b))));
    global0 = all(select(var_0.d, func_5(arg_2.e.x, arg_2.a, var_0.b.x).d, any(func_5(abs(arg_2.e.x), arg_1, var_0.b.x).d)));
    return vec4<f32>(var_0.e.x, -272f, -(-(-var_0.e.x) * (var_0.e.x * (var_0.e.x + var_0.e.x))), -435f);
}

fn func_7(arg_0: vec4<f32>, arg_1: vec4<u32>) -> u32 {
    var var_0 = ~(arg_1 + ~max(arg_1 - u_input.a, vec4<u32>(4294967295u, 45905u, arg_1.x, 27325u)));
    var_0 = (u_input.a << abs(arg_1 - vec4<u32>(0u, u_input.a.x, 53795u, var_0.x))) + arg_1;
    global0 = func_2().x;
    var_0 = arg_1 % reverseBits(vec4<u32>(~1u, clamp(select(0u, u_input.a.x, true), 1u ^ 1u, ~1u), (var_0.x + 4574u) ^ ~109115u, ~abs(25020u)));
    global1 = Struct_1(~global1.a, func_5(-func_5(arg_0.x, Struct_1(global1.b.x, global1.b), u_input.a.x).e.x, func_4(!vec2<bool>(true, true), abs(global1.a)), ~26085u - u_input.a.x).a.b % firstTrailingBit(~vec2<i32>(37114i, -1i)));
    return ~(~(dot(arg_1, vec4<u32>(1u, 1u, 31458u, 27980u)) & abs(arg_1.x)) & 87279u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = dot(abs(firstTrailingBit(u_input.a.wyw)), firstLeadingBit(vec3<u32>(4294967295u + 1u, ~1u, 8068u % u_input.a.x) * vec3<u32>(~2645u, 4294967295u, u_input.a.x)));
    var var_1 = Struct_1(-global2.a << (1u % var_0), ~clamp(firstLeadingBit(~u_input.b), vec2<i32>(global2.b.x, global1.b.x) & abs(u_input.b), global1.b));
    global0 = !true;
    let var_2 = firstLeadingBit(min(vec2<i32>(-40014i, -(-22182i) ^ ~global2.a), global1.b));
    var var_3 = ~func_7(func_6(~(-21776i) << clamp(4294967295u, 1u, var_0), Struct_1(1i >> 4294967295u, vec2<i32>(2147483647i, u_input.b.x)), Struct_2(func_1(), u_input.a.zx & vec2<u32>(0u, 4294967295u), !vec2<bool>(false, false), vec3<bool>(true, true, true), -vec4<f32>(-1000f, 481f, 514f, -771f)), !func_5(-1587f, Struct_1(0i, global1.b), 31736u).d.xx), ~(~vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x)));
    let var_4 = ((dot(vec4<u32>(17655u, var_0, var_0, 12826u), u_input.a >> u_input.a) ^ min(func_3(), u_input.a.x)) - u_input.a.x) / (~0u % u_input.a.x);
    global0 = !(!any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false)))) || any(select(!(!vec2<bool>(false, true)), !select(vec2<bool>(false, true), vec2<bool>(true, false), false), !(!true)));
    var var_5 = var_4;
    global0 = !(all(vec2<bool>(!true, all(vec2<bool>(true, true)))) | false);
    let x = u_input.a;
    s_output = StorageBuffer(-1i, -187f);
}

