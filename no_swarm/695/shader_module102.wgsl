// {"0:0":[185,137,234,47,188,185,234,126,245,227,255,95,191,158,81,88]}
// Seed: 10556688229258347812

struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: vec4<i32>, arg_1: vec2<i32>) -> i32 {
    var var_0 = countOneBits(arg_0.x);
    let var_1 = any(vec3<bool>(true, any(!(!vec3<bool>(false, true, true))), !any(!vec2<bool>(true, true))));
    var_0 = u_input.a.x;
    let var_2 = vec2<i32>(2147483647i, -7641i - -9791i);
    let var_3 = false;
    return countOneBits(dot((-var_2 | select(arg_0.xz, vec2<i32>(0i, 23365i), false)) | vec2<i32>(~arg_1.x, abs(2147483647i)), ~(-u_input.a.xy)));
}

fn func_2(arg_0: vec2<u32>) -> vec3<bool> {
    let var_0 = -u_input.a.x;
    var var_1 = Struct_1(vec4<i32>(-func_3(u_input.a % vec4<i32>(588i, u_input.a.x, u_input.a.x, var_0), vec2<i32>(u_input.a.x, var_0)), ((0i * u_input.a.x) - -u_input.a.x) * var_0, var_0, max(u_input.a.x, i32(-2147483648))), select(-(-(vec4<f32>(-873f, 1000f, 1682f, -293f) / vec4<f32>(1577f, -408f, -885f, 278f))), -vec4<f32>(-408f * -1038f, 238f, -700f / 1259f, -2354f), select(select(!vec4<bool>(false, false, true, true), !vec4<bool>(true, false, false, false), !vec4<bool>(false, true, true, false)), select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), true), arg_0.x > 21558u), false)));
    let var_2 = !(!(!(!vec3<bool>(true, false, true))));
    var var_3 = -21676i;
    let var_4 = (arg_0.x << 0u) - dot(reverseBits(~(~vec4<u32>(4294967295u, arg_0.x, arg_0.x, 0u))), ~(~vec4<u32>(arg_0.x, 7015u, arg_0.x, arg_0.x) << vec4<u32>(35428u, 1u, 32855u, 0u)));
    return var_2;
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = vec2<i32>((-1i | arg_0.a.x) % (-5511i & (u_input.a.x ^ (arg_0.a.x << 2438u))), ~u_input.a.x);
    let var_1 = !(!(!(arg_0.a.x != arg_0.a.x))) & all(select(select(!vec3<bool>(false, true, false), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true), false), vec3<bool>(true, false, true), select(!vec3<bool>(false, false, true), vec3<bool>(false, false, false), func_2(vec2<u32>(0u, 90291u)))));
    var_0 = vec2<i32>(clamp(firstLeadingBit(dot(abs(vec4<i32>(-1i, -1205i, var_0.x, arg_0.a.x)), arg_0.a & vec4<i32>(var_0.x, u_input.a.x, var_0.x, arg_0.a.x))), var_0.x, -(~(-1i))), ((1147i | -1i) << (dot(vec2<u32>(5234u, 1u), vec2<u32>(3599u, 33840u)) * (1u ^ 0u))) >> ~4294967295u);
    var_0 = vec2<i32>(~(-firstLeadingBit(-1i)), ~(-1i)) % u_input.a.zz;
    let var_2 = -arg_0.b.xxy;
    return step(trunc(-(-arg_0.b.x) - max(-(-1281f), var_2.x / var_2.x)), step(-(-(-1000f)), -(-612f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = exp2(func_1(Struct_1(vec4<i32>(u_input.a.x, 43i, dot(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -30844i), vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, u_input.a.x)), u_input.a.x), (vec4<f32>(484f, 1067f, 1403f, 244f) - vec4<f32>(-1098f, 1155f, 1301f, -1941f)) * trunc(vec4<f32>(611f, -1000f, -1000f, 110f)))));
    let var_1 = ~clamp(~(~(~vec3<u32>(0u, 38026u, 4294967295u))), firstLeadingBit(vec3<u32>(4294967295u + 0u, 1u << 31326u, 1813u << 115920u)), vec3<u32>(~abs(3434u), ~(15499u << 9482u), ~(77647u + 0u)));
    var var_2 = ~(~vec4<u32>(countOneBits(33923u), clamp(4294967295u, 39014u, 36701u), ~var_1.x, abs(var_1.x))) % vec4<u32>(var_1.x, ~var_1.x, 0u, ~(~57488u) & (var_1.x + dot(vec2<u32>(51822u, 0u), vec2<u32>(57806u, var_1.x))));
    var var_3 = !vec4<bool>(false, !true, !all(func_2(var_1.xz).xy), false);
    var var_4 = clamp(abs(vec4<i32>(~9583i, firstLeadingBit(u_input.a.x) | ~1i, 1i, u_input.a.x)), vec4<i32>(-u_input.a.x, dot(u_input.a.xw, -(u_input.a.zx - vec2<i32>(u_input.a.x, 2147483647i))), select(~(u_input.a.x / -21713i), -85138i % func_3(vec4<i32>(1i, u_input.a.x, u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x)), false), 37313i), vec4<i32>(-86558i, reverseBits(firstLeadingBit(dot(u_input.a.zw, u_input.a.ww))), firstTrailingBit(-5568i - -33797i) << var_2.x, u_input.a.x));
    var var_5 = Struct_1(vec4<i32>(var_4.x, u_input.a.x, dot(~(-u_input.a.yz), firstTrailingBit(vec2<i32>(u_input.a.x, var_4.x)) << (var_2.wx ^ vec2<u32>(19620u, 1467u))), -(-8857i)), vec4<f32>(max(var_0, floor(var_0)), -(var_0 + -1000f) + (-var_0 + var_0), step(-1461f - -519f, -var_0), round(var_0 + var_0)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_0 * select(var_5.b.x, -434f, false & var_3.x), abs(-trunc(254f))), var_2.x, (var_2.x << ~(~var_2.x)) % 0u, var_5.b.x * exp2(var_0), -1647f);
}

