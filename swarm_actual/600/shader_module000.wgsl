// {"0:0":[175,218,198,149,249,211,22,45]}
// Seed: 15607089889987271739

struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3() -> vec3<u32> {
    var var_0 = Struct_3(Struct_1(any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), 4294967295u <= 1u)), abs(firstTrailingBit(~vec3<u32>(36395u, 35427u, 1u))), ~abs(clamp(u_input.a.x, u_input.a.x, u_input.a.x))));
    let var_1 = -(floor(ceil(598f) - step(836f, -1697f)) * round(abs(-1674f) - 186f));
    var_0 = Struct_3(var_0.a);
    var var_2 = Struct_3(Struct_1(!var_0.a.a, vec3<u32>(var_0.a.b.x, ~(var_0.a.b.x >> var_0.a.b.x), ~(~42856u)), ((9021i ^ 0i) ^ dot(vec4<i32>(var_0.a.c, u_input.a.x, 43803i, var_0.a.c), vec4<i32>(var_0.a.c, var_0.a.c, var_0.a.c, -13382i))) >> firstLeadingBit(max(var_0.a.b.x, var_0.a.b.x))));
    let var_3 = vec4<u32>(var_0.a.b.x, 38463u, abs(var_2.a.b.x), ~firstLeadingBit(4294967295u * var_2.a.b.x) ^ select(23037u, var_0.a.b.x, var_2.a.a != (var_1 > 569f)));
    return var_2.a.b;
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    let var_0 = vec3<f32>(floor(-148f), -min(-887f * 1031f, -(-698f)) - -max(553f * -1000f, arg_0.b.x), sign(select(-arg_0.b.x * arg_0.b.x, arg_0.b.x, (arg_0.a.a && true) || !true)));
    return Struct_1(any(vec4<bool>(arg_0.c.a, !true | !arg_0.a.a, any(vec4<bool>(arg_0.a.a, arg_0.a.a, arg_0.c.a, false)), all(select(vec4<bool>(true, true, true, false), vec4<bool>(arg_0.a.a, arg_0.a.a, true, true), arg_0.a.a)))), abs(~func_3()), arg_0.a.c);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool, arg_3: u32) -> i32 {
    let var_0 = func_2(arg_0);
    let var_1 = var_0;
    var var_2 = abs((arg_3 >> (61750u / 99675u)) & arg_0.a.b.x) / (~(~(~37677u)) % firstLeadingBit(dot(vec4<u32>(var_1.b.x, 1u, var_0.b.x, arg_1.b.x) << vec4<u32>(0u, 1u, 1u, 23461u), select(vec4<u32>(var_0.b.x, 1u, arg_3, 0u), vec4<u32>(arg_0.a.b.x, 4294967295u, 37294u, var_0.b.x), true))));
    let var_3 = var_1;
    var var_4 = -((arg_0.c.c + -23858i) ^ var_1.c);
    return var_3.c;
}

