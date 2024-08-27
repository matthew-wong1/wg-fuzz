struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: bool,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1358f, _wgslsmith_f_op_f32(trunc(742f)), 1f)))) * vec3<f32>(_wgslsmith_div_f32(-492f, 427f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -744f)))), _wgslsmith_f_op_f32(ceil(1f))));
    let var_1 = arg_0;
    var var_2 = select(vec3<bool>(!any(vec4<bool>(false, true, false, false)), true, ~(arg_1.x << (arg_0.a % 32u)) >= (_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.x, u_input.a.x, u_input.a.x, -36840i), u_input.c) >> (firstLeadingBit(4294967295u) % 32u))), select(vec3<bool>(any(vec2<bool>(true, true)), true, true), !vec3<bool>(true, all(vec4<bool>(true, false, true, true)), all(vec3<bool>(true, true, false))), all(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), false))), true);
    var var_3 = _wgslsmith_f_op_f32(var_0.x * 2206f);
    var_3 = var_0.x;
    return reverseBits(1u);
}

fn func_2() -> Struct_1 {
    let var_0 = any(vec4<bool>(true, true, any(vec2<bool>(true, all(vec4<bool>(false, true, false, false)))), true));
    let var_1 = Struct_2(_wgslsmith_mult_u32(u_input.d.x, u_input.d.x << (~37161u % 32u)));
    var var_2 = Struct_2(_wgslsmith_clamp_u32(var_1.a, _wgslsmith_div_u32(func_3(Struct_2(u_input.d.x), u_input.c.xyx), var_1.a), ~(~26260u)));
    let var_3 = Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, i32(-1i) * -39123i), -vec2<i32>(0i, u_input.b.x), _wgslsmith_sub_vec2_i32(u_input.b, vec2<i32>(u_input.b.x, u_input.b.x)) | u_input.a.xz) | abs(u_input.a.xx), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-622f, -855f) - vec2<f32>(-749f, 256f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -190f) + vec2<f32>(-121f, 2006f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, 273f))))))), _wgslsmith_clamp_vec4_i32(firstTrailingBit(countOneBits(u_input.c)), firstLeadingBit(u_input.c), u_input.c) << (_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_2.a, 4294967295u, u_input.d.x, 111419u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, 103776u, var_2.a, 22519u), vec4<u32>(1u, 108460u, var_1.a, var_1.a)) >> (~vec4<u32>(35495u, var_1.a, 4294967295u, 77204u) % vec4<u32>(32u)), firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(0u, var_1.a, var_1.a, 4294967295u), vec4<u32>(4294967295u, u_input.d.x, u_input.d.x, 1u)))) % vec4<u32>(32u)), u_input.a.x <= u_input.b.x);
    var var_4 = _wgslsmith_mult_vec4_u32(~vec4<u32>(~0u, 0u, _wgslsmith_add_u32(~var_1.a, _wgslsmith_sub_u32(var_1.a, u_input.d.x)), var_1.a), vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(~0u, ~4294967295u), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(102434u, var_1.a, var_2.a), vec3<u32>(u_input.d.x, var_1.a, 41478u)), 9419u)), u_input.d.x, var_2.a, _wgslsmith_mod_u32(~_wgslsmith_add_u32(53467u, 1u), ~(~u_input.d.x))));
    return Struct_1(var_3.c.yy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(var_3.b, vec2<f32>(1118f, 834f))))) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, 173f), _wgslsmith_f_op_vec2_f32(select(var_3.b, var_3.b, vec2<bool>(var_3.d, false)))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(var_3.b.x, -600f)), var_3.b.x) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.b.x, 1460f) + vec2<f32>(var_3.b.x, -980f)))))), firstTrailingBit(-_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, 1i, 1i, 8022i), vec4<i32>(-2147483647i, -1909i, u_input.c.x, var_3.c.x)), -var_3.c, _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 0i, -5206i, var_3.c.x), var_3.c))), !var_3.d);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> vec3<f32> {
    var var_0 = ~vec2<i32>(u_input.a.x, 24522i) >> (vec2<u32>(u_input.d.x, 1u) % vec2<u32>(32u));
    let var_1 = all(select(select(select(!vec2<bool>(arg_2.d, true), vec2<bool>(arg_2.d, true), arg_2.d), !(!vec2<bool>(arg_2.d, false)), !(!vec2<bool>(arg_2.d, false))), vec2<bool>(!arg_0.d, arg_2.d), vec2<bool>(true, false)));
    var var_2 = arg_1;
    let var_3 = arg_0;
    var_0 = -_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(firstTrailingBit(abs(u_input.a.xy)), countOneBits(vec2<i32>(arg_2.a.x, var_3.c.x))), vec2<i32>(0i, _wgslsmith_mod_i32(-50696i, var_0.x)));
    return _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_3.b.x)) - arg_1.b.x), 524f, arg_3)))));
}

