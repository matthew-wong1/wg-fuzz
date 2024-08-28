// {"0:0":[202,0,184,148,43,26,83,219]}
// Seed: 12262982288913989028

struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3() -> bool {
    var var_0 = vec4<i32>(~(~firstLeadingBit(i32(-2147483648)) >> u_input.a.x), dot(vec3<i32>(select(reverseBits(1i), -1i & 2147483647i, !false), dot(-vec2<i32>(10099i, 0i), countOneBits(vec2<i32>(41707i, 11401i))), select(2147483647i, 0i, !false)), -vec3<i32>(-1i, -28496i, select(-1i, -26148i, false))), dot(~firstLeadingBit(countOneBits(vec3<i32>(21672i, -56286i, 2147483647i))), vec3<i32>(dot(vec2<i32>(3893i, 0i), vec2<i32>(20022i, 22418i)), 35631i, 0i) ^ (select(vec3<i32>(-41029i, 0i, 2147483647i), vec3<i32>(1i, -27678i, 0i), true) % vec3<i32>(2147483647i, -4456i, 5534i))), 1i);
    var_0 = -(vec4<i32>(countOneBits(var_0.x), -var_0.x, 14458i, 1i) | abs(vec4<i32>(var_0.x, 1i, 1i, -24203i) & -vec4<i32>(i32(-2147483648), var_0.x, -1i, var_0.x)));
    var_0 = countOneBits(vec4<i32>(~(-18919i), abs(0i), 26788i & var_0.x, var_0.x));
    var_0 = vec4<i32>(firstTrailingBit(~(-(-71610i))), dot(vec3<i32>(i32(-2147483648), -countOneBits(10022i), dot(vec4<i32>(var_0.x, var_0.x, -61120i, 2147483647i), -vec4<i32>(i32(-2147483648), -40018i, -36350i, var_0.x))), countOneBits(clamp(~vec3<i32>(-6473i, i32(-2147483648), 1i), var_0.yxy, vec3<i32>(-32042i, 13552i, var_0.x)))), -var_0.x | dot(-min(var_0.wxx, var_0.yxx), var_0.wwz), i32(-2147483648));
    var_0 = vec4<i32>(-(-6044i), ~var_0.x, 2147483647i, var_0.x);
    return !select(false, any(vec2<bool>(!true, 342f == -359f)), (min(u_input.a.x, 1u) | u_input.a.x) > ((44669u - 33234u) / reverseBits(4294967295u)));
}

fn func_2(arg_0: Struct_5, arg_1: f32, arg_2: f32) -> f32 {
    var var_0 = arg_0.a;
    let var_1 = vec2<bool>(any(select(vec3<bool>(arg_0.a.a, arg_0.a.a, true), vec3<bool>(arg_0.a.a, arg_0.a.a, false), select(vec3<bool>(var_0.a, arg_0.a.a, true), vec3<bool>(true, true, true), vec3<bool>(true, false, arg_0.a.a)))) | var_0.a, any(!(!(!vec3<bool>(arg_0.a.a, false, true)))));
    var var_2 = Struct_1(func_3(), var_0.b, min(4294967295u, dot(countOneBits(vec3<u32>(arg_0.a.d, u_input.a.x, 0u)), ~vec3<u32>(1u, 89794u, var_0.c))) >> ~(~(~4294967295u)), 2618u);
    var_2 = Struct_1(all(select(select(!vec4<bool>(false, var_1.x, false, true), select(vec4<bool>(true, var_1.x, var_0.a, var_0.a), vec4<bool>(arg_0.a.a, false, true, var_2.a), var_0.a), vec4<bool>(true, false, true, arg_0.a.a)), select(select(vec4<bool>(var_0.a, true, false, var_0.a), vec4<bool>(arg_0.a.a, arg_0.a.a, true, false), var_2.a), !vec4<bool>(true, false, var_2.a, true), var_2.a), select(!vec4<bool>(false, var_1.x, false, true), !vec4<bool>(false, false, false, var_1.x), !vec4<bool>(true, arg_0.a.a, arg_0.a.a, arg_0.a.a)))), vec4<i32>(arg_0.a.b.x, -(-dot(var_2.b.xz, vec2<i32>(44325i, -26667i))), min((arg_0.a.b.x << 0u) * abs(3244i), i32(-2147483648)), 1i), ~(arg_0.a.c << firstLeadingBit(~var_2.d)), var_0.d);
    let var_3 = arg_0;
    return arg_2;
}

