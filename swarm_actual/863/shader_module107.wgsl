// {"0:0":[81,4,11,206,217,84,100,119,177,92,254,185,205,71,176,161,2,63,234,242,225,132,94,131,156,208,126,108,119,25,236,47,125,23,37,139,227,237,14,110,181,27,61,110,150,26,234,207]}
// Seed: 3534424412604679566

struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: vec3<bool>,
    d: vec3<bool>,
    e: i32,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: vec2<bool>,
    c: bool,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28> = array<bool, 28>(true, false, false, false, false, true, false, false, false, true, false, false, false, true, false, false, false, true, false, true, false, false, true, true, false, true, false, true);

var<private> global1: vec3<f32>;

var<private> global2: array<vec2<f32>, 4>;

fn func_3(arg_0: vec4<f32>, arg_1: i32) -> i32 {
    global1 = arg_0.yzz;
    global1 = round(min(abs(min(vec3<f32>(-715f, global1.x, -848f), arg_0.yzw)), arg_0.xyw)) / sign(-arg_0.zxx);
    let var_0 = !(!(!select(select(vec2<bool>(false, global0[u_input.a]), vec2<bool>(global0[u_input.a], global0[u_input.a]), global0[u_input.a]), !vec2<bool>(global0[71762u], true), vec2<bool>(true, global0[u_input.b.x]))));
    var var_1 = Struct_3(u_input.b, Struct_2(any(vec3<bool>(false, false, any(vec4<bool>(true, global0[u_input.b.x], var_0.x, var_0.x)))), Struct_1(u_input.c.x, (vec3<f32>(arg_0.x, arg_0.x, 757f) - arg_0.wzw) * -vec3<f32>(119f, 522f, -675f)), Struct_1(0i, step(vec3<f32>(-316f, arg_0.x, -320f), arg_0.yyz) + (arg_0.zzy / vec3<f32>(-153f, -328f, arg_0.x))), vec3<bool>(false, false, false)), vec3<bool>(var_0.x, !(!all(vec2<bool>(var_0.x, false))), true), !vec3<bool>(!var_0.x, var_0.x, true), arg_1);
    var_1 = Struct_3(vec3<u32>(55908u, u_input.a, 0u), Struct_2(ceil(-(-1584f)) != (floor(-1000f) * (-1060f - -1040f)), var_1.b.b, Struct_1(arg_1, -var_1.b.b.b + select(vec3<f32>(-1015f, 106f, 1000f), arg_0.yyy, var_0.x)), select(select(select(var_1.b.d, vec3<bool>(var_1.b.a, var_1.b.d.x, false), global0[1u]), var_1.c, true), var_1.d, select(vec3<bool>(true, true, true), !var_1.b.d, true))), select(!var_1.b.d, select(vec3<bool>(all(vec3<bool>(false, false, var_1.c.x)), var_0.x, !var_0.x), var_1.b.d, true), var_1.c.x), select(vec3<bool>(!false, global0[7333u], any(select(vec4<bool>(false, var_1.c.x, true, global0[9131u]), vec4<bool>(global0[var_1.a.x], var_0.x, false, true), vec4<bool>(false, var_1.d.x, var_1.d.x, true)))), select(vec3<bool>(any(vec4<bool>(true, var_1.b.d.x, true, global0[17823u])), false, var_0.x || var_1.c.x), var_1.d, var_1.c), true), -dot(firstTrailingBit(~vec4<i32>(-20368i, u_input.c.x, 79658i, u_input.c.x)), (vec4<i32>(u_input.c.x, arg_1, var_1.b.c.a, u_input.c.x) << vec4<u32>(u_input.b.x, 23476u, u_input.b.x, var_1.a.x)) ^ ~vec4<i32>(u_input.c.x, arg_1, 1i, 2147483647i)));
    return arg_1;
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = vec3<bool>((682f / sign(arg_0.b.x)) > (-(-global1.x) * 1753f), !((~u_input.a << ~u_input.a) < u_input.b.x), !all(vec4<bool>(false, global0[37155u], all(vec4<bool>(global0[0u], true, true, true)), false)));
    let var_1 = clamp(min(vec4<i32>(u_input.c.x, func_3(-vec4<f32>(global1.x, -876f, 489f, arg_0.b.x), u_input.c.x ^ u_input.c.x), func_3(vec4<f32>(996f, global1.x, arg_0.b.x, global1.x) / vec4<f32>(global1.x, global1.x, 102f, global1.x), max(23742i, arg_0.a)), 2147483647i * arg_0.a), firstLeadingBit(~vec4<i32>(-16411i, u_input.c.x, arg_0.a, -5537i)) + (~vec4<i32>(0i, -56892i, arg_0.a, 63972i) >> vec4<u32>(48694u, u_input.b.x, u_input.b.x, u_input.b.x))), -(-(~vec4<i32>(0i, u_input.c.x, -16302i, 2147483647i))), -vec4<i32>(~(~arg_0.a), 1i, -(-4671i & -3897i), -u_input.c.x ^ dot(vec2<i32>(0i, u_input.c.x), vec2<i32>(2147483647i, -39759i))));
    global0 = array<bool, 28>();
    global0 = array<bool, 28>();
    global2 = array<vec2<f32>, 4>();
    return global1.x * (round(-(global1.x + 2065f)) - arg_0.b.x);
}

