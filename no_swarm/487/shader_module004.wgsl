struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<f32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 17>;

var<private> global1: array<vec4<f32>, 14>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    let var_0 = -6032i;
    global0 = array<f32, 17>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-arg_0.xx))), ~(~(~_wgslsmith_clamp_i32(var_0, 76113i, -50086i))), ~(~min(~1i, u_input.a.x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-291f, arg_0.x, 1371f))))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-arg_0))), !select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true)))));
    global0 = array<f32, 17>();
    let var_2 = vec2<bool>(!any(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false), any(vec4<bool>(false, true, true, false)))), all(select(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, false, true, all(vec2<bool>(true, true))), _wgslsmith_f_op_f32(arg_0.x * 202f) > _wgslsmith_div_f32(arg_0.x, arg_0.x))));
    return 1000f;
}

fn func_2(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: f32) -> f32 {
    var var_0 = _wgslsmith_mod_u32(1u, _wgslsmith_add_u32(abs(u_input.c.x), 30826u));
    let var_1 = arg_2.b;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.ww + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1014f, 1413f) * vec2<f32>(arg_3, arg_1.x)))))));
    var_0 = 83199u;
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-arg_1.yz), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, firstLeadingBit(u_input.a.x | 1i)), _wgslsmith_mod_vec2_i32(u_input.a.xw, u_input.a.yy)), -u_input.a.x, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1531f), _wgslsmith_f_op_f32(max(arg_3, arg_2.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(486f, global0[_wgslsmith_index_u32(u_input.b.x, 17u)], var_1.a))), _wgslsmith_f_op_f32(func_3(arg_1.yyy))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(arg_1.yxx - vec3<f32>(arg_2.c.x, -174f, 1000f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 184f, 1199f)))), select(select(!vec3<bool>(var_1.a, false, var_1.a), !vec3<bool>(arg_2.b.a, arg_2.d.x, var_1.a), true), vec3<bool>(arg_2.d.x, u_input.a.x > u_input.a.x, all(vec2<bool>(false, true))), select(any(arg_2.d), !var_1.a, arg_2.d.x)))));
    return _wgslsmith_f_op_f32(f32(-1f) * -968f);
}

fn func_1(arg_0: vec2<f32>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(arg_0.x)), _wgslsmith_f_op_f32(arg_0.x - global0[_wgslsmith_index_u32(~u_input.c.x, 17u)]))), 0i, -2147483647i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(31466u, 17u)], 1099f, -1284f), vec3<f32>(-533f, 146f, arg_0.x)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 17u)], global0[_wgslsmith_index_u32(38480u, 17u)], global0[_wgslsmith_index_u32(u_input.b.x, 17u)])) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-684f, global0[_wgslsmith_index_u32(1u, 17u)], global0[_wgslsmith_index_u32(u_input.b.x, 17u)])))))));
    let var_1 = u_input.d;
    let var_2 = true;
    global1 = array<vec4<f32>, 14>();
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_0.d.x - -630f), _wgslsmith_f_op_f32(-540f * -896f))))), select(~(~var_0.b), var_0.c, true), 2147483647i, var_0.d);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a.x * global0[_wgslsmith_index_u32(96248u, 17u)])))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(46874i, global1[_wgslsmith_index_u32(1u, 14u)], Struct_3(Struct_2(var_2), Struct_2(false), vec2<f32>(-1166f, global0[_wgslsmith_index_u32(var_1.x, 17u)]), vec2<bool>(var_2, var_2)), var_3.d.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 17>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-650f, global0[_wgslsmith_index_u32(u_input.d.x, 17u)])), vec2<f32>(455f, global0[_wgslsmith_index_u32(0u, 17u)])) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2306f, 515f) * vec2<f32>(-625f, global0[_wgslsmith_index_u32(u_input.b.x, 17u)])))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(~vec2<i32>(-2147483647i, -2147483647i), countOneBits(firstLeadingBit(-vec2<i32>(1i, u_input.a.x)))), _wgslsmith_dot_vec3_u32(vec3<u32>(~_wgslsmith_mult_u32(4294967295u, u_input.d.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, u_input.c.x, 30993u, u_input.b.x), ~vec4<u32>(3946u, 4294967295u, u_input.b.x, 14907u)), ~firstTrailingBit(0u)), u_input.d), 4294967295u);
}

