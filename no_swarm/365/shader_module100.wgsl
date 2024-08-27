struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: u32,
    c: vec2<i32>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec2<u32>,
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

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>) -> vec4<f32> {
    let var_0 = ~_wgslsmith_mod_i32(_wgslsmith_mult_i32(firstLeadingBit(-1i) | (1i & arg_0.a), 0i), -1i);
    var var_1 = arg_1.yx;
    let var_2 = select(select(vec3<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false)), true, all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)))), vec3<bool>(true, any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true))), any(vec4<bool>(true, false, true, true)) || false), select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false))), vec3<bool>(all(vec4<bool>(true, false, false, false)), true, true), vec3<bool>(true, true, true))), !(!select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true), vec3<bool>(false, false, true), false)), vec3<bool>(!(!all(vec4<bool>(false, true, true, true))), !(72571u <= u_input.a), u_input.a <= min(1u, _wgslsmith_add_u32(31970u, u_input.a))));
    var var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(var_1.x, 452f, true)), _wgslsmith_f_op_f32(858f - -1163f), var_2.x))))));
    let var_4 = arg_0.b | ~arg_0.b;
    return vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1000f, -565f))), -1027f)), _wgslsmith_div_f32(arg_1.x, 436f));
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_sub_vec4_i32(~vec4<i32>(2147483647i, -firstLeadingBit(0i), min(-27345i << (1u % 32u), min(-51234i, 0i)), 1751i), -vec4<i32>(1i, -34211i, firstTrailingBit(1i), -1i) << (abs(~vec4<u32>(36286u, 1u, u_input.a, 18847u)) % vec4<u32>(32u)));
    var var_1 = vec2<bool>(true, true);
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_1(730i, var_0.x), vec4<f32>(2154f, -726f, 1573f, -203f)))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1628f, -547f, 493f, 152f))))), ~u_input.a, vec2<i32>(-(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_0.x, -2239i, var_0.x), vec4<i32>(var_0.x, 0i, -59534i, 20203i))), -1i));
    var var_3 = select(!select(vec4<bool>(true, var_2.a.x >= -114f, true, var_1.x), !(!vec4<bool>(true, var_1.x, false, var_1.x)), select(!vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, false, var_1.x, true), true)), !(!select(!vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<bool>(false, var_1.x, true, var_1.x), select(vec4<bool>(var_1.x, var_1.x, true, false), vec4<bool>(true, false, var_1.x, false), vec4<bool>(var_1.x, var_1.x, var_1.x, true)))), vec4<bool>(var_1.x, (_wgslsmith_mult_i32(-3231i, 2767i) | ~var_0.x) == min(_wgslsmith_dot_vec2_i32(var_2.c, vec2<i32>(var_0.x, 1i)), ~var_0.x), var_1.x, var_1.x));
    var_3 = vec4<bool>(u_input.a < ~(~u_input.a << (select(11542u, u_input.a, var_3.x) % 32u)), var_1.x, var_3.x, var_1.x);
    return -2018f;
}

