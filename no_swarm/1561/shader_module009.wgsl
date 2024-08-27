struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
    d: vec3<bool>,
    e: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32) -> bool {
    var var_0 = vec4<bool>(select(true, true, !any(vec4<bool>(true, true, true, true))), true, false, select(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), u_input.a != u_input.c.x, !(arg_1.a.x != arg_1.a.x)));
    var var_1 = Struct_2(vec3<u32>(arg_0.a.x, arg_1.a.x, 23646u), _wgslsmith_dot_vec2_i32(~firstLeadingBit(vec2<i32>(u_input.b, -2147483647i)), ~vec2<i32>(u_input.b, arg_1.c)) & (~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, arg_0.c), vec2<i32>(22542i, 0i)) << (~max(4294967295u, arg_0.a.x) % 32u)), _wgslsmith_dot_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, u_input.b, arg_0.b, -1i), vec4<i32>(arg_1.b, -1i, arg_1.c, u_input.b)), vec4<i32>(1i, arg_0.b, u_input.b, 1i) << (~vec4<u32>(arg_0.a.x, u_input.a, arg_1.a.x, 0u) % vec4<u32>(32u))) | -min(u_input.b, ~arg_1.b));
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-750f - arg_2))))))));
    var var_3 = Struct_2(~var_1.a, ~_wgslsmith_mod_i32(_wgslsmith_div_i32(1i, 36102i), -_wgslsmith_sub_i32(u_input.b, arg_1.b)), -41011i);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - 1445f))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1440f))))));
    return var_0.x;
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: Struct_1) -> f32 {
    var var_0 = _wgslsmith_dot_vec3_u32(~firstLeadingBit(vec3<u32>(reverseBits(arg_2.a), arg_2.e, arg_2.a)), _wgslsmith_div_vec3_u32(~(~vec3<u32>(arg_2.a, u_input.a, 34464u)), min(max(vec3<u32>(7437u, 0u, 4294967295u), vec3<u32>(u_input.c.x, 0u, 1u)), vec3<u32>(13889u, 98505u, 23843u))) << (vec3<u32>(_wgslsmith_clamp_u32(4294967295u, ~arg_2.a, 2512u), countOneBits(1u & arg_2.a), ~u_input.c.x) % vec3<u32>(32u)));
    var var_1 = Struct_2(vec3<u32>(u_input.c.x, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(~u_input.a, arg_2.a, ~u_input.c.x), reverseBits(_wgslsmith_sub_u32(u_input.a, arg_2.e)), u_input.a), countOneBits(firstTrailingBit(arg_2.e))), arg_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>((arg_0.x << (25302u % 32u)) ^ -50210i, arg_1.x, _wgslsmith_sub_i32(arg_0.x, 58349i)), vec3<i32>(arg_1.x, _wgslsmith_mult_i32(u_input.b, -7083i), 0i) | vec3<i32>(_wgslsmith_sub_i32(47254i, -20256i), arg_0.x, _wgslsmith_add_i32(arg_0.x, arg_1.x))));
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_2.b - arg_2.b), arg_2.b, _wgslsmith_div_f32(arg_2.b, 454f), _wgslsmith_f_op_f32(trunc(-521f)))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-458f, -1036f, arg_2.b, 953f) * vec4<f32>(-879f, -428f, -597f, arg_2.b)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2.b, arg_2.b, 487f, arg_2.b), vec4<f32>(arg_2.b, arg_2.b, -2052f, arg_2.b))))), vec4<f32>(-446f, arg_2.b, arg_2.b, arg_2.b))), !select(!(!vec4<bool>(arg_2.d.x, false, arg_2.d.x, arg_2.d.x)), vec4<bool>(true & arg_2.d.x, arg_2.c, arg_2.d.x, any(arg_2.d)), vec4<bool>(all(arg_2.d), true, false, 24892i != u_input.b))));
    var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(round(arg_2.b)), _wgslsmith_f_op_f32(arg_2.b * var_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - 2154f), var_2.x)))));
    let var_3 = (abs(~vec4<u32>(0u, arg_2.a, u_input.c.x, var_1.a.x)) ^ vec4<u32>(~(~u_input.a), abs(arg_2.a << (u_input.c.x % 32u)), 4294967295u, 4294967295u & arg_2.a)) ^ _wgslsmith_mult_vec4_u32(abs(max(vec4<u32>(var_1.a.x, 4294967295u, 1u, u_input.c.x), vec4<u32>(29281u, u_input.a, 1u, 1u))) ^ _wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(1u, 29823u, 56757u, u_input.c.x)), ~vec4<u32>(30310u, 15954u, var_1.a.x, 29654u)), vec4<u32>(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.a, arg_2.a), var_1.a)), var_1.a.x, ~55805u, arg_2.e));
    return var_2.x;
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> bool {
    var var_0 = Struct_1(~select(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a.x, arg_1.a.x, u_input.a, u_input.a), vec4<u32>(arg_0, 0u, 0u, 4294967295u)), true) >> (_wgslsmith_dot_vec4_u32(abs(vec4<u32>(arg_1.a.x, 1u, u_input.a, 14359u)), ~(vec4<u32>(arg_1.a.x, 0u, 1432u, u_input.a) | vec4<u32>(arg_1.a.x, 25165u, 48408u, arg_1.a.x))) % 32u), 411f, _wgslsmith_f_op_f32(f32(-1f) * -629f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, 8546i), vec2<i32>(2405i, arg_1.c)), vec3<i32>(5415i, u_input.b, 2147483647i) & vec3<i32>(-27808i, u_input.b, arg_1.b), Struct_1(arg_0, -202f, false, vec3<bool>(true, true, true), arg_1.a.x)))), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, any(vec4<bool>(true, true, true, true))), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true))), arg_1.a.x);
    var_0 = Struct_1((~(~u_input.c.x) | abs(~u_input.a)) << (var_0.a % 32u), -1949f, !(!(_wgslsmith_f_op_f32(-var_0.b) < 503f)), !var_0.d, min(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0, u_input.a, 21844u, 3621u), ~vec4<u32>(arg_1.a.x, 2172u, u_input.c.x, 67136u)) ^ _wgslsmith_mod_u32(~arg_0, abs(1u)), abs(~(~0u))));
    let var_1 = ~(~reverseBits(_wgslsmith_clamp_vec4_u32(max(vec4<u32>(1u, u_input.a, 1u, u_input.c.x), vec4<u32>(4294967295u, var_0.a, var_0.a, arg_0)), ~vec4<u32>(arg_1.a.x, u_input.c.x, 76445u, 36153u), _wgslsmith_clamp_vec4_u32(vec4<u32>(22889u, var_0.e, u_input.a, arg_1.a.x), vec4<u32>(9108u, 4294967295u, var_0.a, 0u), vec4<u32>(25946u, arg_1.a.x, u_input.c.x, 1u)))));
    var var_2 = Struct_2(var_1.wyx, _wgslsmith_clamp_i32(u_input.b, 1i, ~_wgslsmith_div_i32(-1i, _wgslsmith_clamp_i32(-1i, u_input.b, -14845i))), 1i);
    var_0 = Struct_1(_wgslsmith_dot_vec3_u32(select(abs(~arg_1.a), var_2.a, !vec3<bool>(var_0.d.x, false, var_0.d.x)), reverseBits(select(arg_1.a, vec3<u32>(arg_0, 7363u, 22622u), var_0.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1367f, -1000f))))) * var_0.b), var_0.c, select(var_0.d, select(select(!var_0.d, var_0.d, true), !(!var_0.d), !select(var_0.d, var_0.d, var_0.d)), !(!var_0.d)), u_input.a);
    return !var_0.d.x;
}

