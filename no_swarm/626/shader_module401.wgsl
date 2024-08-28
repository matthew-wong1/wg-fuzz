// {"0:0":[59,210,51,47,170,74,252,121,100,49,81,44,116,244,19,160,128,99,94,75,181,45,85,234,238,162,198,41,14,249,165,118,154,222,199,123,40,25,149,17,91,18,45,111,202,255,130,102,55,71,143,168,97,79,66,40,54,183,252,141,161,124,98,198]}
// Seed: 8399034407899530608

struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(589f, 460f, 616f);

var<private> global1: array<vec4<u32>, 12> = array<vec4<u32>, 12>(vec4<u32>(6118u, 84257u, 0u, 43260u), vec4<u32>(0u, 21271u, 111223u, 70364u), vec4<u32>(86193u, 19075u, 6278u, 58406u), vec4<u32>(0u, 8960u, 18571u, 1u), vec4<u32>(4294967295u, 4294967295u, 19990u, 1u), vec4<u32>(21237u, 2128u, 22661u, 1u), vec4<u32>(0u, 4294967295u, 4294967295u, 1u), vec4<u32>(8850u, 77254u, 4294967295u, 62936u), vec4<u32>(0u, 1u, 0u, 46137u), vec4<u32>(1u, 4294967295u, 46879u, 40490u), vec4<u32>(24836u, 15046u, 10241u, 4294967295u), vec4<u32>(1u, 55775u, 17124u, 135193u));

var<private> global2: array<Struct_1, 1>;

var<private> global3: array<vec3<f32>, 12> = array<vec3<f32>, 12>(vec3<f32>(177f, 931f, -780f), vec3<f32>(-601f, -569f, -1251f), vec3<f32>(911f, 110f, -1650f), vec3<f32>(1459f, -367f, -1465f), vec3<f32>(-755f, -2791f, 770f), vec3<f32>(1355f, 109f, 736f), vec3<f32>(718f, -1324f, 1000f), vec3<f32>(-1000f, 865f, 464f), vec3<f32>(1544f, -1000f, 850f), vec3<f32>(-1000f, 420f, -631f), vec3<f32>(802f, -1273f, -986f), vec3<f32>(1000f, 1139f, -681f));

