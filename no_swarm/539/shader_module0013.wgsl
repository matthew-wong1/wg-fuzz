// {"0:0":[205,255,34,239]}
// Seed: 17271174047174869526

struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: i32,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec3<f32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 3395u;

var<private> global1: vec3<u32>;

var<private> global2: u32 = 22684u;

var<private> global3: array<Struct_3, 21>;

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: i32) -> i32 {
    let var_0 = -(reverseBits(1i) % dot(select(~vec4<i32>(arg_0.b, u_input.a, arg_0.c.c, 30134i), ~vec4<i32>(u_input.a, 2147483647i, u_input.a, arg_2), select(vec4<bool>(false, false, arg_0.c.a, arg_0.c.a), vec4<bool>(arg_0.c.a, true, true, arg_1), vec4<bool>(arg_1, true, true, false))), vec4<i32>(-12070i % arg_0.b, -42670i, arg_0.b, ~2147483647i)));
    global0 = global1.x - global1.x;
    let var_1 = arg_0.c.a;
    global3 = array<Struct_3, 21>();
    return ~1i;
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec3<u32>) -> Struct_1 {
    let var_0 = ~(-34203i);
    var var_1 = firstTrailingBit(73390u);
    let var_2 = 1i + ~func_3(Struct_3(exp2(vec4<f32>(arg_0.b.x, -1262f, 849f, arg_0.b.x)), -u_input.a, Struct_1(true, vec3<f32>(arg_0.b.x, 358f, arg_0.b.x), var_0), ~global1.x), false, var_0);
    let var_3 = 21290i - dot(~(select(vec3<i32>(-1i, 15983i, arg_0.c), vec3<i32>(var_0, arg_0.c, arg_0.c), vec3<bool>(arg_1, arg_1, arg_1)) / vec3<i32>(var_0, u_input.a, 0i)), max(vec3<i32>(-34832i, 0i >> 21114u, arg_0.c % 2147483647i), ~vec3<i32>(-2068i, 0i, 18308i) << max(arg_2, arg_2)));
    return arg_0;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = false;
    global2 = ~24242u;
    global2 = global1.x;
    let var_1 = func_2(Struct_1(any(!(!arg_2.a)), min(abs(arg_2.b.b), vec3<f32>(arg_1.x, -1000f, 1437f) * vec3<f32>(1380f, arg_1.x, arg_1.x)) - vec3<f32>(arg_2.b.b.x, arg_2.c.b.x, -355f - arg_1.x), arg_2.d.x), arg_2.b.a, vec3<u32>(~(~dot(vec4<u32>(global1.x, global1.x, global1.x, 0u), vec4<u32>(4294967295u, 73469u, global1.x, 1u))), countOneBits(39067u) * global1.x, global1.x));
    var var_2 = countOneBits(max(~(-(vec4<i32>(2147483647i, arg_2.c.c, arg_0.x, 17875i) / vec4<i32>(u_input.a, -15213i, -1i, 40158i))), vec4<i32>(0i, 118316i, 45651i, -(var_1.c - arg_2.d.x))));
    return func_2(Struct_1(false, min(round(arg_2.c.b) * (var_1.b - vec3<f32>(180f, arg_1.x, -332f)), -(-arg_1.zzy)), clamp(arg_0.x, firstTrailingBit(dot(vec4<i32>(var_2.x, -1i, var_2.x, var_1.c), vec4<i32>(0i, -44554i, 2451i, var_1.c))), var_2.x)), !(true && (arg_2.b.b.x > 501f)), vec3<u32>(global1.x, ~(~(~1u)), select(dot(vec3<u32>(46938u, 45016u, global1.x), vec3<u32>(global1.x, global1.x, 63200u)) % (global1.x | 38874u), dot(vec4<u32>(1u, 0u, 393u, global1.x), ~vec4<u32>(global1.x, global1.x, 1u, global1.x)), !(arg_2.c.a && false))));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<f32>) -> u32 {
    return ~global1.x;
}

