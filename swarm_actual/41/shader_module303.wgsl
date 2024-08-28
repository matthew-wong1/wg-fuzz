// {"0:0":[81,246,64,59,132,93,88,123]}
// Seed: 8633733379656586372

struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(Struct_1(vec4<i32>(-14128i, 1i, 2147483647i, 11267i))), Struct_2(Struct_1(vec4<i32>(1i, 1i, -4545i, i32(-2147483648)))), Struct_2(Struct_1(vec4<i32>(2147483647i, -14579i, 0i, 6156i))), Struct_2(Struct_1(vec4<i32>(920i, 55380i, -71032i, 3586i))), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), 25417i, 1i, -61521i))), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), 1i))), Struct_2(Struct_1(vec4<i32>(-1i, 2147483647i, i32(-2147483648), i32(-2147483648)))), Struct_2(Struct_1(vec4<i32>(-20119i, 0i, 1i, 1i))), Struct_2(Struct_1(vec4<i32>(-46464i, -26286i, 2937i, -554i))), Struct_2(Struct_1(vec4<i32>(0i, 2147483647i, 1i, 1i))), Struct_2(Struct_1(vec4<i32>(-13023i, i32(-2147483648), -1i, 1i))), Struct_2(Struct_1(vec4<i32>(-1i, 35061i, 0i, 1i))), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), i32(-2147483648)))), Struct_2(Struct_1(vec4<i32>(836i, 30369i, -23827i, 1i))), Struct_2(Struct_1(vec4<i32>(2147483647i, 1i, 2147483647i, 8735i))), Struct_2(Struct_1(vec4<i32>(-1i, 16720i, 3153i, 0i))), Struct_2(Struct_1(vec4<i32>(58876i, -1i, 2147483647i, 11705i))), Struct_2(Struct_1(vec4<i32>(0i, 2122i, 2147483647i, 2147483647i))), Struct_2(Struct_1(vec4<i32>(16159i, -78468i, -1i, -15651i))), Struct_2(Struct_1(vec4<i32>(18015i, 2147483647i, -12448i, -1i))));

var<private> global1: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec4<i32>(i32(-2147483648), -51868i, 1i, 0i)), Struct_1(vec4<i32>(-16037i, -12625i, 35947i, -1i)), Struct_1(vec4<i32>(-33854i, 2940i, -1i, -1i)), Struct_1(vec4<i32>(-52225i, 1448i, 1i, -4790i)), Struct_1(vec4<i32>(-1i, -16029i, -1i, 15109i)), Struct_1(vec4<i32>(-1i, 2147483647i, -1i, 52695i)), Struct_1(vec4<i32>(-36851i, 0i, -90101i, 0i)), Struct_1(vec4<i32>(-16047i, -25249i, -2347i, i32(-2147483648))), Struct_1(vec4<i32>(32955i, 1i, 1i, 2199i)));

var<private> global2: array<f32, 24>;

fn func_3(arg_0: u32, arg_1: Struct_1) -> vec2<bool> {
    global1 = array<Struct_1, 9>();
    let var_0 = arg_0;
    var var_1 = 1u;
    let var_2 = arg_1;
    return select(!vec2<bool>(all(!vec4<bool>(false, false, false, false)), false), vec2<bool>(608f != 110f, true), vec2<bool>(true, false));
}

fn func_2(arg_0: vec3<i32>) -> i32 {
    let var_0 = 4294967295u;
    var var_1 = any(!func_3(var_0 + (4294967295u >> 4294967295u), Struct_1(vec4<i32>(1i, 7121i, arg_0.x, -19485i))));
    let var_2 = trunc(-(-(-305f / global2[~4294967295u])));
    var var_3 = ~max(~abs(vec3<u32>(var_0, 0u, var_0)), vec3<u32>(var_0, 30834u, var_0)) % vec3<u32>(57830u * (4294967295u / ~var_0), ~dot(vec3<u32>(var_0, var_0, 1u), min(vec3<u32>(var_0, 1u, var_0), vec3<u32>(0u, 47518u, 5567u))), 0u);
    var_3 = (firstLeadingBit(~vec3<u32>(var_0, 38111u, 59063u)) / (countOneBits(select(vec3<u32>(var_0, var_3.x, var_0), vec3<u32>(var_3.x, var_0, 34986u), vec3<bool>(false, true, true))) - ((vec3<u32>(0u, var_3.x, 4294967295u) & vec3<u32>(var_0, 0u, 1u)) >> vec3<u32>(var_0, var_0, 83200u)))) / vec3<u32>(var_0 ^ (dot(vec4<u32>(0u, var_3.x, 0u, 0u), vec4<u32>(1u, var_0, var_3.x, var_3.x)) / ~20169u), 4294967295u, ~(~var_3.x - 1u));
    return u_input.a.x;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: i32, arg_3: bool) -> vec2<bool> {
    var var_0 = -(-global2[dot(~(vec3<u32>(1u, 0u, 0u) | vec3<u32>(88793u, 69624u, 1u)), clamp(vec3<u32>(0u, 0u, 1u), vec3<u32>(16334u, 4294967295u, 4294967295u), vec3<u32>(0u, 26501u, 9474u)))]);
    global1 = array<Struct_1, 9>();
    let var_1 = Struct_2(global1[max(~(~0u) / (~9623u * (1u | 1u)), reverseBits(42960u - 92117u))]);
    global0 = array<Struct_2, 20>();
    var var_2 = global0[~(~1u)];
    return !func_3(abs(reverseBits(max(4294967295u, 4294967295u))), var_2.a);
}

