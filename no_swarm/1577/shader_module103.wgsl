struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5>;

var<private> global1: u32 = 19002u;

var<private> global2: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(-1148f, true, true), Struct_1(1117f, true, false), Struct_1(-1238f, false, false), Struct_1(-1256f, false, false), Struct_1(-844f, false, false), Struct_1(-566f, false, false), Struct_1(-1000f, true, false), Struct_1(357f, true, true), Struct_1(-1439f, true, true), Struct_1(1522f, true, true), Struct_1(678f, false, false), Struct_1(799f, false, false), Struct_1(-310f, false, false), Struct_1(1543f, true, false), Struct_1(105f, false, false), Struct_1(-2837f, false, false), Struct_1(-779f, false, true), Struct_1(-240f, true, true), Struct_1(180f, false, true), Struct_1(167f, false, true));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<bool>) -> i32 {
    var var_0 = arg_0;
    var var_1 = ~(~select(vec2<i32>(13516i, 1i), _wgslsmith_clamp_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(-2147483647i, -1i), vec2<i32>(1i, 0i)), vec2<bool>(false, true))) & ~vec2<i32>(1i, 1i);
    global1 = ~firstTrailingBit(~(~(~var_0.c)));
    var var_2 = arg_0;
    var_2 = arg_0;
    return var_1.x;
}

fn func_2(arg_0: vec4<f32>) -> u32 {
    global1 = 69705u;
    var var_0 = Struct_4(true, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.x + arg_0.x), 628f)), 23169u);
    let var_1 = func_3(Struct_4(!(arg_0.x >= -381f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * -653f) - _wgslsmith_f_op_f32(-461f - var_0.b)), _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, var_0.c, 1u, var_0.c), ~vec4<u32>(29840u, 5805u, 21564u, var_0.c))), select(vec2<bool>(0u < var_0.c, true), !select(vec2<bool>(var_0.a, false), vec2<bool>(false, var_0.a), vec2<bool>(true, true)), true)) > ~(~(~1i));
    global0 = array<bool, 5>();
    var_0 = Struct_4(false, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.x + var_0.b))), u_input.a.x);
    return _wgslsmith_mod_u32(34293u & _wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.a.x, var_0.c | u_input.a.x, u_input.a.x), u_input.a.x), _wgslsmith_sub_u32(_wgslsmith_mod_u32(0u, 4294967295u) << (var_0.c % 32u), _wgslsmith_mult_u32(~1u, ~u_input.a.x)));
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = ~(arg_2.xz << (u_input.a.zx % vec2<u32>(32u)));
    global2 = array<Struct_1, 20>();
    global1 = u_input.a.x;
    var var_1 = global2[_wgslsmith_index_u32(4294967295u, 20u)];
    global1 = ~_wgslsmith_mod_u32(var_0.x, u_input.a.x);
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a, var_1.a) + _wgslsmith_div_f32(var_1.a, 598f)) * 1f), false, false);
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: bool, arg_3: i32) -> u32 {
    let var_0 = Struct_2(func_4(any(vec4<bool>(true, false, global0[_wgslsmith_index_u32(9990u >> (u_input.a.x % 32u), 5u)], arg_2 != global0[_wgslsmith_index_u32(11124u, 5u)])), func_2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(530f, arg_1.a.a, 1391f, 668f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.a.a, arg_1.a.a, arg_1.a.a, 2590f), vec4<f32>(256f, 1488f, arg_1.a.a, 497f), vec4<bool>(true, arg_2, global0[_wgslsmith_index_u32(1u, 5u)], false)))))), u_input.a));
    let var_1 = arg_3;
    let var_2 = Struct_4(arg_2, _wgslsmith_f_op_f32(var_0.a.a + -1260f), ~4294967295u);
    let var_3 = var_0;
    global2 = array<Struct_1, 20>();
    return ~_wgslsmith_mult_u32(1u << (var_2.c % 32u), var_2.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!((all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], global0[_wgslsmith_index_u32(u_input.a.x, 5u)], global0[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(0u, 5u)])) | true) | global0[_wgslsmith_index_u32(21381u, 5u)]));
    var var_1 = Struct_2(global2[_wgslsmith_index_u32(~(u_input.a.x ^ (_wgslsmith_mult_u32(u_input.a.x, 4294967295u) & _wgslsmith_clamp_u32(64180u, u_input.a.x, 0u))), 20u)]);
    var var_2 = abs((vec4<u32>(func_1(vec4<i32>(-2147483647i, 6041i, 2147483647i, 0i), Struct_2(global2[_wgslsmith_index_u32(u_input.a.x, 20u)]), global0[_wgslsmith_index_u32(u_input.a.x, 5u)], 2147483647i), u_input.a.x, func_1(vec4<i32>(2147483647i, 1i, 47855i, 2147483647i), Struct_2(Struct_1(-895f, var_1.a.b, var_1.a.c)), global0[_wgslsmith_index_u32(u_input.a.x, 5u)], 12507i), u_input.a.x) ^ vec4<u32>(_wgslsmith_div_u32(4294967295u, u_input.a.x), ~69816u, u_input.a.x, 1293u)) ^ vec4<u32>((u_input.a.x | 1u) & (u_input.a.x << (u_input.a.x % 32u)), _wgslsmith_clamp_u32(4096u, 1u, 4294967295u), u_input.a.x & 13499u, u_input.a.x));
    global0 = array<bool, 5>();
    global1 = 100713u;
    var var_3 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.a.a, 1191f, _wgslsmith_f_op_f32(select(func_4(true, countOneBits(var_2.x), vec3<u32>(var_2.x, var_2.x, u_input.a.x)).a, _wgslsmith_f_op_f32(f32(-1f) * -1000f), all(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], false, global0[_wgslsmith_index_u32(var_2.x, 5u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(var_2.x, 5u)], true), false)))), -287f), vec4<f32>(var_1.a.a, -2287f, _wgslsmith_div_f32(var_1.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.a))), var_1.a.a), vec4<bool>(true, !(!var_1.a.b) | !(!var_1.a.b), true, global0[_wgslsmith_index_u32(var_2.x, 5u)])));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(sign(var_3.x)), all(!select(vec2<bool>(false, global0[_wgslsmith_index_u32(95429u, 5u)]), vec2<bool>(global0[_wgslsmith_index_u32(var_2.x, 5u)], global0[_wgslsmith_index_u32(0u, 5u)]), var_1.a.c)), false);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(4294967295u, ~var_2.x, ~(u_input.a.x << (~12821u % 32u))));
}

