struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<i32>,
    d: vec4<f32>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: f32,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_4, 3> = array<Struct_4, 3>(Struct_4(681f, false, Struct_3(2147483647i, -1266f)), Struct_4(-357f, true, Struct_3(5342i, 126f)), Struct_4(-351f, true, Struct_3(2147483647i, -124f)));

var<private> global2: f32;

var<private> global3: Struct_1;

var<private> global4: vec3<u32> = vec3<u32>(41788u, 0u, 10380u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2() -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-754f * 349f), -131f, 276f)))));
    return _wgslsmith_add_vec3_u32(~vec3<u32>(global4.x, u_input.b, ~1u), _wgslsmith_add_vec3_u32(vec3<u32>(~(u_input.b >> (global4.x % 32u)), 0u, ~_wgslsmith_clamp_u32(4294967295u, u_input.b, 4294967295u)), ~vec3<u32>(~u_input.b, 4294967295u, countOneBits(u_input.b))));
}

fn func_3(arg_0: vec2<bool>) -> vec3<bool> {
    global3 = Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(~min(u_input.b, 17219u), abs(global4.x)), _wgslsmith_clamp_vec2_u32(~(~vec2<u32>(u_input.b, u_input.b)), ~_wgslsmith_mod_vec2_u32(global4.xz, vec2<u32>(global4.x, global4.x)), ~global4.zy)));
    var var_0 = vec3<bool>(-_wgslsmith_sub_i32(_wgslsmith_div_i32(32130i, u_input.a.x), 1i) == _wgslsmith_mod_i32(-15582i, -u_input.a.x), !select(any(!arg_0), any(select(vec3<bool>(true, false, arg_0.x), vec3<bool>(arg_0.x, true, false), arg_0.x)), 31850i > -u_input.a.x), all(vec4<bool>(min(u_input.a.x, -2147483647i) >= _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), 1i < _wgslsmith_sub_i32(-2147483647i, u_input.a.x), (false | arg_0.x) != !arg_0.x, true)));
    global3 = Struct_1(1u);
    let var_1 = ~(~max(0u, firstLeadingBit(u_input.b))) | 4294967295u;
    var var_2 = vec3<u32>(16224u, ~4294967295u, global3.a);
    return !select(select(select(!vec3<bool>(true, var_0.x, var_0.x), select(vec3<bool>(false, true, var_0.x), vec3<bool>(false, false, var_0.x), vec3<bool>(false, true, true)), select(vec3<bool>(var_0.x, true, true), vec3<bool>(false, false, arg_0.x), arg_0.x)), vec3<bool>(any(vec3<bool>(arg_0.x, arg_0.x, false)), all(vec3<bool>(arg_0.x, var_0.x, true)), !var_0.x), select(vec3<bool>(true, var_0.x, arg_0.x), vec3<bool>(false, arg_0.x, true), arg_0.x)), select(select(select(vec3<bool>(arg_0.x, var_0.x, arg_0.x), vec3<bool>(arg_0.x, true, false), arg_0.x), !vec3<bool>(true, arg_0.x, arg_0.x), arg_0.x), select(!vec3<bool>(true, true, arg_0.x), select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(true, true, var_0.x), var_0.x), true), !vec3<bool>(var_0.x, var_0.x, false)), select(select(!vec3<bool>(false, arg_0.x, var_0.x), vec3<bool>(true, true, true), arg_0.x), !vec3<bool>(var_0.x, arg_0.x, true), vec3<bool>(select(true, arg_0.x, true), true, arg_0.x)));
}

fn func_1(arg_0: vec2<i32>) -> vec3<u32> {
    let var_0 = ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(global4.x << (3781u % 32u), ~global4.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 26164u, global3.a), vec3<u32>(global4.x, 12617u, 1u))), ~vec3<u32>(0u, 4294967295u, 48744u) << (abs(vec3<u32>(1u, global4.x, 1u)) % vec3<u32>(32u)), func_2() >> (_wgslsmith_div_vec3_u32(vec3<u32>(global3.a, 77u, 0u), vec3<u32>(8715u, global4.x, 1u)) % vec3<u32>(32u))));
    global1 = array<Struct_4, 3>();
    let var_1 = all(select(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), func_3(vec2<bool>(true, false))), func_3(vec2<bool>(true, true)), true));
    let var_2 = vec4<bool>(var_1, var_1, true, true);
    var var_3 = global1[_wgslsmith_index_u32(firstLeadingBit(7499u), 3u)];
    return _wgslsmith_mult_vec3_u32(~select(_wgslsmith_mult_vec3_u32(max(var_0, vec3<u32>(global4.x, 23796u, 1u)), ~var_0), ~select(vec3<u32>(u_input.b, global3.a, u_input.b), vec3<u32>(global3.a, global3.a, global3.a), vec3<bool>(var_3.b, true, true)), true), abs(_wgslsmith_sub_vec3_u32(vec3<u32>(36264u, global4.x ^ 0u, 22998u), vec3<u32>(abs(u_input.b), 69953u ^ global3.a, select(global3.a, 14438u, true)))));
}

fn func_4(arg_0: vec3<u32>) -> f32 {
    let var_0 = -4238i;
    global3 = Struct_1(~u_input.b);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1180f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1458f, 668f) + -295f))) - _wgslsmith_f_op_f32(-514f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -127f) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-874f - 136f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(483f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_1(u_input.a.xy))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1402f))))) <= _wgslsmith_f_op_f32(max(330f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -582f))))));
    var var_0 = abs(~(~select(~global4.yy, vec2<u32>(global4.x, 1u) ^ vec2<u32>(1u, global3.a), true)));
    var var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1798f, -1226f, 1178f, 1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1755f, 1000f, -1251f, -1404f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(223f, 1244f, -1375f, 860f) - vec4<f32>(-1033f, -979f, 528f, 1425f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.yy, (~firstLeadingBit(vec4<u32>(u_input.b, 12811u, 4294967295u, 0u)) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(global3.a, 56077u, 1u, var_0.x) >> (vec4<u32>(1u, var_0.x, var_0.x, u_input.b) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 0u, global3.a, 0u), vec4<u32>(global4.x, 1u, global4.x, 1u)))) ^ abs(vec4<u32>(49107u, ~4294967295u, 12984u, 0u)), ~72852u, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.zyy - vec3<f32>(-202f, -2715f, -780f))), var_1.yyw) * _wgslsmith_f_op_vec3_f32(ceil(var_1.www))));
}

