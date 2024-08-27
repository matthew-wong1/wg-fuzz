struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_2,
    e: vec3<u32>,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: vec2<bool>,
    e: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 9>;

var<private> global1: array<Struct_4, 17> = array<Struct_4, 17>(Struct_4(false, 181f, Struct_1(vec2<f32>(353f, 1357f), vec3<f32>(-703f, 304f, 886f)), vec2<bool>(true, true), false), Struct_4(true, 309f, Struct_1(vec2<f32>(1501f, -1000f), vec3<f32>(578f, -640f, -563f)), vec2<bool>(false, false), true), Struct_4(true, 465f, Struct_1(vec2<f32>(-1413f, -1000f), vec3<f32>(411f, 677f, -129f)), vec2<bool>(true, false), true), Struct_4(false, -1167f, Struct_1(vec2<f32>(767f, 2024f), vec3<f32>(382f, -1158f, 794f)), vec2<bool>(false, false), true), Struct_4(false, -389f, Struct_1(vec2<f32>(1098f, 787f), vec3<f32>(-1494f, 311f, -1068f)), vec2<bool>(true, false), false), Struct_4(false, 226f, Struct_1(vec2<f32>(-1176f, -489f), vec3<f32>(613f, 506f, 818f)), vec2<bool>(true, true), false), Struct_4(false, -376f, Struct_1(vec2<f32>(575f, 1919f), vec3<f32>(1000f, 384f, 484f)), vec2<bool>(true, false), true), Struct_4(true, -1293f, Struct_1(vec2<f32>(-963f, 642f), vec3<f32>(-696f, -202f, -1070f)), vec2<bool>(false, true), false), Struct_4(false, 1032f, Struct_1(vec2<f32>(974f, 1000f), vec3<f32>(1163f, -1622f, 1020f)), vec2<bool>(false, false), false), Struct_4(true, -807f, Struct_1(vec2<f32>(-1000f, 119f), vec3<f32>(553f, -227f, 1000f)), vec2<bool>(false, false), true), Struct_4(false, -100f, Struct_1(vec2<f32>(636f, 576f), vec3<f32>(-281f, -1000f, -396f)), vec2<bool>(false, true), false), Struct_4(false, -608f, Struct_1(vec2<f32>(1187f, -271f), vec3<f32>(-617f, 1635f, -747f)), vec2<bool>(true, false), false), Struct_4(false, -723f, Struct_1(vec2<f32>(871f, -240f), vec3<f32>(-1451f, -621f, 244f)), vec2<bool>(true, false), false), Struct_4(true, -280f, Struct_1(vec2<f32>(338f, 749f), vec3<f32>(112f, -290f, 694f)), vec2<bool>(true, false), true), Struct_4(true, -1000f, Struct_1(vec2<f32>(1519f, -101f), vec3<f32>(-713f, -195f, 1185f)), vec2<bool>(true, true), true), Struct_4(false, -104f, Struct_1(vec2<f32>(1242f, -802f), vec3<f32>(-995f, 740f, -1320f)), vec2<bool>(true, true), false), Struct_4(false, -1933f, Struct_1(vec2<f32>(1144f, -365f), vec3<f32>(-1375f, -2152f, 175f)), vec2<bool>(true, true), true));

var<private> global2: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec2<f32>(-467f, 1372f), vec3<f32>(173f, -972f, 2993f)), Struct_1(vec2<f32>(-425f, 1000f), vec3<f32>(-558f, -117f, -412f)), Struct_1(vec2<f32>(-742f, -417f), vec3<f32>(1517f, 251f, -913f)), Struct_1(vec2<f32>(-610f, 871f), vec3<f32>(1259f, -990f, 866f)), Struct_1(vec2<f32>(-764f, -840f), vec3<f32>(524f, 989f, 900f)), Struct_1(vec2<f32>(1385f, 360f), vec3<f32>(405f, 832f, -459f)), Struct_1(vec2<f32>(-1888f, 1000f), vec3<f32>(-842f, 1535f, 1730f)), Struct_1(vec2<f32>(714f, -633f), vec3<f32>(196f, 2530f, 1650f)), Struct_1(vec2<f32>(475f, 1000f), vec3<f32>(1000f, -2698f, 436f)), Struct_1(vec2<f32>(129f, 444f), vec3<f32>(2357f, 442f, 1000f)), Struct_1(vec2<f32>(-679f, -401f), vec3<f32>(-289f, -1198f, -3146f)), Struct_1(vec2<f32>(-975f, 377f), vec3<f32>(967f, -532f, -1074f)), Struct_1(vec2<f32>(497f, 712f), vec3<f32>(-1012f, 670f, -413f)), Struct_1(vec2<f32>(550f, -397f), vec3<f32>(924f, -205f, -1011f)), Struct_1(vec2<f32>(343f, 513f), vec3<f32>(204f, 1853f, -1074f)), Struct_1(vec2<f32>(-146f, -1762f), vec3<f32>(952f, -634f, 1177f)), Struct_1(vec2<f32>(416f, 629f), vec3<f32>(1816f, 1034f, -502f)), Struct_1(vec2<f32>(1755f, 1892f), vec3<f32>(-428f, 1122f, 421f)), Struct_1(vec2<f32>(-549f, 923f), vec3<f32>(319f, -1031f, -2523f)), Struct_1(vec2<f32>(-1000f, 553f), vec3<f32>(-822f, 1000f, 276f)), Struct_1(vec2<f32>(-849f, 251f), vec3<f32>(-462f, -667f, 924f)), Struct_1(vec2<f32>(-1172f, 792f), vec3<f32>(-1832f, 1945f, -1730f)), Struct_1(vec2<f32>(773f, -701f), vec3<f32>(1206f, 1177f, 551f)), Struct_1(vec2<f32>(-511f, -381f), vec3<f32>(251f, -1149f, -2429f)), Struct_1(vec2<f32>(627f, 1000f), vec3<f32>(1489f, 997f, -1000f)), Struct_1(vec2<f32>(354f, 1691f), vec3<f32>(-1972f, 682f, 359f)), Struct_1(vec2<f32>(-892f, -1304f), vec3<f32>(1401f, -2479f, 808f)), Struct_1(vec2<f32>(-381f, -1027f), vec3<f32>(1000f, -289f, 1000f)));

