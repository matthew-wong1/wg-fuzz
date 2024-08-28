// {"0:0":[162,243,82,164,115,79,167,238,71,135,166,246,215,174,80,228,210,115,82,202,246,10,18,111,87,239,31,21,109,152,73,176,161,34,32,163,66,38,85,205,114,237,88,195,110,10,136,89]}
// Seed: 14818839513742605121

struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec4<u32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: vec3<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn func_3(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = vec4<i32>(-32102i + firstLeadingBit(-(u_input.a << arg_2.b.x)), ~u_input.a, u_input.a, u_input.a);
    let var_1 = -max(661f, -(-(arg_0.x * arg_0.x)));
    var var_2 = u_input.a >> firstTrailingBit(6679u);
    global0 = select(vec4<bool>(true, !(!(arg_2.c.x > 21094u)), true, select(!false, all(global0.zw), arg_1) | true), !vec4<bool>(1000f != -(-1415f), floor(arg_0.x) <= max(var_1, var_1), arg_1, global0.x), !true);
    var var_3 = reverseBits(arg_2.c.yz);
    return select(vec3<u32>(u_input.d, 1u, reverseBits(~select(4294967295u, 0u, global0.x))), ~vec3<u32>(~var_3.x, clamp(firstLeadingBit(arg_2.c.x), var_3.x, arg_2.b.x ^ 43873u), u_input.c.x), (all(vec4<bool>(arg_2.a, arg_1, true, true)) | arg_1) && all(select(select(vec4<bool>(false, false, global0.x, arg_1), vec4<bool>(arg_1, false, global0.x, global0.x), true), select(vec4<bool>(true, false, arg_1, true), vec4<bool>(true, arg_2.d, false, true), vec4<bool>(global0.x, false, false, true)), select(vec4<bool>(arg_2.a, global0.x, true, arg_2.d), vec4<bool>(true, arg_2.d, true, global0.x), arg_1))));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: u32, arg_3: f32) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(global0.x & !(arg_3 < arg_3), (vec3<u32>(0u, 2678u, arg_2) - firstTrailingBit(vec3<u32>(45217u, 0u, u_input.c.x))) - firstTrailingBit(abs(vec3<u32>(4111u, 61024u, arg_1))), ~u_input.b, true), global0.yyz, Struct_1(all(vec4<bool>(arg_3 < arg_3, false, !arg_0, arg_3 > arg_3)), vec3<u32>(~10365u, 26819u, 0u >> ~arg_1), firstLeadingBit(u_input.b), any(global0.zyy)), -(-(-max(vec3<f32>(-748f, -400f, -1356f), vec3<f32>(1148f, -1358f, -360f)))), Struct_1(arg_0, func_3(select(vec3<f32>(arg_3, 767f, -391f), vec3<f32>(528f, arg_3, arg_3) / vec3<f32>(arg_3, arg_3, -1102f), global0.yzz), false, Struct_1(false && false, u_input.c * vec3<u32>(4294967295u, 9257u, 9276u), u_input.b | u_input.b, !false)), abs(u_input.b), arg_0));
    let var_1 = Struct_2(var_0.a, vec3<bool>(any(select(!vec4<bool>(var_0.c.d, global0.x, global0.x, var_0.c.d), !vec4<bool>(arg_0, global0.x, var_0.a.d, false), arg_0)), global0.x, false), Struct_1(global0.x, abs(vec3<u32>(~52309u, 4294967295u, arg_2)), vec4<u32>(abs(u_input.d | 30717u), 2477u, arg_1, var_0.e.c.x), !(any(vec4<bool>(var_0.a.a, false, true, true)) & (arg_0 | var_0.a.d))), -min(var_0.d, trunc(vec3<f32>(195f, -617f, -1354f))) - vec3<f32>(var_0.d.x, 642f, -401f), var_0.e);
    var var_2 = ~(~((firstLeadingBit(4294967295u) >> (u_input.d & u_input.c.x)) * (abs(arg_1) >> ~0u)));
    let var_3 = ~13754u | var_0.a.b.x;
    var var_4 = var_1.c;
    return var_1.e;
}

