struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: vec4<i32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: u32) -> vec3<bool> {
    let var_0 = vec4<i32>(-1i) * -abs(reverseBits(~arg_0.d));
    let var_1 = arg_0;
    var var_2 = select(true, true, !(!(!var_1.e.x)));
    let var_3 = Struct_1(vec4<u32>(u_input.a, arg_0.a.x ^ reverseBits(30260u), firstLeadingBit(firstLeadingBit(~var_1.a.x)), var_1.a.x), reverseBits(max(~firstTrailingBit(u_input.a), 20019u)), _wgslsmith_f_op_f32(sign(arg_0.c)), _wgslsmith_mult_vec4_i32(vec4<i32>(select(_wgslsmith_add_i32(1i, 0i), 1i, arg_0.e.x & false), _wgslsmith_mod_i32(-arg_0.d.x, var_0.x), var_1.d.x, -arg_0.d.x), vec4<i32>(-1i) * -(vec4<i32>(0i, 9395i, -754i, var_0.x) >> (var_1.a % vec4<u32>(32u)))), select(select(select(!vec3<bool>(false, arg_0.e.x, false), !var_1.e, true), vec3<bool>(false, var_1.e.x, false), any(vec3<bool>(arg_0.e.x, var_1.e.x, var_1.e.x))), var_1.e, arg_0.e.x));
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(var_1.c, 1166f)), _wgslsmith_f_op_f32(sign(1435f)), _wgslsmith_f_op_f32(max(var_1.c, arg_0.c))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1282f, var_1.c, var_1.c)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-379f, var_1.c, var_1.c))), !var_3.e)))));
    return !select(!select(!vec3<bool>(var_1.e.x, var_3.e.x, var_1.e.x), !arg_0.e, !arg_0.e), select(var_3.e, vec3<bool>(all(vec4<bool>(arg_0.e.x, false, var_1.e.x, arg_0.e.x)), !arg_0.e.x, true), arg_0.e.x), _wgslsmith_sub_i32(~u_input.c.x, 1i) > (var_3.d.x | 2147483647i));
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = Struct_1(max(abs(~vec4<u32>(1u, 44511u, 4294967295u, u_input.a)) ^ reverseBits(~vec4<u32>(u_input.a, u_input.a, 43269u, u_input.a)), vec4<u32>(_wgslsmith_sub_u32(114057u, u_input.a), ~(~u_input.a), u_input.a, abs(0u))), ~(~u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(778f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2091f - -448f) + _wgslsmith_f_op_f32(round(-760f)))))), -(~_wgslsmith_div_vec4_i32(vec4<i32>(-5999i, u_input.c.x, u_input.b, u_input.b), vec4<i32>(u_input.b, 2147483647i, -6727i, u_input.b)) << (~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.a, 1u, 20945u), vec4<u32>(0u, u_input.a, 4294967295u, 0u)) % vec4<u32>(32u))), vec3<bool>(true, true, true));
    var_0 = Struct_1(min(vec4<u32>(4294967295u, ~(~4294967295u), 0u, ~reverseBits(u_input.a)), countOneBits(~(var_0.a << (vec4<u32>(var_0.a.x, u_input.a, var_0.a.x, 4294967295u) % vec4<u32>(32u))))), var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.c, _wgslsmith_f_op_f32(-var_0.c))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(562f * var_0.c), _wgslsmith_f_op_f32(-var_0.c)))), _wgslsmith_div_vec4_i32(~_wgslsmith_div_vec4_i32(var_0.d ^ var_0.d, vec4<i32>(u_input.b, 30794i, var_0.d.x, u_input.c.x)), _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(var_0.d ^ vec4<i32>(u_input.b, 1i, -22214i, var_0.d.x), -vec4<i32>(var_0.d.x, var_0.d.x, var_0.d.x, var_0.d.x)), var_0.d ^ ~vec4<i32>(7728i, u_input.b, u_input.b, var_0.d.x), vec4<i32>(-43307i, var_0.d.x, u_input.c.x, 1i) ^ _wgslsmith_mult_vec4_i32(var_0.d, vec4<i32>(-52658i, 2147483647i, -1i, 0i)))), select(select(func_3(Struct_1(vec4<u32>(var_0.b, 21594u, u_input.a, 1u), 0u, var_0.c, var_0.d, vec3<bool>(true, var_0.e.x, true)), _wgslsmith_f_op_f32(f32(-1f) * -1978f), var_0.b), var_0.e, var_0.e.x), var_0.e, select(var_0.d.x, 37930i, true) >= var_0.d.x));
    var_0 = Struct_1(~vec4<u32>(42799u, select(~var_0.a.x, var_0.a.x, arg_0 & arg_0), ~(1u << (u_input.a % 32u)), 26865u), ~47444u, 393f, vec4<i32>(abs(_wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.c.x, var_0.d.x), 1i)), -1i, u_input.b, u_input.c.x), !(!vec3<bool>(!arg_0, true | arg_0, func_3(Struct_1(var_0.a, 1510u, var_0.c, var_0.d, vec3<bool>(false, true, var_0.e.x)), -608f, 1u).x)));
    var var_1 = Struct_1(~_wgslsmith_sub_vec4_u32(var_0.a, var_0.a << (vec4<u32>(var_0.a.x, var_0.a.x, u_input.a, var_0.b) % vec4<u32>(32u))), u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1092f))), _wgslsmith_sub_vec4_i32(var_0.d, reverseBits(var_0.d)), !var_0.e);
    var_0 = Struct_1(select(~(~(var_1.a & vec4<u32>(u_input.a, u_input.a, 4294967295u, 1u))), reverseBits(var_0.a), !select(select(vec4<bool>(true, false, arg_0, false), vec4<bool>(false, var_1.e.x, false, arg_0), vec4<bool>(false, arg_0, false, var_0.e.x)), !vec4<bool>(true, var_0.e.x, true, arg_0), vec4<bool>(arg_0, false, true, arg_0))), var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c - _wgslsmith_f_op_f32(select(-1098f, var_0.c, var_1.e.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c * 782f)))), ~select(vec4<i32>(-36416i, i32(-1i) * -1i, reverseBits(var_1.d.x), select(var_1.d.x, var_0.d.x, false)), var_1.d, !(!arg_0)), !var_0.e);
    return Struct_1(vec4<u32>(4294967295u, abs(~0u), ~var_1.b, _wgslsmith_div_u32(max(1u, 31183u), 16965u)) ^ vec4<u32>(150277u, ~u_input.a & 0u, var_0.b >> (abs(u_input.a) % 32u), 1u), 59033u, -1359f, select(~select(var_0.d | vec4<i32>(u_input.b, u_input.c.x, var_1.d.x, -1380i), var_0.d, !arg_0), -_wgslsmith_clamp_vec4_i32(var_1.d | var_0.d, _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 1i, var_0.d.x, u_input.c.x), vec4<i32>(u_input.c.x, 14417i, var_0.d.x, var_0.d.x), var_0.d), -var_1.d), vec4<bool>(var_0.e.x, all(!vec4<bool>(var_0.e.x, false, arg_0, true)), true & any(var_1.e.zy), _wgslsmith_f_op_f32(-var_0.c) > _wgslsmith_f_op_f32(max(258f, var_1.c)))), vec3<bool>(!arg_0, var_1.c > _wgslsmith_f_op_f32(select(var_0.c, var_0.c, false & var_0.e.x)), true));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>) -> i32 {
    let var_0 = func_2(!(!all(!arg_0.e)));
    let var_1 = _wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(1f))))));
    return _wgslsmith_add_i32(firstLeadingBit(~abs(arg_0.d.x)), -18793i) >> (_wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(var_0.a.yxw, func_2(arg_1.e.x).a.xwx), arg_0.a.x), ~(abs(arg_0.a.x) ^ 71026u)) % 32u);
}

