// {"0:0":[162,128,231,41,105,248,198,10,209,50,203,180,106,190,104,46,203,125,131,113,146,117,162,210,83,16,81,163,198,183,225,171,108,220,112,242,138,187,125,249,200,244,117,173,193,175,34,217,132,76,14,214,230,83,165,188,13,139,111,221,66,233,63,211]}
// Seed: 1754357141578772031

struct Struct_1 {
    a: bool,
    b: u32,
    c: bool,
    d: bool,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: vec4<f32>,
}

struct Struct_4 {
    a: bool,
    b: f32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec4<u32>;

var<private> global2: Struct_4;

var<private> global3: vec2<bool>;

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_4, arg_3: bool) -> i32 {
    global2 = Struct_4(global3.x, arg_2.b);
    let var_0 = vec4<i32>(u_input.c.x, ((~u_input.c.x / ~u_input.a.x) << (5513u ^ u_input.b)) ^ (-100791i >> u_input.b), -clamp(u_input.a.x, min(u_input.a.x, u_input.c.x), clamp(u_input.a.x, u_input.c.x, u_input.c.x)) & (u_input.c.x - (1i / abs(1i))), u_input.c.x - (abs(firstTrailingBit(1i)) << 0u));
    let var_1 = arg_2;
    var var_2 = ~(~48223u);
    global3 = select(vec2<bool>(false, all(!(!vec4<bool>(global3.x, var_1.a, global2.a, var_1.a)))), select(select(!(!vec2<bool>(arg_0.c.d, arg_0.c.d)), vec2<bool>(arg_3, true), var_1.b <= -618f), select(!select(vec2<bool>(true, false), vec2<bool>(false, arg_3), vec2<bool>(arg_0.b.d, false)), vec2<bool>(false, arg_3), vec2<bool>(all(vec2<bool>(var_1.a, global3.x)), arg_3)), true), all(!(!(!vec3<bool>(false, true, arg_0.b.c)))));
    return i32(-2147483648);
}

fn func_2() -> i32 {
    let var_0 = Struct_5(select(~select(vec4<i32>(u_input.a.x, u_input.c.x, 2147483647i, 48586i), u_input.c | u_input.c, vec4<bool>(global3.x, global2.a, global3.x, false)), clamp(select(vec4<i32>(u_input.a.x, 20526i, 558i, -9836i), u_input.c, vec4<bool>(global3.x, true, global3.x, global2.a)) | (u_input.c & u_input.c), abs(-vec4<i32>(u_input.c.x, -12693i, 0i, u_input.c.x)), vec4<i32>(-2147483647i, -(i32(-2147483648)), func_3(Struct_2(Struct_1(true, 106959u, true, global2.a, vec4<u32>(global1.x, 1u, global1.x, 108530u)), Struct_1(global3.x, global1.x, true, true, vec4<u32>(global1.x, 19182u, 0u, 15008u)), Struct_1(false, 71841u, true, global2.a, vec4<u32>(4294967295u, global1.x, u_input.b, 33272u))), vec4<u32>(u_input.d, 4294967295u, u_input.e.x, 43577u), Struct_4(false, 1525f), global2.a), u_input.c.x << 0u)), global2.a), global1.yyz >> ~max(vec3<u32>(global1.x, 62234u, 4294967295u) * vec3<u32>(37399u, u_input.b, global1.x), ~u_input.e));
    let var_1 = ceil(-((vec3<f32>(-1000f, global2.b, global2.b) / vec3<f32>(1130f, 824f, -461f)) + -select(vec3<f32>(global2.b, global2.b, global2.b), vec3<f32>(-546f, global2.b, 626f), false)));
    global2 = Struct_4(all(select(select(select(vec3<bool>(false, global3.x, global3.x), vec3<bool>(global2.a, global3.x, false), false), !vec3<bool>(false, global3.x, global2.a), all(vec3<bool>(global2.a, global3.x, global2.a))), !(!vec3<bool>(false, false, global3.x)), -var_0.a.x < abs(var_0.a.x))), exp2(sign(floor(var_1.x))) - exp2(var_1.x - (-643f - -1667f)));
    var var_2 = var_0.a.yyz;
    var var_3 = !select(!select(vec4<bool>(true, false, true, global2.a), vec4<bool>(true, false, false, global3.x), false), vec4<bool>(!false, !(var_0.a.x < u_input.c.x), false, all(!vec2<bool>(false, global3.x))), global3.x && (min(1682f, 164f) < abs(-512f)));
    return -var_0.a.x;
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: Struct_2) -> Struct_3 {
    let var_0 = -round(exp2(ceil(vec3<f32>(-139f, global2.b, -194f))));
    global2 = Struct_4(true, global2.b);
    var var_1 = -((vec4<f32>(var_0.x, -global2.b, floor(-740f), var_0.x) / -sign(vec4<f32>(global2.b, -286f, 281f, global2.b))) - (select(vec4<f32>(-1198f, 1274f, -568f, var_0.x), vec4<f32>(global2.b, global2.b, var_0.x, global2.b) / vec4<f32>(-980f, var_0.x, var_0.x, var_0.x), !vec4<bool>(global2.a, arg_2.a.c, global2.a, false)) * (-vec4<f32>(global2.b, var_0.x, var_0.x, -2800f) * -vec4<f32>(295f, 1210f, 1010f, -136f))));
    global1 = abs(vec4<u32>(clamp(global1.x, 0u, dot(vec2<u32>(4294967295u, u_input.e.x) * vec2<u32>(27806u, 45517u), vec2<u32>(118574u, global1.x))), ~(~(4294967295u ^ 2526u)), global1.x | 4294967295u, ~arg_2.c.b));
    let var_2 = Struct_4(!(select(i32(-2147483648), 25285i, global2.a) >= -u_input.a.x) & (countOneBits(-5681i) == 0i), var_1.x);
    return Struct_3(abs(vec3<i32>(~(u_input.c.x << 0u), -(arg_0 + -830i), ~u_input.a.x)), arg_2, vec4<f32>(select(ceil(-200f), -505f + -1000f, var_2.a), var_1.x - abs(var_2.b), var_0.x, var_2.b) * vec4<f32>(sign(-(-1369f)), max(564f, step(249f, var_2.b)), -(-1184f), 1285f));
}