fn func_3() -> vec4<bool> {
    var var_0 = Struct_2(Struct_1(vec4<bool>(false, all(select(vec2<bool>(false, false), vec2<bool>(false, true), true)), (-951f - global0.x) == -global0.x, firstLeadingBit(u_input.b.x) <= -9372i)), vec3<u32>(1u / 22020u, 71410u, 26075u), Struct_1(!vec4<bool>(!false, false, true || true, u_input.a == u_input.e.x)), Struct_1(select(vec4<bool>(all(vec2<bool>(true, false)), !true, all(vec4<bool>(true, true, true, true)), !false), !(!vec4<bool>(false, true, false, true)), vec4<bool>(true, true, false, !false))), ~(-75822i + u_input.d.x));
    let var_1 = Struct_2(Struct_1(var_0.c.a), var_0.b, Struct_1(vec4<bool>(!(global0.x <= global0.x), var_0.c.a.x, all(vec2<bool>(var_0.a.a.x, true)), false)), Struct_1(vec4<bool>(all(vec2<bool>(var_0.d.a.x, false)), (global0.x - global0.x) >= 590f, false, true)), dot(~(~select(vec4<i32>(var_0.e, 0i, u_input.d.x, u_input.b.x), vec4<i32>(u_input.d.x, 1i, var_0.e, -15838i), false)), vec4<i32>(0i, dot(vec3<i32>(2147483647i, -1i, var_0.e), firstTrailingBit(u_input.d)), u_input.b.x, u_input.c)));
    let var_2 = global0.x;
    var_0 = var_1;
    global0 = step(global3[40822u], -abs(min(global3[48667u], vec3<f32>(408f, 1000f, global0.x))));
    return select(select(!vec4<bool>(!false, all(vec2<bool>(false, true)), true, !false), var_1.c.a, vec4<bool>(-1000f == 1854f, !false, any(select(vec2<bool>(false, var_0.a.a.x), var_0.a.a.yz, var_1.d.a.x)), !true & var_1.a.a.x)), var_0.a.a, true);
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = global3[arg_1.b.x] + (-vec3<f32>(global0.x, global0.x, -1000f) / -step(-global3[0u], global3[arg_1.b.x >> arg_1.b.x]));
    let var_1 = Struct_2(Struct_1(select(select(arg_1.c.a, vec4<bool>(true, false, true, true), global0.x == var_0.x), select(vec4<bool>(arg_0, arg_2.x, arg_0, false), func_3(), false), -1i < ~u_input.c)), u_input.e, arg_1.a, Struct_1(arg_1.d.a), arg_1.e);
    global3 = array<vec3<f32>, 12>();
    global2 = array<Struct_1, 1>();
    global2 = array<Struct_1, 1>();
    return Struct_1(!select(var_1.a.a, func_3(), true));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(vec4<bool>(any(vec4<bool>(arg_1.a.x | true, !arg_0.x, arg_0.x, i32(-2147483648) < u_input.b.x)), !true, any(!arg_1.a.xx), !any(select(vec4<bool>(arg_0.x, true, arg_1.a.x, arg_1.a.x), arg_1.a, vec4<bool>(arg_1.a.x, false, true, arg_0.x)))));
    let var_1 = Struct_2(var_0, u_input.e, arg_1, func_2(select(u_input.b.x <= 1662i, var_0.a.x | !true, false), Struct_2(arg_1, reverseBits(~u_input.e), var_0, Struct_1(arg_1.a), -8013i), arg_1.a.xz), abs(dot(u_input.b, abs(vec3<i32>(u_input.b.x, u_input.d.x, u_input.b.x)))));
    global2 = array<Struct_1, 1>();
    let var_2 = Struct_2(Struct_1(var_0.a), vec3<u32>(u_input.a, select(abs(var_1.b.x), dot(vec2<u32>(4294967295u, 14219u), vec2<u32>(var_1.b.x, var_1.b.x)), var_1.c.a.x), 4294967295u) - ~vec3<u32>(u_input.a, ~30233u, select(63285u, 48773u, var_1.d.a.x)), Struct_1(arg_1.a), global2[63713u], var_1.e);
    let var_3 = var_2;
    return var_0;
}

fn func_5(arg_0: Struct_1) -> u32 {
    var var_0 = dot(max(vec3<u32>(firstTrailingBit(firstTrailingBit(27041u)), 31329u, 0u), select(u_input.e, u_input.e, vec3<bool>(arg_0.a.x, arg_0.a.x, true)) | ((vec3<u32>(1u, 56249u, 51308u) * u_input.e) * u_input.e)), u_input.e);
    var var_1 = -exp2(-exp2(global0.yy / vec2<f32>(global0.x, -714f)));
    var var_2 = u_input.d.x;
    var var_3 = (i32(-2147483648) * (u_input.b.x * u_input.d.x)) % 33522i;
    let var_4 = arg_0.a.x;
    return 0u;
}

fn func_1() -> vec4<bool> {
    var var_0 = global1[reverseBits((min(u_input.e.x, 21667u) & (firstLeadingBit(35936u) | dot(global1[4442u], vec4<u32>(u_input.a, 22u, u_input.e.x, 1u)))) / func_5(func_4(!vec3<bool>(false, false, true), func_2(true, Struct_2(Struct_1(vec4<bool>(false, false, true, false)), vec3<u32>(u_input.a, 13008u, 0u), Struct_1(vec4<bool>(false, false, true, false)), global2[u_input.e.x], 2147483647i), vec2<bool>(true, true)))))];
    global2 = array<Struct_1, 1>();
    let var_1 = min(-u_input.d, u_input.d * vec3<i32>(u_input.b.x, countOneBits(859i), 27725i));
    global1 = array<vec4<u32>, 12>();
    let var_2 = func_2(select(!func_3().x, ~u_input.a > var_0.x, select(reverseBits(31020u) < (var_0.x + 56772u), all(func_3()), !(!true))), Struct_2(func_2(false, Struct_2(global2[~u_input.a], countOneBits(vec3<u32>(var_0.x, 4294967295u, 0u)), func_2(false, Struct_2(Struct_1(vec4<bool>(false, false, true, true)), vec3<u32>(0u, 1u, 23418u), Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(true, false, true, true)), -21801i), vec2<bool>(false, true)), Struct_1(vec4<bool>(true, true, false, false)), var_1.x), !func_3().xw), vec3<u32>(47993u, ~(74329u | var_0.x), 6799u), Struct_1(vec4<bool>(any(vec2<bool>(false, false)), true & false, !false, select(false, true, true))), func_4(func_4(vec3<bool>(true, true, true), global2[59354u]).a.wyw, Struct_1(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true)))), var_1.x), func_2(!true || all(vec2<bool>(true, true)), Struct_2(func_4(!vec3<bool>(false, false, false), global2[clamp(u_input.e.x, var_0.x, u_input.a)]), ~var_0.xzx << reverseBits(u_input.e), Struct_1(vec4<bool>(true, false, true, false)), func_2(4975u == 1u, Struct_2(global2[u_input.e.x], vec3<u32>(23029u, 53740u, var_0.x), global2[var_0.x], Struct_1(vec4<bool>(false, true, false, true)), var_1.x), vec2<bool>(true, true)), var_1.x), vec2<bool>(!any(vec4<bool>(false, false, true, true)), false)).a.zw);
    return func_3();
}