fn func_1() -> bool {
    global1 = (vec3<f32>(-346f, max(214f, -741f), floor(func_2(Struct_1(2147483647i, vec3<f32>(315f, global1.x, global1.x))))) - step(select(vec3<f32>(-709f, 627f, -1521f) - vec3<f32>(global1.x, global1.x, 984f), vec3<f32>(-2064f, global1.x, global1.x) * vec3<f32>(global1.x, 799f, 1012f), global0[u_input.b.x | 37305u]), vec3<f32>(sign(848f), -257f, trunc(1000f)))) - (-vec3<f32>(global1.x / 114f, -172f + global1.x, -(-297f)) + vec3<f32>(abs(global1.x), global1.x + abs(global1.x), select(global1.x, -150f, global0[u_input.a]) * global1.x));
    var var_0 = Struct_1(-26867i, floor(trunc(-max(vec3<f32>(1304f, global1.x, global1.x), vec3<f32>(global1.x, -1513f, -390f)))));
    let var_1 = Struct_5(~10135u / 81340u, !vec2<bool>(any(vec4<bool>(global0[0u], true, true, global0[11165u])), !(!true)), !global0[u_input.a], vec4<bool>(false, global0[1u], select(!(!true), global0[4294967295u & 62843u], true), all(vec4<bool>(global0[1u], false, false, global0[39338u])) && (4294967295u != u_input.a)));
    let var_2 = 990f - -589f;
    var var_3 = Struct_4(var_0.a % -6089i, Struct_1(u_input.c.x ^ -var_0.a, -var_0.b));
    return !((-849f * ceil(select(1934f, var_0.b.x, global0[var_1.a]))) == round(var_2));
}

