struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
    d: u32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec3<f32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<i32>, arg_1: bool) -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_div_vec2_u32(firstLeadingBit(~abs(vec2<u32>(u_input.b.x, 15369u))), reverseBits(firstTrailingBit(u_input.b.yw))), vec3<bool>(any(vec4<bool>(any(vec2<bool>(true, arg_1)), select(true, arg_1, true), arg_1, true)), false, any(vec2<bool>(true, arg_1))), u_input.a.x);
    var_0 = Struct_1(~vec2<u32>(21741u, 32126u), var_0.b, 11605i);
    let var_1 = vec2<bool>(all(!vec4<bool>(true, true, !arg_1, true | arg_1)), !(u_input.a.x < ~reverseBits(u_input.a.x)));
    let var_2 = Struct_2(0i, var_0.b, _wgslsmith_div_i32(1i, 31451i), Struct_1(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, var_0.a.x), u_input.b.zw), reverseBits(9266u)) | var_0.a, var_0.b, var_0.c), Struct_1(u_input.b.ww << (var_0.a % vec2<u32>(32u)), select(select(var_0.b, select(var_0.b, var_0.b, false), var_0.a.x < u_input.b.x), vec3<bool>(false, var_0.b.x, true), true), -2147483647i));
    let var_3 = ~79628u;
    return vec3<bool>(true, false, all(var_1));
}

