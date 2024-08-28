// {"0:0":[189,70,219,247,190,98,200,7,234,110,44,117,149,54,45,109]}
// Seed: 917362011393994897

struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
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

var<private> global0: vec3<i32> = vec3<i32>(-12879i, 0i, 28682i);

var<private> global1: vec3<u32> = vec3<u32>(0u, 45811u, 46837u);

var<private> global2: array<i32, 8>;

fn func_3(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: vec3<f32>) -> u32 {
    let var_0 = ~firstLeadingBit((select(vec2<u32>(8363u, arg_1.b.b.b.x), global1.xz, vec2<bool>(false, arg_2.x)) / (arg_1.b.a.b.zx * vec2<u32>(39125u, 14059u))) - global1.yz);
    global1 = ~reverseBits(vec3<u32>(global1.x, firstTrailingBit(~arg_1.b.b.c), ~(60037u % arg_1.b.b.b.x)));
    var var_1 = arg_1;
    let var_2 = arg_1;
    var var_3 = vec4<i32>(-(-13578i), global0.x, i32(-2147483648), abs(dot(reverseBits(vec4<i32>(arg_1.c, var_1.c, u_input.a.x, arg_0.x)), u_input.a))) >> var_1.b.a.b;
    return abs(var_2.b.a.c) ^ 17911u;
}

fn func_2(arg_0: i32) -> vec2<bool> {
    var var_0 = Struct_1(trunc(-(vec2<f32>(-955f, 1635f) + -vec2<f32>(705f, 1000f))), vec4<u32>(global1.x, ~1u | (44623u | 34932u), 17889u, global1.x) & firstTrailingBit((vec4<u32>(global1.x, global1.x, global1.x, 56627u) * vec4<u32>(global1.x, 1u, 76699u, 1u)) >> vec4<u32>(34705u, 1018u, global1.x, global1.x)), 1u);
    let var_1 = Struct_3(false, Struct_2(Struct_1(-(vec2<f32>(-730f, 801f) + var_0.a), select(clamp(vec4<u32>(var_0.c, 4294967295u, global1.x, global1.x), var_0.b, vec4<u32>(12521u, 61936u, var_0.c, global1.x)), vec4<u32>(var_0.b.x, var_0.b.x, var_0.c, var_0.b.x), true), ~global1.x), Struct_1(round(var_0.a * var_0.a), var_0.b, global1.x), all(select(!vec2<bool>(false, true), !vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)))), Struct_1(select(var_0.a, var_0.a, true) / min(vec2<f32>(286f, var_0.a.x), vec2<f32>(558f, 989f)), vec4<u32>(global1.x >> 1u, select(4294967295u, global1.x, false), 4294967295u, dot(var_0.b, var_0.b)), func_3(select(vec3<i32>(global2[global1.x], arg_0, arg_0), vec3<i32>(2147483647i, 73859i, 1i), false), Struct_3(true, Struct_2(Struct_1(vec2<f32>(var_0.a.x, 777f), vec4<u32>(global1.x, global1.x, global1.x, 11704u), global1.x), Struct_1(var_0.a, vec4<u32>(global1.x, global1.x, global1.x, var_0.c), var_0.b.x), true, Struct_1(var_0.a, var_0.b, global1.x), vec2<bool>(false, true)), global0.x), !vec3<bool>(true, true, true), -vec3<f32>(-1416f, var_0.a.x, var_0.a.x))), !select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, false))), -(~(~global0.x)));
    var var_2 = abs(-(-(-vec3<f32>(295f, 645f, var_0.a.x) - (vec3<f32>(var_0.a.x, var_0.a.x, 776f) - vec3<f32>(-752f, -102f, var_0.a.x)))));
    var var_3 = var_1.b.a.b.zw;
    let var_4 = -(-(-select(2125f, -195f, true) + -var_1.b.a.a.x));
    return var_1.b.e;
}

