struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec3<bool> {
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(35360u, min(~_wgslsmith_dot_vec3_u32(u_input.d.zxz, u_input.d.wxy), reverseBits(_wgslsmith_sub_u32(24319u, u_input.c.x))), ~_wgslsmith_mult_u32(~4294967295u, _wgslsmith_dot_vec2_u32(u_input.d.wz, u_input.d.xy)), abs(min(~4294967295u, firstLeadingBit(39462u)))), ~u_input.d ^ countOneBits(firstTrailingBit(min(vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, u_input.c.x), u_input.d))));
    var_0 = u_input.d.x << (9272u % 32u);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1325f);
    let var_2 = !(!select(true, false, true)) | select(any(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_1, var_1))) < _wgslsmith_f_op_f32(var_1 * -484f));
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1)) + var_1)), 829f));
    return !vec3<bool>(var_2, true, false);
}

fn func_2() -> vec3<bool> {
    let var_0 = Struct_1(func_3(), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-947f, 573f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-457f, 931f))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1214f, -1044f) * vec2<f32>(918f, 462f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1174f, -1280f), vec2<f32>(770f, 379f))), select(vec2<bool>(false, false), vec2<bool>(true, false), false))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1292f, 914f)))))), u_input.d.xxw);
    var var_1 = !func_3().zy;
    var var_2 = Struct_1(var_0.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), var_0.b.x) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, 1399f))))), u_input.d.wyx);
    let var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x)), _wgslsmith_div_f32(var_2.b.x, 179f)), var_2.b);
    var var_4 = _wgslsmith_mod_i32(_wgslsmith_div_i32(_wgslsmith_sub_i32(-u_input.a, 22079i), _wgslsmith_mod_i32(3508i, i32(-1i) * -32840i)), _wgslsmith_mult_i32(_wgslsmith_mult_i32(18098i, _wgslsmith_mod_i32(2147483647i, u_input.a)), _wgslsmith_mult_i32(43876i, max(-1i, -u_input.a))));
    return !vec3<bool>((true & var_0.a.x) && (_wgslsmith_f_op_f32(f32(-1f) * -2295f) >= _wgslsmith_f_op_f32(step(var_0.b.x, -237f))), ~var_0.c.x < _wgslsmith_sub_u32(countOneBits(56408u), var_0.c.x), select(var_0.a.x, true, func_3().x));
}

fn func_1(arg_0: vec2<u32>) -> vec4<u32> {
    var var_0 = Struct_1(select(func_2(), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, u_input.d.x <= 27294u, any(vec3<bool>(false, true, true)))), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), u_input.a == u_input.a)), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(504f, -262f)), -819f))), -107f), u_input.d.xwz);
    var var_1 = Struct_1(vec3<bool>(var_0.a.x, func_3().x, (_wgslsmith_dot_vec4_u32(u_input.d, u_input.d) & _wgslsmith_mult_u32(arg_0.x, 0u)) <= abs(u_input.c.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_0.b.x + var_0.b.x), -201f))), vec3<u32>(~(~_wgslsmith_dot_vec3_u32(var_0.c, vec3<u32>(u_input.d.x, 1u, 4294967295u))), 1u, u_input.b));
    var_1 = Struct_1(select(!(!func_2()), !(!vec3<bool>(false, false, var_0.a.x)), select(!var_0.a, vec3<bool>(true, var_1.a.x, var_0.b.x == var_0.b.x), var_1.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(var_0.b.x, -2044f)))), var_1.b.x)), vec3<u32>(var_0.c.x, var_0.c.x, 88425u));
    let var_2 = Struct_1(!(!vec3<bool>(true, !var_1.a.x, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.b * var_0.b)) + vec2<f32>(_wgslsmith_f_op_f32(max(-1021f, var_1.b.x)), var_1.b.x))), var_1.c);
    var_0 = var_2;
    return vec4<u32>(var_0.c.x, u_input.b, 9801u, _wgslsmith_mod_u32(abs(~countOneBits(0u)), ~18933u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec4_u32(u_input.d, ~_wgslsmith_clamp_vec4_u32(func_1(min(u_input.c, u_input.c)), _wgslsmith_mod_vec4_u32(func_1(u_input.d.yx), vec4<u32>(u_input.c.x, u_input.d.x, u_input.d.x, 1u) << (vec4<u32>(u_input.c.x, 1u, 4294967295u, 1u) % vec4<u32>(32u))), select(vec4<u32>(u_input.c.x, u_input.c.x, 26424u, u_input.b) << (vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u) % vec4<u32>(32u)), reverseBits(u_input.d), any(vec2<bool>(false, false)))), vec4<u32>(u_input.d.x, u_input.b, _wgslsmith_sub_u32(min(u_input.b, ~u_input.d.x), _wgslsmith_clamp_u32(u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 1u, 0u, u_input.d.x), vec4<u32>(u_input.c.x, 23974u, 0u, 87126u)), u_input.c.x)), func_1(abs(u_input.c << (vec2<u32>(30556u, 0u) % vec2<u32>(32u)))).x));
    var var_1 = _wgslsmith_clamp_u32(~(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.d.xz, vec2<u32>(u_input.d.x, u_input.c.x)), vec2<u32>(var_0.x, u_input.d.x)) ^ var_0.x), countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.c.x, func_1(u_input.d.ww).x, _wgslsmith_add_u32(var_0.x, 34470u), ~4294967295u), vec4<u32>(u_input.c.x, _wgslsmith_div_u32(u_input.b, 4294967295u), var_0.x, min(1u, u_input.b)))), select(~_wgslsmith_div_u32(var_0.x, 3913u), func_1(_wgslsmith_sub_vec2_u32(vec2<u32>(15051u, var_0.x), vec2<u32>(u_input.c.x, 1u))).x, false) ^ countOneBits(_wgslsmith_mult_u32(var_0.x, min(var_0.x, 10158u))));
    var_1 = 0u;
    var_1 = _wgslsmith_sub_u32(~0u, func_1(countOneBits(~(~vec2<u32>(u_input.c.x, var_0.x)))).x);
    let var_2 = vec2<i32>(-19925i, 1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1314f, -2420f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-677f, -984f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(294f, -859f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, 1235f), vec2<f32>(-373f, -1442f), vec2<bool>(false, false))))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))), firstLeadingBit(~32337i), vec2<f32>(1f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-660f * -1191f)))));
}