fn func_1() -> Struct_2 {
    var var_0 = vec2<i32>(reverseBits(52777i), u_input.a);
    var var_1 = (~102850u % dot(~abs(u_input.b.wyz), countOneBits(max(u_input.c, vec3<u32>(u_input.d, 0u, 0u))))) / max(u_input.c.x, countOneBits(~u_input.b.x + u_input.d));
    var var_2 = ~(~(~(~vec2<u32>(0u, u_input.c.x)) % vec2<u32>(31887u, ~40773u)));
    let var_3 = clamp(~((-13698i & abs(-1i)) - -var_0.x), u_input.a, ~(10911i + u_input.a));
    var var_4 = func_2(global0.x, firstLeadingBit(u_input.b.x), ~max(dot(min(vec3<u32>(26522u, 39454u, var_2.x), vec3<u32>(var_2.x, var_2.x, var_2.x)), ~u_input.b.yyx), u_input.b.x << dot(vec2<u32>(var_2.x, 65920u), u_input.b.xw)), 721f);
    return Struct_2(func_2(global0.x, abs(~107609u), ~u_input.b.x, -(-(-1208f))), vec3<bool>(~(0u * var_2.x) <= 1u, select(any(vec3<bool>(var_4.d, global0.x, false)), false, var_4.d), any(select(vec3<bool>(true, var_4.a, global0.x), vec3<bool>(global0.x, var_4.d, var_4.a), false)) || all(!global0.zy)), func_2(!(true && (var_4.d || var_4.d)), max(4294967295u, func_3(vec3<f32>(-1402f, 1488f, 3445f), false, Struct_1(true, vec3<u32>(51212u, 98666u, u_input.d), vec4<u32>(u_input.d, u_input.b.x, 0u, var_4.b.x), true)).x) >> ((u_input.d * 4294967295u) + u_input.b.x), 30586u % var_2.x, step(min(1132f * -136f, max(-1000f, 475f)), 1135f)), (-vec3<f32>(-787f, -1146f, 471f) * -vec3<f32>(267f, -1811f, 416f)) - vec3<f32>(-207f, select(-550f, -(-794f), all(vec4<bool>(var_4.a, global0.x, true, true))), max(314f, -(-1584f))), func_2(false, var_4.b.x, ~29008u, -196f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = select(vec4<bool>((global0.x | true) || (498f <= 105f), func_1().e.d, !(!(1u == u_input.b.x)), all(!select(vec4<bool>(false, global0.x, var_0.e.a, global0.x), vec4<bool>(global0.x, false, var_0.a.a, global0.x), var_0.a.d))), select(vec4<bool>(global0.x, !(40249u <= var_0.e.c.x), !all(vec2<bool>(var_0.c.a, true)), !var_0.b.x), select(!select(vec4<bool>(true, global0.x, var_0.c.d, var_0.e.d), vec4<bool>(var_0.c.d, var_0.a.d, false, global0.x), vec4<bool>(false, global0.x, global0.x, global0.x)), select(!vec4<bool>(true, var_0.a.a, var_0.e.d, true), select(vec4<bool>(global0.x, false, global0.x, false), vec4<bool>(var_0.e.d, global0.x, true, global0.x), vec4<bool>(true, global0.x, var_0.b.x, global0.x)), vec4<bool>(global0.x, false, false, global0.x)), select(select(vec4<bool>(var_0.c.d, false, true, global0.x), vec4<bool>(var_0.e.d, global0.x, true, global0.x), vec4<bool>(var_0.c.d, false, global0.x, var_0.b.x)), vec4<bool>(false, false, global0.x, true), all(var_0.b.yx))), any(vec4<bool>(!false, var_0.e.d, true, var_0.a.b.x < u_input.b.x))), !all(func_1().b.yx));
    var var_1 = u_input.a;
    var var_2 = var_0.e;
    var var_3 = !(!vec3<bool>(func_2(any(vec4<bool>(var_2.d, true, true, var_2.a)), ~1u, 9807u % 4294967295u, -320f).d, select(func_2(var_0.c.a, 1u, u_input.c.x, var_0.d.x).d, var_0.b.x, global0.x), false));
    var var_4 = u_input.a;
    var_2 = func_2(true, var_0.e.b.x, u_input.b.x % 4294967295u, -1044f);
    var_1 = (dot(~(vec4<i32>(i32(-2147483648), 1743i, u_input.a, i32(-2147483648)) + vec4<i32>(-17504i, u_input.a, 31990i, u_input.a)), min(vec4<i32>(2147483647i, u_input.a, 2147483647i, 1i), vec4<i32>(1i, u_input.a, 1i, u_input.a)) * (vec4<i32>(u_input.a, u_input.a, 1i, u_input.a) - vec4<i32>(u_input.a, u_input.a, 0i, u_input.a))) ^ abs(-u_input.a)) / (((u_input.a >> 39714u) % (~33303i << 10988u)) << dot(vec2<u32>(firstTrailingBit(37842u), max(u_input.b.x, 2284u)), u_input.b.wy));
    var_1 = -2274i;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d, (((vec4<i32>(u_input.a, u_input.a, u_input.a, i32(-2147483648)) >> vec4<u32>(36184u, 0u, var_2.b.x, var_2.c.x)) / vec4<i32>(12747i, u_input.a, u_input.a, 14721i)) - select(vec4<i32>(u_input.a, 0i, 15943i, u_input.a) / vec4<i32>(u_input.a, 1i, u_input.a, 0i), abs(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), var_0.d.x < var_0.d.x)) * vec4<i32>(clamp(u_input.a, dot(vec3<i32>(i32(-2147483648), u_input.a, -6825i), vec3<i32>(-1i, u_input.a, u_input.a)), u_input.a % u_input.a), ~(-u_input.a), -(-u_input.a), -7425i % (u_input.a - u_input.a)), 9455u >> 29798u, min(firstTrailingBit(var_2.c), u_input.b));
}

