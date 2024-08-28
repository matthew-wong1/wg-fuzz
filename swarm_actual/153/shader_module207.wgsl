// {"0:0":[62,209,12,72,76,93,235,195,96,62,126,115,219,221,242,251,28,0,3,113,93,220,130,70,39,225,126,158,201,86,182,182]}
// Seed: 1462588499176641687

struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: f32, arg_1: vec4<u32>, arg_2: vec3<u32>) -> vec4<bool> {
    let var_0 = Struct_1(select(vec2<bool>(!true, !all(vec4<bool>(true, true, false, true))), select(vec2<bool>(1u > 20786u, false), vec2<bool>(any(vec3<bool>(false, false, false)), 4294967295u < u_input.a), false && !true), !select(!vec2<bool>(false, false), !vec2<bool>(false, true), !vec2<bool>(true, false))), -(-vec4<f32>(-274f, -164f, arg_0, arg_0) + (vec4<f32>(arg_0, arg_0, arg_0, -326f) - vec4<f32>(769f, -1902f, arg_0, -1139f))) / max(-ceil(vec4<f32>(arg_0, -459f, 674f, arg_0)), step(trunc(vec4<f32>(arg_0, 216f, arg_0, 781f)), -vec4<f32>(-811f, arg_0, 1076f, arg_0))), !(!all(vec3<bool>(true, false, true))) | !any(vec3<bool>(true, true, false)));
    let var_1 = select(var_0.a, vec2<bool>(var_0.c, false), select(!vec2<bool>(67706u != 1u, -203f >= 629f), vec2<bool>(!any(vec2<bool>(false, false)), var_0.a.x), select(vec2<bool>(u_input.b.x == u_input.b.x, var_0.c), vec2<bool>(!false, var_0.c), var_0.a)));
    var var_2 = Struct_1(!vec2<bool>(true, var_0.c), select(abs(vec4<f32>(arg_0 / arg_0, max(-454f, 1027f), abs(319f), -arg_0)), floor(vec4<f32>(var_0.b.x - 931f, var_0.b.x, exp2(arg_0), var_0.b.x)), true), false);
    let var_3 = -var_0.b.x;
    var var_4 = -min(683f, var_3);
    return !vec4<bool>(((var_2.b.x <= var_0.b.x) & any(vec3<bool>(false, true, true))) != var_0.c, true, false, any(!(!vec4<bool>(var_1.x, var_1.x, true, var_1.x))));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    var var_0 = arg_1;
    var var_1 = !(!select(!func_3(-645f, vec4<u32>(54277u, arg_2, 9658u, u_input.a), vec3<u32>(arg_2, 0u, arg_2)), func_3(sign(var_0.b.x), ~vec4<u32>(u_input.a, arg_2, 4294967295u, 37884u), vec3<u32>(1u, u_input.a, 54116u) << vec3<u32>(arg_2, 1u, arg_2)), arg_0.x));
    var_1 = arg_0;
    var_1 = arg_0;
    var var_2 = Struct_1(!select(vec2<bool>(false, !false), !vec2<bool>(var_1.x, true), !false), min(select(arg_1.b, select(vec4<f32>(-263f, arg_1.b.x, -1150f, arg_1.b.x) - var_0.b, -vec4<f32>(-748f, arg_1.b.x, -1882f, 625f), vec4<bool>(arg_0.x, true, arg_0.x, true)), !select(arg_0, arg_0, vec4<bool>(true, var_0.a.x, var_1.x, false))), arg_1.b), all(func_3(arg_1.b.x, ~vec4<u32>(u_input.a, arg_2, 25179u, 4294967295u), reverseBits(vec3<u32>(arg_2, u_input.a, u_input.a))).xzw) || ((u_input.b.x > u_input.b.x) && false));
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = vec4<i32>(dot(abs(vec2<i32>(-20938i, -u_input.b.x)), ~vec2<i32>(clamp(arg_2.x, 2147483647i, u_input.b.x), countOneBits(arg_2.x))), u_input.b.x, ~(~countOneBits(u_input.b.x)) | (((2147483647i ^ -1i) | u_input.b.x) | u_input.b.x), ~(abs(arg_2.x) & arg_2.x));
    let var_1 = all(func_3((-1005f / exp2(674f)) + arg_0.b.x, vec4<u32>(4294967295u, (64383u & 4294967295u) - 47552u, u_input.a & u_input.a, ~(~0u)), ~(~vec3<u32>(962u, u_input.a, u_input.a) | ~vec3<u32>(1u, 18405u, u_input.a))));
    let var_2 = -vec4<i32>(-(var_0.x + dot(vec4<i32>(2147483647i, u_input.b.x, var_0.x, 2147483647i), vec4<i32>(arg_2.x, 0i, u_input.b.x, arg_2.x))), 0i, ~(-(-38151i)), -2390i >> u_input.a);
    var var_3 = func_2(!(!vec4<bool>(!false, !true, var_1, false)), arg_0, u_input.a);
    var_3 = arg_0;
    return Struct_1(vec2<bool>(select(ceil(1557f), min(838f, arg_0.b.x), true) < min(-(-1381f), arg_1.x - 1703f), true | (countOneBits(var_0.x) > var_2.x)), step(arg_1, -vec4<f32>(-383f, arg_0.b.x, 296f, 1131f)) - (-abs(arg_1) / ((var_3.b * vec4<f32>(1165f, -1417f, 402f, 153f)) * (vec4<f32>(386f, arg_1.x, var_3.b.x, 585f) / var_3.b))), false);
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = (u_input.b.x & u_input.b.x) & -(0i);
    let var_1 = func_2(!vec4<bool>(select(all(vec3<bool>(arg_1.c, true, false)), func_3(arg_0, vec4<u32>(u_input.a, 1813u, u_input.a, 18735u), vec3<u32>(u_input.a, 1u, 4294967295u)).x, func_3(arg_1.b.x, vec4<u32>(1u, u_input.a, 4294967295u, 4294967295u), vec3<u32>(u_input.a, 1u, 81758u)).x), arg_1.a.x, false, select(!arg_1.c, arg_1.a.x && arg_1.a.x, func_3(arg_0, vec4<u32>(4294967295u, u_input.a, 1u, u_input.a), vec3<u32>(u_input.a, u_input.a, 102888u)).x)), arg_1, 46833u);
    var var_2 = firstTrailingBit((select(firstTrailingBit(vec2<u32>(0u, u_input.a)), ~vec2<u32>(1u, 1u), vec2<bool>(false, arg_1.c)) / vec2<u32>(firstLeadingBit(u_input.a), ~4294967295u)) | abs(vec2<u32>(firstTrailingBit(24919u), u_input.a)));
    var var_3 = countOneBits(1i);
    var var_4 = vec4<u32>(firstLeadingBit(21646u) ^ ((var_2.x | u_input.a) << var_2.x), clamp(~u_input.a, ~(~14639u), u_input.a), ~var_2.x, abs(~u_input.a ^ (9879u - 32982u))) | vec4<u32>(1u, abs(1u), u_input.a, 4484u);
    return func_4(arg_1, round(ceil(func_4(func_4(arg_1, vec4<f32>(-382f, arg_1.b.x, arg_1.b.x, arg_0), u_input.b), vec4<f32>(-908f, arg_0, -1000f, -1696f) * vec4<f32>(-1546f, -205f, 447f, -862f), vec4<i32>(-1i, i32(-2147483648), var_0, var_0)).b)), vec4<i32>(abs(-var_0), 2147483647i, abs(~(u_input.b.x ^ var_0)), 22107i));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<u32>) -> bool {
    var var_0 = func_5(1132f, func_4(func_2(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), false), Struct_1(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), vec4<f32>(563f, 2223f, 1976f, 460f) * vec4<f32>(893f, 1000f, 675f, 264f), false && true), 0u), vec4<f32>(-min(-902f, -1357f), -(-691f - 475f), 1242f, -(-1176f) * -1246f), vec4<i32>(countOneBits(arg_0.x) >> ~arg_1.x, 1i, 1i, dot(u_input.b.yxy * u_input.b.xwx, u_input.b.zyw))));
    var var_1 = ~u_input.a * arg_1.x;
    var_1 = (arg_1.x / reverseBits(min(~67188u, 1u))) >> 1u;
    var_1 = 4294967295u;
    var_0 = Struct_1(vec2<bool>(all(!vec4<bool>(var_0.c, var_0.c, var_0.a.x, var_0.a.x)) | var_0.c, !false), trunc(vec4<f32>((-489f / var_0.b.x) * -var_0.b.x, -1721f, 506f, var_0.b.x - var_0.b.x)), all(var_0.a));
    return false;
}

