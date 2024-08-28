// {"0:0":[180,65,59,177,170,35,126,19,168,231,133,62,117,102,125,188,139,135,222,78,77,38,175,148,132,150,41,198,166,164,232,153,8,171,239,201,115,190,6,39,189,82,73,235,59,5,22,91]}
// Seed: 3068386577866021611

struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: i32,
    d: vec4<bool>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec2<bool>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: i32, arg_1: vec4<u32>) -> vec3<f32> {
    let var_0 = any(select(!(!vec2<bool>(false, false)), vec2<bool>(true & any(vec3<bool>(false, true, false)), true), false));
    let var_1 = all(!(!(!select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, var_0, true), var_0))));
    return -vec3<f32>(-786f + (-107f / (-1962f / 1633f)), select((990f * -298f) * (-340f - -783f), -805f, var_1), trunc(-967f));
}

fn func_2(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_1) -> bool {
    var var_0 = 1u >> ((arg_0 + u_input.a) + min(~(14022u - arg_0), (1u | 1u) * u_input.a));
    var var_1 = arg_2;
    let var_2 = Struct_1(~var_1.a - (var_1.a * min(vec4<i32>(33952i, u_input.c, 1i, 18210i), var_1.a)), -(var_1.b / vec3<f32>(-1325f, var_1.b.x, arg_2.b.x)) - -(var_1.b * func_3(u_input.c, vec4<u32>(arg_0, u_input.d, arg_0, arg_0))), -(~u_input.c) | clamp(2147483647i, -23232i - u_input.c, select(1i, ~(-15846i), var_1.e.x)), !vec4<bool>(all(select(vec4<bool>(false, true, var_1.d.x, var_1.d.x), vec4<bool>(var_1.e.x, arg_2.d.x, arg_1.x, var_1.d.x), arg_1.x)), false, false, any(select(vec2<bool>(false, true), vec2<bool>(false, false), true))), vec2<bool>(arg_2.d.x, !any(select(var_1.d.xyw, vec3<bool>(false, false, arg_1.x), arg_1.x))));
    var_1 = Struct_1(abs(~(firstLeadingBit(vec4<i32>(1i, var_2.c, arg_2.c, arg_2.c)) * var_2.a)), -((exp2(vec3<f32>(-1375f, var_2.b.x, var_2.b.x)) * vec3<f32>(-137f, var_2.b.x, -771f)) + -var_2.b), -(-1i), !(!select(arg_2.d, vec4<bool>(var_1.d.x, var_2.e.x, var_1.d.x, arg_2.e.x), select(var_2.d, var_2.d, var_1.d))), vec2<bool>(!all(!arg_2.d), true));
    let var_3 = var_2.b.x;
    return false;
}