fn func_5(arg_0: vec2<bool>, arg_1: vec4<u32>) -> Struct_1 {
    return Struct_1(~(select(vec4<i32>(20437i, u_input.a.x, 19356i, 0i) ^ vec4<i32>(-43781i, -1i, -10342i, u_input.a.x), vec4<i32>(-1i, u_input.a.x, u_input.a.x, i32(-2147483648)) * vec4<i32>(0i, u_input.a.x, 304i, u_input.a.x), !arg_0.x) + max(select(vec4<i32>(55731i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<bool>(true, arg_0.x, arg_0.x, true)), vec4<i32>(u_input.a.x, -27639i, u_input.a.x, -34629i) | vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))));
}

fn func_1(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_2, arg_3: vec4<i32>) -> Struct_2 {
    global1 = array<Struct_1, 9>();
    let var_0 = func_5(func_4((arg_0.x << arg_0.x) <= (1u ^ 4294967295u), Struct_1(vec4<i32>(arg_3.x ^ 2147483647i, ~u_input.a.x, -u_input.a.x, u_input.a.x)), func_2(vec3<i32>(2147483647i ^ -1i, -u_input.a.x, ~34339i)), false), ~vec4<u32>(dot(select(vec2<u32>(4294967295u, arg_0.x), arg_0.xz, false), vec2<u32>(33753u, arg_0.x)), 0u, ~reverseBits(4294967295u), dot(vec4<u32>(4294967295u, 77004u, arg_0.x, 50492u) ^ vec4<u32>(7604u, 33282u, 0u, arg_0.x), vec4<u32>(arg_0.x, 65973u, 52495u, 97522u) >> vec4<u32>(arg_0.x, 30036u, arg_0.x, arg_0.x))));
    global1 = array<Struct_1, 9>();
    global0 = array<Struct_2, 20>();
    global0 = array<Struct_2, 20>();
    return arg_2;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2) -> vec3<bool> {
    return select(vec3<bool>(any(vec2<bool>(false, false)) & !(!true), true, false), !select(vec3<bool>(!false, true, !false), select(vec3<bool>(true, true, false), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), !vec3<bool>(true, false, true)), true), vec3<bool>(func_4(any(func_3(4294967295u, Struct_1(vec4<i32>(-47998i, arg_0.a.a.x, u_input.a.x, arg_0.a.a.x)))), Struct_1(arg_1.a.a), dot(vec3<i32>(0i, arg_0.a.a.x, i32(-2147483648)), arg_1.a.a.xzz & vec3<i32>(2656i, 45646i, 17436i)), func_3(86751u ^ 4294967295u, arg_1.a).x).x, all(func_4(select(false, true, false), Struct_1(vec4<i32>(arg_1.a.a.x, 30116i, u_input.a.x, arg_0.a.a.x)), arg_1.a.a.x, 1017f <= global2[4294967295u])), !false));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 9>();
    var var_0 = vec2<f32>(-(-576f), -138f);
    global2 = array<f32, 24>();
    let var_1 = -1123f / (round(-1238f) * -(-var_0.x / exp2(global2[4294967295u])));
    var var_2 = !select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), !false), vec3<bool>(true & true, !false, true && false), !select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false)), func_6(func_1(vec3<u32>(13403u, 64308u, 4294967295u), floor(1462f), global0[0u], clamp(vec4<i32>(u_input.a.x, 3325i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, 0i, -65392i, -108299i))), global0[min(abs(3479u), 4294967295u ^ 0u)]), all(vec4<bool>(func_4(true, Struct_1(vec4<i32>(i32(-2147483648), u_input.a.x, -1i, u_input.a.x)), u_input.a.x, true).x, 2147483647i <= 1i, !true, !false)));
    var_2 = !select(!vec3<bool>(!true, u_input.a.x != u_input.a.x, true), func_6(global0[~(~4294967295u)], global0[4219u]), ((u_input.a.x >> 380u) * 67406i) < max(~u_input.a.x, dot(u_input.a, vec2<i32>(u_input.a.x, u_input.a.x))));
    global0 = array<Struct_2, 20>();
    var var_3 = -abs(step(round(var_1), global2[select(39862u, 0u, var_2.x)])) / -412f;
    let x = u_input.a;
    s_output = StorageBuffer(-floor(var_1 + -964f), var_0.x / -(-var_1));
}

