// {"0:0":[229,20,52,147,247,91,33,109,172,104,88,108,165,251,42,180,166,198,98,124,207,226,65,99,122,227,181,121,172,26,45,201,53,81,127,172,143,176,52,75,240,207,32,27,242,191,69,88]}
// Seed: 7267016218649477058

struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = reverseBits(-vec2<i32>(select(-(-1i), 0i % 3701i, true), dot(vec2<i32>(-35164i, 10441i), vec2<i32>(i32(-2147483648), -1i))));
    let var_1 = countOneBits(~vec4<u32>(arg_0.x, 1u, 1u, arg_0.x));
    var var_2 = -(-vec2<f32>((174f * -1000f) - (-1992f / 128f), (550f / 1000f) * (-552f - -629f)));
    let var_3 = u_input.a.x;
    var var_4 = (firstTrailingBit(vec4<i32>(-38297i, 2147483647i * 1i, 17824i, var_0.x)) % vec4<i32>(~(-3767i), u_input.b.x, 2147483647i, 23560i)) - ~(~vec4<i32>(0i | var_0.x, i32(-2147483648), var_0.x, ~u_input.b.x));
    return Struct_1(var_2.x, (var_2.x - var_2.x) * var_2.x, all(select(select(!vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(any(vec4<bool>(true, true, true, true)), false), i32(-2147483648) > (var_0.x ^ -2975i))));
}

fn func_3(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = arg_1.x == (arg_1.x << u_input.a.x);
    var var_1 = Struct_1(arg_3.b, arg_0 + min(floor(-282f), sign(-arg_0)), arg_2.a);
    var var_2 = var_1.a;
    var_2 = -(-(-arg_0 * -(-985f * 1000f)));
    var var_3 = select(select(!vec3<bool>(true, arg_2.a, !arg_2.a), !select(vec3<bool>(true, true, arg_3.c), !vec3<bool>(arg_2.a, arg_2.a, arg_2.a), vec3<bool>(var_1.c, var_1.c, false)), false), select(select(!select(vec3<bool>(arg_3.c, arg_3.c, var_0), vec3<bool>(false, arg_3.c, var_0), vec3<bool>(false, true, true)), select(vec3<bool>(arg_2.b.c, arg_3.c, false), !vec3<bool>(var_1.c, var_0, true), var_0), !(!vec3<bool>(false, true, arg_2.b.c))), select(vec3<bool>(all(vec4<bool>(var_0, false, false, arg_3.c)), false, var_1.c), !vec3<bool>(arg_2.b.c, false, true), arg_0 > sign(-332f)), false & false), vec3<bool>(false, !false, true));
    return vec3<bool>(false, var_0 && true, var_0);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: bool) -> f32 {
    let var_0 = (vec2<u32>(~4294967295u, ~(0u - 0u)) & (vec2<u32>(abs(0u), 4294967295u) ^ select(reverseBits(arg_1.zz), ~u_input.a.xz, !vec2<bool>(false, arg_3)))) + reverseBits(~firstTrailingBit(countOneBits(vec2<u32>(u_input.a.x, arg_1.x))));
    var var_1 = u_input.c.x - dot(~min(vec3<i32>(u_input.b.x, -1i, u_input.b.x), u_input.b) * clamp(abs(u_input.b), arg_0.xyy, firstTrailingBit(vec3<i32>(u_input.b.x, u_input.b.x, u_input.c.x))), reverseBits(~arg_0.wwz));
    let var_2 = false;
    let var_3 = max(countOneBits(max(arg_0.xwy & vec3<i32>(arg_0.x, u_input.c.x, u_input.b.x), -vec3<i32>(i32(-2147483648), i32(-2147483648), 1i))) | ((select(u_input.b, vec3<i32>(u_input.c.x, u_input.b.x, arg_0.x), var_2) / arg_0.yyx) % arg_0.wzy), u_input.b);
    let var_4 = ~(~4144u);
    return arg_2.b.b;
}

