struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: bool) -> i32 {
    let var_0 = Struct_2(Struct_1(true, all(vec4<bool>(!arg_2, true, arg_2, true))));
    let var_1 = false;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(874f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-487f, -1000f) - -1269f))) * 1f);
    var var_3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, -198f, -138f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1055f, 824f, 970f)))));
    let var_4 = arg_0;
    return var_4.a;
}

fn func_4(arg_0: f32, arg_1: vec3<f32>, arg_2: vec3<i32>, arg_3: i32) -> i32 {
    var var_0 = ~(~vec4<u32>(~max(u_input.c, 0u), ~4294967295u, 4294967295u, ~_wgslsmith_mult_u32(0u, u_input.b.x)));
    var_0 = ~_wgslsmith_div_vec4_u32(~u_input.b << (~u_input.b % vec4<u32>(32u)), vec4<u32>(64412u, _wgslsmith_div_u32(var_0.x, 1u), _wgslsmith_dot_vec3_u32(var_0.zyz, ~vec3<u32>(u_input.c, 1u, u_input.c)), ~max(u_input.c, 1u)));
    var_0 = abs(vec4<u32>(4294967295u, _wgslsmith_clamp_u32(~var_0.x, max(4294967295u, u_input.b.x), _wgslsmith_div_u32(max(var_0.x, u_input.c), 1u)), ~9473u, _wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(22140u, 0u, 23371u), vec3<u32>(1005u, 18259u, 0u)), _wgslsmith_dot_vec2_u32(var_0.zw, vec2<u32>(u_input.c, u_input.b.x)))));
    return u_input.d.x;
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1) -> i32 {
    let var_0 = Struct_1(true, false);
    var var_1 = Struct_4(2147483647i);
    var var_2 = Struct_1(true, var_0.b);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(1664f, -1214f), _wgslsmith_f_op_f32(-751f * 328f), _wgslsmith_div_f32(-487f, 463f), 1000f))));
    var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(109f, var_3.x, -1095f, -892f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, -1591f, 203f, 332f))), vec4<f32>(_wgslsmith_f_op_f32(-var_3.x), 2078f, _wgslsmith_f_op_f32(select(var_3.x, -671f, true)), var_3.x))))));
    return _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(29459i, (2147483647i & u_input.a) << (~u_input.c % 32u), abs(i32(-1i) * -30650i)), reverseBits(vec3<i32>(firstTrailingBit(-6322i), 2147483647i, ~u_input.d.x))), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(u_input.d.xx >> (_wgslsmith_add_vec2_u32(u_input.b.yy, vec2<u32>(35164u, 1u)) % vec2<u32>(32u)), u_input.d.yz & max(vec2<i32>(23395i, 82109i), vec2<i32>(-2147483647i, var_1.a))), vec2<i32>(1i ^ -u_input.a, var_1.a & firstTrailingBit(u_input.a))), func_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.x, _wgslsmith_f_op_f32(1085f + var_3.x))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3.xzw)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, -1413f, -712f)), !(u_input.a <= -15702i))), u_input.d >> (u_input.b.ywz % vec3<u32>(32u)), func_3(Struct_4(3534i), u_input.b.x | 29846u, all(vec4<bool>(false, var_2.b, var_2.a, true))) ^ (i32(-1i) * -u_input.a)));
}

