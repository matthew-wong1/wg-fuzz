// {"0:0":[51,246,95,59,157,197,99,203,174,78,27,198,42,218,214,6,53,167,192,192,168,212,106,25,109,40,96,183,16,54,109,201,9,6,222,68,234,96,129,208,59,22,231,54,104,197,132,67]}
// Seed: 8747092084882980869

struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: u32,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<u32>(43404u, 34924u, 4294967295u, 1u));

var<private> global1: bool;

fn func_3() -> bool {
    let var_0 = Struct_1(any(!(!(!vec2<bool>(true, false)))), reverseBits(select(vec3<u32>(~global0.a.x, ~u_input.c, 4294967295u), ~(~u_input.a.xww), select(vec3<bool>(true, true, false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), 456f == 1285f))), -(~(-(-5920i))) & 0i, select(reverseBits((-1i | 31544i) << 1u), abs(abs(-(-1i))), false), ~max(-2138i & (-1i - -1i), -max(i32(-2147483648), 20916i)));
    let var_1 = var_0;
    var var_2 = select(vec2<bool>(all(vec4<bool>(var_0.a, var_1.a, all(vec3<bool>(true, true, var_1.a)), var_1.a || var_0.a)), var_1.a), select(!select(vec2<bool>(var_0.a, true), !vec2<bool>(var_1.a, var_0.a), true), vec2<bool>((255f <= 794f) & !var_0.a, select(var_1.a, true, false) != (var_1.a != false)), !all(!vec3<bool>(true, false, var_0.a))), var_1.a && var_1.a);
    global1 = true;
    let var_3 = var_0;
    return var_3.a;
}

fn func_2(arg_0: vec4<i32>, arg_1: u32) -> f32 {
    global1 = !func_3();
    global1 = !(max(arg_1, abs(~11425u)) >= firstTrailingBit(~0u));
    let var_0 = Struct_2(!select(select(!vec4<bool>(true, true, false, true), !vec4<bool>(true, false, true, false), true && true), select(vec4<bool>(true, false, false, false), !vec4<bool>(true, true, true, false), false), select(!vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), false)), max(min(round(sign(vec2<f32>(1409f, 346f))), vec2<f32>(395f + -1075f, -957f)), abs(-vec2<f32>(1929f, 578f))), -min(vec2<f32>(-1670f, -1000f) * vec2<f32>(-622f, -891f), vec2<f32>(1815f, -569f) - vec2<f32>(216f, 475f)) * (((vec2<f32>(-312f, -366f) / vec2<f32>(-1448f, -276f)) / (vec2<f32>(250f, -3767f) - vec2<f32>(-2585f, -897f))) * -abs(vec2<f32>(825f, 1350f))), Struct_1(any(vec3<bool>(true | false, true, !false)), u_input.a.wzz, ~(~(-64188i)), firstTrailingBit(dot(arg_0 * vec4<i32>(arg_0.x, 1i, 0i, arg_0.x), vec4<i32>(-45869i, arg_0.x, arg_0.x, arg_0.x) / vec4<i32>(arg_0.x, arg_0.x, 0i, arg_0.x))), ~(~arg_0.x) + countOneBits(~523i)), vec3<u32>(8532u, global0.a.x, global0.a.x));
    var var_1 = Struct_3(clamp(vec4<u32>(~1u % ~1u, 1u, firstTrailingBit(var_0.e.x), 62016u), vec4<u32>(global0.a.x, ~u_input.a.x - global0.a.x, ~max(u_input.c, 12553u), firstLeadingBit(31711u) << arg_1), global0.a & vec4<u32>(~4294967295u, 0u / u_input.b.x, abs(56521u), ~22272u)));
    var_1 = Struct_3(min(~reverseBits(var_1.a), global0.a));
    return step(abs(exp2(210f) + var_0.b.x), var_0.c.x);
}

