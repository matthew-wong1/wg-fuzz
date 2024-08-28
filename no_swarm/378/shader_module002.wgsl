struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15>;

var<private> global1: array<vec3<i32>, 3>;

var<private> global2: u32 = 0u;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    return arg_0;
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1794f, -1143f)) - _wgslsmith_f_op_f32(f32(-1f) * -1373f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-500f)) - 1f))) + _wgslsmith_div_f32(-194f, -1136f));
    var var_1 = global0[_wgslsmith_index_u32(102367u, 15u)];
    var var_2 = global0[_wgslsmith_index_u32(max(~abs(u_input.a.x | u_input.a.x) >> (u_input.a.x % 32u), ~u_input.a.x), 15u)];
    let var_3 = select(vec2<bool>(false, any(vec2<bool>(true, true))), !select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), vec2<bool>(true, true), any(vec3<bool>(false, false, true))), !vec2<bool>(true, _wgslsmith_div_f32(-213f, 2081f) == _wgslsmith_f_op_f32(select(-111f, 220f, true))));
    let var_4 = all(select(!select(select(vec4<bool>(var_3.x, false, true, false), vec4<bool>(true, true, false, false), false), vec4<bool>(var_3.x, true, var_3.x, var_3.x), false | var_3.x), !vec4<bool>(!var_3.x, var_3.x, 13212u == u_input.a.x, var_3.x & var_3.x), select(!select(vec4<bool>(var_3.x, false, var_3.x, var_3.x), vec4<bool>(false, false, var_3.x, var_3.x), var_3.x), select(!vec4<bool>(var_3.x, var_3.x, false, var_3.x), vec4<bool>(true, true, true, true), var_3.x), !all(vec4<bool>(var_3.x, true, var_3.x, var_3.x)))));
    return _wgslsmith_div_i32(_wgslsmith_mod_i32(-1i, -1i), firstTrailingBit(2147483647i));
}

fn func_2() -> u32 {
    let var_0 = Struct_1(vec4<i32>(func_3(), 1i, i32(-1i) * -2147483647i, -56455i));
    var var_1 = !select(vec3<bool>(_wgslsmith_f_op_f32(-1000f + -1304f) <= _wgslsmith_f_op_f32(floor(-2702f)), false, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true)), false), false);
    global1 = array<vec3<i32>, 3>();
    global2 = _wgslsmith_dot_vec4_u32(u_input.a, u_input.a);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1395f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2219f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-428f, 1144f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1317f + -1259f)))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(543f * 768f), _wgslsmith_f_op_f32(abs(-1000f)), -594f, _wgslsmith_f_op_f32(round(-447f))), vec4<f32>(_wgslsmith_f_op_f32(-316f * -1019f), _wgslsmith_f_op_f32(ceil(-771f)), _wgslsmith_f_op_f32(f32(-1f) * -677f), -1349f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1392f, -417f, 470f) + vec4<f32>(-1027f, -1035f, 110f, 178f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(904f, -1008f, 493f, -680f)))))));
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(~_wgslsmith_add_i32(~14659i, abs(~(-28924i))), -abs(~41177i));
    let var_1 = func_1(Struct_1(countOneBits(_wgslsmith_mod_vec4_i32(~vec4<i32>(-15722i, -32366i, -30949i, 19480i), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, -72055i, -5745i, 6266i), vec4<i32>(-79112i, 2532i, -2147483647i, 50203i))))), all(vec4<bool>(any(vec4<bool>(true, true, true, false)), false, !all(vec3<bool>(false, true, false)), true & any(vec3<bool>(true, false, true)))));
    let var_2 = vec4<i32>(_wgslsmith_mod_i32(2949i, ~_wgslsmith_mult_i32(1i, -2147483647i) << (~func_2() % 32u)), 2147483647i, var_1.a.x, abs(_wgslsmith_dot_vec2_i32(~select(var_1.a.wx, var_1.a.yz, false), vec2<i32>(select(-9287i, 24858i, true), var_1.a.x))));
    let var_3 = !vec3<bool>(true, false, !all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false))));
    global1 = array<vec3<i32>, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1607f - -649f), -867f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(1225f)))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1740f, _wgslsmith_f_op_f32(-1590f + 666f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-267f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(1021f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1467f)), -1198f))) + _wgslsmith_f_op_f32(max(-1000f, 2309f))));
}

