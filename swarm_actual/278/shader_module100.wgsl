// {"0:0":[173,60,143,117,187,117,110,3,32,181,147,13,146,191,113,137]}
// Seed: 13682648052843487288

struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: u32,
    d: vec2<u32>,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn func_3() -> i32 {
    global0 = max(2147483647i, -1i);
    global0 = ~(-26279i * i32(-2147483648));
    let var_0 = Struct_1(~(vec2<i32>(0i, -58037i) >> u_input.a.ww) ^ ((vec2<i32>(14313i, 8732i) & vec2<i32>(7784i, 0i)) ^ vec2<i32>(2147483647i, ~2147483647i)), !vec3<bool>(true, max(2147483647i, 17562i) < firstTrailingBit(0i), select(-39572i, i32(-2147483648), true) > 25810i), 74319u, u_input.a.wz, -644f);
    var var_1 = Struct_2(var_0.c, vec3<f32>(477f, var_0.e, -var_0.e / var_0.e), floor(vec2<f32>(-2034f, ceil(-1132f))), vec4<i32>(var_0.a.x, var_0.a.x, max(~(var_0.a.x ^ 22135i), var_0.a.x), firstTrailingBit(firstLeadingBit(1i)) >> var_0.d.x));
    var var_2 = u_input.a.x >> 0u;
    return (-(-(var_1.d.x - var_1.d.x)) & 6304i) * -(firstTrailingBit(22817i & var_0.a.x) ^ var_0.a.x);
}

fn func_2(arg_0: vec3<u32>) -> Struct_2 {
    var var_0 = Struct_1(vec2<i32>(-(i32(-2147483648) * -40995i), select(20083i / 2147483647i, 1i >> 32034u, !true) / func_3()), select(!vec3<bool>(false, !true, 2000f != -1354f), select(vec3<bool>(1218f > 1807f, !true, !false), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), !vec3<bool>(false, true, true)), any(vec2<bool>(1174f <= -1046f, any(vec4<bool>(true, true, true, true))))), ~u_input.a.x, u_input.a.zy, -718f);
    var_0 = Struct_1(var_0.a / var_0.a, select(vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x), var_0.b, any(select(select(vec3<bool>(false, var_0.b.x, var_0.b.x), vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x), false), var_0.b, all(vec4<bool>(var_0.b.x, false, true, false))))), dot(u_input.a.zxy, arg_0), vec2<u32>(0u, u_input.a.x), -(-381f));
    let var_1 = Struct_2(var_0.d.x, trunc(step(vec3<f32>(-1323f - var_0.e, -var_0.e, 1138f), vec3<f32>(round(var_0.e), var_0.e, -121f))), ((-vec2<f32>(336f, var_0.e) * vec2<f32>(-446f, var_0.e)) / min(vec2<f32>(718f, var_0.e), vec2<f32>(var_0.e, var_0.e))) * select(vec2<f32>(var_0.e * var_0.e, trunc(-498f)), vec2<f32>(ceil(-431f), 1513f), !vec2<bool>(false, true)), countOneBits(firstLeadingBit(select(vec4<i32>(83008i, 2147483647i, var_0.a.x, 12210i), vec4<i32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), false)) / -(vec4<i32>(1i, -1i, var_0.a.x, var_0.a.x) * vec4<i32>(-1i, -17241i, i32(-2147483648), var_0.a.x))));
    global0 = -(var_0.a.x - -var_1.d.x);
    global0 = -(~var_0.a.x) ^ (var_0.a.x >> var_1.a);
    return Struct_2(abs(abs(39604u)), -(var_1.b + vec3<f32>(716f * var_1.b.x, -(-1078f), -248f)), -var_1.c, vec4<i32>(var_0.a.x, -(-clamp(var_0.a.x, var_0.a.x, var_0.a.x)), var_1.d.x - ((-1i >> arg_0.x) * dot(var_0.a, var_1.d.xy)), clamp(-var_0.a.x % 1i, 44133i, clamp(dot(var_1.d.xy, var_0.a), var_1.d.x >> 69280u, ~(-1i)))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    var var_0 = -40893i;
    var_0 = i32(-2147483648);
    global0 = arg_0.d.x ^ dot(-arg_1.d.wx, vec2<i32>(arg_1.d.x, dot(firstTrailingBit(arg_1.d.wzy), arg_0.d.xyz)));
    var var_1 = func_2(vec3<u32>(u_input.a.x, ~u_input.a.x, ~(~select(u_input.a.x, 11586u, true))));
    var var_2 = Struct_1(select(~vec2<i32>(~var_1.d.x, arg_0.d.x % var_1.d.x), firstTrailingBit(var_1.d.xz & var_1.d.ww), !vec2<bool>(true, !false)), vec3<bool>(any(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false), vec3<bool>(false, false, true))), false, (~arg_1.d.x & firstLeadingBit(i32(-2147483648))) == (min(arg_0.d.x, 59008i) | arg_0.d.x)), var_1.a, u_input.a.yz, var_1.b.x);
    return Struct_1(-reverseBits(var_1.d.zz) * arg_1.d.yy, vec3<bool>(false, any(!(!vec4<bool>(var_2.b.x, false, var_2.b.x, false))), var_2.b.x), ~reverseBits((var_2.c & arg_0.a) ^ abs(u_input.a.x)), vec2<u32>(~((52026u / 87917u) / ~var_1.a), var_1.a), arg_0.c.x);
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: i32) -> f32 {
    let var_0 = func_2(u_input.a.zww);
    var var_1 = arg_0;
    var var_2 = u_input.a ^ vec4<u32>(~(arg_0.d.x % var_1.d.x) | ~select(28522u, 1u, arg_1), 1u, 1u, 15105u);
    var_1 = func_4(var_0, var_0);
    var var_3 = arg_0;
    return var_1.e - (204f - (func_2(select(u_input.a.wxy, vec3<u32>(1665u, var_0.a, u_input.a.x), false)).c.x - -1253f));
}