fn func_4(arg_0: bool) -> Struct_1 {
    var var_0 = Struct_1(reverseBits(2268u), 998f, any(select(!vec3<bool>(false, true, arg_0), select(vec3<bool>(arg_0, true, true), select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, arg_0, false), vec3<bool>(true, arg_0, true)), all(vec3<bool>(false, false, false))), true)), !vec3<bool>(false, any(!vec3<bool>(true, arg_0, arg_0)), any(vec3<bool>(false, false, arg_0))), 4294967295u);
    let var_1 = vec2<i32>(_wgslsmith_mod_i32(u_input.b, firstLeadingBit(-13374i)) >> (_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, 4294967295u), select(vec3<u32>(0u, u_input.c.x, u_input.a), vec3<u32>(4294967295u, u_input.a, 4294967295u), arg_0))) % 32u), -2147483647i);
    let var_2 = Struct_2(~(firstLeadingBit(vec3<u32>(u_input.c.x, 78253u, 0u) ^ vec3<u32>(u_input.c.x, 62780u, var_0.e)) >> (max(~vec3<u32>(18563u, 1u, u_input.a), vec3<u32>(var_0.e, u_input.c.x, 12664u)) % vec3<u32>(32u))), 1i, -(_wgslsmith_mod_i32(u_input.b, 2147483647i) | u_input.b));
    let var_3 = abs(var_1);
    var_0 = Struct_1(_wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(28691u, 4294967295u, 0u), ~var_2.a), vec3<u32>(var_0.a, 14457u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(1517u, var_0.a, 86789u, var_2.a.x), vec4<u32>(u_input.c.x, var_0.a, var_2.a.x, var_0.e), vec4<bool>(true, true, arg_0, var_0.c)), vec4<u32>(var_0.a, 0u, u_input.c.x, 4372u) & vec4<u32>(var_2.a.x, var_2.a.x, 1u, u_input.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(f32(-1f) * -545f), false)))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b * var_0.b), var_0.b))), arg_0, vec3<bool>(!any(vec2<bool>(true, false)), true | arg_0, var_0.d.x), var_0.e);
    return Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(~max(1u, 12843u), var_2.a.x), var_2.a.yy), _wgslsmith_f_op_f32(-var_0.b), arg_0, vec3<bool>(!(all(var_0.d) && true), func_1(var_2, var_2, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.b)))), false), 1u >> (((var_0.a ^ (var_0.a ^ 4294967295u)) ^ reverseBits(~var_2.a.x)) % 32u));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> Struct_2 {
    var var_0 = -2147483647i >> (0u % 32u);
    let var_1 = _wgslsmith_mult_vec3_i32(vec3<i32>(~arg_0.b, 47405i & (min(-2147483647i, 1i) ^ _wgslsmith_add_i32(35673i, arg_0.b)), ~(~firstLeadingBit(u_input.b))), _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(reverseBits(-vec3<i32>(u_input.b, 1i, -2147483647i)), select(countOneBits(vec3<i32>(u_input.b, 2147483647i, -32664i)), abs(vec3<i32>(-26100i, u_input.b, -12766i)), select(arg_1.d, vec3<bool>(arg_1.d.x, arg_1.d.x, false), false))), ~vec3<i32>(23295i, _wgslsmith_div_i32(u_input.b, 0i), _wgslsmith_div_i32(u_input.b, u_input.b))));
    var_0 = -27796i;
    let var_2 = arg_1;
    let var_3 = func_4(!((reverseBits(arg_1.a) <= 38089u) || !all(arg_1.d)));
    return arg_0;
}

