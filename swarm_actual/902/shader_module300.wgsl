// {"0:0":[192,130,204,79,9,30,199,158,74,88,74,69,243,248,220,130,120,88,123,239,124,189,45,38]}
// Seed: 17264523962565064210

struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<bool>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 19>;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(338f, -201f, vec3<bool>(false, false, true), vec3<bool>(false, true, false)), Struct_1(367f, -891f, vec3<bool>(false, false, false), vec3<bool>(true, false, true)), Struct_1(-297f, -363f, vec3<bool>(false, true, false), vec3<bool>(false, true, false)), Struct_1(1056f, 1795f, vec3<bool>(false, true, false), vec3<bool>(true, true, true)), Struct_1(-1294f, 504f, vec3<bool>(true, true, true), vec3<bool>(true, true, true)), Struct_1(480f, 957f, vec3<bool>(true, true, false), vec3<bool>(false, false, true)), Struct_1(664f, -945f, vec3<bool>(true, false, true), vec3<bool>(true, false, false)), Struct_1(-1000f, -2134f, vec3<bool>(false, true, false), vec3<bool>(false, true, false)), Struct_1(115f, -421f, vec3<bool>(true, false, true), vec3<bool>(false, false, true)), Struct_1(1000f, -982f, vec3<bool>(true, false, true), vec3<bool>(false, true, true)), Struct_1(-330f, -669f, vec3<bool>(false, true, true), vec3<bool>(false, true, true)), Struct_1(795f, 1358f, vec3<bool>(false, false, true), vec3<bool>(false, true, false)), Struct_1(-284f, -273f, vec3<bool>(true, false, false), vec3<bool>(true, false, false)), Struct_1(-544f, -630f, vec3<bool>(false, false, true), vec3<bool>(true, false, true)), Struct_1(461f, 794f, vec3<bool>(true, false, true), vec3<bool>(false, false, true)), Struct_1(865f, 304f, vec3<bool>(true, false, true), vec3<bool>(false, false, true)), Struct_1(924f, -589f, vec3<bool>(true, false, false), vec3<bool>(false, false, false)), Struct_1(-1000f, -530f, vec3<bool>(false, true, true), vec3<bool>(true, true, false)), Struct_1(471f, 1000f, vec3<bool>(true, false, true), vec3<bool>(false, true, false)), Struct_1(826f, -113f, vec3<bool>(true, true, true), vec3<bool>(false, false, true)));

var<private> global3: array<bool, 8> = array<bool, 8>(true, false, false, true, true, false, false, true);

var<private> global4: Struct_1 = Struct_1(1747f, 633f, vec3<bool>(false, false, true), vec3<bool>(true, false, false));

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = arg_2;
    let var_1 = arg_2;
    var var_2 = !select(vec4<bool>(!arg_2.d.x, any(select(var_0.d.xz, var_0.c.yz, true)), any(!vec4<bool>(true, false, var_1.c.x, true)), true), vec4<bool>(global3[~u_input.b.x], all(!vec4<bool>(global3[105521u], var_0.c.x, false, global3[21311u])), true & false, !(!var_0.c.x)), !(!select(vec4<bool>(global4.c.x, true, var_0.d.x, true), vec4<bool>(true, false, global3[18996u], global4.d.x), global1.c.x)));
    let var_3 = vec2<f32>(-(sign(-130f) - global4.a) + 779f, 1393f);
    let var_4 = !(!(!var_2.yw));
    return select(!vec4<bool>(global3[4294967295u], false, all(var_1.c.zx), true), select(select(!select(vec4<bool>(var_4.x, var_4.x, global4.c.x, true), vec4<bool>(global1.d.x, global4.d.x, true, true), vec4<bool>(true, false, var_4.x, true)), vec4<bool>(var_4.x, false, !true, var_0.c.x | global4.d.x), vec4<bool>(all(vec4<bool>(var_1.c.x, false, false, true)), !var_4.x, arg_1.x >= arg_0, global3[~u_input.b.x])), select(vec4<bool>(10033u <= 31845u, arg_2.c.x, true, var_0.d.x), select(select(vec4<bool>(var_2.x, var_0.c.x, global4.c.x, arg_2.d.x), vec4<bool>(global3[u_input.b.x], true, var_1.c.x, false), vec4<bool>(global1.c.x, var_0.c.x, var_0.d.x, true)), select(vec4<bool>(false, global4.c.x, false, var_0.d.x), vec4<bool>(global4.d.x, true, false, false), var_1.d.x), global1.d.x), true), vec4<bool>(!(!global3[u_input.b.x]), arg_2.d.x, !true, var_1.c.x)), arg_2.c.x);
}

