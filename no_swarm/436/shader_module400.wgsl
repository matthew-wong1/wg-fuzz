// {"0:0":[66,48,71,221,14,242,139,87,27,12,79,78,128,223,24,217,149,16,243,179,234,160,140,42,251,178,227,98,68,201,190,233,72,202,100,132,238,199,171,145,103,207,1,236,137,230,102,212]}
// Seed: 2989209324399497861

struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
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

var<private> global0: array<u32, 30>;

var<private> global1: vec3<bool>;

fn func_3(arg_0: Struct_2) -> vec4<bool> {
    var var_0 = Struct_3((max(min(-1082f, 365f), -arg_0.a) / -(-1479f + arg_0.a)) + arg_0.a, -(arg_0.a - sign(exp2(-580f))), arg_0.d);
    var var_1 = Struct_1(vec3<bool>(!any(!var_0.c.a), global1.x, !(true == !var_0.c.a.x)), var_0.c.b, var_0.c.c, select(dot(vec3<u32>(global0[dot(u_input.b, var_0.c.b.yyy)], 39784u / global0[31403u], countOneBits(u_input.c.x)), arg_0.d.b.zzx ^ arg_0.d.b.zyy), ~((4294967295u << 4294967295u) & u_input.c.x), true && !arg_0.d.a.x), min(~global0[0u], ~dot(var_0.c.b.wx, var_0.c.b.yz)) & 103746u);
    var_1 = Struct_1(!(!select(var_0.c.a, vec3<bool>(false, arg_0.c.x, false), var_0.c.a)), var_0.c.b, vec4<i32>(dot(~min(vec4<i32>(-31598i, arg_0.d.c.x, var_0.c.c.x, -1i), vec4<i32>(var_0.c.c.x, var_1.c.x, -16188i, var_0.c.c.x)), (vec4<i32>(var_0.c.c.x, i32(-2147483648), -251i, 34764i) | arg_0.d.c) * -vec4<i32>(2147483647i, arg_0.b, var_0.c.c.x, 37020i)), var_1.c.x, -17710i, 39745i), global0[23739u & 44896u], var_0.c.b.x);
    var var_2 = arg_0;
    var_1 = Struct_1(select(vec3<bool>(arg_0.c.x, any(arg_0.c) && any(var_1.a), all(vec3<bool>(false, var_1.a.x, false)) & (1219f < var_0.b)), select(var_1.a, !(!arg_0.c), all(!var_2.c.yz)), vec3<bool>(firstTrailingBit(global0[4294967295u]) == 67754u, true, any(!vec3<bool>(var_1.a.x, true, false)))), ~(select(var_1.b, var_1.b, var_2.c.x) | countOneBits(var_2.d.b)) ^ vec4<u32>(abs(10114u), abs(var_2.d.e) + (var_2.d.e ^ var_1.e), select(u_input.a.x, var_1.b.x, global1.x) ^ (u_input.b.x * var_2.d.e), global0[arg_0.d.b.x]), vec4<i32>(-var_2.b, -1i, 19769i, clamp(-1i, -(-1i), -(-16666i))), 15122u, 1u);
    return vec4<bool>(any(!vec4<bool>(false, false, var_2.d.a.x, arg_0.d.a.x)) || !true, trunc(floor(-362f + arg_0.a)) > (var_2.a / arg_0.a), arg_0.a != var_0.a, false);
}

