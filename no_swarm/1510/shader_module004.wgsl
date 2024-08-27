struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: f32,
    d: vec2<i32>,
    e: bool,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: bool,
    c: f32,
    d: vec2<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_5, arg_1: vec2<f32>) -> vec3<u32> {
    let var_0 = abs(_wgslsmith_sub_vec4_u32(vec4<u32>(~arg_0.e.b, _wgslsmith_mult_u32(4294967295u, arg_0.e.b), 4294967295u | u_input.c, ~u_input.a.x), vec4<u32>(_wgslsmith_clamp_u32(19695u, 19156u, 32156u), 1u, ~4294967295u, arg_0.e.b))) << (vec4<u32>(4294967295u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(0u, 6369u, 1u, arg_0.a)), ~vec4<u32>(global0.a.x, arg_0.a, u_input.c, arg_0.e.b)) ^ max(_wgslsmith_clamp_u32(102363u, arg_0.a, 4294967295u), ~0u), 82988u, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(global0.a.x & 18775u, reverseBits(u_input.a.x), 4294967295u), arg_0.e.b)) % vec4<u32>(32u));
    global0 = Struct_2(vec3<u32>(28866u, u_input.a.x, reverseBits(arg_0.e.b) ^ 0u), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(global0.b)))), global0.b), _wgslsmith_f_op_f32(f32(-1f) * -2819f), ((vec2<i32>(-2147483647i, -2147483647i) & ~vec2<i32>(global0.d.x, u_input.b)) | select(vec2<i32>(global0.d.x, global0.d.x), vec2<i32>(global0.d.x, global0.d.x) | vec2<i32>(8966i, u_input.b), vec2<bool>(false, global0.e))) & -firstLeadingBit(vec2<i32>(global0.d.x, -17538i)), any(select(select(vec3<bool>(global0.e, arg_0.d.x, false), vec3<bool>(false, global0.e, false), all(arg_0.d)), vec3<bool>(arg_0.d.x, all(arg_0.d), global0.e), !global0.e)));
    global0 = Struct_2(var_0.wzw, vec4<f32>(_wgslsmith_f_op_f32(max(370f, -1794f)), global0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-223f * _wgslsmith_f_op_f32(global0.b.x - arg_0.c))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(arg_0.e.a * arg_0.e.a)))), arg_0.e.a, select(_wgslsmith_div_vec2_i32(global0.d >> (countOneBits(u_input.a) % vec2<u32>(32u)), abs(vec2<i32>(-1i, 53458i) ^ global0.d)), global0.d, true), arg_0.d.x);
    var var_1 = Struct_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-846f, arg_1.x, false))))), arg_0.e.b));
    global0 = Struct_2(_wgslsmith_add_vec3_u32(select(vec3<u32>(_wgslsmith_mod_u32(0u, global0.a.x), abs(84182u), ~var_0.x), select(countOneBits(vec3<u32>(12894u, u_input.c, 61329u)), abs(vec3<u32>(var_1.a.b, var_1.a.b, 49294u)), !vec3<bool>(false, global0.e, arg_0.b)), select(true, true, !arg_0.d.x)), ~(~(global0.a & vec3<u32>(var_0.x, 80191u, global0.a.x)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.e.a, -744f, 482f, 490f) - global0.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(702f, arg_1.x, arg_1.x, var_1.a.a)), true))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c, 814f, global0.b.x, arg_1.x)), _wgslsmith_f_op_vec4_f32(-global0.b))), vec4<bool>(true, !any(vec4<bool>(arg_0.b, arg_0.b, false, arg_0.b)), arg_0.d.x, false))), arg_0.e.a, vec2<i32>(i32(-1i) * -2147483647i, u_input.b), any(vec3<bool>(true, true, true)));
    return global0.a;
}

