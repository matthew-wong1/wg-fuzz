struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
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

var<private> global0: array<vec4<f32>, 15> = array<vec4<f32>, 15>(vec4<f32>(-1018f, -409f, -959f, 354f), vec4<f32>(881f, -1166f, -112f, 1327f), vec4<f32>(223f, -437f, 1170f, -426f), vec4<f32>(-263f, 156f, 829f, 460f), vec4<f32>(972f, 2137f, 372f, 1551f), vec4<f32>(-512f, 766f, -102f, -2037f), vec4<f32>(121f, 1000f, -1109f, -1234f), vec4<f32>(-735f, 1971f, -473f, 1059f), vec4<f32>(-269f, 701f, 853f, 1000f), vec4<f32>(1540f, -898f, -144f, 1173f), vec4<f32>(421f, -399f, 1000f, 1523f), vec4<f32>(1000f, -1090f, -1000f, 1000f), vec4<f32>(381f, -662f, -289f, 334f), vec4<f32>(167f, 753f, -2813f, -587f), vec4<f32>(261f, 1299f, 811f, 1384f));

var<private> global1: vec2<u32> = vec2<u32>(0u, 4294967295u);

var<private> global2: vec3<bool>;

var<private> global3: array<bool, 28> = array<bool, 28>(false, true, true, false, true, true, true, true, true, true, false, true, true, true, false, true, true, true, true, true, true, true, false, false, false, false, false, true);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool, arg_1: Struct_4, arg_2: vec3<bool>) -> vec3<bool> {
    var var_0 = Struct_3(-516f, arg_1.a, select(select(select(!arg_2, !arg_2, vec3<bool>(global2.x, arg_0, global2.x)), vec3<bool>(false, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b, 14106u), 28u)], true), false & all(vec4<bool>(false, arg_0, arg_2.x, false))), select(vec3<bool>(true, true, global3[_wgslsmith_index_u32(51608u, 28u)]), !select(arg_2, vec3<bool>(global2.x, arg_0, global3[_wgslsmith_index_u32(0u, 28u)]), false), true), any(!global2.zx)));
    global3 = array<bool, 28>();
    var var_1 = Struct_2(arg_0, var_0.b, false);
    global0 = array<vec4<f32>, 15>();
    let var_2 = max(_wgslsmith_div_i32(~min(firstTrailingBit(var_0.b.a.x), _wgslsmith_add_i32(arg_1.a.a.x, arg_1.a.a.x)), arg_1.a.a.x), -((~arg_1.a.a.x >> (1u % 32u)) | 21223i));
    return vec3<bool>(any(arg_2), all(vec4<bool>(!var_0.c.x, global2.x, global2.x, true)) && select(~(-1586i) <= var_0.b.b, false, _wgslsmith_div_f32(var_0.a, var_0.a) < 1459f), !any(select(!vec4<bool>(arg_0, global2.x, true, global2.x), vec4<bool>(var_0.c.x, var_1.c, var_1.c, arg_2.x), false)));
}

fn func_2(arg_0: u32) -> i32 {
    global2 = select(!select(!select(vec3<bool>(global2.x, true, false), vec3<bool>(global2.x, global3[_wgslsmith_index_u32(arg_0, 28u)], global2.x), vec3<bool>(false, true, true)), !vec3<bool>(true, global2.x, true), vec3<bool>(true, !global3[_wgslsmith_index_u32(arg_0, 28u)], false)), select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, global3[_wgslsmith_index_u32(17868u, 28u)]), false), !select(vec3<bool>(global2.x, global3[_wgslsmith_index_u32(u_input.a, 28u)], global3[_wgslsmith_index_u32(4294967295u, 28u)]), vec3<bool>(global3[_wgslsmith_index_u32(global1.x, 28u)], global3[_wgslsmith_index_u32(17803u, 28u)], global3[_wgslsmith_index_u32(28323u, 28u)]), vec3<bool>(global2.x, global2.x, global2.x)), select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.b, 28u)], global2.x, true), func_3(global2.x, Struct_4(Struct_1(vec4<i32>(-28155i, -25393i, -1i, -12286i), 42393i, u_input.b)), vec3<bool>(global3[_wgslsmith_index_u32(global1.x, 28u)], true, true)), vec3<bool>(global3[_wgslsmith_index_u32(10490u, 28u)], global3[_wgslsmith_index_u32(6396u, 28u)], true))), vec3<bool>(true, !global2.x, (17867u < u_input.b) && true), 8380u != _wgslsmith_add_u32(select(arg_0, 21838u, true), 25366u)), func_3(true, Struct_4(Struct_1(~vec4<i32>(1i, 2147483647i, 8950i, 12046i), _wgslsmith_mult_i32(-21415i, 13890i), global1.x >> (u_input.c.x % 32u))), func_3(all(!vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.c.x, 28u)], false, false)), Struct_4(Struct_1(vec4<i32>(1i, 23066i, -6258i, 19628i), -2147483647i, 55279u)), vec3<bool>(global2.x, any(vec4<bool>(true, false, global2.x, true)), true))));
    var var_0 = 657f;
    var var_1 = ~_wgslsmith_mult_vec4_u32(~(min(vec4<u32>(global1.x, 55021u, u_input.c.x, 4294967295u), vec4<u32>(4294967295u, 46119u, global1.x, u_input.a)) ^ vec4<u32>(27670u, 50365u, 11244u, 22740u)), abs(vec4<u32>(4294967295u, 64022u, 38995u, global1.x) >> (vec4<u32>(104059u, arg_0, arg_0, global1.x) % vec4<u32>(32u))) ^ vec4<u32>(~44527u, arg_0, firstLeadingBit(1u), 0u));
    global0 = array<vec4<f32>, 15>();
    global0 = array<vec4<f32>, 15>();
    return select(-1i, reverseBits(32433i), false);
}

