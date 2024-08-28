// {"0:0":[149,94,168,128]}
// Seed: 3939963258459320886

struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec3<u32>,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29> = array<u32, 29>(6898u, 40885u, 0u, 29611u, 1u, 1u, 8134u, 17364u, 62886u, 1u, 633u, 33328u, 57831u, 69020u, 0u, 14797u, 20330u, 55466u, 4294967295u, 35036u, 4779u, 24026u, 18892u, 14638u, 40821u, 0u, 4294967295u, 0u, 1u);

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = Struct_2(trunc(vec3<f32>(982f, -1117f, -453f)));
    var var_1 = global0[46898u];
    var_0 = Struct_2(-(sign(vec3<f32>(var_0.a.x, -133f, -1583f) / vec3<f32>(var_0.a.x, var_0.a.x, 453f)) / select(var_0.a, var_0.a, false)));
    var var_2 = arg_0;
    let var_3 = Struct_2(-var_0.a);
    return !(!false || !(-2001f < -(-1096f)));
}

fn func_2(arg_0: vec4<u32>) -> vec4<bool> {
    global0 = array<u32, 29>();
    global0 = array<u32, 29>();
    global0 = array<u32, 29>();
    global0 = array<u32, 29>();
    let var_0 = func_3(Struct_1(~0i, ~vec4<i32>(u_input.a, 0i, -4093i, u_input.a) % ~(~vec4<i32>(26981i, u_input.a, u_input.a, u_input.a)), -((vec3<i32>(u_input.a, u_input.a, 20927i) / vec3<i32>(-1i, 4822i, 42337i)) / vec3<i32>(u_input.a, -7620i, i32(-2147483648)))));
    return vec4<bool>(var_0, all(select(!vec3<bool>(var_0, false, var_0), !vec3<bool>(var_0, var_0, var_0), vec3<bool>(!var_0, any(vec3<bool>(var_0, true, false)), true))), any(!(!(!vec2<bool>(var_0, var_0)))), true);
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    var var_0 = (exp2(144f) * -434f) - (((-(-713f) / round(-766f)) / (-(-661f) * (1556f + -296f))) * -(trunc(-578f) * (-1002f / -628f)));
    var var_1 = -162f;
    let var_2 = reverseBits(select(firstLeadingBit(vec4<u32>(global0[4294967295u], global0[global0[0u]], 19304u, global0[4294967295u])), vec4<u32>(global0[0u], global0[0u], 36826u, 12554u) | vec4<u32>(14476u, 51915u, 1u, global0[global0[0u]]), func_2(vec4<u32>(48656u, 1u, 4294967295u, 1u))) & ~countOneBits(vec4<u32>(4294967295u, 55553u, 1u, 5463u))) & select(~vec4<u32>(global0[~0u], global0[26921u] & 28956u, 0u, global0[4294967295u & global0[4294967295u]]), abs(vec4<u32>(1u << 1u, 60068u, global0[0u & global0[4294967295u]], global0[0u])), any(func_2(~vec4<u32>(30137u, global0[10339u], global0[global0[global0[global0[global0[global0[global0[0u]]]]]]], 1u))));
    global0 = array<u32, 29>();
    var_0 = (((1150f - step(759f, -924f)) - (-410f - -412f)) * (-select(-125f, -1056f, false) / -(827f * 940f))) / -318f;
    return Struct_1(clamp(select((0i + u_input.a) | u_input.a, -1i, any(func_2(vec4<u32>(var_2.x, 4294967295u, global0[var_2.x], 1u)).yyy)), arg_0.x, arg_0.x), arg_0, vec3<i32>(-u_input.a, dot(vec2<i32>(-1i, -17112i), vec2<i32>(2895i, u_input.a)), arg_0.x) << ((~vec3<u32>(global0[global0[var_2.x]], 0u, 41945u) / (var_2.zxw & var_2.wxw)) % (firstTrailingBit(vec3<u32>(51155u, global0[global0[0u]], 1u)) * countOneBits(var_2.wzx))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: u32) -> vec3<bool> {
    global0 = array<u32, 29>();
    var var_0 = select(select(vec3<bool>(dot(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, 28819i, -31272i, arg_0.a)) > (-18509i & 2147483647i), !all(vec3<bool>(true, true, true)), true || any(vec2<bool>(false, true))), func_2(select(firstTrailingBit(vec4<u32>(4294967295u, arg_2, 12428u, 1u)), vec4<u32>(arg_2, arg_2, 4294967295u, 4294967295u) + vec4<u32>(98785u, global0[global0[103667u]], 49565u, arg_2), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), true))).yxw, vec3<bool>(!(!false), !false == !true, (0u != arg_2) || false)), vec3<bool>(true, !(any(vec3<bool>(true, true, true)) & !false), !(!true || !true)), select(vec3<bool>(arg_0.b.x <= (arg_0.b.x - 5426i), !true || true, arg_2 <= (1u >> 1u)), !vec3<bool>(func_2(vec4<u32>(arg_2, global0[0u], 1u, arg_2)).x, false, any(vec4<bool>(false, false, true, true))), !false));
    let var_1 = Struct_2(floor(sign(-vec3<f32>(-385f, arg_1, arg_1))) + (-(-vec3<f32>(arg_1, -857f, arg_1)) * vec3<f32>(arg_1, round(arg_1), -arg_1)));
    var var_2 = Struct_2(-(trunc(vec3<f32>(arg_1, 128f, 1104f)) - var_1.a));
    global0 = array<u32, 29>();
    return vec3<bool>(var_0.x, func_3(arg_0), sign(arg_1) > var_1.a.x);
}

