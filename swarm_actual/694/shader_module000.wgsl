// {"0:0":[176,1,121,89,88,143,197,26,196,128,95,186,153,114,31,240,152,105,111,57,199,175,155,136,182,112,204,139,67,1,60,249,27,140,123,156,226,133,49,209,127,227,20,175,189,52,185,67]}
// Seed: 14830727955466959276

struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec4<i32>, 14> = array<vec4<i32>, 14>(vec4<i32>(1i, 1i, 2147483647i, -1i), vec4<i32>(-33799i, -1i, 2147483647i, 32123i), vec4<i32>(20113i, -1i, i32(-2147483648), i32(-2147483648)), vec4<i32>(-47776i, -10848i, 27504i, 2147483647i), vec4<i32>(-5438i, 1i, 0i, 0i), vec4<i32>(-22739i, i32(-2147483648), i32(-2147483648), -29989i), vec4<i32>(29239i, 10548i, 17478i, -20105i), vec4<i32>(1i, 0i, 0i, -5300i), vec4<i32>(-26098i, 1i, -54652i, i32(-2147483648)), vec4<i32>(36098i, 12252i, -2540i, -26306i), vec4<i32>(23062i, 0i, i32(-2147483648), -8078i), vec4<i32>(-1i, -16446i, 23389i, i32(-2147483648)), vec4<i32>(43055i, i32(-2147483648), -1691i, -1i), vec4<i32>(i32(-2147483648), -2960i, -17189i, -5619i));

fn func_2() -> Struct_3 {
    var var_0 = max(-(-max(abs(vec2<f32>(459f, -1852f)), vec2<f32>(-765f, -1013f))), -(-(vec2<f32>(-830f, -1000f) + vec2<f32>(1022f, -1477f)) - floor(vec2<f32>(1409f, 182f) + vec2<f32>(-1512f, 1363f))));
    var var_1 = !(!(!select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), !vec2<bool>(false, false), true)));
    let var_2 = Struct_3(-(var_0.x - -(-(-1433f))), ((abs(u_input.d.xz) >> reverseBits(vec2<u32>(0u, u_input.c))) * vec2<u32>(52697u, ~u_input.d.x)) % u_input.d.xz, Struct_1(exp2(abs(vec3<f32>(var_0.x, var_0.x, 820f)))));
    let var_3 = Struct_1(-var_2.c.a * -(-(-var_2.c.a)));
    return var_2;
}

fn func_3(arg_0: Struct_2) -> bool {
    var var_0 = 4294967295u;
    var var_1 = u_input.e.zz;
    var var_2 = Struct_3(arg_0.b.a.x, u_input.d.zy, func_2().c);
    var var_3 = vec2<bool>(any(vec2<bool>(any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true))), (1u == 29682u) && false)), all(select(select(!vec2<bool>(false, false), !vec2<bool>(false, false), vec2<bool>(true, false)), !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), abs(-320f) > -165f)));
    var_2 = Struct_3(-609f, var_2.b, Struct_1(-ceil(vec3<f32>(1529f, 374f, 814f) * var_2.c.a)));
    return all(select(select(vec4<bool>(true, select(var_3.x, true, var_3.x), all(vec4<bool>(true, var_3.x, false, var_3.x)), true), vec4<bool>(-2630i == 35775i, true, 1037f >= -969f, !false), select(select(vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x), vec4<bool>(true, true, false, var_3.x), var_3.x), !vec4<bool>(true, true, var_3.x, var_3.x), vec4<bool>(false, var_3.x, true, var_3.x))), vec4<bool>(true, !any(vec2<bool>(true, true)), select(var_3.x, false, var_2.a >= arg_0.a), any(vec3<bool>(var_3.x, var_3.x, var_3.x))), !all(!vec4<bool>(var_3.x, true, true, false))));
}

