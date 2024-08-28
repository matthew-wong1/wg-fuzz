// {"0:0":[200,50,199,50]}
// Seed: 11826187093748561185

struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: u32,
    c: vec3<bool>,
    d: vec4<bool>,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_2,
    d: Struct_4,
    e: Struct_4,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7>;

fn func_3(arg_0: Struct_5, arg_1: vec4<i32>, arg_2: Struct_5, arg_3: i32) -> vec3<i32> {
    global0 = array<bool, 7>();
    var var_0 = arg_2.a.a.c.a.x;
    let var_1 = !(true && false);
    var var_2 = -arg_0.c.c.a.x + (-575f + arg_0.c.c.a.x);
    var var_3 = 0u;
    return -select(clamp(vec3<i32>(2147483647i, -4452i, arg_0.b.a.a.x) ^ (vec3<i32>(0i, arg_3, 40059i) ^ arg_1.yxw), -vec3<i32>(-23125i, i32(-2147483648), arg_3) / arg_0.b.a.a, vec3<i32>(-1i, arg_3 / arg_3, -1i)), arg_0.b.a.a, all(select(vec3<bool>(global0[76625u], global0[49286u], true), arg_2.d.c, false)) || true);
}

fn func_2(arg_0: vec3<f32>) -> Struct_4 {
    global0 = array<bool, 7>();
    var var_0 = Struct_5(Struct_3(Struct_2(vec3<i32>(2147483647i / 2147483647i, select(-32715i, -1i, global0[40994u]), -(-17448i)), vec2<bool>(any(vec4<bool>(false, global0[u_input.a], global0[u_input.a], true)), u_input.a == 1u), Struct_1(floor(vec4<f32>(337f, -1274f, -269f, arg_0.x))))), Struct_3(Struct_2(func_3(Struct_5(Struct_3(Struct_2(vec3<i32>(1i, 45563i, -10281i), vec2<bool>(true, global0[u_input.a]), Struct_1(vec4<f32>(arg_0.x, -1076f, arg_0.x, arg_0.x)))), Struct_3(Struct_2(vec3<i32>(-14495i, 2147483647i, 26921i), vec2<bool>(global0[u_input.a], false), Struct_1(vec4<f32>(-874f, -298f, -585f, arg_0.x)))), Struct_2(vec3<i32>(-1i, i32(-2147483648), -31958i), vec2<bool>(true, global0[4294967295u]), Struct_1(vec4<f32>(arg_0.x, 2038f, arg_0.x, -149f))), Struct_4(arg_0.zz, u_input.a, vec3<bool>(false, global0[u_input.a], true), vec4<bool>(global0[52049u], true, false, false), Struct_2(vec3<i32>(13606i, -1i, 48320i), vec2<bool>(true, true), Struct_1(vec4<f32>(arg_0.x, 363f, arg_0.x, 1743f)))), Struct_4(vec2<f32>(-253f, 1082f), 4294967295u, vec3<bool>(true, false, global0[u_input.a]), vec4<bool>(false, global0[u_input.a], false, false), Struct_2(vec3<i32>(-66708i, 0i, 20014i), vec2<bool>(global0[1u], global0[u_input.a]), Struct_1(vec4<f32>(arg_0.x, 1120f, -543f, -770f))))), vec4<i32>(2147483647i, -68018i, 32717i, i32(-2147483648)), Struct_5(Struct_3(Struct_2(vec3<i32>(i32(-2147483648), 2147483647i, -7062i), vec2<bool>(true, true), Struct_1(vec4<f32>(316f, arg_0.x, 336f, -211f)))), Struct_3(Struct_2(vec3<i32>(29402i, 1i, -17888i), vec2<bool>(global0[4294967295u], false), Struct_1(vec4<f32>(arg_0.x, -472f, -1000f, -521f)))), Struct_2(vec3<i32>(-64943i, -1171i, -14905i), vec2<bool>(global0[u_input.a], global0[u_input.a]), Struct_1(vec4<f32>(arg_0.x, 879f, arg_0.x, arg_0.x))), Struct_4(arg_0.zz, 50764u, vec3<bool>(true, global0[1u], true), vec4<bool>(global0[u_input.a], global0[u_input.a], global0[u_input.a], global0[u_input.a]), Struct_2(vec3<i32>(1i, 2147483647i, 2147483647i), vec2<bool>(false, false), Struct_1(vec4<f32>(arg_0.x, arg_0.x, 813f, -1233f)))), Struct_4(arg_0.zx, 11217u, vec3<bool>(false, true, global0[0u]), vec4<bool>(global0[u_input.a], global0[1u], false, global0[44613u]), Struct_2(vec3<i32>(-1i, 25398i, 12156i), vec2<bool>(true, global0[1u]), Struct_1(vec4<f32>(arg_0.x, arg_0.x, 1826f, -612f))))), ~(-6325i)), select(vec2<bool>(global0[13170u], global0[1u]), vec2<bool>(global0[u_input.a], true), !global0[1u]), Struct_1(sign(vec4<f32>(414f, 496f, arg_0.x, 475f))))), Struct_2(vec3<i32>(~(-1115i - 9989i), -1i, abs(11770i / -15029i)), vec2<bool>(any(!vec3<bool>(false, global0[u_input.a], false)), global0[clamp(u_input.a, ~41003u, 4294967295u)]), Struct_1(-vec4<f32>(653f, arg_0.x, arg_0.x, -408f) + max(vec4<f32>(-793f, arg_0.x, arg_0.x, arg_0.x), vec4<f32>(arg_0.x, -120f, -212f, -961f)))), Struct_4(arg_0.zz, select(~65561u, abs(32604u), !(global0[u_input.a] && global0[0u])), vec3<bool>(!all(vec2<bool>(true, global0[u_input.a])), global0[1u], true || !true), vec4<bool>(!true, global0[~u_input.a >> 4294967295u], !(!false), global0[dot(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(13442u, u_input.a, u_input.a))]), Struct_2(~(vec3<i32>(1844i, 0i, -22594i) >> vec3<u32>(u_input.a, u_input.a, 1u)), select(!vec2<bool>(global0[23642u], true), vec2<bool>(global0[1u], false), !vec2<bool>(global0[82196u], global0[u_input.a])), Struct_1(-vec4<f32>(-175f, arg_0.x, 534f, -1557f)))), Struct_4(-(-vec2<f32>(arg_0.x, arg_0.x)), u_input.a, select(vec3<bool>(global0[3170u / 65716u], !true, global0[~4294967295u]), vec3<bool>(u_input.a <= 0u, arg_0.x > arg_0.x, false), all(vec2<bool>(true, false))), vec4<bool>(global0[firstTrailingBit(u_input.a & 1u)], true, !global0[0u], any(select(vec3<bool>(global0[u_input.a], global0[46059u], global0[u_input.a]), vec3<bool>(true, global0[u_input.a], true), vec3<bool>(false, global0[u_input.a], global0[75270u])))), Struct_2(~vec3<i32>(3236i, -15627i, 13060i) * vec3<i32>(2147483647i, -14537i, -32637i), !vec2<bool>(true, global0[87943u]), Struct_1(floor(vec4<f32>(395f, 801f, arg_0.x, arg_0.x))))));
    var_0 = Struct_5(var_0.a, var_0.a, var_0.c, var_0.e, Struct_4(step(vec2<f32>(568f, -984f) * -arg_0.xz, abs(-arg_0.xx)), u_input.a, var_0.d.c, var_0.d.d, var_0.a.a));
    var var_1 = 56077u;
    var var_2 = ~10484u % (~(~u_input.a) % 0u);
    return Struct_4(vec2<f32>(round(arg_0.x), -(var_0.d.a.x + select(-133f, var_0.b.a.c.a.x, true))), 81537u ^ 1u, select(var_0.e.d.zwx, var_0.e.d.zyz, var_0.d.c), select(var_0.d.d, vec4<bool>(true, global0[countOneBits(15751u & var_0.e.b)], true, !any(var_0.e.d)), all(!var_0.d.d.xxy)), var_0.a.a);
}

