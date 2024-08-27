struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 6> = array<vec3<bool>, 6>(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false));

var<private> global1: array<vec3<u32>, 1> = array<vec3<u32>, 1>(vec3<u32>(1u, 1u, 90403u));

var<private> global2: f32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> vec3<i32> {
    return firstLeadingBit(max(select(vec3<i32>(1i, 1i, 1i), _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 9860i, -2147483647i), vec3<i32>(-11065i, -2147483647i, -2147483647i), vec3<i32>(-18312i, 1i, -2147483647i)), vec3<bool>(false, true, false)), vec3<i32>(1i, i32(-1i) * -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 82644i, 0i), vec3<i32>(44995i, -1i, -18323i))))) >> (global1[_wgslsmith_index_u32(firstLeadingBit(firstLeadingBit(31528u)), 1u)] % vec3<u32>(32u));
}

fn func_2(arg_0: Struct_1) -> bool {
    global1 = array<vec3<u32>, 1>();
    var var_0 = -abs(abs(-func_3(158f)));
    var var_1 = var_0.x;
    var var_2 = all(!(!select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true))));
    global1 = array<vec3<u32>, 1>();
    return all(!(!(!select(vec2<bool>(false, false), vec2<bool>(true, true), true))));
}

fn func_1(arg_0: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 115f) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1122f, -153f)))))));
    let var_1 = var_0.x;
    let var_2 = firstTrailingBit(_wgslsmith_mod_i32(1i, ~(i32(-1i) * -14743i))) ^ -_wgslsmith_clamp_i32(1i, 1i, 1i);
    var var_3 = vec4<bool>(true, all(vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1856f) == var_0.x, select(true, false, false) & true)), true, !func_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 152f, -131f) + vec3<f32>(var_0.x, var_0.x, -1734f)))));
    var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_0.x))))), vec2<f32>(_wgslsmith_f_op_f32(sign(322f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(856f, var_0.x), vec2<f32>(-1484f, -1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1332f, -103f))), vec2<f32>(1f, _wgslsmith_f_op_f32(step(var_0.x, 539f)))))), !(var_3.x | false)));
    return Struct_2(select(!(!(!vec4<bool>(var_3.x, true, true, false))), vec4<bool>(true, var_3.x, var_3.x && (false | var_3.x), any(vec2<bool>(var_3.x, false))), !(!select(vec4<bool>(false, true, false, var_3.x), vec4<bool>(false, var_3.x, var_3.x, true), vec4<bool>(var_3.x, var_3.x, false, var_3.x)))), ~_wgslsmith_mod_u32(~arg_0, abs(arg_0) ^ 22574u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 6>();
    var var_0 = min(_wgslsmith_add_vec2_u32(u_input.a.yz, ~(~(~vec2<u32>(u_input.a.x, 25226u)))), ~(~vec2<u32>(u_input.a.x, firstTrailingBit(u_input.a.x))));
    global0 = array<vec3<bool>, 6>();
    let var_1 = Struct_2(vec4<bool>(true, true, true && any(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true))), any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)))), _wgslsmith_add_u32(~u_input.a.x, countOneBits(~var_0.x ^ 5972u)));
    var var_2 = func_1(~u_input.a.x);
    let var_3 = countOneBits(~vec3<u32>(countOneBits(4294967295u ^ var_1.b), ~_wgslsmith_mult_u32(62096u, 0u), var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1087f, -721f))), 29464u, vec4<i32>(21312i, (1i << (_wgslsmith_mult_u32(var_0.x, var_3.x) % 32u)) & 1i, _wgslsmith_add_i32(i32(-1i) * -30976i, 0i), ~1i), countOneBits(u_input.a.x), vec3<i32>(1i, 1i, 1i));
}

