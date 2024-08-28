// {"0:0":[16,89,112,250,178,165,154,131,107,108,25,232,229,77,183,238,80,204,36,37,173,5,57,106,193,112,173,169,94,204,93,63,218,157,245,181,25,199,243,51,110,38,71,157,110,208,146,243]}
// Seed: 2014775012186819352

struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<f32>,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 12>;

var<private> global1: vec3<u32> = vec3<u32>(1u, 27286u, 12968u);

var<private> global2: array<Struct_2, 25>;

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec4<f32>, arg_3: vec2<i32>) -> bool {
    var var_0 = Struct_1(~((vec4<u32>(arg_0.d, arg_0.b.a.x, 1u, arg_0.a.a.x) % firstTrailingBit(arg_0.a.a)) ^ vec4<u32>(firstLeadingBit(u_input.e.x), select(55650u, arg_0.d, false), u_input.e.x, 1u)), vec3<i32>(select(-arg_0.c.x, 0i * u_input.a, false || true), arg_0.c.x, 2147483647i) + ((global0[~5932u] % global0[~25317u]) + clamp(arg_0.c.ywy >> vec3<u32>(48156u, global1.x, u_input.e.x), vec3<i32>(arg_0.c.x, arg_3.x, arg_0.c.x), ~u_input.b.ywz)));
    var var_1 = Struct_2(arg_0.a, Struct_1(arg_0.a.a << arg_0.b.a, ~(~vec3<i32>(0i, 1i, 0i))), ~(-(arg_0.c / vec4<i32>(10545i, 2147483647i, arg_3.x, arg_3.x))), ~(15212u * (global1.x << 0u)) % 0u);
    let var_2 = global2[28269u];
    var var_3 = var_2.b;
    global0 = array<vec3<i32>, 12>();
    return false & false;
}

fn func_2(arg_0: i32) -> i32 {
    var var_0 = -(-(sign(-(-647f)) * select(-974f, 1135f, func_3(global2[u_input.e.x], vec3<f32>(-882f, 1000f, 1599f), vec4<f32>(-1794f, -231f, -1034f, -1209f), vec2<i32>(u_input.b.x, u_input.a)))));
    var var_1 = -arg_0;
    var var_2 = arg_0 ^ (max(~(arg_0 % u_input.a), ~2147483647i) & u_input.d);
    global2 = array<Struct_2, 25>();
    var_2 = -reverseBits(abs(arg_0));
    return arg_0;
}

