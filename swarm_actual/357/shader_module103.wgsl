// {"0:0":[16,234,178,226]}
// Seed: 5593151086224355117

struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: f32, arg_1: f32, arg_2: f32, arg_3: vec3<i32>) -> vec3<i32> {
    let var_0 = Struct_1(-select(vec3<i32>(arg_3.x, -9291i, arg_3.x) >> (vec3<u32>(u_input.a, 4294967295u, u_input.a) >> vec3<u32>(u_input.a, 78467u, 0u)), vec3<i32>(select(-1i, arg_3.x, false), -26874i, arg_3.x), !(!true)), -ceil(vec2<f32>(689f, arg_0) * vec2<f32>(-807f, arg_1)) - abs(trunc(vec2<f32>(arg_2, 839f)) / vec2<f32>(1281f, arg_2)), -arg_2 / min(-(673f - -590f), -floor(arg_2)));
    let var_1 = 1i;
    var var_2 = vec3<u32>(u_input.a ^ countOneBits(dot(~vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(538u, 1u, 10828u))), dot(vec3<u32>(0u, select(4294967295u, u_input.a, true), u_input.a), vec3<u32>(~u_input.a, u_input.a, ~u_input.a)) & countOneBits(u_input.a ^ (u_input.a + u_input.a)), u_input.a);
    let var_3 = select(~1i, var_1, !(!all(vec3<bool>(false, true, true))));
    var var_4 = Struct_2(Struct_1(var_0.a, trunc(-vec2<f32>(arg_1, -960f)), -(-(-(-1000f)))), -(-(-vec4<f32>(arg_2, var_0.c, arg_2, arg_2))) + (-step(vec4<f32>(-701f, -1000f, 1000f, 281f), vec4<f32>(515f, 135f, -1263f, -124f)) - -(vec4<f32>(var_0.c, -367f, -155f, arg_2) - vec4<f32>(406f, -1000f, 406f, -796f))), ~(-1i), Struct_1(vec3<i32>(~(i32(-2147483648)) % ~var_1, -36511i, -23223i), ceil(step(-var_0.b, vec2<f32>(arg_1, arg_2))), -931f / -232f));
    return (clamp((vec3<i32>(var_4.c, var_1, 2147483647i) + arg_3) | vec3<i32>(-5022i, arg_3.x, -1i), vec3<i32>(-22077i, ~0i, ~(-6320i)), arg_3) ^ ~((vec3<i32>(var_4.c, 1i, var_3) & var_4.d.a) << (vec3<u32>(7571u, var_2.x, 57835u) / vec3<u32>(u_input.a, u_input.a, u_input.a)))) << clamp(vec3<u32>(u_input.a, 38297u, var_2.x) | max(vec3<u32>(12399u, 88503u, 1u), vec3<u32>(51179u, u_input.a, u_input.a)), vec3<u32>(u_input.a - 1u, 52027u, 0u) % ~firstTrailingBit(vec3<u32>(u_input.a, var_2.x, 27762u)), firstTrailingBit(abs(vec3<u32>(25371u, 20241u, var_2.x))) % vec3<u32>(48202u, ~u_input.a, var_2.x));
}

fn func_2(arg_0: vec2<i32>, arg_1: i32) -> Struct_3 {
    let var_0 = Struct_3(Struct_1((func_3(-1583f, -469f, 682f, vec3<i32>(arg_0.x, arg_0.x, 2147483647i)) ^ countOneBits(vec3<i32>(arg_1, 1i, -98683i))) | vec3<i32>(~13887i, arg_1 ^ arg_1, ~1i), -(-vec2<f32>(-420f, -264f)), -step(-191f * 1184f, -1030f * 351f)), !vec4<bool>(!true, select(!false, -1000f > -716f, !true), select(161f > 601f, true, !true), true));
    var var_1 = !(!any(vec4<bool>(false, all(vec4<bool>(false, false, false, false)), true, select(var_0.b.x, var_0.b.x, true))));
    var var_2 = Struct_3(var_0.a, select(var_0.b, vec4<bool>(any(!vec2<bool>(true, var_0.b.x)), select(true & var_0.b.x, any(var_0.b), var_0.b.x), select(!true, var_0.b.x, !var_0.b.x), 0i >= -45163i), var_0.b));
    let var_3 = -dot(-var_2.a.a, var_2.a.a >> ~vec3<u32>(u_input.a, 47516u, 0u));
    var_2 = Struct_3(Struct_1(abs(-abs(vec3<i32>(0i, var_3, var_0.a.a.x))), var_2.a.b, min(234f, 385f + 187f)), vec4<bool>(false, (~(-48563i) * var_3) <= arg_1, select(!any(var_2.b.wz), var_2.b.x, var_0.b.x), var_2.b.x || true));
    return Struct_3(Struct_1(vec3<i32>(var_3, -var_2.a.a.x, arg_1 >> 9716u) << max(select(vec3<u32>(88983u, u_input.a, 4294967295u), vec3<u32>(1u, u_input.a, 0u), false), vec3<u32>(25086u, u_input.a, u_input.a) & vec3<u32>(4294967295u, u_input.a, 1u)), vec2<f32>(ceil(abs(913f)), var_0.a.c), -(-var_2.a.c)), select(select(select(!var_2.b, var_0.b, !vec4<bool>(false, false, var_0.b.x, var_2.b.x)), !select(var_2.b, var_2.b, true), any(select(vec2<bool>(false, var_2.b.x), var_2.b.yy, var_0.b.xx))), var_2.b, clamp(31981u, dot(vec3<u32>(49381u, 20109u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)), ~5675u) <= select(26763u, 60264u, select(true, true, var_0.b.x))));
}

fn func_1(arg_0: vec4<u32>) -> vec4<bool> {
    let var_0 = arg_0.zww;
    var var_1 = func_2(-(-(select(vec2<i32>(i32(-2147483648), 1i), vec2<i32>(45483i, -6958i), false) * vec2<i32>(39637i, -24553i))), countOneBits(2147483647i));
    return func_2(-var_1.a.a.yx, var_1.a.a.x + -1i).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!func_1(~(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))));
    let var_1 = !vec2<bool>(select(clamp(-9785i, 1i, 2147483647i) == -(i32(-2147483648)), u_input.a == (u_input.a >> u_input.a), false), !var_0.x);
    var var_2 = -(-(-(-313f)));
    var var_3 = 28872i;
    let var_4 = -(~abs(-(i32(-2147483648))));
    var_2 = -round(-(exp2(-2146f) - round(-214f)));
    var var_5 = -dot(abs(vec4<i32>(13457i, var_4, 9123i, -1i) * vec4<i32>(var_4, -1i, 37230i, i32(-2147483648))) << (max(vec4<u32>(u_input.a, 41578u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 1u)) * select(vec4<u32>(u_input.a, 5653u, u_input.a, u_input.a), vec4<u32>(64930u, 0u, u_input.a, 45024u), var_1.x)), max(~vec4<i32>(var_4, -1i, var_4, var_4) + -vec4<i32>(var_4, var_4, var_4, 25867i), vec4<i32>(dot(vec3<i32>(var_4, 0i, var_4), vec3<i32>(var_4, 64966i, -1i)), -8078i, ~var_4, ~(i32(-2147483648)))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(abs(vec2<i32>(i32(-2147483648), -2137i)) << vec2<u32>(10805u, ~61657u)));
}