fn func_2(arg_0: f32) -> Struct_1 {
    global1 = vec3<bool>(any(select(!vec4<bool>(global1.x, false, global1.x, false), func_3(Struct_2(784f, 1i, vec3<bool>(global1.x, false, global1.x), Struct_1(vec3<bool>(global1.x, true, true), vec4<u32>(u_input.b.x, 4294967295u, global0[global0[7569u]], u_input.c.x), vec4<i32>(2147483647i, 1i, -1i, 31152i), 4929u, u_input.b.x))), false)), global1.x, false != !global1.x);
    let var_0 = Struct_2(-2383f, dot(vec3<i32>(-(~25183i), -(-1i | 41382i), -23379i), -((vec3<i32>(2147483647i, -23688i, -18933i) << vec3<u32>(global0[1u], global0[global0[95965u]], u_input.c.x)) | ~vec3<i32>(-4622i, 2147483647i, -21821i))), vec3<bool>(global1.x, global1.x, true), Struct_1(vec3<bool>(any(!vec3<bool>(global1.x, global1.x, global1.x)), !false, global1.x && global1.x), ~(~min(vec4<u32>(4294967295u, 115929u, 0u, u_input.c.x), vec4<u32>(62214u, global0[u_input.a.x], 29333u, 4294967295u))), -(~vec4<i32>(-6997i, -1i, i32(-2147483648), -46827i)), ~dot(u_input.c & u_input.c, ~u_input.c), ~((54768u - 0u) ^ ~53093u)));
    var var_1 = var_0.d;
    let var_2 = Struct_3(-842f, select(-(arg_0 * -1000f), var_0.a, all(vec3<bool>(false, true, false))) + var_0.a, var_0.d);
    var var_3 = Struct_1(var_1.a, ~((vec4<u32>(var_0.d.e, 11639u, 4294967295u, 109424u) + var_2.c.b) / (vec4<u32>(global0[global0[4294967295u]], 27517u, 1u, 3275u) & vec4<u32>(17338u, var_1.e, 16837u, 0u))) * (~(~vec4<u32>(24266u, var_0.d.b.x, var_0.d.b.x, var_0.d.d)) << vec4<u32>(u_input.c.x * u_input.c.x, var_2.c.e + 26007u, var_2.c.d, 64446u)), vec4<i32>(firstTrailingBit(~(~(-1i))), var_2.c.c.x, 6363i, var_1.c.x | var_0.d.c.x), dot(~(var_1.b.yxw ^ (vec3<u32>(u_input.c.x, 4459u, global0[u_input.a.x]) | var_1.b.ywz)), clamp(vec3<u32>(~var_1.d, ~u_input.b.x, ~var_2.c.d), reverseBits(vec3<u32>(37139u, 65104u, global0[global0[global0[4294967295u]]])), ~abs(vec3<u32>(47206u, var_0.d.b.x, var_2.c.e)))), u_input.c.x);
    return Struct_1(!select(select(!vec3<bool>(var_3.a.x, false, true), var_3.a, !vec3<bool>(false, true, true)), var_1.a, !var_3.a.x), (vec4<u32>(~60238u, 4294967295u, min(var_2.c.e, var_1.d), var_2.c.b.x | global0[global0[39027u]]) << var_3.b) + firstLeadingBit(max(var_0.d.b + vec4<u32>(var_2.c.b.x, 4294967295u, 1u, 2000u), countOneBits(var_3.b))), ~var_2.c.c ^ vec4<i32>(~clamp(i32(-2147483648), 22794i, 13496i), var_0.d.c.x, var_1.c.x, var_2.c.c.x), clamp(dot(vec3<u32>(0u, ~18224u, 1u / var_2.c.b.x), vec3<u32>(select(6858u, global0[8303u], var_0.d.a.x), 0u, select(var_3.b.x, var_1.e, false))), max(abs(~u_input.c.x), ~var_0.d.d & 0u), reverseBits(0u ^ 0u)), firstLeadingBit(~(~countOneBits(10959u))));
}

fn func_1(arg_0: Struct_1) -> i32 {
    global1 = arg_0.a;
    global1 = vec3<bool>(arg_0.a.x, ~4294967295u == 24872u, all(vec4<bool>(!global1.x, exp2(-1000f) == -134f, true, all(arg_0.a))));
    var var_0 = ~u_input.c.x;
    var var_1 = func_2(1734f);
    var_1 = Struct_1(!var_1.a, arg_0.b, -var_1.c, 4294967295u ^ ~var_1.e, ~select(arg_0.b.x, ~global0[max(var_1.d, 0u)], ~u_input.c.x < 4294967295u));
    return arg_0.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 30>();
    global1 = vec3<bool>(false, !global1.x, (~func_1(Struct_1(vec3<bool>(false, global1.x, true), vec4<u32>(u_input.c.x, 4294967295u, global0[4294967295u], global0[u_input.b.x]), vec4<i32>(0i, -37582i, 2192i, -1i), 15442u, u_input.c.x)) << global0[~(~u_input.b.x)]) >= (16375i ^ clamp(-12173i << global0[7113u], ~1i, abs(-38462i))));
    var var_0 = ~vec3<u32>(79302u, u_input.a.x, min(global0[global0[dot(vec2<u32>(u_input.b.x, global0[1u]), u_input.b.xz)]], max(4294967295u, 76962u) & ~1u));
    let var_1 = ~global0[max(~global0[87973u], ~25813u)];
    let var_2 = func_2(min((trunc(-542f) / -557f) / 310f, -round(143f) - -761f));
    let var_3 = ~var_2.b.wy >> ((abs(countOneBits(vec2<u32>(var_2.d, 4294967295u))) | var_0.zz) * vec2<u32>(~(var_0.x | 0u), var_1));
    let x = u_input.a;
    s_output = StorageBuffer(-627f);
}

