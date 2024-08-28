// {"0:0":[81,186,252,183,241,184,1,216]}
// Seed: 2720609615773095929

struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(26021u, vec4<u32>(25947u, 4294967295u, 0u, 11598u), 14483u, 2147483647i), Struct_1(4294967295u, vec4<u32>(4294967295u, 0u, 49328u, 0u), 51033u, -43243i), Struct_1(34293u, vec4<u32>(1u, 0u, 4294967295u, 0u), 23560u, 35622i), Struct_1(1u, vec4<u32>(0u, 4294967295u, 0u, 2365u), 4294967295u, -65698i), Struct_1(4294967295u, vec4<u32>(1u, 6111u, 82097u, 11381u), 43786u, 20240i), Struct_1(14231u, vec4<u32>(38389u, 9511u, 2778u, 0u), 4294967295u, -46944i));

var<private> global1: Struct_1 = Struct_1(64645u, vec4<u32>(4294967295u, 73694u, 0u, 1u), 38538u, -6611i);

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec2<u32>, arg_3: u32) -> u32 {
    let var_0 = vec4<u32>(dot(global1.b.yyz + vec3<u32>(arg_1.x, dot(arg_0.b, vec4<u32>(1u, 29685u, arg_1.x, arg_0.c)), arg_1.x % 4294967295u), vec3<u32>(arg_1.x, 17954u, ~arg_0.a / ~0u)), ~arg_1.x, (global1.b.x + (dot(vec4<u32>(global1.b.x, 1u, 19229u, 26726u), vec4<u32>(0u, 42788u, 7637u, arg_0.c)) + 7404u)) & 28289u, ~(~(arg_2.x * countOneBits(arg_3))));
    let var_1 = !vec3<bool>(true | !false, false, !all(vec4<bool>(true, false, true, false)));
    global0 = array<Struct_1, 6>();
    let var_2 = vec3<u32>(global1.c, (~firstTrailingBit(global1.a) & ~55712u) & 22897u, arg_0.b.x);
    let var_3 = var_1.x;
    return 1u;
}

fn func_3(arg_0: bool) -> u32 {
    global1 = Struct_1(~(~global1.b.x) | abs(60115u), global1.b, 0u, -global1.d);
    let var_0 = global0[~(select((22474u & global1.a) + global1.a, abs(38993u), i32(-2147483648) == dot(vec3<i32>(global1.d, u_input.a.x, u_input.a.x), vec3<i32>(4320i, u_input.a.x, global1.d))) % global1.c)];
    global0 = array<Struct_1, 6>();
    var var_1 = 22206u >> abs(var_0.a | global1.b.x);
    var var_2 = func_1(Struct_1(global1.b.x, clamp(vec4<u32>(~4294967295u, ~global1.c, global1.b.x, ~47214u), vec4<u32>(15058u, 6135u, var_0.a, global1.c) + abs(global1.b), global1.b), countOneBits(~func_1(Struct_1(var_0.c, global1.b, var_0.b.x, 2147483647i), global1.b.xzy, global1.b.wx, 4294967295u)), reverseBits(abs(-30587i)) % global1.d), vec3<u32>(var_0.c, clamp(3944u / firstTrailingBit(573u), reverseBits(0u), countOneBits(func_1(global0[17467u], vec3<u32>(var_0.a, var_0.c, 4294967295u), global1.b.xx, 0u))), select(0u, func_1(Struct_1(19167u, global1.b, 1u, global1.d), vec3<u32>(global1.a, var_0.c, global1.a), global1.b.wz, global1.c) ^ ~0u, !true && (arg_0 && true))), ~vec2<u32>(~var_0.c, clamp(4089u, global1.a, global1.c)) % var_0.b.zw, 4294967295u);
    return abs(1u);
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: i32) -> Struct_1 {
    var var_0 = any(select(!vec3<bool>(false, true, false), !select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), false), true)) & (all(vec3<bool>(!false, false, !false)) | any(vec2<bool>(true, !true)));
    var var_1 = reverseBits(~(~global1.b.x));
    var var_2 = !(~622u <= abs(firstTrailingBit(global1.a)));
    let var_3 = Struct_1(func_3(!true) & abs((global1.a % global1.a) * global1.c), ~(~vec4<u32>(27275u, 73620u, 43619u, 1u) << firstTrailingBit(global1.b)) >> global1.b, ~global1.c, 1i);
    var_2 = any(select(vec2<bool>(!(!false), abs(u_input.a.x) < dot(vec4<i32>(global1.d, 1i, global1.d, u_input.a.x), vec4<i32>(0i, global1.d, var_3.d, u_input.a.x))), !vec2<bool>(!true, true == true), select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(false, true), !vec2<bool>(false, false)), select(!vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(false, false)), select(!vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, false), true), all(vec4<bool>(true, false, true, false))))));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[select(4294967295u >> 1u, global1.a, ((global1.c | 1u) * abs(53876u)) >= func_1(global0[reverseBits(global1.c)], global1.b.zyw, ~global1.b.xx, global1.c)) >> 62958u];
    var var_1 = -vec2<f32>(-(-(256f * -1699f)), 1413f + -(-163f));
    global1 = func_2(min(-(-var_1.x), var_1.x), -1i * (~(-global1.d) | min(~4651i, var_0.d)), countOneBits(~dot(countOneBits(vec4<i32>(global1.d, u_input.a.x, 2147483647i, var_0.d)), vec4<i32>(1i, 4507i, -38777i, 2147483647i) ^ vec4<i32>(-1i, u_input.a.x, 0i, var_0.d))));
    var_1 = max(vec2<f32>(round(trunc(-414f)), var_1.x) + vec2<f32>(148f, 1145f), select((-vec2<f32>(var_1.x, -677f) / -vec2<f32>(-2707f, 1000f)) * -exp2(vec2<f32>(var_1.x, var_1.x)), ceil(-vec2<f32>(-1000f, -542f)) - vec2<f32>(round(var_1.x), var_1.x / var_1.x), any(!vec2<bool>(true, true))));
    let var_2 = abs(var_1.x);
    global1 = func_2(exp2(-(-(-619f) / 1369f)), 1i, firstLeadingBit(var_0.d));
    var var_3 = Struct_1(func_1(global0[var_0.c], global1.b.xyz * ~var_0.b.yww, ~(~global1.b.xy), global1.b.x), select(max(~vec4<u32>(var_0.b.x, global1.a, 4294967295u, 39320u), global1.b) << global1.b, global1.b, select(!(!vec4<bool>(true, true, false, false)), select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), false), !vec4<bool>(true, true, true, false), !false), select(vec4<bool>(true, false, true, false), !vec4<bool>(false, true, true, false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), true)))), 1u, -global1.d);
    var var_4 = func_2(var_1.x, reverseBits(-(dot(vec3<i32>(var_3.d, -39453i, i32(-2147483648)), vec3<i32>(0i, 19491i, var_3.d)) % ~(i32(-2147483648)))), u_input.a.x);
    let var_5 = all(!vec2<bool>(all(vec4<bool>(true, true, false, true)), !all(vec4<bool>(true, false, false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(func_3(select(false, (global1.a - 41389u) <= firstLeadingBit(40867u), var_5)), 0i, 0i, global1.b);
}