fn func_6(arg_0: u32, arg_1: Struct_2, arg_2: bool, arg_3: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(step(335f, arg_3));
    var var_1 = func_4(true);
    var_1 = Struct_1(arg_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-585f - _wgslsmith_f_op_f32(max(-607f, -622f))) + 315f)), any(select(var_1.d, !var_1.d, !var_1.d)), var_1.d, 4294967295u);
    let var_2 = func_4(true);
    var_0 = 972f;
    return func_5(Struct_2(arg_1.a, _wgslsmith_dot_vec3_i32(~select(vec3<i32>(-38815i, -2147483647i, 0i), vec3<i32>(1i, u_input.b, arg_1.b), vec3<bool>(var_2.d.x, false, var_1.d.x)), abs(firstTrailingBit(vec3<i32>(33228i, u_input.b, -2147483647i)))), firstLeadingBit(i32(-1i) * -21150i)), Struct_1(1u | ~arg_1.a.x, var_2.b, abs(-11971i) != u_input.b, !func_4(var_2.c).d, _wgslsmith_mod_u32(var_2.e, arg_1.a.x >> (abs(u_input.a) % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_u32(u_input.c.x, u_input.a);
    let var_1 = func_6(~min(select(firstLeadingBit(4294967295u), u_input.c.x, func_1(Struct_2(vec3<u32>(4294967295u, u_input.a, 40455u), -57646i, -2147483647i), Struct_2(vec3<u32>(u_input.c.x, u_input.a, 4294967295u), u_input.b, -1i), -1562f)), u_input.a), func_5(Struct_2(~vec3<u32>(1u, 48270u, 0u), _wgslsmith_sub_i32(-11300i, u_input.b), -1i), func_4(select(true, true, func_2(u_input.a, Struct_2(vec3<u32>(4294967295u, 38834u, 24898u), u_input.b, 0i))))), true, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1121f))));
    let var_2 = select(var_1.a.xy, select(_wgslsmith_mult_vec2_u32(u_input.c, vec2<u32>(_wgslsmith_dot_vec3_u32(var_1.a, var_1.a), u_input.a)), ~var_1.a.yx, select(func_4(all(vec4<bool>(true, false, false, true))).d.zx, vec2<bool>(true, true), false)), !any(!func_4(true).d.zx));
    var_0 = u_input.c.x;
    var_0 = _wgslsmith_sub_u32(var_1.a.x, 26563u);
    var var_3 = _wgslsmith_sub_vec4_i32(~(~(-vec4<i32>(-2147483647i, 0i, -50398i, -43694i))), (~vec4<i32>(0i, 2147483647i, 0i, var_1.b) >> (min(vec4<u32>(1u, var_2.x, 4294967295u, 1u), vec4<u32>(11040u, 99066u, u_input.a, var_1.a.x)) % vec4<u32>(32u))) ^ vec4<i32>(u_input.b, u_input.b, 45852i << (var_1.a.x % 32u), _wgslsmith_mod_i32(u_input.b, u_input.b))) & _wgslsmith_div_vec4_i32(~vec4<i32>(var_1.b ^ u_input.b, abs(-56118i), abs(var_1.b), -1i), ~firstTrailingBit(select(vec4<i32>(1i, var_1.b, -15760i, var_1.c), vec4<i32>(2147483647i, u_input.b, var_1.b, 1i), vec4<bool>(false, true, true, false))));
    let var_4 = var_1.b & -1i;
    let x = u_input.a;
    s_output = StorageBuffer(-firstTrailingBit(firstTrailingBit(-27496i)) | -48141i, ~(~_wgslsmith_add_vec2_u32(func_6(13084u, Struct_2(var_1.a, -1i, 0i), true, 636f).a.yz, ~vec2<u32>(1u, var_2.x))), abs(var_3.wz), max(firstTrailingBit(vec3<u32>(~0u, var_2.x, 4294967295u)), var_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-1164f, 717f)))))));
}

