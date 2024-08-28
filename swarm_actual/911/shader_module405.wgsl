// {"0:0":[34,155,30,197,51,106,100,27,132,139,167,3,16,26,226,25,177,158,73,206,48,108,222,242,28,212,253,23,158,128,198,226]}
// Seed: 6779903653010099903

struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: vec4<f32>) -> vec3<f32> {
    return max(select(vec3<f32>(593f, arg_1.x, arg_1.x) - -vec3<f32>(arg_2.x, 1482f, 501f), -vec3<f32>(-282f, arg_1.x, 990f), select(vec3<bool>(true, false, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), !vec3<bool>(false, true, false))), -vec3<f32>(arg_2.x, abs(-1390f), arg_1.x)) + vec3<f32>((-arg_2.x + arg_2.x) / (-1780f + abs(-1333f)), sign(-331f / 587f), max(-1000f, -(643f - arg_1.x)));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(exp2(func_3(~(~vec3<i32>(664i, u_input.b, 0i)), -(vec2<f32>(-123f, 1597f) / vec2<f32>(2188f, -175f)), ceil(vec4<f32>(-123f, -474f, 682f, 1471f)))));
    let var_1 = Struct_1(ceil(floor(var_0.a)) * var_0.a);
    var var_2 = dot(abs(vec2<u32>(~53690u, dot(vec3<u32>(57528u, 1u, 0u), vec3<u32>(0u, 0u, 28461u)))) | vec2<u32>(53568u, ~32504u), max(~vec2<u32>(5870u, ~4294967295u), abs(vec2<u32>(1u, 15378u % 31603u))));
    let var_3 = true;
    var_0 = var_1;
    return Struct_1(var_1.a);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = func_2();
    let var_1 = u_input.c.www;
    let var_2 = var_1;
    let var_3 = vec4<f32>(var_0.a.x * select((var_0.a.x * -1000f) + 1015f, 1000f, true), -sign(-3251f - ceil(var_0.a.x)), -219f, sign(round(var_0.a.x)));
    let var_4 = Struct_1(-vec3<f32>(-1311f, -(-269f), -2041f));
    return Struct_1(var_4.a);
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: u32) -> Struct_1 {
    let var_0 = max(i32(-2147483648), u_input.c.x * -1i);
    let var_1 = func_2();
    let var_2 = 6846i;
    let var_3 = abs(vec3<i32>((max(var_2, 1i) >> ~4294967295u) % u_input.b, u_input.c.x, min(var_2, -1i % u_input.b) % i32(-2147483648)));
    var var_4 = var_1;
    return func_2();
}

fn func_6(arg_0: f32, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = max(vec3<i32>(~countOneBits(dot(arg_2.yz, vec2<i32>(2147483647i, -13028i))), ~arg_2.x, u_input.c.x & select(u_input.a, arg_2.x, !true)), (arg_2 - firstLeadingBit(u_input.c.xyy)) * u_input.c.xyy);
    let var_1 = vec3<i32>(~(~u_input.a), ~(dot(u_input.c, u_input.c) << (1374u ^ 1u)), firstTrailingBit(var_0.x)) << (firstLeadingBit(min(select(vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(104322u, 1947u, 0u), vec3<bool>(true, true, false)), vec3<u32>(1u, 1u, 4294967295u))) % vec3<u32>(~(~12327u), 4294967295u << ~4294967295u, ~82307u));
    let var_2 = !vec3<bool>(all(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false))), false, all(vec4<bool>(arg_1.a.x != arg_0, false, all(vec2<bool>(true, true)), any(vec3<bool>(true, true, true)))));
    let var_3 = vec4<bool>(!(-269f > -969f), (false || (-1356f == (arg_1.a.x * 1576f))) || ((true || !var_2.x) || var_2.x), var_2.x, all(!(!vec3<bool>(false, false, true))));
    var var_4 = ~4294967295u;
    return Struct_1(func_2().a - -arg_1.a);
}

fn func_1(arg_0: vec3<i32>, arg_1: u32, arg_2: vec3<f32>, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = func_6(-710f, func_5(func_4(func_2()), arg_3.x | arg_3.x, reverseBits(~(~1u))), -vec3<i32>(firstLeadingBit(~arg_0.x), -(-8312i * arg_0.x), firstTrailingBit(21475i) >> 4294967295u));
    let var_1 = 4109u;
    let var_2 = -sign(((285f / arg_2.x) / (arg_2.x * 1923f)) * 1319f);
    var var_3 = Struct_1(exp2(arg_2));
    return var_0;
}

fn func_7(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = ~(~(49456u + (9266u - 4131u)));
    var_0 = 85752u ^ (dot(countOneBits(vec3<u32>(1u, 40758u, 51609u)), select(~vec3<u32>(18640u, 4294967295u, 58079u), ~vec3<u32>(104245u, 1u, 1u), !vec3<bool>(true, false, false))) + ~(~abs(43595u)));
    let var_1 = func_2();
    let var_2 = vec4<bool>(false, i32(-2147483648) >= -7068i, arg_0, true);
    var var_3 = arg_2;
    return Struct_1(-((-vec3<f32>(2070f, arg_2.a.x, 159f) + vec3<f32>(1180f, var_1.a.x, arg_2.a.x)) + exp2(func_2().a)));
}