fn func_5(arg_0: vec3<bool>, arg_1: f32) -> Struct_2 {
    var var_0 = 638f * -trunc(ceil(arg_1));
    var var_1 = Struct_1((abs(-2068i) & -(-35350i + 7937i)) * select(countOneBits(-7894i), -u_input.a, select(!arg_0.x, func_4(Struct_1(u_input.a, vec4<i32>(0i, u_input.a, -32026i, u_input.a), vec3<i32>(u_input.a, u_input.a, 1i)), arg_1, 14315u).x, any(vec4<bool>(arg_0.x, false, false, false)))), vec4<i32>(dot(-max(vec4<i32>(2147483647i, -34658i, 43812i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), (vec4<i32>(20302i, -37801i, u_input.a, 0i) % vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)) & countOneBits(vec4<i32>(u_input.a, u_input.a, u_input.a, 8178i))), u_input.a, -18138i, ~u_input.a), firstTrailingBit(select(~vec3<i32>(i32(-2147483648), 51841i, u_input.a) - -vec3<i32>(u_input.a, 24587i, u_input.a), func_1(vec4<i32>(53711i, 18146i, 15411i, u_input.a)).b.wxy, vec3<bool>(true, 0i != 1i, !arg_0.x))));
    return Struct_2(vec3<f32>(round(exp2(arg_1)), step(arg_1 / arg_1, -742f * -978f), arg_1));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = -47499i;
    let var_1 = 261f;
    let var_2 = arg_0;
    let var_3 = -vec4<f32>(arg_0.a.x, ceil(select(-859f, arg_0.a.x * var_1, false)), abs(1017f), 1551f);
    var var_4 = arg_0;
    return Struct_1(-u_input.a, arg_1.b, vec3<i32>(u_input.a, -1i, -u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.a, max((vec4<i32>(u_input.a, u_input.a, u_input.a, 1i) << min(vec4<u32>(global0[1425u], global0[global0[global0[global0[69348u]]]], global0[global0[36654u]], 46505u), vec4<u32>(31790u, 1u, 0u, global0[41384u]))) | -countOneBits(vec4<i32>(12462i, 0i, u_input.a, u_input.a)), vec4<i32>(dot(vec3<i32>(u_input.a, i32(-2147483648), u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a)), 2147483647i - u_input.a, ~29512i, -7142i) << vec4<u32>(~global0[1u], ~global0[global0[global0[global0[global0[41782u]]]]], global0[countOneBits(global0[global0[global0[2568u]]])], 23940u)), min(vec3<i32>(countOneBits(u_input.a) / (-26821i & 2147483647i), u_input.a, -2147483647i >> abs(global0[global0[18836u]])), max(-vec3<i32>(0i, 53623i, i32(-2147483648)), vec3<i32>(u_input.a, u_input.a, u_input.a)) * vec3<i32>(~u_input.a, -u_input.a, u_input.a)));
    global0 = array<u32, 29>();
    global0 = array<u32, 29>();
    global0 = array<u32, 29>();
    var var_1 = func_6(func_5(func_4(func_1(clamp(var_0.b, var_0.b, var_0.b)), 172f, abs(32424u | 832u)), -1445f), func_1(var_0.b), var_0.b * abs(var_0.b + var_0.b), Struct_1(6986i % ~(-1i), -(vec4<i32>(var_0.c.x, var_0.b.x, -22082i, 1i) >> firstTrailingBit(vec4<u32>(4294967295u, 1u, 0u, 0u))), vec3<i32>(-11231i, dot(vec2<i32>(1i, -1i) ^ var_0.b.zy, clamp(var_0.b.xy, var_0.b.wz, vec2<i32>(-1i, var_0.c.x))), 41108i)));
    var var_2 = func_6(func_5(vec3<bool>(!false, any(!vec3<bool>(true, true, true)), any(!vec3<bool>(true, true, true))), trunc(trunc(ceil(1812f)))), var_0, ~var_1.b, func_1(var_1.b));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(vec3<u32>(26730u, 5908u, 70289u) >> vec3<u32>(36425u, 1u, global0[global0[global0[global0[5493u]]]])) >> abs(min(vec3<u32>(47779u, global0[91569u], global0[global0[global0[global0[global0[global0[global0[global0[10065u]]]]]]]]), vec3<u32>(41830u, global0[34077u], 35353u)))), -1000f, clamp(firstTrailingBit(vec3<u32>(global0[global0[global0[0u]]], global0[1u], firstTrailingBit(global0[0u]))), ~vec3<u32>(global0[31887u * 0u], global0[~global0[global0[global0[global0[global0[global0[0u]]]]]]], ~94944u), select(abs(min(vec3<u32>(37648u, 39575u, global0[1u]), vec3<u32>(global0[4294967295u], global0[30664u], global0[global0[37978u]]))), min(vec3<u32>(global0[1u], 107743u, 18492u) % vec3<u32>(global0[global0[43883u]], 0u, global0[global0[15108u]]), vec3<u32>(50321u, global0[global0[global0[0u]]], global0[global0[global0[1u]]])), select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false), !vec3<bool>(true, false, false), !vec3<bool>(true, true, false)))), vec3<u32>(global0[4294967295u], (global0[24726u] & 0u) % reverseBits(~682u), 1u), u_input.a);
}

