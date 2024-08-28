struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<bool>,
    d: vec2<f32>,
    e: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec4<u32>,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
}

struct Struct_5 {
    a: Struct_4,
    b: i32,
    c: i32,
    d: Struct_4,
    e: Struct_4,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec4<f32>) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.zxy)) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-562f, arg_1.x, arg_1.x), arg_1.zxw, vec3<bool>(false, true, true))) + _wgslsmith_f_op_vec3_f32(-arg_1.ywz)))));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(233f, _wgslsmith_div_f32(-1601f, -674f), _wgslsmith_f_op_f32(sign(-458f))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(633f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) - -1603f), var_0.x) - vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-331f + var_0.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_vec3_f32(func_3(-162f, vec4<f32>(var_0.x, 1046f, 680f, var_0.x))).x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-542f, var_0.x)))))));
    let var_1 = 861i;
    var var_2 = _wgslsmith_f_op_vec2_f32(step(var_0.xy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.yx))));
    return Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(696f, -227f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-261f, -649f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2199f, var_2.x, -351f) + vec3<f32>(var_0.x, -827f, var_0.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, -1295f, 3204f), vec3<f32>(-692f, var_0.x, 615f)))))), _wgslsmith_f_op_f32(trunc(var_0.x)));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_4, arg_3: f32) -> i32 {
    var var_0 = ~select(-(vec3<i32>(-1i) * -vec3<i32>(-41607i, -55807i, arg_2.b)), vec3<i32>(1i, -8994i, arg_2.b << (u_input.a % 32u)), arg_1.x);
    var_0 = vec3<i32>(-(arg_2.a ^ ~1i), 1i, 1i);
    return 1i;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: vec4<i32>, arg_3: u32) -> Struct_3 {
    var var_0 = Struct_5(Struct_4(_wgslsmith_add_i32(_wgslsmith_div_i32(arg_2.x >> (1u % 32u), arg_2.x), -2147483647i), select(-23198i, func_4(func_2(), arg_1.xx, Struct_4(0i, -30970i, u_input.a, 1u), _wgslsmith_f_op_vec3_f32(func_3(106f, vec4<f32>(-212f, -2012f, -674f, 1584f))).x), true), _wgslsmith_dot_vec4_u32(select(vec4<u32>(27775u, u_input.a, 4294967295u, u_input.a), ~vec4<u32>(30057u, arg_3, arg_3, 8679u), arg_1.x), select(vec4<u32>(arg_3, arg_3, 252u, 32902u), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_3, u_input.a, 4294967295u, 39342u), vec4<u32>(36148u, u_input.a, 4294967295u, arg_3)), arg_1.x)), u_input.a), _wgslsmith_mult_i32(firstLeadingBit(arg_2.x), firstTrailingBit(~(-1i))) << (~reverseBits(arg_3 ^ arg_3) % 32u), arg_0.x, Struct_4(1i, ~(-20951i) & -firstLeadingBit(arg_2.x), u_input.a, u_input.a), Struct_4(arg_2.x, arg_0.x, ~u_input.a, 1504u));
    var_0 = Struct_5(Struct_4(-var_0.c, 12569i, 1u, 1u), _wgslsmith_div_i32(279i, _wgslsmith_div_i32(8437i, -1i)) | -(~arg_2.x), arg_2.x, var_0.d, var_0.d);
    var var_1 = Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(106f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-1625f, 934f))))), _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-298f * -1593f)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(328f, 1408f, 315f, -840f), vec4<f32>(-1333f, 863f, 830f, -1040f)))))).x, true)), true, min(vec4<u32>(arg_3, var_0.a.c, 18269u, _wgslsmith_sub_u32(19467u, ~var_0.d.d)), vec4<u32>(~var_0.d.d, 4294967295u & _wgslsmith_mult_u32(21189u, u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(var_0.d.c, u_input.a)), ~(~arg_3))));
    var_0 = Struct_5(Struct_4(_wgslsmith_clamp_i32(abs(-var_0.a.a), arg_0.x, arg_2.x), ~23790i, 0u, select(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(14849u, var_1.c.x, u_input.a), vec3<u32>(var_0.a.d, 0u, 1u) | var_1.c.yzz), true)), _wgslsmith_mod_i32(-2700i, arg_2.x), 14153i, var_0.d, var_0.a);
    var_1 = Struct_3(var_1.a, true, _wgslsmith_add_vec4_u32(countOneBits(var_1.c), ~(var_1.c & (vec4<u32>(0u, var_0.a.d, var_0.e.d, var_1.c.x) | var_1.c))));
    return Struct_3(_wgslsmith_f_op_f32(1004f - var_1.a), all(vec3<bool>(var_1.b, firstTrailingBit(-2147483647i) >= reverseBits(var_0.a.b), (arg_2.x | -1i) < -2147483647i)), ~(~vec4<u32>(_wgslsmith_clamp_u32(var_0.e.d, var_0.e.c, arg_3), arg_3, ~arg_3, var_0.e.d)));
}

fn func_5(arg_0: Struct_3) -> vec2<bool> {
    let var_0 = ~(-12341i);
    var var_1 = 0u;
    return vec2<bool>(true, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(1u, ~(~(u_input.a & 0u))), ~(abs(countOneBits(vec2<u32>(0u, u_input.a))) >> (_wgslsmith_mod_vec2_u32(select(vec2<u32>(1u, 0u), vec2<u32>(u_input.a, 0u), false), vec2<u32>(0u, u_input.a) << (vec2<u32>(79196u, u_input.a) % vec2<u32>(32u))) % vec2<u32>(32u))));
    let var_1 = max(u_input.a, 11526u);
    var_0 = vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(76159u, var_1, u_input.a, 0u), countOneBits(vec4<u32>(4229u, 61476u, 4294967295u, 11013u))) & vec4<u32>(_wgslsmith_add_u32(1u, 71003u), ~var_0.x, 1u, firstTrailingBit(var_1)), ~reverseBits(vec4<u32>(0u, var_1, u_input.a, 16348u) ^ vec4<u32>(1u, 85373u, 4299u, 4294967295u))), 1u);
    var var_2 = !select(vec3<bool>(true, true, true), vec3<bool>(select(true, false, var_1 >= 1u), any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), !select(false, false, true)), true);
    var var_3 = func_5(func_1(~_wgslsmith_div_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 1i, 1i, 1i)), vec3<bool>(all(select(vec4<bool>(true, false, var_2.x, var_2.x), vec4<bool>(var_2.x, false, false, true), vec4<bool>(false, true, false, false))), var_2.x, true), _wgslsmith_div_vec4_i32(select(_wgslsmith_add_vec4_i32(vec4<i32>(1i, -11361i, 38836i, 1i), vec4<i32>(-21578i, -10345i, 1i, -2147483647i)), vec4<i32>(-13750i, -11466i, -2147483647i, 0i), !vec4<bool>(var_2.x, var_2.x, var_2.x, true)), vec4<i32>(_wgslsmith_div_i32(-52123i, -50582i), -6541i, abs(-2147483647i), _wgslsmith_div_i32(1i, -1i))), 4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(-704f, _wgslsmith_add_u32(var_0.x, 4294967295u));
}