fn func_1() -> Struct_2 {
    global1 = !any(select(!(!vec2<bool>(false, true)), vec2<bool>(false, u_input.a.x > 1u), false));
    let var_0 = 1101f;
    global1 = true;
    var var_1 = var_0 < func_2(vec4<i32>(i32(-2147483648) % clamp(10236i, 0i, 72382i), -(20528i >> global0.a.x), ~6670i, i32(-2147483648)), global0.a.x);
    var var_2 = Struct_1(false, reverseBits(clamp(u_input.a.zyy, (vec3<u32>(1u, 77359u, global0.a.x) << u_input.a.yww) / u_input.b.xwx, u_input.a.wxx)), ~dot(~vec4<i32>(-51338i, -3315i, 9296i, -7688i) - vec4<i32>(39301i, i32(-2147483648), 0i, -62167i), -(~vec4<i32>(-47440i, -32211i, i32(-2147483648), 1i))), 9952i, 54435i / ((firstTrailingBit(-1i) | (-6158i * i32(-2147483648))) | abs(-4982i - 51125i)));
    return Struct_2(select(vec4<bool>(var_2.a, all(select(vec2<bool>(var_2.a, false), vec2<bool>(var_2.a, var_2.a), var_2.a)), true, 2147483647i <= -3338i), !vec4<bool>(var_2.a, var_2.a || true, all(vec4<bool>(false, var_2.a, true, var_2.a)), !var_2.a), !false), vec2<f32>(var_0 * var_0, var_0), min(select(-vec2<f32>(1220f, 1613f), floor(vec2<f32>(var_0, var_0)), false), trunc(-vec2<f32>(var_0, var_0))) * (vec2<f32>(-1071f * 571f, var_0) * -(-vec2<f32>(var_0, -519f))), Struct_1(select(var_2.a, select(var_2.a | var_2.a, true == var_2.a, 1i >= var_2.e), min(u_input.c, 0u) < abs(global0.a.x)), vec3<u32>(7342u, dot(min(vec2<u32>(4294967295u, var_2.b.x), u_input.a.xy), u_input.a.xw), var_2.b.x), -var_2.c * select(~var_2.c, 2147483647i, any(vec3<bool>(var_2.a, false, var_2.a))), 1i, min(abs(-(-4568i)), var_2.e)), select(vec3<u32>(dot(vec4<u32>(36616u, u_input.b.x, global0.a.x, global0.a.x) - global0.a, select(u_input.a, u_input.b, var_2.a)), ~u_input.a.x * (1u % 47164u), global0.a.x), min(select(vec3<u32>(4294967295u, u_input.c, global0.a.x), vec3<u32>(global0.a.x, var_2.b.x, 10744u), var_2.a), var_2.b) * min(global0.a.ywy, abs(global0.a.yxz)), !(var_0 >= -var_0)));
}

fn func_4(arg_0: Struct_2) -> Struct_3 {
    global0 = Struct_3(~abs(vec4<u32>(1u, 21503u, countOneBits(arg_0.d.b.x), ~global0.a.x)));
    let var_0 = arg_0.a.xyz;
    var var_1 = reverseBits(firstLeadingBit(select(firstTrailingBit(arg_0.d.b), u_input.b.zwx, true) | reverseBits(u_input.b.wzx + vec3<u32>(u_input.b.x, u_input.a.x, arg_0.d.b.x))));
    let var_2 = var_0;
    global1 = all(arg_0.a.wwx) & all(var_0);
    return Struct_3(vec4<u32>(1u * (~arg_0.d.b.x & arg_0.e.x), ~(~u_input.a.x), ~40440u, firstLeadingBit(u_input.a.x & 37871u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(func_1());
    var var_0 = func_1();
    let var_1 = Struct_2(vec4<bool>(any(select(select(vec2<bool>(true, var_0.a.x), var_0.a.zw, true), vec2<bool>(var_0.d.a, var_0.d.a), var_0.a.yx)), var_0.a.x, !(!(var_0.d.c > 50074i)), var_0.d.a), min(-var_0.c, var_0.b), var_0.c, func_1().d, abs(u_input.a.xxw));
    let var_2 = 60288i;
    global0 = Struct_3(global0.a);
    var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(-(select(-vec2<i32>(var_2, var_1.d.e), reverseBits(vec2<i32>(var_0.d.e, var_2)), !var_1.a.xx) | (vec2<i32>(0i, var_1.d.d) * reverseBits(vec2<i32>(var_1.d.c, var_0.d.c)))), var_0.c.x, ~0u, reverseBits(-(-vec4<i32>(var_1.d.e, -26971i, var_0.d.d, var_0.d.e) + clamp(vec4<i32>(var_0.d.d, 5039i, 22498i, -10588i), vec4<i32>(var_2, -16527i, var_1.d.d, var_2), vec4<i32>(-1i, i32(-2147483648), var_2, var_1.d.e)))), abs(-(-var_1.b.x)));
}

