// {"0:0":[219,222,212,45,89,180,20,127,1,151,138,30,74,31,49,195,201,49,150,104,215,228,222,45,92,144,105,84,20,195,126,104,108,54,3,58,115,218,113,113,197,66,167,9,162,32,198,171]}
// Seed: 8021450305063442382

struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec3<bool>,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
    c: vec3<f32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<i32>(20694i, 0i, -34584i, -14478i), 65442u, vec3<f32>(1350f, 804f, -677f), -1i);

var<private> global1: array<vec4<f32>, 18>;

var<private> global2: array<i32, 15>;

var<private> global3: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(vec4<i32>(-1i, 9144i, 0i, 8565i), 0u, vec3<f32>(-573f, -1151f, 1536f), 6362i), Struct_3(vec4<i32>(11396i, -31499i, -1i, 2147483647i), 0u, vec3<f32>(1000f, -129f, -340f), -1i), Struct_3(vec4<i32>(25690i, 39932i, 23104i, 6976i), 1u, vec3<f32>(146f, -1208f, 1655f), 1i), Struct_3(vec4<i32>(2147483647i, -353i, 2147483647i, -13475i), 1u, vec3<f32>(-1051f, -1887f, -162f), 2147483647i), Struct_3(vec4<i32>(12302i, 973i, -1i, 0i), 32060u, vec3<f32>(-751f, 666f, -596f), 28649i), Struct_3(vec4<i32>(34818i, 57642i, 1i, i32(-2147483648)), 21102u, vec3<f32>(200f, 584f, -1203f), 0i), Struct_3(vec4<i32>(58858i, 1i, 20229i, 57184i), 21830u, vec3<f32>(598f, -2329f, -762f), 1i), Struct_3(vec4<i32>(-13103i, 0i, -1i, 2147483647i), 1u, vec3<f32>(1000f, -192f, -1448f), 14217i), Struct_3(vec4<i32>(-20309i, 14380i, 0i, 2147483647i), 5900u, vec3<f32>(-1599f, 844f, 723f), i32(-2147483648)), Struct_3(vec4<i32>(2147483647i, -23328i, 1105i, -5210i), 1u, vec3<f32>(1478f, -125f, -1145f), 8946i), Struct_3(vec4<i32>(-44076i, 1231i, i32(-2147483648), -7047i), 4294967295u, vec3<f32>(131f, -897f, -2331f), -20685i), Struct_3(vec4<i32>(5763i, -1i, -1i, 8237i), 1u, vec3<f32>(930f, 1040f, 626f), -12879i), Struct_3(vec4<i32>(i32(-2147483648), -54822i, i32(-2147483648), -1i), 16110u, vec3<f32>(-1846f, 475f, 794f), 10301i), Struct_3(vec4<i32>(-19775i, 28070i, 2147483647i, -1i), 0u, vec3<f32>(188f, -1572f, 802f), -18251i), Struct_3(vec4<i32>(-1i, -15116i, -5310i, 2147483647i), 12690u, vec3<f32>(3169f, -743f, -264f), -10793i), Struct_3(vec4<i32>(0i, 19224i, 3570i, i32(-2147483648)), 1u, vec3<f32>(1000f, 929f, -1000f), -6597i), Struct_3(vec4<i32>(2326i, 9756i, 41220i, 0i), 0u, vec3<f32>(-1090f, -121f, 1034f), 21777i), Struct_3(vec4<i32>(-1i, -11824i, i32(-2147483648), -16403i), 1u, vec3<f32>(-982f, -258f, 2084f), -3315i), Struct_3(vec4<i32>(-67022i, 2147483647i, 0i, 2147483647i), 0u, vec3<f32>(-1548f, 696f, -392f), 0i), Struct_3(vec4<i32>(-19594i, 1i, 1i, 20673i), 4294967295u, vec3<f32>(1431f, -1877f, 152f), 2147483647i));

var<private> global4: Struct_2 = Struct_2(28427u, true, vec3<bool>(false, true, true), vec4<f32>(-922f, -1191f, 374f, -1000f), Struct_1(vec4<f32>(-460f, -1070f, -1238f, 160f), vec2<bool>(true, true), 33038u));

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec4<f32>) -> vec3<bool> {
    var var_0 = Struct_3(global0.a >> (firstLeadingBit(countOneBits(vec4<u32>(global0.b, 134595u, 60565u, arg_0.c))) / vec4<u32>(6271u, 1u, 4294967295u * u_input.d, u_input.d)), global4.a, -(global0.c - trunc(arg_0.a.xwx)), 23450i);
    var var_1 = max(-32843i, 27959i >> 995u);
    var var_2 = countOneBits(u_input.a);
    global2 = array<i32, 15>();
    global0 = global3[min(dot(abs(vec2<u32>(21553u, global0.b) + u_input.b.xy), ~vec2<u32>(22244u, 4294967295u)), 7764u) + ~var_0.b];
    return !(!select(select(global4.c, !vec3<bool>(false, arg_0.b.x, global4.c.x), !global4.c), vec3<bool>(global4.e.b.x, true && global4.b, select(global4.c.x, false, global4.c.x)), all(!vec2<bool>(global4.b, arg_0.b.x))));
}

