struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec2<i32>,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: vec3<u32>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<u32, 21>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1f - -643f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(590f - -1720f))))), !all(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true))));
    var_0 = 1122f;
    return abs(_wgslsmith_div_vec3_u32(select(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 21u)], 21u)] ^ global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 21u)], 21u)], u_input.c.x & global1[_wgslsmith_index_u32(u_input.c.x, 21u)], 0u ^ u_input.c.x), firstTrailingBit(vec3<u32>(global1[_wgslsmith_index_u32(20659u, 21u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 21u)], 21u)], 1u)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), reverseBits(vec3<u32>(_wgslsmith_div_u32(1u, global1[_wgslsmith_index_u32(u_input.c.x, 21u)]), 34429u, u_input.c.x))));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: vec3<u32>, arg_3: vec4<bool>) -> u32 {
    let var_0 = Struct_3(Struct_1(_wgslsmith_add_vec3_i32(~max(u_input.a, vec3<i32>(43115i, u_input.a.x, global0.x)), global0.xyw), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1708f, 183f, 735f)))), all(!select(arg_3.zy, arg_3.zw, arg_3.ww)) & true, _wgslsmith_div_vec2_i32(vec2<i32>(max(global0.x, _wgslsmith_mod_i32(-1i, -1i)), -1i), vec2<i32>(~(-1i), 2147483647i)), -vec4<i32>(~(-45388i << (arg_2.x % 32u)), u_input.b.x, 1i, -50589i), Struct_1(vec3<i32>(select(-35045i, -2147483647i, true) >> (~18616u % 32u), -36174i, abs(_wgslsmith_mult_i32(-2147483647i, arg_1))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-871f - -267f), 2382f, -193f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1412f, -664f, 793f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-117f, 139f, 755f))))));
    var var_1 = Struct_4(max(_wgslsmith_div_u32(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_2.x, 34263u), 21u)], 21u)], arg_2.x, u_input.c.x), u_input.c.x & _wgslsmith_mod_u32(76585u, arg_2.x)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_2.xx, vec2<u32>(83532u, 4294967295u)) << (arg_2.x % 32u), 21u)] ^ _wgslsmith_sub_u32(~4294967295u, 0u)), true, func_3());
    let var_2 = vec3<f32>(var_0.e.b.x, 171f, _wgslsmith_f_op_f32(round(var_0.a.b.x)));
    global0 = var_0.d;
    let var_3 = arg_3.zy;
    return ~firstLeadingBit(~49676u);
}

fn func_4(arg_0: u32, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = !(select(true, all(vec4<bool>(true, true, true, false)), false) | true) || false;
    global1 = array<u32, 21>();
    var var_1 = reverseBits(func_3().x);
    var_1 = ~_wgslsmith_add_u32(_wgslsmith_sub_u32(~global1[_wgslsmith_index_u32(u_input.c.x | 4294967295u, 21u)], ~_wgslsmith_add_u32(136471u, u_input.c.x)), 41339u);
    var_1 = ~_wgslsmith_add_u32(4294967295u, _wgslsmith_clamp_u32(0u, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 1u, 39756u, u_input.c.x), ~vec4<u32>(arg_0, 4294967295u, 15004u, 58311u)), 1u));
    return Struct_1(~vec3<i32>(_wgslsmith_sub_i32(countOneBits(48298i), _wgslsmith_dot_vec3_i32(global0.wyz, u_input.a)), u_input.b.x, 0i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1068f, 222f, -200f), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(395f, 1190f, 1282f)), _wgslsmith_div_vec3_f32(vec3<f32>(-1506f, -1000f, -534f), vec3<f32>(-906f, -811f, -800f)))), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), var_0))) * vec3<f32>(-269f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -451f)), _wgslsmith_f_op_f32(355f * _wgslsmith_f_op_f32(f32(-1f) * -1168f)))));
}