fn func_4(arg_0: vec4<u32>, arg_1: bool, arg_2: vec3<i32>, arg_3: i32) -> StorageBuffer {
    var var_0 = Struct_4(1i, Struct_1(~arg_3, -vec3<f32>(global1.x / -541f, global1.x - global1.x, global1.x)));
    var var_1 = min(vec4<i32>(-firstTrailingBit(36531i / 1i), firstLeadingBit(~2147483647i) - 2147483647i, arg_2.x, arg_2.x), max(~(abs(vec4<i32>(arg_2.x, -24411i, 1i, arg_3)) * min(vec4<i32>(i32(-2147483648), 0i, -11799i, 21083i), vec4<i32>(arg_3, 0i, arg_3, arg_2.x))), abs(vec4<i32>(var_0.a, arg_2.x, arg_2.x, arg_3) & (vec4<i32>(-13256i, u_input.c.x, 0i, arg_2.x) << arg_0))));
    global2 = array<vec2<f32>, 4>();
    let var_2 = Struct_5(u_input.a, !vec2<bool>(false, !false), all(select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, global0[arg_0.x], false, true), global0[u_input.a]), select(vec4<bool>(false, true, global0[u_input.a], global0[arg_0.x]), vec4<bool>(arg_1, global0[1u], true, arg_1), vec4<bool>(true, arg_1, global0[0u], false)), vec4<bool>(true, arg_1, false, global0[u_input.b.x])), !select(vec4<bool>(arg_1, global0[arg_0.x], arg_1, arg_1), vec4<bool>(false, arg_1, false, arg_1), false), any(!vec2<bool>(false, true)))), select(vec4<bool>(true && true, true, global0[arg_0.x], global0[~countOneBits(1542u)]), !select(select(vec4<bool>(true, arg_1, global0[73075u], arg_1), vec4<bool>(arg_1, arg_1, true, arg_1), arg_1), select(vec4<bool>(arg_1, true, true, global0[85370u]), vec4<bool>(global0[1u], arg_1, false, false), vec4<bool>(global0[u_input.b.x], global0[u_input.a], arg_1, arg_1)), !false), select(!vec4<bool>(arg_1, true, arg_1, arg_1), !vec4<bool>(true, arg_1, global0[arg_0.x], arg_1), select(select(vec4<bool>(arg_1, global0[arg_0.x], true, global0[u_input.b.x]), vec4<bool>(false, true, arg_1, arg_1), arg_1), select(vec4<bool>(false, true, true, global0[0u]), vec4<bool>(arg_1, false, global0[arg_0.x], arg_1), vec4<bool>(arg_1, global0[4294967295u], arg_1, false)), !true))));
    var var_3 = -(-149f);
    return StorageBuffer(20333u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(u_input.c.x >> (((u_input.a & u_input.a) * ~u_input.a) >> u_input.a), abs(4214i), u_input.c.x, min(dot(vec4<i32>(u_input.c.x, u_input.c.x, i32(-2147483648), u_input.c.x) * firstLeadingBit(vec4<i32>(u_input.c.x, u_input.c.x, i32(-2147483648), 25904i)), vec4<i32>(firstLeadingBit(u_input.c.x), reverseBits(2147483647i), u_input.c.x, -32861i)), dot(vec3<i32>(dot(u_input.c, u_input.c), -32643i, -34617i), vec3<i32>(firstLeadingBit(u_input.c.x), u_input.c.x, -15197i))));
    global1 = vec3<f32>(step(-(-(-918f)), min(global1.x, ceil(-global1.x))), -(-(-global1.x)), 1498f);
    global0 = array<bool, 28>();
    var var_1 = global0[reverseBits(4294967295u)];
    var_1 = true;
    global0 = array<bool, 28>();
    global0 = array<bool, 28>();
    let x = u_input.a;
    s_output = func_4(vec4<u32>(firstLeadingBit(u_input.b.x) ^ ~u_input.a, u_input.b.x - (u_input.a * 0u), ~(~9777u), ~(~0u)) | max(~vec4<u32>(10419u, 0u, u_input.b.x, u_input.b.x) - vec4<u32>(u_input.b.x, u_input.a, 7178u, u_input.a), max(~vec4<u32>(u_input.a, u_input.b.x, u_input.a, 47607u), vec4<u32>(28633u, 4294967295u, u_input.b.x, u_input.a) * vec4<u32>(u_input.a, u_input.b.x, u_input.a, 4294967295u))), !func_1(), ~(min(-vec3<i32>(var_0.x, -1i, u_input.c.x), select(vec3<i32>(u_input.c.x, 288i, -4558i), vec3<i32>(i32(-2147483648), -1i, u_input.c.x), vec3<bool>(global0[0u], false, true))) / vec3<i32>(abs(u_input.c.x), u_input.c.x, ~2147483647i)), -54265i);
}

