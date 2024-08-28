// {"0:0":[40,72,199,88,248,84,0,237,218,220,164,224]}
// Seed: 14578165089360405627

struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(-1019f, 1000f), vec4<u32>(1u, 0u, 81433u, 226u), 1i, -770f);

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec3<f32>) -> f32 {
    let var_0 = ((round(floor(global0.a.x)) <= -(-(-560f))) || (-(384f / 1251f) != arg_2.x)) || false;
    global0 = Struct_1(global0.a, firstLeadingBit(vec4<u32>(arg_0.b.x, global0.b.x, max(global0.b.x | arg_0.b.x, global0.b.x << 4294967295u), ~u_input.b)), -12725i + -5740i, sign(exp2(arg_0.d)));
    let var_1 = vec2<bool>(var_0, global0.b.x == abs(firstLeadingBit(3251u) << firstTrailingBit(0u)));
    var var_2 = -dot(~vec4<i32>(arg_1, u_input.a, arg_1, -26231i) | ((vec4<i32>(global0.c, global0.c, global0.c, u_input.a) >> arg_0.b) >> ~arg_0.b), vec4<i32>(arg_0.c, ~(~arg_0.c), u_input.a | global0.c, select(15439i, -arg_1, var_0)));
    let var_3 = arg_2.xx + (vec2<f32>(global0.a.x, -784f) + arg_0.a);
    return arg_2.x;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_1 {
    global0 = Struct_1(vec2<f32>(floor(func_3(Struct_1(global0.a, arg_1.b, 2147483647i, global0.d), global0.c, -vec3<f32>(1941f, 1084f, -1064f))), floor(global0.d * 339f) + arg_1.d), vec4<u32>(reverseBits(~abs(arg_1.b.x)), ~dot(vec2<u32>(global0.b.x, 26033u), global0.b.yw) | firstTrailingBit(global0.b.x), ~4294967295u, ~dot(abs(arg_1.b), ~global0.b)), max(u_input.a, dot(~(~vec4<i32>(-1i, arg_1.c, i32(-2147483648), i32(-2147483648))), select(vec4<i32>(-1i, arg_1.c, 0i, -1i), vec4<i32>(60160i, 2147483647i, i32(-2147483648), i32(-2147483648)), vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x)) / (vec4<i32>(2612i, -7394i, -1i, global0.c) & vec4<i32>(global0.c, arg_1.c, 0i, 886i)))), (global0.a.x * -(-global0.d)) / ((step(-943f, -524f) * select(-630f, 1000f, arg_0.x)) - -1307f));
    global0 = Struct_1(arg_1.a, arg_1.b, ~u_input.a, -(-step(-1103f, 217f * arg_1.d)));
    global0 = arg_1;
    global0 = Struct_1(global0.a * select(-max(arg_1.a, vec2<f32>(855f, global0.a.x)), trunc(arg_1.a), arg_0), firstTrailingBit(~reverseBits(vec4<u32>(79327u, 1u, 0u, 42831u))), arg_1.c, 1000f / -1878f);
    global0 = arg_1;
    return arg_1;
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = func_2(select(arg_0.yz, arg_0.yw, arg_0.x), Struct_1(vec2<f32>(-1964f, ceil(185f) / global0.d), select(firstLeadingBit(global0.b), vec4<u32>(62675u, 13106u, u_input.c, global0.b.x), arg_0) & ~vec4<u32>(global0.b.x, 24569u, u_input.b, u_input.c), -(-27000i), global0.d + global0.d));
    let var_1 = ~(~(~4294967295u) / 4372u) >> ((dot(vec2<u32>(1u, var_0.b.x), max(vec2<u32>(0u, 4294967295u), var_0.b.wy)) >> global0.b.x) & 1u);
    var_0 = func_2(!arg_0.yy, func_2(!(!select(arg_0.zw, arg_0.wx, vec2<bool>(arg_0.x, true))), Struct_1(vec2<f32>(global0.d + global0.a.x, 239f), vec4<u32>(global0.b.x, u_input.b, var_1, u_input.b) % clamp(global0.b, vec4<u32>(1u, 4294967295u, 4294967295u, 16359u), var_0.b), -17456i, 745f)));
    var_0 = Struct_1(global0.a, var_0.b, global0.c / (countOneBits(u_input.a) - -2930i), -585f * var_0.d);
    var var_2 = (130125u - u_input.c) - ~(~(global0.b.x | u_input.c));
    return Struct_1(ceil(global0.a), vec4<u32>(var_0.b.x, global0.b.x, ~var_1, 4294967295u), global0.c, -365f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(u_input.a) > u_input.a;
    let var_1 = !(!true && var_0) || var_0;
    let var_2 = firstLeadingBit(-reverseBits(reverseBits(clamp(vec3<i32>(-29367i, -1i, u_input.a), vec3<i32>(3500i, u_input.a, u_input.a), vec3<i32>(69910i, 23288i, global0.c)))));
    global0 = func_1(vec4<bool>(false, select(!false | false, var_0, 23963i >= (u_input.a * global0.c)), !any(!vec3<bool>(var_1, false, var_0)), false));
    let var_3 = ~dot(-(vec3<i32>(global0.c, 33939i, var_2.x) & vec3<i32>(var_2.x, 14021i, global0.c)) << ~countOneBits(global0.b.ywx), vec3<i32>(global0.c, -1i, -global0.c) & clamp(var_2, var_2, clamp(vec3<i32>(global0.c, 9655i, global0.c), vec3<i32>(0i, var_2.x, 8353i), var_2)));
    global0 = Struct_1(-(vec2<f32>(-global0.a.x, -global0.d) / -(global0.a / vec2<f32>(299f, global0.d))), global0.b, -15264i, (min(657f, -915f + -1000f) / (-(-1708f) * global0.d)) - -1423f);
    let var_4 = func_1(vec4<bool>(false, any(select(vec3<bool>(true, true, false), vec3<bool>(var_1, var_0, true), vec3<bool>(true, true, var_0))) && var_0, any(select(select(vec4<bool>(var_1, var_1, false, var_1), vec4<bool>(var_1, var_0, true, var_0), var_0), select(vec4<bool>(false, var_0, var_1, false), vec4<bool>(var_1, false, false, false), true), !vec4<bool>(true, var_1, true, var_0))), false));
    global0 = func_1(select(vec4<bool>(any(!vec2<bool>(false, true)), select(false, false, all(vec2<bool>(var_0, true))), false, 0u >= countOneBits(u_input.c)), select(select(!vec4<bool>(true, false, var_1, false), !vec4<bool>(false, var_0, var_1, var_0), true || false), select(!vec4<bool>(false, false, false, true), select(vec4<bool>(var_1, var_1, var_1, var_0), vec4<bool>(false, false, var_0, false), true), !var_1), true), !select(select(vec4<bool>(var_0, var_1, var_1, true), vec4<bool>(var_0, var_1, false, false), var_0), vec4<bool>(var_1, var_0, false, false), var_1)));
    var var_5 = vec4<i32>(-dot(vec4<i32>(var_4.c, 2147483647i, global0.c, 0i), vec4<i32>(u_input.a, i32(-2147483648), -8720i, u_input.a)) ^ reverseBits(0i % abs(12910i)), (~1i - global0.c) * global0.c, (-(~1i) | func_1(!vec4<bool>(false, true, true, var_1)).c) % var_2.x, abs(-u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(var_4.b.yx), -vec3<f32>(func_1(!vec4<bool>(false, false, var_0, var_1)).d, -1293f, select(var_4.a.x, global0.a.x, var_1) + global0.d));
}

