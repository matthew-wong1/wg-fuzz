// {"0:0":[16,29,216,208,63,216,213,130]}
// Seed: 17555652955041442506

struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: u32,
    d: vec3<u32>,
}

struct Struct_4 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_2() -> Struct_1 {
    let var_0 = Struct_3(dot(vec3<u32>(clamp(~u_input.a.x, 33430u + 51753u, ~752u), (27774u | 102656u) % u_input.a.x, 50657u), ~vec3<u32>(1u, u_input.a.x ^ 22283u, u_input.a.x | 40960u)), Struct_2(Struct_1(vec2<bool>(false, 1u <= 53864u), select(vec4<f32>(1460f, 327f, -1844f, 867f) * vec4<f32>(1780f, 700f, -103f, -404f), vec4<f32>(-729f, 985f, -148f, 1642f), !false), -(-vec4<f32>(-900f, 484f, 662f, -1593f))), -252f, -round(vec2<f32>(208f, 755f) + vec2<f32>(761f, -400f)), Struct_1(vec2<bool>(all(vec4<bool>(true, true, true, true)), false), -(-vec4<f32>(658f, -159f, 561f, 265f)), -vec4<f32>(658f, 192f, 383f, 134f) * vec4<f32>(1287f, -852f, 809f, 775f)), Struct_1(vec2<bool>(!true, u_input.a.x >= u_input.a.x), vec4<f32>(-(-149f), -632f, -398f / 894f, -(-1215f)), round(vec4<f32>(-1219f, -538f, 341f, 767f) * vec4<f32>(660f, -1041f, -1153f, -840f)))), firstLeadingBit(min(4294967295u, u_input.a.x)) + u_input.a.x, max(vec3<u32>(countOneBits(u_input.a.x), u_input.a.x % u_input.a.x, 4294967295u & u_input.a.x), min(vec3<u32>(u_input.a.x, u_input.a.x, 0u) % vec3<u32>(20037u, 33150u, 5191u), vec3<u32>(u_input.a.x, 9052u, 4294967295u))) % ((abs(vec3<u32>(10165u, 36222u, u_input.a.x)) ^ (vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) + vec3<u32>(21997u, 4294967295u, u_input.a.x))) >> (vec3<u32>(u_input.a.x, 0u, u_input.a.x) + vec3<u32>(3591u, u_input.a.x, 14576u))));
    var var_1 = Struct_4(var_0.b.a.b.x, ~((-1i & 13593i) - 1i) | dot(select(vec4<i32>(-89447i, 0i, 44297i, 1i), vec4<i32>(i32(-2147483648), -1i, 1i, 2189i), false) / ~vec4<i32>(1925i, 35947i, 45070i, 32284i), vec4<i32>(2147483647i, 28862i, -1i, 0i) | (vec4<i32>(1i, 197i, 18990i, -16846i) / vec4<i32>(-1i, i32(-2147483648), -1i, i32(-2147483648)))));
    let var_2 = Struct_2(Struct_1(vec2<bool>(any(!vec3<bool>(false, var_0.b.e.a.x, true)), var_0.b.e.a.x), -var_0.b.e.b, floor(-vec4<f32>(var_1.a, 2036f, 1000f, var_1.a) / round(vec4<f32>(var_1.a, var_1.a, -797f, -685f)))), -var_1.a, vec2<f32>(floor(var_0.b.c.x) - ((-556f + 965f) + var_0.b.b), 1000f / var_1.a), var_0.b.d, var_0.b.e);
    let var_3 = var_0.d;
    var_1 = Struct_4(var_0.b.b - -1241f, -(2147483647i | reverseBits(1i)));
    return Struct_1(vec2<bool>(false, !any(vec4<bool>(false, false, false, var_0.b.a.a.x))), -trunc(vec4<f32>(-359f, -1251f, 1000f, -1158f) / var_2.a.b), var_0.b.d.b);
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: vec3<f32>, arg_3: vec3<i32>) -> vec2<bool> {
    return vec2<bool>(!false, all(vec3<bool>(all(!vec4<bool>(arg_1, false, true, false)), arg_1 != !true, -arg_0.b != arg_0.b)));
}