fn func_1() -> bool {
    var var_0 = ~vec4<i32>(i32(-2147483648), 0i, func_4(Struct_2(Struct_1(false, vec3<u32>(1u, 1u, 1u), i32(-2147483648)), vec4<f32>(242f, 674f, -223f, -851f), Struct_1(true, vec3<u32>(1u, 4294967295u, 1u), u_input.a.x)), func_2(Struct_2(Struct_1(false, vec3<u32>(1u, 0u, 28629u), u_input.a.x), vec4<f32>(1000f, 243f, -238f, -515f), Struct_1(true, vec3<u32>(30402u, 6585u, 4982u), u_input.a.x))), 16223u >= 20089u, 4294967295u - 4294967295u) % u_input.a.x, ~(~u_input.a.x));
    let var_1 = Struct_3(Struct_1(!select(all(vec3<bool>(true, false, true)), !false, -588f >= -138f), select(firstLeadingBit(vec3<u32>(20688u, 0u, 83233u) + vec3<u32>(0u, 16605u, 5150u)), ~firstLeadingBit(vec3<u32>(0u, 5625u, 80377u)), !select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false)), u_input.a.x));
    let var_2 = var_1.a;
    var var_3 = var_1;
    let var_4 = select(trunc(-(-vec3<f32>(1108f, -1221f, 385f))) * (exp2(vec3<f32>(-1196f, -1000f, 275f)) * vec3<f32>(-(-1151f), ceil(-129f), -(-722f))), ceil(ceil(min(vec3<f32>(-246f, 199f, -357f), vec3<f32>(601f, -513f, 677f)) + vec3<f32>(-551f, 375f, 1000f))), select(vec3<bool>(any(select(vec4<bool>(true, var_3.a.a, false, var_2.a), vec4<bool>(var_3.a.a, false, false, false), var_1.a.a)), true, (var_1.a.b.x + 4294967295u) >= 0u), !vec3<bool>(false, var_2.a, false), select(select(!vec3<bool>(var_1.a.a, true, true), select(vec3<bool>(true, var_2.a, var_2.a), vec3<bool>(true, true, var_3.a.a), vec3<bool>(false, var_1.a.a, true)), select(vec3<bool>(var_3.a.a, false, false), vec3<bool>(var_1.a.a, true, true), true)), vec3<bool>(var_1.a.a && var_3.a.a, any(vec3<bool>(true, true, true)), any(vec3<bool>(var_1.a.a, var_2.a, false))), exp2(1591f) == trunc(453f))));
    return !(!((!var_2.a | var_2.a) | func_2(Struct_2(var_1.a, vec4<f32>(var_4.x, var_4.x, var_4.x, var_4.x), var_1.a)).a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1123f - -1384f;
    var var_1 = !(-var_0 != (-(-1000f - 206f) + -217f));
    var_1 = !all(!vec2<bool>(true, true)) | ((firstTrailingBit(-23372i << 4294967295u) > 8733i) != any(!(!vec4<bool>(true, true, true, false))));
    let var_2 = Struct_2(Struct_1(func_1(), min(func_3(), countOneBits(~vec3<u32>(44349u, 44197u, 0u))), select(firstTrailingBit(u_input.a.x), u_input.a.x << 0u, true) & func_2(Struct_2(Struct_1(false, vec3<u32>(10578u, 4294967295u, 0u), u_input.a.x), vec4<f32>(-1020f, var_0, var_0, 394f), Struct_1(false, vec3<u32>(0u, 4294967295u, 4294967295u), 221i))).c), -exp2(vec4<f32>(var_0, var_0 / var_0, sign(var_0), -var_0)), Struct_1(true, vec3<u32>(~func_3().x, func_3().x / 106424u, ~(~17669u)), -1i));
    var_1 = !var_2.a.a;
    let var_3 = (var_0 / -621f) - (trunc((var_0 - -412f) / -411f) - trunc(var_2.b.x));
    var_1 = all(select(!vec4<bool>(false | false, !false, !var_2.a.a, var_2.a.a), vec4<bool>(all(select(vec2<bool>(var_2.a.a, var_2.a.a), vec2<bool>(false, true), vec2<bool>(var_2.c.a, false))), abs(1i) > (51785i / u_input.a.x), var_2.a.a | !var_2.a.a, all(!vec3<bool>(var_2.a.a, var_2.c.a, true))), func_1() | !var_2.c.a));
    var var_4 = -23000i;
    var var_5 = vec2<u32>(var_2.c.b.x, ((1u + abs(350u)) / var_2.a.b.x) / 32140u);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(countOneBits(~abs(var_2.c.c))), var_5.x, ~(~(~vec4<u32>(50720u, 13216u, 467u, var_5.x))) >> ~(~(~vec4<u32>(var_5.x, var_5.x, 44284u, 71952u))), u_input.a.x - u_input.a.x);
}

