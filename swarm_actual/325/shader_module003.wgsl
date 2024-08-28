// {"0:0":[54,169,79,62,4,12,177,134,161,192,200,241,81,165,157,124]}
// Seed: 2334738347868169123

struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 29>;

var<private> global1: array<bool, 12> = array<bool, 12>(false, false, false, false, false, false, false, true, true, true, true, false);

var<private> global2: vec3<f32> = vec3<f32>(-1000f, 1202f, -707f);

var<private> global3: vec2<u32> = vec2<u32>(4294967295u, 4294967295u);

fn func_3(arg_0: u32) -> i32 {
    let var_0 = Struct_1(-global2.x, vec2<u32>(9695u | 4294967295u, 1u % (4294967295u >> ~57405u)), dot(vec3<i32>(~2147483647i, u_input.a, ~u_input.a), global0[~(~17098u)] / max(-vec3<i32>(0i, u_input.c.x, 9649i), countOneBits(global0[29036u]))), ~(~(~(~vec3<u32>(global3.x, 52102u, 41207u)))));
    let var_1 = Struct_2(Struct_1(ceil(sign(var_0.a)) * -step(-765f, var_0.a), var_0.b, ~var_0.c, countOneBits(~var_0.d)), vec4<bool>(global1[~abs(4294967295u | 20092u)], (var_0.a / var_0.a) < 1104f, !global1[90659u * ~1u], global1[var_0.b.x]), global1[var_0.d.x], ~var_0.d.x | countOneBits(abs(~74683u)));
    return var_1.a.c;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<u32>) -> u32 {
    global1 = array<bool, 12>();
    var var_0 = arg_0.a;
    let var_1 = Struct_3(Struct_2(Struct_1(var_0.a, max(var_0.b, vec2<u32>(var_0.d.x, 24879u)) << arg_0.a.b, u_input.a, ~firstTrailingBit(vec3<u32>(arg_0.a.d.x, 28825u, 4294967295u))), select(arg_0.b, arg_0.b, arg_0.b), !arg_0.c, 99220u >> ~max(u_input.b, 33166u)));
    var_0 = Struct_1(exp2(-1000f) / (1000f * var_0.a), ~var_1.a.a.d.xz, func_3(u_input.b), max(~(vec3<u32>(5453u, 30175u, arg_1.x) & arg_0.a.d), arg_0.a.d));
    global2 = vec3<f32>(var_1.a.a.a, global2.x, -(floor(-437f + 288f) * -148f));
    return 22757u;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_2(Struct_1(global2.x, ~(~vec2<u32>(u_input.b, 1u)) << (firstTrailingBit(vec2<u32>(global3.x, 39623u)) % vec2<u32>(global3.x, u_input.b)), u_input.c.x, select(~(~vec3<u32>(global3.x, 4294967295u, 4294967295u)), vec3<u32>(~global3.x, ~13529u, func_2(Struct_2(Struct_1(343f, vec2<u32>(u_input.b, 4294967295u), u_input.a, vec3<u32>(4294967295u, 0u, u_input.b)), vec4<bool>(false, global1[global3.x], global1[31732u], false), global1[123417u], u_input.b), vec4<u32>(global3.x, 66480u, global3.x, 0u))), all(!vec4<bool>(global1[0u], false, true, false)))), vec4<bool>(any(select(vec2<bool>(global1[global3.x], global1[global3.x]), vec2<bool>(global1[global3.x], true), true)), 108533u > 113100u, -820f > (-802f * (global2.x / -174f)), (14869i << ~1u) == (abs(u_input.a) & i32(-2147483648))), any(vec3<bool>(!global1[4294967295u] & false, false, u_input.a != u_input.c.x)), u_input.b);
    var var_1 = Struct_3(Struct_2(Struct_1(359f, abs(var_0.a.d.xy), -59424i, clamp(var_0.a.d, var_0.a.d, var_0.a.d << var_0.a.d)), vec4<bool>(global1[~40018u], var_0.c, !(!global1[u_input.b]), !false), false & false, clamp(u_input.b, 7194u, countOneBits(u_input.b >> u_input.b))));
    var var_2 = ~var_0.a.b;
    var var_3 = -(-round(var_0.a.a));
    var_3 = 1394f;
    return var_1.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(u_input.c.x, u_input.a);
    let var_1 = func_1();
    global3 = ~var_1.d.xy + var_1.b;
    global3 = var_1.b ^ var_1.d.xx;
    global1 = array<bool, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, u_input.c.x, 579f, select(global2.x * 2223f, -(-1524f) * max(var_1.a / -960f, var_1.a - var_1.a), !any(vec3<bool>(global1[1u], global1[global3.x], global1[global3.x])) & (!global1[u_input.b] & (0u < 0u))));
}

