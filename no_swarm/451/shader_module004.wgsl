// {"0:0":[23,93,117,246,78,109,233,172,195,13,166,178,132,89,209,148,251,106,223,232,217,55,0,150]}
// Seed: 10602533897590168205

struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 25>;

var<private> global1: array<vec4<u32>, 19>;

var<private> global2: Struct_1 = Struct_1(vec3<bool>(false, true, true), -110f);

var<private> global3: vec2<u32> = vec2<u32>(12957u, 0u);

var<private> global4: Struct_1 = Struct_1(vec3<bool>(false, true, false), -558f);

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<bool>) -> u32 {
    var var_0 = global4.b;
    var var_1 = Struct_1(vec3<bool>(!false, true, false), 664f);
    return abs(global3.x);
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = arg_0.a.x;
    var var_1 = Struct_1(global4.a, global2.b);
    let var_2 = ~(countOneBits(select(u_input.a, u_input.a * u_input.a, false)) & abs(vec2<u32>(20192u, 55882u) - vec2<u32>(26158u, 0u)));
    let var_3 = ~vec3<u32>(~u_input.d, ~4294967295u, func_3(!(!true), Struct_1(vec3<bool>(global4.a.x, true, arg_0.a.x), -(-207f)), arg_0, arg_0.a));
    global2 = Struct_1(vec3<bool>(-(-(-1225f)) > (-364f * round(arg_0.b)), true, any(global0[dot(global1[17160u], global1[u_input.a.x]) << 0u])), floor((global2.b * max(global2.b, -796f)) / arg_0.b));
    return var_3.x;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_1 {
    global0 = array<vec4<bool>, 25>();
    global2 = arg_2;
    var var_0 = Struct_1(select(vec3<bool>(global2.a.x, all(vec3<bool>(global4.a.x, arg_2.a.x, global4.a.x)), !(u_input.b >= u_input.d)), vec3<bool>(global4.a.x, all(global4.a.zz), !(true | false)), global2.a.x), arg_1.b * global2.b);
    var var_1 = var_0.a.x;
    let var_2 = select(var_0.a.yz, select(!(!select(vec2<bool>(global2.a.x, arg_2.a.x), vec2<bool>(arg_2.a.x, global2.a.x), arg_1.a.yy)), vec2<bool>(func_2(arg_2) > select(1u, 0u, true), !global4.a.x), arg_2.a.x), !vec2<bool>(25221u >= abs(global3.x), select(any(vec4<bool>(arg_2.a.x, true, true, arg_1.a.x)), arg_2.a.x, select(true, true, true))));
    return Struct_1(global4.a, -506f);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = ~u_input.a ^ vec2<u32>(max(~0u | ~58117u, 1u), global3.x);
    global4 = func_1(vec3<f32>(global4.b, 1440f, -(-1286f / global2.b)) - (-(vec3<f32>(global4.b, global2.b, 1148f) / vec3<f32>(387f, global2.b, global2.b)) / max(round(vec3<f32>(global4.b, global2.b, -254f)), vec3<f32>(1166f, -205f, -1000f))), Struct_1(vec3<bool>(true, global2.a.x, true), min(global4.b, -(-525f))), Struct_1(!vec3<bool>(global4.a.x, all(global0[global3.x]), !false), ((global4.b * global2.b) / select(global4.b, 401f, false)) / global2.b), vec2<i32>(0i, ~(-37016i)));
    var var_0 = Struct_1(vec3<bool>(!(!false), true, -(-731f / -336f) <= global2.b), -474f);
    global4 = func_1(vec3<f32>(-166f, -abs(min(-862f, -813f)), global4.b), Struct_1(global4.a, global4.b), func_1(round(-vec3<f32>(global4.b, 392f, -160f)) + max(-vec3<f32>(-896f, global2.b, -904f), vec3<f32>(var_0.b, global4.b, global4.b)), func_1(trunc(vec3<f32>(-1000f, 1000f, -472f)) * (vec3<f32>(-943f, global4.b, global2.b) + vec3<f32>(-307f, global2.b, global2.b)), func_1(vec3<f32>(global2.b, var_0.b, 194f) * vec3<f32>(1386f, global2.b, 155f), Struct_1(vec3<bool>(false, true, false), global4.b), Struct_1(var_0.a, -2342f), vec2<i32>(u_input.c, -1i) + vec2<i32>(-1i, u_input.c)), func_1(vec3<f32>(-1604f, -592f, -359f) - vec3<f32>(-721f, -1086f, var_0.b), func_1(vec3<f32>(global2.b, 872f, -1096f), Struct_1(global4.a, -1375f), Struct_1(vec3<bool>(global2.a.x, var_0.a.x, true), 2224f), vec2<i32>(2147483647i, u_input.c)), func_1(vec3<f32>(1000f, global2.b, var_0.b), Struct_1(var_0.a, global4.b), Struct_1(var_0.a, -1000f), vec2<i32>(i32(-2147483648), 7688i)), vec2<i32>(9279i, i32(-2147483648))), -vec2<i32>(u_input.c, -75400i) + ~vec2<i32>(-1i, u_input.c)), Struct_1(!func_1(vec3<f32>(global2.b, 615f, 347f), Struct_1(var_0.a, global4.b), Struct_1(vec3<bool>(true, global2.a.x, false), global2.b), vec2<i32>(u_input.c, u_input.c)).a, -select(-1000f, -271f, true)), firstTrailingBit(reverseBits(vec2<i32>(1i, 38533i) | vec2<i32>(u_input.c, i32(-2147483648))))), vec2<i32>(firstLeadingBit(dot(firstTrailingBit(vec4<i32>(u_input.c, u_input.c, u_input.c, i32(-2147483648))), firstLeadingBit(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c)))), u_input.c));
    let var_1 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b / -(-660f + -508f), dot(vec3<u32>(func_3(!true, Struct_1(vec3<bool>(global2.a.x, true, var_0.a.x), global4.b), func_1(vec3<f32>(-170f, -1159f, var_0.b), Struct_1(global4.a, -879f), Struct_1(global4.a, var_0.b), vec2<i32>(-1i, u_input.c)), global2.a), countOneBits(global3.x) | (1u >> u_input.a.x), firstLeadingBit(min(118907u, 87159u))), vec3<u32>(global3.x, u_input.b, u_input.d)), (-(-11077i) - -clamp(1i, u_input.c, 58346i)) * ~dot(vec3<i32>(14647i, 67367i, i32(-2147483648)) - vec3<i32>(i32(-2147483648), var_1, 73374i), abs(vec3<i32>(16408i, i32(-2147483648), u_input.c))), ~(~(global3.x & 4294967295u)));
}

