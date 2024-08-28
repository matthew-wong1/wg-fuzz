struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: i32 = -10095i;

var<private> global2: f32 = 731f;

var<private> global3: array<f32, 22> = array<f32, 22>(513f, 694f, 1000f, -548f, 251f, -823f, -1000f, -725f, 1000f, -1000f, 733f, -2026f, -1194f, -1000f, 616f, 912f, -2343f, 708f, -294f, 465f, -866f, 990f);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec2<bool> {
    global3 = array<f32, 22>();
    let var_0 = Struct_4(~countOneBits(_wgslsmith_dot_vec2_i32(~vec2<i32>(-17562i, 10283i), vec2<i32>(0i, -1i) << (vec2<u32>(13649u, u_input.a) % vec2<u32>(32u)))));
    let var_1 = 1i;
    global0 = !all(select(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), true)), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true))));
    var var_2 = _wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(_wgslsmith_mult_i32(var_1, var_0.a) | var_1, firstTrailingBit(1i), -30074i)), vec3<i32>(var_1, -1i, 2147483647i));
    return vec2<bool>(all(select(vec3<bool>(true, global3[_wgslsmith_index_u32(1u, 22u)] == global3[_wgslsmith_index_u32(59025u, 22u)], all(vec4<bool>(false, true, true, true))), !select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true))), false);
}

fn func_2(arg_0: vec3<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(abs(u_input.b & 72224u), 22u)])), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(635f, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a, 22u)]))))));
    var var_1 = select(select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, -1000f != arg_0.x), vec2<bool>(true, true)), func_3(), vec2<bool>(true, true)), !(!vec2<bool>(339f < arg_0.x, false)), func_3());
    return _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-242f * 742f)) * arg_0.x));
}

fn func_1() -> Struct_4 {
    var var_0 = firstTrailingBit(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-6110i, 2013i, -566i, -15627i), vec4<i32>(2147483647i, -1i, 237i, 992i) >> (vec4<u32>(9792u, 11879u, u_input.a, u_input.b) % vec4<u32>(32u)))), ~(-_wgslsmith_mod_i32(50180i, 2147483647i)), -(_wgslsmith_clamp_i32(-2147483647i, 21658i, 22169i) ^ 43866i)));
    var var_1 = _wgslsmith_f_op_f32(-1262f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1773f) + _wgslsmith_div_f32(global3[_wgslsmith_index_u32(1u, 22u)], global3[_wgslsmith_index_u32(u_input.a, 22u)])), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(292f, 514f, 190f), vec3<f32>(1544f, global3[_wgslsmith_index_u32(37074u, 22u)], global3[_wgslsmith_index_u32(16657u, 22u)]))))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(243f, global3[_wgslsmith_index_u32(15672u, 22u)], global3[_wgslsmith_index_u32(u_input.a, 22u)]), vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 22u)], -690f, 199f))), _wgslsmith_div_vec3_f32(vec3<f32>(-926f, 400f, 1089f), vec3<f32>(-476f, global3[_wgslsmith_index_u32(29919u, 22u)], -529f))))))));
    var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-513f)) * var_2.x))), -235f, (_wgslsmith_dot_vec3_i32(vec3<i32>(21833i, -42255i, -2147483647i), vec3<i32>(-1i, -17439i, -21601i)) | max(2147483647i, -13119i)) > ~_wgslsmith_add_i32(-33562i, -21058i)))));
    var var_3 = max(1u ^ u_input.b, ~(0u >> (u_input.a % 32u)));
    return Struct_4(abs(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 2147483647i, 14738i, -31021i), vec4<i32>(-15890i, -2147483647i, -34105i, -16888i)), 2147483647i >> (u_input.b % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(-41261i, -5361i), vec2<i32>(1i, -1i)))) << (127528u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = var_0.a;
    var var_2 = !all(vec2<bool>(false, any(vec4<bool>(true, true, true, true))));
    var var_3 = Struct_2(1776f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3[_wgslsmith_index_u32(u_input.b, 22u)], global3[_wgslsmith_index_u32(u_input.a, 22u)])))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b, 22u)]) * -1000f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(u_input.a, 22u)])), global3[_wgslsmith_index_u32(44554u, 22u)]))), Struct_1(!(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))), firstLeadingBit(~(vec4<u32>(4294967295u, 1u, u_input.a, 43051u) ^ vec4<u32>(1u, u_input.a, 58710u, 4294967295u)))), true);
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -387f);
    global0 = (u_input.b << (~_wgslsmith_sub_u32(var_3.c.b.x, ~u_input.a) % 32u)) != ~0u;
    var_2 = true & !any(vec2<bool>(true, func_3().x));
    var var_5 = select(reverseBits(_wgslsmith_sub_vec3_u32(var_3.c.b.zyx, var_3.c.b.zyy)), _wgslsmith_div_vec3_u32(vec3<u32>(var_3.c.b.x, firstLeadingBit(countOneBits(var_3.c.b.x)), 98657u), var_3.c.b.xzz), select(!(!select(vec3<bool>(true, false, false), vec3<bool>(var_3.d, var_3.d, var_3.d), var_3.c.a.x)), !select(select(vec3<bool>(true, var_3.d, var_3.c.a.x), vec3<bool>(var_3.c.a.x, true, var_3.c.a.x), true), !vec3<bool>(true, var_3.c.a.x, false), true), false || any(select(vec3<bool>(var_3.c.a.x, true, true), vec3<bool>(true, true, true), var_3.d))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(var_5.x, 22u)], 2318f)))), var_3.c.b.xyx, _wgslsmith_f_op_f32(var_3.a - -307f));
}

