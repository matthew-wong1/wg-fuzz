// {"0:0":[188,232,122,88,21,155,48,161,255,249,18,105,8,194,115,59]}
// Seed: 1517463287367699601

struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: i32,
    d: u32,
    e: bool,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 25>;

var<private> global1: f32;

var<private> global2: vec2<i32> = vec2<i32>(2147483647i, 1i);

var<private> global3: bool;

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: f32) -> vec3<u32> {
    let var_0 = -vec3<i32>(global2.x << firstLeadingBit(arg_1.b), -1i, arg_1.a) - abs(abs(firstTrailingBit(vec3<i32>(global2.x, 2147483647i, 0i))) * select(reverseBits(vec3<i32>(i32(-2147483648), 0i, global2.x)), reverseBits(vec3<i32>(1i, arg_1.a, -15694i)), vec3<bool>(arg_1.e.x, false, arg_1.e.x)));
    global0 = array<f32, 25>();
    let var_1 = !false;
    let var_2 = Struct_2(select(arg_1.c.b, !(!select(arg_1.d.b, vec2<bool>(arg_1.c.b.x, false), vec2<bool>(arg_1.e.x, true))), arg_1.e.x), arg_1.a);
    let var_3 = -round(floor(exp2(arg_0)));
    return u_input.a.xzx;
}

fn func_2() -> Struct_3 {
    var var_0 = u_input.a.wwx ^ max(~func_3(ceil(-1572f), Struct_4(-1i, u_input.a.x, Struct_1(true, vec2<bool>(true, false), global0[4294967295u]), Struct_1(false, vec2<bool>(true, true), global0[52418u]), vec2<bool>(true, false)), global0[85112u]), u_input.a.xxx);
    var var_1 = -max(trunc(vec3<f32>(global0[var_0.x], sign(global0[u_input.a.x]), -global0[u_input.a.x])), -max(vec3<f32>(global0[u_input.a.x], -626f, global0[4248u]) - vec3<f32>(global0[u_input.a.x], 1740f, global0[var_0.x]), vec3<f32>(-626f, global0[4294967295u], global0[12417u]) / vec3<f32>(185f, -290f, global0[9082u])));
    global3 = all(!vec4<bool>(true, select(var_0.x != 0u, !true, true), select(false || false, true, !false), true));
    let var_2 = any(select(select(!(!vec2<bool>(false, false)), !select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(false, false), all(vec3<bool>(false, false, true)))), select(!vec2<bool>(true, true), !(!vec2<bool>(true, true)), vec2<bool>(false, !true)), vec2<bool>(all(!vec4<bool>(false, true, true, true)), !true || !true)));
    global1 = -704f - (-global0[var_0.x] + (global0[~var_0.x] * -430f));
    return Struct_3(Struct_1(!(!(!true)), select(!select(vec2<bool>(true, var_2), vec2<bool>(var_2, var_2), false), select(!vec2<bool>(false, true), select(vec2<bool>(var_2, false), vec2<bool>(true, var_2), true), !vec2<bool>(true, true)), select(!vec2<bool>(var_2, true), !vec2<bool>(var_2, var_2), vec2<bool>(var_2, var_2))), -1205f), vec4<f32>(671f, -157f, 1174f, abs(var_1.x - global0[var_0.x])) - -((vec4<f32>(var_1.x, global0[5880u], global0[4294967295u], -193f) / vec4<f32>(1184f, -782f, -765f, 1113f)) * -vec4<f32>(-237f, global0[1u], global0[36441u], var_1.x)), global2.x, 1u, false);
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = 11322u;
    var var_1 = 2147483647i;
    var var_2 = func_2();
    var var_3 = vec4<i32>(-10032i, -34500i | -16447i, 30354i, 2147483647i);
    var var_4 = Struct_2(!vec2<bool>(!(!var_2.e), !(var_2.c != 1i)), var_2.c * min((-50187i / i32(-2147483648)) ^ arg_0.x, dot(~vec4<i32>(1i, arg_0.x, var_2.c, 2147483647i), reverseBits(vec4<i32>(var_2.c, var_2.c, arg_0.x, var_2.c)))));
    return Struct_1(true, select(var_2.a.b, func_2().a.b, func_2().a.b), var_2.a.c - round(global0[min(dot(vec2<u32>(var_2.d, var_2.d), u_input.a.xx), var_0)]));
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: Struct_3) -> Struct_3 {
    let var_0 = func_2();
    let var_1 = Struct_2(func_1(~reverseBits(vec2<i32>(i32(-2147483648), 27575i))).b, (var_0.c % var_0.c) + -abs(0i));
    global2 = abs(vec2<i32>(var_1.b, (abs(arg_2.c) % reverseBits(arg_2.c)) + var_0.c));
    var var_2 = select(select(select(!vec4<bool>(var_0.a.a, arg_1, true, var_1.a.x), !select(vec4<bool>(var_0.e, false, var_1.a.x, arg_1), vec4<bool>(var_0.e, var_0.e, var_1.a.x, arg_1), vec4<bool>(arg_2.a.b.x, false, var_0.a.a, arg_2.e)), round(global0[754u]) > floor(-1248f)), vec4<bool>(false | !arg_2.a.a, !(!var_0.e), false, arg_1), !(!(!vec4<bool>(false, arg_2.a.b.x, arg_1, true)))), vec4<bool>(!(!(arg_2.d <= u_input.a.x)), false, func_1(~vec2<i32>(arg_2.c, 2147483647i) + vec2<i32>(var_0.c, var_1.b)).b.x, (~4294967295u <= dot(vec3<u32>(1u, 29601u, u_input.a.x), vec3<u32>(arg_2.d, var_0.d, 76021u))) != (all(vec4<bool>(false, arg_1, true, true)) | !arg_1)), vec4<bool>(true, arg_2.a.a, false, true));
    var var_3 = var_1;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(~(~global2.x | global2.x)) <= abs(global2.x);
    global0 = array<f32, 25>();
    let var_1 = func_4(global0[u_input.a.x], (498f + -(-395f)) != (319f / abs(-1781f / global0[44070u])), Struct_3(func_1(vec2<i32>(~global2.x, -7956i)), trunc(vec4<f32>(global0[select(35497u, 1u, false)], 135f, ceil(global0[13996u]), 345f)), 55356i, ~0u, false));
    global3 = false;
    var var_2 = Struct_2(vec2<bool>(func_4(global0[~(72959u - var_1.d)], true, Struct_3(func_2().a, var_1.b, -var_1.c, var_1.d, func_2().a.b.x)).a.a, !(492f != 218f)), ~25865i);
    let var_3 = firstLeadingBit(4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(0i, round(var_1.b.x - (func_1(vec2<i32>(1i, 1i)).c * (-882f - var_1.b.x))), 39542i, abs((clamp(4294967295u, u_input.a.x, 62500u) & (49131u / 70546u)) * var_1.d));
}