fn func_1(arg_0: f32, arg_1: f32) -> vec3<bool> {
    var var_0 = (ceil(-(arg_0 * arg_1)) * -arg_0) - -arg_0;
    global0 = 16296u | ~abs(u_input.b);
    let var_1 = Struct_4(func_2(), u_input.e.x * u_input.e.x, Struct_3(-(-(-(-1669f))), ~vec2<u32>(u_input.b - 0u, ~4239u), Struct_1(round(vec3<f32>(-128f, arg_1, arg_1) - vec3<f32>(-380f, arg_1, arg_0)))));
    return vec3<bool>(false, true, func_3(Struct_2(-527f, func_2().c)));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: i32, arg_3: i32) -> Struct_3 {
    global0 = ~(~64359u);
    global0 = ~(min(reverseBits(dot(arg_0, u_input.d.zx)), u_input.d.x >> u_input.d.x) * reverseBits(5761u));
    global1 = array<vec4<i32>, 14>();
    let var_0 = arg_1.x;
    let var_1 = round((-(-520f) - -1203f) + (-1462f - -(-511f))) / (-(-(-1382f)) / -min(-(-650f), -2614f));
    return func_2();
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: Struct_4) -> Struct_2 {
    global1 = array<vec4<i32>, 14>();
    let var_0 = arg_2.x;
    global0 = abs(1u & (~1u % (u_input.c + (3213u % u_input.d.x))));
    global1 = array<vec4<i32>, 14>();
    global1 = array<vec4<i32>, 14>();
    return Struct_2(-(-(arg_1.a / arg_3.c.c.a.x)) + select(ceil(arg_3.c.c.a.x) * func_2().c.a.x, 360f, (20813u - arg_1.b.x) > func_4(arg_1.b, vec3<bool>(false, false, true), arg_2.x, -1i).b.x), arg_3.c.c);
}

fn func_6(arg_0: Struct_2, arg_1: f32, arg_2: Struct_4, arg_3: u32) -> StorageBuffer {
    global0 = ~u_input.b;
    let var_0 = vec2<i32>(-(min(50331i, i32(-2147483648)) & abs(1i + u_input.a)), arg_2.b);
    global1 = array<vec4<i32>, 14>();
    var var_1 = Struct_3(492f, arg_2.c.b, arg_2.c.c);
    var_1 = func_4(~arg_2.c.b, select(!vec3<bool>(!false, false, arg_0.b.a.x == -1000f), !select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), !(!(!vec3<bool>(true, false, true)))), dot(u_input.e.wwy, (firstTrailingBit(u_input.e.zwz) >> u_input.d) * firstLeadingBit(vec3<i32>(arg_2.b, var_0.x, arg_2.b) + vec3<i32>(arg_2.b, 24745i, arg_2.b))), u_input.e.x);
    return StorageBuffer(-(arg_0.b.a / vec3<f32>(var_1.a, -685f, 294f)) / vec3<f32>((var_1.a / -194f) - arg_0.b.a.x, 130f, -501f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.d.x;
    let var_0 = floor(max(-(-510f * 1335f) + -409f, ((1000f + 101f) * -(-3153f)) / -120f));
    let x = u_input.a;
    s_output = func_6(func_5(Struct_1(-(-vec3<f32>(var_0, 241f, -1000f))), func_4(u_input.d.xx, func_1(var_0 / var_0, sign(var_0)), reverseBits(u_input.a) >> 0u, firstTrailingBit(u_input.a)), min(u_input.e >> (vec4<u32>(0u, u_input.c, u_input.d.x, u_input.c) / vec4<u32>(u_input.d.x, u_input.c, 6973u, 51214u)), vec4<i32>(26450i * -35983i, 2147483647i, u_input.e.x, ~(-10098i))), Struct_4(func_4(vec2<u32>(u_input.d.x, u_input.d.x), vec3<bool>(false, false, true), 55858i * -55715i, u_input.e.x >> u_input.b), firstTrailingBit(u_input.a), func_2())), round(-968f - round(var_0 - var_0)), Struct_4(Struct_3(-1094f, u_input.d.yy, func_5(func_2().c, Struct_3(var_0, u_input.d.xx, Struct_1(vec3<f32>(var_0, var_0, 798f))), vec4<i32>(u_input.e.x, 22397i, 2147483647i, i32(-2147483648)), Struct_4(Struct_3(var_0, u_input.d.xz, Struct_1(vec3<f32>(-1902f, var_0, 154f))), u_input.a, Struct_3(1239f, vec2<u32>(56806u, 23471u), Struct_1(vec3<f32>(var_0, var_0, var_0))))).b), abs(u_input.a), Struct_3(func_4(~u_input.d.xx, vec3<bool>(true, false, false), dot(u_input.e.wzz, vec3<i32>(u_input.a, -37615i, u_input.e.x)), -24904i >> u_input.d.x).a, ~(u_input.d.zx << u_input.d.yx), func_5(func_2().c, Struct_3(var_0, vec2<u32>(0u, u_input.c), Struct_1(vec3<f32>(var_0, var_0, -630f))), u_input.e, Struct_4(Struct_3(var_0, vec2<u32>(0u, 28798u), Struct_1(vec3<f32>(var_0, var_0, var_0))), -1i, Struct_3(var_0, vec2<u32>(u_input.c, 4294967295u), Struct_1(vec3<f32>(var_0, -734f, var_0))))).b)), u_input.b);
}

