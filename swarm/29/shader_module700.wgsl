struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: vec2<bool>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 16> = array<vec4<u32>, 16>(vec4<u32>(2887u, 26127u, 0u, 0u), vec4<u32>(4294967295u, 57931u, 29881u, 1u), vec4<u32>(4294967295u, 14734u, 28977u, 4294967295u), vec4<u32>(58090u, 44729u, 4294967295u, 42899u), vec4<u32>(1u, 0u, 1u, 21083u), vec4<u32>(35118u, 4294967295u, 4294967295u, 0u), vec4<u32>(1849u, 73767u, 29731u, 4294967295u), vec4<u32>(1u, 92540u, 0u, 43095u), vec4<u32>(1u, 44962u, 89822u, 1u), vec4<u32>(1u, 15219u, 4294967295u, 1u), vec4<u32>(4294967295u, 41322u, 42003u, 110567u), vec4<u32>(4294967295u, 20717u, 14169u, 1u), vec4<u32>(0u, 1u, 93737u, 4294967295u), vec4<u32>(36516u, 0u, 0u, 4294967295u), vec4<u32>(4294967295u, 37018u, 29579u, 4294967295u), vec4<u32>(54476u, 1u, 58195u, 1u));

var<private> global1: array<bool, 10>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> vec4<bool> {
    return vec4<bool>(false || global1[_wgslsmith_index_u32(~u_input.d, 10u)], false, _wgslsmith_f_op_f32(ceil(-1736f)) != _wgslsmith_f_op_f32(round(2298f)), global1[_wgslsmith_index_u32(u_input.d, 10u)]);
}

fn func_2() -> vec4<bool> {
    let var_0 = !(firstTrailingBit(4294967295u) == 0u);
    var var_1 = _wgslsmith_f_op_f32(998f + 191f);
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(152f, -1133f, -1033f, -1302f)))))), select(func_3(-894f), !(!select(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.c, 10u)], false, var_0), vec4<bool>(false, true, true, var_0), global1[_wgslsmith_index_u32(u_input.c, 10u)])), !(!vec4<bool>(false, true, global1[_wgslsmith_index_u32(u_input.d, 10u)], global1[_wgslsmith_index_u32(4294967295u, 10u)]))), select(!vec2<bool>(any(vec2<bool>(false, false)), var_0), select(!select(vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.c, 10u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(91054u, 10u)]), true), !(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.d, 10u)], false)), !global1[_wgslsmith_index_u32(48198u, 10u)] | var_0), select(select(!vec2<bool>(var_0, false), vec2<bool>(true, true), vec2<bool>(var_0, global1[_wgslsmith_index_u32(u_input.c, 10u)])), func_3(370f).wx, u_input.a.x >= u_input.a.x)), select(vec2<bool>(true, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.d, 44224u), u_input.c), 10u)]), !func_3(343f).xx, select(vec2<bool>(false, true), func_3(_wgslsmith_f_op_f32(1109f - -1000f)).yz, func_3(-1648f).xw)));
    var var_3 = _wgslsmith_mod_vec4_u32(select(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(45762u, 30760u, 94074u, u_input.c), vec4<u32>(4294967295u, u_input.c, 42739u, u_input.c)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, 0u, u_input.d, 0u), global0[_wgslsmith_index_u32(u_input.c, 16u)]) | global0[_wgslsmith_index_u32(u_input.d ^ 126062u, 16u)]), ~countOneBits(_wgslsmith_add_vec4_u32(global0[_wgslsmith_index_u32(80714u, 16u)], global0[_wgslsmith_index_u32(u_input.d, 16u)])), vec4<bool>(any(func_3(-1648f).zy), all(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 10u)], var_0, true)), all(!var_2.b.xx), global1[_wgslsmith_index_u32((u_input.d << (u_input.c % 32u)) >> (min(1135u, 13132u) % 32u), 10u)])), global0[_wgslsmith_index_u32(u_input.c, 16u)]);
    var_3 = firstTrailingBit(vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_div_u32(var_3.x, u_input.d), u_input.d, ~var_3.x), ~(~var_3.x), var_3.x, 19551u) ^ ~countOneBits(global0[_wgslsmith_index_u32(~var_3.x, 16u)]));
    return !func_3(_wgslsmith_f_op_f32(ceil(var_2.a.x)));
}

fn func_1() -> vec3<bool> {
    global1 = array<bool, 10>();
    var var_0 = !(!select(!func_2(), vec4<bool>(func_3(-1020f).x, global1[_wgslsmith_index_u32(u_input.c, 10u)], !global1[_wgslsmith_index_u32(u_input.c, 10u)], true), global1[_wgslsmith_index_u32(u_input.d, 10u)]));
    let var_1 = _wgslsmith_add_vec3_u32(~vec3<u32>(countOneBits(~4294967295u), (u_input.d | u_input.d) | 63782u, 0u), (~min(vec3<u32>(1u, u_input.c, u_input.d), vec3<u32>(1u, 0u, 4294967295u)) | vec3<u32>(~95164u, u_input.d, _wgslsmith_add_u32(0u, u_input.d))) << (reverseBits(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, 73730u, 7847u), vec3<u32>(u_input.c, 1u, u_input.d)), vec3<u32>(u_input.c, u_input.d, 83620u))) % vec3<u32>(32u)));
    global0 = array<vec4<u32>, 16>();
    var var_2 = countOneBits(u_input.a.zww);
    return !var_0.xww;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1419f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1922f - -1927f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1427f))))));
    var var_1 = select(func_1(), !(!select(select(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.c, 10u)], global1[_wgslsmith_index_u32(1u, 10u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.d, 10u)], false), vec3<bool>(global1[_wgslsmith_index_u32(9336u, 10u)], global1[_wgslsmith_index_u32(u_input.d, 10u)], false)), !vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 10u)], true, true), !vec3<bool>(true, true, global1[_wgslsmith_index_u32(2820u, 10u)]))), func_2().x);
    let var_2 = abs(-countOneBits(_wgslsmith_mult_i32(u_input.e.x, _wgslsmith_div_i32(u_input.e.x, 2367i))));
    global0 = array<vec4<u32>, 16>();
    let var_3 = true;
    var_1 = !vec3<bool>(!(func_1().x != var_1.x), func_3(-628f).x || global1[_wgslsmith_index_u32(abs(max(32041u, u_input.d)), 10u)], any(func_2()));
    var var_4 = ~vec3<i32>(46257i, max(_wgslsmith_mod_i32(11090i, ~var_2), var_2), -3875i);
    global0 = array<vec4<u32>, 16>();
    let var_5 = Struct_2(abs(1u & (_wgslsmith_div_u32(u_input.d, 4294967295u) << (u_input.c % 32u))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(step(294f, _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) * var_0.x), _wgslsmith_f_op_f32(min(-1027f, -783f)), 1f), !func_3(var_0.x), select(func_3(-383f).yx, !vec2<bool>(global1[_wgslsmith_index_u32(u_input.c, 10u)], var_3), true), func_1().xx), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(670f, -798f, var_0.x, var_0.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.c, u_input.e, ~((vec2<u32>(var_5.a, var_5.a) ^ ~vec2<u32>(var_5.a, var_5.a)) ^ _wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, var_5.a)), abs(vec2<u32>(var_5.a, var_5.a)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d, var_5.a), vec2<u32>(40143u, var_5.a)))));
}

