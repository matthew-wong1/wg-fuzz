struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: i32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: u32,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> bool {
    let var_0 = Struct_3(_wgslsmith_dot_vec3_u32(abs(u_input.a.yyz) >> (firstTrailingBit(_wgslsmith_clamp_vec3_u32(u_input.a.xzy, vec3<u32>(80056u, arg_1.b.b.x, arg_1.b.b.x), vec3<u32>(u_input.a.x, 62510u, arg_1.c.b.x))) % vec3<u32>(32u)), u_input.a.www), arg_1.d.x & arg_0, _wgslsmith_dot_vec2_u32(~(~arg_1.b.b), select(vec2<u32>(~4294967295u, ~4294967295u), vec2<u32>(~0u, 0u), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, arg_1.b.e)), vec2<bool>(true, arg_1.c.e), !vec2<bool>(true, arg_1.c.e)))), Struct_2(-2147483647i, Struct_1(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1220f, -225f))), reverseBits(vec2<u32>(1u, u_input.a.x)) >> (abs(vec2<u32>(0u, 1u)) % vec2<u32>(32u)), i32(-1i) * -arg_1.d.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(arg_1.b.a.x)))), false), Struct_1(arg_1.b.a, ~(vec2<u32>(arg_1.b.b.x, arg_1.c.b.x) >> (vec2<u32>(0u, 1u) % vec2<u32>(32u))), -(arg_1.c.c >> (4294967295u % 32u)), -1494f, _wgslsmith_mult_i32(0i, arg_1.c.c) != -1i), arg_1.d), !(~abs(1i) >= arg_0));
    var var_1 = !(!vec3<bool>(true, false, any(vec4<bool>(false, arg_1.b.e, false, false))));
    let var_2 = -420f;
    var var_3 = any(!(!select(vec3<bool>(true, true, true), select(vec3<bool>(var_1.x, true, false), vec3<bool>(var_1.x, true, true), vec3<bool>(arg_1.b.e, var_1.x, var_0.e)), vec3<bool>(false, true, var_1.x))));
    let var_4 = var_0.e;
    return arg_1.c.a.x >= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1f)));
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: vec3<f32>) -> bool {
    let var_0 = 22135i;
    var var_1 = select(_wgslsmith_dot_vec4_i32(~(-_wgslsmith_mult_vec4_i32(arg_1.d, vec4<i32>(arg_1.c.c, arg_1.c.c, 3649i, var_0))), vec4<i32>(min(-var_0, _wgslsmith_add_i32(var_0, 29339i)), _wgslsmith_add_i32(arg_1.a, ~2147483647i), -24995i, -32724i)), arg_1.b.c, !arg_1.b.e);
    var var_2 = select(vec3<bool>(true, arg_1.c.e, arg_1.b.e), !(!vec3<bool>(false, any(vec4<bool>(arg_1.b.e, arg_1.c.e, arg_1.b.e, arg_1.c.e)), func_3(var_0, Struct_2(-1i, arg_1.b, Struct_1(vec2<f32>(991f, -819f), u_input.a.zy, arg_1.d.x, 169f, true), arg_1.d)))), true);
    let var_3 = arg_1.b;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * -343f) * _wgslsmith_f_op_f32(abs(-1386f)));
    return true;
}

fn func_1(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: u32) -> f32 {
    var var_0 = !vec2<bool>(u_input.a.x < _wgslsmith_mult_u32(1u, _wgslsmith_mod_u32(1u, arg_1.x)), any(vec2<bool>(all(vec4<bool>(arg_2.b.e, false, arg_2.b.e, arg_2.b.e)), select(arg_2.c.e, arg_2.c.e, arg_2.b.e))));
    var var_1 = vec4<bool>(any(vec4<bool>(var_0.x, arg_2.b.e, !func_2(arg_2.c.b.x, arg_2, vec2<f32>(-966f, arg_0), vec3<f32>(-1217f, arg_0, -233f)), false)), false & (-7674i >= arg_2.d.x), false, arg_2.c.e);
    var var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-arg_2.c.a.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0)) * _wgslsmith_f_op_f32(round(arg_2.c.d)))))), vec2<u32>(4294967295u, _wgslsmith_mult_u32(arg_3, 72937u | u_input.a.x)), ~firstLeadingBit(4588i), arg_2.b.a.x, true);
    var var_3 = arg_2;
    global0 = 117167u;
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1038f)), var_2.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(176f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f - -2235f))))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-728f, _wgslsmith_f_op_f32(trunc(135f))))), _wgslsmith_f_op_f32(-221f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(404f, -1000f)) - _wgslsmith_f_op_f32(-372f + 175f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(-1922f, u_input.a.wwx, Struct_2(-39663i, Struct_1(vec2<f32>(-1020f, 921f), u_input.a.zy, -2147483647i, -760f, false), Struct_1(vec2<f32>(2242f, 463f), u_input.a.wy, 39470i, 744f, false), vec4<i32>(-25939i, -2147483647i, -2147483647i, 42042i)), 1u))))))));
    global0 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, 111f, _wgslsmith_f_op_f32(round(-2170f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, 1738f, var_0.x))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1276f, var_0.x, var_0.x) - vec3<f32>(732f, 690f, var_0.x)))), vec3<bool>(any(vec4<bool>(true, false, false, false)), true, false)))));
}

