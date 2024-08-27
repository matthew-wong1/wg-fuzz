struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec3<bool>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: u32) -> vec2<f32> {
    let var_0 = Struct_3(Struct_2(firstLeadingBit(_wgslsmith_sub_i32(arg_0, -14714i)), Struct_1(u_input.b.yz), Struct_1(vec2<i32>(u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.d, arg_0, 2147483647i), u_input.b))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1115f, -755f, true)) * 1615f))), false), vec3<f32>(1861f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(122f, 333f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))), reverseBits(vec3<u32>(u_input.e, u_input.e, ~select(arg_2, 4294967295u, false))), select(vec3<bool>(!all(vec4<bool>(false, true, true, false)), true, all(vec3<bool>(false, false, true))), select(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), ~arg_2 > 40547u), all(vec3<bool>(true, select(true, false, true), true))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(f32(-1f) * -764f))));
    let var_1 = vec3<bool>(!any(!(!vec3<bool>(var_0.a.e, false, true))), any(!select(select(vec4<bool>(true, var_0.a.e, true, false), vec4<bool>(false, false, var_0.a.e, var_0.d.x), false), vec4<bool>(true, true, false, var_0.d.x), false)), all(vec4<bool>(any(!var_0.d.zy), any(select(vec4<bool>(var_0.a.e, var_0.a.e, false, var_0.a.e), vec4<bool>(var_0.d.x, var_0.a.e, var_0.d.x, var_0.a.e), true)), false, true | (var_0.a.e & var_0.a.e))));
    var var_2 = abs(arg_0);
    var_2 = abs(max(~(1i << (_wgslsmith_div_u32(6454u, var_0.c.x) % 32u)), _wgslsmith_div_i32(23779i, -27040i)));
    var_2 = var_0.a.c.a.x;
    return vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - arg_1)), _wgslsmith_div_f32(-2706f, _wgslsmith_f_op_f32(f32(-1f) * -687f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(-var_0.a.d)))));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: i32) -> vec2<f32> {
    var var_0 = arg_0;
    var var_1 = 615f;
    var var_2 = vec3<u32>(~(u_input.a | ~u_input.e), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a), ~vec2<u32>(u_input.e, u_input.e)) | 0u, u_input.a), abs((0u & abs(u_input.a)) >> (~4294967295u % 32u)));
    let var_3 = _wgslsmith_div_vec2_f32(arg_1.xw, _wgslsmith_f_op_vec2_f32(arg_1.yx + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(14215i, var_0.d, 9140u)))))));
    let var_4 = arg_0.e;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(arg_1.zw + var_3), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-413f, arg_0.d), var_3, var_4))))))));
}

