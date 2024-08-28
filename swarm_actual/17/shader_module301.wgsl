struct Struct_1 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13>;

var<private> global1: u32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec4<f32>) -> u32 {
    global0 = array<bool, 13>();
    global0 = array<bool, 13>();
    var var_0 = any(vec3<bool>(true, global0[_wgslsmith_index_u32(~1u, 13u)], (u_input.b >= 4294967295u) & true));
    var_0 = _wgslsmith_f_op_f32(-arg_0.x) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1757f - _wgslsmith_f_op_f32(step(715f, 126f))), arg_0.x, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c, 68220u), 13u)])));
    let var_1 = Struct_3(arg_0.x, vec4<i32>(_wgslsmith_mult_i32(-15194i, _wgslsmith_mod_i32(~(-1968i), _wgslsmith_clamp_i32(47078i, -1i, -1i))), 2147483647i, ~(~2147483647i), -1i));
    return abs(_wgslsmith_clamp_u32(abs(41805u), ~(abs(u_input.d) & ~u_input.b), _wgslsmith_sub_u32(4294967295u, u_input.b)));
}

fn func_2(arg_0: vec3<f32>, arg_1: i32, arg_2: f32) -> u32 {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(floor(-617f));
    var var_2 = vec3<bool>(true, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, ~func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, var_1, -120f, var_1)))), 13u)], arg_1 != (arg_1 << (u_input.a % 32u)));
    var var_3 = 1u;
    var var_4 = Struct_3(arg_0.x, ~vec4<i32>(min(1i, reverseBits(arg_1)), -max(2147483647i, arg_1), -arg_1, _wgslsmith_add_i32(12027i, ~17296i)));
    return 4294967295u;
}

fn func_1(arg_0: Struct_3) -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(arg_0.a + 471f), arg_0.a) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(471f, 292f, arg_0.a))))), true);
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(var_0.a, _wgslsmith_f_op_vec3_f32(trunc(var_0.a)))) + _wgslsmith_f_op_vec3_f32(round(var_0.a))), true && (_wgslsmith_f_op_f32(-1281f * var_0.a.x) < -459f));
    var var_1 = ~(-_wgslsmith_dot_vec2_i32(abs(vec2<i32>(arg_0.b.x, arg_0.b.x)) << (vec2<u32>(0u, 1u) % vec2<u32>(32u)), -arg_0.b.yw));
    let var_2 = _wgslsmith_div_u32(max(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(3025u, 61399u, 35547u, 4294967295u), vec4<u32>(u_input.a, u_input.c, 47082u, u_input.a), vec4<u32>(0u, 4294967295u, 23486u, 11080u)) << (~vec4<u32>(u_input.d, 4294967295u, u_input.d, u_input.c) % vec4<u32>(32u)), ~(~vec4<u32>(u_input.b, u_input.b, u_input.c, u_input.b))), ~select(u_input.b, ~u_input.c, all(vec4<bool>(var_0.b, false, global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(u_input.c, 13u)])))), func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.a, var_0.a.x, arg_0.a))), var_0.a), i32(-1i) * -1i, arg_0.a));
    return -select(arg_0.b.x, select(arg_0.b.x, 8274i, global0[_wgslsmith_index_u32(u_input.a, 13u)]), any(vec3<bool>(true, false, false)) & any(!vec4<bool>(true, var_0.b, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(firstLeadingBit(vec2<i32>(1i, 1i)), vec2<i32>(1i, 1i)), -_wgslsmith_add_vec2_i32(~vec2<i32>(28522i, -6986i), -vec2<i32>(0i, 2147483647i))), reverseBits(_wgslsmith_mult_i32(-select(-18774i, -1i, global0[_wgslsmith_index_u32(u_input.c, 13u)]), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(12593i, 23482i), vec2<i32>(13113i, 1i)), func_1(Struct_3(-1651f, vec4<i32>(-31754i, 0i, 3405i, -19175i)))))));
    let var_1 = !(!select(select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 13u)], global0[_wgslsmith_index_u32(u_input.d, 13u)], true, false), !vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.c, 13u)], true, true), select(vec4<bool>(true, false, false, global0[_wgslsmith_index_u32(u_input.a, 13u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 13u)], false, global0[_wgslsmith_index_u32(749u, 13u)]), vec4<bool>(true, false, global0[_wgslsmith_index_u32(38251u, 13u)], global0[_wgslsmith_index_u32(u_input.a, 13u)]))), !vec4<bool>(true, global0[_wgslsmith_index_u32(24515u, 13u)], false, false), firstTrailingBit(u_input.c) != 4294967295u));
    var var_2 = _wgslsmith_mod_vec4_i32(vec4<i32>(1i, -1i, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(7430i, 0i, 5653i, -2147483647i), vec4<i32>(-37866i, 23291i, -5525i, -1418i)), vec4<i32>(1i, -27447i, 72471i, -1i)), _wgslsmith_sub_i32(abs(0i), ~(-27649i))), vec4<i32>(1i, 1i, 1i, 1i)) >> (firstTrailingBit(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 31135u, 131312u), vec4<u32>(12566u, u_input.a, 3021u, 20853u)), reverseBits(vec4<u32>(u_input.d, u_input.d, 62257u, u_input.b)), max(vec4<u32>(1522u, u_input.c, u_input.d, u_input.b), vec4<u32>(4294967295u, 20146u, u_input.b, u_input.a))) << ((reverseBits(vec4<u32>(u_input.b, 4294967295u, 735u, 30436u)) & ~vec4<u32>(77341u, u_input.a, u_input.d, 12615u)) % vec4<u32>(32u))) % vec4<u32>(32u));
    var var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -916f) - _wgslsmith_f_op_f32(-323f + -774f))))), ~(-(~vec4<i32>(-1i, var_2.x, var_2.x, var_2.x) >> (~vec4<u32>(u_input.c, u_input.a, 0u, 1u) % vec4<u32>(32u)))));
    var var_4 = Struct_2(var_1.wz);
    global0 = array<bool, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_div_f32(var_3.a, 149f), vec2<u32>(4294967295u, _wgslsmith_mult_u32(~7263u, abs(57370u) & ~u_input.c)), vec2<u32>(u_input.a, 79852u), var_3.b.x);
}

