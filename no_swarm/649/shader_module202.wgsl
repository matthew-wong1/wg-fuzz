// {"0:0":[6,183,98,93,232,85,115,148,188,207,87,175,60,121,28,14,233,82,253,132,233,185,158,188,254,36,144,84,210,71,230,163,90,19,72,34,150,20,57,191,9,183,192,58,89,204,125,157,80,44,212,37,161,121,193,225,121,80,124,203,186,136,172,179]}
// Seed: 10850398039921491324

struct Struct_1 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: Struct_2) -> vec2<bool> {
    let var_0 = vec3<f32>(-787f, -(-(-(-(-777f)))), -(-149f));
    let var_1 = vec4<i32>(u_input.a, firstLeadingBit(countOneBits(u_input.a) | reverseBits(11155i)), -(~max(u_input.a, -57844i << arg_0.a.x)), u_input.a);
    let var_2 = Struct_2(vec4<u32>(u_input.c, firstTrailingBit(abs(firstTrailingBit(u_input.b.x))), clamp(~(~1252u), dot(arg_0.a * vec4<u32>(35200u, arg_0.a.x, 4294967295u, 0u), vec4<u32>(74888u, arg_0.a.x, arg_0.a.x, 36721u)), ~u_input.c | countOneBits(59718u)), dot(~vec3<u32>(arg_0.a.x, arg_0.a.x, 104697u), vec3<u32>(firstTrailingBit(arg_0.a.x), ~u_input.d.x, ~u_input.b.x))));
    let var_3 = Struct_1(min(vec2<u32>(27503u, ~0u), ~var_2.a.xy) << vec2<u32>((arg_0.a.x << arg_0.a.x) * ~var_2.a.x, dot(vec3<u32>(arg_0.a.x, var_2.a.x, 1u), var_2.a.yzw)), ((-436f + (1311f / 581f)) * 366f) >= (-(-1809f) + select(var_0.x * var_0.x, var_0.x - var_0.x, false)));
    var var_4 = 21246u;
    return vec2<bool>(u_input.a > u_input.a, !all(!vec4<bool>(var_3.b, true, true, true)));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>) -> bool {
    let var_0 = -1765f;
    var var_1 = !arg_1.x;
    var var_2 = u_input.d;
    let var_3 = arg_0;
    var var_4 = arg_0;
    return false;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = select(select(vec3<bool>(!(!arg_0.b), !arg_0.b, arg_0.b), !(!vec3<bool>(arg_0.b, arg_0.b, arg_0.b)), !all(select(vec2<bool>(arg_0.b, true), vec2<bool>(arg_0.b, false), vec2<bool>(false, true)))), !(!(!(!vec3<bool>(arg_0.b, arg_0.b, true)))), func_4(Struct_2(firstLeadingBit(u_input.e)), select(select(!vec2<bool>(false, false), !vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(arg_0.b, true), arg_0.b)), func_3(Struct_2(u_input.e)), arg_0.b)));
    var var_1 = 31260i;
    let var_2 = -(-1270f);
    var var_3 = Struct_2(u_input.e);
    var var_4 = vec3<i32>(clamp(~arg_1.x, clamp(arg_1.x + select(-1i, u_input.a, false), arg_1.x, firstTrailingBit(i32(-2147483648) + u_input.a)), -(-19222i)), arg_1.x, ~firstTrailingBit(-u_input.a - min(u_input.a, u_input.a)));
    return Struct_1(select(~select(u_input.d.xx, u_input.b, vec2<bool>(arg_0.b, var_0.x)) + countOneBits(arg_0.a), var_3.a.yx & u_input.d.zy, vec2<bool>(select(!var_0.x, 0u > 87796u, var_0.x), any(select(vec2<bool>(true, true), var_0.xy, true)))), false);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> bool {
    var var_0 = vec4<bool>(arg_0.b, arg_0.b, (u_input.a + ~(u_input.a / u_input.a)) > dot(vec3<i32>(-1i, 5175i, arg_2) * vec3<i32>(arg_2, arg_2, 0i), vec3<i32>(dot(vec3<i32>(i32(-2147483648), arg_2, i32(-2147483648)), vec3<i32>(0i, u_input.a, -24924i)), i32(-2147483648), abs(arg_2))), any(select(!select(vec3<bool>(false, arg_1.b, arg_1.b), vec3<bool>(false, arg_1.b, arg_1.b), arg_1.b), select(!vec3<bool>(arg_1.b, arg_0.b, arg_0.b), select(vec3<bool>(true, true, arg_1.b), vec3<bool>(true, false, arg_1.b), vec3<bool>(arg_0.b, false, false)), true), !(!vec3<bool>(arg_0.b, arg_1.b, arg_0.b)))));
    let var_1 = Struct_2(vec4<u32>(~u_input.c, dot(u_input.e, clamp(vec4<u32>(u_input.e.x, 15395u, arg_1.a.x, arg_1.a.x) & u_input.e, ~vec4<u32>(0u, arg_1.a.x, u_input.e.x, 27143u), max(vec4<u32>(arg_1.a.x, arg_0.a.x, 73973u, 1u), u_input.e))), 4294967295u, ~0u));
    let var_2 = firstLeadingBit(var_1.a.xwz);
    var_0 = vec4<bool>(var_0.x, all(!vec3<bool>(arg_0.b, var_0.x, arg_0.b)), all(var_0.xzy), !any(var_0.wzy) || !true);
    var_0 = select(!(!vec4<bool>(all(vec4<bool>(arg_0.b, var_0.x, arg_0.b, true)), false, arg_1.b, arg_0.b)), vec4<bool>(false, true, ~(-37937i) > (u_input.a >> 0u), all(select(var_0.xx, vec2<bool>(false, true), var_0.yy)) | ((arg_0.b && true) && func_3(var_1).x)), !(!vec4<bool>(any(var_0.xz), all(vec2<bool>(arg_0.b, true)), func_3(var_1).x, any(vec4<bool>(arg_1.b, false, arg_1.b, false)))));
    return u_input.a <= u_input.a;
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = u_input.a;
    var_0 = i32(-2147483648);
    var var_1 = select(select(!vec4<bool>(any(arg_0), all(vec4<bool>(false, arg_0.x, true, arg_0.x)), !true, !arg_0.x), !(!select(vec4<bool>(arg_0.x, arg_0.x, true, false), vec4<bool>(false, arg_0.x, true, arg_0.x), vec4<bool>(true, false, arg_0.x, true))), all(vec4<bool>(arg_0.x, true, arg_0.x, 524f != 729f))), select(!select(vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), !vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), 1592f >= -1519f), vec4<bool>(func_5(func_2(Struct_1(vec2<u32>(4294967295u, 1u), arg_0.x), vec3<i32>(1i, u_input.a, 2147483647i)), Struct_1(vec2<u32>(4294967295u, 1u), true), 40994i * -20705i), arg_0.x, ~1u >= (0u / 4294967295u), arg_0.x || true), vec4<bool>(false, any(func_3(Struct_2(vec4<u32>(1u, u_input.b.x, 1u, 1u)))), sign(1417f) == -276f, arg_0.x)), !select(select(vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), select(vec4<bool>(false, true, arg_0.x, arg_0.x), vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), true), arg_0.x), vec4<bool>(!arg_0.x, any(vec2<bool>(arg_0.x, arg_0.x)), all(vec3<bool>(false, arg_0.x, arg_0.x)), false | arg_0.x), arg_0.x));
    let var_2 = Struct_2(vec4<u32>(select((u_input.d.x % u_input.e.x) << u_input.c, u_input.d.x, !arg_0.x), ~firstTrailingBit(u_input.e.x + u_input.b.x), ~u_input.d.x, u_input.b.x));
    let var_3 = !any(select(vec3<bool>(var_1.x, var_1.x, false), var_1.zwx, var_1.x));
    return func_2(func_2(func_2(Struct_1(abs(vec2<u32>(u_input.d.x, var_2.a.x)), var_3), -min(vec3<i32>(u_input.a, i32(-2147483648), -1i), vec3<i32>(13892i, 2147483647i, 2147483647i))), vec3<i32>(u_input.a / (u_input.a - u_input.a), u_input.a % reverseBits(u_input.a), u_input.a)), vec3<i32>(abs(u_input.a) << (u_input.e.x + 1u), u_input.a, u_input.a & -14536i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(!(-(-1i) > -35238i) || (59371u <= u_input.d.x), !(35362u >= (4294967295u / u_input.d.x)) && !((1u - u_input.c) < (1u + u_input.c)), (~u_input.d.x + min(dot(vec3<u32>(u_input.b.x, 4294967295u, 1u), u_input.d), 60854u)) > dot(u_input.e.xw, u_input.e.xx), !false);
    let var_1 = 1165f;
    var var_2 = func_1(vec2<bool>((-2174f > (var_1 + var_1)) & !(!false), true || !(-1000f == -1000f)));
    let var_3 = 0u;
    var var_4 = !select(!vec4<bool>(var_2.b || var_2.b, var_2.b | false, true, !var_2.b), !(!vec4<bool>(var_0.x, true, var_0.x, false)), select(all(select(var_0.xzx, vec3<bool>(var_2.b, false, var_0.x), true)), !func_4(Struct_2(u_input.e), vec2<bool>(var_0.x, var_0.x)), true));
    var var_5 = Struct_2(~(max(vec4<u32>(4294967295u, 13122u, var_2.a.x, 1u) * vec4<u32>(var_2.a.x, 0u, var_3, u_input.b.x), ~u_input.e) - vec4<u32>(~u_input.d.x, ~1u, ~0u, 4294967295u)));
    var_0 = !(!vec4<bool>(true, !(var_4.x & var_0.x), false, var_4.x));
    let x = u_input.a;
    s_output = StorageBuffer(-(~(~vec4<i32>(29960i, 12465i, 41742i, 0i)) * max(vec4<i32>(u_input.a, -1479i, u_input.a, -49322i), vec4<i32>(1i, u_input.a, 2147483647i, u_input.a) - vec4<i32>(u_input.a, 48993i, -1410i, -2514i))), -(-228f));
}

