struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec2<bool>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec3<i32>) -> i32 {
    let var_0 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(arg_1)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.a.x + arg_0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * arg_1) * -374f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1182f), arg_0.a.x))), select(countOneBits(select(arg_2, vec3<i32>(arg_0.b.x, u_input.a, arg_2.x), arg_0.c.x)), arg_2, false), select(vec2<bool>(any(vec4<bool>(arg_0.c.x, false, arg_0.c.x, false)), false), arg_0.c, select(select(vec2<bool>(false, false), arg_0.c, arg_0.c.x), vec2<bool>(true, true), !vec2<bool>(arg_0.c.x, arg_0.c.x))), countOneBits(~(arg_0.d | arg_0.d))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.a - arg_0.a) - arg_0.a));
    let var_1 = !select(vec3<bool>(!(arg_0.c.x || var_0.a.c.x), var_0.a.c.x, !select(false, false, false)), !(!select(vec3<bool>(var_0.a.c.x, false, arg_0.c.x), vec3<bool>(true, arg_0.c.x, false), false)), !(!select(vec3<bool>(var_0.a.c.x, var_0.a.c.x, false), vec3<bool>(arg_0.c.x, false, true), false)));
    var var_2 = -_wgslsmith_mod_i32(~12719i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 1i, u_input.a, var_0.a.b.x), ~vec4<i32>(4895i, arg_0.b.x, arg_2.x, arg_0.b.x)));
    var var_3 = arg_1;
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1628f, _wgslsmith_f_op_f32(trunc(1231f)))) + var_0.b.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.a.x, var_0.a.a.x) - _wgslsmith_f_op_f32(min(-592f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.b.x)))))), _wgslsmith_f_op_f32(max(arg_0.a.x, var_0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2168f))) * _wgslsmith_f_op_f32(arg_0.a.x + var_0.a.a.x)));
    return countOneBits(-1i);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1) -> vec4<f32> {
    let var_0 = firstLeadingBit(max(vec3<i32>(_wgslsmith_mod_i32(arg_1.b.x ^ arg_0.x, ~52893i), u_input.a, u_input.a), arg_1.b >> ((select(vec3<u32>(arg_1.d.x, arg_1.d.x, 54498u), vec3<u32>(30813u, arg_1.d.x, 6561u), arg_1.c.x) >> (arg_1.d % vec3<u32>(32u))) % vec3<u32>(32u))));
    let var_1 = vec4<f32>(_wgslsmith_div_f32(arg_1.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1529f + arg_1.a.x) - arg_1.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1355f))), 1f, 1091f);
    let var_2 = arg_1.d.x;
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.x, var_1.x, -1263f, var_1.x) - var_1))), vec3<i32>(arg_0.x, firstLeadingBit(0i), var_0.x), arg_1.c, arg_1.d), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -910f) * _wgslsmith_f_op_f32(trunc(arg_1.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-469f + var_1.x))), arg_1.a.x, _wgslsmith_f_op_f32(1248f * arg_1.a.x)));
    let var_4 = var_3.a;
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -926f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -593f)), _wgslsmith_f_op_f32(var_4.a.x - _wgslsmith_f_op_f32(-var_4.a.x)), -897f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_1, _wgslsmith_f_op_vec4_f32(-vec4<f32>(211f, 1000f, -497f, var_1.x)))), var_4.c.x)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1) * vec4<f32>(_wgslsmith_f_op_f32(min(arg_1.a.x, arg_1.a.x)), _wgslsmith_f_op_f32(step(var_1.x, var_3.b.x)), -336f, _wgslsmith_f_op_f32(-953f - 1459f))))));
}

