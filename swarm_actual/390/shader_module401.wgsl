// {"0:0":[242,113,157,169,243,180,23,107,212,36,161,172,6,188,157,53,238,241,206,39,189,119,214,95,70,34,49,89,29,184,141,189,120,158,131,211,162,221,236,15,154,146,221,2,224,213,161,111]}
// Seed: 6231508102175311606

struct Struct_1 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20>;

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_3, arg_3: u32) -> f32 {
    let var_0 = arg_2.e;
    global0 = array<u32, 20>();
    var var_1 = Struct_2(vec3<u32>((arg_1.e.a * 15772u) << arg_3, ~global0[~0u], arg_1.a.x) << (arg_1.a - ~vec3<u32>(7261u, arg_0.a, arg_3)), Struct_1(26195u, vec3<i32>(-1018i, -9223i, clamp(abs(2147483647i), -25339i, dot(u_input.b, vec4<i32>(var_0, var_0, arg_2.e, var_0))))), arg_0, Struct_1(arg_0.a, arg_1.e.b), arg_2.b.d);
    let var_2 = Struct_1(select(global0[abs(1u + var_1.c.a)], arg_3 - ~(~arg_3), true), vec3<i32>(~arg_2.d, ~abs(var_0), max(firstLeadingBit(var_1.e.b.x), min(var_0, -20305i | -1i))));
    return arg_2.a * (1006f * min(2038f, arg_2.a));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: i32, arg_3: vec4<i32>) -> f32 {
    global0 = array<u32, 20>();
    let var_0 = reverseBits(dot(~arg_0, arg_0));
    let var_1 = select(max(vec4<f32>(1000f, max(170f, -1037f + -1000f), -1037f, 1345f), vec4<f32>(405f, round(-540f + 696f), -548f, -1293f + 932f)), -(vec4<f32>(func_3(arg_1.d, arg_1, Struct_3(-1272f, Struct_2(arg_1.a, Struct_1(arg_1.e.a, vec3<i32>(i32(-2147483648), arg_2, 20452i)), Struct_1(1u, vec3<i32>(u_input.d, arg_2, 0i)), arg_1.d, Struct_1(var_0, vec3<i32>(arg_3.x, 1i, arg_3.x))), vec3<i32>(24213i, 1i, u_input.d), arg_2, -6847i), arg_1.e.a), 269f, -1241f, 561f * 1190f) - vec4<f32>(-1000f * 236f, 1282f, 340f, max(966f, -1619f))), any(select(!(!vec3<bool>(true, true, true)), select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), select(false, true, true)), select(!vec3<bool>(true, true, true), !vec3<bool>(true, false, true), true & true))));
    var var_2 = arg_1;
    let var_3 = vec3<f32>(ceil(select(-var_1.x, -(-2642f), !any(vec3<bool>(true, true, true)))), var_1.x / -(-(375f + var_1.x)), var_1.x);
    return trunc(select(253f + trunc(ceil(-1138f)), min(361f, var_1.x), false));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3) -> bool {
    var var_0 = arg_1.b.e.b.x;
    let var_1 = -vec3<f32>(round(arg_0.a) / abs(397f + arg_1.a), arg_1.a, func_2(reverseBits(vec4<u32>(1u, global0[arg_0.b.a.x], arg_1.b.e.a, 45778u)), Struct_2(vec3<u32>(1u, 1u, 4294967295u), arg_0.b.b, arg_1.b.e, Struct_1(4294967295u, arg_0.c), arg_0.b.c), dot(vec3<i32>(arg_0.e, u_input.a, 59777i), vec3<i32>(0i, arg_1.e, -1i)), u_input.b) / (floor(arg_1.a) - -1252f));
    var var_2 = true;
    var var_3 = -arg_1.c;
    global0 = array<u32, 20>();
    return all(select(select(select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, true), false), select(vec2<bool>(false, false), vec2<bool>(true, true), true)), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), all(vec2<bool>(false, false))), !(!true)), select(vec2<bool>(!true, true || false), select(!vec2<bool>(false, false), vec2<bool>(false, true), var_1.x >= var_1.x), select(!vec2<bool>(true, false), !vec2<bool>(true, true), vec2<bool>(true, false))), !select(vec2<bool>(false, true), !vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 20>();
    global0 = array<u32, 20>();
    let var_0 = vec2<i32>(select(2147483647i, u_input.b.x * -11030i, func_1(Struct_3(1498f, Struct_2(vec3<u32>(global0[42304u], 58212u, 1u), Struct_1(global0[5808u], u_input.b.zzz), Struct_1(82518u, vec3<i32>(u_input.a, u_input.b.x, u_input.a)), Struct_1(0u, u_input.b.zzz), Struct_1(26922u, vec3<i32>(u_input.c, u_input.d, u_input.b.x))), u_input.b.ywy, u_input.d, u_input.d), Struct_3(-105f, Struct_2(vec3<u32>(59678u, global0[0u], 0u), Struct_1(24031u, u_input.b.ywy), Struct_1(4294967295u, vec3<i32>(-30411i, u_input.b.x, u_input.b.x)), Struct_1(global0[global0[global0[global0[1u]]]], vec3<i32>(u_input.b.x, u_input.d, -21548i)), Struct_1(global0[15971u], u_input.b.wyx)), u_input.b.yxx, 0i, 40593i))) + dot(~firstTrailingBit(vec4<i32>(i32(-2147483648), 2147483647i, u_input.a, u_input.d)), u_input.b), dot(select(-u_input.b.wy, -vec2<i32>(4309i, -12577i), any(vec3<bool>(false, true, false))), reverseBits(u_input.b.zx)) ^ (u_input.a | -34734i));
    global0 = array<u32, 20>();
    let var_1 = -2147483647i;
    let var_2 = -(-1255f);
    global0 = array<u32, 20>();
    var var_3 = Struct_2(~vec3<u32>(global0[(53396u ^ 0u) + ~global0[27089u]], dot(vec3<u32>(global0[4294967295u], global0[global0[global0[19371u]]], global0[6628u]), max(vec3<u32>(global0[10469u], 25992u, global0[global0[global0[global0[27119u]]]]), vec3<u32>(1u, 0u, global0[4294967295u]))), 0u), Struct_1(~(~53414u >> 1u), ~((u_input.b.yxz ^ u_input.b.zww) | clamp(vec3<i32>(var_0.x, -20708i, i32(-2147483648)), vec3<i32>(42648i, var_0.x, 1i), u_input.b.zyz))), Struct_1(global0[global0[115003u % (firstLeadingBit(global0[0u]) >> 1u)]], vec3<i32>(dot(firstTrailingBit(vec3<i32>(1i, 34045i, 1i)), vec3<i32>(u_input.d, u_input.d, 36955i)), abs(~(-1i)), -u_input.d / (u_input.c * u_input.d))), Struct_1(37941u, vec3<i32>(dot(u_input.b | vec4<i32>(19991i, 2147483647i, 2147483647i, 27812i), u_input.b | u_input.b), 19977i, abs(var_0.x))), Struct_1(~(~global0[66098u]) >> 1u, u_input.b.wwy));
    let x = u_input.a;
    s_output = StorageBuffer(~(((var_3.c.a * 4294967295u) & global0[dot(vec3<u32>(21516u, 0u, 3487u), vec3<u32>(var_3.c.a, var_3.e.a, 16244u))]) ^ global0[var_3.a.x]), max(var_2, func_2(min(vec4<u32>(var_3.d.a, var_3.a.x, var_3.a.x, 1844u), vec4<u32>(1u, var_3.e.a, var_3.d.a, global0[global0[30408u]])) * ~vec4<u32>(2995u, 0u, var_3.a.x, global0[var_3.c.a]), Struct_2(abs(var_3.a), Struct_1(global0[var_3.d.a], u_input.b.yyw), Struct_1(global0[27271u], vec3<i32>(1i, -25838i, var_3.d.b.x)), var_3.e, var_3.b), (var_1 - 1i) % -(i32(-2147483648)), -vec4<i32>(u_input.c, var_1, var_1, 17469i))), ~(dot(min(u_input.b, u_input.b), -u_input.b) * (-var_3.d.b.x >> (3104u ^ 20966u))));
}