fn func_1(arg_0: vec3<i32>, arg_1: f32, arg_2: vec3<i32>, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = firstTrailingBit(select(arg_0, (-arg_3.wyz * vec3<i32>(arg_0.x, 4173i, 16649i)) + max(-arg_2, arg_3.wyy), any(vec2<bool>(any(vec2<bool>(false, true)), 160f != -976f))));
    var var_1 = vec4<f32>(-775f, sign(-(arg_1 - -2296f)), -(-abs(arg_1)), -(-(776f - 345f)));
    let var_2 = Struct_1(true, ~vec4<i32>(select(var_0.x, arg_0.x, false) & (var_0.x >> 45149u), -dot(arg_3.xy, var_0.xz), -(~arg_2.x), select(arg_2.x >> u_input.a.x, 62078i, false)), countOneBits(u_input.a.x / (~1u * ~30784u)), ~(~u_input.a.x & 4294967295u));
    var_1 = vec4<f32>(select(step(func_2(Struct_5(var_2, -1022f), arg_1, arg_1), -arg_1), var_1.x, any(!vec4<bool>(false, true, false, var_2.a))) * -arg_1, var_1.x, var_1.x, select(-583f, select(-303f, 620f, !(true || var_2.a)), !any(select(vec4<bool>(false, var_2.a, var_2.a, false), vec4<bool>(var_2.a, var_2.a, var_2.a, false), vec4<bool>(var_2.a, var_2.a, var_2.a, var_2.a)))));
    return Struct_1(all(vec2<bool>(true, !var_2.a)), vec4<i32>(var_0.x, dot(vec4<i32>(var_2.b.x, 21520i, arg_0.x, 31414i), arg_3), var_0.x, (arg_2.x >> u_input.a.x) % -47872i) ^ -var_2.b, countOneBits(u_input.a.x), 18761u * reverseBits(var_2.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(Struct_2(~u_input.a.x, func_1(firstLeadingBit(vec3<i32>(i32(-2147483648), 33809i, 0i)), 545f, (vec3<i32>(8618i, 6487i, 26295i) / vec3<i32>(-1i, 43019i, 1i)) / (vec3<i32>(20373i, 24636i, -24939i) & vec3<i32>(i32(-2147483648), i32(-2147483648), -58446i)), ~vec4<i32>(-2349i, -32027i, -55483i, 1i)), func_1(~vec3<i32>(1i, 2147483647i, -9264i), 747f, vec3<i32>(-1i, -1i, 0i - -1i), -vec4<i32>(0i, i32(-2147483648), 16819i, -43951i)), Struct_1(82046u <= u_input.a.x, -select(vec4<i32>(0i, 0i, 12033i, 43156i), vec4<i32>(-1i, 2147483647i, -11637i, 1i), vec4<bool>(false, true, false, true)), u_input.a.x ^ ~u_input.a.x, ~u_input.a.x & clamp(u_input.a.x, u_input.a.x, u_input.a.x))), !select(!(!vec2<bool>(false, true)), select(vec2<bool>(true, false), !vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), false)), true));
    let var_1 = var_0.a.b.b;
    var var_2 = -min(min(dot(vec3<i32>(-1i, var_0.a.d.b.x, 11700i), vec3<i32>(23805i, var_1.x, -4707i)), var_1.x - var_0.a.b.b.x), var_0.a.d.b.x << (24232u % 4294967295u)) > var_1.x;
    var_0 = Struct_4(Struct_2((~var_0.a.b.d ^ (var_0.a.a % u_input.a.x)) >> ~(~var_0.a.c.d), Struct_1(all(vec3<bool>(var_0.b.x, true, var_0.b.x)) && var_0.b.x, var_0.a.d.b, ~u_input.a.x, ~(var_0.a.a / u_input.a.x)), func_1(firstLeadingBit(~var_1.yyy), abs(1513f) * (-234f - -353f), vec3<i32>(var_0.a.d.b.x * 5699i, 2854i, 17151i + var_0.a.d.b.x), ~vec4<i32>(i32(-2147483648), var_0.a.c.b.x, -1i, 54724i)), func_1(-vec3<i32>(7060i, var_1.x, 0i), 759f / 920f, vec3<i32>(var_0.a.c.b.x, firstLeadingBit(-33546i), func_1(vec3<i32>(var_1.x, 0i, var_0.a.b.b.x), -1000f, var_0.a.d.b.wyz, vec4<i32>(var_0.a.d.b.x, 2147483647i, -1i, var_0.a.b.b.x)).b.x), vec4<i32>(firstTrailingBit(var_1.x), -10514i, abs(-15237i), 0i))), var_0.b);
    var_0 = Struct_4(var_0.a, vec2<bool>(var_0.a.b.a, any(select(!vec3<bool>(var_0.a.b.a, var_0.b.x, true), !vec3<bool>(var_0.a.d.a, false, var_0.b.x), select(vec3<bool>(var_0.b.x, true, var_0.b.x), vec3<bool>(var_0.b.x, var_0.a.c.a, var_0.b.x), var_0.b.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.d.c);
}

