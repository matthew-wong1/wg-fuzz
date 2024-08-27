struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11> = array<u32, 11>(4294967295u, 0u, 0u, 0u, 11074u, 82674u, 42830u, 1u, 37572u, 1u, 0u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: Struct_3, arg_3: vec2<bool>) -> f32 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(arg_2.a)))));
    global0 = array<u32, 11>();
    var var_1 = 37747u;
    var_1 = 53720u;
    var var_2 = _wgslsmith_dot_vec2_i32(-u_input.c, -u_input.c);
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(arg_2.a)), 150f));
}

fn func_2() -> vec2<f32> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1125f * -610f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1932f + _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(func_3(3077f, false, Struct_3(-706f), vec2<bool>(true, false)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1864f + _wgslsmith_div_f32(-304f, 457f))))));
    global0 = array<u32, 11>();
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), var_0.x))));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -388f));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-600f, -1000f, 1072f, 312f), vec4<f32>(var_0.x, var_0.x, var_1.a, var_0.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, var_1.a, 117f, var_1.a) * vec4<f32>(var_1.a, 2000f, -754f, var_0.x))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 2090f, var_1.a, var_0.x) * vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1744f, var_1.a, 265f, var_0.x) * vec4<f32>(var_1.a, var_1.a, 703f, var_0.x)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(890f, 1407f, -219f, var_0.x))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(242f, -704f, var_1.a, -2285f))), vec4<bool>(true, true, true, true))))), !(~_wgslsmith_div_i32(u_input.a, -2147483647i) < 19470i));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.a.yx * var_0.yz) * var_0.xz);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<f32>) -> f32 {
    global0 = array<u32, 11>();
    let var_0 = true;
    var var_1 = vec2<i32>(u_input.b, -1i);
    var var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-613f, 784f, arg_1.x, -264f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, -1000f, 704f, arg_1.x)))))));
    let var_3 = !(!select(select(vec4<bool>(true, true, var_0, var_0), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, false, var_0, var_0), select(vec4<bool>(false, var_0, true, true), vec4<bool>(true, var_0, false, var_0), vec4<bool>(true, true, true, false)), true), !var_0));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.x)) - arg_1.x);
}

fn func_1(arg_0: u32, arg_1: vec2<bool>) -> f32 {
    var var_0 = 1350f;
    var var_1 = 48704i;
    var var_2 = _wgslsmith_f_op_f32(func_4(countOneBits(~_wgslsmith_sub_vec3_i32(-vec3<i32>(2147483647i, 21655i, 1i), vec3<i32>(-14093i, u_input.a, u_input.b) & vec3<i32>(u_input.b, -7262i, u_input.c.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(min(-1250f, 791f)), -606f), vec2<f32>(-1903f, 129f), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1568f, 505f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1401f, 918f))) * _wgslsmith_f_op_vec2_f32(func_2())))));
    let var_3 = vec3<bool>((_wgslsmith_f_op_f32(func_3(_wgslsmith_div_f32(1561f, 346f), true, Struct_3(-502f), !vec2<bool>(arg_1.x, arg_1.x))) <= _wgslsmith_f_op_f32(-435f * 1613f)) || !arg_1.x, any(select(!select(vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x), vec4<bool>(false, arg_1.x, false, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false)), select(!vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false), true), !(!vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x)))), false);
    var_0 = 184f;
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-491f, _wgslsmith_f_op_f32(f32(-1f) * -1521f), false)), _wgslsmith_f_op_f32(-846f + _wgslsmith_f_op_f32(1017f * -936f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 11>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6465u, 11u)], 11u)], vec2<bool>(true, false)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -464f), 580f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(29665u, vec2<bool>(true, true))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_4(abs(min(vec3<i32>(u_input.b, u_input.c.x, u_input.a), vec3<i32>(-35682i, 1i, u_input.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1002f, -1000f))))), -1830f)), -448f);
    var var_1 = var_0.x;
    var var_2 = _wgslsmith_mod_i32(~(~_wgslsmith_mult_i32(u_input.b, -432i)), -(i32(-1i) * -29322i));
    var var_3 = vec3<i32>(u_input.a, u_input.c.x, -36368i);
    let var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(233f, 675f, -585f, var_0.x) - vec4<f32>(1000f, var_0.x, 1229f, -219f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -218f, var_0.x)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), false))))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 128f, 274f, 538f))))))), var_0.x < _wgslsmith_f_op_f32(trunc(var_0.x)));
    var var_5 = Struct_3(-1145f);
    let var_6 = select(firstLeadingBit(~max(max(vec3<u32>(27378u, 578u, 4294967295u), vec3<u32>(u_input.d, 8012u, u_input.d)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d, u_input.d, u_input.d), vec3<u32>(global0[_wgslsmith_index_u32(2045u, 11u)], 4294967295u, u_input.d)))), ~vec3<u32>(1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(46317u, 4294967295u), vec2<u32>(21785u, 93191u)), 6754u), vec3<bool>(true, var_4.b, var_4.b));
    let x = u_input.a;
    s_output = StorageBuffer(var_6.x, firstTrailingBit(_wgslsmith_add_vec2_u32(~var_6.zz, var_6.yx)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(113f, -1473f) - var_4.a.xy), _wgslsmith_f_op_vec2_f32(-var_4.a.yx)))), ~(min(vec4<u32>(u_input.d, u_input.d, var_6.x, u_input.d), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 0u, var_6.x, 1u), vec4<u32>(global0[_wgslsmith_index_u32(u_input.d, 11u)], u_input.d, 20412u, 9154u))) & _wgslsmith_mod_vec4_u32(~vec4<u32>(27428u, 33413u, 16120u, 95431u), ~vec4<u32>(u_input.d, var_6.x, 1u, 1u))));
}

