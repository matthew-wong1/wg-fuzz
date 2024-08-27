struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: Struct_1) -> u32 {
    var var_0 = ~(-(~u_input.a));
    let var_1 = arg_2;
    let var_2 = arg_2;
    let var_3 = _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(u_input.a, u_input.a), _wgslsmith_add_i32(max(-2147483647i, -3644i), abs(13371i) >> (_wgslsmith_mod_u32(var_1.a.x, arg_1.x) % 32u)), u_input.a, _wgslsmith_clamp_i32(~(-2147483647i), -u_input.a, _wgslsmith_add_i32(u_input.a, u_input.a)) << (_wgslsmith_dot_vec2_u32(select(arg_2.a.xx, vec2<u32>(0u, 0u), vec2<bool>(arg_2.c, arg_2.c)), vec2<u32>(u_input.c, 1u)) % 32u)), (vec4<i32>(-63688i, u_input.a, _wgslsmith_clamp_i32(2147483647i, u_input.a, u_input.a), max(41540i, u_input.a)) >> (vec4<u32>(1u, max(var_1.b, 76891u), arg_1.x << (105349u % 32u), u_input.c) % vec4<u32>(32u))) << (~arg_1 % vec4<u32>(32u)));
    var var_4 = _wgslsmith_dot_vec4_i32(vec4<i32>(firstLeadingBit((var_3.x >> (4294967295u % 32u)) << (var_1.a.x % 32u)), _wgslsmith_mod_i32(2147483647i, -1i), countOneBits(i32(-1i) * -1i) & var_3.x, var_3.x >> (var_1.b % 32u)), vec4<i32>(32426i, var_3.x, -6393i, _wgslsmith_mult_i32(0i, -755i)));
    return arg_1.x;
}

fn func_2(arg_0: Struct_1) -> u32 {
    var var_0 = Struct_1(arg_0.a, func_3(vec4<f32>(-186f, 1f, _wgslsmith_f_op_f32(step(1f, -374f)), 278f), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, countOneBits(u_input.b), ~arg_0.b, 0u), ~u_input.d ^ _wgslsmith_add_vec4_u32(u_input.d, vec4<u32>(u_input.d.x, 95743u, 1u, arg_0.a.x))), arg_0), true);
    var var_1 = vec3<i32>(u_input.a, u_input.a, max(abs(u_input.a >> (u_input.b % 32u)), _wgslsmith_mod_i32(u_input.a, _wgslsmith_mod_i32(-1i, u_input.a)))) | _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a << (firstLeadingBit(u_input.b) % 32u), -1i, _wgslsmith_dot_vec4_i32(min(vec4<i32>(1i, -2147483647i, u_input.a, -2147483647i), vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a)), vec4<i32>(13552i, -1i, u_input.a, -1i))), vec3<i32>(u_input.a, 0i, _wgslsmith_sub_i32(_wgslsmith_mod_i32(27416i, -58165i), max(u_input.a, -1i))));
    let var_2 = _wgslsmith_sub_vec2_i32(vec2<i32>(var_1.x, min(firstLeadingBit(u_input.a), ~u_input.a) ^ _wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.a, u_input.a, 4291i), 0i)), ~var_1.xz ^ select(countOneBits(vec2<i32>(u_input.a, u_input.a)), var_1.xy, !(!vec2<bool>(arg_0.c, var_0.c))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(413f, -1707f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -552f) * 364f), 1950f)));
    var_1 = -vec3<i32>(i32(-1i) * -(~var_1.x), abs(max(firstLeadingBit(u_input.a), ~(-1i))), var_1.x);
    return reverseBits(countOneBits(var_0.b));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_u32(func_2(arg_3), ~firstLeadingBit(71040u & (4294967295u >> (arg_3.b % 32u))), 19427u);
    let var_1 = (_wgslsmith_sub_i32(i32(-1i) * -8431i, -arg_1.x & arg_0.x) != (u_input.a | _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.x, -3303i, -1i, u_input.a), vec4<i32>(arg_1.x, -2147483647i, arg_0.x, -16324i)), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.x, 27252i, arg_0.x, arg_1.x), vec4<i32>(arg_1.x, arg_0.x, arg_1.x, 0i))))) || arg_3.c;
    var_0 = 35118u;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_2, arg_2)))) * _wgslsmith_div_f32(arg_2, 1024f)));
    let var_3 = arg_3;
    return arg_3;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> vec4<f32> {
    let var_0 = -min(_wgslsmith_sub_i32(2147483647i, 2147483647i), _wgslsmith_sub_i32(firstTrailingBit(abs(u_input.a)), _wgslsmith_clamp_i32(i32(-1i) * -2147483647i, firstLeadingBit(u_input.a), _wgslsmith_div_i32(18522i, u_input.a))));
    var var_1 = !vec3<bool>(arg_0, all(vec3<bool>(true, var_0 > 41028i, true)), all(!select(vec2<bool>(false, arg_3.c), vec2<bool>(true, true), false)));
    var var_2 = select(true, any(select(select(vec4<bool>(false, arg_3.c, true, false), vec4<bool>(arg_1.c, arg_1.c, arg_0, arg_3.c), var_1.x), select(vec4<bool>(var_1.x, arg_1.c, true, arg_1.c), vec4<bool>(false, arg_3.c, var_1.x, true), arg_1.c), true)) | false, true);
    var var_3 = ~func_2(func_1(_wgslsmith_add_vec3_i32(vec3<i32>(var_0, u_input.a, -41426i), vec3<i32>(14088i, var_0, u_input.a)) ^ -vec3<i32>(var_0, -24847i, u_input.a), vec3<i32>(reverseBits(2147483647i), -var_0, _wgslsmith_add_i32(-4588i, 2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2))), arg_3));
    var_1 = vec3<bool>(var_1.x, 2147483647i == countOneBits(-max(0i, u_input.a)), all(!select(vec4<bool>(true, true, true, true), !vec4<bool>(arg_3.c, true, arg_0, true), u_input.a != u_input.a)));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, 1838f, arg_2, arg_2) + vec4<f32>(arg_2, -693f, arg_2, 405f)), vec4<f32>(arg_2, arg_2, arg_2, arg_2), select(vec4<bool>(var_1.x, arg_1.c, false, arg_3.c), vec4<bool>(var_1.x, arg_3.c, true, false), arg_1.c))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(833f, -254f, arg_2, -387f) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(436f, 487f, -605f, 770f), vec4<f32>(arg_2, 1169f, -1022f, arg_2))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_2, -300f, 122f)))))) - vec4<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 + arg_2) - -378f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -351f), _wgslsmith_f_op_f32(f32(-1f) * -1765f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_2)) - -932f)));
}

