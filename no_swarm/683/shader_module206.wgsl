// {"0:0":[90,6,194,100]}
// Seed: 140978049815576523

struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<i32>,
    d: vec3<bool>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: i32,
    b: vec4<bool>,
    c: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: Struct_4,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<f32>,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_3, arg_3: Struct_4) -> vec3<i32> {
    var var_0 = select(select(min(vec2<f32>(arg_3.a.a.a, arg_3.a.a.e) * vec2<f32>(283f, -1027f), vec2<f32>(arg_3.a.a.e, arg_3.a.a.a) - vec2<f32>(arg_3.a.a.a, arg_3.a.a.e)) * floor(vec2<f32>(arg_3.a.a.e, arg_3.a.a.e)), exp2(-vec2<f32>(arg_3.a.a.e, 758f)), !select(vec2<bool>(true, true), select(vec2<bool>(arg_1, true), vec2<bool>(arg_3.a.b, arg_2.b.x), vec2<bool>(true, true)), arg_1 && arg_2.b.x)), min(step(vec2<f32>(1509f, arg_3.a.a.a) / vec2<f32>(-1778f, arg_3.a.a.a), -vec2<f32>(arg_3.a.a.e, arg_3.a.a.e)), vec2<f32>(select(1398f, arg_3.a.a.e, false), -arg_3.a.a.a)) * vec2<f32>(-(605f - arg_3.a.a.a), 2135f), !vec2<bool>(any(!vec2<bool>(arg_2.b.x, arg_2.b.x)), arg_3.a.b));
    let var_1 = Struct_2(Struct_1(var_0.x * var_0.x, -1i < arg_2.c.x, arg_2.c + ~(-arg_3.a.a.c), vec3<bool>(arg_1, !(arg_0.x <= 2620u), false), var_0.x * exp2(var_0.x)), all(!select(vec3<bool>(true, false, arg_2.b.x), vec3<bool>(false, arg_1, arg_1), arg_1)));
    var_0 = vec2<f32>(-(var_1.a.e - -var_1.a.e), -trunc(trunc(ceil(arg_3.a.a.e))));
    var var_2 = 1539f;
    var var_3 = ~arg_0.x;
    return var_1.a.c;
}

fn func_2(arg_0: vec2<f32>) -> Struct_2 {
    let var_0 = Struct_1((arg_0.x + arg_0.x) + -489f, !(false | !(true & true)), ~((func_3(vec2<u32>(0u, 0u), false, Struct_3(1i, vec4<bool>(false, false, true, true), vec3<i32>(49036i, 5455i, 19169i)), Struct_4(Struct_2(Struct_1(arg_0.x, true, vec3<i32>(u_input.a, 33790i, 34732i), vec3<bool>(true, true, true), arg_0.x), false))) * countOneBits(vec3<i32>(1i, i32(-2147483648), u_input.a))) >> max(vec3<u32>(0u, 15533u, 21900u), ~vec3<u32>(1u, 35646u, 1u))), !vec3<bool>(!false, true, any(vec3<bool>(true, true, true))), floor(floor(-233f)));
    var var_1 = (vec2<u32>(firstTrailingBit(min(4294967295u, 4294967295u)), ~60963u + (4294967295u << 27108u)) - abs(~vec2<u32>(130766u, 23678u))) + clamp(reverseBits(~max(vec2<u32>(23665u, 17052u), vec2<u32>(0u, 5363u))), firstTrailingBit(vec2<u32>(9845u - 32258u, abs(4294967295u))), (~vec2<u32>(77925u, 9259u) & (vec2<u32>(4294967295u, 18715u) | vec2<u32>(100872u, 40723u))) >> ~(vec2<u32>(0u, 0u) - vec2<u32>(4294967295u, 106981u)));
    var var_2 = select(step(-(-191f), abs(233f)) + (-(-632f) + arg_0.x), ((-(-1528f) / (var_0.e * 1469f)) + -var_0.e) - sign(var_0.e), any(!(!vec4<bool>(var_0.d.x, var_0.b, true, var_0.d.x))));
    var_2 = arg_0.x;
    let var_3 = var_1.x;
    return Struct_2(var_0, false);
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = Struct_5(-arg_1.a.e >= func_2(min(vec2<f32>(arg_2.a, -1299f), -vec2<f32>(arg_2.a, arg_1.a.e))).a.a, func_2(step(vec2<f32>(180f, -arg_1.a.e), select(vec2<f32>(arg_1.a.a, -1865f), vec2<f32>(-455f, arg_2.a), true) - vec2<f32>(-530f, 351f))), Struct_4(func_2(floor(vec2<f32>(arg_2.e, arg_1.a.a)) / select(vec2<f32>(arg_2.e, arg_1.a.e), vec2<f32>(1011f, 2670f), arg_2.d.zz))));
    var var_1 = 29850u;
    let var_2 = Struct_5(func_2(min(vec2<f32>(-329f - 265f, arg_2.e), -ceil(vec2<f32>(arg_1.a.e, arg_2.e)))).b, arg_1, Struct_4(Struct_2(Struct_1(step(arg_2.a, -823f), false, vec3<i32>(9572i, 0i, 2147483647i), var_0.c.a.a.d, 1299f), !(false & arg_0))));
    var var_3 = ~(~(~((1u & 31445u) >> reverseBits(0u))));
    let var_4 = min(~(~vec2<u32>(dot(vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 0u)), firstTrailingBit(34514u))), vec2<u32>(clamp((0u & 1u) * (1u % 1u), ~abs(0u), 52990u % ~0u), (4294967295u / 57434u) ^ 4294967295u));
    return vec2<bool>(func_2(-sign(vec2<f32>(-733f, 1381f))).a.d.x, any(vec3<bool>(~9920u > var_4.x, all(var_0.b.a.d.xy), 1u >= select(var_4.x, var_4.x, arg_0))));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: bool) -> vec2<f32> {
    let var_0 = -(~countOneBits(countOneBits(vec4<i32>(10674i, -27591i, arg_1.a.a.c.x, 2147483647i)) ^ -vec4<i32>(arg_1.a.a.c.x, arg_1.a.a.c.x, -4603i, arg_1.a.a.c.x)));
    let var_1 = select(!(!func_4(-53305i >= u_input.a, func_2(vec2<f32>(-1079f, arg_1.a.a.e)), func_2(arg_0).a)), !arg_1.a.a.d.zy, false);
    let var_2 = arg_1;
    return exp2(-(-arg_0 - floor(arg_0))) / vec2<f32>(-992f / (ceil(1266f) - arg_1.a.a.e), arg_1.a.a.a);
}

