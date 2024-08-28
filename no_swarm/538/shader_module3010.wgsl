// {"0:0":[207,161,85,42,11,220,221,185,87,85,103,107,10,9,220,70,96,113,233,200,192,63,104,101,141,252,100,66,141,186,145,115]}
// Seed: 2672578723493967153

struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
    c: f32,
    d: vec3<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32>;

var<private> global1: array<vec2<f32>, 4> = array<vec2<f32>, 4>(vec2<f32>(-404f, -684f), vec2<f32>(-674f, -727f), vec2<f32>(171f, -417f), vec2<f32>(320f, -680f));

var<private> global2: array<vec3<bool>, 23>;

fn func_3(arg_0: i32) -> u32 {
    var var_0 = Struct_2(Struct_1(-952f / ceil(-204f * -1284f), clamp(u_input.a.x, min(u_input.c / u_input.c, ~44373u), clamp(1u, u_input.c + u_input.c, dot(u_input.a, vec4<u32>(16100u, 25299u, 0u, u_input.a.x))))), Struct_1(-1481f * -563f, ~dot(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), ~vec3<u32>(4294967295u, 60691u, u_input.c))));
    var var_1 = vec2<u32>((firstLeadingBit(24370u) & var_0.b.b) / ~dot(u_input.a.zx, clamp(u_input.a.yy, u_input.a.zy, vec2<u32>(u_input.a.x, 76116u))), 4294967295u);
    let var_2 = var_0.a;
    var_0 = Struct_2(Struct_1(round(-879f), 4294967295u), Struct_1(1118f - -(-1000f), select(28013u, 1u, any(vec4<bool>(false, false, false, true)))));
    var var_3 = !(!false);
    return ~(firstTrailingBit(~select(var_1.x, var_0.b.b, true)) ^ (var_0.a.b * max(var_0.b.b, var_0.b.b)));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: f32) -> u32 {
    let var_0 = Struct_1((-arg_2 / ((-760f - -322f) + sign(arg_2))) + -272f, ~(~func_3(i32(-2147483648))));
    global0 = array<i32, 32>();
    global0 = array<i32, 32>();
    let var_1 = Struct_2(var_0, Struct_1(-(floor(631f) + -(-888f)), ~6620u));
    let var_2 = 29954u;
    return 58246u >> (u_input.a.x ^ ~var_2);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_2(arg_0, arg_0);
    let var_1 = -var_0.b.a / -457f;
    let var_2 = ~u_input.b.x % global0[~func_2(!(!vec4<bool>(true, true, false, true)), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)), 1028f - -1787f)];
    global1 = array<vec2<f32>, 4>();
    global0 = array<i32, 32>();
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec2<i32>) -> Struct_3 {
    global0 = array<i32, 32>();
    return Struct_3(true, select(vec2<u32>(~22568u, arg_0.b % ~38633u), firstTrailingBit(arg_1.yz) * arg_1.xz, vec2<bool>(false, false)), floor(arg_0.a), vec3<i32>(-arg_2.x, u_input.b.x, ~(-arg_2.x)) + -(u_input.b / vec3<i32>(global0[60876u], u_input.b.x, u_input.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(Struct_1(-(460f * 1766f), 1u), u_input.b), min(u_input.a.zxx, clamp(~vec3<u32>(u_input.c, u_input.a.x, 0u), vec3<u32>(15491u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, u_input.c, u_input.c))) + abs(~vec3<u32>(u_input.c, u_input.c, u_input.c)), vec2<i32>(u_input.b.x, u_input.b.x));
    var var_1 = var_0.d.x;
    let var_2 = round(global1[countOneBits(~(24610u << 0u) % var_0.b.x)]);
    var_1 = abs(13410i);
    let var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-(-(-global1[abs(39382u)])), (vec2<f32>(-380f, var_0.c) * -(-global1[u_input.a.x])) + -var_2, var_0.c);
}