fn func_2() -> Struct_1 {
    global0 = array<vec2<f32>, 19>();
    let var_0 = select(!func_3((22235i >> 45847u) % u_input.c.x, ~countOneBits(vec3<i32>(u_input.c.x, u_input.c.x, u_input.a)), Struct_1(-global4.b, global1.a, !global4.c, global4.c)), !select(!vec4<bool>(global1.c.x, global1.d.x, global1.c.x, true), vec4<bool>(!global4.c.x, global4.c.x, !global1.c.x, global1.c.x), global3[~u_input.b.x >> 0u]), select(func_3(-1i, ~vec3<i32>(-30656i, -1i, -43153i) >> (vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x) & vec3<u32>(u_input.b.x, 35438u, 12048u)), Struct_1(-704f, global1.b, vec3<bool>(global4.d.x, global1.c.x, global1.c.x), global4.d)), select(vec4<bool>(true & true, any(vec3<bool>(global4.c.x, global3[15572u], global4.d.x)), global3[u_input.b.x] && false, all(vec2<bool>(false, true))), vec4<bool>(false, -29719i == u_input.a, !true, false), global4.c.x), true));
    global3 = array<bool, 8>();
    let var_1 = Struct_1(817f, global4.a, vec3<bool>(all(vec2<bool>(global4.c.x, var_0.x)), max(22427u, u_input.b.x) != dot(vec4<u32>(u_input.b.x, u_input.b.x, 29559u, 9778u), max(vec4<u32>(0u, 4294967295u, 50701u, 4294967295u), vec4<u32>(4294967295u, 24388u, u_input.b.x, u_input.b.x))), false), global4.c);
    var var_2 = global2[53674u];
    return global2[((0u ^ u_input.b.x) % ~u_input.b.x) | u_input.b.x];
}

fn func_4(arg_0: u32, arg_1: vec2<u32>, arg_2: vec2<i32>, arg_3: Struct_1) -> f32 {
    global4 = arg_3;
    global0 = array<vec2<f32>, 19>();
    let var_0 = countOneBits(~vec3<i32>(-(~(-49380i)), -1i >> arg_0, (1i & arg_2.x) >> (0u | 4294967295u)));
    var var_1 = 0i;
    global3 = array<bool, 8>();
    return -select(arg_3.a, global1.a, true) + (global1.a * 323f);
}

fn func_1() -> vec3<f32> {
    global0 = array<vec2<f32>, 19>();
    let var_0 = Struct_1(1002f + -347f, floor(func_4(u_input.b.x, u_input.b, ~vec2<i32>(u_input.c.x, u_input.c.x), func_2())), vec3<bool>(global1.d.x, !global4.d.x, !false), vec3<bool>(!global1.d.x & all(!global4.c), !select(true, u_input.b.x >= u_input.b.x, global4.d.x || false), any(global4.c.xy)));
    var var_1 = func_2();
    let var_2 = (-(-(-1067f)) + var_1.a) <= -750f;
    var var_3 = var_0.a;
    return vec3<f32>(115f, -(-sign(select(597f, global1.a, false))), -(-772f - -(-var_0.a)));
}

fn func_5(arg_0: bool, arg_1: vec3<f32>, arg_2: f32) -> u32 {
    let var_0 = vec3<f32>(-((trunc(-426f) - (global4.b + arg_2)) - ((915f - global1.b) + (971f + 156f))), -1542f, ceil(func_1().x));
    global1 = func_2();
    var var_1 = select(!(!(!(!vec4<bool>(false, true, global3[0u], global1.c.x)))), vec4<bool>(global4.d.x, select(all(vec2<bool>(global4.d.x, arg_0)), !true, global3[0u >> (1u % 0u)]), global4.c.x, global4.d.x), func_3(-(-(-1i << u_input.b.x)), vec3<i32>(-37783i, dot(vec3<i32>(-1934i, u_input.a, 2147483647i), vec3<i32>(u_input.c.x, 0i, -14972i)) << clamp(4294967295u, 41058u, u_input.b.x), 2147483647i >> reverseBits(7942u)), func_2()));
    var var_2 = -vec2<f32>(ceil(439f), -746f);
    let var_3 = 1u;
    return abs(26236u);
}

