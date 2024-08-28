// {"0:0":[82,144,113,247,109,3,29,36,205,58,93,163,251,166,162,122,153,130,51,175,71,254,175,184,150,95,40,60,22,131,251,205,213,51,235,136,238,240,135,61,58,167,219,51,157,25,65,30]}
// Seed: 1943763633221408103

struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: f32,
    d: vec4<u32>,
    e: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18>;

var<private> global1: array<vec3<u32>, 21> = array<vec3<u32>, 21>(vec3<u32>(46558u, 7021u, 4294967295u), vec3<u32>(86783u, 28471u, 1908u), vec3<u32>(4294967295u, 58273u, 0u), vec3<u32>(0u, 88245u, 4294967295u), vec3<u32>(26543u, 4294967295u, 54078u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(54344u, 4294967295u, 4294967295u), vec3<u32>(8735u, 48382u, 0u), vec3<u32>(4294967295u, 956u, 5105u), vec3<u32>(0u, 8860u, 7043u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(1u, 4294967295u, 7194u), vec3<u32>(4294967295u, 65125u, 1u), vec3<u32>(28089u, 0u, 4294967295u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(90378u, 122815u, 0u), vec3<u32>(121911u, 7343u, 21409u), vec3<u32>(0u, 24192u, 0u), vec3<u32>(4294967295u, 0u, 0u));

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: bool, arg_3: Struct_2) -> vec3<f32> {
    let var_0 = Struct_3(abs(max(-(arg_3.e.ywy + vec3<f32>(161f, arg_3.e.x, arg_3.b.a)), -trunc(vec3<f32>(arg_3.c.a, 850f, -390f)))), arg_3, 923f, select(vec4<u32>(~1u, min(1u, u_input.b.x), u_input.a.x, ~0u), (vec4<u32>(u_input.b.x, u_input.a.x, u_input.d, u_input.a.x) + vec4<u32>(2523u, 162910u, 0u, u_input.a.x)) ^ u_input.a, all(!vec2<bool>(false, arg_0))) / firstTrailingBit(vec4<u32>(88646u & 0u, ~31168u, 0u & 1u, 1u ^ 4294967295u)), (-(-655f) / floor(sign(-779f))) + trunc(-(-482f)));
    let var_1 = false;
    global1 = array<vec3<u32>, 21>();
    var var_2 = ~firstTrailingBit(firstTrailingBit(vec4<u32>(~4294967295u, dot(u_input.a.ww, u_input.b.zx), var_0.d.x, u_input.c)));
    var var_3 = -1000f + (-(-2717f) * -(-1693f));
    return select(-ceil(-vec3<f32>(-207f, var_0.b.e.x, var_0.a.x)), -arg_3.c.b, var_0.b.a.zzz) - arg_3.e.zxw;
}

fn func_2(arg_0: u32) -> vec2<f32> {
    global1 = array<vec3<u32>, 21>();
    let var_0 = max(round(select(-vec2<f32>(-631f, -1734f), vec2<f32>(-2762f, 1403f), !global0[44142u]) / -(-vec2<f32>(-128f, -1690f))), (min(-vec2<f32>(1791f, 1032f), select(vec2<f32>(327f, -1850f), vec2<f32>(484f, 803f), true)) * -(-vec2<f32>(908f, 732f))) - ceil(-(vec2<f32>(612f, 559f) * vec2<f32>(1000f, 1000f))));
    let var_1 = min(-(-abs(trunc(vec3<f32>(175f, 646f, 294f)))), -(-func_3(false, vec2<i32>(11990i, -1i), true, Struct_2(vec4<bool>(global0[1u], false, global0[1u], false), Struct_1(343f, vec3<f32>(-918f, var_0.x, 251f)), Struct_1(-649f, vec3<f32>(var_0.x, 1000f, 1158f)), global0[1u], vec4<f32>(-1388f, -713f, -890f, var_0.x)))));
    global1 = array<vec3<u32>, 21>();
    global1 = array<vec3<u32>, 21>();
    return -vec2<f32>(var_0.x / -524f, floor(-338f * -147f));
}

fn func_1(arg_0: f32) -> Struct_2 {
    global0 = array<bool, 18>();
    var var_0 = vec2<f32>(-(-850f) + -(-1223f), arg_0 / 1222f);
    var_0 = vec2<f32>(-arg_0, -1151f);
    let var_1 = (abs(func_2(u_input.b.x)) / select(-(-vec2<f32>(-853f, -334f)), func_2(~u_input.a.x), false)) / -(-vec2<f32>(var_0.x, 974f) - -(-vec2<f32>(arg_0, arg_0)));
    let var_2 = 37922i;
    return Struct_2(!select(!(!vec4<bool>(global0[u_input.d], global0[u_input.c], global0[4294967295u], false)), !vec4<bool>(false, global0[13744u], true, global0[u_input.d]), !select(vec4<bool>(global0[10083u], global0[u_input.b.x], global0[u_input.b.x], global0[1u]), vec4<bool>(global0[0u], global0[u_input.c], global0[124473u], global0[17581u]), global0[u_input.c])), Struct_1((select(-111f, 1728f, true) * var_0.x) - (1957f * -(-1929f)), vec3<f32>(-exp2(268f), var_0.x / -457f, exp2(459f - var_1.x))), Struct_1(394f, vec3<f32>(-var_1.x, 513f, -1471f)), global0[~13798u], (-(-vec4<f32>(var_0.x, -1134f, var_0.x, var_0.x)) + min(ceil(vec4<f32>(arg_0, var_0.x, var_0.x, -390f)), vec4<f32>(-1406f, var_1.x, 1431f, var_1.x) * vec4<f32>(var_0.x, var_1.x, arg_0, 1389f))) + vec4<f32>(-(-arg_0), -909f + -1248f, var_1.x, var_1.x + arg_0));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>) -> Struct_1 {
    global0 = array<bool, 18>();
    global1 = array<vec3<u32>, 21>();
    let var_0 = Struct_3(arg_0.c.b - max(vec3<f32>(arg_0.c.a, arg_0.e.x, arg_0.b.a) * -arg_0.e.zxw, -arg_0.b.b - ceil(arg_0.b.b)), func_1(min(exp2(arg_0.b.b.x + arg_0.e.x), (1902f / -770f) / -(-159f))), arg_0.c.a, firstLeadingBit(min(countOneBits(~u_input.a), ~firstLeadingBit(u_input.a))), -(arg_0.b.a + (func_2(11592u).x - -1917f)));
    let var_1 = ~clamp(select(arg_1, firstTrailingBit(arg_1), false != arg_0.d), vec4<i32>(~arg_1.x, ~arg_1.x, arg_1.x, arg_1.x - -1i), min(-vec4<i32>(arg_1.x, 17648i, arg_1.x, arg_1.x), arg_1)) % (-(abs(vec4<i32>(66259i, 22180i, arg_1.x, arg_1.x)) ^ arg_1) & (arg_1 % ~arg_1));
    global1 = array<vec3<u32>, 21>();
    return Struct_1(238f, func_3(true, firstLeadingBit(arg_1.wz), !true, func_1(min(var_0.c, trunc(var_0.e)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 18>();
    global1 = array<vec3<u32>, 21>();
    global1 = array<vec3<u32>, 21>();
    var var_0 = Struct_2(!(!(!select(vec4<bool>(global0[4294967295u], false, false, true), vec4<bool>(false, global0[4294967295u], global0[1u], false), false))), Struct_1(-1952f, min(-vec3<f32>(1513f, -619f, -106f), floor(-vec3<f32>(-454f, 1105f, -1337f)))), func_4(func_1(-390f), vec4<i32>(~2147483647i, dot(vec3<i32>(0i, -27794i, 2147483647i), vec3<i32>(2147483647i, 0i, 1i)) - ~1i, (0i % -11058i) & -21028i, 2147483647i)), -(-476f) > max((-378f + -831f) / ceil(292f), (1100f / -934f) - -819f), vec4<f32>(-(-375f) + (111f + -1000f), -671f, -1708f / -3208f, -floor(-325f)) / min(step(-vec4<f32>(-458f, 492f, 1183f, 864f), -vec4<f32>(1418f, 1754f, -813f, 1566f)), -(vec4<f32>(-107f, -1652f, 613f, -763f) * vec4<f32>(966f, -1195f, -931f, -510f))));
    global0 = array<bool, 18>();
    global0 = array<bool, 18>();
    let var_1 = firstLeadingBit(1u);
    let var_2 = firstLeadingBit((-2147483647i * abs(24711i / 0i)) + ((dot(vec2<i32>(42180i, -2657i), vec2<i32>(-32073i, 0i)) - (-1i & i32(-2147483648))) + -(-27328i)));
    let x = u_input.a;
    s_output = StorageBuffer(-1010f, var_0.e, vec4<i32>(-var_2, -countOneBits(min(var_2, 19535i)), var_2, dot(abs(-vec4<i32>(var_2, var_2, var_2, 1i)), abs(vec4<i32>(var_2, -1i, var_2, var_2)))), -trunc(-vec3<f32>(115f, var_0.c.a, var_0.c.a)) / ((vec3<f32>(885f, var_0.c.b.x, -1554f) / vec3<f32>(var_0.c.a, var_0.e.x, var_0.e.x)) * (vec3<f32>(var_0.c.a, var_0.b.a, -657f) - -vec3<f32>(-972f, var_0.c.a, var_0.e.x))), 0i);
}

