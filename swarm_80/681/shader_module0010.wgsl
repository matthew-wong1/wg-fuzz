struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 10> = array<f32, 10>(1184f, -231f, 1369f, -545f, -454f, 1200f, 1301f, -639f, -1441f, 1043f);

var<private> global1: array<Struct_3, 10> = array<Struct_3, 10>(Struct_3(4294967295u, Struct_2(Struct_1(vec3<u32>(5969u, 13794u, 1u), vec2<bool>(true, false), 0i), true, 125f, false), false), Struct_3(1u, Struct_2(Struct_1(vec3<u32>(1u, 4294967295u, 4294967295u), vec2<bool>(false, false), 35232i), true, -402f, true), true), Struct_3(36630u, Struct_2(Struct_1(vec3<u32>(23146u, 1u, 0u), vec2<bool>(true, false), 2147483647i), false, -337f, true), false), Struct_3(1u, Struct_2(Struct_1(vec3<u32>(0u, 0u, 1u), vec2<bool>(false, false), -60426i), false, -1000f, true), true), Struct_3(4294967295u, Struct_2(Struct_1(vec3<u32>(34791u, 11577u, 1u), vec2<bool>(true, true), 0i), false, 1472f, true), false), Struct_3(25057u, Struct_2(Struct_1(vec3<u32>(117585u, 0u, 0u), vec2<bool>(false, false), 2147483647i), true, -1000f, true), false), Struct_3(0u, Struct_2(Struct_1(vec3<u32>(0u, 4294967295u, 1u), vec2<bool>(true, false), -5218i), true, -1064f, false), true), Struct_3(51947u, Struct_2(Struct_1(vec3<u32>(21966u, 117214u, 4294967295u), vec2<bool>(true, true), -31906i), false, 236f, false), true), Struct_3(48238u, Struct_2(Struct_1(vec3<u32>(59464u, 45896u, 5226u), vec2<bool>(false, false), -1i), false, 2690f, true), true), Struct_3(24176u, Struct_2(Struct_1(vec3<u32>(44075u, 258u, 78013u), vec2<bool>(true, false), -42281i), true, 125f, true), false));

var<private> global2: bool = false;

var<private> global3: array<u32, 19> = array<u32, 19>(1u, 15795u, 28553u, 45187u, 4294967295u, 4294967295u, 4294967295u, 41777u, 69960u, 42073u, 90400u, 1u, 4294967295u, 8978u, 67209u, 54540u, 4294967295u, 124u, 1u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> bool {
    var var_0 = Struct_2(Struct_1(vec3<u32>(firstLeadingBit(~4294967295u), _wgslsmith_sub_u32(_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(0u, 19u)], u_input.e), 0u), ~59776u), vec2<bool>(any(vec3<bool>(true, false, false)), abs(u_input.c) < (-17201i << (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.e, 19u)], 19u)] % 32u))), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.b.x | 43141i, u_input.b.x << (global3[_wgslsmith_index_u32(70669u, 19u)] % 32u)), u_input.c, _wgslsmith_mult_i32(29294i, u_input.c) >> (_wgslsmith_div_u32(u_input.d.x, 45592u) % 32u))), all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), vec3<bool>(true, false, false), true), all(vec4<bool>(true, true, true, true)))), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(min((41647u | global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(20828u, 19u)], 19u)]) & u_input.e, _wgslsmith_div_u32(abs(0u), 89785u)), _wgslsmith_dot_vec3_u32(abs(_wgslsmith_add_vec3_u32(vec3<u32>(19847u, u_input.d.x, 4294967295u), u_input.a.zxy)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), ~u_input.d.yzz, u_input.a.yzy)), ~u_input.d.x), 10u)], (_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(abs(u_input.e), 10u)], 611f, any(vec2<bool>(true, true)))) >= 1f) | true);
    global0 = array<f32, 10>();
    let var_1 = vec4<i32>(7619i, i32(-1i) * -(~u_input.c), -2147483647i, max(2147483647i, abs(u_input.c)));
    return true;
}

fn func_2(arg_0: vec4<f32>, arg_1: bool) -> f32 {
    global3 = array<u32, 19>();
    global3 = array<u32, 19>();
    let var_0 = 19032u;
    var var_1 = Struct_1(vec3<u32>(23758u, max(1u, global3[_wgslsmith_index_u32(~u_input.a.x, 19u)]), _wgslsmith_sub_u32(~_wgslsmith_mod_u32(u_input.d.x, 33521u), 59737u)), !select(vec2<bool>(true, true), !vec2<bool>(arg_1, arg_1), func_3()), max(min(~(u_input.b.x << (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 19u)], 19u)] % 32u)), ~_wgslsmith_sub_i32(38702i, 21308i)), u_input.b.x >> (((global3[_wgslsmith_index_u32(1u, 19u)] | var_0) ^ 4294967295u) % 32u)));
    var var_2 = max(~var_1.a.x, ~abs(1u)) << (0u % 32u);
    return -355f;
}

fn func_1(arg_0: u32) -> StorageBuffer {
    var var_0 = ~(~arg_0);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~21063u, 19u)] >> (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d.x, 19u)], 19u)] % 32u), 10u)]) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(13277u, 10u)]))))) - _wgslsmith_f_op_f32(func_2(vec4<f32>(348f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-311f - -1672f)), 1318f, -827f), true)));
    global1 = array<Struct_3, 10>();
    let var_2 = !(!vec4<bool>(2147483647i < select(-2147483647i, 2147483647i, true), true, true, !all(vec2<bool>(true, false))));
    global1 = array<Struct_3, 10>();
    return StorageBuffer(abs(0i), _wgslsmith_f_op_f32(select(259f, 1585f, true)), 42793u, _wgslsmith_f_op_f32(max(-466f, -1243f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(-(~(u_input.b.wxz >> (u_input.d.zxx % vec3<u32>(32u))))));
    global0 = array<f32, 10>();
    var var_1 = Struct_4(~(~(~(~45219u))));
    var var_2 = true;
    global1 = array<Struct_3, 10>();
    global3 = array<u32, 19>();
    global3 = array<u32, 19>();
    let x = u_input.a;
    s_output = func_1(max(12037u, countOneBits(17886u & (global3[_wgslsmith_index_u32(u_input.d.x, 19u)] | global3[_wgslsmith_index_u32(6627u, 19u)]))));
}