fn func_1(arg_0: bool, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-307f + -1880f) * -1238f)), _wgslsmith_f_op_f32(abs(-894f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1479f)))))));
    let var_1 = Struct_1(vec4<u32>(~u_input.a, u_input.a, _wgslsmith_mult_u32(~(~45081u), 1u), 34716u), ~_wgslsmith_dot_vec3_u32(countOneBits(~vec3<u32>(91799u, u_input.a, u_input.a)), vec3<u32>(~u_input.a, ~u_input.a, u_input.a)), -790f, arg_1 ^ ~arg_1, vec3<bool>(select(any(vec3<bool>(false, false, arg_0)), true, arg_0), !arg_0, arg_0));
    let var_2 = _wgslsmith_add_i32(u_input.c.x, -func_4(func_2(4294967295u < u_input.a), var_1, var_1.a));
    var var_3 = _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(select(~var_1.d, var_1.d, !any(var_1.e)), arg_1, arg_1), -var_1.d);
    var_3 = vec4<i32>(func_2(arg_0).d.x, -2147483647i, u_input.c.x, -2147483647i | var_2) << ((select(var_1.a, var_1.a, !select(vec4<bool>(false, arg_0, false, true), vec4<bool>(true, arg_0, var_1.e.x, true), vec4<bool>(arg_0, true, false, var_1.e.x))) | ~var_1.a) % vec4<u32>(32u));
    return func_2(!var_1.e.x & true);
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: f32, arg_3: Struct_1) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-478f, -1018f, arg_0.c)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, arg_0.c, arg_2) - _wgslsmith_f_op_vec3_f32(vec3<f32>(694f, arg_2, arg_3.c) * vec3<f32>(arg_0.c, -622f, arg_2))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1461f, -1163f, 190f))))))));
    let var_1 = arg_3;
    let var_2 = vec4<i32>(arg_3.d.x, _wgslsmith_dot_vec2_i32(arg_0.d.zx, ~(-_wgslsmith_clamp_vec2_i32(var_1.d.wy, vec2<i32>(1i, arg_3.d.x), vec2<i32>(u_input.b, 2147483647i)))), var_1.d.x, var_1.d.x);
    var var_3 = _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(arg_0.a.wz, _wgslsmith_mult_vec2_u32(vec2<u32>(arg_3.a.x, arg_3.b), arg_0.a.yz)), arg_0.a.x, 21048u), vec3<u32>(1u, ~arg_3.a.x, 12414u)) ^ var_1.a.yyz;
    var_3 = arg_3.a.xxy;
    return arg_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~func_5(func_1(false, _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, -25551i, -2147483647i, u_input.c.x), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.c.x))), 26142i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -461f)), Struct_1(~vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), ~24070u, _wgslsmith_f_op_f32(-1164f * 1291f), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, 2147483647i, -31790i, u_input.b), vec4<i32>(u_input.c.x, 2147483647i, u_input.b, u_input.c.x)), vec3<bool>(true, true, true))), 0u, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1262f))), -270f), _wgslsmith_f_op_f32(1000f - 497f))), _wgslsmith_div_vec4_i32(~reverseBits(vec4<i32>(1i, 2147483647i, -1i, u_input.c.x)), (vec4<i32>(u_input.c.x, 1i, u_input.c.x, u_input.b) << (vec4<u32>(u_input.a, 0u, u_input.a, u_input.a) % vec4<u32>(32u))) ^ ~vec4<i32>(-2147483647i, u_input.b, u_input.c.x, u_input.b)) & vec4<i32>(firstLeadingBit(max(7391i, u_input.c.x)), i32(-1i) * -2147483647i, ~(~u_input.c.x), u_input.c.x), !vec3<bool>(all(vec4<bool>(true, false, true, false)), func_3(func_1(true, vec4<i32>(0i, 1i, u_input.b, u_input.c.x)), 1516f, u_input.a).x, firstTrailingBit(u_input.c.x) > -33351i));
    var var_1 = var_0.d.zz;
    let var_2 = func_1(var_0.e.x, min(vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(15461i, 1i), vec2<i32>(1i, 3902i)), -var_0.d.x), -(var_0.d.x | -9307i), var_1.x, _wgslsmith_add_i32(1i, _wgslsmith_add_i32(-2147483647i, 2282i))), vec4<i32>(~(~(-1i)), _wgslsmith_dot_vec2_i32(u_input.c.xz, select(vec2<i32>(-1i, 17442i), vec2<i32>(u_input.b, 0i), var_0.e.zz)), 1i, _wgslsmith_dot_vec3_i32(var_0.d.zyz, vec3<i32>(56978i, 23414i, 1i)) << (~u_input.a % 32u))));
    var_1 = vec2<i32>(var_1.x, var_2.d.x);
    let var_3 = max(-abs(_wgslsmith_sub_i32(var_2.d.x, 1i)), var_1.x) > 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec4<u32>(~_wgslsmith_div_u32(var_0.b, 4288u), ~u_input.a, var_2.a.x, u_input.a)), firstTrailingBit(var_2.b));
}

