// {"0:0":[134,7,199,106,73,161,191,169,93,249,10,90,152,146,50,210,31,78,232,161,94,97,97,74,70,217,230,199,84,20,58,91,221,37,108,35,223,28,88,240,114,83,157,60,229,246,95,239,231,124,146,91,191,33,206,251,57,154,197,73,119,195,60,81]}
// Seed: 4387867359310518203

struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<i32>,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: Struct_3,
    d: Struct_1,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, false);

var<private> global1: bool;

var<private> global2: u32;

var<private> global3: array<vec2<f32>, 8>;

fn func_1(arg_0: Struct_2, arg_1: f32) -> f32 {
    return step(arg_1, abs(arg_1 + -232f)) * arg_1;
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: u32) -> u32 {
    let var_0 = vec4<f32>(trunc(-1744f * func_1(Struct_2(Struct_1(-1295f, global0.x, global0.x, vec2<f32>(430f, -901f)), arg_0, u_input.a, global0.x, true), -1015f)) / select(sign(-963f) + -1079f, exp2(1207f) - step(235f, -974f), firstLeadingBit(arg_0) < u_input.a.x), 1620f * (-(-728f) - ((650f * 1184f) + -1011f)), (-1000f * -1018f) - sign(-1027f), -582f);
    let var_1 = vec3<f32>((-(-329f * 1000f) - var_0.x) + -262f, -179f, -var_0.x);
    global0 = select(select(select(select(select(vec3<bool>(true, global0.x, false), vec3<bool>(global0.x, false, false), false), select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(false, global0.x, true), vec3<bool>(true, global0.x, false)), select(vec3<bool>(global0.x, true, false), vec3<bool>(true, true, global0.x), vec3<bool>(global0.x, false, global0.x))), vec3<bool>(true, any(vec4<bool>(global0.x, true, global0.x, global0.x)), global0.x), true), vec3<bool>(!global0.x, select(global0.x, global0.x, !true), (var_1.x <= var_1.x) || !global0.x), !(!global0.x)), vec3<bool>(global0.x, round(916f * var_0.x) >= trunc(-(-2033f)), any(select(select(vec2<bool>(true, global0.x), global0.xy, global0.zz), !global0.yy, true))), !select(select(vec3<bool>(true, false, true), !vec3<bool>(false, global0.x, global0.x), !global0.x), !(!vec3<bool>(global0.x, false, global0.x)), true));
    var var_2 = Struct_1(var_1.x, any(select(vec3<bool>(!true, global0.x, true), vec3<bool>(select(true, true, true), true, any(vec3<bool>(global0.x, global0.x, global0.x))), select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, global0.x, global0.x), select(vec3<bool>(false, global0.x, false), vec3<bool>(global0.x, true, global0.x), vec3<bool>(global0.x, false, true))))), !(!(-var_1.x >= select(var_1.x, 214f, true))), ceil(round(vec2<f32>(round(-285f), var_0.x))));
    let var_3 = !global0.x;
    return (arg_2 % (~(4294967295u * 1u) * dot(~vec2<u32>(21990u, 51767u), vec2<u32>(1u, 17824u)))) / ~arg_2;
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_4) -> f32 {
    global1 = !all(!vec3<bool>(2147483647i > arg_1.a, true, all(global0.xx)));
    var var_0 = 8459i;
    global2 = ~func_3(-(24157i | 25735i) << 1u, vec4<u32>(arg_1.b, ~(arg_1.b / 0u), ~select(1u, u_input.c.x, arg_1.d.c), ~dot(vec4<u32>(1u, 13019u, u_input.d.x, arg_1.b), vec4<u32>(u_input.c.x, u_input.c.x, u_input.b.x, 1u))), arg_1.b << ~u_input.b.x);
    var var_1 = Struct_3(-(555f + 1709f));
    var var_2 = vec3<f32>(1483f, -floor(min(381f, -880f) - 947f), -790f / max(var_1.a, -(var_1.a / var_1.a)));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(-select(-914f, select(func_1(Struct_2(Struct_1(-315f, false, global0.x, global3[u_input.d.x]), 68731i, u_input.a, false, global0.x), -322f), 569f - 1000f, true), global0.x));
    let var_1 = Struct_5(vec4<f32>(-(var_0.a - var_0.a) + var_0.a, -1279f, floor(-1027f) + floor(func_2(vec3<f32>(var_0.a, -332f, var_0.a), Struct_4(u_input.a.x, u_input.c.x, Struct_3(-288f), Struct_1(-1109f, global0.x, true, global3[1u])))), var_0.a), vec4<i32>(~2147483647i, u_input.a.x, u_input.a.x, ~(~(1i + 0i))), -(-(-vec4<i32>(40455i, u_input.a.x, 12812i, u_input.a.x))) ^ (~vec4<i32>(u_input.a.x, u_input.a.x, -1i, u_input.a.x) ^ vec4<i32>(i32(-2147483648) >> u_input.c.x, u_input.a.x, clamp(u_input.a.x, 1362i, -22201i), countOneBits(2147483647i))), 1117f);
    let var_2 = abs(var_0.a - var_1.d);
    var var_3 = firstTrailingBit(36781u ^ (u_input.d.x + abs(u_input.c.x >> u_input.b.x)));
    var var_4 = countOneBits(u_input.b.x * ((42848u | u_input.d.x) - countOneBits(0u))) + abs(70489u);
    global1 = any(select(vec4<bool>(all(!vec4<bool>(global0.x, global0.x, false, false)), global0.x, global0.x, true), vec4<bool>(global0.x, !global0.x && global0.x, !global0.x & false, false), all(!select(vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(global0.x, true, global0.x, true)))));
    var var_5 = vec3<i32>(dot(abs(u_input.a), abs(u_input.a)), countOneBits(clamp(~min(u_input.a.x, u_input.a.x), (u_input.a.x % i32(-2147483648)) & -8750i, u_input.a.x)), -31894i);
    let var_6 = Struct_1(var_1.d + (-(-(-730f)) / 589f), any(select(vec3<bool>(global0.x, false | global0.x, global0.x), vec3<bool>(!global0.x, global0.x, false), true)), global0.x, var_1.a.wx);
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<f32>(1000f, ceil(255f) / step(-157f, -2162f), -round(384f), var_0.a - -var_1.d), countOneBits(u_input.b), -(~(~(2147483647i / var_1.b.x))), var_5.x, var_1.c.x);
}