fn func_5(arg_0: vec2<f32>, arg_1: vec3<u32>) -> f32 {
    let var_0 = Struct_5(any(select(!vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, true), true), !(!true))), Struct_2(Struct_1(arg_0.x, (38212u << 1u) >= max(62078u, arg_1.x), reverseBits(max(vec3<i32>(u_input.a, 2147483647i, u_input.a), vec3<i32>(u_input.a, i32(-2147483648), u_input.a))), vec3<bool>(!true, 17012u <= arg_1.x, select(false, false, false)), (arg_0.x - 529f) / (1113f * arg_0.x)), 37475u >= ((0u / arg_1.x) * abs(15076u))), Struct_4(Struct_2(Struct_1(arg_0.x, !false, -vec3<i32>(45521i, -44651i, u_input.a), !vec3<bool>(true, false, true), max(611f, 1000f)), !true)));
    var var_1 = u_input.a;
    var_1 = var_0.c.a.a.c.x;
    var_1 = 2147483647i;
    var var_2 = select(!(!vec4<bool>(false, !false, false, !var_0.a)), vec4<bool>(var_0.c.a.a.a < var_0.b.a.e, func_4(!func_4(false, var_0.b, var_0.c.a.a).x, var_0.b, var_0.b.a).x, func_4(true, Struct_2(func_2(arg_0).a, false && true), func_2(select(vec2<f32>(var_0.b.a.a, -1000f), vec2<f32>(-1046f, 1003f), var_0.b.a.d.yy)).a).x, true), !(!(var_0.b.a.a <= -arg_0.x)));
    return -(arg_0.x - (step(-var_0.c.a.a.e, arg_0.x) / select(arg_0.x - var_0.b.a.a, floor(var_0.c.a.a.a), all(vec4<bool>(true, var_2.x, false, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(func_5(-func_1(vec2<f32>(-812f, -1947f), Struct_4(Struct_2(Struct_1(-822f, true, vec3<i32>(u_input.a, -17347i, u_input.a), vec3<bool>(true, false, true), -469f), true)), false), vec3<u32>(dot(vec2<u32>(94728u, 28832u), vec2<u32>(0u, 1u)), 16253u, ~83219u)) >= func_2(abs(vec2<f32>(513f, -889f)) - (vec2<f32>(-1466f, -598f) * vec2<f32>(-350f, -106f))).a.e, func_2(-vec2<f32>(-(-1000f), floor(960f))), Struct_4(func_2(vec2<f32>(-156f, func_2(vec2<f32>(891f, -2385f)).a.e))));
    let var_1 = sign(vec4<f32>(-round(-1478f), -(-(-430f) + -(-1000f)), -((-160f / 296f) - -var_0.b.a.a), -1560f * -(-1004f)));
    let var_2 = vec2<bool>(!(var_0.c.a.a.d.x != false), var_0.b.b);
    var_0 = Struct_5(func_4(var_0.b.b, func_2(var_1.yy), func_2(var_1.yw + step(var_1.zw, vec2<f32>(var_1.x, var_0.b.a.e))).a).x, Struct_2(Struct_1(-step(var_0.c.a.a.e, var_0.c.a.a.a), u_input.a != ~var_0.b.a.c.x, select(var_0.b.a.c, abs(vec3<i32>(0i, u_input.a, -1i)), all(vec4<bool>(var_2.x, false, true, false))), !var_0.b.a.d, trunc(var_1.x)), var_2.x), var_0.c);
    var var_3 = var_0.b;
    var_0 = Struct_5(false, func_2(-(vec2<f32>(1044f, 1388f) - (var_1.zy + vec2<f32>(457f, -3945f)))), var_0.c);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(var_0.c.a.a.c.xy), ~(-9936i), vec3<f32>(-(-(-394f + -469f)), -(-425f), -(-1000f + (var_1.x - -475f))), vec4<u32>((firstTrailingBit(1u) & (5941u ^ 37999u)) * (1u / 40219u), 0u * 8046u, ~0u / dot(vec4<u32>(0u, 36116u, 4294967295u, 20905u) % vec4<u32>(1u, 47140u, 23715u, 25771u), select(vec4<u32>(1167u, 4294967295u, 20747u, 44508u), vec4<u32>(9579u, 0u, 0u, 0u), var_2.x)), (4294967295u >> ~12768u) ^ ~(4294967295u / 4294967295u)), clamp(~func_2(vec2<f32>(812f, var_1.x)).a.c.x + (min(u_input.a, var_3.a.c.x) / var_3.a.c.x), -1i, (u_input.a - ~var_3.a.c.x) >> ~1u));
}