fn func_1(arg_0: u32, arg_1: vec2<f32>) -> Struct_5 {
    let var_0 = !vec3<bool>(!all(select(vec3<bool>(false, global2.a, true), vec3<bool>(global2.a, global2.a, false), vec3<bool>(global2.a, global3.x, false))), !(!global3.x), all(vec2<bool>(!true, false)));
    var var_1 = -arg_1;
    let var_2 = func_4(func_2(), clamp(u_input.b % 43100u, dot(vec4<u32>(u_input.b, 4294967295u, 3753u, 0u) | (vec4<u32>(0u, 44179u, global1.x, 1u) & vec4<u32>(74986u, 35150u, u_input.d, arg_0)), ~vec4<u32>(4294967295u, 1u, arg_0, 17628u)), abs(~0u)), Struct_2(Struct_1(global3.x, dot(clamp(vec3<u32>(0u, 0u, 5865u), global1.yzy, vec3<u32>(4294967295u, arg_0, 1u)), u_input.e), round(1218f) == ceil(global2.b), true, ~(~vec4<u32>(150890u, global1.x, global1.x, u_input.e.x))), Struct_1(var_0.x, ~u_input.e.x, false, firstLeadingBit(-8773i) < u_input.a.x, select(vec4<u32>(global1.x, 18571u, 81064u, u_input.b), vec4<u32>(27493u, 11419u, 1u, arg_0), false) / (vec4<u32>(4294967295u, arg_0, global1.x, arg_0) | vec4<u32>(u_input.b, arg_0, u_input.b, 2229u))), Struct_1(any(var_0) | (819f > -1354f), abs(80374u), all(var_0), firstTrailingBit(1i) >= func_3(Struct_2(Struct_1(false, u_input.d, false, true, vec4<u32>(1u, 98289u, 20288u, 4082u)), Struct_1(var_0.x, 16229u, false, global2.a, vec4<u32>(35377u, 1u, 9673u, 19688u)), Struct_1(true, 7307u, var_0.x, true, vec4<u32>(46309u, 4294967295u, u_input.e.x, global1.x))), vec4<u32>(u_input.b, 31630u, arg_0, arg_0), Struct_4(var_0.x, -855f), true), firstLeadingBit(vec4<u32>(26735u, 4294967295u, u_input.b, u_input.e.x) / vec4<u32>(86055u, global1.x, 4294967295u, global1.x)))));
    let var_3 = Struct_5(vec4<i32>(firstLeadingBit(var_2.a.x - 16678i), select(i32(-2147483648) + u_input.a.x, -31191i, arg_1.x >= -1113f), ~1i, select(-21060i + u_input.a.x, firstTrailingBit(-1i), !global3.x)) - (min(vec4<i32>(-67113i, u_input.a.x, u_input.a.x, u_input.a.x), ~vec4<i32>(17409i, 32349i, -15276i, var_2.a.x)) / u_input.c), global1.wyy);
    let var_4 = var_2;
    return var_3;
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_5, arg_2: Struct_5, arg_3: vec4<i32>) -> Struct_3 {
    var var_0 = arg_2;
    let var_1 = select(select(select(vec4<bool>(false, global2.b != global2.b, i32(-2147483648) > 1716i, true), !vec4<bool>(global2.a, global3.x, true, false), !select(vec4<bool>(true, true, global3.x, global2.a), vec4<bool>(global3.x, global2.a, false, global3.x), global3.x)), select(select(select(vec4<bool>(false, global2.a, false, global3.x), vec4<bool>(global3.x, global2.a, global2.a, false), vec4<bool>(true, false, true, false)), select(vec4<bool>(false, false, global3.x, global2.a), vec4<bool>(true, true, global3.x, global3.x), vec4<bool>(global3.x, global3.x, global2.a, true)), !vec4<bool>(true, global3.x, global2.a, false)), select(vec4<bool>(false, global3.x, true, true), !vec4<bool>(false, global2.a, global2.a, true), select(vec4<bool>(false, global3.x, global3.x, false), vec4<bool>(global2.a, global2.a, global2.a, true), vec4<bool>(false, global2.a, false, false))), !vec4<bool>(global2.a, global2.a, global3.x, global3.x)), !global2.a || true), !vec4<bool>(global3.x, global2.a, false, !(!global2.a)), true);
    global1 = max(vec4<u32>(var_0.b.x, select(func_4(0i % -1i, global1.x, Struct_2(Struct_1(true, var_0.b.x, false, false, vec4<u32>(17095u, 0u, 35681u, 1u)), Struct_1(true, u_input.d, false, true, vec4<u32>(63232u, 83440u, 86677u, var_0.b.x)), Struct_1(var_1.x, arg_2.b.x, global3.x, global3.x, vec4<u32>(15932u, arg_1.b.x, 82992u, 52530u)))).b.b.e.x, arg_2.b.x, !select(global3.x, global3.x, false)), max(21699u, select(global1.x, ~arg_2.b.x, !true)), ~(4294967295u >> global1.x)), (firstTrailingBit(vec4<u32>(0u, 32414u, 30060u, global1.x) | vec4<u32>(var_0.b.x, 41889u, 0u, 17131u)) / ~select(vec4<u32>(1u, u_input.d, 0u, arg_1.b.x), vec4<u32>(arg_2.b.x, 0u, 9968u, arg_1.b.x), var_1.x)) >> vec4<u32>(arg_2.b.x, 4294967295u, global1.x, ~(arg_2.b.x | arg_2.b.x)));
    global3 = !select(vec2<bool>(!all(vec4<bool>(global2.a, global3.x, false, true)), ~arg_2.a.x > 0i), var_1.zw, !(!true));
    let var_2 = global1.wyy;
    return func_4(max(~(-(-21117i)) * ~dot(vec3<i32>(var_0.a.x, 1i, var_0.a.x), arg_2.a.zxw), abs(abs(arg_1.a.x) % ~49788i)), ~func_1(var_2.x, -(vec2<f32>(2231f, 953f) - vec2<f32>(global2.b, global2.b))).b.x, func_4(arg_3.x, ~(~arg_1.b.x) ^ ~(~var_0.b.x), Struct_2(func_4(~3884i, ~var_0.b.x, Struct_2(Struct_1(global3.x, arg_1.b.x, global2.a, var_1.x, vec4<u32>(arg_2.b.x, 10796u, 4294967295u, u_input.d)), Struct_1(global3.x, 3174u, true, true, vec4<u32>(var_2.x, var_2.x, 32131u, global1.x)), Struct_1(false, 4294967295u, global2.a, global2.a, vec4<u32>(10590u, 25537u, u_input.d, var_0.b.x)))).b.a, Struct_1(u_input.c.x < -1i, dot(vec2<u32>(arg_1.b.x, arg_1.b.x), vec2<u32>(4294967295u, 0u)), true, true, vec4<u32>(var_0.b.x, 4294967295u, 84336u, u_input.b) ^ vec4<u32>(11909u, var_0.b.x, var_0.b.x, var_2.x)), Struct_1(func_4(var_0.a.x, 1u, Struct_2(Struct_1(true, arg_1.b.x, false, global3.x, vec4<u32>(0u, 0u, var_2.x, var_2.x)), Struct_1(true, 0u, global2.a, global2.a, vec4<u32>(5069u, u_input.e.x, arg_1.b.x, global1.x)), Struct_1(false, u_input.b, true, var_1.x, vec4<u32>(arg_1.b.x, u_input.e.x, arg_1.b.x, u_input.e.x)))).b.a.d, var_0.b.x, all(var_1), true, vec4<u32>(arg_2.b.x, u_input.b, var_0.b.x, arg_2.b.x) << vec4<u32>(0u, arg_1.b.x, u_input.e.x, u_input.e.x)))).b);
}

