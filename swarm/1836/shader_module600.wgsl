struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: bool,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 16>;

var<private> global1: bool = false;

var<private> global2: array<i32, 30>;

var<private> global3: array<bool, 2> = array<bool, 2>(false, false);

var<private> global4: array<vec3<bool>, 27> = array<vec3<bool>, 27>(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_1(max(u_input.a, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(min(1u, 36291u), 20941u, _wgslsmith_mult_u32(u_input.a, 4294967295u)), _wgslsmith_dot_vec2_u32(vec2<u32>(21956u, 0u), u_input.b))), ~(~(~u_input.d)), vec2<u32>(0u, _wgslsmith_mult_u32(u_input.b.x, u_input.a)), u_input.c >> (~(~u_input.b.x | 4294967295u) % 32u));
    var var_1 = 1216f;
    var_0 = Struct_1(var_0.c.x, u_input.d, vec2<u32>(var_0.a, reverseBits(abs(_wgslsmith_mod_u32(20609u, u_input.b.x)))), 2147483647i);
    let var_2 = Struct_1(u_input.b.x, 29347i, vec2<u32>(u_input.a, ~(~(var_0.c.x >> (4294967295u % 32u)))), 2147483647i);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(step(-239f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-608f, _wgslsmith_f_op_f32(f32(-1f) * -1168f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(278f, -410f))), _wgslsmith_f_op_f32(-394f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-312f))) + -229f)));
    return vec2<bool>(all(select(!vec3<bool>(false, true, global3[_wgslsmith_index_u32(0u, 2u)]), vec3<bool>(true, true, true), !global4[_wgslsmith_index_u32(~4294967295u, 27u)])), false);
}

fn func_2(arg_0: vec3<f32>) -> i32 {
    let var_0 = Struct_3(Struct_2(func_3(), func_3(), true, _wgslsmith_div_i32(2147483647i, firstLeadingBit(-global2[_wgslsmith_index_u32(1u, 30u)]))));
    var var_1 = Struct_3(Struct_2(vec2<bool>(any(var_0.a.a), !var_0.a.a.x), vec2<bool>(all(vec2<bool>(var_0.a.a.x, var_0.a.b.x)), all(select(vec4<bool>(false, global3[_wgslsmith_index_u32(u_input.b.x, 2u)], var_0.a.a.x, false), vec4<bool>(false, true, true, false), vec4<bool>(false, var_0.a.c, var_0.a.b.x, true)))), any(!select(vec4<bool>(global3[_wgslsmith_index_u32(u_input.a, 2u)], var_0.a.a.x, global3[_wgslsmith_index_u32(0u, 2u)], false), vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.a, 2u)], global3[_wgslsmith_index_u32(0u, 2u)], global3[_wgslsmith_index_u32(34087u, 2u)]), vec4<bool>(global3[_wgslsmith_index_u32(24552u, 2u)], true, var_0.a.a.x, false))), countOneBits(min(u_input.d, 9811i))));
    let var_2 = 1000f;
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-221f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1771f) * _wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(ceil(var_2)));
    let var_4 = firstLeadingBit(~(~vec2<i32>(~var_1.a.d, max(var_1.a.d, var_1.a.d))));
    return ~_wgslsmith_mult_i32(_wgslsmith_div_i32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(13271u, u_input.b.x), u_input.b.x), 30u)], -50273i), -23504i);
}

fn func_1(arg_0: vec4<i32>, arg_1: u32, arg_2: vec4<u32>, arg_3: u32) -> f32 {
    var var_0 = 13596u;
    var_0 = arg_2.x;
    let var_1 = countOneBits(1i);
    let var_2 = vec2<i32>(arg_0.x, min(92408i, func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(904f, -164f, -1054f)))));
    global2 = array<i32, 30>();
    return _wgslsmith_f_op_f32(ceil(1029f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1137f - _wgslsmith_f_op_f32(func_1(-vec4<i32>(-2633i, -41430i, -25067i, u_input.d), reverseBits(0u), ~global0[_wgslsmith_index_u32(u_input.a, 16u)], ~u_input.a))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec4<i32>(u_input.d, 1i, -14907i, u_input.c), 98219u, vec4<u32>(32070u, u_input.a, u_input.b.x, u_input.b.x), 31038u)) * _wgslsmith_f_op_f32(select(991f, _wgslsmith_f_op_f32(abs(-1024f)), global3[_wgslsmith_index_u32(18127u & u_input.b.x, 2u)]))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -304f), _wgslsmith_f_op_f32(min(2430f, 1000f))))));
    global2 = array<i32, 30>();
    global3 = array<bool, 2>();
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1303f, 749f, -968f, var_0)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0, 210f, -514f, 1730f), vec4<f32>(var_0, 1014f, -1177f, var_0), vec4<bool>(false, false, false, false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0, 452f, -146f, 2854f), vec4<f32>(var_0, 1754f, 355f, var_0)))))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(min(var_0, var_0)), _wgslsmith_f_op_f32(f32(-1f) * -1536f), _wgslsmith_f_op_f32(var_0 - var_0)))))));
    let var_2 = vec2<bool>(global3[_wgslsmith_index_u32(reverseBits(u_input.b.x), 2u)], select(true, global3[_wgslsmith_index_u32(21674u, 2u)], true));
    let var_3 = -_wgslsmith_dot_vec4_i32(~(~(~vec4<i32>(global2[_wgslsmith_index_u32(u_input.a, 30u)], u_input.c, global2[_wgslsmith_index_u32(34369u, 30u)], 31425i))), ~(~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d, u_input.d, 11591i, global2[_wgslsmith_index_u32(59238u, 30u)]), vec4<i32>(global2[_wgslsmith_index_u32(u_input.b.x, 30u)], u_input.d, 24544i, global2[_wgslsmith_index_u32(0u, 30u)]), vec4<i32>(-1i, -24996i, global2[_wgslsmith_index_u32(4294967295u, 30u)], global2[_wgslsmith_index_u32(1790u, 30u)]))));
    let var_4 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(-2147483647i)));
}

