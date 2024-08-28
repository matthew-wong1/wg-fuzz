// {"0:0":[96,157,120,93,159,124,40,73,165,127,133,136,149,200,229,72,223,250,47,73,188,181,145,177,79,154,26,171,205,139,211,28,140,218,202,240,157,80,3,107,2,150,154,128,108,0,166,246,241,23,192,26,131,52,185,70,218,231,103,188,120,45,16,194]}
// Seed: 12829219982497503598

struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec4<f32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(-4334i, 4954i), 859u, i32(-2147483648), vec4<f32>(-885f, -144f, 1000f, -364f), vec2<u32>(0u, 51857u));

fn func_3(arg_0: i32, arg_1: bool, arg_2: Struct_1) -> vec4<f32> {
    global0 = Struct_1(max(vec2<i32>(max(-1i, i32(-2147483648)) << global0.e.x, arg_2.c), -global0.a), abs(0u * u_input.d.x), ~2147483647i, vec4<f32>(select(global0.d.x / round(1400f), -486f, arg_1), global0.d.x, trunc(-718f) + ceil(-(-1153f)), global0.d.x), select(abs(vec2<u32>(37214u, 49019u) / arg_2.e), clamp(vec2<u32>(4294967295u, 24956u), global0.e, vec2<u32>(5133u, arg_2.e.x)) * ~arg_2.e, all(vec4<bool>(false, arg_1, arg_1, arg_1)) && true) >> (arg_2.e ^ vec2<u32>(0u, arg_2.e.x)));
    var var_0 = exp2(-(floor(-357f) * global0.d.x));
    var var_1 = arg_2.c;
    var var_2 = Struct_1(~arg_2.a << arg_2.e, 44935u, ~(-(-2922i)), select(vec4<f32>(global0.d.x, step(477f, global0.d.x), 831f, arg_2.d.x), arg_2.d, !(!select(vec4<bool>(false, true, true, arg_1), vec4<bool>(arg_1, arg_1, true, true), vec4<bool>(arg_1, arg_1, arg_1, arg_1)))), global0.e);
    let var_3 = !(!vec4<bool>(any(vec4<bool>(arg_1, false, true, false)) != select(true, arg_1, arg_1), select(arg_1, arg_0 > var_2.c, !false), arg_1, false));
    return vec4<f32>(var_2.d.x, max(step(sign(-global0.d.x), min(sign(arg_2.d.x), -786f)), arg_2.d.x), ceil(select(-1965f, -108f, false) + (-1000f * var_2.d.x)) - ceil(-308f), -395f);
}

