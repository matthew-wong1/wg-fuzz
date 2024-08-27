struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: u32,
    d: vec3<bool>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 13>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: vec4<u32>) -> i32 {
    global0 = array<vec3<u32>, 13>();
    var var_0 = arg_0;
    var_0 = arg_2;
    var_0 = arg_0;
    var_0 = Struct_1(-countOneBits(~_wgslsmith_mod_i32(arg_0.a, 28097i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, arg_2.b.x))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1211f, var_0.e.x))))))), 546u >> (_wgslsmith_add_u32(4294967295u, _wgslsmith_div_u32(1u, u_input.b >> (arg_0.c % 32u))) % 32u), vec3<bool>(!any(arg_2.d) && any(select(arg_2.d, vec3<bool>(true, false, arg_2.d.x), var_0.d)), false, !all(!var_0.d.yx)), arg_2.e);
    return -14808i;
}

fn func_3(arg_0: i32) -> Struct_1 {
    var var_0 = Struct_1(min(arg_0, max(arg_0, 1i)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-268f, 601f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-827f, -487f) + vec2<f32>(-264f, -2683f)))))), u_input.a.x, !vec3<bool>(all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false))), false, any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), true))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1062f, -694f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(387f, -1406f)))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), true)))));
    global0 = array<vec3<u32>, 13>();
    let var_1 = _wgslsmith_div_i32(var_0.a, _wgslsmith_mult_i32(41983i, arg_0));
    var_0 = Struct_1(-_wgslsmith_dot_vec4_i32(vec4<i32>(-var_1, ~var_1, var_1, 0i >> (1u % 32u)), ~vec4<i32>(var_1, -53653i, 31282i, -2147483647i)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.e - _wgslsmith_f_op_vec2_f32(var_0.b * vec2<f32>(var_0.e.x, var_0.b.x))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, var_0.b.x) + vec2<f32>(-317f, var_0.b.x)), vec2<f32>(656f, 818f)))))), 53517u, !select(!select(vec3<bool>(var_0.d.x, true, false), vec3<bool>(true, true, true), var_0.d.x), vec3<bool>(37899i < arg_0, 2998f < var_0.b.x, false), _wgslsmith_f_op_f32(-var_0.b.x) != _wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(var_0.e.x)))), -1447f) - _wgslsmith_f_op_vec2_f32(var_0.e - _wgslsmith_f_op_vec2_f32(select(var_0.e, _wgslsmith_f_op_vec2_f32(-var_0.e), !var_0.d.yz)))));
    var_0 = Struct_1(max(1i, -11237i), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_0.e)) - _wgslsmith_f_op_vec2_f32(var_0.e - var_0.e)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(var_0.b, vec2<f32>(var_0.e.x, -420f), var_0.d.zy)), vec2<f32>(var_0.b.x, -1857f), true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.e + vec2<f32>(-176f, var_0.b.x))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, -1169f)) * _wgslsmith_f_op_vec2_f32(var_0.e * vec2<f32>(var_0.b.x, 687f)))), false)), 1u, !vec3<bool>(all(vec2<bool>(false, true)), all(vec2<bool>(false, var_0.d.x)), !all(vec3<bool>(var_0.d.x, true, var_0.d.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(round(var_0.b.x)))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(select(962f, var_0.e.x, var_0.d.x)), 181f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.e.x, var_0.b.x)), _wgslsmith_f_op_vec2_f32(var_0.e - vec2<f32>(var_0.b.x, -115f)), select(vec2<bool>(var_0.d.x, var_0.d.x), vec2<bool>(false, var_0.d.x), var_0.d.xz))), vec2<bool>(var_0.d.x, true)))));
    return Struct_1(~(-var_0.a), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.b.x, -203f), _wgslsmith_f_op_f32(-var_0.b.x)))), -329f), 1u, select(vec3<bool>(any(!vec4<bool>(false, true, var_0.d.x, var_0.d.x)), any(select(vec4<bool>(var_0.d.x, var_0.d.x, var_0.d.x, var_0.d.x), vec4<bool>(false, true, var_0.d.x, true), var_0.d.x)), var_0.d.x), !vec3<bool>(all(var_0.d.zz), false, !var_0.d.x), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(var_0.b, vec2<f32>(1587f, var_0.e.x)), _wgslsmith_f_op_vec2_f32(-var_0.e)))));
}