fn func_5(arg_0: vec4<f32>, arg_1: i32) -> Struct_1 {
    var var_0 = u_input.d;
    var var_1 = ~vec4<u32>(min(8598u, 1u), 29993u, ~1u | (u_input.c | 4294967295u), _wgslsmith_sub_u32(~var_0.x, ~u_input.b)) & ~u_input.d;
    var var_2 = !(!vec2<bool>(any(vec3<bool>(true, false, false)), select(true, true, any(vec3<bool>(false, false, false)))));
    var var_3 = ~(~_wgslsmith_mod_vec2_u32(~u_input.d.wy, var_0.xx));
    var var_4 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(arg_0, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0.x - -639f), _wgslsmith_f_op_f32(sign(-862f)), _wgslsmith_f_op_f32(407f + arg_0.x), arg_0.x) + _wgslsmith_div_vec4_f32(arg_0, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.x, -1239f, arg_0.x, 1655f))))))));
    return func_1(abs(vec3<i32>(1i, ~_wgslsmith_add_i32(arg_1, -8903i), abs(i32(-1i) * -12880i))), min(min(~vec3<i32>(0i, u_input.a, arg_1), vec3<i32>(u_input.a, -u_input.a, arg_1)), _wgslsmith_sub_vec3_i32(abs(~vec3<i32>(u_input.a, -1i, 2147483647i)), abs(vec3<i32>(2147483647i, -988i, 38767i)) & select(vec3<i32>(arg_1, u_input.a, arg_1), vec3<i32>(u_input.a, arg_1, -59295i), true))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_4.x), _wgslsmith_f_op_f32(select(arg_0.x, -1000f, false)))))), Struct_1(~vec3<u32>(_wgslsmith_clamp_u32(var_0.x, 13458u, var_3.x), 36620u, ~1u), var_1.x | _wgslsmith_mod_u32(_wgslsmith_mod_u32(var_0.x, var_1.x), var_0.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-var_4.x))) != 1470f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(~(~(~26644u) | ~u_input.d.x), ~_wgslsmith_add_u32(~34060u, ~(~31645u)));
    var_0 = ~(u_input.d.yz & vec2<u32>(58736u, u_input.c));
    var_0 = _wgslsmith_sub_vec2_u32(~min(vec2<u32>(var_0.x, 33087u), vec2<u32>(u_input.b & var_0.x, _wgslsmith_mult_u32(19753u, var_0.x))), _wgslsmith_div_vec2_u32(~abs(u_input.d.wx), ~(~vec2<u32>(var_0.x, 1u)) & ~vec2<u32>(var_0.x, var_0.x)));
    var var_1 = func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(select(true, true, false), func_1(vec3<i32>(6981i, u_input.a, 2147483647i), vec3<i32>(-1i, u_input.a, -6854i), -349f, Struct_1(vec3<u32>(u_input.c, 0u, 4294967295u), 6420u, false)), -302f, Struct_1(u_input.d.zxx, 13788u, true)))) * _wgslsmith_f_op_vec4_f32(func_4(true, func_1(firstLeadingBit(vec3<i32>(u_input.a, u_input.a, u_input.a)), ~vec3<i32>(64494i, u_input.a, u_input.a), _wgslsmith_f_op_f32(-1197f + -357f), func_1(vec3<i32>(-1i, 0i, -13990i), vec3<i32>(-1i, 0i, -2147483647i), 295f, Struct_1(vec3<u32>(0u, 9119u, 0u), 37946u, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(817f * 1544f) - _wgslsmith_f_op_f32(f32(-1f) * -1326f)), func_1(vec3<i32>(u_input.a, u_input.a, -1i), _wgslsmith_mod_vec3_i32(vec3<i32>(-67298i, -27302i, 0i), vec3<i32>(u_input.a, 11363i, u_input.a)), _wgslsmith_f_op_f32(abs(-1255f)), func_1(vec3<i32>(u_input.a, -2147483647i, -1i), vec3<i32>(u_input.a, 0i, u_input.a), 1701f, Struct_1(u_input.d.zyy, var_0.x, false)))))), ~3394i);
    var var_2 = func_5(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1518f, 453f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-221f + _wgslsmith_div_f32(887f, 270f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(177f, -709f))), -233f, 478f), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(369f, -1866f) - vec2<f32>(1f, 1f)))));
}

