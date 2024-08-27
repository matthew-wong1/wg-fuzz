struct Struct_1 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 25>;

var<private> global1: vec4<u32> = vec4<u32>(1u, 9298u, 1u, 49223u);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<bool>) -> u32 {
    let var_0 = vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-436f + _wgslsmith_f_op_f32(f32(-1f) * -1282f))) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1924f - -483f), _wgslsmith_f_op_f32(step(-1223f, -657f)))), _wgslsmith_f_op_f32(-1519f + -577f)), all(vec2<bool>(select(any(vec2<bool>(false, false)), true, !arg_0.x), true == !arg_0.x)), false, true);
    var var_1 = arg_0;
    global1 = _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(~u_input.c, ~(~u_input.c)), vec4<u32>(max(global1.x, 35485u), ~0u, 4294967295u, 5958u));
    var_1 = select(vec2<bool>(true, any(var_0)), !vec2<bool>((global1.x & global1.x) < firstLeadingBit(u_input.d), all(var_0.yyw)), any(vec3<bool>(arg_0.x, !any(var_0), true)));
    let var_2 = Struct_1(all(vec2<bool>(true, ~4294967295u >= select(20785u, global1.x, var_0.x))), var_1.x);
    return ~u_input.d;
}

fn func_2() -> f32 {
    global0 = array<vec2<u32>, 25>();
    global1 = vec4<u32>(~96080u, 1u, 1u, 19026u);
    let var_0 = _wgslsmith_sub_u32(abs(1u) | abs(~global1.x), 0u);
    global0 = array<vec2<u32>, 25>();
    global1 = _wgslsmith_mod_vec4_u32(select(~vec4<u32>(~78847u, 1u, global1.x >> (4294967295u % 32u), func_3(vec2<bool>(false, true))), ~u_input.c, !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), ~_wgslsmith_clamp_vec4_u32(u_input.c, vec4<u32>(4294967295u, ~4294967295u, 0u, _wgslsmith_add_u32(0u, u_input.b.x)), abs(u_input.c)));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(-460f, _wgslsmith_f_op_f32(117f + 1000f)) - 1f);
}

fn func_1(arg_0: u32) -> f32 {
    let var_0 = ~abs(_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(arg_0, arg_0), ~vec2<u32>(global1.x, global1.x), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c.x, global1.x), u_input.c.xw)), global1.zy));
    global0 = array<vec2<u32>, 25>();
    return _wgslsmith_f_op_f32(func_2());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-844f - -518f)), -196f), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-484f)) - _wgslsmith_f_op_f32(-207f + -203f)), -950f)) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_mod_u32(global1.x, global1.x))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-163f)), _wgslsmith_div_f32(-3050f, 245f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1022f + 853f))));
    global0 = array<vec2<u32>, 25>();
    global0 = array<vec2<u32>, 25>();
    var var_1 = Struct_1(select(!any(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false)), !(_wgslsmith_f_op_f32(1222f * var_0.x) >= 1229f), false), true);
    let var_2 = !vec4<bool>(true, all(select(!vec3<bool>(true, false, var_1.b), select(vec3<bool>(true, var_1.a, true), vec3<bool>(false, var_1.b, false), vec3<bool>(true, false, false)), false)), !any(vec4<bool>(var_1.b, var_1.b, false, var_1.b)) & any(!vec4<bool>(true, false, var_1.b, true)), any(vec3<bool>(true, false, var_1.b)));
    let var_3 = Struct_1(true, var_2.x);
    var var_4 = !var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(max(global1.xwx, vec3<u32>(global1.x, max(u_input.d, global1.x), 4294967295u))), 1000f, -33988i ^ _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, 26513i) << (vec3<u32>(4294967295u, global1.x, global1.x) % vec3<u32>(32u)), max(vec3<i32>(1i, u_input.a, u_input.a), vec3<i32>(46926i, -8398i, 85466i))), vec3<i32>(u_input.a, 15808i, _wgslsmith_sub_i32(2147483647i, u_input.a))), var_0.x, _wgslsmith_f_op_f32(var_0.x * var_0.x));
}

