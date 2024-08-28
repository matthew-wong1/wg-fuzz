// {"0:0":[83,232,253,213,158,254,184,154,198,160,94,105,242,11,47,131]}
// Seed: 13735735486515807275

struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1;

var<private> global2: array<vec3<bool>, 23> = array<vec3<bool>, 23>(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true));

var<private> global3: i32 = 2147483647i;

var<private> global4: array<i32, 21>;

fn func_3(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: f32) -> i32 {
    global4 = array<i32, 21>();
    var var_0 = vec2<f32>(-(((arg_2 + -1282f) - arg_0.x) + arg_0.x), min(min(-189f, exp2(arg_0.x)), -1484f));
    var var_1 = -(1975f + -836f);
    var_1 = -max(trunc(var_0.x), var_0.x);
    global3 = global1.d.x;
    return ~dot(u_input.a.zyz + max(u_input.a.yzy & global1.d, countOneBits(vec3<i32>(global4[global1.b], global4[1u], u_input.a.x))), countOneBits(~global1.d));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec4<i32>) -> bool {
    global2 = array<vec3<bool>, 23>();
    var var_0 = ~global1.b;
    let var_1 = reverseBits(dot(abs(clamp(vec2<i32>(global1.c, u_input.a.x), vec2<i32>(global4[4294967295u], u_input.a.x), u_input.a.zw)), firstLeadingBit(reverseBits(vec2<i32>(i32(-2147483648), arg_2.x))))) + max(max(2147483647i, select(i32(-2147483648), u_input.a.x, global1.a.x) >> 1u), global1.d.x);
    let var_2 = Struct_2(arg_1.a, select(global1.a.yy, arg_0.zz, vec2<bool>(all(vec4<bool>(true, true, arg_0.x, arg_1.b.x)), !(arg_0.x || arg_0.x))));
    global0 = ~func_3(vec3<f32>(1000f + -1000f, -1000f, -166f / (711f * 1000f)), select(vec4<bool>(false, false, !true, global1.a.x), select(vec4<bool>(arg_0.x, var_2.b.x, true, var_2.b.x), arg_1.a, any(global1.a)), !true), max(max(822f, round(1527f)), -1845f + 842f));
    return all(!(!var_2.a.ywy)) & false;
}

fn func_2(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = !vec4<bool>(all(select(!global1.a.xz, arg_0.a.xz, 18601u != arg_0.b)), !false, false, 4294967295u >= (~0u - 4294967295u));
    var var_1 = arg_0.b;
    let var_2 = Struct_2(select(!select(!vec4<bool>(global1.a.x, arg_0.a.x, false, false), vec4<bool>(true, arg_0.a.x, arg_0.a.x, false), !var_0.x), select(select(vec4<bool>(true, false, false, global1.a.x), !vec4<bool>(global1.a.x, false, var_0.x, false), !true), vec4<bool>(-1000f <= 605f, !arg_0.a.x, !var_0.x, var_0.x), var_0.x), var_0.x), !(!global1.a.zz));
    var_0 = vec4<bool>(!arg_0.a.x, false, arg_0.a.x, func_4(select(vec3<bool>(global1.a.x || true, true, all(vec3<bool>(var_2.b.x, var_2.a.x, false))), select(!var_0.xww, vec3<bool>(global1.a.x, arg_0.a.x, global1.a.x), var_0.zxx), firstTrailingBit(11851i) != arg_0.d.x), Struct_2(!vec4<bool>(false, false, false, true), select(select(var_0.wx, vec2<bool>(false, true), arg_0.a.x), global1.a.yx, select(var_0.yw, vec2<bool>(true, arg_0.a.x), true))), countOneBits(vec4<i32>(firstTrailingBit(arg_0.d.x), func_3(vec3<f32>(1315f, 522f, 329f), var_2.a, 442f), -1i, max(arg_0.d.x, -1107i)))));
    let var_3 = !false;
    return ~firstTrailingBit(~(~vec4<u32>(arg_0.b, 21763u, global1.b, arg_0.b))) - ~(~(~(vec4<u32>(0u, global1.b, global1.b, 35819u) - vec4<u32>(arg_0.b, 47443u, 0u, global1.b))));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = func_2(Struct_1(!(!select(arg_2.a, global2[arg_0.x], global1.a.x)), (max(0u, arg_2.b) / ~arg_2.b) / ~arg_2.b, -25696i, arg_3.d));
    global3 = firstLeadingBit(i32(-2147483648) << ~(arg_2.b % global1.b));
    let var_1 = min(4294967295u, arg_3.b);
    let var_2 = round(-(-1139f) - -224f) > (-(-2535f) / (step(round(-744f), -137f) / (abs(1000f) * -1350f)));
    var var_3 = global4[arg_3.b ^ dot(var_0, vec4<u32>(var_0.x, reverseBits(0u ^ 4294967295u), abs(var_0.x ^ arg_0.x), ~func_2(arg_3).x))];
    return vec2<bool>(select(global1.a.x, !(arg_3.b < 81767u) && any(!vec2<bool>(arg_3.a.x, true)), func_4(select(!arg_3.a, !vec3<bool>(true, true, true), func_4(vec3<bool>(var_2, true, false), Struct_2(vec4<bool>(var_2, arg_2.a.x, false, arg_3.a.x), arg_2.a.yz), arg_1)), Struct_2(!vec4<bool>(var_2, arg_2.a.x, true, arg_3.a.x), global1.a.xy), u_input.a)), -1000f == sign(-select(781f, 101f, false)));
}

