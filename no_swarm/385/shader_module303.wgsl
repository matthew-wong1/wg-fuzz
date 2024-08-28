// {"0:0":[70,251,234,6,29,243,71,16,118,189,88,1,254,115,160,77]}
// Seed: 16561425477782652537

struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec4<i32>,
    d: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: vec3<u32>) -> vec2<bool> {
    let var_0 = select(vec3<f32>(-394f, -2730f, -(-496f + -1336f)), vec3<f32>(-104f, 550f, (-211f / 1405f) * floor(-1359f)), false) * -(select(sign(vec3<f32>(-492f, -712f, 609f)), floor(vec3<f32>(342f, -1000f, -754f)), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true)) * -max(vec3<f32>(-908f, -349f, -1000f), vec3<f32>(-202f, 884f, -1000f)));
    let var_1 = Struct_3(Struct_2(Struct_1(abs(vec3<i32>(u_input.c, u_input.c, u_input.c)))), ~max(7432u, arg_0.x), -vec4<i32>(select(u_input.c, u_input.c, any(vec2<bool>(true, false))), -10105i, u_input.c, u_input.c), !(!(!(!vec4<bool>(false, false, true, true)))));
    let var_2 = var_1.a.a;
    var var_3 = vec2<u32>(22066u, var_1.b);
    var var_4 = var_2;
    return select(vec2<bool>(var_1.d.x, all(vec4<bool>(false, var_1.d.x, false, true)) & any(!var_1.d.zy)), !var_1.d.zx, var_1.d.yx);
}

fn func_2() -> f32 {
    let var_0 = -922f * -1654f;
    var var_1 = firstTrailingBit(vec4<u32>(clamp(~u_input.a.x, ~4294967295u, ~8321u) * (select(4294967295u, 0u, true) ^ reverseBits(50055u)), u_input.a.x, select(u_input.a.x, firstTrailingBit(u_input.b), !true), u_input.a.x));
    var var_2 = select(select(select(!func_3(var_1.wwz), func_3(vec3<u32>(var_1.x, var_1.x, var_1.x)), false | false), vec2<bool>(false, false), !func_3(vec3<u32>(u_input.b, 1u, 62233u))), vec2<bool>(-2147483647i >= (u_input.c + (u_input.c + u_input.c)), -(-2648i) <= ~u_input.c), true);
    var_1 = ~((~(~vec4<u32>(19292u, u_input.b, var_1.x, 5940u)) ^ firstTrailingBit(vec4<u32>(1u, u_input.a.x, var_1.x, 4294967295u) >> vec4<u32>(1u, 4294967295u, u_input.a.x, 41917u))) / vec4<u32>(u_input.a.x, dot(var_1.wx, vec2<u32>(var_1.x, 1u)) & (u_input.a.x + 47148u), ~(~var_1.x), var_1.x));
    var_1 = abs(vec4<u32>(var_1.x, 79914u / var_1.x, ~var_1.x / firstLeadingBit(1u - 0u), var_1.x / u_input.b));
    return max(step(select(floor(2399f), max(2579f, -1649f), false), var_0 / 474f) + -(-(-1760f)), round((var_0 * -var_0) - round(581f - -507f)));
}

fn func_1() -> Struct_1 {
    let var_0 = vec4<f32>(-max(1410f, -588f - -196f), 882f / 1000f, max(func_2(), -1000f), abs(1205f));
    let var_1 = Struct_4(Struct_1(firstTrailingBit(countOneBits(vec3<i32>(1i, i32(-2147483648), u_input.c)) + -vec3<i32>(u_input.c, -61246i, -25672i))), var_0);
    var var_2 = exp2(var_0);
    let var_3 = Struct_3(Struct_2(Struct_1(vec3<i32>(firstTrailingBit(-54319i), var_1.a.a.x & 2147483647i, select(1i, 0i, true)))), min(clamp(select(u_input.a.x, u_input.a.x, false) % u_input.b, u_input.a.x, u_input.b), u_input.a.x), select(~(~vec4<i32>(2147483647i, -10432i, -1i, 2147483647i)) * max(vec4<i32>(0i, i32(-2147483648), 20749i, var_1.a.a.x) + vec4<i32>(2147483647i, 1i, u_input.c, var_1.a.a.x), reverseBits(vec4<i32>(var_1.a.a.x, -84182i, -16664i, -34649i))), select(firstLeadingBit(vec4<i32>(u_input.c, u_input.c, 0i, -14857i)), -(-vec4<i32>(1i, -1i, i32(-2147483648), 1i)), true), select(vec4<bool>(true | true, any(vec4<bool>(false, false, true, true)), -1i >= var_1.a.a.x, any(vec2<bool>(true, false))), vec4<bool>(var_1.a.a.x != var_1.a.a.x, !false, i32(-2147483648) > -84838i, false), !select(false, true, false))), !vec4<bool>(!false && select(false, true, true), !(!true), false, true));
    let var_4 = var_1;
    return var_1.a;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = func_1();
    var_0 = arg_2;
    var var_1 = arg_0;
    var var_2 = arg_0;
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(func_4(Struct_2(func_1()), u_input.a, func_1()), -(vec4<f32>(-(-1000f), step(-313f, -1766f), max(-362f, -385f), 1156f) * round(max(vec4<f32>(-107f, 1356f, -1000f, -395f), vec4<f32>(-563f, 1056f, 479f, -283f)))));
    var_0 = Struct_4(var_0.a, exp2((-vec4<f32>(-1167f, var_0.b.x, var_0.b.x, var_0.b.x) / vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, 1156f)) * -(-var_0.b)));
    var_0 = Struct_4(func_1(), var_0.b);
    let var_1 = !(!(!select(func_3(vec3<u32>(u_input.b, u_input.a.x, u_input.a.x)), !vec2<bool>(true, true), vec2<bool>(true, true))));
    var var_2 = Struct_2(func_4(Struct_2(var_0.a), ~vec2<u32>(u_input.b, ~u_input.a.x), var_0.a));
    let var_3 = u_input.a;
    var var_4 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(1u, var_2.a.a.yz ^ -vec2<i32>(1i ^ -1i, u_input.c), vec3<i32>((var_0.a.a.x ^ (64590i << 4294967295u)) >> (u_input.a.x + reverseBits(var_3.x)), var_2.a.a.x, u_input.c));
}

