// {"0:0":[136,183,138,114,140,111,227,56,240,122,57,83]}
// Seed: 7920496113508103603

struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8> = array<i32, 8>(0i, 1i, -1i, i32(-2147483648), 20544i, 31164i, -19120i, 29657i);

fn func_2() -> vec2<bool> {
    global0 = array<i32, 8>();
    return select(select(select(!select(vec2<bool>(false, true), vec2<bool>(false, true), false), select(!vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, true), true), 15909u > 35971u), !(true || true)), select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), false & true), !(!vec2<bool>(true, true)), -1298f <= 204f), !any(vec2<bool>(true, true))), vec2<bool>(select(all(vec4<bool>(false, true, false, true)), false, any(vec2<bool>(true, false))), all(vec3<bool>(all(vec4<bool>(true, true, true, true)), false, !true))), select(!vec2<bool>(!false, false && false), !vec2<bool>(!false, !true), false && select(!false, !false, false)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec2<f32>) -> f32 {
    let var_0 = ~vec2<u32>(~min(4294967295u, 4294967295u) & (~0u % clamp(4294967295u, 61395u, 0u)), ~(firstTrailingBit(2599u) - ~1788u));
    let var_1 = firstLeadingBit(dot(reverseBits(vec2<i32>(0i, u_input.b)) / (vec2<i32>(global0[var_0.x], 85416i) % vec2<i32>(global0[var_0.x], -25139i)), firstLeadingBit(vec2<i32>(i32(-2147483648), global0[14520u]) | vec2<i32>(global0[var_0.x], 46594i))) & u_input.a);
    let var_2 = Struct_2(vec4<f32>(arg_3.x, round(max(arg_1.b, arg_0.c)), -2070f, trunc(max(arg_3.x - -1336f, -498f))));
    var var_3 = func_2().x;
    var var_4 = arg_1.a.xz;
    return -(round(ceil(-985f)) - arg_3.x) + sign(-595f);
}

fn func_1(arg_0: i32) -> f32 {
    var var_0 = !(!select(vec2<bool>(!true, true), select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, true), vec2<bool>(true, false)), !(!vec2<bool>(false, false))));
    var_0 = select(!(!vec2<bool>(var_0.x, true)), !select(!(!vec2<bool>(true, var_0.x)), !select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, false), var_0.x), select(select(vec2<bool>(false, var_0.x), vec2<bool>(true, true), vec2<bool>(var_0.x, true)), vec2<bool>(false, true), all(vec2<bool>(var_0.x, var_0.x)))), select(select(select(!vec2<bool>(var_0.x, false), !vec2<bool>(false, true), any(vec3<bool>(true, var_0.x, var_0.x))), select(select(vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, var_0.x), false), !vec2<bool>(var_0.x, true), var_0.x & false), vec2<bool>(var_0.x, all(vec2<bool>(false, var_0.x)))), func_2(), var_0.x));
    let var_1 = Struct_2(select(vec4<f32>(-(683f - 106f), -(-465f), func_3(Struct_1(vec4<bool>(var_0.x, var_0.x, var_0.x, true), 691f, -1000f), Struct_1(vec4<bool>(true, var_0.x, false, var_0.x), 328f, 924f), vec2<bool>(true, var_0.x), vec2<f32>(-371f, 754f)) + (-1516f / -703f), floor(-2202f)), -select(vec4<f32>(572f, 432f, -191f, 754f) / vec4<f32>(330f, 220f, -319f, -148f), min(vec4<f32>(964f, -574f, -247f, 422f), vec4<f32>(-377f, -284f, -181f, 1000f)), var_0.x), vec4<bool>(clamp(arg_0, arg_0, 16079i) < -arg_0, !(!var_0.x), var_0.x, !var_0.x || (26178u >= 0u))));
    var var_2 = select(!select(vec4<bool>(!var_0.x, !var_0.x, true, -50959i < 1i), vec4<bool>(var_0.x, true, !var_0.x, true), !(!vec4<bool>(true, var_0.x, false, var_0.x))), vec4<bool>(!(!(!false)), !var_0.x, var_0.x, var_0.x), false);
    global0 = array<i32, 8>();
    return ceil(-(-1000f) + -1000f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(ceil(vec4<f32>(max(838f * 616f, -719f), -340f, -434f, func_1(-8133i) * (1000f * -953f))));
    let var_1 = firstTrailingBit(36678u & dot(vec4<u32>(dot(vec3<u32>(0u, 32928u, 1u), vec3<u32>(73504u, 22383u, 1u)), clamp(16446u, 4116u, 46702u), dot(vec4<u32>(1u, 30238u, 29924u, 4294967295u), vec4<u32>(20089u, 53644u, 17098u, 0u)), ~4294967295u), vec4<u32>(~1u, 24574u, clamp(4294967295u, 33918u, 24603u), ~51837u)));
    global0 = array<i32, 8>();
    let var_2 = select(vec2<i32>(~(~2147483647i), u_input.b), ~(~(-vec2<i32>(-3832i, 36006i)) % (vec2<i32>(0i, global0[0u]) ^ vec2<i32>(global0[0u], global0[var_1]))), select(!(!select(vec2<bool>(false, false), vec2<bool>(true, false), true)), vec2<bool>(select(false, true, false) | all(vec2<bool>(true, true)), false), true & (!false != !true)));
    let var_3 = var_0;
    var var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(ceil(var_3.a.wz), 22999i);
}

