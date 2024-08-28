// {"0:0":[187,188,154,83,6,139,186,90,236,204,146,80,164,166,114,59,177,100,161,197,130,150,169,169,161,5,142,122,224,132,83,220,159,7,192,189,106,142,28,110,16,183,181,191,93,223,94,29]}
// Seed: 15332149752478693938

struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: f32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> bool {
    return arg_0.d.x;
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_1) -> bool {
    var var_0 = arg_2;
    var var_1 = arg_2;
    let var_2 = arg_2;
    var_1 = Struct_1((vec2<f32>(-325f, trunc(var_0.a.x)) + vec2<f32>(209f + var_1.a.x, -291f - var_1.c)) / -(arg_2.a / select(vec2<f32>(-643f, arg_2.a.x), vec2<f32>(var_2.b, var_1.a.x), vec2<bool>(var_2.d.x, true))), 627f, -(-(round(var_2.a.x) + -2397f)), vec2<bool>(false, var_1.d.x));
    var var_3 = -(-min(-select(arg_1, 1335f, var_0.d.x), 486f + -(-830f)));
    return 528f <= min(-exp2(547f), -(-366f) - -(-1150f));
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = 518f + -select(-(-(-1763f)), -(-(-904f)), !(!true));
    var_0 = -(-(-1103f + -(-1303f))) * -round(select(-217f - -378f, -410f, !false));
    var_0 = -1388f;
    var var_1 = Struct_1(-vec2<f32>(-158f + -170f, round(577f)), round(-(1559f - -422f) + -1108f), min(-(-109f * -1764f), -(-min(1438f, -112f))), select(vec2<bool>(func_4(func_3(Struct_1(vec2<f32>(566f, -811f), -483f, 380f, vec2<bool>(true, true)), -539f, Struct_1(vec2<f32>(-340f, 506f), -255f, 560f, vec2<bool>(true, false))), ceil(-247f), Struct_1(vec2<f32>(-998f, -837f), -867f, -1607f, vec2<bool>(true, true))), select(arg_0, 21068u, true) < 76224u), select(vec2<bool>(true, true && false), !(!vec2<bool>(true, false)), vec2<bool>(true, !true)), false));
    var_1 = Struct_1(vec2<f32>(sign(min(-var_1.c, -293f + -230f)), ceil(var_1.b / var_1.b)), var_1.b, var_1.a.x, var_1.d);
    return Struct_1(var_1.a, -var_1.b, sign(-345f), vec2<bool>(!(false || var_1.d.x), var_1.b != -var_1.b));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = func_2(6033u | 4294967295u);
    let var_1 = -(-round(floor(var_0.c)));
    var var_2 = ~u_input.b.xz;
    let var_3 = arg_2;
    var var_4 = -830f / ((arg_1.c * (arg_2.a.x / -var_1)) / -1113f);
    return Struct_1(vec2<f32>(arg_0.c, -var_0.a.x - -837f) + -vec2<f32>(arg_1.a.x + var_0.a.x, round(arg_1.b)), ceil(-sign(754f)), arg_1.a.x, vec2<bool>(false, any(select(select(vec3<bool>(arg_0.d.x, false, arg_1.d.x), vec3<bool>(arg_1.d.x, true, arg_1.d.x), true), select(vec3<bool>(true, true, true), vec3<bool>(arg_1.d.x, false, true), arg_2.d.x), any(var_0.d)))));
}

fn func_6(arg_0: Struct_1, arg_1: bool, arg_2: u32, arg_3: f32) -> Struct_1 {
    let var_0 = false;
    let var_1 = -(trunc(-916f) / func_2(u_input.b.x).b);
    var var_2 = Struct_1(arg_0.a, abs(-ceil(1583f)), func_2(4294967295u).c / arg_0.b, arg_0.d);
    var var_3 = 10048u;
    var_3 = 1u;
    return Struct_1(-vec2<f32>(min(arg_0.c, -arg_3), -(-673f) * -var_2.b), -199f, -(-var_2.c), select(func_5(arg_0, arg_0, Struct_1(-var_2.a, -214f, sign(-232f), arg_0.d)).d, arg_0.d, arg_1));
}

fn func_1(arg_0: vec3<i32>, arg_1: bool, arg_2: vec2<u32>) -> u32 {
    var var_0 = all(vec2<bool>(155f <= 960f, all(vec3<bool>(-1046f >= -150f, arg_1, false))));
    var_0 = arg_1;
    var_0 = arg_1;
    let var_1 = !(!(!(!(!vec4<bool>(arg_1, false, true, arg_1)))));
    var var_2 = func_6(func_5(func_2(~1u), func_2(1u), Struct_1(select(select(vec2<f32>(1131f, 381f), vec2<f32>(1293f, 1518f), vec2<bool>(true, arg_1)), -vec2<f32>(221f, -1463f), vec2<bool>(false, false)), min(floor(-404f), -848f), abs(abs(-797f)), select(var_1.xz, var_1.yz, func_4(true, -1731f, Struct_1(vec2<f32>(-778f, 443f), -371f, -1377f, vec2<bool>(true, var_1.x)))))), -(-147f) > sign(select(2358f, round(-1000f), arg_1)), ~(~u_input.b.x), -1000f);
    return arg_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~4294967295u;
    var var_1 = abs(u_input.a.x);
    let var_2 = Struct_1(-(-vec2<f32>(-(-1195f), -1236f - -652f)), -floor(323f), -(-1603f) / exp2(ceil(-(-102f))), vec2<bool>(all(!(!vec2<bool>(false, true))), 0u == func_1(~vec3<i32>(u_input.c, -31665i, u_input.a.x), true, u_input.e % vec2<u32>(70039u, 0u))));
    var_1 = (u_input.d * ~u_input.d) & u_input.a.x;
    var var_3 = all(!var_2.d);
    var_1 = abs(15174i);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(max(-35212i, firstTrailingBit(7427i) ^ 2147483647i), i32(-2147483648), u_input.a.x / (~(-1i) ^ u_input.c)), exp2(-((vec3<f32>(-266f, var_2.a.x, var_2.c) / vec3<f32>(var_2.c, var_2.a.x, 1000f)) * (vec3<f32>(var_2.c, -1000f, var_2.b) - vec3<f32>(var_2.b, var_2.c, 1742f)))), select(clamp(~firstLeadingBit(vec2<u32>(var_0, u_input.b.x)), ~u_input.b.zx, vec2<u32>(countOneBits(4294967295u), ~4294967295u)), abs(~(u_input.b.xz ^ vec2<u32>(9442u, var_0))), var_2.d));
}

