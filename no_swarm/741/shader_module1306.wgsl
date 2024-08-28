struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

var<private> global1: i32 = 1i;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec2<bool>) -> i32 {
    let var_0 = vec2<i32>(select(countOneBits(_wgslsmith_mod_i32(select(31726i, 1i, arg_0.x), -1i)), _wgslsmith_clamp_i32(0i, 38177i, -27280i) & ~(-1i), !arg_0.x), _wgslsmith_div_i32(_wgslsmith_add_i32(firstLeadingBit(_wgslsmith_clamp_i32(2147483647i, 14237i, -2147483647i)), -1i), ~(~_wgslsmith_dot_vec2_i32(vec2<i32>(-37645i, -2147483647i), vec2<i32>(7492i, -1i)))));
    var var_1 = select(vec2<bool>(false, !all(!vec4<bool>(true, false, arg_0.x, true))), arg_0, !(!(!select(vec2<bool>(arg_0.x, false), arg_0, arg_0))));
    var var_2 = select(abs(select(firstLeadingBit(vec4<i32>(-1i, 0i, var_0.x, var_0.x)), abs(vec4<i32>(var_0.x, -1i, var_0.x, 1i)), vec4<bool>(false, arg_0.x, arg_0.x, false)) ^ max(-vec4<i32>(-727i, var_0.x, var_0.x, var_0.x), vec4<i32>(-29678i, var_0.x, var_0.x, var_0.x))), vec4<i32>(var_0.x, ~_wgslsmith_dot_vec3_i32(abs(vec3<i32>(var_0.x, var_0.x, 1i)), vec3<i32>(-1i, 1i, var_0.x)), -(_wgslsmith_mod_i32(1i, var_0.x) ^ var_0.x), _wgslsmith_mult_i32(var_0.x, var_0.x)), select(select(select(!vec4<bool>(arg_0.x, arg_0.x, false, var_1.x), select(vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(arg_0.x, true, false, var_1.x), true), vec4<bool>(var_1.x, true, arg_0.x, var_1.x)), !(!vec4<bool>(true, arg_0.x, false, arg_0.x)), false), vec4<bool>(all(arg_0), any(vec4<bool>(true, true, true, true)), arg_0.x, all(vec4<bool>(var_1.x, arg_0.x, var_1.x, var_1.x))), all(select(!arg_0, select(arg_0, vec2<bool>(arg_0.x, false), vec2<bool>(arg_0.x, true)), vec2<bool>(false, true)))));
    let var_3 = ~vec2<u32>(u_input.a.x, _wgslsmith_mult_u32(35103u, ~u_input.b.x | u_input.a.x));
    return 27042i;
}

fn func_2() -> u32 {
    var var_0 = func_3(vec2<bool>(true, true));
    let var_1 = vec2<bool>(true | (false | (all(vec3<bool>(true, false, true)) && (u_input.a.x != 47113u))), any(select(vec3<bool>(any(vec4<bool>(true, true, false, true)), true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), true), false)));
    var_0 = -6190i;
    var var_2 = global0[_wgslsmith_index_u32(select(~u_input.a.x, ~(~(u_input.b.x << (u_input.c.x % 32u))), abs(_wgslsmith_div_u32(~u_input.c.x, u_input.a.x)) > (29252u << (u_input.b.x % 32u))), 23u)];
    var var_3 = vec2<i32>(18578i, firstTrailingBit(func_3(var_1)));
    return ~u_input.c.x;
}

fn func_1(arg_0: i32) -> bool {
    global1 = abs(~17512i);
    var var_0 = func_2();
    global0 = array<Struct_1, 23>();
    global1 = -(~(_wgslsmith_div_i32(27089i, arg_0) | (abs(arg_0) ^ arg_0)));
    var var_1 = _wgslsmith_sub_vec2_i32(vec2<i32>(-arg_0, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-5612i, 27527i), vec2<i32>(arg_0, arg_0)) & min(arg_0, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, arg_0), vec2<i32>(arg_0, -2147483647i)))), _wgslsmith_add_vec2_i32(~(-(vec2<i32>(0i, arg_0) ^ vec2<i32>(-1i, 1i))), vec2<i32>(firstLeadingBit(-arg_0), -77927i)));
    return 1u <= (1u & (max(0u, min(u_input.a.x, 16767u)) & _wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a.x, 4294967295u, u_input.c.x, 38868u), vec4<u32>(u_input.b.x, 35817u, u_input.c.x, 136541u), vec4<bool>(true, true, false, false)), _wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(u_input.b.x, u_input.c.x, u_input.a.x, u_input.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(49912u, 23u)];
    var var_1 = func_1(1i);
    global1 = ~(-2147483647i) & -_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(23864i, -12692i), firstTrailingBit(-2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(6873i, 9572i, -71610i, -29346i), vec4<i32>(-49918i, 27400i, -1i, -18198i)), 11615i), ~vec4<i32>(2147483647i, 2147483647i, 0i, -1i));
    var var_2 = 1i << (var_0.b.x % 32u);
    var var_3 = u_input.c.x;
    var_2 = 0i;
    global1 = ~(~abs(~abs(29114i)));
    var_3 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-44626i, -(~firstLeadingBit(-2147483647i))), 1i, 34908u | min(50601u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.x, 11102u, var_0.a.x, u_input.a.x), u_input.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 613f, -120f))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1313f, -587f, 267f) - vec3<f32>(432f, 2212f, 611f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2110f, 2144f, -1000f))))));
}

