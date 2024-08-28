// {"0:0":[28,161,201,143,205,253,52,236,137,119,213,242,55,24,57,237,61,200,175,199,107,181,33,37,10,113,235,6,222,118,103,26,210,200,175,211,16,249,40,127,82,26,224,190,101,12,64,2]}
// Seed: 357164875855051527

struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26> = array<bool, 26>(false, false, true, true, false, false, false, false, true, true, false, false, true, true, true, true, true, false, true, false, false, true, true, true, false, false);

fn func_3() -> f32 {
    var var_0 = vec3<f32>(ceil(trunc(-911f + -1000f)), step(1372f, -809f), -777f + floor(-494f));
    var_0 = -(-(-(-vec3<f32>(var_0.x, 1095f, -306f)) + min(select(vec3<f32>(var_0.x, var_0.x, 1479f), vec3<f32>(1222f, var_0.x, var_0.x), global0[u_input.a.x]), step(vec3<f32>(var_0.x, 168f, 2229f), vec3<f32>(-483f, var_0.x, var_0.x)))));
    var var_1 = ~4541i;
    global0 = array<bool, 26>();
    let var_2 = Struct_2(Struct_1(reverseBits(vec4<i32>(u_input.c, u_input.c, u_input.d.x, u_input.c)) & (abs(vec4<i32>(-1i, 0i, u_input.c, u_input.d.x)) * firstTrailingBit(vec4<i32>(-1i, u_input.c, 18466i, u_input.d.x)))));
    return -(-step(var_0.x, sign(-128f / 150f)));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2) -> i32 {
    var var_0 = select(!vec4<bool>((33335i <= 2147483647i) & !false, global0[111793u], ceil(867f) > arg_1, any(select(vec3<bool>(global0[74621u], false, global0[1u]), vec3<bool>(global0[414u], global0[0u], true), vec3<bool>(false, false, global0[9663u])))), select(select(vec4<bool>(!true, false, true, any(vec2<bool>(global0[u_input.b.x], false))), select(vec4<bool>(true, global0[u_input.b.x], true, true), select(vec4<bool>(global0[0u], global0[4294967295u], global0[0u], global0[u_input.e]), vec4<bool>(true, global0[7297u], false, false), vec4<bool>(true, true, global0[0u], true)), any(vec4<bool>(global0[4294967295u], true, global0[u_input.a.x], true))), select(!vec4<bool>(true, true, false, global0[u_input.a.x]), !vec4<bool>(global0[1u], global0[u_input.e], global0[41703u], global0[40431u]), all(vec2<bool>(false, global0[1u])))), vec4<bool>((arg_0.a.x * u_input.d.x) <= ~(-16992i), true, false, false), vec4<bool>(!any(vec3<bool>(global0[u_input.e], global0[3428u], global0[u_input.a.x])), (u_input.a.x << u_input.e) == dot(u_input.a.xx, vec2<u32>(u_input.a.x, 1u)), true, select(!global0[u_input.a.x], true, global0[0u + 21761u]))), !select(!select(vec4<bool>(global0[12539u], global0[4294967295u], global0[0u], true), vec4<bool>(false, false, global0[u_input.b.x], global0[17110u]), false), vec4<bool>(arg_1 == arg_1, global0[~117493u], any(vec4<bool>(global0[u_input.e], false, true, global0[23788u])), u_input.a.x > 1u), vec4<bool>(!true, any(vec4<bool>(global0[u_input.b.x], global0[u_input.e], global0[1683u], true)), false, !true)));
    var var_1 = arg_2;
    let var_2 = vec4<f32>(-779f, 687f, 695f, select(trunc(796f), -arg_1, false));
    var var_3 = Struct_1((~select(vec4<i32>(arg_2.a.a.x, arg_2.a.a.x, u_input.c, u_input.c), vec4<i32>(-47626i, -1i, var_1.a.a.x, 5557i), var_0.x) >> firstLeadingBit(vec4<u32>(12992u, u_input.a.x, u_input.a.x, u_input.b.x) / vec4<u32>(3952u, u_input.a.x, u_input.b.x, 28917u))) ^ -(~vec4<i32>(42276i, -1i, arg_2.a.a.x, i32(-2147483648))));
    let var_4 = var_2;
    return -select(-(i32(-2147483648) << (42208u / 35876u)), arg_2.a.a.x, select(arg_0.a.x, -22300i, all(var_0.yz)) <= var_1.a.a.x);
}