fn func_1() -> Struct_1 {
    var var_0 = func_3(-max(2147483647i, ~1i) & ~select(-34570i << (u_input.b % 32u), func_2(Struct_1(49139i, vec2<f32>(-1329f, -1524f), 0u, vec3<bool>(true, false, false), vec2<f32>(1210f, 1277f)), -45158i, Struct_1(-6397i, vec2<f32>(-195f, 547f), u_input.d, vec3<bool>(false, true, true), vec2<f32>(-861f, 311f)), vec4<u32>(u_input.a.x, u_input.c.x, u_input.a.x, u_input.c.x)), any(vec2<bool>(true, false))));
    var var_1 = all(!var_0.d) != !select(var_0.d.x, _wgslsmith_f_op_f32(select(var_0.b.x, -1028f, var_0.d.x)) > var_0.b.x, !(var_0.a > -52596i));
    var_1 = any(select(vec2<bool>(true, var_0.b.x <= _wgslsmith_f_op_f32(f32(-1f) * -640f)), var_0.d.zy, any(!select(vec4<bool>(var_0.d.x, false, true, true), vec4<bool>(true, var_0.d.x, var_0.d.x, var_0.d.x), var_0.d.x))));
    var_0 = Struct_1(5670i, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1070f)))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(var_0.e, var_0.e))))))), ~var_0.c, select(vec3<bool>(true, !var_0.d.x, func_3(~(-65i)).d.x), var_0.d, true), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-165f, var_0.b.x))) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-452f, 485f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.e, var_0.e))))));
    var var_2 = _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, ~u_input.b), vec2<u32>(~var_0.c | u_input.d, ~1u));
    return Struct_1(1i, var_0.e, 1u, var_0.d, var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 13>();
    let var_0 = func_1();
    let var_1 = true & !(!all(func_1().d));
    global0 = array<vec3<u32>, 13>();
    global0 = array<vec3<u32>, 13>();
    var var_2 = _wgslsmith_mod_vec2_i32(countOneBits(~vec2<i32>(-2147483647i, 0i)) << (abs(vec2<u32>(u_input.b, u_input.b)) % vec2<u32>(32u)), vec2<i32>(-2147483647i, _wgslsmith_div_i32(-2147483647i, var_0.a))) & firstTrailingBit(vec2<i32>(0i, var_0.a));
    let x = u_input.a;
    s_output = StorageBuffer(func_1().a, 4294967295u, _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(~max(vec4<i32>(-1i, -2147483647i, var_2.x, 1i), vec4<i32>(var_0.a, 0i, 0i, var_2.x)), -vec4<i32>(-60552i, var_0.a, -2147483647i, var_0.a) & ~vec4<i32>(-8515i, -21778i, -6663i, 38304i)), abs(firstTrailingBit(vec4<i32>(var_2.x, -13364i, 13541i, 8096i) ^ vec4<i32>(var_2.x, 44510i, var_2.x, 0i)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, 956f, var_0.e.x, var_0.b.x) - vec4<f32>(-394f, var_0.e.x, -213f, var_0.e.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(880f, -189f, var_0.b.x, -1185f), vec4<f32>(-1165f, 1217f, var_0.b.x, var_0.e.x)) * _wgslsmith_div_vec4_f32(vec4<f32>(-641f, var_0.b.x, var_0.b.x, var_0.e.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e.x, 1007f, -1000f, var_0.e.x))))));
}