fn func_6(arg_0: Struct_3) -> vec2<bool> {
    var var_0 = arg_0;
    let var_1 = var_0.c.x;
    global1 = vec4<u32>(20331u / clamp(4294967295u, ~func_4(var_0.a.x, arg_0.b.c.e.x, var_0.b).b.c.e.x, arg_0.b.c.b), 28902u ^ 661u, (min(global1.x, 11969u - 4294967295u) % ~(global1.x / global1.x)) % ~(arg_0.b.b.b / abs(arg_0.b.a.e.x)), var_0.b.a.e.x);
    let var_2 = arg_0.a.x;
    let var_3 = var_0.c.x;
    return vec2<bool>(!any(select(select(vec3<bool>(false, global2.a, arg_0.b.a.c), vec3<bool>(true, global2.a, true), global3.x), vec3<bool>(var_0.b.c.a, true, global2.a), -301f <= arg_0.c.x)), var_0.b.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = vec2<bool>(global2.a | ((global2.b - global2.b) == -279f), all(func_6(func_5(u_input.c.yzy, func_1(20837u, vec2<f32>(981f, -300f)), func_1(u_input.d, vec2<f32>(711f, 1736f)), vec4<i32>(-6748i, u_input.a.x, u_input.a.x, u_input.c.x)))));
    let var_0 = func_1(~(~u_input.d) | ~(1u * 46630u), func_4(0i * u_input.c.x, func_1(0u, vec2<f32>(global2.b, global2.b)).b.x ^ (73321u - 32066u), func_5(u_input.c.yxz, func_1(0u, vec2<f32>(1416f, global2.b)), func_1(0u, vec2<f32>(-1357f, 498f)), u_input.c).b).c.zz).b | vec3<u32>(~global1.x, ~(~(4294967295u % u_input.d)), func_4(-(u_input.a.x & u_input.a.x), clamp(dot(vec3<u32>(4294967295u, global1.x, u_input.d), vec3<u32>(u_input.b, global1.x, 11207u)), ~u_input.e.x, 63846u), Struct_2(func_5(vec3<i32>(u_input.a.x, i32(-2147483648), u_input.c.x), Struct_5(u_input.c, vec3<u32>(1u, u_input.b, 4294967295u)), Struct_5(vec4<i32>(u_input.a.x, u_input.a.x, 0i, 17644i), u_input.e), vec4<i32>(i32(-2147483648), 1i, u_input.a.x, 1i)).b.c, Struct_1(true, global1.x, true, false, vec4<u32>(68521u, u_input.b, u_input.d, global1.x)), Struct_1(global3.x, 1u, false, global2.a, vec4<u32>(90841u, u_input.d, global1.x, u_input.b)))).b.b.e.x);
    let var_1 = func_5(u_input.c.wyx, func_1(var_0.x, vec2<f32>(step(floor(global2.b), exp2(global2.b)), -(-591f))), func_1(~((var_0.x >> global1.x) + select(global1.x, u_input.e.x, true)), round(func_5(vec3<i32>(u_input.c.x, u_input.c.x, -36111i), Struct_5(vec4<i32>(i32(-2147483648), u_input.a.x, u_input.a.x, -1i), var_0), Struct_5(u_input.c, var_0), vec4<i32>(1i, u_input.c.x, u_input.c.x, -23314i)).c.ww + vec2<f32>(global2.b, 468f))), vec4<i32>(select(~u_input.a.x / (u_input.a.x - 2147483647i), u_input.c.x, !(!false)), 1i, 0i, func_1(var_0.x, vec2<f32>(global2.b, -(-1000f))).a.x)).b.c;
    var var_2 = ~firstLeadingBit(~(min(global1.x, 1u) * 39774u));
    let var_3 = max(abs(global2.b), -674f) + global2.b;
    global1 = var_1.e * vec4<u32>(countOneBits(var_1.e.x), ~u_input.e.x, func_1(1u, exp2(-vec2<f32>(global2.b, 400f))).b.x, 82264u);
    let x = u_input.a;
    s_output = StorageBuffer(sign(var_3));
}

