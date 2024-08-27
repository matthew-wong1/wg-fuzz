struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: f32,
    d: i32,
    e: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1127f;

var<private> global1: array<Struct_2, 25>;

var<private> global2: array<bool, 8> = array<bool, 8>(false, true, false, false, false, false, true, true);

var<private> global3: vec2<i32>;

var<private> global4: array<u32, 8>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_3, arg_1: u32, arg_2: bool) -> i32 {
    var var_0 = vec4<i32>(1i, arg_0.c.d, 0i, firstLeadingBit(global3.x));
    global1 = array<Struct_2, 25>();
    let var_1 = arg_0.c.b;
    var var_2 = var_1;
    let var_3 = ~6327u;
    return u_input.c.x;
}

fn func_2(arg_0: i32, arg_1: i32) -> u32 {
    return 47500u;
}

fn func_3() -> bool {
    let var_0 = all(select(select(vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.b >> (u_input.d.x % 32u), 8u)], !global2[_wgslsmith_index_u32(u_input.a.x, 8u)], select(true, global2[_wgslsmith_index_u32(4898u, 8u)], global2[_wgslsmith_index_u32(0u, 8u)])), vec4<bool>(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], !global2[_wgslsmith_index_u32(1u, 8u)], !global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(55611u, 8u)], 8u)], true), vec4<bool>(true, true, !global2[_wgslsmith_index_u32(8845u, 8u)], true)), !vec4<bool>(global2[_wgslsmith_index_u32(~14868u, 8u)], true, !global2[_wgslsmith_index_u32(38311u, 8u)], all(vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 8u)], true, true))), any(!vec2<bool>(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a.x, 8u)], 8u)], global2[_wgslsmith_index_u32(1u, 8u)]))));
    let var_1 = 0u >> (global4[_wgslsmith_index_u32(4294967295u, 8u)] % 32u);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-675f - 391f) * _wgslsmith_f_op_f32(f32(-1f) * -469f))), _wgslsmith_f_op_f32(min(1461f, -542f))), 160f);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-308f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(f32(-1f) * -1094f), 846f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(f32(-1f) * -381f)));
    global0 = var_3.x;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d.xy >> (~u_input.d.yz % vec2<u32>(32u));
    var var_1 = ~u_input.b;
    var_1 = reverseBits(47339u);
    global1 = array<Struct_2, 25>();
    var var_2 = _wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, 3869u, var_0.x, 4294967295u), vec4<u32>(30954u, u_input.a.x, 4294967295u, 35264u), u_input.d), min(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d.x, global4[_wgslsmith_index_u32(44875u, 8u)], 54733u, 12434u) << (u_input.d % vec4<u32>(32u)), ~u_input.d), vec4<u32>(global4[_wgslsmith_index_u32(var_0.x, 8u)] & 1720u, ~var_0.x, ~39485u, global4[_wgslsmith_index_u32(1u, 8u)]))) & ~88869u;
    var_2 = abs(_wgslsmith_sub_u32(_wgslsmith_div_u32(~var_0.x, ~(~var_0.x)), func_2(func_1(Struct_3(vec4<bool>(global2[_wgslsmith_index_u32(21225u, 8u)], true, global2[_wgslsmith_index_u32(56064u, 8u)], false), vec2<f32>(-286f, 702f), global1[_wgslsmith_index_u32(4294967295u, 25u)]), var_0.x << (46021u % 32u), any(vec3<bool>(false, true, true))), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.c, u_input.c), u_input.c))));
    let var_3 = ~select(-2147483647i, i32(-1i) * -7412i, false);
    let var_4 = global1[_wgslsmith_index_u32(select(global4[_wgslsmith_index_u32(1u, 8u)], 39038u, all(vec4<bool>(!(!global2[_wgslsmith_index_u32(var_0.x, 8u)]), var_3 != var_3, true, select(true, true, false)))), 25u)];
    let var_5 = vec3<bool>(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(6043u, ~(abs(14753u) >> ((var_0.x ^ 28965u) % 32u))), 8u)], 8u)], select(func_3(), any(vec2<bool>(any(vec2<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 8u)], var_4.a.x)), !var_4.a.x)), all(!select(vec2<bool>(global2[_wgslsmith_index_u32(1u, 8u)], true), var_4.a.xy, vec2<bool>(true, false)))), (~var_0.x ^ ((var_0.x & 0u) << ((var_4.b.a | u_input.b) % 32u))) < 26868u);
    let x = u_input.a;
    s_output = StorageBuffer(~abs(u_input.d.x) | 22225u);
}

