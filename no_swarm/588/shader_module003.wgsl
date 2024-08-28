// {"0:0":[43,178,219,127,191,165,52,121,45,150,82,24,5,118,49,131,98,225,40,209,96,100,108,153,44,186,33,1,188,8,119,63,216,120,53,127,91,94,227,175,77,51,58,8,41,59,82,217]}
// Seed: 8907989499574620058

struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27>;

var<private> global1: array<bool, 31>;

var<private> global2: array<Struct_2, 12>;

var<private> global3: array<bool, 22>;

var<private> global4: bool = true;

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: vec2<u32>) -> bool {
    let var_0 = vec2<f32>(-897f, -629f);
    global2 = array<Struct_2, 12>();
    var var_1 = var_0 * (-min(max(var_0, vec2<f32>(-411f, var_0.x)), vec2<f32>(var_0.x, -264f)) * abs(max(var_0 * vec2<f32>(var_0.x, -1217f), -vec2<f32>(var_0.x, -479f))));
    let var_2 = vec3<f32>(var_1.x, -437f, (-1118f + (-(-489f) - -(-197f))) / var_1.x);
    let var_3 = (select(arg_3.x, max(~14215u, 28144u), false && false) << arg_3.x) & ~arg_0.a;
    return true;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<f32>) -> u32 {
    let var_0 = -(-round(1151f) + arg_1.x);
    var var_1 = arg_1;
    global0 = array<i32, 27>();
    var var_2 = u_input.c;
    global4 = (~41903u > var_2.x) & global3[dot(reverseBits(~vec4<u32>(u_input.b.x, var_2.x, u_input.a, 0u)), ~vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x)) | ~(~var_2.x + (u_input.a ^ 4294967295u))];
    return firstTrailingBit(u_input.b.x);
}