fn func_1(arg_0: Struct_4) -> vec3<f32> {
    let var_0 = abs(~(~(-(i32(-1i) * -44325i))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(-1812f * 606f));
    let var_2 = select(select(select(!select(vec3<bool>(true, false, true), vec3<bool>(arg_0.a, arg_0.a, true), vec3<bool>(arg_0.a, arg_0.a, arg_0.a)), vec3<bool>(true, any(vec3<bool>(false, arg_0.a, false)), arg_0.a), vec3<bool>(any(vec3<bool>(true, true, true)), true, true)), !select(!vec3<bool>(arg_0.a, true, arg_0.a), !vec3<bool>(true, arg_0.a, arg_0.a), vec3<bool>(false, true, true)), vec3<bool>(true, (arg_0.a || arg_0.a) && true, -21319i < (var_0 << (1u % 32u)))), !vec3<bool>(any(select(vec4<bool>(arg_0.a, false, arg_0.a, arg_0.a), vec4<bool>(arg_0.a, false, false, arg_0.a), true)), arg_0.a, all(select(vec3<bool>(arg_0.a, arg_0.a, arg_0.a), vec3<bool>(true, arg_0.a, arg_0.a), vec3<bool>(arg_0.a, false, arg_0.a)))), !select(!vec3<bool>(true, arg_0.a, true), vec3<bool>(!arg_0.a, arg_0.a, all(vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.a))), !select(vec3<bool>(false, arg_0.a, arg_0.a), vec3<bool>(true, false, true), vec3<bool>(arg_0.a, true, arg_0.a))));
    let var_3 = vec3<i32>(27053i, var_0, var_0);
    let var_4 = vec3<bool>(var_2.x, arg_0.a, select(all(vec4<bool>(all(vec2<bool>(false, true)), arg_0.a, all(vec4<bool>(false, false, true, false)), true || var_2.x)), any(vec4<bool>(true, any(vec3<bool>(false, arg_0.a, arg_0.a)), true, all(vec4<bool>(arg_0.a, false, var_2.x, true)))), !all(select(vec4<bool>(arg_0.a, arg_0.a, false, false), vec4<bool>(arg_0.a, var_2.x, false, false), false))));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.x, -1904f))), _wgslsmith_f_op_f32(trunc(var_1.x)), _wgslsmith_f_op_f32(-1081f + _wgslsmith_f_op_f32(func_2()))) - vec3<f32>(var_1.x, -1432f, _wgslsmith_f_op_f32(func_2())));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: f32) -> Struct_2 {
    var var_0 = 5162u & _wgslsmith_add_u32(u_input.a, ~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(4294967295u, u_input.a, 1u), ~64469u));
    var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.a, u_input.a), ~(~(~vec2<u32>(1u, u_input.a))));
    let var_1 = Struct_1(arg_1.x, -1i);
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.x, arg_2, -198f, -154f)))))))), ~(~(~u_input.a)), min(-firstTrailingBit(arg_1 | vec2<i32>(40353i, arg_1.x)), -vec2<i32>(-79086i, arg_1.x)));
    var var_3 = firstTrailingBit(vec4<i32>(-1i) * -abs(_wgslsmith_div_vec4_i32(vec4<i32>(arg_1.x, var_2.c.x, var_1.b, 24512i), vec4<i32>(var_2.c.x, arg_1.x, 1i, var_1.a))));
    return Struct_2(var_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(Struct_4(true))))), vec2<i32>(1i, 1i), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-526f + 1236f) - _wgslsmith_f_op_f32(f32(-1f) * -896f)) + _wgslsmith_f_op_f32(trunc(-889f))))));
    var_0 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-693f, -869f, -599f))))))), ~_wgslsmith_mult_vec2_i32(select(-vec2<i32>(var_0.a.a, var_0.a.b), abs(vec2<i32>(var_0.a.b, var_0.a.a)), all(vec4<bool>(false, true, true, false))), vec2<i32>(21254i, 22587i) << (_wgslsmith_div_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(0u, u_input.a)) % vec2<u32>(32u))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -389f) - _wgslsmith_f_op_f32(-1295f - 837f)), 1467f, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(365f - 1462f)) - -1000f))));
    var_0 = Struct_2(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1314f, -1070f, -563f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1245f, 844f, 626f)))), vec2<i32>(~(~(-1i)), -_wgslsmith_add_i32(var_0.a.a, -18678i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f * -1011f), 248f)))).a);
    var var_1 = Struct_4(select(true, true, any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true))));
    var_1 = Struct_4(select(any(!(!vec3<bool>(var_1.a, var_1.a, false))), !(any(vec2<bool>(var_1.a, true)) && (true || var_1.a)), var_1.a));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-min(var_0.a.b, abs(-1i))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(1103f)), _wgslsmith_f_op_f32(f32(-1f) * -624f))))), 718f, ~countOneBits(abs(vec2<u32>(13827u, u_input.a) << (vec2<u32>(35995u, u_input.a) % vec2<u32>(32u)))));
}