fn func_4(arg_0: bool, arg_1: Struct_3) -> Struct_3 {
    var var_0 = max(-(-(-768f)), arg_1.b.d.a.x) + -(-abs(arg_1.b.a.a.x));
    let var_1 = arg_1;
    let var_2 = vec2<f32>(137f, min(var_1.b.b.a.x, 135f) * arg_1.b.a.a.x) * arg_1.b.b.a;
    let var_3 = global0.x * 48187i;
    let var_4 = Struct_1((vec2<f32>(608f * -701f, sign(var_1.b.d.a.x)) + -var_2) - vec2<f32>(-1050f - 1429f, -(var_2.x / arg_1.b.a.a.x)), vec4<u32>(arg_1.b.b.b.x, ~var_1.b.a.c, ~abs(arg_1.b.d.c), var_1.b.d.b.x) | var_1.b.b.b, 0u);
    return Struct_3(!any(!vec3<bool>(arg_0, arg_0, arg_1.b.c)), Struct_2(Struct_1(vec2<f32>(-124f, -1024f) / floor(var_1.b.d.a), ~(~arg_1.b.d.b), ~var_4.c + ~global1.x), var_1.b.a, any(vec4<bool>(!true, func_2(var_3).x, !false, true && false)), var_1.b.d, func_2(global2[1u])), i32(-2147483648));
}

