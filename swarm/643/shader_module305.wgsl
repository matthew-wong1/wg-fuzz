struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
    c: Struct_1,
    d: vec3<f32>,
    e: i32,
}

struct Struct_4 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4>;

var<private> global1: vec2<i32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: vec2<i32>) -> i32 {
    let var_0 = -4055i;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2830f))), 1096f, arg_1.x, min(~1i, abs(var_0)));
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, _wgslsmith_f_op_f32(-var_1.a), -876f, -1411f))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(-218f + 276f), var_1.a, -147f)))));
    global0 = array<i32, 4>();
    var var_3 = var_1.b;
    return arg_1.x;
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: vec2<u32>, arg_3: i32) -> vec2<bool> {
    global1 = u_input.a.zz;
    var var_0 = Struct_2(0u, _wgslsmith_clamp_u32(~(~arg_2.x), 4536u, _wgslsmith_div_u32(~u_input.c, 95836u)) << (u_input.b.x % 32u), global1.x, Struct_1(_wgslsmith_f_op_f32(-328f * -307f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-802f + -371f) - _wgslsmith_f_op_f32(abs(1000f))) - 1f), 35440i, func_3(arg_2.x, u_input.d.wz) & ~global1.x), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1435f + 362f)), _wgslsmith_f_op_f32(f32(-1f) * -216f)), 1727f, arg_3, countOneBits(~(-2147483647i) | global1.x)));
    var var_1 = Struct_2(arg_2.x, ~(abs(u_input.c) & 4023u) & ~4294967295u, global1.x, var_0.d, Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-828f)))), var_0.d.b, 16331i, _wgslsmith_sub_i32(-var_0.c & ~(-8036i), -(-2147483647i >> (u_input.b.x % 32u)))));
    var var_2 = ~select(vec2<u32>(14404u, 1u), vec2<u32>(21588u, 4294967295u), false);
    var var_3 = Struct_3(select(vec3<bool>(true, true, any(!vec4<bool>(arg_0, arg_0, arg_0, false))), select(select(vec3<bool>(arg_1, false, true), !vec3<bool>(true, arg_0, arg_1), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(arg_1, arg_0, true))), vec3<bool>(false || arg_0, true, any(vec3<bool>(false, false, false))), !(arg_1 || false)), vec3<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, var_2.x, 1u), vec4<u32>(u_input.c, 0u, u_input.b.x, arg_2.x)) < max(14773u, 46930u), !(!arg_1), 0i >= var_1.c)), arg_1, var_1.e, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1136f) + _wgslsmith_f_op_f32(min(var_1.d.a, _wgslsmith_f_op_f32(-var_1.e.b)))), var_1.d.a, 1144f), _wgslsmith_add_i32(-var_0.c, min(-1i, 11610i)));
    return !(!select(select(var_3.a.zy, var_3.a.xx, var_3.a.yy), select(select(var_3.a.zx, vec2<bool>(false, false), var_3.a.xy), var_3.a.yz, var_3.a.zx), select(select(var_3.a.xy, var_3.a.xx, var_3.a.xy), !vec2<bool>(arg_0, arg_0), !vec2<bool>(var_3.a.x, var_3.a.x))));
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -719f)));
    let var_1 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-452f, _wgslsmith_f_op_f32(arg_0 - 1418f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_0, 1451f))) - 278f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(arg_0)))), _wgslsmith_f_op_f32(f32(-1f) * -194f))));
    global0 = array<i32, 4>();
    let var_2 = vec3<bool>(true, true, all(select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), func_2(false, true, vec2<u32>(4294967295u, u_input.b.x), 2147483647i), any(vec3<bool>(false, true, true))), func_2(true, true, abs(vec2<u32>(30091u, 4294967295u)), abs(2147483647i)), true)));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + arg_0)), _wgslsmith_f_op_f32(-var_1.x), reverseBits(global0[_wgslsmith_index_u32(max(0u, u_input.b.x), 4u)]), ~(u_input.d.x ^ (global1.x & countOneBits(global0[_wgslsmith_index_u32(u_input.c, 4u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, -18509i), vec2<i32>(max(u_input.e, _wgslsmith_dot_vec3_i32(u_input.a.yxw, vec3<i32>(-16820i, 1i, 1i))), -26608i)));
    var var_1 = Struct_3(select(vec3<bool>(true, true, true), !vec3<bool>(true, all(vec3<bool>(false, false, false)), true), vec3<bool>(_wgslsmith_f_op_f32(sign(1236f)) <= _wgslsmith_f_op_f32(trunc(-1313f)), abs(u_input.b.x) == u_input.b.x, any(select(vec2<bool>(false, true), vec2<bool>(false, true), false)))), any(vec2<bool>(true, true)), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1772f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-588f, -136f, 2048f)))))) - vec3<f32>(-151f, 1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-780f, -812f)), _wgslsmith_f_op_f32(324f - 1177f))))), ~_wgslsmith_dot_vec4_i32(abs(~u_input.a), ~(~vec4<i32>(21518i, 12800i, global1.x, u_input.d.x))));
    global1 = u_input.d.zz;
    var var_2 = _wgslsmith_mult_i32(~_wgslsmith_dot_vec2_i32(~countOneBits(u_input.d.wy), _wgslsmith_clamp_vec2_i32(~vec2<i32>(global0[_wgslsmith_index_u32(53455u, 4u)], global1.x), vec2<i32>(var_0, 6516i), -u_input.d.wz)), u_input.e);
    var var_3 = Struct_4(~83792u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.d.x)) * _wgslsmith_f_op_f32(-var_1.d.x)));
    let var_4 = Struct_4(1u, var_1.c.a);
    var_2 = -_wgslsmith_dot_vec2_i32(u_input.d.ww, vec2<i32>(u_input.d.x, -50414i)) << (_wgslsmith_clamp_u32(~select(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 39218u), vec2<u32>(17834u, u_input.b.x)), ~var_4.a, true), ~(~52981u), 42276u) % 32u);
    global1 = -(~(vec2<i32>(-1i) * -vec2<i32>(-1i, var_0))) << (u_input.b % vec2<u32>(32u));
    var_2 = _wgslsmith_dot_vec2_i32(u_input.d.yz, _wgslsmith_sub_vec2_i32(vec2<i32>(~u_input.d.x, -1i), select(-_wgslsmith_div_vec2_i32(u_input.a.xy, vec2<i32>(global1.x, global0[_wgslsmith_index_u32(var_3.a, 4u)])), ~_wgslsmith_add_vec2_i32(u_input.a.wz, u_input.d.wx), !vec2<bool>(var_1.b, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.d)) * vec3<f32>(var_4.b, _wgslsmith_f_op_f32(var_1.d.x + var_3.b), var_3.b)))), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_4.b), _wgslsmith_f_op_f32(round(-265f)), all(vec3<bool>(true, var_1.a.x, true)))), var_4.b), ~(~(~vec3<u32>(4294967295u, var_4.a, 1u)) >> (~reverseBits(vec3<u32>(1u, 0u, 6926u)) % vec3<u32>(32u))));
}

