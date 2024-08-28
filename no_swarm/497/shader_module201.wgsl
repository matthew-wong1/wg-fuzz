// {"0:0":[63,211,127,20,113,148,114,75,199,15,14,208,14,42,144,144,210,252,21,247,220,159,254,242]}
// Seed: 4285889605878164999

struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
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

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec3<f32>) -> bool {
    let var_0 = Struct_1(arg_0.a, -1073f);
    var var_1 = firstTrailingBit(min(var_0.a.wxy >> vec3<u32>(0u, u_input.b.x, arg_0.a.x), vec3<u32>(27025u, arg_1, u_input.c)) | countOneBits(vec3<u32>(120352u, u_input.c, arg_0.a.x))) % firstLeadingBit(abs(var_0.a.wyx - vec3<u32>(var_0.a.x, var_0.a.x, 5916u)));
    var_1 = min(var_0.a.xyy % var_0.a.wxw, ~(vec3<u32>(61925u, 4294967295u, 53637u) & (arg_0.a.wwy | vec3<u32>(var_0.a.x, 0u, u_input.c)))) >> abs(arg_0.a.xwz);
    var var_2 = -(-trunc(vec4<f32>(var_0.b, var_0.b, -341f, var_0.b) + vec4<f32>(1115f, 1534f, var_0.b, arg_0.b)) * (-select(vec4<f32>(100f, var_0.b, var_0.b, arg_2.x), vec4<f32>(1137f, var_0.b, -280f, var_0.b), true) / sign(step(vec4<f32>(-226f, arg_0.b, -565f, var_0.b), vec4<f32>(arg_0.b, -690f, arg_0.b, -373f)))));
    var var_3 = dot(vec3<i32>(reverseBits(2147483647i), (u_input.a % 28959i) - select(0i, 19645i, false), ~min(1i, -4665i)) >> (arg_0.a.wwy / vec3<u32>(1u * 7533u, min(var_0.a.x, var_0.a.x), reverseBits(0u))), countOneBits(-clamp(-vec3<i32>(u_input.a, -6892i, u_input.a), countOneBits(vec3<i32>(1i, u_input.a, -37289i)), ~vec3<i32>(u_input.a, u_input.a, u_input.a))));
    return !(!(all(vec4<bool>(true, false, false, false)) || (!false && (true || false))));
}

fn func_2() -> u32 {
    var var_0 = all(vec2<bool>(!func_3(Struct_1(vec4<u32>(u_input.b.x, u_input.b.x, u_input.c, 0u), -1000f), 0u, vec3<f32>(-741f, 677f, -677f)), ~u_input.c <= countOneBits(~u_input.b.x)));
    var_0 = func_3(Struct_1(firstLeadingBit(firstTrailingBit(vec4<u32>(u_input.c, 54791u, 36498u, u_input.c))), select(select(max(3497f, -1787f), -(-264f), -1i <= -1i), 1132f, (u_input.c < 146u) && !true)), 74750u, -floor((vec3<f32>(1098f, 1000f, 320f) + vec3<f32>(-797f, 985f, 171f)) * -vec3<f32>(534f, 1544f, -1262f)));
    return ~(~abs(28805u)) << ~(~(~1u));
}

fn func_1(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_1) -> u32 {
    var var_0 = arg_2.a.yz;
    let var_1 = func_2();
    var var_2 = false;
    var var_3 = any(!(!vec4<bool>(false, arg_2.b <= arg_2.b, arg_1.x && true, arg_1.x || arg_1.x)));
    var_3 = all(!select(vec4<bool>(!arg_1.x, !arg_1.x, !true, arg_1.x), arg_1, false));
    return firstTrailingBit(~(~func_2()));
}

fn func_4(arg_0: vec3<i32>, arg_1: i32) -> Struct_1 {
    var var_0 = -431f;
    let var_1 = Struct_1(((select(vec4<u32>(29830u, 1u, u_input.b.x, 4294967295u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 21824u), false) | ~vec4<u32>(u_input.c, 1u, u_input.c, 63301u)) & ((vec4<u32>(1u, 46094u, u_input.c, u_input.b.x) & vec4<u32>(27188u, u_input.b.x, 0u, 0u)) % (vec4<u32>(41770u, u_input.c, u_input.b.x, 0u) ^ vec4<u32>(19593u, 4294967295u, u_input.c, 1u)))) / ~vec4<u32>(~1u, 0u ^ 1u, u_input.b.x, max(u_input.c, 0u)), step(-sign(-481f), select(-1747f, -1566f, true)) + -666f);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(-(~vec3<i32>(18817i, u_input.a, -1i)) >> clamp(vec3<u32>(func_1(101435u, vec4<bool>(true, true, true, false), Struct_1(vec4<u32>(u_input.b.x, u_input.c, 68412u, u_input.c), -766f)), u_input.b.x, u_input.b.x), ~(~vec3<u32>(u_input.b.x, u_input.b.x, u_input.c)), ~(vec3<u32>(4294967295u, u_input.b.x, u_input.b.x) << vec3<u32>(1u, u_input.b.x, 67085u))), countOneBits(min(-1i, ~select(u_input.a, 0i, false))));
    var_0 = func_4(-vec3<i32>(-49438i, -74354i, ~(-4638i) * abs(u_input.a)), abs(u_input.a) | (((u_input.a / 16594i) - (u_input.a & -1i)) ^ ~dot(vec2<i32>(6641i, 1i), vec2<i32>(u_input.a, u_input.a))));
    let var_1 = all(!vec4<bool>(!(!true), (4294967295u & 0u) > ~62668u, all(vec4<bool>(true, true, false, true)), !false));
    var var_2 = func_4(vec3<i32>(u_input.a, -(-(u_input.a * 1i)), u_input.a), -countOneBits(abs(max(u_input.a, u_input.a))));
    let var_3 = Struct_1(~select(var_0.a, var_2.a * (vec4<u32>(var_2.a.x, 13150u, var_2.a.x, var_0.a.x) >> vec4<u32>(0u, var_2.a.x, 104119u, 1u)), vec4<bool>(-164f == 876f, true & var_1, all(vec4<bool>(true, true, var_1, var_1)), !false)), 645f);
    let var_4 = func_4(vec3<i32>(abs(-40718i * u_input.a), -u_input.a, -u_input.a), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(448f);
}