fn func_5(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: Struct_2) -> Struct_2 {
    global4 = array<i32, 21>();
    var var_0 = Struct_1(arg_2.a.wxz, 2439u, ~(-19230i), vec3<i32>(0i, arg_0.x, -3754i));
    let var_1 = Struct_1(select(global1.a, !vec3<bool>(-170f == -395f, false, !var_0.a.x), false), 28419u, var_0.d.x, global1.d);
    var var_2 = vec4<i32>(var_0.c, dot(vec2<i32>(dot(arg_0.yx, vec2<i32>(-2305i, -19256i)), -44932i), -arg_0.zx - vec2<i32>(arg_0.x, 1i)), 20924i, -6498i) / vec4<i32>(var_0.d.x, var_1.c, firstLeadingBit(abs(u_input.a.x)), -31852i);
    var var_3 = !select(select(vec4<bool>(!global1.a.x, all(vec2<bool>(var_0.a.x, true)), 30151i >= var_1.d.x, any(arg_2.a)), !vec4<bool>(var_1.a.x, var_0.a.x, var_0.a.x, var_1.a.x), vec4<bool>(false, false, false, arg_2.a.x)), vec4<bool>(var_1.a.x, (292f != 126f) | arg_2.b.x, (false && false) && arg_1.x, true), arg_2.b.x);
    return arg_2;
}

