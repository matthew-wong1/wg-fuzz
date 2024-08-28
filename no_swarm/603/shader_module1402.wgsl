// {"0:0":[81,168,206,125,155,29,135,237]}
// Seed: 2664696898374493086

struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: Struct_4) -> bool {
    let var_0 = max(ceil(-((vec3<f32>(793f, -743f, -717f) + vec3<f32>(arg_0.b, 1000f, 1246f)) + -vec3<f32>(arg_0.b, -143f, 694f))), vec3<f32>(-select(exp2(-734f), arg_0.b, false), -max(round(210f), max(-1447f, arg_0.b)), arg_0.b));
    var var_1 = arg_0.c.x;
    var_1 = arg_0.c.x;
    var var_2 = Struct_1(var_0 / vec3<f32>(-(-288f) / ceil(arg_0.b), -723f, step(arg_0.b, -985f + 150f)));
    var_1 = true;
    return !(!arg_0.c.x);
}

fn func_2() -> vec3<bool> {
    var var_0 = Struct_3(Struct_2(~(vec2<u32>(32132u, 0u) * vec2<u32>(49391u, 1u)) * max(~vec2<u32>(53422u, 32490u), vec2<u32>(67914u, 4294967295u) >> vec2<u32>(0u, 4294967295u))), true, max(-vec2<f32>(-1799f + 134f, -(-1000f)), -vec2<f32>(1457f * -774f, -(-1942f))));
    var_0 = Struct_3(Struct_2(var_0.a.a), false, -floor(-select(var_0.c, var_0.c, var_0.b)));
    var_0 = Struct_3(Struct_2(clamp(var_0.a.a ^ var_0.a.a, var_0.a.a, vec2<u32>(var_0.a.a.x, 4294967295u)) << select(vec2<u32>(var_0.a.a.x, var_0.a.a.x), vec2<u32>(124802u, var_0.a.a.x), !vec2<bool>(false, false))), func_3(Struct_4(-(u_input.b ^ u_input.a), var_0.c.x, !(!vec3<bool>(false, var_0.b, false)))), abs(vec2<f32>(-abs(-243f), -(var_0.c.x - var_0.c.x))));
    var_0 = Struct_3(Struct_2(min(vec2<u32>(var_0.a.a.x % var_0.a.a.x, dot(vec3<u32>(1274u, var_0.a.a.x, var_0.a.a.x), vec3<u32>(var_0.a.a.x, var_0.a.a.x, var_0.a.a.x))), (var_0.a.a - var_0.a.a) & ~var_0.a.a)), !(~var_0.a.a.x >= var_0.a.a.x), var_0.c);
    var var_1 = reverseBits(vec3<i32>(~clamp(-46259i, u_input.b, 0i), select(0i, u_input.a, any(vec2<bool>(true, var_0.b))), min(u_input.a, u_input.b)) % (vec3<i32>(dot(vec4<i32>(u_input.b, 1i, i32(-2147483648), -25164i), vec4<i32>(i32(-2147483648), u_input.a, 0i, u_input.b)), u_input.b, u_input.b) & vec3<i32>(u_input.b, u_input.b & 0i, -33807i << 13470u)));
    return !(!(!select(!vec3<bool>(var_0.b, false, true), select(vec3<bool>(true, var_0.b, true), vec3<bool>(var_0.b, true, var_0.b), vec3<bool>(var_0.b, false, false)), !var_0.b)));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: vec3<bool>) -> vec3<bool> {
    let var_0 = 1u;
    var var_1 = arg_1;
    var var_2 = 27658i;
    var_2 = clamp(-u_input.a ^ (u_input.b - (-u_input.a - abs(-10212i))), min(14801i, -(38466i ^ u_input.a)) + -23908i, 9131i + ~u_input.a);
    var var_3 = select(~vec2<u32>(var_1.a.x, var_0) - vec2<u32>(var_0, var_0), ~vec2<u32>(3758u, 49884u), arg_3.yz) % ~vec2<u32>(38779u, (1u | 1u) / ~var_0);
    return select(func_2(), arg_3, vec3<bool>(false, arg_2.x, true));
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> u32 {
    let var_0 = -(-vec4<f32>(-530f, 559f, 1133f, 788f) * -floor(vec4<f32>(241f, arg_1, -1516f, arg_0.a.x))) * -(-(-exp2(vec4<f32>(arg_1, -410f, arg_0.a.x, arg_0.a.x))));
    let var_1 = Struct_4(~(i32(-2147483648)), round(-513f), select(select(vec3<bool>(!false, true, false || false), func_4(1u > 1u, Struct_2(vec2<u32>(4294967295u, 1u)), !vec2<bool>(true, true), func_2()), true), vec3<bool>(any(func_2().xx), any(func_4(true, Struct_2(vec2<u32>(38463u, 159795u)), vec2<bool>(true, false), vec3<bool>(true, false, true)).zy), !false || (false || true)), vec3<bool>(any(!vec3<bool>(true, false, true)), false, any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false))))));
    let var_2 = ~(~abs(~1u)) & ((reverseBits(firstTrailingBit(23105u)) ^ 43124u) / 13333u);
    var var_3 = var_1.a;
    var_3 = ~dot(vec3<i32>(var_1.a, u_input.a, ~(-3410i)) ^ select(vec3<i32>(2894i, u_input.b, 11681i), vec3<i32>(var_1.a, var_1.a, var_1.a), func_4(false, Struct_2(vec2<u32>(var_2, 4294967295u)), vec2<bool>(var_1.c.x, var_1.c.x), var_1.c)), (abs(vec3<i32>(var_1.a, 0i, var_1.a)) << abs(vec3<u32>(14193u, 0u, var_2))) & min(countOneBits(vec3<i32>(34736i, u_input.a, -1677i)), -vec3<i32>(4560i, 2147483647i, 9070i)));
    return ~var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<u32>(firstLeadingBit(69023u), ~17546u, func_1(Struct_1(vec3<f32>(-1669f, -642f, 1303f)), -805f), 1u / 94997u), countOneBits(vec4<u32>(1u, 34634u, 71128u, 4294967295u)), any(!vec2<bool>(true, false))) - firstLeadingBit(max(vec4<u32>(59829u, 50528u, 14869u, 20963u), vec4<u32>(1u, 4294967295u, 44384u, 1u)) << ~vec4<u32>(1u, 33414u, 0u, 40934u)), 148f + -341f, vec3<i32>(countOneBits(~(-u_input.a)), -21314i, -(-2147483647i) >> clamp(8573u >> 3146u, abs(323u), 4294967295u & 14965u)));
}