fn func_5(arg_0: f32, arg_1: f32, arg_2: i32, arg_3: i32) -> Struct_4 {
    let var_0 = u_input.d.x;
    let var_1 = firstLeadingBit(firstLeadingBit(~select(vec4<i32>(var_0, 7017i, -21455i, -2147483647i), -vec4<i32>(16943i, 0i, arg_3, var_0), true)));
    let var_2 = Struct_1(any(vec2<bool>(false, true)), true);
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1094f, arg_0, arg_1, arg_0) - _wgslsmith_div_vec4_f32(vec4<f32>(arg_1, arg_0, arg_0, arg_0), vec4<f32>(-502f, arg_0, 1423f, -761f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1249f * arg_1))), arg_1, -1046f, _wgslsmith_f_op_f32(-arg_0)), !var_2.b));
    var var_4 = _wgslsmith_mod_vec4_i32(-var_1, vec4<i32>(~(-2147483647i), arg_2 ^ arg_3, _wgslsmith_add_i32(28428i & var_0, ~_wgslsmith_div_i32(arg_2, arg_3)), arg_3));
    return Struct_4(arg_2);
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: f32, arg_3: i32) -> Struct_1 {
    var var_0 = any(!vec2<bool>(arg_1.a.a, false));
    let var_1 = func_5(_wgslsmith_f_op_f32(f32(-1f) * -287f), arg_2, ~(-arg_3), func_2(~u_input.b, Struct_1(true, arg_1.a.b)));
    let var_2 = Struct_3(arg_1.a.a);
    let var_3 = u_input.d.x;
    var var_4 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-615f + _wgslsmith_f_op_f32(-396f * arg_0.x)) * _wgslsmith_f_op_f32(trunc(arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), arg_0.x))), reverseBits(_wgslsmith_mod_i32(-(~2147483647i), var_1.a)), -_wgslsmith_add_i32(-var_3, -1i));
    return Struct_1(arg_1.a.a, !(_wgslsmith_f_op_f32(floor(1954f)) >= -178f));
}

fn func_6(arg_0: Struct_2, arg_1: bool, arg_2: Struct_3, arg_3: Struct_5) -> vec3<bool> {
    var var_0 = arg_0;
    var var_1 = Struct_1(false, arg_2.a);
    let var_2 = _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(arg_3.b.a & _wgslsmith_clamp_i32(arg_3.b.a, -2147483647i, u_input.a), countOneBits(11917i)), _wgslsmith_div_i32(arg_3.b.a, firstLeadingBit(func_4(-616f, vec3<f32>(-115f, -329f, 593f), vec3<i32>(u_input.d.x, -1i, -19292i), u_input.a)))), -(vec2<i32>(-1i) * -u_input.d.yx));
    var var_3 = vec3<bool>(arg_2.a && ((~u_input.a < _wgslsmith_div_i32(-21509i, u_input.d.x)) | !var_1.b), var_1.a || true, (~1i << (~u_input.b.x % 32u)) > ~(~firstLeadingBit(-1i)));
    var_0 = arg_0;
    return !vec3<bool>(any(!vec2<bool>(arg_0.a.a, false)), arg_2.a, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<bool>(any(vec4<bool>(true, true, true, u_input.d.x <= 1i)), true, any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true))))), vec3<bool>(all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), -12765i <= u_input.a)), true, true), !func_6(Struct_2(func_1(vec2<f32>(-758f, -494f), Struct_2(Struct_1(false, true)), -843f, -2147483647i)), !(u_input.a < 2147483647i), Struct_3(all(vec4<bool>(false, true, false, true))), Struct_5(~u_input.b.zx, Struct_4(1i))));
    var var_1 = Struct_2(Struct_1(any(vec2<bool>(false & var_0.x, !var_0.x)), !var_0.x));
    let var_2 = _wgslsmith_clamp_vec2_i32(-vec2<i32>(u_input.d.x, u_input.a) | _wgslsmith_add_vec2_i32(u_input.d.yz, _wgslsmith_div_vec2_i32(vec2<i32>(u_input.d.x, -10601i), vec2<i32>(-15453i, 0i))), u_input.d.yx, ~vec2<i32>(i32(-1i) * -1i, 0i));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_2.x, 1i, _wgslsmith_add_i32(_wgslsmith_div_i32(func_3(Struct_4(2147483647i), u_input.b.x, var_1.a.b), firstTrailingBit(var_2.x)), abs(_wgslsmith_mod_i32(var_2.x, 77368i)))), 10192u);
}

