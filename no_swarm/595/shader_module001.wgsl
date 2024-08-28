// {"0:0":[141,84,190,150,28,187,139,179,204,217,167,230,148,0,80,110,173,10,203,160,201,52,13,66,168,215,65,209,246,36,253,212]}
// Seed: 12288032915353990749

struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<i32>,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: f32,
    d: vec3<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn func_2(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_2) -> vec3<bool> {
    return vec3<bool>((~select(1021u, 12110u, arg_0.a) | 22520u) < ~u_input.c.x, false, any(vec2<bool>(~13568u != u_input.c.x, !any(vec3<bool>(false, true, arg_0.e.a)))));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: bool, arg_3: Struct_1) -> bool {
    let var_0 = 6518u;
    return arg_0;
}

fn func_1(arg_0: bool, arg_1: vec2<u32>) -> Struct_3 {
    var var_0 = ~63889u;
    var var_1 = abs(-(-355f) + (-2242f * (1120f - -2316f))) / -(-270f);
    var var_2 = Struct_2(!false, Struct_1(any(vec3<bool>(false, arg_0, false)), -(-1011f), (vec4<i32>(u_input.a, u_input.a, u_input.b, -1i) * -vec4<i32>(u_input.b, i32(-2147483648), 2147483647i, i32(-2147483648))) & -vec4<i32>(2147483647i, 7187i, 35001i, u_input.a), ~(u_input.c.xxw + (u_input.c.wxz >> u_input.c.zwx))), max(abs(vec4<i32>(-655i, -42130i, u_input.a, i32(-2147483648))) - (~vec4<i32>(i32(-2147483648), u_input.a, u_input.b, u_input.a) / (vec4<i32>(0i, u_input.b, u_input.a, 40014i) / vec4<i32>(-45790i, u_input.b, u_input.b, 2147483647i))), vec4<i32>(u_input.a, ~(u_input.b & u_input.b), 27747i + (26117i - 2147483647i), firstLeadingBit(-u_input.b))), u_input.c | ~min(~vec4<u32>(arg_1.x, 43484u, 114710u, arg_1.x), abs(u_input.c)), Struct_1(false, 885f + -2891f, vec4<i32>(abs(21646i) - u_input.b, ~60554i >> ~4294967295u, u_input.b, ~u_input.b), ~vec3<u32>(abs(arg_1.x), arg_1.x, arg_1.x)));
    var var_3 = all(select(vec3<bool>(arg_1.x != 29717u, arg_0, select(var_2.a, false, false)), select(func_2(Struct_2(true, var_2.b, vec4<i32>(-2264i, var_2.c.x, u_input.a, i32(-2147483648)), var_2.d, var_2.e), var_2.e.c.zy, Struct_2(var_2.b.a, Struct_1(false, 336f, vec4<i32>(2147483647i, 2147483647i, -1i, u_input.b), var_2.d.xwz), vec4<i32>(var_2.b.c.x, -1i, -63470i, var_2.b.c.x), var_2.d, Struct_1(var_2.e.a, -439f, var_2.b.c, u_input.c.xww))), !vec3<bool>(var_2.e.a, var_2.b.a, false), func_2(Struct_2(true, var_2.b, vec4<i32>(18430i, u_input.b, 40042i, var_2.e.c.x), vec4<u32>(arg_1.x, arg_1.x, 1u, u_input.c.x), var_2.e), var_2.b.c.yy, Struct_2(false, Struct_1(arg_0, -1127f, var_2.e.c, vec3<u32>(31608u, 34808u, 0u)), var_2.c, var_2.d, var_2.b))), true)) & !any(vec2<bool>(func_3(true, Struct_2(true, var_2.b, vec4<i32>(var_2.e.c.x, u_input.a, 66610i, -14413i), u_input.c, var_2.b), true, Struct_1(var_2.b.a, var_2.e.b, var_2.b.c, vec3<u32>(0u, u_input.c.x, 4294967295u))), false && var_2.a));
    var_0 = 4294967295u / ~countOneBits(~(1u | 4294967295u));
    return Struct_3(var_2.e.c.x, Struct_2(all(vec3<bool>(arg_0, var_2.b.a, !var_2.a)), Struct_1(max(var_2.b.b, -1078f) > -var_2.b.b, floor(839f), var_2.e.c, vec3<u32>(clamp(75195u, 10250u, u_input.c.x), ~u_input.c.x, ~arg_1.x)), var_2.e.c, ~(~u_input.c), Struct_1(!true, 973f, abs(-vec4<i32>(0i, -1648i, u_input.a, 2147483647i)), vec3<u32>(u_input.c.x, 29722u, 10052u % 0u))), select(vec3<i32>(var_2.e.c.x, u_input.b - (var_2.e.c.x % -27995i), var_2.e.c.x % u_input.a), vec3<i32>(~var_2.b.c.x, 16852i, -27659i) / ~(var_2.b.c.xzx * vec3<i32>(var_2.e.c.x, var_2.c.x, 54978i)), select(select(vec3<bool>(var_2.b.a, true, arg_0), !vec3<bool>(arg_0, var_2.b.a, false), var_2.e.c.x == -7415i), !vec3<bool>(false, var_2.b.a, true), !vec3<bool>(false, arg_0, var_2.b.a))));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<f32>) -> f32 {
    var var_0 = func_1(!false, ~vec2<u32>(arg_0.b.d.x, arg_0.b.d.x)).b.e;
    let var_1 = Struct_3(firstTrailingBit(select(-(~1i), -(~var_0.c.x), exp2(-2619f) >= arg_0.b.e.b)), arg_0.b, reverseBits(arg_0.b.e.c.zwy));
    var_0 = func_1(var_1.b.e.a, u_input.c.wz ^ ~u_input.c.zy).b.e;
    let var_2 = arg_1.x;
    let var_3 = round(ceil(select(-vec4<f32>(-1002f, 537f, arg_0.b.b.b, -1000f), -vec4<f32>(arg_0.b.e.b, 466f, arg_1.x, -552f), false | arg_0.b.b.a)) * trunc(arg_1));
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(func_4(func_1(all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))), select(u_input.c.xz / vec2<u32>(1u, u_input.c.x), vec2<u32>(u_input.c.x, u_input.c.x), !vec2<bool>(true, true))), vec4<f32>(-713f - -618f, 1000f, -(-1475f) / max(1243f, 703f), -(-(-687f)))), -1600f, all(select(vec4<bool>(true && false, true && false, func_2(Struct_2(true, Struct_1(false, -1000f, vec4<i32>(28783i, u_input.b, u_input.a, 1i), vec3<u32>(1u, 4294967295u, u_input.c.x)), vec4<i32>(u_input.b, i32(-2147483648), u_input.a, -1i), vec4<u32>(7691u, u_input.c.x, 0u, 0u), Struct_1(true, 370f, vec4<i32>(2147483647i, u_input.b, -15060i, 1541i), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x))), vec2<i32>(-46567i, -1i), Struct_2(true, Struct_1(false, -1021f, vec4<i32>(-1i, 2147483647i, u_input.b, -30019i), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)), vec4<i32>(-7392i, 0i, i32(-2147483648), -58622i), vec4<u32>(0u, 4294967295u, 54631u, 1u), Struct_1(true, 416f, vec4<i32>(-40294i, i32(-2147483648), -1i, u_input.a), u_input.c.zwz))).x, func_3(true, Struct_2(true, Struct_1(false, -244f, vec4<i32>(6043i, u_input.b, -1i, -1i), u_input.c.zxw), vec4<i32>(u_input.b, u_input.a, u_input.a, u_input.a), u_input.c, Struct_1(true, -1009f, vec4<i32>(u_input.a, -13076i, u_input.a, 2147483647i), u_input.c.zyw)), false, Struct_1(true, 1000f, vec4<i32>(u_input.b, -1i, u_input.b, 20254i), vec3<u32>(38296u, u_input.c.x, u_input.c.x)))), vec4<bool>(true, !true, all(vec4<bool>(true, true, false, false)), false), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), true))));
    var var_1 = firstLeadingBit(~u_input.c.x);
    var var_2 = vec2<bool>(!(-1511f == -624f), any(vec4<bool>(func_2(Struct_2(true, Struct_1(false, 102f, vec4<i32>(u_input.b, 0i, i32(-2147483648), u_input.a), u_input.c.wwx), vec4<i32>(u_input.a, u_input.b, u_input.b, u_input.b), vec4<u32>(0u, u_input.c.x, u_input.c.x, u_input.c.x), Struct_1(true, -958f, vec4<i32>(u_input.a, i32(-2147483648), 23644i, 7997i), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x))), abs(vec2<i32>(u_input.b, u_input.b)), func_1(false, vec2<u32>(0u, 52326u)).b).x, false, any(!vec3<bool>(false, false, true)), false)));
    let var_3 = Struct_3(~(-u_input.b), func_1(!false, select(vec2<u32>(dot(vec2<u32>(0u, u_input.c.x), u_input.c.yw), 50212u), u_input.c.xz, var_2.x)).b, -select(vec3<i32>(abs(u_input.b), u_input.b, u_input.b << u_input.c.x), abs(vec3<i32>(i32(-2147483648), 2147483647i, u_input.b)) << abs(vec3<u32>(1u, u_input.c.x, 4294967295u)), vec3<bool>(false, var_2.x, u_input.a == u_input.a)));
    let var_4 = -(-var_3.b.b.b);
    let var_5 = all(select(select(!(!vec2<bool>(true, var_2.x)), vec2<bool>(!true, !true), !(!vec2<bool>(true, var_2.x))), select(vec2<bool>(var_2.x, true), !select(vec2<bool>(var_3.b.a, false), vec2<bool>(var_2.x, var_2.x), vec2<bool>(var_2.x, true)), !func_2(Struct_2(true, Struct_1(true, -1000f, vec4<i32>(u_input.a, var_3.b.e.c.x, 1i, u_input.b), u_input.c.zyw), vec4<i32>(u_input.a, 0i, 30833i, u_input.b), vec4<u32>(37930u, u_input.c.x, 4294967295u, u_input.c.x), var_3.b.b), var_3.b.b.c.zz, var_3.b).xz), !(!all(vec3<bool>(false, true, var_3.b.a)))));
    var_0 = var_4;
    var var_6 = var_3.b.b;
    let x = u_input.a;
    s_output = StorageBuffer(~(-(var_6.c.x - ~(i32(-2147483648)))), vec4<i32>(abs(~(~0i)), select(dot(-vec4<i32>(-27520i, -2806i, 31811i, 20606i), -var_6.c), reverseBits(max(0i, -1i)), any(!vec3<bool>(var_6.a, false, var_6.a))), u_input.a, ~(-15427i + 2147483647i)), var_4, var_3.c, -(trunc(-vec4<f32>(558f, -459f, 1000f, var_6.b)) / round(-vec4<f32>(var_4, -266f, var_4, var_3.b.e.b))));
}