fn func_5(arg_0: Struct_3, arg_1: vec2<i32>) -> bool {
    let var_0 = vec2<i32>(-1i, ~(~(-arg_0.b) / (arg_0.c.c * (-15133i % arg_1.x))));
    global3 = array<Struct_3, 21>();
    let var_1 = 811f;
    global2 = global1.x & ~(((26283u + 28808u) ^ (54430u >> 4294967295u)) + firstLeadingBit(0u));
    let var_2 = -min(clamp(3850i, u_input.a, arg_1.x / abs(arg_0.b)), u_input.a);
    return !((-2147483647i << (reverseBits(global1.x) & ~0u)) > (-(i32(-2147483648) | 1i) % ~(-arg_0.c.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(global3[global1.x], vec2<i32>(2147483647i, -u_input.a + 2147483647i) >> vec2<u32>(global1.x, func_4(15863u, func_1(vec3<i32>(i32(-2147483648), u_input.a, i32(-2147483648)), vec4<f32>(1249f, -731f, -170f, -515f), Struct_2(vec3<bool>(true, false, true), Struct_1(true, vec3<f32>(775f, 1560f, -346f), -12140i), Struct_1(true, vec3<f32>(873f, 877f, 788f), u_input.a), vec3<i32>(0i, 59654i, 2147483647i))), Struct_2(vec3<bool>(false, false, true), Struct_1(true, vec3<f32>(-898f, -521f, 823f), 40621i), Struct_1(false, vec3<f32>(1000f, 1102f, -145f), 34073i), vec3<i32>(37361i, 5994i, u_input.a)), vec2<f32>(-1318f, -751f) * vec2<f32>(-1016f, 1374f))));
    var var_1 = vec2<i32>(abs(func_3(global3[firstTrailingBit(min(global1.x, 25386u))], select(102502u, global1.x, var_0) >= 26353u, dot(~vec3<i32>(u_input.a, -24772i, u_input.a), vec3<i32>(u_input.a, 0i, -19394i)))), 46053i);
    let var_2 = global3[global1.x ^ min(global1.x, ~(~abs(global1.x)))];
    let var_3 = func_1(~(~(~(-vec3<i32>(u_input.a, -25533i, var_1.x)))), select(vec4<f32>(1855f, var_2.a.x, var_2.c.b.x - -366f, min(-150f, -455f)), vec4<f32>(-(-676f), var_2.c.b.x, -568f, -var_2.a.x), var_2.c.a) + -(-var_2.a), Struct_2(vec3<bool>(false && (var_0 == var_2.c.a), var_2.c.a, !(!var_2.c.a)), Struct_1(var_2.c.a, vec3<f32>(1000f, -730f, -1000f) * (vec3<f32>(1066f, var_2.c.b.x, -155f) - vec3<f32>(-1006f, 130f, 2425f)), u_input.a / dot(vec3<i32>(1642i, -16482i, 22065i), vec3<i32>(i32(-2147483648), var_2.c.c, 44067i))), var_2.c, -vec3<i32>(var_1.x, -(i32(-2147483648)), var_1.x)));
    var var_4 = Struct_1(!((9181i - -var_1.x) <= abs(var_1.x ^ u_input.a)), -(-(-(-var_3.b))), select(var_2.c.c, ~((var_1.x | -28182i) % var_2.c.c), any(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(var_2.c.a, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(func_3(Struct_3(round(var_2.a), -u_input.a, var_2.c, global1.x - 1u), all(!vec3<bool>(false, var_0, true)), max(34991i, 0i)), 1i), (ceil(var_3.b.x) * -1204f) - -(trunc(947f) + -(-2229f)), round(-vec3<f32>(var_3.b.x, 537f / 400f, trunc(var_2.c.b.x))), reverseBits(~(var_2.d - global1.x)) - (75688u - (~50504u / 48009u)), -vec4<f32>(var_3.b.x, -(var_3.b.x / 629f), -1112f, -1080f));
}