fn func_6(arg_0: u32, arg_1: vec4<f32>, arg_2: f32, arg_3: vec2<bool>) -> StorageBuffer {
    let var_0 = func_4(func_2(func_3(612f, ~(vec4<u32>(arg_0, 0u, u_input.a, 4294967295u) >> vec4<u32>(25551u, arg_0, 4294967295u, arg_0)), ~(vec3<u32>(u_input.a, arg_0, 4294967295u) << vec3<u32>(4294967295u, arg_0, 1u))), Struct_1(!vec2<bool>(arg_3.x, true), arg_1, select(!true, all(vec4<bool>(false, arg_3.x, arg_3.x, true)), false)), 82735u), vec4<f32>(arg_2, arg_2 + max(func_5(2359f, Struct_1(arg_3, vec4<f32>(arg_1.x, 803f, arg_2, 1540f), false)).b.x, 373f - 620f), -171f * -arg_2, arg_2), u_input.b * abs(~(~vec4<i32>(2147483647i, 1i, 0i, -12445i))));
    return StorageBuffer(dot(abs(vec3<u32>(u_input.a, arg_0, arg_0)), ~vec3<u32>(67936u, 4294967295u, 0u)) >> u_input.a, var_0.b.wy, -vec2<f32>(1089f, -(-589f)) * (-arg_1.yw - vec2<f32>(var_0.b.x, -var_0.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(1u, select(vec4<f32>(603f, exp2(-1342f), 224f, ceil(-546f)), vec4<f32>(sign(1000f), 244f, abs(649f), -1023f), vec4<bool>(func_1(vec2<i32>(u_input.b.x, u_input.b.x), ~vec3<u32>(u_input.a, 4807u, u_input.a)), func_3(-1051f, vec4<u32>(35779u, u_input.a, 1u, 2944u), vec3<u32>(5661u, 46225u, 112524u) * vec3<u32>(u_input.a, 1u, 4294967295u)).x, false, !(395f <= -181f))), -abs(2166f), !func_4(func_5(200f - -1861f, Struct_1(vec2<bool>(true, true), vec4<f32>(1350f, -131f, -1616f, 615f), true)), vec4<f32>(-217f, 1000f, -360f, 258f) - (vec4<f32>(-578f, 143f, -1270f, -586f) * vec4<f32>(383f, 598f, -683f, 252f)), countOneBits(u_input.b)).a);
}

