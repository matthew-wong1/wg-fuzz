struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: i32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<f32>,
    d: vec2<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 4>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: vec2<i32>, arg_1: u32) -> vec3<f32> {
    global0 = array<vec2<i32>, 4>();
    return vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -380f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1254f * -207f))) - -324f), 471f);
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> Struct_2 {
    return Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -520f) * 255f), arg_0.b.x, _wgslsmith_f_op_f32(arg_0.b.x + _wgslsmith_f_op_f32(-2341f - _wgslsmith_div_f32(1786f, 707f)))), _wgslsmith_f_op_vec3_f32(arg_0.b * _wgslsmith_f_op_vec3_f32(func_2(vec2<i32>(~(-10995i), ~u_input.d.x), ~20191u | (arg_0.a & arg_1)))), ~u_input.d.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-683f, _wgslsmith_f_op_f32(-1000f * 1000f), -1000f))));
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> u32 {
    var var_0 = select(vec2<bool>(any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false))), any(vec4<bool>(true, true, true, true))), select(vec2<bool>(true, true), !(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false))), false), 18145i > u_input.d.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.x)), arg_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1520f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x))))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1206f, 1033f, 1000f, -1165f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.d.x, arg_0.d.x, -309f, arg_0.a.x), vec4<f32>(arg_0.d.x, -1154f, arg_0.d.x, arg_0.d.x))), !select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(var_0.x, true, var_0.x, false), var_0.x))))));
    var_0 = vec2<bool>(true, true);
    var var_2 = arg_0;
    var_0 = !select(vec2<bool>(true, var_0.x), !(!vec2<bool>(true, var_0.x)), false);
    return _wgslsmith_mod_u32(u_input.a, _wgslsmith_clamp_u32(arg_1, u_input.b, (~30474u | ~arg_1) & 0u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_3(func_1(Struct_1(13944u, vec3<f32>(-1040f, 958f, -1152f)), ~4294967295u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.a) & vec2<u32>(4294967295u, u_input.b), ~vec2<u32>(4294967295u, u_input.b))) << (0u % 32u);
    var var_1 = u_input.d.x;
    var var_2 = any(vec3<bool>(all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), all(vec3<bool>(any(vec4<bool>(false, false, true, true)), var_0 >= 16555u, true)), all(select(select(vec2<bool>(false, true), vec2<bool>(false, false), false), select(vec2<bool>(false, true), vec2<bool>(true, false), true), any(vec2<bool>(false, false))))));
    let var_3 = Struct_1(1u, vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -479f), 1f)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-338f)), -715f))), 1f));
    var var_4 = !select(!(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false))), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), ~var_3.a < var_3.a), vec3<bool>(all(vec2<bool>(false, true)), any(vec3<bool>(true, true, true)) == any(vec2<bool>(true, false)), all(vec2<bool>(true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.a, var_3.b.x, _wgslsmith_f_op_vec3_f32(-var_3.b), ~select(vec2<i32>(0i, u_input.d.x) ^ firstLeadingBit(u_input.d), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.d.x, 92893i), global0[_wgslsmith_index_u32(var_3.a, 4u)]) | _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.d.x, u_input.d.x), vec2<i32>(u_input.d.x, u_input.d.x), vec2<i32>(-1i, u_input.d.x)), select(var_3.b.x < 1380f, !var_4.x, true)), _wgslsmith_mult_vec4_i32(-(~(~vec4<i32>(-2147483647i, -1i, -14312i, u_input.d.x))), ~vec4<i32>(_wgslsmith_mod_i32(u_input.d.x, -1i), 0i, u_input.d.x, 1i)));
}