fn func_1() -> Struct_2 {
    let var_0 = -768f;
    let var_1 = select(vec4<bool>(true, false, !all(!vec3<bool>(true, true, true)), !any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)))), !(!(!vec4<bool>(true, false, false, false))), select(!(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true))), select(vec4<bool>(true, func_2(8206u, vec2<bool>(true, true), Struct_1(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), vec3<f32>(var_0, var_0, 450f), 26688i, vec4<bool>(false, false, false, false), vec2<bool>(true, true))), true, !false), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false)), !vec4<bool>(true, false, true, true), all(vec3<bool>(true, true, true))), select(!vec4<bool>(true, true, true, true), !vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false))), !vec4<bool>(!true, select(true, true, false), !false, any(vec4<bool>(true, true, false, false)))));
    var var_2 = Struct_1(firstTrailingBit(vec4<i32>(dot(vec2<i32>(i32(-2147483648), 11660i), vec2<i32>(u_input.c, 16383i)), dot(vec3<i32>(u_input.c, 2147483647i, 11949i), vec3<i32>(12436i, u_input.c, u_input.c)), i32(-2147483648) + 1i, u_input.c * u_input.c) & abs(select(vec4<i32>(u_input.c, u_input.c, u_input.c, 2147483647i), vec4<i32>(u_input.c, u_input.c, u_input.c, 1i), var_1))), abs((-vec3<f32>(507f, var_0, 707f) + vec3<f32>(var_0, -389f, var_0)) + vec3<f32>(select(-375f, 688f, true), -(-1147f), var_0)), ~u_input.c, vec4<bool>(true | (max(1u, u_input.b.x) == (u_input.b.x << 16518u)), var_1.x, all(var_1.yxw), var_1.x), var_1.wz);
    let var_3 = ~(~max(~7681u, ~0u) << ~u_input.b.x);
    let var_4 = false;
    return Struct_2((reverseBits(firstLeadingBit(vec4<u32>(var_3, 58196u, 47495u, 4294967295u))) | ~select(vec4<u32>(7331u, u_input.a, u_input.d, 10345u), vec4<u32>(4294967295u, 42142u, var_3, 60973u), var_2.e.x)) / reverseBits(~min(vec4<u32>(u_input.a, 0u, 34820u, 0u), vec4<u32>(var_3, var_3, u_input.d, var_3))), Struct_1(-vec4<i32>(0i, 1i, ~28839i, -22761i << 54576u), var_2.b + floor(-var_2.b), dot(vec3<i32>(1i, var_2.a.x, 0i) + clamp(vec3<i32>(i32(-2147483648), u_input.c, 33456i), var_2.a.xxz, vec3<i32>(var_2.a.x, u_input.c, u_input.c)), var_2.a.zxw), select(vec4<bool>(any(vec3<bool>(false, true, var_2.e.x)), true == true, func_2(u_input.a, vec2<bool>(false, var_4), Struct_1(var_2.a, var_2.b, 21908i, vec4<bool>(false, var_4, var_2.d.x, true), var_2.e)), true), vec4<bool>(func_2(1u, var_2.d.wz, Struct_1(var_2.a, var_2.b, var_2.c, var_1, vec2<bool>(false, true))), true, 27923i > var_2.c, var_4), !(!var_1.x)), vec2<bool>(true, false)), var_2.d.xy, var_1.xy);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>) -> vec4<bool> {
    let var_0 = Struct_1(func_1().b.a - ~(-vec4<i32>(arg_0.b.a.x, arg_0.b.a.x, u_input.c, i32(-2147483648)) << arg_1), arg_0.b.b, ~(-(i32(-2147483648) >> arg_1.x) * -2147483647i), select(arg_0.b.d, arg_0.b.d, !(!any(arg_0.b.d))), !select(!select(arg_0.d, vec2<bool>(arg_0.d.x, true), arg_0.b.e.x), arg_0.d, !(!arg_0.d.x)));
    var var_1 = var_0;
    var var_2 = arg_0.b.a;
    let var_3 = var_1.d.zwy;
    var var_4 = arg_0.a.xwx;
    return !var_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<i32>(-(-1i) ^ -u_input.c, 4770i | u_input.c, u_input.c, (-1i % 4555i) << u_input.b.x) >> vec4<u32>(~reverseBits(u_input.b.x), 0u, ~u_input.d, dot(vec3<u32>(u_input.a, 3475u, u_input.a), vec3<u32>(u_input.d, 3734u, u_input.b.x)) | 14311u), -(((vec3<f32>(-268f, -140f, 1000f) / vec3<f32>(-715f, 154f, -1957f)) - exp2(vec3<f32>(823f, 252f, 508f))) * step(vec3<f32>(-480f, 671f, 1263f), vec3<f32>(1006f, 1000f, 351f) / vec3<f32>(1261f, -639f, -523f))), select(u_input.c, u_input.c, !all(!vec3<bool>(false, true, true))), func_4(func_1(), ((vec4<u32>(6191u, u_input.d, 88648u, 0u) - vec4<u32>(u_input.d, 18629u, u_input.a, u_input.d)) / (vec4<u32>(4294967295u, 0u, 4294967295u, u_input.a) & vec4<u32>(1877u, 1u, 16370u, 24022u))) - vec4<u32>(u_input.a / 0u, u_input.a, u_input.a, 0u)), vec2<bool>(any(vec2<bool>(true, false)) || !(!true), true));
    var var_1 = ~firstTrailingBit(u_input.b) - (select(~(vec3<u32>(31924u, u_input.a, u_input.d) ^ u_input.b), (u_input.b % vec3<u32>(u_input.d, u_input.b.x, u_input.b.x)) * (vec3<u32>(1u, 0u, u_input.b.x) >> u_input.b), !var_0.d.x & (13997u <= 49647u)) << firstTrailingBit(u_input.b));
    var_1 = ~(u_input.b ^ u_input.b);
    var var_2 = ~countOneBits(~firstLeadingBit(abs(var_1.zy)));
    let var_3 = func_1().b;
    var var_4 = ~vec3<u32>(reverseBits(~u_input.d), 1u, u_input.a) * ~(~(u_input.b - vec3<u32>(1907u, var_2.x, u_input.d)));
    var var_5 = ~u_input.b;
    var_5 = vec3<u32>(u_input.d | ~(~(u_input.d + var_4.x)), 32779u, var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(u_input.b ^ vec3<u32>(u_input.d, u_input.b.x * 0u, 4294967295u)));
}

