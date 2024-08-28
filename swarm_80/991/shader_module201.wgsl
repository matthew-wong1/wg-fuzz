struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec2<f32>, arg_1: i32) -> vec4<i32> {
    var var_0 = -abs(arg_1) != (-27221i ^ _wgslsmith_dot_vec2_i32((vec2<i32>(1i, arg_1) >> (u_input.a.zz % vec2<u32>(32u))) & abs(vec2<i32>(arg_1, 15967i)), _wgslsmith_add_vec2_i32(max(vec2<i32>(arg_1, arg_1), vec2<i32>(52436i, -2147483647i)), vec2<i32>(-32326i, arg_1) ^ vec2<i32>(arg_1, arg_1))));
    var_0 = !((!any(vec2<bool>(true, false)) && true) || true);
    let var_1 = Struct_3(arg_0, true);
    let var_2 = -55444i;
    var_0 = all(vec3<bool>(4294967295u < max(u_input.a.x, _wgslsmith_mult_u32(u_input.b.x, u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-963f - 1463f) + -1241f) <= var_1.a.x, (0i << (_wgslsmith_add_u32(u_input.a.x, u_input.a.x) % 32u)) <= firstLeadingBit(_wgslsmith_sub_i32(arg_1, var_2))));
    return _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(-1i, -arg_1), -select(arg_1, countOneBits(20676i), false), var_2, 1i), max(select(~(vec4<i32>(arg_1, -2147483647i, 1i, -3657i) ^ vec4<i32>(arg_1, arg_1, arg_1, 42494i)), select(-vec4<i32>(19909i, -2147483647i, -16779i, arg_1), vec4<i32>(arg_1, -2147483647i, var_2, arg_1), true), true), -vec4<i32>(-1i, arg_1, 0i, abs(var_2))));
}

fn func_2() -> vec3<f32> {
    var var_0 = Struct_2(Struct_1(vec2<u32>(u_input.a.x, u_input.a.x), 0u, -select(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, -1i), vec2<i32>(480i, 1i)), -vec2<i32>(-2147483647i, -2147483647i), select(vec2<bool>(false, false), vec2<bool>(false, true), false)), u_input.a.x), Struct_1(u_input.b.zz, 20168u ^ u_input.a.x, abs(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, 1i), ~vec2<i32>(24714i, -7075i))), _wgslsmith_add_u32(~u_input.b.x, _wgslsmith_mod_u32(reverseBits(7002u), _wgslsmith_div_u32(u_input.b.x, u_input.a.x)))));
    var var_1 = vec3<bool>(var_0.a.c.x <= 38771i, any(!vec2<bool>(all(vec2<bool>(false, false)), true)), true);
    let var_2 = u_input.b.x;
    var var_3 = func_3(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -809f)) + _wgslsmith_f_op_f32(194f + _wgslsmith_f_op_f32(round(-254f)))), _wgslsmith_f_op_f32(-228f * _wgslsmith_f_op_f32(ceil(2275f)))), var_0.b.c.x);
    let var_4 = 8232i;
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -839f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-920f + 942f)), 1589f)))), 978f);
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<f32>) -> vec2<f32> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_div_vec2_u32(select(vec2<u32>(4594u, 4294967295u) << (u_input.a.xy % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(vec2<u32>(4751u, 1u), u_input.b.xy), false), abs(~u_input.b.yy)), 21221u, vec2<i32>(countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(32908i, 2147483647i, -19649i), vec3<i32>(1i, -1i, 38472i))), _wgslsmith_mod_i32(_wgslsmith_mod_i32(35222i, 2147483647i), abs(1i))), 14078u ^ countOneBits(abs(u_input.b.x))), Struct_1(_wgslsmith_sub_vec2_u32(u_input.b.yy, max(~vec2<u32>(u_input.b.x, u_input.a.x), firstLeadingBit(vec2<u32>(26569u, 0u)))), 0u, vec2<i32>(reverseBits(-1i), i32(-1i) * -2147483647i), _wgslsmith_clamp_u32(firstTrailingBit(u_input.a.x), _wgslsmith_clamp_u32(4294967295u, u_input.a.x, 1u), u_input.a.x) | 1u));
    var_0 = Struct_2(var_0.a, var_0.b);
    var var_1 = _wgslsmith_f_op_vec2_f32(step(arg_0, arg_0));
    var var_2 = vec3<u32>(var_0.a.b, 1u, _wgslsmith_mult_u32(1u, 31829u));
    var_1 = _wgslsmith_f_op_vec2_f32(-arg_1.yx);
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(-345f, _wgslsmith_f_op_f32(-538f - arg_0.x)));
}

fn func_1() -> f32 {
    var var_0 = vec2<bool>(false, false);
    var var_1 = Struct_1(~countOneBits(~vec2<u32>(u_input.a.x, u_input.a.x)), ~select(~u_input.b.x, u_input.b.x, true != var_0.x), vec2<i32>(-abs(0i), firstTrailingBit(_wgslsmith_mod_i32(-21032i, -19340i)) << (_wgslsmith_div_u32(~46838u, 4294967295u | u_input.b.x) % 32u)), _wgslsmith_div_u32(min(u_input.b.x, 0u), ~select(6534u, 4294967295u, true)));
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -286f), _wgslsmith_f_op_f32(select(554f, -658f, false))) * _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(443f, 469f)), _wgslsmith_f_op_vec3_f32(func_2())))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2095f, -194f) * vec2<f32>(-325f, 559f)))))), !(var_0.x & true));
    var var_3 = Struct_2(Struct_1(min(var_1.a, ~vec2<u32>(12603u, var_1.a.x)), ~102464u, vec2<i32>(var_1.c.x, 26590i), abs((u_input.a.x ^ 6360u) ^ 18864u)), Struct_1(var_1.a, u_input.b.x, vec2<i32>(~var_1.c.x, _wgslsmith_add_i32(var_1.c.x, -1i)) ^ vec2<i32>(~var_1.c.x, -8340i), var_1.d));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -284f)), var_2.a.x, false)) - var_2.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 11119i;
    let var_1 = ~vec3<u32>(~(~(~81580u)), 0u, 15763u);
    let var_2 = _wgslsmith_f_op_f32(func_1());
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-476f, -2008f), vec2<f32>(var_2, -512f)))) + vec2<f32>(1725f, _wgslsmith_f_op_f32(var_2 * -156f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(~(vec2<i32>(var_0, var_0) & _wgslsmith_div_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(var_0, var_0))), reverseBits(countOneBits(~vec2<i32>(var_0, var_0)))), _wgslsmith_mod_vec3_i32(-vec3<i32>(abs(6957i), -17695i & var_0, 2147483647i), _wgslsmith_sub_vec3_i32(countOneBits(~vec3<i32>(var_0, -2147483647i, var_0)), vec3<i32>(_wgslsmith_div_i32(-412i, 1i), 0i, 2147483647i))), _wgslsmith_f_op_vec3_f32(func_2()));
}

