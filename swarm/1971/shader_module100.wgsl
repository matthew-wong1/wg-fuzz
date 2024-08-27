struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(0i, 12791i), vec4<f32>(-908f, -936f, 1000f, -601f), -29327i);

var<private> global1: bool;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: Struct_1) -> vec4<f32> {
    var var_0 = arg_1.x;
    var_0 = min(u_input.c.x, global0.c);
    global0 = Struct_1(vec2<i32>(_wgslsmith_sub_i32(-u_input.b.x, firstLeadingBit(arg_2.c)) & -(~arg_2.c), _wgslsmith_add_i32(_wgslsmith_mod_i32(arg_2.a.x, _wgslsmith_mult_i32(57099i, u_input.c.x)), -1i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.b - _wgslsmith_f_op_vec4_f32(ceil(global0.b))) - _wgslsmith_f_op_vec4_f32(arg_2.b - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1129f, arg_0.x, 823f, -864f), vec4<f32>(arg_0.x, arg_2.b.x, arg_2.b.x, -1168f)) + vec4<f32>(arg_2.b.x, 1000f, 549f, arg_0.x)))), reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(~2147483647i, ~global0.c, u_input.c.x), (vec3<i32>(arg_2.c, -71761i, -1i) | vec3<i32>(arg_2.a.x, arg_2.c, u_input.c.x)) | (vec3<i32>(-14951i, global0.a.x, global0.a.x) << (vec3<u32>(48671u, 79505u, u_input.d) % vec3<u32>(32u))))));
    var var_1 = Struct_1(vec2<i32>(arg_1.x, arg_2.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -164f, _wgslsmith_f_op_f32(floor(arg_2.b.x)), -104f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(global0.b)) - vec4<f32>(1000f, global0.b.x, -1663f, -349f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(129f, -405f, -1331f, -1341f))))), -global0.c);
    var var_2 = arg_2;
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(-527f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-445f, 1000f)), true)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(916f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -431f)))));
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: u32, arg_3: Struct_1) -> vec3<f32> {
    let var_0 = reverseBits(arg_2);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.b.xz)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.b.zz) * global0.b.yx), vec2<bool>(true, arg_1))));
    let var_2 = vec3<bool>(arg_1, true, all(select(!vec4<bool>(false, false, arg_1, true), !vec4<bool>(arg_1, arg_1, false, true), true)));
    let var_3 = ~u_input.d;
    var var_4 = Struct_1(vec2<i32>(-1i, -(~(~u_input.c.x))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-103f, 216f, var_1.x))) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(2009f, arg_3.b.x, 1045f)))), -vec2<i32>(arg_3.a.x, arg_0), Struct_1(min(global0.a, vec2<i32>(-1i, -3201i)), _wgslsmith_div_vec4_f32(vec4<f32>(1000f, arg_3.b.x, var_1.x, arg_3.b.x), vec4<f32>(var_1.x, 113f, var_1.x, global0.b.x)), -2147483647i))))), -1i);
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1162f, var_4.b.x, 673f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1307f, -549f, 864f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_4.b.yxx) * _wgslsmith_f_op_vec3_f32(vec3<f32>(330f, -343f, arg_3.b.x) - vec3<f32>(var_1.x, global0.b.x, arg_3.b.x))))), _wgslsmith_f_op_vec3_f32(global0.b.zwy * _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec3_f32(exp2(global0.b.wxw)), u_input.c, Struct_1(abs(vec2<i32>(2147483647i, 2147483647i)), var_4.b, arg_0))).xyz), select(select(!var_2, select(var_2, var_2, true), true), select(vec3<bool>(any(var_2), any(var_2), !arg_1), var_2, select(vec3<bool>(true, true, false), !var_2, vec3<bool>(var_2.x, arg_1, arg_1))), vec3<bool>(arg_1, true, all(vec3<bool>(false, arg_1, var_2.x))))));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: vec3<f32>) -> bool {
    global1 = true;
    let var_0 = ~(global0.a.x & u_input.b.x);
    let var_1 = ~firstLeadingBit(u_input.d);
    var var_2 = ~_wgslsmith_add_vec2_u32(~vec2<u32>(~41814u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.d, 0u), vec3<u32>(4294967295u, 0u, u_input.d))), _wgslsmith_mult_vec2_u32(vec2<u32>(min(0u, u_input.a), 3619u), abs(countOneBits(vec2<u32>(u_input.a, 4294967295u)))));
    global0 = Struct_1(vec2<i32>(727i << (u_input.d % 32u), 9936i | ~_wgslsmith_dot_vec2_i32(vec2<i32>(-2733i, var_0), vec2<i32>(u_input.c.x, global0.a.x))), global0.b, reverseBits(abs(50915i)));
    return !(global0.b.x > _wgslsmith_f_op_f32(min(arg_2.x, arg_1)));
}