fn func_1() -> Struct_2 {
    var var_0 = 2147483647i;
    var var_1 = func_2();
    let var_2 = 2147483647i;
    return Struct_2(func_2(), -285f + (((var_1.b.x * -1000f) * var_1.c.x) * var_1.c.x), -(-vec2<f32>(-1000f, 1425f)) + min(var_1.c.zw, vec2<f32>(-223f, -(-2327f))), Struct_1(func_3(Struct_4(var_1.c.x, 0i), any(vec3<bool>(true, true, false)) != !false, abs(-var_1.b.wxz), vec3<i32>(max(i32(-2147483648), -1i), -73013i, countOneBits(var_2))), var_1.b, round(var_1.b)), func_2());
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: Struct_1) -> Struct_3 {
    let var_0 = arg_1.b.a.b.xw;
    var var_1 = arg_2.b;
    let var_2 = max(arg_1.a, 0u);
    var var_3 = arg_1;
    let var_4 = true;
    return Struct_3(~min(u_input.a.x, ~arg_1.a), var_3.b, 29031u, var_3.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec2<f32>(-(-(-240f + 291f)), -235f), Struct_3(4294967295u, func_1(), abs((u_input.a.x - 7084u) / ~48235u), vec3<u32>(max(u_input.a.x, u_input.a.x), ~u_input.a.x << u_input.a.x, u_input.a.x)), func_2());
    var_0 = func_4(vec2<f32>(-969f, 1219f), func_4(-(var_0.b.d.c.yy + select(vec2<f32>(2191f, var_0.b.d.b.x), vec2<f32>(var_0.b.c.x, -762f), vec2<bool>(false, false))), Struct_3(max(0u, ~var_0.a), Struct_2(func_2(), -682f, vec2<f32>(-723f, var_0.b.a.b.x), func_4(vec2<f32>(var_0.b.b, var_0.b.c.x), Struct_3(1u, var_0.b, 34556u, vec3<u32>(u_input.a.x, var_0.a, 4294967295u)), Struct_1(vec2<bool>(var_0.b.a.a.x, true), var_0.b.a.b, var_0.b.d.b)).b.e, var_0.b.d), 46671u % ~var_0.a, var_0.d), Struct_1(var_0.b.a.a, abs(var_0.b.e.b), -(vec4<f32>(var_0.b.a.c.x, 1000f, var_0.b.b, var_0.b.a.c.x) + vec4<f32>(1000f, var_0.b.e.b.x, var_0.b.d.b.x, 893f)))), var_0.b.d);
    var var_1 = Struct_1(var_0.b.a.a, var_0.b.d.b, select(var_0.b.a.b, vec4<f32>(-1251f * (var_0.b.e.c.x + var_0.b.b), round(-165f), (var_0.b.b / -730f) + -2122f, -1467f), select(vec4<bool>(!var_0.b.a.a.x, func_3(Struct_4(var_0.b.e.c.x, 3292i), var_0.b.d.a.x, var_0.b.d.b.xyz, vec3<i32>(0i, 25404i, 72775i)).x, func_1().a.a.x, var_0.b.e.b.x == var_0.b.e.b.x), select(vec4<bool>(var_0.b.e.a.x, var_0.b.e.a.x, var_0.b.a.a.x, var_0.b.a.a.x), select(vec4<bool>(var_0.b.e.a.x, false, true, var_0.b.a.a.x), vec4<bool>(true, true, var_0.b.a.a.x, var_0.b.a.a.x), vec4<bool>(var_0.b.e.a.x, false, false, true)), !vec4<bool>(false, false, var_0.b.a.a.x, true)), !select(vec4<bool>(true, var_0.b.e.a.x, var_0.b.d.a.x, false), vec4<bool>(false, false, true, var_0.b.a.a.x), var_0.b.d.a.x))));
    let var_2 = Struct_4(-1799f * func_1().d.c.x, 1i);
    var_1 = func_2();
    var_0 = func_4(-vec2<f32>(-var_2.a, -var_2.a + (var_2.a / var_2.a)), Struct_3(~var_0.d.x, Struct_2(func_1().e, 777f, var_1.c.zx, Struct_1(var_1.a, -vec4<f32>(-1000f, var_1.b.x, -923f, var_1.b.x), vec4<f32>(-403f, 742f, 335f, var_0.b.e.b.x)), Struct_1(func_3(var_2, false, vec3<f32>(842f, var_2.a, var_0.b.e.c.x), vec3<i32>(var_2.b, 2147483647i, var_2.b)), var_0.b.a.b, -var_0.b.e.c)), dot(~vec4<u32>(1u, 1u, 4294967295u, u_input.a.x), reverseBits(vec4<u32>(1u, 0u, u_input.a.x, var_0.a))) / (max(22236u, u_input.a.x) | (var_0.d.x & 27137u)), ~select(~var_0.d, var_0.d, !var_1.a.x)), var_0.b.d);
    let var_3 = -var_2.a;
    var var_4 = Struct_3(min(var_0.a, firstLeadingBit(u_input.a.x)), Struct_2(var_0.b.d, var_1.c.x, var_1.c.xx, Struct_1(vec2<bool>(var_1.a.x, select(true, false, var_1.a.x)), -(-var_1.c), var_1.b), func_2()), select(u_input.a.x, ~(~(~u_input.a.x)), !(!(false | var_0.b.e.a.x))), abs(abs(select(vec3<u32>(14262u, 1u, u_input.a.x), var_0.d, var_1.a.x))));
    var var_5 = 29252u;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~var_2.b, var_2.b, -abs(-2190i / -1i), (-var_2.b ^ ~65367i) | var_2.b));
}