fn func_4(arg_0: vec3<f32>, arg_1: i32, arg_2: vec2<f32>, arg_3: Struct_1) -> Struct_2 {
    global1 = arg_3.a.xxz;
    var var_0 = ~reverseBits(-u_input.b);
    let var_1 = global2[38865u];
    var_0 = vec4<i32>(var_0.x, arg_3.b.x, u_input.c, ~var_1.c.x % ((arg_3.b.x - arg_3.b.x) - (12824i | arg_1))) + (min(u_input.b, -var_1.c - vec4<i32>(var_1.b.b.x, 0i, -30464i, arg_3.b.x)) / vec4<i32>(-select(-1i, -1i, true), reverseBits(~var_0.x), -(-11219i), -(-2147483647i)));
    var var_2 = select(vec3<bool>(!select(!true, select(true, false, true), true), !(false & false) | any(!vec4<bool>(false, true, true, true)), !(!all(vec4<bool>(false, true, false, true)))), select(select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), !vec3<bool>(false, true, true), any(vec3<bool>(true, true, true))), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), true), vec3<bool>(!all(vec4<bool>(true, true, true, true)), any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), false)), ~4294967295u < abs(global1.x)), !any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)))), !vec3<bool>(any(vec2<bool>(false, false)), dot(vec4<u32>(global1.x, var_1.d, 0u, 7968u), arg_3.a) != ~arg_3.a.x, (true | false) || true));
    return global2[firstTrailingBit(reverseBits(global1.x))];
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool, arg_3: vec4<f32>) -> u32 {
    global1 = vec3<u32>(~309u, reverseBits(50412u), countOneBits(u_input.e.x));
    global1 = ~arg_1.b.a.zwz;
    let var_0 = global2[select(39577u, arg_0.a.a.x & 0u, -arg_0.b.b.x < firstTrailingBit(51936i))];
    let var_1 = -1i;
    var var_2 = func_4(max(floor(select(-vec3<f32>(arg_3.x, -1000f, arg_3.x), vec3<f32>(arg_3.x, 1138f, arg_3.x) + vec3<f32>(1474f, arg_3.x, arg_3.x), vec3<bool>(false, arg_2, true))), arg_3.zzy), func_2(var_0.a.b.x << ~(4294967295u * var_0.d)), -(vec2<f32>(arg_3.x, arg_3.x) + arg_3.zx), arg_0.b);
    return u_input.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = min(~vec3<u32>(~(~u_input.e.x), func_1(Struct_2(Struct_1(vec4<u32>(u_input.e.x, 1u, 0u, 71761u), vec3<i32>(13301i, u_input.a, u_input.d)), Struct_1(vec4<u32>(632u, 1u, 4294967295u, global1.x), vec3<i32>(-7274i, u_input.d, 47812i)), vec4<i32>(u_input.c, -49417i, u_input.a, u_input.a), global1.x), Struct_2(Struct_1(vec4<u32>(global1.x, global1.x, 11487u, 29728u), vec3<i32>(u_input.a, i32(-2147483648), -15616i)), Struct_1(vec4<u32>(1u, u_input.e.x, 25302u, 28517u), global0[112838u]), u_input.b, 14093u), true, vec4<f32>(439f, -446f, 2428f, -1000f)) | ~u_input.e.x, global1.x), abs(countOneBits(vec3<u32>(global1.x, u_input.e.x, 1u)) * ~(vec3<u32>(global1.x, 3885u, 47088u) + vec3<u32>(u_input.e.x, 72246u, 9126u))));
    var var_0 = Struct_2(Struct_1(~select(vec4<u32>(36932u, global1.x, 95010u, u_input.e.x) >> vec4<u32>(1u, global1.x, 41975u, global1.x), vec4<u32>(0u, u_input.e.x, 0u, 4294967295u) + vec4<u32>(global1.x, u_input.e.x, u_input.e.x, u_input.e.x), !true), ~vec3<i32>(37250i, -82492i, u_input.d) - firstLeadingBit(global0[u_input.e.x] ^ vec3<i32>(2147483647i, 32806i, u_input.a))), func_4(vec3<f32>(-552f, 1000f, -(1542f + 1728f)), ~u_input.c, -max(ceil(vec2<f32>(600f, -227f)), vec2<f32>(-1861f, -196f)), Struct_1(~vec4<u32>(1u, 22873u, 75945u, 1u), vec3<i32>(-1i, -46591i, u_input.b.x))).a, u_input.b >> select(~(~vec4<u32>(11653u, global1.x, u_input.e.x, 0u)), vec4<u32>(u_input.e.x * 4294967295u, firstTrailingBit(global1.x), 0u, abs(45301u)), select(!vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), !false)), 33586u);
    var var_1 = select(select(vec2<bool>(func_3(global2[u_input.e.x], vec3<f32>(1139f, 1524f, -1090f), max(vec4<f32>(2702f, -352f, 534f, -461f), vec4<f32>(-618f, -382f, 1600f, 786f)), ~var_0.b.b.zx), -(-1630f) > abs(-148f)), vec2<bool>(true, !any(vec4<bool>(false, true, true, true))), vec2<bool>(any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), true)), !(u_input.e.x != 1u))), !select(select(!vec2<bool>(true, true), vec2<bool>(false, false), !true), !(!vec2<bool>(true, false)), vec2<bool>(any(vec4<bool>(false, false, true, false)), func_3(Struct_2(var_0.a, Struct_1(var_0.b.a, u_input.b.zwz), var_0.c, 54651u), vec3<f32>(-256f, 1262f, -915f), vec4<f32>(631f, -1000f, 115f, -1025f), u_input.b.zy))), all(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false))) && (all(vec4<bool>(false, false, false, true)) & true));
    global2 = array<Struct_2, 25>();
    global0 = array<vec3<i32>, 12>();
    global2 = array<Struct_2, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(-(vec4<i32>(u_input.a ^ var_0.c.x, -42546i + 0i, 16408i, 40390i + 2636i) % ~u_input.b), ~(~(~countOneBits(var_0.d))), -(-vec3<f32>(-2472f / -375f, round(-493f), -1000f * -790f)), 45021u, var_0.b.a);
}