fn func_2(arg_0: i32, arg_1: vec4<f32>) -> Struct_1 {
    return Struct_1(select(u_input.e - global0.a, clamp(-vec2<i32>(global0.c, 537i), vec2<i32>(u_input.e.x, -46656i) % u_input.e, global0.a / u_input.e), !any(vec4<bool>(false, false, true, true))) << (vec2<u32>(3860u, ~4294967295u) & ~select(global0.e, vec2<u32>(10874u, u_input.a.x), vec2<bool>(true, true))), ~global0.e.x, ~(i32(-2147483648)), func_3(~u_input.e.x, any(select(!vec2<bool>(false, false), vec2<bool>(true, false), false)), Struct_1(-(vec2<i32>(-9399i, -1342i) >> u_input.a.yz), global0.e.x, dot(abs(u_input.e), vec2<i32>(47141i, arg_0) / vec2<i32>(global0.a.x, u_input.e.x)), -floor(global0.d), ~vec2<u32>(38988u, 107026u))), vec2<u32>(~(~firstLeadingBit(0u)), ~(~(~u_input.c.x))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: Struct_3) -> bool {
    let var_0 = Struct_1(u_input.e >> vec2<u32>(~u_input.b.x, func_2(~1i, -vec4<f32>(global0.d.x, arg_1.b.d.x, arg_1.b.d.x, global0.d.x)).b), min(arg_3.a.e.x, ~0u) + (~(arg_3.b.e.x - u_input.d.x) + (41986u & max(1u, 56379u))), countOneBits(arg_0.x) & ~dot(u_input.e, arg_2), min(vec4<f32>(-arg_3.b.d.x, min(-1064f, -385f), global0.d.x * -176f, arg_3.c.a.d.x * 1010f), arg_1.a.d) / step(-arg_3.a.d, (vec4<f32>(arg_3.c.b.d.x, 484f, -626f, -435f) + global0.d) - -vec4<f32>(528f, global0.d.x, arg_1.a.d.x, arg_1.b.d.x)), global0.e);
    var var_1 = all(select(select(vec2<bool>(!true, true), vec2<bool>(true, all(vec3<bool>(false, false, true))), !vec2<bool>(true, false)), !(!vec2<bool>(true, true)), !vec2<bool>(!true, true)));
    global0 = func_2(global0.c, min(-round(-global0.d), vec4<f32>(arg_1.a.d.x, var_0.d.x, -791f, arg_3.c.a.d.x)));
    var var_2 = u_input.a.wyw >> vec3<u32>(dot(countOneBits(vec4<u32>(arg_1.b.b, 40390u, global0.e.x, arg_3.a.e.x)), ~vec4<u32>(1u, 0u, arg_1.c.d, 1u)) % global0.b, 49013u << (~1u - ~1u), var_0.b);
    var var_3 = any(select(vec4<bool>(all(vec2<bool>(true, false)), all(vec4<bool>(false, false, false, true)), !(!true), !(!true)), select(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), true), vec4<bool>(true || true, 320f <= 576f, -18989i < arg_2.x, false | true), !(!false)), select(vec4<bool>(any(vec4<bool>(true, true, true, false)), false | true, true, false), vec4<bool>(!false, any(vec4<bool>(false, false, false, false)), false, true), vec4<bool>(any(vec4<bool>(false, true, true, false)), false | true, !false, all(vec4<bool>(true, true, true, false))))));
    return select(var_0.d.x, (-(-988f) * (-196f / var_0.d.x)) + arg_3.b.d.x, !true) >= -595f;
}