fn func_2(arg_0: vec2<i32>, arg_1: bool, arg_2: i32, arg_3: bool) -> vec4<u32> {
    let var_0 = global1[func_4(!select(select(select(vec3<bool>(true, true, false), vec3<bool>(global1[u_input.c.x], true, arg_1), true), vec3<bool>(global3[u_input.a], true, false), !vec3<bool>(true, false, false)), !vec3<bool>(true, true, global1[u_input.a]), func_3(Struct_1(38979u), Struct_2(Struct_1(0u), Struct_1(4294967295u), Struct_1(u_input.c.x)), vec4<i32>(31336i, global0[u_input.c.x], 4256i, i32(-2147483648)), vec2<u32>(u_input.c.x, u_input.c.x))), ((trunc(vec2<f32>(-402f, -617f)) - sign(vec2<f32>(-1479f, 2786f))) / ceil(vec2<f32>(262f, -540f))) + ((sign(vec2<f32>(743f, 481f)) - abs(vec2<f32>(-357f, -952f))) + abs(vec2<f32>(-488f, -440f))))];
    let var_1 = Struct_1(clamp(firstTrailingBit(~u_input.b.x), min(abs(u_input.b.x - u_input.c.x), ~(~u_input.c.x)), 1u));
    var var_2 = Struct_2(Struct_1(~var_1.a), Struct_1(1u), Struct_1(4294967295u));
    var var_3 = Struct_2(var_2.a, Struct_1(dot(u_input.b, reverseBits(~u_input.b))), var_2.c);
    return ~(~abs(clamp(vec4<u32>(var_1.a, 28585u, 1u, 41829u), ~vec4<u32>(var_1.a, var_1.a, var_1.a, 0u), vec4<u32>(var_2.a.a, var_3.c.a, var_1.a, 1u))));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = 26948i;
    global2 = array<Struct_2, 12>();
    let var_1 = arg_1.b;
    var var_2 = -(-1017f) - (select(-(-1701f * -653f), step(-183f + 261f, -128f), global1[abs(0u)]) - -376f);
    let var_3 = arg_1.a.a;
    return var_1;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(~u_input.c.x);
    global2 = array<Struct_2, 12>();
    var var_1 = func_5(func_2((-vec2<i32>(-23193i, -18823i) % (vec2<i32>(global0[0u], i32(-2147483648)) << vec2<u32>(42701u, 4294967295u))) * (-vec2<i32>(i32(-2147483648), global0[var_0.a]) << firstLeadingBit(u_input.c)), false, global0[(u_input.c.x + 101915u) ^ ~max(43563u, var_0.a)], false), global2[~22425u]);
    let var_2 = global1[var_1.a];
    var var_3 = -1i;
    return func_5(vec4<u32>(~firstLeadingBit(13979u), ~var_0.a << u_input.b.x, (7339u | var_1.a) + u_input.a, (var_1.a >> 20403u) << select(22766u, 105346u, global1[1u])) >> abs(select(~vec4<u32>(31927u, u_input.a, var_0.a, 101947u), vec4<u32>(var_0.a, u_input.a, 17813u, u_input.a) / vec4<u32>(11045u, 0u, u_input.a, 25087u), !vec4<bool>(global1[1u], global3[38410u], global1[1u], global3[var_1.a]))), Struct_2(func_5(vec4<u32>(~var_1.a, 69609u, abs(var_0.a), ~var_1.a), Struct_2(func_5(vec4<u32>(64389u, var_0.a, 15396u, var_1.a), Struct_2(Struct_1(var_1.a), Struct_1(6086u), Struct_1(u_input.a))), func_5(vec4<u32>(1u, 14201u, var_1.a, 0u), Struct_2(Struct_1(var_1.a), Struct_1(1u), Struct_1(var_1.a))), func_5(vec4<u32>(u_input.c.x, 4294967295u, u_input.b.x, 75138u), global2[var_1.a]))), func_5(~vec4<u32>(41109u, var_1.a, 9614u, var_1.a), Struct_2(func_5(vec4<u32>(var_1.a, var_1.a, 1u, u_input.c.x), global2[4294967295u]), Struct_1(336u), func_5(vec4<u32>(u_input.b.x, u_input.c.x, 3811u, var_0.a), Struct_2(Struct_1(var_0.a), Struct_1(27044u), Struct_1(var_1.a))))), Struct_1(1u)));
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: vec3<f32>) -> i32 {
    global1 = array<bool, 31>();
    global4 = global3[4294967295u] || true;
    global3 = array<bool, 22>();
    global4 = arg_3.x != min(1128f * -arg_3.x, -arg_3.x);
    var var_0 = func_5(~(~vec4<u32>(arg_2.a, arg_1, 1u, arg_0.a) | (vec4<u32>(19115u, arg_0.a, arg_0.a, 4294967295u) ^ vec4<u32>(4294967295u, 1u, 55555u, 29820u))) + vec4<u32>(abs(dot(u_input.b, vec3<u32>(arg_2.a, 1u, arg_0.a))), firstLeadingBit(dot(vec4<u32>(u_input.a, 23905u, 53367u, u_input.b.x), vec4<u32>(5989u, arg_1, 1u, 32831u))), 35056u, ~u_input.a % ~arg_2.a), Struct_2(Struct_1((43608u | 1u) - (arg_0.a & arg_1)), Struct_1(arg_1 * func_2(vec2<i32>(global0[4294967295u], i32(-2147483648)), global1[45759u], global0[arg_0.a], global3[0u]).x), func_5(~(~vec4<u32>(arg_2.a, 9004u, 9205u, u_input.c.x)), Struct_2(func_5(vec4<u32>(arg_2.a, 0u, 130116u, u_input.a), Struct_2(arg_2, arg_2, arg_2)), arg_2, Struct_1(arg_1)))));
    return ~(-1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(-(-(-84297i) + (global0[~1u] / (0i / global0[1u]))), global0[4294967295u] & abs(func_6(Struct_1(0u), reverseBits(u_input.c.x), func_1(), vec3<f32>(1000f, -1427f, 2340f))));
    let var_1 = Struct_1(u_input.b.x);
    let var_2 = var_0.x;
    let var_3 = var_1.a;
    var var_4 = var_3;
    let var_5 = Struct_1(~var_1.a);
    var var_6 = abs(i32(-2147483648)) << min(~var_5.a, func_2(clamp(vec2<i32>(38458i, 2147483647i), var_0, vec2<i32>(global0[4294967295u], var_2)), any(vec3<bool>(false, true, true)), countOneBits(var_2), any(vec2<bool>(true, false))).x >> ~firstTrailingBit(var_1.a));
    let var_7 = ~reverseBits(1i);
    let x = u_input.a;
    s_output = StorageBuffer(~(~4129u), -(-(-vec4<i32>(i32(-2147483648), 2147483647i, 33564i, var_2))));
}