fn func_4(arg_0: Struct_2) -> u32 {
    let var_0 = global2[~arg_0.a];
    global1 = array<vec4<f32>, 18>();
    global0 = Struct_3(global0.a / (firstLeadingBit(global0.a ^ vec4<i32>(u_input.a, 39294i, 44652i, u_input.a)) % (global0.a % global0.a)), ~1u, -(-arg_0.e.a.zxz), -global2[countOneBits(arg_0.a)]);
    let var_1 = true != arg_0.c.x;
    global1 = array<vec4<f32>, 18>();
    return u_input.d;
}

fn func_2() -> Struct_3 {
    global0 = Struct_3(-(~(vec4<i32>(93563i, global2[u_input.b.x], 17120i, u_input.a) * vec4<i32>(global2[global4.e.c], 13264i, -5589i, 16740i))), func_4(Struct_2(~global0.b, !global4.e.b.x, func_3(global4.e, 492f, global4.e.a * global4.d), select(vec4<f32>(926f, 846f, -914f, global0.c.x), -vec4<f32>(global0.c.x, -1941f, -148f, -287f), !false), global4.e)), min(min(vec3<f32>(-global4.d.x, global4.d.x, -1357f), vec3<f32>(trunc(global4.e.a.x), -global4.d.x, -1062f)), -global0.c), 78102i);
    var var_0 = global0.c * global0.c;
    var var_1 = false;
    let var_2 = global3[global4.a];
    var var_3 = global4.e.a.x;
    return Struct_3(global0.a, ~((global4.a << ~0u) | (global0.b & (0u ^ var_2.b))), -(-exp2(-global4.e.a.xxy)), min(global2[select(global4.a, func_4(Struct_2(45053u, global4.c.x, vec3<bool>(true, global4.e.b.x, true), global4.e.a, global4.e)), any(!global4.c))], global0.d));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: i32) -> vec3<bool> {
    global2 = array<i32, 15>();
    let var_0 = func_2();
    var var_1 = vec2<f32>(-349f / -global0.c.x, -(floor(global4.d.x) * -sign(752f)));
    let var_2 = ~abs(-var_0.a.x);
    global3 = array<Struct_3, 20>();
    return global4.c;
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2, arg_3: i32) -> vec3<u32> {
    global4 = arg_0;
    let var_0 = ~(~max(vec3<i32>(global0.d, arg_3 ^ arg_3, 0i), vec3<i32>(global0.d >> 1u, countOneBits(arg_3), u_input.c)));
    global2 = array<i32, 15>();
    let var_1 = ~1u;
    global2 = array<i32, 15>();
    return u_input.b.wxy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 51008u ^ ~firstLeadingBit(0u);
    var_0 = 0u;
    global0 = global3[dot(select(vec3<u32>(4294967295u, ~0u >> global0.b, 24956u), countOneBits(~(vec3<u32>(u_input.d, 1u, 0u) | vec3<u32>(23061u, global0.b, 1u))), select(!select(global4.c, global4.c, global4.b), !global4.c, select(vec3<bool>(false, global4.b, true), global4.c, !vec3<bool>(global4.e.b.x, true, global4.e.b.x)))), func_5(Struct_2(1u - 0u, any(vec4<bool>(global4.c.x, global4.c.x, global4.e.b.x, false)) | (true && false), select(func_1(global4.b, global4.e.c, 2147483647i), vec3<bool>(true, global4.e.b.x, global4.c.x), !true), select(vec4<f32>(-252f, 682f, global0.c.x, -418f), global4.e.a, true) - -vec4<f32>(global4.e.a.x, -707f, 1002f, global0.c.x), global4.e), -global0.c.x, Struct_2(0u, !select(false, false, false), !select(global4.c, vec3<bool>(global4.e.b.x, false, global4.c.x), vec3<bool>(false, global4.b, true)), (vec4<f32>(554f, 1888f, -666f, global0.c.x) + vec4<f32>(638f, global4.d.x, global0.c.x, global4.e.a.x)) - (vec4<f32>(-726f, global0.c.x, global0.c.x, -1429f) * vec4<f32>(global4.e.a.x, global4.d.x, global0.c.x, global0.c.x)), Struct_1(global1[u_input.b.x], !vec2<bool>(true, global4.b), global0.b)), ~(1i * global2[global0.b]) - i32(-2147483648)))];
    let var_1 = vec3<i32>((~global0.a.x & -17054i) << 1u, (global2[abs(4294967295u)] * -u_input.c) + -1i, abs(i32(-2147483648) ^ 0i)) + global0.a.yzw;
    global1 = array<vec4<f32>, 18>();
    let var_2 = -(-(-global0.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(global0.c.xy, vec3<u32>((global0.b - ~6649u) ^ ~0u, firstLeadingBit(u_input.d % 52780u), abs(firstLeadingBit(u_input.d)) + 62604u), select(dot(~(vec4<i32>(global0.a.x, var_1.x, u_input.a, -65807i) - global0.a), vec4<i32>(2147483647i, 13930i & i32(-2147483648), clamp(global2[u_input.d], global2[49956u], i32(-2147483648)), var_1.x)), -1i, global4.b), -max(-(vec3<f32>(567f, var_2, -854f) / global4.d.xzw), max(-global4.e.a.wzz, vec3<f32>(global4.e.a.x, -754f, global4.d.x))));
}

