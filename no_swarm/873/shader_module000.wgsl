struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 14>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_2) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(491f, _wgslsmith_f_op_f32(f32(-1f) * -210f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(2063f * -921f), 1249f))))) > 228f;
    let var_1 = true;
    var var_2 = vec2<i32>(~(~_wgslsmith_mult_i32(1i, _wgslsmith_clamp_i32(8168i, -11572i, u_input.b.x))), _wgslsmith_dot_vec2_i32(u_input.b.yy, abs(u_input.b.xz)));
    var_2 = u_input.b.yy;
    global0 = array<vec4<bool>, 14>();
    return _wgslsmith_div_f32(930f, -487f);
}

fn func_3(arg_0: u32, arg_1: vec3<u32>, arg_2: vec3<bool>) -> f32 {
    global0 = array<vec4<bool>, 14>();
    global0 = array<vec4<bool>, 14>();
    var var_0 = !(!arg_2.zz);
    var var_1 = Struct_2(global0[_wgslsmith_index_u32(3796u, 14u)]);
    let var_2 = ~(~u_input.a.x << (~_wgslsmith_clamp_u32(1u, min(arg_1.x, 6709u), arg_0 << (1u % 32u)) % 32u));
    return _wgslsmith_f_op_f32(-1767f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1588f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -317f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1077f))))));
}

fn func_1(arg_0: vec2<i32>, arg_1: i32, arg_2: i32) -> vec2<f32> {
    global0 = array<vec4<bool>, 14>();
    global0 = array<vec4<bool>, 14>();
    global0 = array<vec4<bool>, 14>();
    var var_0 = 1679f;
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-110f, 1860f, -873f, -1000f) - vec4<f32>(-969f, 358f, 103f, -1971f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(313f, 1606f, 760f, 1243f)))), all(vec2<bool>(true, true)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(-696f)), _wgslsmith_div_f32(-390f, -1356f), 1000f, _wgslsmith_div_f32(-479f, -174f)))), vec3<i32>(u_input.b.x, arg_0.x, _wgslsmith_mod_i32(_wgslsmith_mod_i32(arg_1, 36275i) << (7254u % 32u), -2147483647i)));
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_2(Struct_2(vec4<bool>(true, false, false, true)))), _wgslsmith_f_op_f32(floor(var_1.a.x))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(var_1.a.wx + vec2<f32>(var_1.a.x, var_1.a.x))))))), vec2<f32>(_wgslsmith_f_op_f32(func_3(u_input.a.x, u_input.a.wzw, vec3<bool>(true, true, true))), 1319f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1099f;
    let var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1485f, _wgslsmith_f_op_f32(f32(-1f) * -235f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, 505f), vec2<f32>(1267f, 486f), true)))) * _wgslsmith_f_op_vec2_f32(func_1(u_input.b.zx, u_input.b.x, u_input.b.x << (~u_input.a.x % 32u)))), vec2<f32>(-110f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-424f)), -1177f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(u_input.a.x, vec3<u32>(68667u, u_input.a.x, 60722u), vec3<bool>(true, false, false))), -2172f)))))));
    var var_2 = vec3<bool>(true, true, true & !any(vec2<bool>(true, true)));
    let var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(905f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -898f) + -1027f), -950f, var_1.x), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.x, -552f, var_1.x, var_1.x))))))));
    let var_4 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, 4294967295u), 14u)]);
    var_2 = select(select(vec3<bool>(var_2.x, var_4.a.x, !all(vec4<bool>(false, var_4.a.x, var_2.x, true))), !select(var_4.a.wxx, !vec3<bool>(var_2.x, var_4.a.x, var_2.x), select(var_2.x, true, var_2.x)), var_2.x), vec3<bool>(true, true, var_2.x), !vec3<bool>(true | any(var_4.a), var_4.a.x, any(select(var_4.a.xzw, var_4.a.www, vec3<bool>(var_4.a.x, true, false)))));
    let var_5 = _wgslsmith_f_op_f32(var_0 + 1791f);
    let var_6 = all(vec3<bool>(all(select(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], !var_4.a, global0[_wgslsmith_index_u32(7089u, 14u)])), true, select(var_2.x, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(abs(_wgslsmith_mod_u32(u_input.a.x, 13277u)), ~u_input.a.x));
}