fn func_1() -> Struct_1 {
    let var_0 = !func_4(vec4<i32>(29608i, (u_input.e.x ^ global0.a.x) / ~global0.c, reverseBits(-1i), -26047i), Struct_3(func_2(select(u_input.e.x, -82i, false), vec4<f32>(250f, global0.d.x, -710f, -429f)), func_2(u_input.e.x, -vec4<f32>(global0.d.x, 114f, global0.d.x, global0.d.x)), Struct_2(func_2(u_input.e.x, global0.d), func_2(u_input.e.x, global0.d), func_2(67377i, global0.d), u_input.b.x, func_2(52406i, vec4<f32>(global0.d.x, -643f, global0.d.x, global0.d.x)))), global0.a, Struct_3(Struct_1(u_input.e | vec2<i32>(-4257i, 60895i), 38796u, -global0.c, vec4<f32>(global0.d.x, 1000f, global0.d.x, global0.d.x), countOneBits(u_input.a.wz)), Struct_1(firstTrailingBit(u_input.e), firstTrailingBit(8676u), -u_input.e.x, vec4<f32>(global0.d.x, 1361f, global0.d.x, 1565f), max(vec2<u32>(1u, u_input.a.x), global0.e)), Struct_2(Struct_1(global0.a, 4294967295u, u_input.e.x, vec4<f32>(global0.d.x, 600f, -1000f, global0.d.x), u_input.b), func_2(u_input.e.x, global0.d), Struct_1(global0.a, 53199u, i32(-2147483648), vec4<f32>(739f, global0.d.x, -1076f, -1064f), vec2<u32>(3205u, u_input.c.x)), 4294967295u, Struct_1(vec2<i32>(u_input.e.x, i32(-2147483648)), global0.b, global0.a.x, vec4<f32>(-1659f, -602f, global0.d.x, -1000f), vec2<u32>(global0.e.x, 79984u)))));
    global0 = func_2(1i, global0.d);
    global0 = Struct_1(((firstTrailingBit(u_input.e) & vec2<i32>(-7361i, u_input.e.x)) / func_2(u_input.e.x, global0.d * vec4<f32>(-1560f, global0.d.x, global0.d.x, 1320f)).a) - ~(-select(vec2<i32>(u_input.e.x, 35806i), vec2<i32>(global0.c, i32(-2147483648)), vec2<bool>(false, var_0))), u_input.b.x, (19222i | global0.c) << 76727u, sign(vec4<f32>(-global0.d.x, -global0.d.x, -global0.d.x, -1728f) + -(vec4<f32>(2907f, 1000f, global0.d.x, global0.d.x) / global0.d)), ~(~vec2<u32>(21807u, 4294967295u * global0.b)));
    let var_1 = !select(select(!vec2<bool>(false, var_0), !vec2<bool>(true, var_0), var_0), !select(vec2<bool>(false, true), vec2<bool>(var_0, true), vec2<bool>(true, var_0)), !var_0);
    let var_2 = Struct_3(func_2(global0.a.x, -(global0.d - global0.d)), func_2(-(i32(-2147483648)), vec4<f32>(global0.d.x, global0.d.x, 1214f, global0.d.x)), Struct_2(Struct_1(-clamp(vec2<i32>(u_input.e.x, 6963i), global0.a, u_input.e), u_input.a.x, -global0.a.x, vec4<f32>(global0.d.x, -1189f, -152f, -992f) - (vec4<f32>(global0.d.x, global0.d.x, global0.d.x, global0.d.x) - global0.d), u_input.b), Struct_1(u_input.e, dot(global0.e >> vec2<u32>(0u, u_input.a.x), max(vec2<u32>(u_input.c.x, 113042u), vec2<u32>(50450u, 1u))), dot(vec2<i32>(-2171i, u_input.e.x) % vec2<i32>(1i, u_input.e.x), u_input.e + global0.a), vec4<f32>(global0.d.x * global0.d.x, -576f + -122f, 1000f * global0.d.x, -138f / -1752f), ~(~vec2<u32>(36514u, global0.e.x))), Struct_1(vec2<i32>(global0.c % 0i, i32(-2147483648)), 0u, select(global0.a.x, -(-41145i), var_0), floor(vec4<f32>(-453f, global0.d.x, global0.d.x, -1350f) - vec4<f32>(2167f, 1987f, -1327f, 227f)), vec2<u32>(38056u - global0.b, 0u)), select(global0.e.x, global0.e.x, true || var_1.x) | 48315u, func_2(dot(vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, 1864i), vec4<i32>(1i, 24821i, u_input.e.x, 2147483647i)) << ~u_input.b.x, func_3(reverseBits(0i), !var_0, func_2(6042i, global0.d)))));
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(-10815i >> clamp(global0.b, max(53939u, global0.b), global0.e.x), global0.a.x, -global0.a.x) + ~abs(-(vec3<i32>(-29578i, 0i, global0.c) - vec3<i32>(u_input.e.x, global0.c, global0.a.x)));
    let var_1 = func_1();
    var var_2 = global0.b;
    global0 = var_1;
    let var_3 = Struct_1(~(-min(vec2<i32>(global0.a.x, -6558i), vec2<i32>(var_1.a.x, u_input.e.x))) | abs(func_2(-104410i, var_1.d - vec4<f32>(986f, var_1.d.x, global0.d.x, var_1.d.x)).a), 4294967295u, i32(-2147483648), vec4<f32>(1291f, 1000f + var_1.d.x, (-(-2480f) - -414f) - -round(991f), var_1.d.x), ~max(min(u_input.c.yw, u_input.c.wz) + firstLeadingBit(var_1.e), u_input.c.yw));
    var_0 = ~(~max(select(vec3<i32>(1i, var_1.c, -5709i), vec3<i32>(24249i, 2147483647i, global0.c), true) % min(vec3<i32>(u_input.e.x, global0.c, 14547i), vec3<i32>(var_1.c, var_1.a.x, 61028i)), vec3<i32>(-global0.c, var_1.a.x - var_1.a.x, -10632i)));
    let var_4 = any(vec3<bool>(false, ~(~10156u) == global0.e.x, false));
    let x = u_input.a;
    s_output = StorageBuffer(26254u | (28581u + ~(4294967295u + u_input.a.x)), -func_2(-u_input.e.x << ~u_input.a.x, vec4<f32>(-628f, var_3.d.x, global0.d.x, -2631f) - vec4<f32>(var_3.d.x, var_3.d.x, global0.d.x, -230f)).a);
}