fn func_1(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_1) -> f32 {
    var var_0 = Struct_3(arg_2, !arg_1.x, _wgslsmith_mod_vec2_i32((u_input.a.zz | (global0.xx << (vec2<u32>(global1[_wgslsmith_index_u32(u_input.c.x, 21u)], 4294967295u) % vec2<u32>(32u)))) | u_input.a.xz, global0.wy), ~vec4<i32>(1i, -global0.x | firstTrailingBit(12168i), 2147483647i, u_input.a.x), func_4(u_input.c.x, _wgslsmith_mod_vec2_u32(vec2<u32>(1u, func_2(false, global0.x, vec3<u32>(global1[_wgslsmith_index_u32(1u, 21u)], u_input.c.x, 26844u), vec4<bool>(true, arg_1.x, true, false))), u_input.c)));
    let var_1 = Struct_5(_wgslsmith_f_op_f32(-arg_2.b.x));
    var var_2 = vec3<bool>(true, var_0.b, 178f == _wgslsmith_f_op_f32(-var_0.a.b.x));
    var var_3 = -(~_wgslsmith_clamp_vec4_i32(var_0.d, ~var_0.d >> (_wgslsmith_mod_vec4_u32(vec4<u32>(20483u, u_input.c.x, u_input.c.x, 4294967295u), vec4<u32>(u_input.c.x, 17372u, global1[_wgslsmith_index_u32(1u, 21u)], u_input.c.x)) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(var_0.d, select(vec4<i32>(var_0.d.x, 2147483647i, 2147483647i, 0i), var_0.d, arg_1.x))));
    var_3 = ~(vec4<i32>(reverseBits(u_input.b.x) << (~1u % 32u), -_wgslsmith_dot_vec4_i32(vec4<i32>(3922i, 0i, -15972i, 1i), var_0.d), -1i, abs(firstTrailingBit(-17602i))) | select(max(-vec4<i32>(21410i, 2147483647i, var_0.e.a.x, arg_2.a.x), max(var_0.d, var_0.d)), vec4<i32>(_wgslsmith_sub_i32(u_input.b.x, arg_2.a.x), abs(-1i), max(var_0.c.x, global0.x), arg_2.a.x), arg_1));
    return _wgslsmith_f_op_f32(arg_2.b.x - 617f);
}

fn func_5(arg_0: f32, arg_1: vec4<bool>, arg_2: vec3<f32>, arg_3: vec2<u32>) -> i32 {
    let var_0 = Struct_2(func_4(~(func_3().x ^ 23450u), func_3().yy));
    global0 = _wgslsmith_mod_vec4_i32(~(-(vec4<i32>(29079i, u_input.a.x, -1i, -1i) & vec4<i32>(var_0.a.a.x, -573i, 2147483647i, 0i)) << (vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.c, arg_3), 4294967295u, ~4294967295u, 0u) % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(vec4<i32>(countOneBits(global0.x ^ -1i), var_0.a.a.x, u_input.b.x, 1i), vec4<i32>(global0.x, min(-22266i, reverseBits(u_input.a.x)), _wgslsmith_mod_i32(-global0.x, ~39143i), min(~u_input.b.x, u_input.a.x))));
    global1 = array<u32, 21>();
    global1 = array<u32, 21>();
    global1 = array<u32, 21>();
    return -3337i & -(~u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<i32>(_wgslsmith_clamp_i32(-1i, u_input.a.x, global0.x), func_5(_wgslsmith_f_op_f32(func_1(all(vec4<bool>(false, true, true, false)) && (u_input.b.x > u_input.a.x), vec4<bool>(true, true, true, true), Struct_1(u_input.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(1088f, -2264f, 815f) * vec3<f32>(520f, 976f, 912f))))), vec4<bool>(select(any(vec2<bool>(false, false)), true, false), false | select(true, false, true), true, false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2066f, 1575f, -915f))), ~(select(vec2<u32>(1u, 4294967295u), u_input.c, vec2<bool>(false, true)) ^ ~u_input.c)), global0.x, -countOneBits(max(1i, u_input.a.x)));
    let var_0 = -1155f;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, i32(-1i) * -29541i);
}

