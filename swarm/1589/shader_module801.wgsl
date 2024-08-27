struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: vec2<f32>,
    e: vec4<bool>,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 13>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_2, arg_3: bool) -> vec2<bool> {
    global0 = array<u32, 13>();
    var var_0 = vec3<f32>(_wgslsmith_div_f32(1137f, _wgslsmith_f_op_f32(abs(949f))), _wgslsmith_f_op_f32(f32(-1f) * -673f), -1564f);
    global0 = array<u32, 13>();
    var_0 = _wgslsmith_f_op_vec3_f32(arg_2.b.a + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-758f * -1423f), _wgslsmith_f_op_f32(step(266f, var_0.x))))));
    global0 = array<u32, 13>();
    return vec2<bool>(true, !(!any(!vec4<bool>(arg_2.c, arg_3, arg_2.c, arg_2.b.c.x))));
}

fn func_2() -> Struct_1 {
    global0 = array<u32, 13>();
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-579f + _wgslsmith_f_op_f32(select(-2672f, 664f, false))), 484f, true)) - 434f), -297f);
    global0 = array<u32, 13>();
    var var_1 = 4294967295u;
    var var_2 = Struct_4((u_input.b.x >> ((global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 13u)], 13u)], 13u)], 13u)], 13u)] >> (~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 13u)], 13u)], 13u)] % 32u)) % 32u)) | -1i);
    return Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-104f - _wgslsmith_f_op_f32(select(var_0, 651f, true))), var_0, _wgslsmith_f_op_f32(floor(var_0))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, -884f)))), 242f, !select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), func_3(vec2<i32>(var_2.a, 0i), var_0, Struct_2(vec2<i32>(var_2.a, u_input.a.x), Struct_1(vec3<f32>(1176f, var_0, var_0), 1000f, vec2<bool>(true, false)), false), false)), true));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_4) -> Struct_1 {
    global0 = array<u32, 13>();
    global0 = array<u32, 13>();
    global0 = array<u32, 13>();
    global0 = array<u32, 13>();
    global0 = array<u32, 13>();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec2_i32(u_input.b.yy, vec2<i32>(~0i, select(u_input.b.x, ~abs(u_input.a.x), true)));
    let var_1 = Struct_3(func_1(_wgslsmith_clamp_vec2_u32(abs(vec2<u32>(global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(14880u, 13u)])) ^ max(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(50597u, 13u)], 13u)], 13u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15471u, 13u)], 13u)], 13u)], 13u)]), vec2<u32>(global0[_wgslsmith_index_u32(0u, 13u)], 0u)), vec2<u32>(0u, abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 13u)], 13u)], 13u)], 13u)], 13u)], 13u)], 13u)])), _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 13u)], 13u)], 13u)], 3769u), vec2<u32>(4294967295u, 23585u)), max(vec2<u32>(48521u, 1u), vec2<u32>(129844u, 43967u)))), Struct_4(u_input.a.x)), func_1(~vec2<u32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 13u)], 13u)], 13u)], 13u)], 4294967295u, global0[_wgslsmith_index_u32(18288u, 13u)]), vec3<u32>(4294967295u, 1u, 4294967295u)), 13u)], global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(40401u, 13u)], 4294967295u), 13u)]), Struct_4(abs(u_input.a.x))), -u_input.b.xw, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1242f) - vec2<f32>(502f, 450f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(549f, -866f), vec2<f32>(-411f, -2903f))))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 1268f) + _wgslsmith_f_op_f32(trunc(-2317f))), -1965f)), !vec4<bool>(true, all(vec3<bool>(true, true, true)), true, true));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(175f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.b * var_1.a.a.x))), _wgslsmith_f_op_f32(max(-832f, var_1.a.b)), var_1.a.b, _wgslsmith_f_op_f32(var_1.d.x - _wgslsmith_f_op_f32(-1845f - _wgslsmith_f_op_f32(step(var_1.b.b, 742f))))));
    global0 = array<u32, 13>();
    var var_3 = vec4<bool>(var_2.x == var_2.x, var_1.e.x, true, false);
    var var_4 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1100f, var_1.a.b) + var_2.zx))))), vec4<i32>(-_wgslsmith_clamp_i32(1i, -54523i, var_0.x), reverseBits(_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(-7462i, 1i, -1i, 11916i))), u_input.a.x, u_input.a.x) & ~(~vec4<i32>(-41888i, u_input.b.x, u_input.a.x, -37170i)), ~_wgslsmith_add_u32(108502u, ~min(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 13u)], 13u)], 0u)), max(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(35976u, 13u)]), ~vec2<u32>(global0[_wgslsmith_index_u32(1u, 13u)], 66328u)), ~global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(0u, 13u)], 1u), 13u)]), ~(~0u)));
}