var<private> global3: vec3<u32> = vec3<u32>(13341u, 10890u, 46564u);

var<private> global4: Struct_1 = Struct_1(vec2<f32>(2012f, 660f), vec3<f32>(-622f, -463f, 615f));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32) -> u32 {
    let var_0 = ~arg_1.a;
    var var_1 = select(!select(vec3<bool>(true, any(vec4<bool>(false, false, false, true)), true), vec3<bool>(true, any(vec3<bool>(true, false, true)), u_input.a < u_input.a), true), !(!vec3<bool>(true, true, any(vec3<bool>(true, true, false)))), vec3<bool>((all(vec4<bool>(false, true, true, false)) && any(vec3<bool>(true, true, true))) | true, true, any(select(vec2<bool>(true, true), vec2<bool>(true, true), true))));
    global3 = vec3<u32>(select(~(u_input.b & var_0), u_input.b, _wgslsmith_f_op_f32(trunc(global4.b.x)) <= global4.a.x), countOneBits(_wgslsmith_sub_u32(global3.x, _wgslsmith_div_u32(arg_2, firstTrailingBit(u_input.b)))), select(_wgslsmith_sub_u32(global3.x, ~0u), ~(~(4294967295u & var_0)), select(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.c.x, 2147483647i, -26994i), vec4<i32>(-47686i, 0i, -31555i, u_input.c.x)) > _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, -31947i), vec2<i32>(u_input.a, u_input.c.x)), all(!vec3<bool>(var_1.x, var_1.x, true)), var_1.x)));
    global2 = array<Struct_1, 28>();
    global0 = array<vec3<u32>, 9>();
    return reverseBits(var_0);
}

fn func_2() -> u32 {
    return func_3(global2[_wgslsmith_index_u32(~(~(~u_input.b)), 28u)], Struct_2(global3.x & u_input.b), u_input.b | ~1u) & max(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, global3.x, 4294967295u), ~global0[_wgslsmith_index_u32(9233u, 9u)]) << (~13838u % 32u), 50467u);
}

fn func_1(arg_0: Struct_2) -> f32 {
    var var_0 = vec4<u32>(~(func_2() << (~(~4294967295u) % 32u)), global3.x, global3.x, select(global3.x, ~(global3.x & (u_input.b | 4294967295u)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))));
    global1 = array<Struct_4, 17>();
    global2 = array<Struct_1, 28>();
    var var_1 = ~(-(~(~vec2<i32>(-15298i, -1i))));
    var var_2 = global4.b.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-458f)))))) + 670f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global4.a) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.a.x, _wgslsmith_f_op_f32(max(-187f, global4.a.x))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(func_1(Struct_2(global3.x))), global4.b.x), global4.b, select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true)), true))));
    var_0 = any(vec3<bool>(false, true, _wgslsmith_div_i32(~u_input.c.x, u_input.c.x) < ~(-23309i)));
    var var_2 = ~4294967295u & ~_wgslsmith_dot_vec4_u32(~vec4<u32>(42583u, 43877u, u_input.b, global3.x), vec4<u32>(~3303u, _wgslsmith_div_u32(1u, global3.x), 1u, _wgslsmith_mult_u32(u_input.b, u_input.b)));
    global3 = global0[_wgslsmith_index_u32(u_input.b, 9u)];
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c, _wgslsmith_div_vec3_u32(global0[_wgslsmith_index_u32(global3.x, 9u)], reverseBits(~vec3<u32>(u_input.b, 4294967295u, 7839u))), u_input.b);
}