fn func_1(arg_0: Struct_3) -> f32 {
    global0 = ((vec3<i32>(arg_0.c, -1i, global0.x) << arg_0.b.d.b.xxw) | -(~abs(vec3<i32>(global0.x, 1i, -32563i)))) | ~(~firstTrailingBit(vec3<i32>(i32(-2147483648), i32(-2147483648), arg_0.c) ^ vec3<i32>(59641i, arg_0.c, arg_0.c)));
    var var_0 = u_input.a.wy;
    let var_1 = func_4(all(!func_2(global2[0u] << 19187u)), arg_0);
    let var_2 = func_4(false, Struct_3(var_1.a | true, Struct_2(func_4(func_4(false, Struct_3(var_1.a, Struct_2(var_1.b.d, Struct_1(var_1.b.b.a, vec4<u32>(var_1.b.a.c, 17899u, 4294967295u, var_1.b.d.b.x), 3052u), true, Struct_1(var_1.b.a.a, vec4<u32>(arg_0.b.d.b.x, global1.x, 35643u, var_1.b.a.c), arg_0.b.a.b.x), arg_0.b.e), 2921i)).b.c, Struct_3(arg_0.b.c, Struct_2(Struct_1(arg_0.b.b.a, vec4<u32>(global1.x, global1.x, 1u, global1.x), 1u), arg_0.b.a, var_1.a, var_1.b.d, vec2<bool>(false, false)), 47267i)).b.a, Struct_1(vec2<f32>(1000f, -1568f), ~arg_0.b.a.b, ~4294967295u), !arg_0.a, Struct_1(arg_0.b.d.a - vec2<f32>(657f, arg_0.b.a.a.x), vec4<u32>(4294967295u, global1.x, 33911u, 52967u), 1u), vec2<bool>(arg_0.a, func_4(false, arg_0).a)), global2[~global1.x]));
    var var_3 = arg_0.b.d;
    return -step(1069f + -(-var_1.b.a.a.x), -step(var_1.b.a.a.x, arg_0.b.a.a.x));
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: vec2<f32>) -> Struct_2 {
    global2 = array<i32, 8>();
    var var_0 = arg_0 ^ (~(~4294967295u / (arg_0 / 13053u)) - 3594u);
    let var_1 = select(!vec2<bool>(func_2(1i % -22718i).x, false), !select(vec2<bool>(true, !true), !(!vec2<bool>(true, true)), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true))), !any(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true))));
    return Struct_2(func_4(var_1.x | false, func_4(func_4(!false, func_4(var_1.x, Struct_3(false, Struct_2(Struct_1(vec2<f32>(260f, -593f), vec4<u32>(global1.x, 24698u, arg_0, global1.x), global1.x), Struct_1(vec2<f32>(arg_1, arg_2.x), vec4<u32>(global1.x, global1.x, 4294967295u, 11635u), 16862u), true, Struct_1(arg_2, vec4<u32>(global1.x, arg_0, global1.x, 63232u), arg_0), var_1), global0.x))).b.c, Struct_3(global2[32204u] >= -50271i, Struct_2(Struct_1(vec2<f32>(arg_2.x, arg_1), vec4<u32>(1u, 1904u, global1.x, 4294967295u), global1.x), Struct_1(vec2<f32>(1859f, arg_2.x), vec4<u32>(global1.x, arg_0, global1.x, 4294967295u), 39950u), true, Struct_1(vec2<f32>(-1116f, arg_1), vec4<u32>(14803u, 26026u, arg_0, 31948u), 0u), vec2<bool>(true, false)), u_input.a.x))).b.b, Struct_1(vec2<f32>(1000f, exp2(222f)) + (abs(vec2<f32>(-1531f, arg_1)) / vec2<f32>(770f, arg_1)), vec4<u32>(37997u, arg_0, ~func_3(u_input.a.wyy, Struct_3(false, Struct_2(Struct_1(arg_2, vec4<u32>(arg_0, 30038u, 38580u, global1.x), arg_0), Struct_1(vec2<f32>(arg_2.x, arg_2.x), vec4<u32>(1u, 1u, arg_0, arg_0), 4294967295u), true, Struct_1(arg_2, vec4<u32>(arg_0, arg_0, arg_0, global1.x), 51787u), var_1), 2147483647i), vec3<bool>(var_1.x, false, var_1.x), vec3<f32>(-794f, -1349f, -1491f)), arg_0), global1.x | 1u), !true, func_4(!true, Struct_3(any(vec3<bool>(false, false, true)), func_4(any(vec4<bool>(false, var_1.x, var_1.x, true)), Struct_3(var_1.x, Struct_2(Struct_1(arg_2, vec4<u32>(arg_0, arg_0, 29844u, 11458u), 0u), Struct_1(vec2<f32>(arg_2.x, 157f), vec4<u32>(global1.x, arg_0, global1.x, arg_0), arg_0), true, Struct_1(arg_2, vec4<u32>(0u, 36156u, 39111u, global1.x), 30008u), vec2<bool>(true, false)), global0.x)).b, select(dot(vec3<i32>(global0.x, u_input.a.x, -39920i), u_input.a.xxz), global2[4294967295u] << 31328u, !true))).b.a, func_4(!(!var_1.x), func_4((false == var_1.x) || !true, func_4(!false, Struct_3(var_1.x, Struct_2(Struct_1(vec2<f32>(-460f, 1087f), vec4<u32>(arg_0, global1.x, 35118u, 24777u), 0u), Struct_1(vec2<f32>(arg_2.x, arg_1), vec4<u32>(arg_0, global1.x, arg_0, 18661u), 0u), var_1.x, Struct_1(arg_2, vec4<u32>(global1.x, arg_0, 0u, 4294967295u), 4294967295u), vec2<bool>(var_1.x, var_1.x)), global2[12528u])))).b.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(-(floor(-1949f) * (1342f / -1000f)) < step(-1135f, -min(-121f, 1202f)), func_5(~(~(8301u - global1.x)), max(func_1(Struct_3(true, Struct_2(Struct_1(vec2<f32>(-1000f, -170f), vec4<u32>(1u, 30321u, 8087u, 0u), global1.x), Struct_1(vec2<f32>(-1000f, 494f), vec4<u32>(1u, global1.x, 1u, global1.x), global1.x), true, Struct_1(vec2<f32>(1067f, -700f), vec4<u32>(global1.x, 42839u, 1u, 0u), 4294967295u), vec2<bool>(false, false)), -1i)), -821f - -(-700f)), vec2<f32>(-1000f, step(-672f, -352f)) / (-vec2<f32>(-474f, 464f) * (vec2<f32>(-1000f, -935f) - vec2<f32>(418f, 224f)))), 0i);
    var_0 = func_4(all(!select(var_0.b.e, var_0.b.e, vec2<bool>(false, true))), Struct_3(var_0.a, Struct_2(Struct_1(var_0.b.b.a, vec4<u32>(global1.x, var_0.b.d.c, 0u, global1.x) - var_0.b.a.b, ~var_0.b.b.b.x), var_0.b.b, var_0.a, var_0.b.b, vec2<bool>(false, false)), -(-27777i)));
    global0 = u_input.a.yyy;
    global1 = vec3<u32>(var_0.b.a.c, var_0.b.a.b.x - var_0.b.b.b.x, 26055u & (dot(var_0.b.b.b.xy * global1.yy, ~var_0.b.b.b.ww) >> abs(~global1.x)));
    let var_1 = -vec3<i32>(abs(abs(abs(17207i))), var_0.c, select(1i, global2[var_0.b.d.c], !(!false)));
    let var_2 = func_4(var_0.a, func_4(var_0.a, Struct_3(!any(vec2<bool>(false, var_0.a)), var_0.b, var_0.c))).b;
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.b.d.c);
}

