// {"0:0":[18,35,175,101,20,203,134,237,247,3,45,76,93,235,223,23,250,200,106,127,233,229,229,110,181,165,239,216,32,131,144,51]}
// Seed: 10449079382087313955

struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec2<i32>,
    b: i32,
    c: vec2<bool>,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24>;

var<private> global1: f32;

var<private> global2: vec3<bool>;

var<private> global3: array<vec3<bool>, 10>;

fn func_3(arg_0: vec3<bool>, arg_1: Struct_3) -> u32 {
    let var_0 = !vec2<bool>(!false, exp2(715f - 2005f) == (589f - ceil(-1232f)));
    let var_1 = u_input.b.xz;
    global2 = vec3<bool>(!(false && global2.x), (ceil(step(-437f, -2486f)) + -(-340f * -1774f)) >= step(195f, min(-1307f, -1683f * 473f)), global2.x);
    global2 = !select(!select(select(vec3<bool>(arg_1.a, false, false), arg_0, vec3<bool>(true, true, false)), !vec3<bool>(false, global2.x, global2.x), !global2.x), vec3<bool>(!arg_0.x, false, !(35520u > var_1.x)), select(arg_0, !vec3<bool>(true, true, true), all(!var_0)));
    global0 = array<Struct_2, 24>();
    return u_input.b.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_2) -> bool {
    var var_0 = arg_0;
    var var_1 = Struct_1(min(vec4<u32>(func_3(select(vec3<bool>(global2.x, arg_2.a, true), global3[1u], vec3<bool>(arg_1.a, global2.x, arg_1.a)), Struct_3(global2.x)), firstTrailingBit(u_input.a), arg_0.a.x, reverseBits(0u) % var_0.a.x), var_0.a));
    var var_2 = Struct_2(global2.x);
    return -1i > i32(-2147483648);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2) -> vec2<i32> {
    global0 = array<Struct_2, 24>();
    global0 = array<Struct_2, 24>();
    let var_0 = Struct_4(~(~firstTrailingBit(vec2<i32>(u_input.c, u_input.c)) >> ~(~arg_0.xx)), u_input.c, !global2.xy, Struct_3(-(-647f - 464f) > ((-1728f - -1000f) / (348f / 614f))));
    var var_1 = abs(arg_0.x);
    var var_2 = vec3<bool>(!all(var_0.c), !any(select(vec2<bool>(var_0.c.x, true), !global2.xy, !var_0.c.x)), arg_1.a);
    return abs(var_0.a | var_0.a);
}

fn func_1(arg_0: vec2<bool>) -> vec3<i32> {
    let var_0 = -(-func_4(u_input.b, Struct_2(func_2(Struct_1(vec4<u32>(6016u, u_input.a, u_input.b.x, u_input.b.x)), Struct_3(false), global0[u_input.b.x]))));
    let var_1 = min(floor(select(-1562f, (-615f * -585f) - (409f / -1430f), (var_0.x % -12538i) <= ~(-17028i))), 1509f * round(189f));
    global2 = select(global3[41193u], !select(!select(global3[u_input.a], vec3<bool>(global2.x, global2.x, true), global3[0u]), select(!vec3<bool>(arg_0.x, global2.x, arg_0.x), vec3<bool>(true, global2.x, arg_0.x), false), !true), !global3[2630u]);
    var var_2 = Struct_1(min(vec4<u32>(u_input.b.x, abs(~37735u), u_input.a + (u_input.a | 4294967295u), abs(1082u) * min(32600u, u_input.a)), vec4<u32>(u_input.b.x, u_input.a, max(u_input.a, 4294967295u), u_input.a) ^ vec4<u32>(0u, firstLeadingBit(114016u), u_input.b.x, u_input.b.x)));
    var_2 = Struct_1(var_2.a);
    return vec3<i32>(-(-1i), dot(-clamp(vec3<i32>(0i, 1i, u_input.c), vec3<i32>(27542i, 2147483647i, var_0.x), vec3<i32>(-16584i, u_input.c, var_0.x)), -(vec3<i32>(u_input.c, 1i, u_input.c) | vec3<i32>(-21691i, 0i, -18323i))) + var_0.x, ~dot(~vec4<i32>(34726i, var_0.x, u_input.c, u_input.c) ^ min(vec4<i32>(0i, 1023i, i32(-2147483648), -39496i), vec4<i32>(2147483647i, 7733i, 1i, u_input.c)), -(~vec4<i32>(-6421i, -12928i, -19313i, var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -func_1(select(vec2<bool>(any(vec4<bool>(true, global2.x, global2.x, false)), false & false), !(!vec2<bool>(false, true)), true));
    let var_1 = Struct_1(vec4<u32>(dot(u_input.b, vec3<u32>(u_input.a / 31362u, 1u, max(u_input.a, u_input.a))), ~(~u_input.b.x), ~0u, 0u));
    var var_2 = Struct_4(var_0.xy / -func_4(vec3<u32>(u_input.b.x, 0u, u_input.b.x) / vec3<u32>(var_1.a.x, 0u, 1u), Struct_2(true)), clamp(dot(-var_0.xy, var_0.yy), var_0.x, var_0.x) ^ (105001i * var_0.x), !vec2<bool>(!(-1775f == -903f), global2.x), Struct_3(global2.x));
    let var_3 = ~vec4<u32>(var_1.a.x, 27439u + ~u_input.a, ~4294967295u - ~0u, var_1.a.x << ~var_1.a.x) & (~var_1.a & select(firstTrailingBit(vec4<u32>(1u, var_1.a.x, var_1.a.x, 27158u)), var_1.a, vec4<bool>(var_2.c.x, any(vec2<bool>(var_2.c.x, true)), var_2.c.x, true)));
    var var_4 = var_1.a;
    let var_5 = sign(-(838f * 522f) / round((-1038f * -393f) + 1244f));
    let x = u_input.a;
    s_output = StorageBuffer(select(var_5, var_5 - -(-1202f), !((var_2.a.x <= 64936i) && select(false, true, global2.x))), 1252f - max(exp2(var_5), var_5), max(var_1.a.x, select(abs(4294967295u << 71082u), ~2850u >> (u_input.b.x - var_4.x), var_2.c.x)), -(-(-(var_0.zy & var_0.yz))));
}