fn func_6(arg_0: u32, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = u_input.c.x - (u_input.c.x % (-(-u_input.c.x) * -1i));
    let var_1 = (vec3<f32>(arg_1, -364f * func_4(u_input.b.x, u_input.b, u_input.c, Struct_1(1413f, global4.a, vec3<bool>(global4.d.x, global3[u_input.b.x], true), vec3<bool>(true, false, true))), func_1().x) + trunc(-(vec3<f32>(-272f, arg_2.a, global4.a) - vec3<f32>(global4.b, -726f, arg_2.a)))) * (select(-vec3<f32>(-524f, 268f, arg_2.b), (vec3<f32>(arg_2.b, global4.a, global4.b) - vec3<f32>(1000f, -366f, arg_1)) - -vec3<f32>(arg_2.a, 453f, arg_1), !(!true)) * trunc(-vec3<f32>(-1000f, 1567f, 356f) + (vec3<f32>(-355f, arg_3.a, -770f) + vec3<f32>(global1.a, global1.a, global1.b))));
    global2 = array<Struct_1, 20>();
    let var_2 = vec4<i32>(-1i, var_0 + abs((-50453i ^ u_input.a) - abs(26903i)), u_input.c.x, -5039i);
    var var_3 = func_2();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global2[dot(countOneBits(~(vec4<u32>(0u, 0u, u_input.b.x, 65289u) << vec4<u32>(38299u, u_input.b.x, u_input.b.x, u_input.b.x))), vec4<u32>(abs(1u), ~(~28648u), 64463u, dot(vec3<u32>(1u, u_input.b.x, u_input.b.x) >> vec3<u32>(47716u, u_input.b.x, 0u), ~vec3<u32>(1u, u_input.b.x, u_input.b.x)))) << u_input.b.x];
    var var_0 = firstTrailingBit(firstLeadingBit(~(-u_input.c.x)));
    var var_1 = func_6(~((u_input.b.x / 0u) - firstTrailingBit(21143u)) ^ func_5(all(!global1.c), func_1(), func_2().b), trunc(global1.b), global2[1267u], func_2());
    var var_2 = global2[4423u];
    var var_3 = countOneBits((dot(vec4<i32>(-34408i, 1i, u_input.c.x, 2147483647i), vec4<i32>(u_input.a, -19866i, u_input.a, 2147483647i)) * dot(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.c.x, u_input.c.x))) | 28393i) / ~clamp(max(u_input.a + u_input.c.x, u_input.c.x), -1i, clamp(-28013i, u_input.c.x, abs(0i)));
    var var_4 = Struct_1(global4.a, select(-var_1.b / (-547f / sign(global1.b)), 1208f, !(!false) || !false), var_2.d, select(vec3<bool>(false, global4.c.x, any(vec2<bool>(true, true))), !vec3<bool>(global1.c.x && global4.c.x, !var_1.d.x, true), true));
    let var_5 = vec4<i32>(-63016i, -abs(u_input.c.x), (u_input.c.x >> ~(~u_input.b.x)) >> 4294967295u, -1i);
    let var_6 = all(select(select(vec4<bool>(global3[u_input.b.x], true, var_5.x <= var_5.x, 33283u != 4294967295u), func_3(abs(u_input.a), vec3<i32>(u_input.c.x, 6891i, -68526i), func_6(4294967295u, 280f, global2[11735u], Struct_1(-1000f, global1.b, vec3<bool>(global1.c.x, true, true), global4.c))), var_4.d.x), !select(select(vec4<bool>(var_4.c.x, true, var_1.d.x, false), vec4<bool>(true, global4.d.x, global1.c.x, var_1.d.x), global3[u_input.b.x]), select(vec4<bool>(global3[u_input.b.x], true, global1.d.x, var_2.d.x), vec4<bool>(global4.c.x, true, var_4.c.x, var_2.d.x), var_2.c.x), func_3(u_input.c.x, vec3<i32>(var_5.x, u_input.a, var_5.x), global2[u_input.b.x])), func_3(u_input.c.x, -(~vec3<i32>(var_5.x, var_5.x, var_5.x)), global2[~4294967295u >> ~93110u])));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-4867i ^ reverseBits(var_5.x), -u_input.c.x, clamp(0i, ~u_input.a, -1i)) << countOneBits(~vec3<u32>(u_input.b.x, 31562u, u_input.b.x)), i32(-2147483648), -((-global1.a + -global1.b) * 144f), countOneBits(-max(var_5.yxx, var_5.xxy)) << ((~vec3<u32>(31738u, u_input.b.x, 54572u) % vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)) + vec3<u32>(1u, u_input.b.x, ~u_input.b.x)));
}