fn func_1(arg_0: u32, arg_1: Struct_2) -> Struct_1 {
    let var_0 = u_input.b.zwz;
    let var_1 = vec3<bool>(any(select(vec4<bool>(arg_1.e && arg_1.e, arg_1.e, !arg_1.e, arg_1.e & arg_1.e), select(vec4<bool>(arg_1.e, arg_1.e, false, arg_1.e), vec4<bool>(true, arg_1.e, arg_1.e, false), select(vec4<bool>(arg_1.e, arg_1.e, arg_1.e, true), vec4<bool>(arg_1.e, false, false, arg_1.e), true)), any(!vec3<bool>(arg_1.e, true, false)))), !(false & (_wgslsmith_f_op_f32(abs(arg_1.d)) >= _wgslsmith_f_op_f32(arg_1.d * -439f))), !(u_input.a <= ~(~arg_0)));
    let var_2 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-527f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1f), 156f, arg_1.e))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-440f, arg_1.d), vec2<f32>(145f, 112f))) - vec2<f32>(arg_1.d, 1284f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(arg_1, vec4<f32>(668f, 1000f, 1000f, arg_1.d), -1i))))), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_1.d, arg_1.d), _wgslsmith_f_op_f32(arg_1.d + arg_1.d), arg_1.e)), arg_1.d)))));
    var var_3 = abs(34382i);
    var var_4 = arg_1;
    return arg_1.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: bool) -> u32 {
    var var_0 = -u_input.c.zyz;
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec2_f32(func_2(arg_1.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1886f, arg_1.b.x, arg_1.b.x, arg_1.e) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1333f, arg_1.b.x, 589f, arg_1.a.d), vec4<f32>(2170f, arg_1.e, arg_1.e, arg_1.e), vec4<bool>(true, true, true, false)))) - vec4<f32>(_wgslsmith_f_op_f32(step(-140f, arg_1.b.x)), _wgslsmith_f_op_f32(sign(1715f)), _wgslsmith_f_op_f32(select(arg_1.b.x, arg_1.a.d, false)), _wgslsmith_f_op_f32(-arg_1.a.d))), var_0.x)).x, 1264f));
    let var_2 = Struct_3(arg_1.a, _wgslsmith_f_op_vec3_f32(-arg_1.b), _wgslsmith_clamp_vec3_u32(arg_1.c, vec3<u32>(~1u, u_input.a, u_input.e), vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(16165u, arg_1.c.x, arg_1.c.x, arg_1.c.x), ~vec4<u32>(12290u, 16344u, u_input.a, 0u)), firstTrailingBit(max(u_input.a, 19587u)), ~_wgslsmith_mod_u32(u_input.a, arg_1.c.x))), arg_1.d, _wgslsmith_f_op_f32(-arg_1.b.x));
    let var_3 = select(~arg_1.c, min(~vec3<u32>(firstTrailingBit(arg_1.c.x), ~0u, _wgslsmith_sub_u32(72194u, var_2.c.x)), vec3<u32>(_wgslsmith_sub_u32(0u, var_2.c.x), countOneBits(1u), 11505u) ^ (~vec3<u32>(u_input.a, var_2.c.x, var_2.c.x) >> (arg_1.c % vec3<u32>(32u)))), select(select(arg_1.d, arg_1.d, arg_1.d), select(select(!vec3<bool>(arg_1.a.e, arg_2, arg_1.a.e), var_2.d, arg_1.d.x), arg_1.d, var_2.d), (~0u >> (0u % 32u)) >= _wgslsmith_dot_vec2_u32(var_2.c.yx, min(vec2<u32>(22321u, u_input.a), var_2.c.xz))));
    var var_4 = 2147483647i;
    return arg_1.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.x;
    let var_1 = u_input.b << (vec4<u32>(4294967295u, ~(~73414u), u_input.e, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(54454u, u_input.e), u_input.e), vec2<u32>(~u_input.a, ~u_input.a))) % vec4<u32>(32u));
    var_0 = var_1.x;
    var var_2 = ~_wgslsmith_mult_vec4_u32(~abs(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e, u_input.a, 4294967295u, 59189u), vec4<u32>(u_input.e, u_input.a, u_input.e, 4294967295u))), vec4<u32>(~22646u | u_input.a, 4294967295u ^ firstLeadingBit(u_input.e), 1540u, (u_input.a ^ 138091u) ^ (u_input.a << (4294967295u % 32u))));
    var_2 = _wgslsmith_div_vec4_u32(vec4<u32>(func_4(func_1(firstLeadingBit(8825u), Struct_2(-2147483647i, Struct_1(u_input.b.xy), Struct_1(vec2<i32>(4790i, var_1.x)), -309f, false)), Struct_3(Struct_2(20357i, Struct_1(var_1.xy), Struct_1(vec2<i32>(-13244i, u_input.b.x)), -1299f, false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-281f, 823f, 1194f)), var_2.yxw >> (vec3<u32>(61339u, var_2.x, 0u) % vec3<u32>(32u)), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true), _wgslsmith_div_f32(-1153f, 897f)), all(vec2<bool>(false, false))), _wgslsmith_clamp_u32(u_input.a, ~(~u_input.e), _wgslsmith_dot_vec3_u32(~var_2.yxz, vec3<u32>(u_input.e, 1u, u_input.a))), ~_wgslsmith_clamp_u32(4294967295u | u_input.e, u_input.e, 2002u), var_2.x), vec4<u32>(select(_wgslsmith_div_u32(var_2.x, var_2.x) >> (~u_input.a % 32u), u_input.e, var_1.x == ~u_input.d), ~24347u, u_input.e, _wgslsmith_mult_u32(abs(u_input.a), ~88999u) ^ ~firstTrailingBit(0u)));
    var_0 = u_input.d;
    let var_3 = abs(vec4<u32>(4294967295u, _wgslsmith_add_u32(~(u_input.a ^ u_input.e), var_2.x), var_2.x, _wgslsmith_dot_vec2_u32(select(~vec2<u32>(2698u, 1u), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, 4294967295u)), true), var_2.yw)));
    let var_4 = !vec3<bool>(!any(vec3<bool>(true, true, true)), true == any(vec2<bool>(true, false)), true);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_1.x, _wgslsmith_mod_i32(-1i, 6311i)), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(select(var_1 << (var_3 % vec4<u32>(32u)), ~var_1, true & var_4.x), select(vec4<i32>(2147483647i, u_input.b.x, -19947i, 3129i), vec4<i32>(u_input.d, -1i, -31747i, -2147483647i) << (vec4<u32>(var_3.x, 0u, u_input.a, var_2.x) % vec4<u32>(32u)), !vec4<bool>(var_4.x, false, var_4.x, true))), var_1));
}