fn func_1(arg_0: vec4<i32>) -> i32 {
    let var_0 = step(2494f * -sign(min(1037f, -1234f)), func_5(func_4(Struct_2(max(0u, u_input.a.x), ceil(vec3<f32>(1419f, 915f, -682f)), -vec2<f32>(-171f, 435f), vec4<i32>(arg_0.x, arg_0.x, arg_0.x, 0i) % arg_0), func_2(vec3<u32>(u_input.a.x, u_input.a.x, 52210u) % vec3<u32>(u_input.a.x, 62015u, 1u))), false, ~arg_0.x));
    global0 = ~abs(~(~(~arg_0.x)));
    let var_1 = select(vec4<bool>(true, any(select(!vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), true)), (func_4(Struct_2(u_input.a.x, vec3<f32>(var_0, 392f, 455f), vec2<f32>(1828f, var_0), vec4<i32>(0i, arg_0.x, arg_0.x, -1i)), Struct_2(37667u, vec3<f32>(295f, var_0, -898f), vec2<f32>(-385f, 762f), vec4<i32>(2147483647i, arg_0.x, arg_0.x, arg_0.x))).a.x | (arg_0.x | -1i)) != (-arg_0.x << 10449u), any(vec3<bool>(!false, !false, all(vec3<bool>(false, true, false))))), vec4<bool>(!all(!vec2<bool>(false, false)), 4294967295u < ~abs(29035u), select(true, min(1u, 0u) > 15731u, all(vec4<bool>(false, false, true, false))), false), select(select(vec4<bool>(!false, true, select(true, true, false), true), !(!vec4<bool>(false, true, false, false)), select(!vec4<bool>(false, true, false, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), false), 68713u <= u_input.a.x)), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), true), !(!vec4<bool>(false, false, false, true)), false), select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, false), true), select(!vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true)), !any(vec2<bool>(true, true)))));
    global0 = ~1i;
    global0 = -arg_0.x;
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(max(clamp(vec2<i32>(2147483647i, func_1(vec4<i32>(-19463i, -30992i, 2147483647i, -1i))), -(vec2<i32>(1i, 1i) >> u_input.a.ww), ~(vec2<i32>(-15465i, 2147483647i) + vec2<i32>(1i, -29249i))), ~vec2<i32>(1i, -6250i) + -(vec2<i32>(0i, 0i) ^ vec2<i32>(2147483647i, i32(-2147483648)))), !select(!vec3<bool>(false, false, true), func_4(func_2(u_input.a.yxz), Struct_2(4294967295u, vec3<f32>(-392f, -1131f, -846f), vec2<f32>(-268f, -327f), vec4<i32>(i32(-2147483648), 15482i, -50366i, 43216i))).b, !true || !true), dot(firstTrailingBit(u_input.a << u_input.a) ^ max(u_input.a, ~vec4<u32>(u_input.a.x, 102601u, u_input.a.x, u_input.a.x)), (firstTrailingBit(u_input.a) / vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 23966u)) >> select(min(u_input.a, vec4<u32>(u_input.a.x, 0u, u_input.a.x, 44665u)), min(u_input.a, u_input.a), !vec4<bool>(true, true, false, true))), vec2<u32>(dot(vec3<u32>(dot(u_input.a.yw, vec2<u32>(u_input.a.x, 24848u)), u_input.a.x, clamp(50128u, u_input.a.x, 74791u)), vec3<u32>(min(u_input.a.x, u_input.a.x), 31920u / 1u, u_input.a.x << 62859u)), countOneBits(~(~u_input.a.x))), -(-1000f));
    global0 = firstTrailingBit(var_0.a.x);
    global0 = var_0.a.x;
    let var_1 = -var_0.e;
    let var_2 = func_2(vec3<u32>(8952u, 21736u, dot(clamp(u_input.a.yy, var_0.d, vec2<u32>(u_input.a.x, u_input.a.x)), clamp(u_input.a.yy, u_input.a.xx, vec2<u32>(u_input.a.x, var_0.d.x))) << ((u_input.a.x % u_input.a.x) * (24439u ^ u_input.a.x))));
    global0 = var_2.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(func_4(Struct_2(4294967295u & 38069u, round(vec3<f32>(var_0.e, var_2.b.x, 1935f)), -var_2.b.zx, var_2.d * var_2.d), var_2).e + ((1072f + (1000f * -473f)) - -246f), var_2.b);
}