fn func_6(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    let var_0 = vec3<f32>(1269f, global0.x, -591f + 508f);
    global3 = array<vec3<f32>, 12>();
    return arg_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -991i;
    var var_1 = !(!(var_0 <= dot(vec3<i32>(1i, -1226i, var_0), vec3<i32>(var_0, u_input.c, -8133i) & u_input.b)));
    let var_2 = func_6(Struct_2(Struct_1(select(!vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), func_1())), u_input.e, global2[func_5(Struct_1(!vec4<bool>(false, false, true, true)))], Struct_1(select(vec4<bool>(true, false, true, false), !vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true))), var_0), u_input.d, Struct_2(func_4(vec3<bool>(!true, false, true), Struct_1(!vec4<bool>(true, false, true, false))), countOneBits(select(reverseBits(vec3<u32>(37704u, 4294967295u, 6816u)), u_input.e, !vec3<bool>(false, false, true))), Struct_1(vec4<bool>(true == true, !false, any(vec3<bool>(false, false, true)), all(vec2<bool>(false, true)))), Struct_1(!vec4<bool>(true, true, false, true)), firstLeadingBit(reverseBits(1i)) * var_0), Struct_2(Struct_1(!(!vec4<bool>(false, true, true, false))), vec3<u32>(countOneBits(u_input.a), u_input.e.x, u_input.a), global2[reverseBits(abs(~4294967295u))], Struct_1(func_2(all(vec2<bool>(false, true)), Struct_2(global2[u_input.e.x], u_input.e, global2[u_input.e.x], global2[u_input.e.x], 2147483647i), func_2(false, Struct_2(Struct_1(vec4<bool>(true, false, false, true)), u_input.e, Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(true, false, true, true)), -14910i), vec2<bool>(true, true)).a.xw).a), u_input.d.x));
    var var_3 = var_2.a.x;
    let var_4 = Struct_2(var_2, ~max((vec3<u32>(u_input.a, 18007u, 85734u) % vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x)) >> abs(vec3<u32>(0u, 1u, u_input.a)), u_input.e), Struct_1(vec4<bool>(true, func_4(select(var_2.a.wyy, vec3<bool>(true, var_2.a.x, var_2.a.x), vec3<bool>(var_2.a.x, var_2.a.x, var_2.a.x)), func_4(vec3<bool>(var_2.a.x, false, true), Struct_1(vec4<bool>(true, var_2.a.x, var_2.a.x, true)))).a.x, false && (false != true), func_4(func_1().zzz, var_2).a.x)), var_2, u_input.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(ceil(vec4<f32>(1036f, -global0.x, global0.x, 306f)), max(vec4<i32>(var_0, -41554i, max(-5362i, var_4.e), 0i), reverseBits(~abs(vec4<i32>(var_0, 0i, 2147483647i, 14041i)))), vec2<f32>(-1014f, global0.x) * (-(-global0.yx) * ceil(vec2<f32>(714f, 375f))), global0.x);
}

