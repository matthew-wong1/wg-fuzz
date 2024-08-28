struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: vec2<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = Struct_2(Struct_1(234f, -min(-u_input.a.x, ~(-2147483647i)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(238f, _wgslsmith_f_op_f32(trunc(-783f))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-954f - 734f) - _wgslsmith_f_op_f32(1782f + 1290f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(781f * -1487f)))), false == any(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true))), select(-232f > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f * -1052f))), select(true, false, true) && !(1u < arg_0), false), vec2<bool>(all(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(false, true), true)), true), Struct_1(-1560f, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, -26864i, u_input.a.x) ^ ~vec4<i32>(-20827i, -1i, u_input.a.x, u_input.a.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(-67130i, u_input.a.x, -2147483647i, -21313i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 0i), vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, 0i)) ^ firstLeadingBit(vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.a.x))), _wgslsmith_div_f32(-661f, -1515f), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1000f - 816f), 433f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(361f, 255f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1107f, 530f) * vec2<f32>(577f, -1117f))))));
    let var_1 = _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, u_input.a.x, countOneBits(0i), u_input.a.x), min(vec4<i32>(u_input.a.x, 35456i, u_input.a.x, 2147483647i), vec4<i32>(14806i, var_0.e.b, var_0.e.b, -16620i)) << (~(vec4<u32>(4294967295u, arg_0, 27309u, arg_0) | vec4<u32>(arg_0, 101468u, 0u, 82408u)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(-firstTrailingBit(vec4<i32>(u_input.a.x, 60149i, u_input.a.x, u_input.a.x)), vec4<i32>(firstLeadingBit(var_0.e.b), 17758i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.a.x), u_input.a), ~(-11645i)))), -(abs(select(vec4<i32>(2147483647i, -51367i, -1i, u_input.a.x), vec4<i32>(var_0.e.b, -1i, var_0.a.b, u_input.a.x), vec4<bool>(false, false, var_0.d.x, true))) | vec4<i32>(-51881i, firstTrailingBit(var_0.e.b), u_input.a.x, -2147483647i)));
    let var_2 = _wgslsmith_dot_vec4_i32(select(select(vec4<i32>(1i, 14142i, 30503i, 68435i) >> (vec4<u32>(0u, arg_0, arg_0, arg_0) % vec4<u32>(32u)), vec4<i32>(-5661i, var_0.e.b, -26019i, 22956i), !vec4<bool>(true, false, var_0.d.x, var_0.b)) & vec4<i32>(firstLeadingBit(-47678i), u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(7832i, u_input.a.x), vec2<i32>(-2147483647i, -18988i)), _wgslsmith_sub_i32(u_input.a.x, u_input.a.x)), abs(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.e.b, var_1, u_input.a.x, -1i), vec4<i32>(u_input.a.x, -2147483647i, -37558i, 1i)), -vec4<i32>(-43979i, 0i, var_0.a.b, var_0.e.b))), var_0.d.x), _wgslsmith_div_vec4_i32(abs(_wgslsmith_add_vec4_i32(vec4<i32>(-23974i, -1i, 2147483647i, 12312i) & vec4<i32>(var_1, 10121i, -1i, var_1), firstLeadingBit(vec4<i32>(var_1, -2147483647i, -1i, -2147483647i)))), abs(min(~vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, -2147483647i), -vec4<i32>(12052i, 1i, u_input.a.x, var_0.a.b)))));
    return 0u << (arg_0 % 32u);
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: vec4<bool>, arg_3: Struct_2) -> f32 {
    var var_0 = Struct_2(arg_3.a, true, arg_2.x, !arg_2.wx, arg_3.a);
    var var_1 = ~_wgslsmith_add_u32(20636u, 1u);
    var var_2 = arg_1;
    let var_3 = ~_wgslsmith_add_i32(_wgslsmith_sub_i32(~22805i, _wgslsmith_mod_i32(u_input.a.x, u_input.a.x)) | 1i, i32(-1i) * -25199i);
    var_2 = func_3(4294967295u);
    return _wgslsmith_f_op_f32(-680f - _wgslsmith_f_op_f32(round(var_0.e.c)));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(vec2<u32>(65044u, 0u), 4294967295u, vec4<bool>(true, true, false, false), Struct_2(Struct_1(-210f, u_input.a.x, -755f, vec2<f32>(-888f, -413f)), false, true, vec2<bool>(true, false), Struct_1(-380f, u_input.a.x, 234f, vec2<f32>(143f, 360f)))))))), -2147483647i, 1447f, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1305f)), _wgslsmith_f_op_f32(min(-1459f, -1507f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(170f + -1011f))))), true, all(vec4<bool>(any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), true)), firstLeadingBit(u_input.a.x) <= 0i, false, 1u > _wgslsmith_dot_vec4_u32(vec4<u32>(66712u, 4294967295u, 44870u, 1u), vec4<u32>(6333u, 31035u, 11540u, 1u)))), select(vec2<bool>(any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true))), all(vec4<bool>(true, false, false, true))), !select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(true, false), true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1140f)), _wgslsmith_f_op_f32(abs(1441f))) < 430f), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(959f - -1107f)) - _wgslsmith_f_op_f32(317f * _wgslsmith_f_op_f32(212f - -401f))), -20661i, _wgslsmith_f_op_f32(abs(1051f)), vec2<f32>(_wgslsmith_f_op_f32(-1087f + 487f), 869f)));
    let var_1 = Struct_2(var_0.a, true, !(any(select(vec4<bool>(var_0.d.x, false, false, true), vec4<bool>(false, var_0.b, false, false), true)) & select(var_0.c, var_0.d.x, var_0.c)), var_0.d, var_0.e);
    let var_2 = true;
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.c)) + _wgslsmith_f_op_f32(-var_0.e.a))), -629f));
    let var_4 = select(!vec2<bool>(!var_0.b || select(var_1.c, false, var_1.c), (1571f < var_3) || true), !(!(!(!vec2<bool>(var_0.c, false)))), all(select(!select(var_0.d, var_0.d, false), var_0.d, select(!var_0.d, !vec2<bool>(var_2, true), var_0.b | var_1.c))));
    return Struct_1(var_0.e.c, 1i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.c), _wgslsmith_f_op_f32(1403f - -293f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_1.e.d)), var_1.a.d) + var_1.e.d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(), (abs(_wgslsmith_dot_vec2_u32(vec2<u32>(2894u, 4294967295u), vec2<u32>(4294967295u, 587u))) & firstLeadingBit(4294967295u)) > ~1u, !(true && any(vec3<bool>(true, false, false))), vec2<bool>(true, all(vec2<bool>(true, true))), func_1());
    let var_1 = vec3<bool>(true, all(vec3<bool>(true, all(select(vec4<bool>(var_0.b, var_0.b, false, false), vec4<bool>(var_0.d.x, false, true, var_0.c), vec4<bool>(var_0.d.x, false, false, var_0.c))), var_0.d.x)), false);
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(sign(var_0.e.d.x)), -3090i >> (~4294967295u % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2373f - -943f) + 217f), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.e.d)), _wgslsmith_f_op_vec2_f32(floor(func_1().d))))), var_0.d.x, select(var_0.b || !(var_0.a.d.x > var_0.a.d.x), true, select(false, !var_0.b, true) & var_1.x), select(var_1.xz, !select(select(vec2<bool>(true, false), var_0.d, true), vec2<bool>(true, true), !var_0.b), select(false, var_0.d.x, true)), func_1());
    var var_2 = var_0.a;
    var_2 = func_1();
    let var_3 = !(abs(_wgslsmith_mult_i32(i32(-1i) * -2147483647i, var_2.b)) >= -60666i);
    var var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, _wgslsmith_dot_vec4_u32(max(vec4<u32>(0u, 23722u, 77483u, 33886u), vec4<u32>(4294967295u, 16117u, 13060u, 1u)), vec4<u32>(36133u, 0u, 1u, 1u))), ~abs(abs(vec2<u32>(4294967295u, 0u))), ~vec2<u32>(1u, max(36682u, 492u))));
}