fn func_2(arg_0: bool, arg_1: u32) -> bool {
    let var_0 = Struct_3(min(-208i, 1i));
    var var_1 = ~vec3<u32>(~(~abs(global0.a.x)), u_input.a.x, 0u);
    let var_2 = var_1.x >> (1u % 32u);
    var_1 = ~_wgslsmith_clamp_vec3_u32(max(vec3<u32>(global0.a.x, var_2, var_2), _wgslsmith_mult_vec3_u32(func_3(Struct_5(9153u, global0.e, global0.b.x, vec2<bool>(arg_0, true), Struct_1(global0.c, u_input.a.x)), global0.b.xw), _wgslsmith_mod_vec3_u32(global0.a, vec3<u32>(var_1.x, var_2, var_1.x)))), vec3<u32>(u_input.a.x, func_3(Struct_5(u_input.c, arg_0, -104f, vec2<bool>(arg_0, global0.e), Struct_1(1230f, var_2)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b.x, global0.b.x) + vec2<f32>(global0.c, global0.b.x))).x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(global0.a.x, var_1.x, global0.a.x), vec3<u32>(var_2, global0.a.x, u_input.c))), ~(_wgslsmith_mult_vec3_u32(global0.a, global0.a) ^ ~vec3<u32>(0u, var_2, 55941u)));
    let var_3 = var_0.a;
    return arg_1 != _wgslsmith_dot_vec4_u32(min(firstTrailingBit(~vec4<u32>(6275u, 54126u, 6194u, 15719u)), vec4<u32>(~var_2, u_input.c, 4294967295u, firstTrailingBit(var_1.x))), firstTrailingBit(~(~vec4<u32>(u_input.a.x, 104861u, 1u, 4294967295u))));
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: Struct_3, arg_3: u32) -> f32 {
    global0 = arg_1;
    var var_0 = _wgslsmith_f_op_f32(-112f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)));
    global0 = Struct_2(arg_1.a ^ global0.a, _wgslsmith_f_op_vec4_f32(arg_1.b - global0.b), global0.b.x, global0.d, func_2(!arg_1.e, global0.a.x));
    var var_1 = ~(~_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(8042u, 84979u, 4294967295u, 96816u), vec4<u32>(u_input.a.x, arg_3, 5144u, 5551u)), ~vec4<u32>(u_input.a.x, arg_1.a.x, arg_3, 0u), vec4<u32>(arg_3, arg_3, global0.a.x, 2547u)) ^ (max(vec4<u32>(0u, global0.a.x, 9501u, 27512u), firstLeadingBit(vec4<u32>(0u, arg_1.a.x, global0.a.x, 23116u))) ^ ~(vec4<u32>(4294967295u, u_input.c, global0.a.x, u_input.a.x) ^ vec4<u32>(global0.a.x, 1u, arg_3, 0u))));
    let var_2 = !vec3<bool>(true, any(!vec3<bool>(global0.e, false, arg_1.e)), !global0.e);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.b.x)) * arg_1.c) - -1004f)));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<f32>) -> Struct_5 {
    var var_0 = true;
    var_0 = !(!(!(!any(vec2<bool>(global0.e, true)))));
    var_0 = global0.e;
    let var_1 = firstLeadingBit(u_input.a) ^ vec2<u32>(_wgslsmith_add_u32(1u, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, global0.a.x, 0u, 0u), vec4<u32>(global0.a.x, arg_0.a.b, global0.a.x, arg_0.a.b)), ~vec4<u32>(u_input.c, global0.a.x, global0.a.x, u_input.c))), reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_0.a.b, 9755u, global0.a.x), vec4<u32>(74743u, arg_0.a.b, 80858u, u_input.c))));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(min(937f, global0.b.x)))) - _wgslsmith_f_op_f32(min(-769f, _wgslsmith_f_op_f32(round(global0.b.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(537f, Struct_2(vec3<u32>(103866u, arg_0.a.b, 0u), vec4<f32>(arg_1.x, arg_0.a.a, -122f, -1990f), -203f, global0.d, global0.e), Struct_3(global0.d.x), 12844u))) + arg_1.x), _wgslsmith_f_op_f32(round(arg_0.a.a))), global0.b, vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.x))) < 165f, _wgslsmith_add_u32(global0.a.x << (18136u % 32u), u_input.c) != 49738u, false, arg_0.a.b < 47573u)));
    return Struct_5(13487u, false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(624f, -162f)))), vec2<bool>(false, global0.e), arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(global0.b, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.b.x, _wgslsmith_div_f32(global0.b.x, global0.c), 1f, global0.c), global0.b)))));
    var var_1 = func_4(Struct_4(Struct_1(global0.b.x, max(1u, u_input.c))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(global0.b.x, 712f), var_0.x, _wgslsmith_f_op_f32(func_1(var_0.x, Struct_2(vec3<u32>(52634u, global0.a.x, 0u), vec4<f32>(global0.b.x, 719f, var_0.x, 331f), var_0.x, vec2<i32>(global0.d.x, 0i), true), Struct_3(0i), _wgslsmith_div_u32(1u, 1u)))))));
    global0 = Struct_2(vec3<u32>(~global0.a.x, u_input.c, ~global0.a.x), _wgslsmith_f_op_vec4_f32(sign(var_0)), _wgslsmith_f_op_f32(813f * func_4(Struct_4(func_4(Struct_4(Struct_1(1183f, var_1.a)), var_0).e), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, 287f, 1000f, -640f))).c), global0.d, !(!all(select(vec3<bool>(var_1.b, false, false), vec3<bool>(false, var_1.b, false), vec3<bool>(false, true, true)))));
    var var_2 = select(vec4<bool>(true, !func_4(Struct_4(var_1.e), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-275f, var_1.c, var_1.e.a, var_1.c))).b, var_1.d.x, false), !(!(!(!vec4<bool>(true, var_1.b, var_1.d.x, var_1.d.x)))), select(!select(vec4<bool>(global0.e, global0.e, var_1.b, global0.e), !vec4<bool>(var_1.b, true, true, var_1.b), var_1.d.x | false), select(select(!vec4<bool>(var_1.d.x, false, false, global0.e), !vec4<bool>(false, var_1.b, true, global0.e), vec4<bool>(var_1.d.x, global0.e, true, true)), select(select(vec4<bool>(var_1.d.x, true, var_1.d.x, false), vec4<bool>(global0.e, global0.e, global0.e, true), var_1.b), vec4<bool>(false, true, global0.e, var_1.b), vec4<bool>(var_1.b, false, global0.e, global0.e)), global0.e), vec4<bool>(false, var_1.b, true, _wgslsmith_f_op_f32(sign(-225f)) == _wgslsmith_f_op_f32(global0.c + var_1.e.a))));
    global0 = Struct_2(_wgslsmith_sub_vec3_u32(func_3(func_4(Struct_4(Struct_1(-842f, 33797u)), var_0), global0.b.wy), global0.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.b + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.c, 1000f, global0.b.x, global0.b.x)))))), -1755f, countOneBits(vec2<i32>(-44173i, 36945i)), false);
    let var_3 = func_4(Struct_4(func_4(Struct_4(func_4(Struct_4(Struct_1(var_1.c, u_input.c)), var_0).e), var_0).e), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-413f, global0.c, var_0.x, -1479f), vec4<f32>(1150f, var_0.x, 484f, var_0.x)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-170f, -699f, -601f, global0.c)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1158f), _wgslsmith_f_op_f32(f32(-1f) * -1737f), _wgslsmith_div_f32(global0.b.x, -698f), _wgslsmith_f_op_f32(1143f - -174f))))))).e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.zx * global0.b.xw)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-944f, var_1.e.a), var_0.yy, any(vec3<bool>(false, false, false))))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(404f, var_1.c)))))), abs(min(36719u, _wgslsmith_mod_u32(var_1.a, u_input.a.x)) & ~1u));
}