fn func_8(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = firstLeadingBit(12181u);
    return Struct_1(vec3<f32>(-(-arg_2.a.x) * (-arg_2.a.x + arg_0.a.x), max(func_2().a.x, -(-437f)) + arg_2.a.x, func_5(arg_2, min(0u, arg_1.x), ~arg_1.x).a.x - -301f));
}

fn func_9(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(arg_1.a);
    let var_1 = true;
    var var_2 = arg_2;
    let var_3 = min((4294967295u | (18926u + 1u)) / (select(70003u, 4294967295u, var_1) << ~1u), 56974u << ~(~14203u)) * (8329u | ~((4294967295u % 0u) * 90302u));
    let var_4 = reverseBits(~countOneBits(vec2<u32>(var_3 >> var_3, 4294967295u)));
    return Struct_1(select(max(sign(vec3<f32>(644f, arg_1.a.x, arg_1.a.x) * vec3<f32>(149f, var_2.a.x, -479f)), func_6(arg_2.a.x - arg_2.a.x, Struct_1(vec3<f32>(810f, var_2.a.x, arg_2.a.x)), firstTrailingBit(u_input.c.yxx)).a), min(-func_4(arg_2).a, exp2(select(arg_1.a, vec3<f32>(-376f, -1048f, -235f), var_1))), !(!select(vec3<bool>(var_1, false, false), vec3<bool>(true, var_1, false), vec3<bool>(false, var_1, var_1)))));
}

fn func_10(arg_0: vec4<u32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = vec4<bool>(!all(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false))), false, ((firstLeadingBit(arg_0.x) > 25773u) != (any(vec2<bool>(false, true)) || !false)) || any(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)), -1237f >= arg_1.a.x);
    let var_1 = arg_1;
    let var_2 = arg_0.x;
    var var_3 = u_input.c.yxx + reverseBits(max(u_input.c.wxw, u_input.c.xwy));
    var_0 = vec4<bool>(!var_0.x, !all(!(!vec3<bool>(true, false, var_0.x))), any(!vec3<bool>(!false, arg_1.a.x != var_1.a.x, !var_0.x)), var_0.x);
    return Struct_1(vec3<f32>(arg_1.a.x, func_6(select(-(-1194f), floor(-1000f), var_0.x), arg_1, u_input.c.xzw / u_input.c.xwx).a.x, 755f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(1i + -1i, -(~dot(vec2<i32>(u_input.b, u_input.c.x) & u_input.c.xx, clamp(u_input.c.wz, vec2<i32>(u_input.b, u_input.c.x), u_input.c.xw))), -1i, max(u_input.b, clamp(u_input.a % abs(u_input.c.x), ~12805i, 50543i >> 20750u)));
    var var_1 = func_10(select(firstLeadingBit(~(~vec4<u32>(40666u, 48275u, 33933u, 4294967295u))), firstTrailingBit(select(reverseBits(vec4<u32>(1u, 15889u, 0u, 4294967295u)), ~vec4<u32>(0u, 0u, 0u, 1u), true)), select(!vec4<bool>(true, false, false, true), select(vec4<bool>(false, false, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), true), !true), !(!vec4<bool>(true, true, true, true)))), func_9(-67108i, Struct_1(vec3<f32>(721f / -253f, -(-1931f), -522f)), func_8(Struct_1(exp2(vec3<f32>(-1000f, 486f, 1329f))), abs(vec2<u32>(22327u, 0u)), func_7(!false, Struct_1(vec3<f32>(-1015f, 374f, 257f)), func_1(var_0.yzx, 10416u, vec3<f32>(733f, 354f, 387f), vec2<u32>(0u, 0u))), var_0)));
    var var_2 = Struct_1(vec3<f32>((round(var_1.a.x) / -787f) + var_1.a.x, func_5(Struct_1(vec3<f32>(var_1.a.x, -913f, -965f)), abs(0u), 1u).a.x - -ceil(var_1.a.x), -func_9(-u_input.a, func_7(false, Struct_1(vec3<f32>(1000f, var_1.a.x, -298f)), Struct_1(vec3<f32>(1476f, var_1.a.x, var_1.a.x))), func_7(false, Struct_1(var_1.a), Struct_1(vec3<f32>(497f, 201f, var_1.a.x)))).a.x));
    var_2 = Struct_1(vec3<f32>(var_2.a.x, var_2.a.x, (var_1.a.x * var_2.a.x) + (var_2.a.x / -119f)) + vec3<f32>(1275f, 598f, -526f));
    var_2 = Struct_1(var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(~vec4<u32>(4294967295u, 4523u, 60074u, 1u)));
}