fn func_6(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(select(select(arg_0.a, arg_0.a, arg_0.a.x), !arg_0.a, true), vec2<bool>(all(vec2<bool>(arg_1.x == arg_1.x, arg_2.a.x)), arg_2.a.x));
    let var_1 = global2[~select(14741u, arg_1.x << 4294967295u, any(var_0.a))];
    global4 = array<i32, 21>();
    var var_2 = var_0;
    global4 = array<i32, 21>();
    return Struct_1(global1.a, dot(vec2<u32>(1043u, 0u), (abs(arg_1) >> arg_1) | (max(vec2<u32>(global1.b, 25442u), vec2<u32>(38706u, global1.b)) >> (arg_1 - arg_1))), 23637i, u_input.a.yxw);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_6(func_5(vec3<i32>(-(global1.d.x & -1i), 2147483647i % ~u_input.a.x, u_input.a.x), !vec2<bool>(!true, global1.a.x), Struct_2(!select(vec4<bool>(false, global1.a.x, global1.a.x, global1.a.x), vec4<bool>(false, global1.a.x, global1.a.x, global1.a.x), global1.a.x), !func_1(vec3<u32>(global1.b, 8299u, global1.b), vec4<i32>(u_input.a.x, 2147483647i, 25102i, global1.c), Struct_1(vec3<bool>(global1.a.x, false, true), 31564u, u_input.a.x, global1.d), Struct_1(vec3<bool>(global1.a.x, true, global1.a.x), global1.b, global4[global1.b], u_input.a.yyx)))), firstTrailingBit(~abs(max(vec2<u32>(4294967295u, global1.b), vec2<u32>(0u, global1.b)))), Struct_1(global2[3647u], 58820u, -11254i, -u_input.a.zwy));
    var var_0 = ~vec4<u32>(~(~45454u) + min(global1.b, ~61994u), min(func_6(Struct_2(vec4<bool>(global1.a.x, true, global1.a.x, false), vec2<bool>(true, global1.a.x)), vec2<u32>(0u, 1u), Struct_1(vec3<bool>(global1.a.x, true, global1.a.x), global1.b, global4[25608u], global1.d)).b * global1.b, ~(~0u)), func_2(func_6(func_5(vec3<i32>(u_input.a.x, global1.c, u_input.a.x), vec2<bool>(false, false), Struct_2(vec4<bool>(global1.a.x, false, global1.a.x, true), global1.a.xy)), select(vec2<u32>(global1.b, 1u), vec2<u32>(34600u, global1.b), true), Struct_1(vec3<bool>(false, global1.a.x, global1.a.x), global1.b, global1.c, vec3<i32>(37664i, -69470i, u_input.a.x)))).x, 80698u);
    global3 = dot(u_input.a, ~(u_input.a | vec4<i32>(0i, global1.c << var_0.x, u_input.a.x & global4[global1.b], ~global1.c)));
    let var_1 = Struct_1(!select(global1.a, !select(global2[global1.b], vec3<bool>(global1.a.x, global1.a.x, true), global2[var_0.x]), !vec3<bool>(true, global1.a.x, global1.a.x)), global1.b, -func_3(-vec3<f32>(138f, 1917f, 993f), select(vec4<bool>(global1.a.x, false, global1.a.x, false), vec4<bool>(false, false, true, false), false), trunc(369f)) | ~(~(0i / global1.d.x)), firstLeadingBit((global1.d >> var_0.zxw) * -select(vec3<i32>(12752i, -9745i, 18222i), vec3<i32>(-16817i, -30092i, global4[2004u]), global1.a)));
    var var_2 = select(((firstTrailingBit(u_input.a.x) - u_input.a.x) ^ dot(firstLeadingBit(u_input.a), min(u_input.a, vec4<i32>(u_input.a.x, global4[var_1.b], -1i, u_input.a.x)))) << 38388u, -1i, func_5(vec3<i32>(u_input.a.x, ~(global4[var_1.b] * 2147483647i), firstLeadingBit(-1i)), vec2<bool>(global1.d.x == (global4[21304u] * var_1.d.x), global1.a.x), Struct_2(select(func_5(global1.d, vec2<bool>(global1.a.x, false), Struct_2(vec4<bool>(false, false, false, false), var_1.a.zz)).a, !vec4<bool>(false, true, false, false), select(vec4<bool>(global1.a.x, false, true, global1.a.x), vec4<bool>(var_1.a.x, true, global1.a.x, var_1.a.x), var_1.a.x)), select(!var_1.a.yx, vec2<bool>(true, var_1.a.x), true))).b.x);
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(42797i), u_input.a.ww, (((vec4<f32>(514f, -820f, -144f, -253f) * vec4<f32>(932f, 1107f, 634f, -636f)) / vec4<f32>(129f, -582f, 353f, -383f)) / -ceil(vec4<f32>(-173f, -232f, 735f, -1773f))) / vec4<f32>(-(-1794f), max(sign(1472f), 1122f + -410f), -(-1460f), -(-109f) / (679f * -365f)));
}

