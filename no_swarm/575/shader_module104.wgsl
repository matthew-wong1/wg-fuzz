// {"0:0":[68,182,188,14,212,150,34,6,172,230,82,176,174,12,192,78]}
// Seed: 5871536541914522730

struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec2<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_1(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: u32) -> vec2<i32> {
    var var_0 = !(!true);
    var_0 = any(arg_1.zz);
    let var_1 = -(-(arg_0.x * abs(-2444f)));
    var var_2 = ~(~71550u & ~arg_2) / (0u >> arg_2);
    let var_3 = u_input.b - ~u_input.a.x;
    return u_input.a.yz;
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = Struct_2((vec4<u32>(4294967295u >> 1u, 4294967295u, 47703u, 9555u | 17746u) * abs(vec4<u32>(1u, 0u, 1u, 0u))) % vec4<u32>(~max(13417u, 1u), ~39155u, ~(~1u), 1u), arg_1, min(firstTrailingBit(vec2<i32>(~(-1i), 2147483647i & i32(-2147483648))), u_input.a.zx));
    let var_1 = vec3<f32>(180f, select(var_0.b.c.x, -734f, !(clamp(var_0.a.x, var_0.a.x, var_0.a.x) != 1u)), 301f);
    let var_2 = !var_0.b.a.x & !(!any(!vec3<bool>(false, true, arg_1.a.x)));
    let var_3 = -(-vec2<f32>(arg_0.x, trunc(-1181f - var_0.b.c.x)));
    let var_4 = -(ceil(531f / var_0.b.c.x) / -1786f) + min(arg_1.c.x, abs(arg_1.c.x));
    return ~(-(vec4<i32>(~var_0.c.x, abs(-26072i), -u_input.b, dot(var_0.c, u_input.a.zz)) | vec4<i32>(-1i, 0i, dot(vec4<i32>(5778i, 1i, var_0.c.x, arg_1.b), vec4<i32>(1i, 0i, 2147483647i, 23591i)), i32(-2147483648))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_1) -> vec4<i32> {
    return ~(-(-vec4<i32>(u_input.a.x, arg_1.a.b, i32(-2147483648), 0i) + func_3(vec4<f32>(arg_2.c.x, -1319f, 1000f, arg_2.c.x), Struct_1(arg_2.a, u_input.b, vec3<f32>(arg_0.c.x, 198f, -1000f)))) << vec4<u32>(15019u, firstLeadingBit(38589u - 23436u), dot(arg_1.c, select(vec2<u32>(arg_1.c.x, 1u), vec2<u32>(arg_1.d.a.x, arg_1.c.x), arg_1.b)), ~reverseBits(68070u)));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: f32) -> f32 {
    let var_0 = dot(vec4<i32>(countOneBits(arg_2.x * -72449i), ~firstTrailingBit(arg_1.b.b), u_input.a.x, -22300i) ^ -(abs(vec4<i32>(arg_1.b.b, 11307i, 17684i, 1i)) << abs(arg_1.a)), abs(vec4<i32>((-2002i ^ 2147483647i) << ~arg_0.x, ~arg_1.b.b, countOneBits(firstLeadingBit(12435i)), arg_2.x)));
    let var_1 = 20249i;
    var var_2 = arg_1;
    var var_3 = 4294967295u > ((~67433u | ~arg_0.x) & 0u);
    var_2 = arg_1;
    return round(arg_1.b.c.x) - arg_1.b.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(min(1472f, func_4(firstTrailingBit(~vec3<u32>(0u, 0u, 1u)), Struct_2(~vec4<u32>(43933u, 4700u, 64066u, 0u), Struct_1(vec2<bool>(true, false), 0i, vec3<f32>(658f, -192f, 2462f)), func_1(vec4<f32>(448f, 1449f, 756f, 287f), vec4<bool>(true, true, false, false), 10006u)), abs(func_2(Struct_1(vec2<bool>(false, false), -44535i, vec3<f32>(-572f, -1209f, -472f)), Struct_3(Struct_1(vec2<bool>(true, true), u_input.a.x, vec3<f32>(-546f, -523f, 909f)), vec2<bool>(false, true), vec2<u32>(1u, 7801u), Struct_2(vec4<u32>(23056u, 105260u, 0u, 11160u), Struct_1(vec2<bool>(true, true), u_input.a.x, vec3<f32>(317f, 1639f, -654f)), vec2<i32>(u_input.a.x, -37526i))), Struct_1(vec2<bool>(false, true), u_input.b, vec3<f32>(1760f, -928f, -115f)))), sign(-(-367f)))), -(-1330f) * (((-1095f + -1626f) + -1000f) / 218f), -(-(-(1000f / 840f))), ceil(948f * (-1000f + 653f)) - (-1015f * abs(-129f)));
    var var_1 = Struct_2(~(~vec4<u32>(109394u, 1u, 88451u, 1u) - firstLeadingBit(~vec4<u32>(16447u, 67009u, 0u, 4294967295u))), Struct_1(select(vec2<bool>(false, any(vec4<bool>(false, false, false, true))), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), !vec2<bool>(true, true), vec2<bool>(true, true)), !select(vec2<bool>(true, false), vec2<bool>(false, true), false)), -firstLeadingBit(u_input.a.x) | -53638i, vec3<f32>(var_0.x + -2287f, -var_0.x + -620f, var_0.x)), u_input.a.yz);
    let var_2 = var_1.b;
    let var_3 = -var_0.x * (-813f + var_0.x);
    var var_4 = 37326u;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.x, -((var_0.zw + -var_2.c.xz) * (-vec2<f32>(var_0.x, var_2.c.x) + -var_2.c.yz)));
}

