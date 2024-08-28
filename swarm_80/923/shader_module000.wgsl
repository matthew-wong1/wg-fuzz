struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_1,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(14049u, 1u, 38713u);

var<private> global1: array<bool, 25> = array<bool, 25>(false, false, true, false, true, false, false, true, false, true, true, true, true, true, true, false, false, true, false, false, true, true, true, true, true);

var<private> global2: array<vec2<f32>, 5>;

var<private> global3: Struct_3;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: u32, arg_3: f32) -> f32 {
    let var_0 = Struct_3(global3.a);
    global3 = arg_1;
    global0 = vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_2, 71174u), vec3<u32>(arg_2, u_input.a, global0.x)), _wgslsmith_add_u32(77638u, 1u), select(31060u, 82599u, arg_1.a.b), min(19773u, 8924u)), ~(vec4<u32>(0u, u_input.a, 1u, 17519u) & vec4<u32>(global0.x, 100587u, global0.x, 20004u))), u_input.a, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(global0.x, 0u, u_input.a) & firstTrailingBit(vec3<u32>(1u, 41642u, u_input.a)), vec3<u32>(firstLeadingBit(u_input.c), ~28435u, ~global0.x)));
    var var_1 = var_0.a;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -537f)));
}

fn func_2(arg_0: vec3<u32>) -> vec2<f32> {
    var var_0 = ~46618u;
    let var_1 = Struct_5(Struct_3(Struct_1(_wgslsmith_mod_i32(global3.a.a, u_input.b), true)), Struct_1(1425i, any(vec2<bool>(true, any(vec3<bool>(false, false, global3.a.b))))), global0.xy);
    var var_2 = vec2<bool>(0u >= ~(~u_input.c), global1[_wgslsmith_index_u32(global0.x, 25u)]);
    global1 = array<bool, 25>();
    let var_3 = Struct_4(1u, ~vec4<u32>(_wgslsmith_dot_vec2_u32(~arg_0.zz, var_1.c), ~1u, arg_0.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, u_input.a, global0.x, u_input.c), vec4<u32>(21386u, 8618u, 4294967295u, 50421u)), ~global0.x)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1000f - 1727f), _wgslsmith_f_op_f32(-1370f + -1797f)) - global2[_wgslsmith_index_u32(countOneBits(var_1.c.x), 5u)]), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0.x, 0u), 5u)])) - vec2<f32>(-231f, _wgslsmith_f_op_f32(floor(-2459f)))), _wgslsmith_f_op_f32(func_3(vec2<i32>(global3.a.a, u_input.b), Struct_3(var_1.a.a), 76181u, _wgslsmith_f_op_f32(-391f + 1000f))) != _wgslsmith_f_op_f32(ceil(-1000f)))));
}

fn func_1(arg_0: vec4<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(vec3<u32>(_wgslsmith_clamp_u32(4294967295u, u_input.c, 4294967295u) << (reverseBits(u_input.c) % 32u), select(firstLeadingBit(25863u), global0.x, any(vec2<bool>(false, false))), 1u))) + _wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(0u, 4294967295u | u_input.c, u_input.c >> (global0.x % 32u)), 0u), 5u)] - global2[_wgslsmith_index_u32(global0.x, 5u)]));
    var var_1 = false;
    global0 = reverseBits(vec3<u32>(1u, ~19144u, _wgslsmith_clamp_u32(countOneBits(1u), ~(~0u), ~(~global0.x))));
    var var_2 = vec2<u32>(u_input.c, _wgslsmith_mod_u32(~global0.x, ~_wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.c, 0u, u_input.c), 11887u)));
    var var_3 = 1372f;
    return _wgslsmith_f_op_f32(abs(var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 25>();
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1134f) * _wgslsmith_f_op_f32(func_1(vec4<bool>(global3.a.b, false, false, false)))), _wgslsmith_div_f32(1563f, -827f), 1f), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -785f) - _wgslsmith_f_op_f32(292f * -1015f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2078f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1910f)) * _wgslsmith_f_op_f32(min(-321f, -2072f))))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -944f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-295f, -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -547f))))));
    global1 = array<bool, 25>();
    let var_1 = _wgslsmith_f_op_f32(-var_0.x);
    global3 = Struct_3(Struct_1(global3.a.a, var_0.x < _wgslsmith_f_op_f32(-835f * -592f)));
    global3 = Struct_3(global3.a);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(297f, _wgslsmith_f_op_f32(func_3(vec2<i32>(u_input.b, u_input.b), Struct_3(Struct_1(global3.a.a, global3.a.b)), abs(43802u), _wgslsmith_f_op_f32(var_1 * var_0.x)))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * var_1)))), 327f, var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -827f), var_2.x, 673f, _wgslsmith_f_op_f32(sign(406f)))), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -387f))), _wgslsmith_f_op_f32(f32(-1f) * -737f), -791f, var_2.x)), global3.a.a, ~(~vec2<u32>(~44808u, 1u)), ~countOneBits(~select(global0.x, 0u, false)), _wgslsmith_mult_vec3_i32(~(vec3<i32>(u_input.b, 0i, u_input.b) | vec3<i32>(global3.a.a, 1i, 1i)) << (_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.c, 0u), vec3<u32>(global0.x, u_input.c, u_input.a)), ~vec3<u32>(global0.x, 102688u, 76367u)) % vec3<u32>(32u)), ~(-_wgslsmith_div_vec3_i32(vec3<i32>(0i, 0i, global3.a.a), vec3<i32>(u_input.b, u_input.b, u_input.b)))));
}

