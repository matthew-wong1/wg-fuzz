struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: bool,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>) -> vec2<bool> {
    var var_0 = -1007f;
    var var_1 = Struct_3(true, _wgslsmith_f_op_vec3_f32(arg_1.wxw + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.zzx - _wgslsmith_div_vec3_f32(vec3<f32>(arg_1.x, arg_1.x, -969f), vec3<f32>(930f, arg_1.x, arg_1.x))), _wgslsmith_div_vec3_f32(vec3<f32>(-390f, 173f, arg_1.x), vec3<f32>(963f, arg_1.x, -425f)))));
    var var_2 = vec4<u32>(firstLeadingBit(_wgslsmith_sub_u32(4294967295u, abs(~15057u))), ~(u_input.a.x >> (arg_0.b.x % 32u)), 4553u, arg_0.b.x);
    let var_3 = Struct_4(arg_1);
    var_0 = 441f;
    return !select(arg_0.d.xy, vec2<bool>(!arg_0.c & !var_1.a, false), (true & var_1.a) && (var_1.b.x == _wgslsmith_f_op_f32(arg_1.x + var_3.a.x)));
}

fn func_2(arg_0: i32) -> bool {
    let var_0 = select(vec2<bool>(all(vec2<bool>(true, false)), false), select(vec2<bool>(!(2147483647i >= arg_0), true), !(!select(vec2<bool>(false, false), vec2<bool>(true, true), false)), select(func_3(Struct_1(1i, vec3<u32>(20021u, u_input.a.x, u_input.a.x), true, vec4<bool>(true, true, true, true)), vec4<f32>(833f, 416f, -221f, 2277f)), func_3(Struct_1(arg_0, vec3<u32>(98319u, 9467u, u_input.a.x), true, vec4<bool>(false, true, false, false)), _wgslsmith_div_vec4_f32(vec4<f32>(-630f, 539f, -645f, 1447f), vec4<f32>(342f, 1698f, -1605f, 1234f))), u_input.a.x <= min(u_input.a.x, u_input.a.x))), select(u_input.a.x, abs(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x)), any(vec3<bool>(false, true, false)) || true) < 0u);
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(675f, -2064f))), _wgslsmith_f_op_f32(max(-486f, _wgslsmith_f_op_f32(min(374f, -1121f)))), _wgslsmith_f_op_f32(round(-945f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(516f)), _wgslsmith_f_op_f32(min(910f, 1868f))))));
    let var_2 = var_0.x;
    return !(!(!(u_input.a.x > 1u)));
}

fn func_4(arg_0: bool, arg_1: vec2<i32>) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(873f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(867f * 641f), _wgslsmith_div_f32(982f, 1148f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1220f, 1000f)), 1f) - _wgslsmith_f_op_f32(abs(267f)))));
    var var_1 = min(arg_1 << (~u_input.a % vec2<u32>(32u)), vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(-1762i, arg_1.x, max(-23532i, 41631i)), min(arg_1.x, 62904i) << ((38439u ^ u_input.a.x) % 32u)), ~arg_1.x));
    var_1 = arg_1;
    var_1 = vec2<i32>(-13149i, 1i);
    let var_2 = Struct_2(Struct_1(~24951i, (vec3<u32>(u_input.a.x, u_input.a.x, 51182u) ^ vec3<u32>(u_input.a.x, u_input.a.x, 17869u)) | (select(vec3<u32>(1u, 0u, 129867u), vec3<u32>(0u, 0u, u_input.a.x), false) | (vec3<u32>(35531u, u_input.a.x, u_input.a.x) >> (vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u) % vec3<u32>(32u)))), u_input.a.x > _wgslsmith_sub_u32(_wgslsmith_add_u32(42579u, u_input.a.x), u_input.a.x), !select(select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(true, false, arg_0, false), vec4<bool>(arg_0, true, false, arg_0)), !vec4<bool>(true, true, arg_0, arg_0), !vec4<bool>(arg_0, true, arg_0, arg_0))), _wgslsmith_f_op_vec2_f32(var_0.zy * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_0.yx), _wgslsmith_f_op_vec2_f32(var_0.zx - vec2<f32>(-708f, var_0.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)), arg_0))), Struct_1(-14575i, vec3<u32>(_wgslsmith_mult_u32(~u_input.a.x, 7712u), _wgslsmith_div_u32(1u, _wgslsmith_mod_u32(u_input.a.x, 1u)), 55757u), arg_0, select(select(vec4<bool>(arg_0, true, true, arg_0), !vec4<bool>(arg_0, arg_0, arg_0, arg_0), !vec4<bool>(true, true, arg_0, arg_0)), vec4<bool>(true, -469f != var_0.x, arg_0, true), vec4<bool>(true, arg_0, arg_0, !arg_0))), Struct_1(firstTrailingBit(2147483647i), max(vec3<u32>(44195u, u_input.a.x, u_input.a.x) | vec3<u32>(u_input.a.x, 1u, u_input.a.x), ~vec3<u32>(u_input.a.x, u_input.a.x, 1u)), all(!vec2<bool>(true, arg_0)) == arg_0, select(select(vec4<bool>(false, arg_0, arg_0, true), select(vec4<bool>(arg_0, arg_0, false, false), vec4<bool>(arg_0, false, arg_0, arg_0), vec4<bool>(false, false, arg_0, arg_0)), !arg_0), vec4<bool>(true, arg_0, true, !arg_0), arg_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -260f, var_0.x)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-943f, 402f, var_0.x, var_0.x), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.x, 460f, 102f, var_0.x))))))));
    return Struct_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.x, _wgslsmith_f_op_f32(516f - var_2.e.x), 832f, var_0.x) + _wgslsmith_f_op_vec4_f32(-var_2.e)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.e.x, var_2.e.x, -538f, -408f)) - vec4<f32>(-502f, _wgslsmith_f_op_f32(var_0.x - var_2.e.x), _wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(-var_0.x)))));
}