fn func_5(arg_0: vec3<f32>) -> f32 {
    var var_0 = u_input.d;
    var var_1 = ~abs(u_input.c.x);
    var_1 = u_input.c.x;
    let var_2 = max(u_input.d, vec2<u32>(47678u, ~1u & select(var_0.x, 4294967295u, false)) << (firstTrailingBit(~vec2<u32>(46172u, u_input.d.x)) % vec2<u32>(32u)));
    var_0 = ~(~(~min(var_2, vec2<u32>(u_input.d.x, var_2.x)) >> (min(vec2<u32>(4294967295u, u_input.d.x), var_2) % vec2<u32>(32u))));
    return arg_0.x;
}

fn func_1(arg_0: vec2<f32>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(func_2(), Struct_1(u_input.b, vec2<f32>(1939f, -626f), u_input.c, false), Struct_1(vec2<i32>(u_input.c.x, u_input.a.x), vec2<f32>(arg_0.x, 777f), vec4<i32>(-24204i, u_input.c.x, u_input.c.x, -17549i), true), _wgslsmith_f_op_f32(-arg_0.x)))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_4(func_2(), func_2(), func_2(), -1809f)))))));
    var_0 = arg_0.x;
    var_0 = _wgslsmith_f_op_f32(-582f - arg_0.x);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec3_f32(func_4(func_2(), Struct_1(u_input.b, vec2<f32>(-1148f, 159f), u_input.c, true), Struct_1(vec2<i32>(-1i, 0i), arg_0, vec4<i32>(3374i, -18259i, u_input.c.x, u_input.a.x), false), arg_0.x)).x, 612f))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(arg_0.x)), arg_0.x)));
    var var_1 = u_input.a.x;
    return vec4<bool>(true, 0u < max(21566u, (4294967295u >> (u_input.d.x % 32u)) << (u_input.d.x % 32u)), any(vec4<bool>(_wgslsmith_f_op_f32(-708f + -2123f) >= _wgslsmith_f_op_f32(arg_0.x - arg_0.x), all(vec4<bool>(true, true, true, true)), all(select(vec2<bool>(false, false), vec2<bool>(false, false), false)), _wgslsmith_mult_u32(u_input.d.x, 4294967295u) < max(7037u, 82918u))), true || !all(vec3<bool>(true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(1u);
    var var_1 = Struct_1(-(vec2<i32>(_wgslsmith_mod_i32(u_input.b.x, -10347i), _wgslsmith_dot_vec4_i32(vec4<i32>(-15736i, u_input.c.x, 2147483647i, -2147483647i), u_input.c)) ^ u_input.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_div_vec2_f32(vec2<f32>(-905f, -210f), vec2<f32>(536f, -880f))), vec2<f32>(_wgslsmith_f_op_f32(sign(427f)), -1595f))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2137f, -701f) - vec2<f32>(973f, 1015f))))))), -min(~select(u_input.c, u_input.c, vec4<bool>(false, false, true, false)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, 0i, u_input.b.x, u_input.b.x), _wgslsmith_sub_vec4_i32(vec4<i32>(41538i, u_input.a.x, -1i, 16909i), u_input.c))), all(!(!func_1(vec2<f32>(-425f, 820f)))));
    var var_2 = ~select(~(~_wgslsmith_div_vec2_u32(u_input.d, vec2<u32>(u_input.d.x, u_input.d.x))), vec2<u32>(var_0.a, 67386u) | u_input.d, var_1.d);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.b.x))) + -688f);
    var var_4 = ~vec4<u32>(firstLeadingBit(var_0.a), max(_wgslsmith_sub_u32(var_2.x, 1u), ~(~15476u)), select(func_3(var_0, -u_input.a), u_input.d.x, !(false || var_1.d)), _wgslsmith_dot_vec2_u32(vec2<u32>(~17009u, _wgslsmith_mult_u32(1u, u_input.d.x)), ~u_input.d ^ ~vec2<u32>(45379u, var_0.a)));
    var_2 = vec2<u32>(var_0.a & ~_wgslsmith_add_u32(~0u, min(0u, 31216u)), _wgslsmith_div_u32(0u, ~26591u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_1.b.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_3, 758f)) - _wgslsmith_f_op_f32(max(var_1.b.x, _wgslsmith_f_op_f32(var_1.b.x + -802f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(var_1.b.x + -1000f)) * -203f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(1930f * var_1.b.x), 714f, -584f, -1843f))), _wgslsmith_div_u32(var_4.x ^ var_4.x, u_input.d.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.b * vec2<f32>(_wgslsmith_f_op_f32(422f * var_1.b.x), var_1.b.x))));
}