fn func_2(arg_0: vec2<bool>) -> f32 {
    let var_0 = -func_4(firstLeadingBit(~vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.b.x) ^ countOneBits(vec4<i32>(u_input.c.x, 10435i, -26150i, u_input.c.x))), ~(vec3<u32>(u_input.a.x, 8175u, u_input.a.x) | u_input.a), Struct_2(arg_0.x, Struct_1(-146f * 170f, abs(530f), arg_0.x)), any(!func_3(-926f, vec2<i32>(1i, -1i), Struct_2(arg_0.x, Struct_1(2052f, -1000f, arg_0.x)), Struct_1(1000f, -130f, true))));
    var var_1 = sign(step(vec4<f32>(var_0 / var_0, var_0, -var_0 + (var_0 + var_0), var_0), vec4<f32>(var_0 + var_0, var_0, var_0, func_4(vec4<i32>(u_input.c.x, u_input.c.x, u_input.b.x, u_input.b.x), vec3<u32>(0u, 4294967295u, 4294967295u), Struct_2(arg_0.x, Struct_1(-211f, 923f, arg_0.x)), true)) - floor(min(vec4<f32>(var_0, -104f, var_0, var_0), vec4<f32>(1097f, -1000f, var_0, var_0)))));
    var_1 = sign(-vec4<f32>(var_0, 356f, var_0, -1073f) * -(vec4<f32>(var_0, 1506f, var_0, var_0) / vec4<f32>(3061f, var_1.x, var_1.x, 376f))) + (-sign(min(vec4<f32>(var_0, var_0, var_0, -1727f), vec4<f32>(-2179f, 656f, 308f, var_1.x))) - trunc(vec4<f32>(var_1.x, var_0, var_1.x, -1149f) / -vec4<f32>(-366f, var_1.x, var_1.x, 522f)));
    var var_2 = abs(u_input.a.x) - 18293u;
    var_1 = ((-(vec4<f32>(var_1.x, -765f, var_0, 374f) / vec4<f32>(246f, -654f, -803f, 580f)) * vec4<f32>(exp2(var_1.x), -238f, var_0, 824f / var_0)) / (-(-vec4<f32>(1347f, var_1.x, var_0, var_0)) / select(-vec4<f32>(var_0, -2104f, var_1.x, -1024f), vec4<f32>(var_0, 278f, var_0, var_1.x), !vec4<bool>(false, arg_0.x, arg_0.x, true)))) * abs(trunc(vec4<f32>(var_0, 972f + var_0, -1135f, 800f)));
    return var_1.x / var_0;
}

fn func_5(arg_0: Struct_2) -> StorageBuffer {
    let var_0 = ~u_input.a.zy << min(firstTrailingBit(firstTrailingBit(clamp(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(4294967295u, u_input.a.x), vec2<u32>(0u, u_input.a.x)))), abs(firstTrailingBit(u_input.a.zy)) * ~select(vec2<u32>(u_input.a.x, 1u), vec2<u32>(9242u, u_input.a.x), false));
    let var_1 = select(~clamp(vec3<i32>(-(-1i), abs(2147483647i), u_input.c.x), vec3<i32>(-9412i, u_input.c.x, -1i) >> u_input.a, u_input.b - select(u_input.b, u_input.b, vec3<bool>(true, arg_0.a, true))), u_input.b, !select(!func_3(1114f, u_input.b.yz, arg_0, arg_0.b), !(!vec3<bool>(false, arg_0.a, arg_0.a)), (-1i < -1i) & arg_0.a));
    var var_2 = arg_0;
    var_2 = arg_0;
    let var_3 = var_1.x;
    return StorageBuffer(vec2<i32>(u_input.c.x | reverseBits(-82456i), select(var_3 << min(14685u, 85033u), u_input.c.x, all(!vec3<bool>(false, arg_0.a, arg_0.b.c)))), step(vec2<f32>(arg_0.b.b, 738f), vec2<f32>(-418f, sign(-700f))) + vec2<f32>(var_2.b.a + -293f, -arg_0.b.b / func_4(vec4<i32>(var_1.x, 0i, -1i, var_1.x), u_input.a, arg_0, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(any(vec2<bool>(true, !(true & false))), !true);
    var_0 = vec2<bool>(false, all(!vec4<bool>(!false, var_0.x, !var_0.x, !true)));
    let var_1 = ~(u_input.a.x % (~u_input.a.x | ~0u));
    var_0 = vec2<bool>(all(select(select(select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, var_0.x, false), var_0.x), select(vec3<bool>(false, true, var_0.x), vec3<bool>(var_0.x, var_0.x, false), var_0.x), select(vec3<bool>(var_0.x, true, false), vec3<bool>(true, var_0.x, false), vec3<bool>(var_0.x, var_0.x, false))), vec3<bool>(false, false || var_0.x, 11456u >= u_input.a.x), var_0.x)), true);
    let var_2 = var_1;
    let var_3 = func_1(~u_input.a);
    let x = u_input.a;
    s_output = func_5(Struct_2(~(u_input.c.x + u_input.b.x) != (~1i % min(u_input.b.x, -1i)), Struct_1((-1000f / 552f) * floor(var_3.b), func_2(select(vec2<bool>(true, var_3.c), vec2<bool>(var_3.c, true), vec2<bool>(true, var_0.x))), !var_0.x)));
}