fn func_2(arg_0: i32, arg_1: f32) -> vec3<bool> {
    let var_0 = Struct_3(Struct_1(min(vec2<u32>(u_input.b.x, _wgslsmith_add_u32(u_input.b.x, 4294967295u)), vec2<u32>(abs(0u), 4294967295u)), vec3<bool>(all(func_3(vec4<i32>(arg_0, u_input.a.x, arg_0, -1i), true)), any(vec3<bool>(true, true, true)), min(u_input.b.x, u_input.b.x) < countOneBits(1u)), ~_wgslsmith_mod_i32(_wgslsmith_div_i32(2147483647i, 1i), 2147483647i)), u_input.a.x, Struct_2(u_input.a.x ^ ~_wgslsmith_div_i32(arg_0, u_input.a.x), vec3<bool>(true, true, true), _wgslsmith_dot_vec4_i32(~select(vec4<i32>(arg_0, u_input.a.x, u_input.a.x, arg_0), vec4<i32>(1i, -26786i, 0i, arg_0), false), vec4<i32>(-1i) * -vec4<i32>(1i, -16122i, 4853i, 29417i)), Struct_1(u_input.b.zw, vec3<bool>(false, true, true), -(~arg_0)), Struct_1(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.b.wx, vec2<u32>(u_input.b.x, u_input.b.x)), vec2<u32>(u_input.b.x, u_input.b.x)), vec3<bool>(true, any(vec3<bool>(true, true, false)), false), ~u_input.a.x)), 82401u);
    let var_1 = true;
    let var_2 = Struct_2(~(-arg_0), vec3<bool>(false, true, true), 1i, Struct_1(_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(26574u, 51908u), vec2<u32>(68594u, 212u)), ~vec2<u32>(4294967295u, u_input.b.x), var_0.c.e.a), vec3<bool>(true, !(arg_0 == var_0.b), var_0.a.b.x), arg_0), var_0.c.d);
    var var_3 = Struct_3(var_2.e, var_2.d.c | max(var_0.b, arg_0), var_2, abs(38208u));
    let var_4 = _wgslsmith_mult_i32(min(var_0.a.c, -2147483647i), ~1i);
    return !(!(!vec3<bool>(true, true, any(var_0.a.b))));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec4<f32>) -> f32 {
    let var_0 = (-1i | _wgslsmith_sub_i32(_wgslsmith_mod_i32(firstTrailingBit(-24114i), u_input.a.x), -u_input.a.x)) ^ arg_0.e.c;
    var var_1 = true;
    var_1 = 1519f != _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2173f))))));
    var_1 = true;
    let var_2 = !func_2(13815i, _wgslsmith_f_op_f32(f32(-1f) * -235f));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) * -299f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(430f)), _wgslsmith_f_op_f32(1180f - 799f))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1f)))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1115f)) + -244f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-799f + -495f) + _wgslsmith_div_f32(-359f, -1956f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_2(0i, vec3<bool>(false, false, false), u_input.a.x, Struct_1(u_input.b.yy, vec3<bool>(false, true, true), 24799i), Struct_1(u_input.b.xz, vec3<bool>(true, false, true), 2147483647i)), vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(968f, -1607f, 132f, -1867f)))))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(380f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-471f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-298f, -422f), _wgslsmith_f_op_f32(floor(588f)), true)))), _wgslsmith_f_op_f32(f32(-1f) * -918f)));
    let var_1 = Struct_1(abs(((vec2<u32>(u_input.b.x, 4294967295u) | u_input.b.xx) >> ((vec2<u32>(u_input.b.x, 40393u) & u_input.b.xy) % vec2<u32>(32u))) & u_input.b.xw), func_3(vec4<i32>(-18588i, ~(-19253i), -(i32(-1i) * -12354i), _wgslsmith_mod_i32(u_input.a.x << (2032u % 32u), i32(-1i) * -2147483647i)), func_3(select(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, -7485i, -12269i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), abs(vec4<i32>(1i, u_input.a.x, u_input.a.x, 24517i)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), false)), all(vec4<bool>(true, true, true, true))).x), u_input.a.x);
    var_0 = _wgslsmith_f_op_f32(func_1(Struct_2(-2147483647i, var_1.b, ~((u_input.a.x & 19701i) | u_input.a.x), var_1, Struct_1(~vec2<u32>(u_input.b.x, 4294967295u) >> (~vec2<u32>(u_input.b.x, var_1.a.x) % vec2<u32>(32u)), var_1.b, 0i)), var_1.b.xz, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(690f, 2063f, -1363f, 2219f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(913f, 344f, -577f, -356f) - vec4<f32>(-1932f, -493f, 1000f, 1023f)))) + _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-483f, -466f)), 691f, _wgslsmith_f_op_f32(select(663f, -154f, false)), _wgslsmith_f_op_f32(f32(-1f) * -709f)), vec4<f32>(_wgslsmith_f_op_f32(-179f * -2302f), _wgslsmith_f_op_f32(f32(-1f) * -1377f), _wgslsmith_f_op_f32(f32(-1f) * -888f), _wgslsmith_f_op_f32(f32(-1f) * -538f))))));
    let var_2 = Struct_4(vec3<i32>(countOneBits(i32(-1i) * -9304i), _wgslsmith_mult_i32(u_input.a.x, ~26933i), u_input.a.x), vec3<bool>(any(func_2(_wgslsmith_div_i32(var_1.c, u_input.a.x), -1948f).zz), true, var_1.b.x), Struct_3(Struct_1(vec2<u32>(var_1.a.x << (u_input.b.x % 32u), 46629u), !var_1.b, select(2147483647i, _wgslsmith_div_i32(var_1.c, 23413i), true)), countOneBits(min(var_1.c, 15193i) ^ 2147483647i), Struct_2(-1i, vec3<bool>(true, true, true), min(i32(-1i) * -42980i, u_input.a.x ^ 2147483647i), var_1, Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, var_1.a.x), vec2<u32>(var_1.a.x, 4294967295u)), func_2(-1i, -554f), var_1.c)), ~firstLeadingBit(var_1.a.x)));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-698f)), _wgslsmith_f_op_f32(-1125f * 473f)) - _wgslsmith_f_op_f32(step(504f, _wgslsmith_f_op_f32(f32(-1f) * -119f)))))), 173f);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(327f, -301f))) - 673f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1449f))))), 174f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1105f + 1043f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(2036f)) * -3051f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1143f)))));
    var var_4 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(var_3.xx))));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(u_input.a.zy << (vec2<u32>(49009u, var_1.a.x) % vec2<u32>(32u))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(var_4.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, var_4.x, -854f) - vec3<f32>(var_4.x, 830f, 942f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-914f, var_4.x, var_3.x)))), vec3<f32>(-1024f, _wgslsmith_f_op_f32(-1238f - var_4.x), _wgslsmith_f_op_f32(func_1(Struct_2(2147483647i, var_1.b, -3426i, Struct_1(vec2<u32>(var_1.a.x, 49946u), var_1.b, -8955i), var_2.c.a), vec2<bool>(true, false), vec4<f32>(-403f, -508f, -1108f, var_3.x))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_4.x, 478f, 2172f), vec3<f32>(330f, var_4.x, 620f)))))), min(~(~u_input.b), _wgslsmith_mult_vec4_u32(~u_input.b, _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b.x, var_2.c.d, 4294967295u, var_2.c.c.d.a.x), ~vec4<u32>(4294967295u, u_input.b.x, var_1.a.x, 17094u)))), max(vec3<i32>(u_input.a.x, abs(u_input.a.x), _wgslsmith_mod_i32(1i, var_2.a.x) >> (_wgslsmith_mod_u32(4294967295u, 15423u) % 32u)), vec3<i32>(~1i, var_2.a.x, 5957i)));
}

