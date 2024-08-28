// {"0:0":[42,179,17,21]}
// Seed: 567696719676727914

struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: u32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 10> = array<i32, 10>(-7070i, 4020i, -13899i, -1178i, -49881i, -1i, -17982i, 55150i, i32(-2147483648), 2147483647i);

fn func_2(arg_0: i32) -> vec2<f32> {
    global0 = array<i32, 10>();
    var var_0 = Struct_4(Struct_3(abs(min(vec3<i32>(global0[4294967295u], 1i, u_input.a) % vec3<i32>(u_input.a, global0[4294967295u], global0[56528u]), firstLeadingBit(vec3<i32>(-5970i, u_input.a, i32(-2147483648))))), min(~0u + reverseBits(63035u), min(4294967295u, 1u) + dot(vec3<u32>(8784u, 4294967295u, 4294967295u), vec3<u32>(37158u, 35576u, 0u)))), Struct_2(-((-2174f * 213f) * exp2(-141f)), vec2<bool>(any(!vec3<bool>(false, false, true)), all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false)))), Struct_1(1u * ~31536u)));
    var_0 = Struct_4(var_0.a, var_0.b);
    let var_1 = var_0.a;
    let var_2 = var_0.b.a;
    return vec2<f32>(var_0.b.a, -126f);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec2<bool>) -> bool {
    let var_0 = !(!(!arg_2));
    let var_1 = ~(-9584i);
    let var_2 = 12263u;
    let var_3 = ~firstTrailingBit(reverseBits(~(-global0[arg_1])));
    global0 = array<i32, 10>();
    return var_0.x;
}

fn func_4(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_5) -> u32 {
    var var_0 = arg_1.xz;
    var_0 = !select(select(select(!arg_1.xx, arg_1.yy, !true), vec2<bool>(!false, var_0.x), arg_1.zz), arg_1.yx, vec2<bool>(arg_1.x, arg_1.x));
    var_0 = select(!(!select(arg_1.xy, !vec2<bool>(arg_1.x, false), false)), arg_1.zz, !arg_1.yz);
    global0 = array<i32, 10>();
    let var_1 = abs(abs(dot(vec2<i32>(~(-1i), countOneBits(arg_0)), vec2<i32>(reverseBits(u_input.a), u_input.a))));
    return firstLeadingBit(1u * countOneBits(abs(abs(arg_2.c))));
}

fn func_1(arg_0: Struct_3) -> StorageBuffer {
    global0 = array<i32, 10>();
    var var_0 = func_2(1659i);
    var var_1 = Struct_5(var_0.x, firstTrailingBit(~(countOneBits(global0[33369u]) * (global0[4294967295u] >> arg_0.b))), min(clamp(411u, 37028u, ~4294967295u), func_4(min(2147483647i & 0i, dot(vec4<i32>(u_input.a, u_input.a, u_input.a, -50134i), vec4<i32>(-1i, arg_0.a.x, u_input.a, 60513i))), vec3<bool>(false & true, var_0.x == var_0.x, func_3(Struct_1(arg_0.b), 89978u, vec2<bool>(true, false))), Struct_5(floor(var_0.x), 73988i >> 0u, arg_0.b, -vec2<f32>(var_0.x, var_0.x)))), -(-(vec2<f32>(var_0.x, -1847f) / -vec2<f32>(1077f, 1393f))));
    let var_2 = Struct_2(var_0.x + -175f, vec2<bool>(true, !(!false)), Struct_1(func_4(select(34997i, 39734i, false), select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true), !vec3<bool>(true, false, false), vec3<bool>(false, false, true)), Struct_5(-1000f, -1i, 32635u, var_1.d))));
    let var_3 = vec3<i32>(6812i ^ -19511i, -27270i, global0[97901u]);
    return StorageBuffer(var_3.xx, -(-(i32(-2147483648))), vec4<i32>(abs(1i), clamp(0i, i32(-2147483648), i32(-2147483648) & -12159i), 20577i, (u_input.a ^ global0[11397u]) * 0i) / ~select(select(vec4<i32>(var_1.b, var_3.x, global0[var_1.c], -40268i), vec4<i32>(global0[40135u], global0[var_1.c], 14863i, -40860i), true), vec4<i32>(arg_0.a.x, -1i, arg_0.a.x, -43637i), select(vec4<bool>(var_2.b.x, false, var_2.b.x, false), vec4<bool>(var_2.b.x, var_2.b.x, true, var_2.b.x), true)), abs(u_input.a), var_3.x >> 53159u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(Struct_3(vec3<i32>(31941i, ~global0[4294967295u], u_input.a), 1u));
}