fn func_1(arg_0: u32, arg_1: vec2<f32>, arg_2: u32, arg_3: Struct_2) -> f32 {
    var var_0 = arg_3.a.x;
    var_0 = ~arg_3.a.x;
    var_0 = arg_3.a.x;
    var var_1 = func_2(-arg_3.c.a.xzy);
    var var_2 = vec4<bool>(func_2(-(-var_1.e.c.a.zzw)).b > 74569u, all(select(select(!var_1.d.zyw, vec3<bool>(arg_3.b.x, false, global0[73910u]), func_2(var_1.e.c.a.zzx).c), !(!vec3<bool>(var_1.e.b.x, global0[128429u], arg_3.b.x)), func_2(vec3<f32>(102f, 1162f, -316f)).c)), false, var_1.e.a.x > (-32884i + ((2379i / 20926i) | var_1.e.a.x)));
    return var_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 7>();
    global0 = array<bool, 7>();
    let var_0 = vec4<f32>(step(-323f, min(step(func_1(1u, vec2<f32>(-1149f, -863f), u_input.a, Struct_2(vec3<i32>(7110i, 37238i, -12829i), vec2<bool>(global0[u_input.a], false), Struct_1(vec4<f32>(1038f, 1517f, 1000f, 862f)))), abs(1184f)), abs(-250f))), -772f, max(-(781f * 327f) - abs(611f - -363f), max(-870f * -1442f, -270f) / func_1(u_input.a - 4294967295u, vec2<f32>(-1225f, 1826f), u_input.a, func_2(vec3<f32>(-1000f, 1598f, -549f)).e)), -sign(-(-689f)));
    global0 = array<bool, 7>();
    global0 = array<bool, 7>();
    var var_1 = Struct_3(func_2(vec3<f32>(-313f, var_0.x + var_0.x, -523f) + (-var_0.yww + -vec3<f32>(-730f, var_0.x, -537f))).e);
    let x = u_input.a;
    s_output = StorageBuffer(min(select(select(min(-1810i, var_1.a.a.x), 2147483647i, !false), clamp(24410i, var_1.a.a.x >> u_input.a, -38550i), global0[reverseBits(u_input.a)]), -1161i));
}

