struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 25>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec4<u32>, arg_1: i32, arg_2: vec4<u32>, arg_3: i32) -> u32 {
    let var_0 = vec4<u32>(min(23114u, _wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(arg_2.yzz, vec3<u32>(0u, 28179u, arg_0.x)), ~vec3<u32>(arg_0.x, u_input.c.x, 92073u))), (arg_0.x >> (_wgslsmith_div_u32(_wgslsmith_div_u32(arg_2.x, 473u), u_input.c.x) % 32u)) ^ (u_input.c.x >> (23781u % 32u)), ~arg_2.x, ~u_input.c.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))), -136f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(447f)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    global0 = array<vec2<f32>, 25>();
    return max(var_0.x, 38999u);
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_clamp_u32(~(~1u), min(func_3(~u_input.c, _wgslsmith_mult_i32(u_input.a, u_input.a), vec4<u32>(u_input.c.x, 1u, 4294967295u, 1u), 0i), 4294967295u), reverseBits(u_input.c.x)), arg_1.d.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.c)), _wgslsmith_add_vec2_u32(~reverseBits(u_input.c.zx), arg_1.d) >> (~vec2<u32>(~u_input.c.x, reverseBits(2974u)) % vec2<u32>(32u)));
    let var_1 = _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(var_0.d, var_0.d), _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(arg_1.a, arg_1.a)), max(arg_1.d, var_0.d)) << (vec2<u32>(_wgslsmith_add_u32(u_input.c.x, arg_1.a), 1u) % vec2<u32>(32u))), arg_1.d);
    let var_2 = Struct_1(abs(_wgslsmith_sub_u32(0u, var_1)), abs(85978u), _wgslsmith_f_op_vec4_f32(-arg_1.c), var_0.d);
    global0 = array<vec2<f32>, 25>();
    let var_3 = Struct_1(~1u, 3601u, vec4<f32>(_wgslsmith_f_op_f32(520f - _wgslsmith_div_f32(-289f, _wgslsmith_f_op_f32(trunc(var_0.c.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.c.x), -1621f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-376f * -1360f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) + _wgslsmith_f_op_f32(round(487f)))), 1000f), abs(var_0.d));
    return Struct_1(~5763u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, reverseBits(4294967295u), var_0.a & var_3.d.x, _wgslsmith_dot_vec2_u32(countOneBits(arg_1.d), var_3.d)), u_input.c), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(1433f, var_2.c.x, 903f, 134f), vec4<f32>(405f, var_3.c.x, var_3.c.x, 644f)))) * vec4<f32>(-147f, var_0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -507f), var_0.c.x)), var_2.c)), vec2<u32>(_wgslsmith_mod_u32(u_input.c.x, ~abs(79644u)), _wgslsmith_add_u32(abs(u_input.c.x), 4294967295u >> (firstLeadingBit(var_1) % 32u))));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<f32>) -> vec4<bool> {
    global0 = array<vec2<f32>, 25>();
    global0 = array<vec2<f32>, 25>();
    global0 = array<vec2<f32>, 25>();
    let var_0 = func_2(true, Struct_1(~4294967295u, ~(select(0u, 0u, false) >> (countOneBits(u_input.c.x) % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(926f, arg_1.x, arg_0.x, arg_0.x)))), u_input.c.wx << (vec2<u32>(abs(30730u), 4294967295u) % vec2<u32>(32u))), min(u_input.a >> (~6022u % 32u), u_input.a));
    global0 = array<vec2<f32>, 25>();
    return select(select(!vec4<bool>(true, all(vec2<bool>(false, true)), var_0.a > var_0.d.x, true), vec4<bool>(true, (-219f < arg_1.x) == true, true, all(vec4<bool>(true, true, true, true))), true), vec4<bool>(true, 19264u >= var_0.b, true, true), vec4<bool>(false, !any(vec4<bool>(true, true, true, true)), true, all(vec4<bool>(true, true, any(vec2<bool>(true, false)), true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec2<bool>(all(!func_1(vec3<f32>(-395f, 118f, -923f), global0[_wgslsmith_index_u32(4294967295u, 25u)])), !(!any(vec4<bool>(false, false, false, false))));
    var var_1 = !vec2<bool>(false, var_0.x);
    let var_2 = Struct_1(u_input.c.x, abs(_wgslsmith_div_u32(~_wgslsmith_add_u32(3594u, 57294u), 23907u >> (u_input.c.x % 32u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(354f + 880f)), 599f, _wgslsmith_f_op_f32(select(-348f, _wgslsmith_f_op_f32(round(544f)), all(vec3<bool>(var_0.x, true, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(556f * -854f) - _wgslsmith_f_op_f32(195f * 1000f)))), u_input.c.yw);
    var var_3 = func_1(_wgslsmith_f_op_vec3_f32(max(var_2.c.yxy, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(453f, var_2.c.x, var_2.c.x) * var_2.c.xzw), _wgslsmith_f_op_vec3_f32(-var_2.c.wwx)) * var_2.c.wzw))), _wgslsmith_f_op_vec2_f32(var_2.c.ww * global0[_wgslsmith_index_u32(countOneBits(countOneBits(var_2.b | u_input.c.x)), 25u)])).yx;
    var var_4 = abs(-select(vec3<i32>(i32(-1i) * -1i, -4724i, -10780i), firstLeadingBit(abs(vec3<i32>(u_input.d, u_input.d, u_input.b))), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-var_2.c.x))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.c.x, var_2.c.x, var_2.c.x), vec3<f32>(819f, var_2.c.x, var_2.c.x), vec3<bool>(var_0.x, false, var_0.x))), _wgslsmith_f_op_vec3_f32(-var_2.c.zzx))))), var_2.c.x, _wgslsmith_f_op_f32(f32(-1f) * -393f));
}