fn func_1(arg_0: bool, arg_1: vec2<f32>, arg_2: u32, arg_3: bool) -> Struct_1 {
    var var_0 = _wgslsmith_mod_i32(-50292i, (-(~(-2147483647i)) & global0.c) | u_input.c.x);
    let var_1 = vec4<bool>(true, false, arg_0, func_4(_wgslsmith_f_op_f32(round(-1837f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x + global0.b.x)) + global0.b.x), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(func_2(global0.c, arg_3, arg_2, Struct_1(vec2<i32>(u_input.b.x, u_input.c.x), vec4<f32>(arg_1.x, global0.b.x, -323f, -749f), -19190i))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, -961f, global0.b.x))))));
    let var_2 = -863f;
    let var_3 = u_input.b.x;
    let var_4 = min(arg_2, countOneBits(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(arg_2, arg_2, 1u)), _wgslsmith_mult_vec3_u32(min(vec3<u32>(u_input.a, 0u, 10568u), vec3<u32>(u_input.d, 0u, 47849u)), ~vec3<u32>(arg_2, arg_2, arg_2)))));
    return Struct_1(reverseBits(global0.a), _wgslsmith_f_op_vec4_f32(select(global0.b, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, 852f, -490f, global0.b.x)))), global0.b)), !var_1)), -(~17565i));
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    var var_0 = func_1(any(vec3<bool>(any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true))), true, _wgslsmith_f_op_f32(global0.b.x * arg_2.b.x) > _wgslsmith_f_op_f32(arg_2.b.x * -1829f))), arg_1.b.ww, 1u, false);
    global1 = all(vec4<bool>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -9505i, var_0.a.x, 12457i), vec4<i32>(u_input.c.x, arg_1.a.x, -33105i, -1i)), ~u_input.b.x, ~27723i) <= 64810i, all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), -2147483647i < var_0.c)), false, false));
    global1 = true;
    global1 = any(select(select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false)), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true)), vec4<bool>(func_4(arg_1.b.x, -1979f, var_0.b.zyw), true, true, false), vec4<bool>(true, true, true, u_input.a <= arg_0)), vec4<bool>(global0.a.x < max(arg_1.a.x, -2147483647i), any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true))), all(vec4<bool>(true, true, true, true)), func_4(-252f, -448f, var_0.b.wyw)), select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec3<bool>(false, false, true)), true, all(vec2<bool>(true, true)), true), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false)))));
    var var_1 = select(select(!vec4<bool>(arg_2.b.x != global0.b.x, all(vec2<bool>(false, true)), true, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true), vec4<bool>(arg_1.b.x < 366f, true, true, true), vec4<bool>(any(vec2<bool>(false, false)), true, true, true)), any(vec4<bool>(any(vec3<bool>(true, false, false)), true, true, false))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), false), true);
    return func_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec3_f32(func_2(1i << (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.d), vec2<u32>(37768u, u_input.d)) % 32u), func_4(arg_1.b.x, -307f, vec3<f32>(-1572f, global0.b.x, arg_2.b.x)) && any(vec4<bool>(false, var_1.x, true, false)), ~0u, arg_1)).x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-424f, 103f)) * var_0.b.x), 948f), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-762f + _wgslsmith_f_op_f32(round(arg_1.b.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.x) + var_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x * _wgslsmith_f_op_f32(arg_2.b.x * 1251f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.b.x, global0.b.x, global0.b.x, global0.b.x), vec4<f32>(global0.b.x, -1171f, -321f, global0.b.x))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -759f), global0.b.x, _wgslsmith_f_op_f32(-510f * 424f)) * global0.b)), global0.a.x);
    var var_1 = 42646i;
    var var_2 = !(!vec2<bool>(~1u >= _wgslsmith_add_u32(u_input.d, 4294967295u), true));
    global1 = var_2.x && func_5(~29039u, func_1(all(select(vec4<bool>(var_2.x, var_2.x, true, var_2.x), vec4<bool>(var_2.x, var_2.x, true, var_2.x), var_2.x)), vec2<f32>(1078f, _wgslsmith_f_op_f32(f32(-1f) * -165f)), 0u, any(!vec4<bool>(false, var_2.x, var_2.x, var_2.x))), Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, -2147483647i), global0.a), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, global0.b.x, -425f, var_0.b.x)))), 1i));
    var var_3 = global0.a;
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(min(var_3.x, reverseBits(var_3.x)), -1i, abs(countOneBits(-2147483647i)), _wgslsmith_sub_i32(-1i, _wgslsmith_div_i32(var_0.a.x, 1i))), var_0.a, abs(_wgslsmith_mod_vec2_u32(max(vec2<u32>(u_input.d, u_input.d), vec2<u32>(u_input.d, u_input.d)), reverseBits(vec2<u32>(18810u, u_input.d))) & abs(select(vec2<u32>(u_input.d, u_input.a), vec2<u32>(u_input.d, 107743u), true))));
}

