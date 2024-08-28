// {"0:0":[208,208,165,160,225,118,36,20,26,169,113,155]}
// Seed: 6915664601837008190

struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
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

var<private> global0: Struct_1 = Struct_1(i32(-2147483648), vec2<f32>(-1399f, 119f), -1i, vec3<u32>(48584u, 0u, 1u));

var<private> global1: vec3<bool> = vec3<bool>(false, false, false);

var<private> global2: array<Struct_1, 2>;

fn func_3(arg_0: f32, arg_1: Struct_2) -> i32 {
    let var_0 = select(select(vec3<bool>(all(select(vec3<bool>(false, true, global1.x), vec3<bool>(false, global1.x, true), vec3<bool>(false, false, false))), all(!vec3<bool>(false, arg_1.a, arg_1.a)), (global1.x && false) & (arg_1.a | false)), !select(select(vec3<bool>(global1.x, true, false), vec3<bool>(true, true, false), true), vec3<bool>(false, global1.x, false), select(vec3<bool>(arg_1.a, arg_1.a, false), vec3<bool>(arg_1.a, arg_1.a, false), vec3<bool>(false, false, true))), vec3<bool>(false, all(!vec3<bool>(global1.x, true, false)), true)), vec3<bool>(any(global1.zz), false, arg_1.a), !vec3<bool>(all(select(vec4<bool>(arg_1.a, false, false, false), vec4<bool>(arg_1.a, global1.x, global1.x, false), vec4<bool>(global1.x, arg_1.a, arg_1.a, global1.x))), ~(-1i) == firstLeadingBit(5948i), arg_1.a));
    let var_1 = u_input.c;
    global2 = array<Struct_1, 2>();
    global0 = global2[((global0.d.x & global0.d.x) - var_1) ^ var_1];
    var var_2 = sign(global0.b.x);
    return global0.a - ~(-(dot(vec3<i32>(28675i, 1i, global0.a), vec3<i32>(0i, -28525i, global0.a)) | (16203i >> 4294967295u)));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = Struct_2(false);
    let var_1 = vec3<bool>(!((18979i - i32(-2147483648)) != 60058i) || all(!vec4<bool>(true, false, false, false)), true, any(!(!vec3<bool>(var_0.a, global1.x, true))));
    var var_2 = arg_1;
    let var_3 = Struct_2(!(!(var_1.x & global1.x) || (true & (var_1.x && global1.x))));
    var var_4 = -(~(max(vec4<i32>(39503i, arg_1.c, global0.a, 0i), vec4<i32>(-1i, var_2.a, 2147483647i, arg_1.c)) / abs(vec4<i32>(-24474i, -34629i, 53496i, i32(-2147483648))))) << ~(min(~vec4<u32>(u_input.a, 1u, u_input.c, 0u), vec4<u32>(0u, u_input.c, 14243u, arg_0.x)) / ~vec4<u32>(1u, arg_0.x, global0.d.x, var_2.d.x));
    return select(!select(vec4<bool>(!global1.x, global1.x, false, !var_3.a), vec4<bool>(true, true == false, global1.x, var_2.b.x == 1316f), !(!vec4<bool>(var_0.a, var_0.a, true, global1.x))), !vec4<bool>(func_3(arg_1.b.x, Struct_2(var_1.x)) >= -var_4.x, !any(vec3<bool>(var_0.a, global1.x, false)), !(!true), true && false), select(vec4<bool>(var_3.a, !var_0.a, (global0.b.x != var_2.b.x) & all(var_1), global1.x), !vec4<bool>(var_3.a, !var_1.x, global1.x && false, all(global1.yy)), vec4<bool>(!true, all(vec4<bool>(var_3.a, false, true, true)) || any(vec3<bool>(var_1.x, var_0.a, true)), any(!vec2<bool>(false, var_1.x)), all(global1.yy))));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_1) -> u32 {
    var var_0 = global0.b.x;
    global1 = !vec3<bool>(true, any(select(vec3<bool>(global1.x, false, true), !vec3<bool>(false, false, false), false | false)), global1.x);
    var var_1 = func_4(firstTrailingBit(arg_3.d), Struct_1(func_3(985f, Struct_2(false)), select(vec2<f32>(arg_3.b.x, -1273f), vec2<f32>(abs(arg_1.b.x), select(arg_3.b.x, -491f, true)), global1.zx), 1i, global0.d));
    let var_2 = Struct_2(~dot(~global0.d.yz, firstLeadingBit(vec2<u32>(15996u, arg_3.d.x))) == ~arg_3.d.x);
    let var_3 = vec2<bool>(!global1.x, !false);
    return u_input.b / abs(arg_1.d.x);
}

