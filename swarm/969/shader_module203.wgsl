struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12> = array<u32, 12>(45885u, 0u, 11915u, 26833u, 0u, 33160u, 0u, 0u, 25178u, 4294967295u, 8259u, 4294967295u);

var<private> global1: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(749f, 4294967295u, 1758f, 1u), Struct_1(653f, 73831u, -1000f, 73928u), Struct_1(385f, 83100u, -692f, 4294967295u), Struct_1(208f, 0u, 865f, 1u), Struct_1(-440f, 0u, 709f, 100600u), Struct_1(1456f, 0u, -294f, 1u), Struct_1(-1173f, 4294967295u, 731f, 0u), Struct_1(-1000f, 1u, -514f, 94543u), Struct_1(-939f, 1u, -1783f, 4294967295u), Struct_1(-164f, 46073u, -1176f, 31598u), Struct_1(816f, 28054u, 807f, 34651u), Struct_1(-248f, 0u, 292f, 1u), Struct_1(-1437f, 4294967295u, -1482f, 72465u), Struct_1(1296f, 4004u, -1599f, 63513u), Struct_1(-1480f, 4294967295u, -327f, 1u), Struct_1(-1267f, 4294967295u, 517f, 70058u), Struct_1(579f, 4294967295u, 197f, 45515u), Struct_1(-258f, 44814u, 977f, 101325u), Struct_1(-768f, 0u, 1026f, 0u), Struct_1(-891f, 0u, -315f, 69737u), Struct_1(1955f, 6690u, 2305f, 49283u), Struct_1(610f, 48247u, 571f, 70202u), Struct_1(-1000f, 68691u, 1169f, 40842u), Struct_1(-257f, 0u, 1260f, 0u), Struct_1(824f, 1u, -1254f, 125896u), Struct_1(-114f, 13031u, -115f, 7746u), Struct_1(385f, 13896u, 180f, 1u), Struct_1(204f, 4294967295u, -965f, 4294967295u));

var<private> global2: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(Struct_1(663f, 1u, -695f, 30447u), 81371u, 967f), Struct_2(Struct_1(-1486f, 20927u, -375f, 23546u), 1u, -1127f), Struct_2(Struct_1(113f, 24419u, 920f, 4294967295u), 31908u, 1077f), Struct_2(Struct_1(-442f, 43906u, -146f, 112812u), 4294967295u, 817f), Struct_2(Struct_1(2136f, 54787u, 206f, 4294967295u), 4294967295u, 1662f), Struct_2(Struct_1(-492f, 0u, 995f, 4294967295u), 38809u, 1000f), Struct_2(Struct_1(-1017f, 36493u, 1000f, 0u), 0u, -418f), Struct_2(Struct_1(-1300f, 1u, -958f, 1u), 1u, -157f), Struct_2(Struct_1(-1492f, 0u, 2040f, 4294967295u), 0u, 2648f), Struct_2(Struct_1(-810f, 0u, -2020f, 28102u), 67879u, 1000f), Struct_2(Struct_1(-397f, 0u, 448f, 4294967295u), 4294967295u, -1124f), Struct_2(Struct_1(160f, 4294967295u, 1056f, 4294967295u), 4294967295u, 1000f), Struct_2(Struct_1(1000f, 33898u, -1000f, 36513u), 41599u, -1151f), Struct_2(Struct_1(376f, 45891u, -900f, 39519u), 1u, -1391f), Struct_2(Struct_1(-2000f, 0u, 110f, 4294967295u), 38346u, 399f), Struct_2(Struct_1(106f, 76144u, -1000f, 103468u), 29831u, -806f), Struct_2(Struct_1(-1000f, 1u, 1000f, 1u), 62073u, -941f), Struct_2(Struct_1(636f, 17062u, -1012f, 4294967295u), 33665u, 1562f), Struct_2(Struct_1(-931f, 2324u, 996f, 37115u), 0u, 757f));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> vec4<u32> {
    let var_0 = Struct_2(global1[_wgslsmith_index_u32(~1u, 28u)], max(1u << (firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(33099u, 0u, u_input.c.x, u_input.c.x), vec4<u32>(0u, 103914u, 9224u, u_input.d.x))) % 32u), global0[_wgslsmith_index_u32(u_input.d.x, 12u)]), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -477f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1182f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1196f)))), false)));
    global2 = array<Struct_2, 19>();
    var var_1 = Struct_3(true, ~(select(10096u, select(u_input.a, var_0.a.d, true), true) & 4563u), Struct_1(1768f, min(~1u, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~7932u, ~4294967295u), 12u)]), var_0.c, _wgslsmith_dot_vec2_u32(u_input.d.xx, vec2<u32>(var_0.a.b, 84570u))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.c))), select(var_0.a.b, ~(0u << (0u % 32u)), true), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-533f, 873f))))), var_0.b), -34258i);
    global0 = array<u32, 12>();
    var var_2 = !vec3<bool>(var_1.a, !all(select(vec4<bool>(true, true, true, false), vec4<bool>(var_1.a, var_1.a, var_1.a, true), vec4<bool>(var_1.a, var_1.a, false, false))), var_1.a);
    return vec4<u32>(_wgslsmith_sub_u32(~(var_1.c.b & var_1.c.d) & _wgslsmith_mod_u32(var_1.c.b, global0[_wgslsmith_index_u32(~var_0.a.b, 12u)]), ~countOneBits(~0u)), ~60307u, _wgslsmith_mod_u32(1u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.c.zx, vec2<u32>(global0[_wgslsmith_index_u32(11434u, 12u)], 28449u)), max(vec2<u32>(28728u, 18594u), vec2<u32>(u_input.c.x, 103870u))), firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(9683u, u_input.c.x), vec2<u32>(4294967295u, 1u))))), countOneBits(firstTrailingBit((0u >> (var_0.a.d % 32u)) & firstTrailingBit(var_1.b))));
}