fn func_1() -> vec4<f32> {
    let var_0 = func_4(func_2(min(-abs(-9817i), reverseBits(1i))), -select(-vec2<i32>(1i, 1i), select(select(vec2<i32>(-1i, -26840i), vec2<i32>(-12925i, 7988i), false), abs(vec2<i32>(2147483647i, -62240i)), true), ~0u > _wgslsmith_add_u32(u_input.a.x, 1u)));
    var var_1 = var_0;
    let var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(abs(select(2147483647i, 0i, true)), -2147483647i, 1i, -22779i) ^ vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_mod_vec4_i32(-firstLeadingBit(vec4<i32>(-2147483647i, -2147483647i, 62339i, -26842i)), ~(reverseBits(vec4<i32>(1i, 1i, -1i, 43953i)) >> ((vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x) & vec4<u32>(1u, u_input.a.x, 4153u, u_input.a.x)) % vec4<u32>(32u)))));
    let var_3 = vec4<i32>(var_2, abs(~1i), countOneBits(_wgslsmith_dot_vec4_i32(-vec4<i32>(-13165i, var_2, var_2, var_2), vec4<i32>(-52526i, -2147483647i, -1i, var_2))), select(var_2, -_wgslsmith_mod_i32(-1i, var_2), false)) >> (vec4<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(4294967295u, u_input.a.x), u_input.a.x), u_input.a.x, u_input.a.x, u_input.a.x ^ ~(~u_input.a.x)) % vec4<u32>(32u));
    var var_4 = _wgslsmith_add_vec4_u32(~(~_wgslsmith_add_vec4_u32(~vec4<u32>(0u, 1u, u_input.a.x, 0u), select(vec4<u32>(u_input.a.x, 23243u, u_input.a.x, u_input.a.x), vec4<u32>(19244u, 0u, 51482u, 34947u), false))), select(~(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) & (vec4<u32>(1u, u_input.a.x, 0u, 0u) & vec4<u32>(0u, u_input.a.x, u_input.a.x, 11269u))), vec4<u32>(4294967295u, 73898u, 15937u, 0u), any(vec3<bool>(true, true, true))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(var_1.a, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(var_0.a - vec4<f32>(var_1.a.x, -1168f, -1133f, var_0.a.x)), vec4<f32>(var_1.a.x, -549f, 587f, var_1.a.x))), vec4<bool>(true, true, false, any(vec2<bool>(false, false))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(func_1()), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(695f, -1000f, -625f, 528f)))))) + vec4<f32>(_wgslsmith_f_op_f32(round(-2952f)), _wgslsmith_f_op_f32(f32(-1f) * -920f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(552f, -1514f)) + _wgslsmith_f_op_f32(max(1490f, -1239f))), 1f)) - vec4<f32>(1f, 1f, 1f, 1f));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-func_4(true, vec2<i32>(-8027i, -9137i)).a), var_0)) - _wgslsmith_f_op_vec4_f32(-var_0)), var_0);
    var var_2 = _wgslsmith_mult_i32(-1i, -2333i);
    var var_3 = vec3<i32>(abs(_wgslsmith_sub_i32(~1i, 0i)), _wgslsmith_div_i32(1i, ~(~(~20944i))), ~_wgslsmith_add_i32(~(-56399i), -firstLeadingBit(-1i)));
    let var_4 = vec3<bool>(true, func_3(Struct_1(44148i, _wgslsmith_mult_vec3_u32(abs(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), ~vec3<u32>(u_input.a.x, 26518u, 1u)), any(vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, false)), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(round(var_1.x)), var_0.x, var_1.x)).x, false);
    let var_5 = Struct_2(Struct_1(var_3.x, ~vec3<u32>(31486u, ~96810u, _wgslsmith_mult_u32(u_input.a.x, 4294967295u)), _wgslsmith_add_i32(_wgslsmith_sub_i32(var_3.x, var_3.x), _wgslsmith_mult_i32(1i, var_3.x)) < 2147483647i, select(vec4<bool>(u_input.a.x < u_input.a.x, true, true, any(vec4<bool>(false, var_4.x, false, false))), vec4<bool>(true, true, true, !var_4.x), var_4.x & true)), var_1.zx, Struct_1(min(var_3.x ^ -var_3.x, _wgslsmith_add_i32(~(-48437i), -var_3.x)), _wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(u_input.a.x, 47388u, 43831u)), min(~vec3<u32>(1u, u_input.a.x, 10015u), countOneBits(vec3<u32>(4294967295u, 8101u, u_input.a.x)))), true, select(select(select(vec4<bool>(var_4.x, false, var_4.x, false), vec4<bool>(var_4.x, var_4.x, true, var_4.x), vec4<bool>(true, true, true, false)), select(vec4<bool>(false, var_4.x, var_4.x, var_4.x), vec4<bool>(var_4.x, var_4.x, var_4.x, false), var_4.x), !vec4<bool>(var_4.x, var_4.x, false, true)), vec4<bool>(u_input.a.x >= 13280u, false, var_4.x && var_4.x, false), !vec4<bool>(var_4.x, true, var_4.x, var_4.x))), Struct_1(~(_wgslsmith_dot_vec2_i32(var_3.zx, var_3.zx) ^ var_3.x), _wgslsmith_add_vec3_u32(vec3<u32>(54376u, u_input.a.x, 0u), ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)) & ~vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), func_2(_wgslsmith_sub_i32(var_3.x >> (70004u % 32u), var_3.x)), select(select(!vec4<bool>(var_4.x, var_4.x, var_4.x, var_4.x), vec4<bool>(var_4.x, false, false, true), vec4<bool>(true, var_4.x, var_4.x, true)), select(select(vec4<bool>(var_4.x, var_4.x, var_4.x, var_4.x), vec4<bool>(true, false, var_4.x, false), vec4<bool>(var_4.x, var_4.x, var_4.x, var_4.x)), !vec4<bool>(var_4.x, true, var_4.x, var_4.x), select(vec4<bool>(var_4.x, var_4.x, var_4.x, var_4.x), vec4<bool>(false, false, var_4.x, var_4.x), vec4<bool>(var_4.x, true, false, true))), true | var_4.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-var_1))) * _wgslsmith_f_op_vec4_f32(-var_0))));
    var var_6 = Struct_3(var_5.c.c, _wgslsmith_f_op_vec3_f32(sign(var_1.ywz)));
    let var_7 = Struct_4(func_4(var_4.x, select(_wgslsmith_sub_vec2_i32(select(vec2<i32>(var_3.x, 2147483647i), var_3.zz, vec2<bool>(var_6.a, var_5.c.c)), vec2<i32>(var_5.a.a, var_5.c.a)), var_3.zy, select(var_5.c.d.xw, var_5.d.d.wz, var_3.x == var_3.x))).a);
    let x = u_input.a;
    s_output = StorageBuffer(632u, _wgslsmith_mod_vec3_i32(vec3<i32>(-var_5.c.a, reverseBits(_wgslsmith_mod_i32(0i, var_5.d.a)), 1i), _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_5.c.a, -6012i, var_3.x), vec3<i32>(var_5.c.a, 32718i, 0i)), ~vec3<i32>(12079i, var_5.a.a, var_3.x)) | firstTrailingBit(select(vec3<i32>(var_3.x, var_3.x, 0i), vec3<i32>(-11912i, var_5.d.a, 0i), true))));
}