fn func_5(arg_0: u32, arg_1: bool, arg_2: f32, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = Struct_1(-(select(-1i, -2147483647i, all(global1.yx)) - (abs(2147483647i) | (-26557i - global0.a))), sign(vec2<f32>(sign(181f), 828f)), ~(~(i32(-2147483648) | global0.c)), (select(arg_3.zww + vec3<u32>(u_input.c, 0u, global0.d.x), vec3<u32>(arg_0, 1u, 0u) % global0.d, any(vec4<bool>(true, true, global1.x, false))) * vec3<u32>(25486u, ~0u, arg_0)) << global0.d);
    let var_1 = vec4<bool>(clamp(4294967295u, firstTrailingBit(u_input.b), 1u) <= (0u % (1u * 1u)), any(vec2<bool>(any(vec2<bool>(false, true)), (u_input.b & u_input.a) < ~4294967295u)), arg_1, !true);
    global2 = array<Struct_1, 2>();
    global0 = global2[(0u * ((u_input.c & (34685u - 89072u)) % (~0u >> (arg_3.x >> u_input.b)))) / u_input.c];
    var var_2 = abs(dot(firstLeadingBit(arg_3), abs(~select(vec4<u32>(0u, u_input.c, 31238u, arg_0), arg_3, vec4<bool>(arg_1, var_1.x, arg_1, arg_1)))));
    return global2[4294967295u];
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_2) -> StorageBuffer {
    global0 = func_5(11919u << global0.d.x, false, global0.b.x, clamp(vec4<u32>(u_input.a, max(4294967295u, u_input.a), 15482u / 1u, 1u) ^ vec4<u32>(dot(global0.d.zz, vec2<u32>(u_input.c, u_input.a)), 85210u << 0u, func_2(vec2<i32>(-1i, 1i), global2[global0.d.x], vec4<i32>(-49568i, global0.c, 21259i, global0.c), global2[global0.d.x]), 127840u + 7036u), vec4<u32>(~0u, ~(~global0.d.x), ~(~global0.d.x), ~1u >> (global0.d.x | u_input.a)), vec4<u32>(clamp(~global0.d.x, ~4294967295u, min(u_input.b, global0.d.x)), ~1u >> abs(u_input.c), u_input.b * (41628u % global0.d.x), dot(abs(vec4<u32>(u_input.a, global0.d.x, 4294967295u, global0.d.x)), vec4<u32>(u_input.a, 1u, u_input.a, u_input.a) / vec4<u32>(92354u, global0.d.x, 49279u, 1u)))));
    var var_0 = select(false, global1.x, any(select(!(!vec4<bool>(arg_1.a, arg_1.a, false, global1.x)), !(!vec4<bool>(arg_1.a, true, arg_1.a, true)), global1.x)));
    let var_1 = ~(-(-1i));
    let var_2 = var_1;
    var var_3 = global0.d.x;
    return StorageBuffer(98324u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(~(~global0.c), -(-(~(-18432i))), !true);
    let var_1 = Struct_2(global1.x);
    let var_2 = round(global0.b.x);
    var var_3 = -(global0.b - round(vec2<f32>(global0.b.x, -1917f) / global0.b)) + vec2<f32>(min(825f / step(var_2, var_2), var_2), var_2);
    var_0 = clamp(select(global0.a, global0.a, !false) * 0i, abs(-2147483647i), firstTrailingBit(-9274i)) ^ (-3264i - -1i);
    var var_4 = var_1.a;
    let var_5 = abs(6856i);
    let x = u_input.a;
    s_output = func_1(vec2<f32>(ceil(-554f), exp2(-(-1545f))) * vec2<f32>(max(var_3.x, var_2), 1919f * (var_2 + var_2)), Struct_2(any(!vec4<bool>(true, true, var_1.a, true))), Struct_2(true));
}