fn func_2() -> Struct_3 {
    global1 = array<Struct_1, 28>();
    let var_0 = firstLeadingBit(func_3());
    var var_1 = Struct_3(true, u_input.a, global1[_wgslsmith_index_u32(~1u, 28u)], global1[_wgslsmith_index_u32(4294967295u, 28u)], u_input.b.x);
    let var_2 = !vec4<bool>(var_1.a || var_1.a, (_wgslsmith_f_op_f32(var_1.d.c - var_1.d.a) < _wgslsmith_f_op_f32(max(1263f, var_1.d.a))) && var_1.a, true, var_1.a);
    var var_3 = u_input.b;
    return Struct_3(true, min(global0[_wgslsmith_index_u32(~(~select(0u, 1014u, var_2.x)), 12u)], 4552u), global1[_wgslsmith_index_u32(4294967295u, 28u)], Struct_1(_wgslsmith_f_op_f32(-1000f * var_1.c.a), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~0u, 12u)] << (40510u % 32u), 12u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.c.a, -757f))), ~(~20369u)), -countOneBits(_wgslsmith_sub_i32(12624i, ~(-1i))));
}

fn func_1(arg_0: vec3<f32>) -> StorageBuffer {
    var var_0 = func_2();
    var var_1 = arg_0.xz;
    global2 = array<Struct_2, 19>();
    global1 = array<Struct_1, 28>();
    var_0 = func_2();
    return StorageBuffer(u_input.d, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-var_1.x)), func_2().d.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 19>();
    global0 = array<u32, 12>();
    let var_0 = false;
    global1 = array<Struct_1, 28>();
    global1 = array<Struct_1, 28>();
    global2 = array<Struct_2, 19>();
    global2 = array<Struct_2, 19>();
    let x = u_input.a;
    s_output = func_1(vec3<f32>(501f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1452f - 1136f) + _wgslsmith_f_op_f32(118f + 1750f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-103f, _wgslsmith_div_f32(149f, -1010f)))))));
}