fn func_1(arg_0: vec4<u32>, arg_1: u32) -> vec4<i32> {
    var var_0 = vec3<bool>(global3[_wgslsmith_index_u32(0u, 28u)], true, !global3[_wgslsmith_index_u32(reverseBits(~(~arg_1)), 28u)]);
    global0 = array<vec4<f32>, 15>();
    global1 = vec2<u32>(_wgslsmith_mult_u32(global1.x, global1.x) << (1u % 32u), 50957u);
    global3 = array<bool, 28>();
    var var_1 = i32(-1i) * -2147483647i;
    return _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_add_i32(0i, 1299i >> (arg_0.x % 32u)), ~countOneBits(0i), -43502i, abs(_wgslsmith_div_i32(-1i, -63055i))) ^ _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_add_i32(-26609i, -89093i), -2147483647i << (u_input.a % 32u), 1i, ~0i), countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(-6731i, 2147483647i, 0i, 42370i), vec4<i32>(-2147483647i, 4410i, 20615i, 2147483647i)))), _wgslsmith_div_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(-49263i, 56798i, 2147483647i, 0i) << (vec4<u32>(0u, u_input.c.x, 4294967295u, 1u) % vec4<u32>(32u)), vec4<i32>(36725i, 5588i, -1i, -14917i)), vec4<i32>(1i, ~2147483647i, ~(-20762i), _wgslsmith_mult_i32(-13804i, 0i)) | vec4<i32>(func_2(global1.x), ~2147483647i, i32(-1i) * -23457i, _wgslsmith_add_i32(-5364i, -13377i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(max(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-4801i, -1i, 0i, 1i), func_1(vec4<u32>(global1.x, 0u, u_input.b, u_input.b), _wgslsmith_mod_u32(10934u, u_input.c.x))), firstLeadingBit(vec4<i32>(2147483647i, -18704i, select(-2147483647i, -2147483647i, global2.x), 2147483647i))), ~_wgslsmith_dot_vec3_i32(reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(12037i, 45717i, -2415i), vec3<i32>(-6325i, -1i, -2147483647i), vec3<i32>(-2147483647i, 16231i, 0i))), abs(vec3<i32>(-16277i, -2147483647i, -37250i))), u_input.b);
    var var_1 = select(select(!vec4<bool>(!global3[_wgslsmith_index_u32(u_input.a, 28u)], func_3(global3[_wgslsmith_index_u32(global1.x, 28u)], Struct_4(Struct_1(var_0.a, 58189i, u_input.c.x)), vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 28u)], false, global2.x)).x, !global3[_wgslsmith_index_u32(40674u, 28u)], select(false, false, false)), select(select(!vec4<bool>(global2.x, false, true, false), select(vec4<bool>(global2.x, global2.x, global2.x, true), vec4<bool>(true, true, false, true), true), vec4<bool>(global2.x, false, true, true)), vec4<bool>(true, global2.x & global3[_wgslsmith_index_u32(u_input.a, 28u)], any(vec3<bool>(false, false, false)), global3[_wgslsmith_index_u32(50717u, 28u)]), select(true, all(vec3<bool>(global3[_wgslsmith_index_u32(var_0.c, 28u)], global2.x, global3[_wgslsmith_index_u32(54845u, 28u)])), true)), !(!vec4<bool>(global3[_wgslsmith_index_u32(9647u, 28u)], true, true, global2.x))), !(!select(!vec4<bool>(global2.x, true, false, global2.x), vec4<bool>(global2.x, global2.x, false, false), select(global2.x, false, global3[_wgslsmith_index_u32(u_input.c.x, 28u)]))), true);
    let var_2 = Struct_1(vec4<i32>(20484i, _wgslsmith_mult_i32(~(~var_0.a.x), 1i), 1i, _wgslsmith_dot_vec3_i32(var_0.a.zzx, vec3<i32>(-var_0.b, _wgslsmith_add_i32(-8793i, 1i), _wgslsmith_dot_vec4_i32(vec4<i32>(-5913i, -1i, 22897i, var_0.a.x), vec4<i32>(29078i, var_0.a.x, var_0.a.x, -1i))))), _wgslsmith_sub_i32(-(~firstLeadingBit(-40026i)), _wgslsmith_clamp_i32(var_0.b, ~(-var_0.a.x), var_0.a.x >> (~6593u % 32u))), countOneBits(u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -249f));
}