fn func_2(arg_0: vec2<f32>, arg_1: bool) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.a, u_input.a, 0i, 0i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(-6466i, -9619i, 2147483647i, 7942i)), vec4<i32>(~u_input.a, 4389i, 7303i, func_3(Struct_1(vec4<f32>(1131f, -230f, -257f, arg_0.x), vec3<i32>(-6307i, 1i, u_input.a), vec2<bool>(false, false), vec3<u32>(0u, 37851u, 42632u)), arg_0.x, vec3<i32>(u_input.a, 71970i, u_input.a)))) ^ vec4<i32>(abs(u_input.a) | -u_input.a, ~(u_input.a << (4294967295u % 32u)), u_input.a << (_wgslsmith_dot_vec3_u32(vec3<u32>(9579u, 1u, 31724u), vec3<u32>(44288u, 50555u, 1u)) % 32u), u_input.a), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(abs(arg_0.x)), _wgslsmith_f_op_f32(min(377f, -170f)), -401f, _wgslsmith_f_op_f32(max(1257f, arg_0.x))))), -firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(-65820i, u_input.a, -1i), vec3<i32>(-41974i, 28107i, 0i))), vec2<bool>(1f == _wgslsmith_f_op_f32(select(arg_0.x, -498f, arg_1)), !any(vec4<bool>(true, arg_1, true, true))), vec3<u32>(_wgslsmith_div_u32(select(9091u, 55282u, arg_1), 1u), select(_wgslsmith_dot_vec2_u32(vec2<u32>(74067u, 100692u), vec2<u32>(0u, 8919u)), 86883u, !arg_1), 192u))));
    let var_1 = !all(select(vec4<bool>(true, !arg_1, arg_0.x >= var_0.x, true), !(!vec4<bool>(false, arg_1, arg_1, false)), all(select(vec4<bool>(true, arg_1, true, arg_1), vec4<bool>(false, true, arg_1, arg_1), vec4<bool>(arg_1, true, false, true)))));
    let var_2 = vec3<u32>(_wgslsmith_clamp_u32(abs(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 5720u), vec2<u32>(1u, 58306u))), 63178u, _wgslsmith_clamp_u32(0u, countOneBits(firstTrailingBit(40360u)), 1u)), max(~min(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(70100u, 4294967295u, 119420u, 1u), vec4<u32>(17367u, 4294967295u, 45708u, 20024u))), _wgslsmith_add_u32(1u, 1u)), ~36530u);
    var var_3 = select(!(!vec2<bool>(true, -1973f >= var_0.x)), select(vec2<bool>(false, true), !vec2<bool>(true, any(vec2<bool>(false, var_1))), any(vec3<bool>(true, true, true))), all(select(!select(vec2<bool>(arg_1, false), vec2<bool>(true, arg_1), vec2<bool>(true, true)), !vec2<bool>(true, var_1), vec2<bool>(arg_1 & var_1, var_2.x > var_2.x))));
    var var_4 = firstLeadingBit(~min(~(~var_2.x), var_2.x));
    return true;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec4<f32>) -> vec4<bool> {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, arg_2.x, arg_0.b.x, arg_2.x) * arg_0.a.a), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(640f, arg_0.a.a.x, -1328f, arg_0.a.a.x))), func_2(vec2<f32>(arg_2.x, -937f), true)))), -arg_0.a.b, !(!(!vec2<bool>(arg_1.x, true))), (~arg_0.a.d >> (select(arg_0.a.d, arg_0.a.d, vec3<bool>(false, false, true)) % vec3<u32>(32u))) >> ((min(vec3<u32>(42288u, 38736u, arg_0.a.d.x), arg_0.a.d) | _wgslsmith_clamp_vec3_u32(arg_0.a.d, vec3<u32>(arg_0.a.d.x, arg_0.a.d.x, 0u), vec3<u32>(0u, arg_0.a.d.x, arg_0.a.d.x))) % vec3<u32>(32u))), arg_0.b);
    let var_1 = vec2<u32>(~_wgslsmith_dot_vec2_u32(~var_0.a.d.xy, select(vec2<u32>(var_0.a.d.x, 38890u), vec2<u32>(0u, 1u), false)), abs(_wgslsmith_clamp_u32(var_0.a.d.x ^ 1930u, 69584u, _wgslsmith_mult_u32(var_0.a.d.x, arg_0.a.d.x)))) | ~(~(~arg_0.a.d.xx >> (select(var_0.a.d.xy, var_0.a.d.zx, vec2<bool>(var_0.a.c.x, var_0.a.c.x)) % vec2<u32>(32u))));
    let var_2 = _wgslsmith_mult_u32(_wgslsmith_mult_u32(arg_0.a.d.x, _wgslsmith_mult_u32(~(~var_0.a.d.x), ~21125u)), var_0.a.d.x);
    let var_3 = arg_0.a;
    let var_4 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_3.a.xwy))), var_3.a.xzz, vec3<bool>(any(arg_1), any(vec3<bool>(arg_0.a.c.x, true, false)), true))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.x) - 576f), var_3.a.x))));
    return arg_1;
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: vec4<bool>, arg_3: u32) -> vec4<f32> {
    var var_0 = arg_2.x;
    var var_1 = _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_3, arg_3, 4294967295u, ~(arg_3 << (0u % 32u))), _wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, arg_3, arg_3, arg_0.d.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(7701u, 4294967295u, arg_0.d.x, 4294967295u), ~vec4<u32>(71728u, arg_3, 49849u, 4294967295u))) << (~countOneBits(~vec4<u32>(1u, arg_0.d.x, 0u, arg_3)) % vec4<u32>(32u)));
    var var_2 = Struct_1(arg_0.a, vec3<i32>(u_input.a, _wgslsmith_add_i32(reverseBits(-u_input.a), 0i), ~u_input.a), !select(vec2<bool>(arg_0.c.x, !arg_0.c.x), select(vec2<bool>(arg_2.x, false), select(vec2<bool>(arg_2.x, true), vec2<bool>(arg_0.c.x, false), arg_2.x), arg_0.c), false), abs(vec3<u32>(arg_3, arg_3, 1u)) ^ (abs(firstLeadingBit(arg_0.d)) ^ (_wgslsmith_sub_vec3_u32(vec3<u32>(arg_3, 1u, 121527u), vec3<u32>(0u, arg_3, 0u)) & vec3<u32>(1632u, arg_0.d.x, 254u))));
    let var_3 = arg_0;
    var var_4 = _wgslsmith_clamp_i32(u_input.a, _wgslsmith_mult_i32(func_3(Struct_1(vec4<f32>(arg_1, var_2.a.x, var_3.a.x, arg_0.a.x), var_3.b, var_2.c, var_2.d), var_3.a.x, arg_0.b) >> (~0u % 32u), -2008i), -u_input.a) > arg_0.b.x;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -1943f), _wgslsmith_div_f32(_wgslsmith_div_f32(arg_1, arg_1), arg_1), -526f), arg_0.a)));
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2, arg_3: f32) -> Struct_1 {
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(606f * arg_2.a.a.x), -1038f) - _wgslsmith_f_op_f32(f32(-1f) * -616f)), arg_0.a.x, -2450f, arg_0.a.x), ~arg_0.b, arg_0.c, abs(arg_2.a.d) << (_wgslsmith_add_vec3_u32(~arg_2.a.d, min(arg_0.d << (vec3<u32>(0u, 4294967295u, 1u) % vec3<u32>(32u)), arg_2.a.d ^ vec3<u32>(4294967295u, arg_0.d.x, 1u))) % vec3<u32>(32u)));
    var var_1 = 40791u;
    var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_div_f32(-1000f, -1512f))), arg_2.b.x, 1000f), arg_0.b, arg_2.a.c, vec3<u32>(~arg_1, _wgslsmith_add_u32(arg_0.d.x, firstTrailingBit(~65031u)), var_0.d.x ^ (_wgslsmith_div_u32(arg_0.d.x, arg_1) & ~var_0.d.x)));
    var var_2 = select(vec3<i32>(u_input.a, -(~(~(-2147483647i))), arg_2.a.b.x), _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(32235i >> (arg_1 % 32u), -45547i, ~arg_0.b.x), vec3<i32>(arg_2.a.b.x, arg_2.a.b.x, u_input.a), arg_2.a.b), -_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, arg_2.a.b.x, 37782i), vec3<i32>(-1i, u_input.a, -2147483647i))), vec3<bool>(var_0.c.x, arg_0.c.x, arg_2.a.c.x));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.a), _wgslsmith_add_vec3_i32(arg_2.a.b & ~(-vec3<i32>(arg_0.b.x, arg_2.a.b.x, var_0.b.x)), vec3<i32>(arg_2.a.b.x ^ abs(2147483647i), -_wgslsmith_clamp_i32(-13183i, u_input.a, arg_2.a.b.x), 39494i)), vec2<bool>(func_2(_wgslsmith_div_vec2_f32(arg_0.a.xz, vec2<f32>(arg_0.a.x, -470f)), true & arg_2.a.c.x) | arg_2.a.c.x, all(select(!arg_2.a.c, select(var_0.c, vec2<bool>(arg_2.a.c.x, false), true), !var_0.c.x))), ~arg_0.d);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_5(Struct_1(vec4<f32>(1232f, 731f, -1000f, 257f), vec3<i32>(28825i, -2147483647i, -1i), vec2<bool>(true, true), vec3<u32>(69190u, 53595u, 4294967295u)), _wgslsmith_f_op_f32(max(-1000f, 237f)), func_1(Struct_2(Struct_1(vec4<f32>(-972f, -493f, 118f, -367f), vec3<i32>(-9661i, -35356i, -1i), vec2<bool>(true, false), vec3<u32>(10352u, 4294967295u, 12943u)), vec4<f32>(-279f, -253f, 1193f, 1739f)), vec4<bool>(true, false, false, false), vec4<f32>(-166f, 970f, 808f, -630f)), 1u)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -842f), _wgslsmith_f_op_f32(-427f - 450f), -1025f, _wgslsmith_f_op_f32(-1374f - 827f))), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, u_input.a, -48821i) >> (vec3<u32>(26836u, 4294967295u, 17389u) % vec3<u32>(32u)), ~vec3<i32>(-23049i, -1i, 0i)) << (vec3<u32>(1u, 0u, 1u) % vec3<u32>(32u)), vec2<bool>(true, true), vec3<u32>(_wgslsmith_sub_u32(11713u, 1966u), _wgslsmith_add_u32(73511u, 45893u), ~1u) >> (firstTrailingBit(abs(vec3<u32>(28573u, 29925u, 59518u))) % vec3<u32>(32u))), ~_wgslsmith_clamp_u32(~(~1u), ~(~33433u), firstTrailingBit(~71393u)), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -564f, -2139f, -996f)))), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, u_input.a, 11118i), firstTrailingBit(vec3<i32>(37449i, -1121i, u_input.a))), vec2<bool>(true, true), ~vec3<u32>(46758u, 1u, 1u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1125f, -517f, -1000f, -2507f)))), _wgslsmith_f_op_f32(select(-742f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1839f) - 1f)), func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(432f, 1000f) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-770f, -408f)))), true))));
    var var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, max(1i, var_0.b.x)), max(_wgslsmith_mult_vec3_i32(-var_0.b, ~vec3<i32>(2147483647i, u_input.a, -2147483647i)), _wgslsmith_add_vec3_i32(-var_0.b, -var_0.b) >> (var_0.d % vec3<u32>(32u))));
    var_0 = func_6(Struct_1(_wgslsmith_div_vec4_f32(var_0.a, _wgslsmith_f_op_vec4_f32(func_5(Struct_1(var_0.a, vec3<i32>(-2147483647i, 28613i, 30103i), vec2<bool>(var_0.c.x, var_0.c.x), vec3<u32>(var_0.d.x, 0u, 19487u)), 2189f, !vec4<bool>(var_0.c.x, var_0.c.x, false, var_0.c.x), var_0.d.x))), _wgslsmith_add_vec3_i32(~(~var_0.b), vec3<i32>(~16887i, u_input.a, var_0.b.x)), select(var_0.c, vec2<bool>(false, true), !select(var_0.c, vec2<bool>(var_0.c.x, false), var_0.c.x)), _wgslsmith_sub_vec3_u32(firstTrailingBit(var_0.d | vec3<u32>(var_0.d.x, 27029u, var_0.d.x)), var_0.d)), reverseBits(var_0.d.x), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(var_0.a))), var_0.b, select(func_6(Struct_1(var_0.a, var_0.b, var_0.c, vec3<u32>(1u, var_0.d.x, var_0.d.x)), var_0.d.x, Struct_2(Struct_1(var_0.a, vec3<i32>(var_0.b.x, -10975i, u_input.a), vec2<bool>(var_0.c.x, true), var_0.d), var_0.a), 1430f).c, vec2<bool>(false, false), select(var_0.c.x, true, false)), vec3<u32>(var_0.d.x, 1u, 1u) >> (~vec3<u32>(68904u, var_0.d.x, var_0.d.x) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-893f, 207f, var_0.a.x, var_0.a.x)), vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(-var_0.a.x), 1092f, _wgslsmith_f_op_f32(max(759f, var_0.a.x)))))), var_0.a.x);
    var_0 = func_6(func_6(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_0.a.x, -1000f, var_0.a.x)), _wgslsmith_clamp_vec3_i32(var_0.b, -vec3<i32>(var_0.b.x, u_input.a, 4268i), vec3<i32>(u_input.a, var_0.b.x, u_input.a)), select(func_1(Struct_2(Struct_1(var_0.a, var_0.b, vec2<bool>(true, false), var_0.d), var_0.a), vec4<bool>(true, var_0.c.x, var_0.c.x, true), var_0.a).wz, vec2<bool>(var_0.c.x, var_0.c.x), !var_0.c), var_0.d), firstLeadingBit(_wgslsmith_div_u32(var_0.d.x, ~var_0.d.x)), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.a), vec3<i32>(8535i, u_input.a, var_0.b.x), var_0.c, vec3<u32>(1u, 4294967295u, var_0.d.x) >> (vec3<u32>(1u, var_0.d.x, var_0.d.x) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-220f, var_0.a.x, -1626f, 1216f))) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.a.x, 1082f, var_0.a.x, var_0.a.x))))), 169f), ~(~func_6(Struct_1(vec4<f32>(var_0.a.x, -1066f, 238f, var_0.a.x), vec3<i32>(var_0.b.x, 0i, var_0.b.x), var_0.c, var_0.d), var_0.d.x, Struct_2(Struct_1(var_0.a, var_0.b, vec2<bool>(var_0.c.x, var_0.c.x), var_0.d), vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x)), var_0.a.x).d.x << (~var_0.d.x % 32u)), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_5(Struct_1(var_0.a, vec3<i32>(-2147483647i, -2147483647i, -2147483647i), vec2<bool>(var_0.c.x, true), vec3<u32>(var_0.d.x, 43225u, 1u)), var_0.a.x, vec4<bool>(var_0.c.x, true, false, var_0.c.x), var_0.d.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x))), ~_wgslsmith_sub_vec3_i32(var_0.b, var_0.b), var_0.c, ~(var_0.d & vec3<u32>(42417u, var_0.d.x, var_0.d.x))), var_0.a), var_0.a.x);
    let var_2 = vec4<i32>(~(-21527i), u_input.a, var_0.b.x, ~(-_wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.a, u_input.a), -var_0.b.x)));
    var var_3 = var_0.c.x;
    let var_4 = !var_0.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(-(u_input.a | reverseBits(var_2.x)), select(_wgslsmith_dot_vec4_i32(vec4<i32>(6958i, u_input.a, var_0.b.x, var_2.x), var_2), min(var_0.b.x, var_0.b.x), var_4) | _wgslsmith_mult_i32(-var_2.x, var_0.b.x ^ 0i)), 482f, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.x, 1000f) - _wgslsmith_f_op_f32(f32(-1f) * -433f)), _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(max(-421f, _wgslsmith_f_op_f32(floor(var_0.a.x)))), -3489f), _wgslsmith_f_op_vec4_f32(var_0.a - vec4<f32>(1317f, var_0.a.x, func_6(Struct_1(vec4<f32>(-606f, var_0.a.x, var_0.a.x, var_0.a.x), var_2.xwy, vec2<bool>(false, false), var_0.d), var_0.d.x, Struct_2(Struct_1(vec4<f32>(-1261f, var_0.a.x, var_0.a.x, -833f), vec3<i32>(var_2.x, 15265i, -20694i), var_0.c, var_0.d), var_0.a), -1040f).a.x, func_6(Struct_1(vec4<f32>(1855f, var_0.a.x, 248f, var_0.a.x), var_2.xwz, vec2<bool>(var_0.c.x, var_0.c.x), vec3<u32>(var_0.d.x, 19094u, var_0.d.x)), var_0.d.x, Struct_2(Struct_1(vec4<f32>(var_0.a.x, 1295f, var_0.a.x, var_0.a.x), vec3<i32>(-2147483647i, var_0.b.x, var_0.b.x), var_0.c, var_0.d), var_0.a), -932f).a.x)))));
}

