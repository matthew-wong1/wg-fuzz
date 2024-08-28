struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_5) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-207f - _wgslsmith_f_op_f32(f32(-1f) * -437f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-467f + 1503f))), false)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: f32) -> i32 {
    let var_0 = select(!(!(!vec2<bool>(arg_1.b.b.x, true))), vec2<bool>(arg_1.c.b.x, arg_1.b.b.x), !vec2<bool>(-u_input.a > firstTrailingBit(arg_1.b.c), true));
    var var_1 = Struct_4(vec4<f32>(-927f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(2294f, -331f) * _wgslsmith_f_op_f32(abs(1385f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -394f))), _wgslsmith_f_op_f32(-arg_2)), arg_1.c, arg_1.c);
    let var_2 = u_input.b;
    global0 = -15480i;
    var_1 = Struct_4(var_1.a, arg_1.b, Struct_2(!var_1.c.a, select(select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_1.c.a.x, true, false), vec3<bool>(var_1.b.a.x, var_1.c.a.x, true)), select(vec3<bool>(var_0.x, var_0.x, var_1.c.b.x), select(vec3<bool>(var_0.x, true, false), var_1.b.b, false), all(vec4<bool>(var_1.c.a.x, arg_1.c.a.x, var_0.x, false))), any(select(vec3<bool>(var_1.c.a.x, false, false), vec3<bool>(var_1.c.a.x, var_0.x, false), var_1.c.a.wwy))), -30454i));
    return _wgslsmith_dot_vec2_i32(vec2<i32>(42752i, -(~(-var_1.c.c))), ~(~vec2<i32>(arg_0, 0i) << (vec2<u32>(0u, 1u) % vec2<u32>(32u))) << (vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, var_2), vec2<u32>(4294967295u, u_input.b)), _wgslsmith_mod_u32(~u_input.b, 19257u)) % vec2<u32>(32u)));
}

fn func_1(arg_0: f32, arg_1: vec4<i32>, arg_2: i32) -> vec2<i32> {
    var var_0 = Struct_1(vec4<i32>(~49709i, 0i, arg_1.x, -arg_2), arg_0, all(vec4<bool>(true, any(vec2<bool>(false, false)), true, any(vec4<bool>(true, true, true, true)))), -func_3(arg_2, Struct_4(vec4<f32>(-235f, arg_0, arg_0, arg_0), Struct_2(vec4<bool>(true, false, true, true), vec3<bool>(true, true, true), arg_2), Struct_2(vec4<bool>(false, true, false, false), vec3<bool>(false, true, false), -1i)), _wgslsmith_f_op_f32(func_2(vec3<i32>(-1i, -137i, u_input.a), Struct_5(4294967295u)))) <= _wgslsmith_clamp_i32(~max(7019i, -1i), _wgslsmith_div_i32(~(-16641i), _wgslsmith_clamp_i32(arg_1.x, arg_1.x, 1i)), -arg_1.x & -1i));
    let var_1 = Struct_3(_wgslsmith_clamp_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(27327i, u_input.a, 2147483647i, 12689i), var_0.a) & -(~vec4<i32>(2147483647i, var_0.a.x, arg_1.x, arg_2)), vec4<i32>(u_input.a, abs(u_input.a), i32(-1i) * -2270i, 1i), -vec4<i32>(~2147483647i, 1i, var_0.a.x << (u_input.b % 32u), u_input.a)), ~_wgslsmith_add_vec4_i32(arg_1, arg_1), 30130u << (_wgslsmith_add_u32(reverseBits(max(4294967295u, 33810u)), u_input.b) % 32u));
    let var_2 = ~_wgslsmith_mod_i32(_wgslsmith_mult_i32(var_0.a.x, var_0.a.x), _wgslsmith_dot_vec3_i32(var_1.b.zzz, arg_1.wyy)) | var_0.a.x;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0 - var_0.b), _wgslsmith_f_op_f32(exp2(arg_0)))) * -503f)) - _wgslsmith_f_op_f32(step(-409f, -818f)));
    var var_4 = Struct_1(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_2, var_2, -72249i, -1i), _wgslsmith_clamp_vec4_i32(var_0.a, var_0.a, arg_1)), firstTrailingBit(vec4<i32>(1i, -23323i, -15397i, -2147483647i))) | (vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(var_0.a, vec4<i32>(6774i, arg_2, var_1.b.x, 2147483647i))), _wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0))))), true, _wgslsmith_f_op_f32(f32(-1f) * -1725f) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(var_3))))));
    return vec2<i32>(1i, 1i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.a, _wgslsmith_add_i32(~u_input.a, abs(u_input.a))) << (55417u % 32u), -(~_wgslsmith_dot_vec2_i32(func_1(-911f, vec4<i32>(1i, -3546i, 0i, 2147483647i), -2147483647i), -vec2<i32>(u_input.a, u_input.a))));
    var var_0 = vec2<bool>(true, false);
    global0 = u_input.a;
    var var_1 = Struct_5(u_input.b);
    let var_2 = u_input.b;
    var var_3 = Struct_2(vec4<bool>(var_0.x, var_0.x, !var_0.x, false), select(vec3<bool>(true, true, !var_0.x), !(!vec3<bool>(false, var_0.x, var_0.x)), var_0.x), u_input.a);
    var_3 = Struct_2(var_3.a, vec3<bool>(!all(vec3<bool>(true, var_3.b.x, true)), true, any(var_3.a.zxy)), firstTrailingBit(-10182i));
    let var_4 = Struct_5(1u);
    var var_5 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(792f, -1000f, -487f, 698f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -489f, -422f, 2369f) - vec4<f32>(311f, -599f, 343f, 367f)))) - vec4<f32>(_wgslsmith_f_op_f32(func_2(vec3<i32>(-89943i, -2147483647i, u_input.a), Struct_5(var_1.a))), _wgslsmith_f_op_f32(floor(995f)), _wgslsmith_f_op_f32(sign(-655f)), _wgslsmith_f_op_f32(step(-330f, 165f))))), vec4<f32>(_wgslsmith_f_op_f32(trunc(700f)), -463f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(876f, 1126f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(121f + 774f))))), -1000f), all(select(var_3.a, vec4<bool>(true, all(var_3.a), true, any(var_3.a.zzy)), !select(vec4<bool>(true, var_0.x, var_3.b.x, var_0.x), var_3.a, vec4<bool>(true, var_0.x, true, var_3.a.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_4.a << ((_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 10583u, var_1.a), vec3<u32>(u_input.b, u_input.b, 31581u)) ^ _wgslsmith_mod_u32(1u, 13506u)) % 32u), ~var_2));
}