fn func_2(arg_0: vec2<bool>, arg_1: f32, arg_2: i32, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = false;
    global0 = array<bool, 26>();
    global0 = array<bool, 26>();
    var var_1 = u_input.d;
    var_1 = u_input.d;
    return Struct_1(vec4<i32>(0i, select(min(var_1.x, var_1.x), (i32(-2147483648) << u_input.b.x) >> arg_3.x, true), 26433i * i32(-2147483648), func_4(Struct_1(vec4<i32>(var_1.x, -18695i, var_1.x, -7636i) >> u_input.a), func_3() * min(arg_1, -1106f), Struct_2(Struct_1(vec4<i32>(-1i, var_1.x, 944i, u_input.c))))));
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    global0 = array<bool, 26>();
    var var_0 = -u_input.d;
    var var_1 = -(~(-(vec4<i32>(-27777i, 0i, var_0.x, var_0.x) << vec4<u32>(4294967295u, u_input.a.x, u_input.e, 1u))));
    var var_2 = Struct_2(func_2(vec2<bool>(false && !global0[1u], global0[u_input.a.x]), -arg_0.x, 18042i, (u_input.a | firstTrailingBit(vec4<u32>(u_input.b.x, u_input.a.x, 1u, 24188u))) + ~vec4<u32>(u_input.e, 12348u, u_input.b.x, u_input.a.x)));
    let var_3 = (42197i | (((u_input.d.x + u_input.d.x) | ~(-1i)) % (var_2.a.a.x << ~u_input.e))) * -(-var_2.a.a.x);
    return var_2.a;
}

fn func_5(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_1, arg_3: vec3<bool>) -> u32 {
    let var_0 = -(((select(vec4<f32>(arg_0.x, arg_0.x, arg_1, -548f), vec4<f32>(arg_0.x, -1174f, 712f, arg_0.x), false) + -vec4<f32>(-603f, -1520f, arg_1, -1000f)) + step(exp2(vec4<f32>(921f, -638f, arg_0.x, 652f)), vec4<f32>(arg_0.x, arg_0.x, -1430f, arg_1))) + vec4<f32>(arg_1 - -876f, step(arg_1 - -669f, arg_0.x), step(max(arg_1, 1000f), arg_1 / arg_0.x), floor(step(1412f, arg_0.x))));
    let var_1 = vec3<bool>(any(vec4<bool>(!(!global0[1u]), global0[dot(vec2<u32>(u_input.e, 1u), ~u_input.b.zz)], true, global0[~(~23506u)])), (0i >> u_input.e) != arg_2.a.x, all(arg_3.xx));
    var var_2 = firstTrailingBit((~(25301u % u_input.a.x) * u_input.e) | countOneBits(dot(vec2<u32>(u_input.b.x, 4294967295u), ~u_input.a.zw)));
    let var_3 = func_3();
    var_2 = (dot(vec3<u32>(u_input.a.x, u_input.e, u_input.b.x) * select(u_input.b, vec3<u32>(2049u, 77863u, u_input.e), false), ~u_input.b) / ~u_input.b.x) >> u_input.a.x;
    return ~(~((u_input.e & u_input.a.x) & ~50653u)) & ~1543u;
}

fn func_6(arg_0: u32, arg_1: u32, arg_2: Struct_2, arg_3: vec2<bool>) -> Struct_2 {
    let var_0 = 4294967295u;
    var var_1 = u_input.d.x;
    let var_2 = vec2<u32>(min(~(var_0 / 100316u) + arg_1, arg_1), countOneBits(var_0));
    let var_3 = arg_2;
    let var_4 = Struct_1(abs(-var_3.a.a));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(~104617u >> ~func_5(vec2<f32>(996f, -698f) * vec2<f32>(-1447f, 330f), -359f, func_1(vec4<f32>(-913f, 2019f, 359f, 1651f)), select(vec3<bool>(true, false, true), vec3<bool>(false, true, global0[16557u]), vec3<bool>(global0[4294967295u], true, true))), u_input.e, Struct_2(Struct_1(clamp(vec4<i32>(-1i, u_input.c, u_input.c, -31873i), vec4<i32>(0i, 817i, -18052i, u_input.d.x), vec4<i32>(-20845i, u_input.d.x, u_input.c, u_input.c)) * vec4<i32>(1i, 2147483647i, u_input.d.x, u_input.d.x))), !(!vec2<bool>(global0[1u], all(vec3<bool>(global0[u_input.b.x], global0[u_input.e], global0[u_input.a.x])))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(u_input.b.x, func_5(-vec2<f32>(1522f, 1413f), 1263f - 477f, Struct_1(var_0.a.a), !vec3<bool>(global0[u_input.a.x], false, global0[308u]))), vec4<f32>(floor(-268f), -(669f * -634f), -478f - -992f, 787f) / vec4<f32>((207f * -1804f) / -1294f, func_3(), 165f, 513f), ~firstLeadingBit(~dot(u_input.a, vec4<u32>(4294967295u, 10443u, 0u, u_input.b.x))), -((846f - (-779f / 785f)) - ((1220f / 803f) / ceil(-2518f))));
}

