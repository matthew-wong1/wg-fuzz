struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>) -> i32 {
    let var_0 = Struct_1(_wgslsmith_sub_i32(select(abs(-1i), u_input.b | select(0i, u_input.a.x, true), all(vec3<bool>(arg_0.b, true, true))), abs(u_input.a.x)), any(vec2<bool>(all(select(arg_0.d.xz, arg_1.xy, arg_1.xy)), all(vec2<bool>(true, arg_1.x)))), false, arg_0.d);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -417f);
    let var_2 = firstLeadingBit(~(~vec2<i32>(1i, var_0.a)));
    var var_3 = Struct_1(abs(u_input.a.x), arg_1.x, var_0.c, var_0.d);
    let var_4 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1))), -1793f, true | var_0.b)), _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-140f, -587f)))))));
    return -_wgslsmith_add_i32(1i, 1i);
}

fn func_2(arg_0: bool) -> vec3<f32> {
    let var_0 = countOneBits(_wgslsmith_sub_i32(min(_wgslsmith_sub_i32(select(2147483647i, 0i, true), -u_input.c), _wgslsmith_mult_i32(func_3(Struct_1(u_input.d, arg_0, arg_0, vec4<bool>(arg_0, arg_0, arg_0, false)), vec4<bool>(false, arg_0, arg_0, true)), u_input.b & u_input.b)), _wgslsmith_add_i32(reverseBits(u_input.b), func_3(Struct_1(0i, arg_0, arg_0, vec4<bool>(arg_0, arg_0, arg_0, arg_0)), vec4<bool>(arg_0, false, true, arg_0)) ^ -2147483647i)));
    let var_1 = Struct_1(-(i32(-1i) * -5712i) ^ max(min(_wgslsmith_div_i32(u_input.d, var_0), ~(-43667i)), 15721i), any(select(select(select(vec2<bool>(true, arg_0), vec2<bool>(false, arg_0), vec2<bool>(arg_0, arg_0)), !vec2<bool>(arg_0, arg_0), all(vec4<bool>(arg_0, true, arg_0, arg_0))), vec2<bool>(true, any(vec2<bool>(arg_0, true))), !(!arg_0))), arg_0, select(vec4<bool>(select(!arg_0, all(vec2<bool>(false, arg_0)), select(arg_0, false, arg_0)), false, true, !any(vec4<bool>(false, arg_0, arg_0, arg_0))), !select(!vec4<bool>(arg_0, true, true, false), !vec4<bool>(false, arg_0, arg_0, true), arg_0), vec4<bool>(true, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 7059u), vec2<u32>(55976u, 0u)) <= 0u, false, false)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(434f, -1916f))), 604f, any(var_1.d.wyw))))));
    var var_3 = ~(~1u) & _wgslsmith_mult_u32(~max(~46609u, firstLeadingBit(1357u)), ~_wgslsmith_clamp_u32(_wgslsmith_div_u32(41374u, 7133u), firstLeadingBit(38076u), reverseBits(4294967295u)));
    let var_4 = ~(~min(_wgslsmith_div_vec2_u32(vec2<u32>(4521u, 16840u), vec2<u32>(1u, 1u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(5636u, 0u), vec2<u32>(0u, 89901u)))) >> (vec2<u32>(firstLeadingBit(4294967295u), ~(~(~1u))) % vec2<u32>(32u));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2 - var_2))), _wgslsmith_f_op_f32(-var_2)), 737f, var_2) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(2261f, var_2, _wgslsmith_f_op_f32(f32(-1f) * -328f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, var_2, var_2))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, var_2, var_2) + vec3<f32>(-613f, var_2, var_2))))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: f32) -> bool {
    let var_0 = firstLeadingBit(firstTrailingBit(-vec4<i32>(8847i, u_input.b, -19382i, u_input.d))) & (~_wgslsmith_mult_vec4_i32(vec4<i32>(0i, u_input.a.x, u_input.d, u_input.a.x), min(vec4<i32>(u_input.d, 1i, u_input.b, u_input.b), vec4<i32>(u_input.d, -30481i, u_input.d, u_input.c))) >> (vec4<u32>(30550u, _wgslsmith_add_u32(_wgslsmith_div_u32(33440u, 11873u), 0u), ~(~62311u), _wgslsmith_dot_vec3_u32(vec3<u32>(14494u, 0u, 29207u), vec3<u32>(4294967295u, 4294967295u, 0u)) | countOneBits(35654u)) % vec4<u32>(32u)));
    var var_1 = -1i;
    var var_2 = ~vec4<u32>(4294967295u, 4294967295u, 94267u, 0u);
    var_2 = abs(vec4<u32>(~var_2.x, _wgslsmith_div_u32(0u, max(var_2.x, 49263u)), 0u, 0u) << ((vec4<u32>(~0u, 1u, var_2.x, _wgslsmith_sub_u32(var_2.x, var_2.x)) << (vec4<u32>(4294967295u, 1u, countOneBits(7864u), max(var_2.x, var_2.x)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var_1 = _wgslsmith_dot_vec2_i32(abs(firstLeadingBit(countOneBits(vec2<i32>(var_0.x, var_0.x))) & var_0.yx), abs(vec2<i32>(_wgslsmith_add_i32(firstTrailingBit(u_input.a.x), reverseBits(var_0.x)), -2147483647i)));
    return !all(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), true), select(vec3<bool>(false, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), true)));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = select(-30590i, -10572i, func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1511f, -710f, 1072f) - vec3<f32>(1172f, -1450f, -1935f)) + _wgslsmith_f_op_vec3_f32(func_2(arg_0.b)))), _wgslsmith_f_op_f32(-1000f - 808f)));
    var var_1 = -arg_0.a;
    var_1 = -_wgslsmith_dot_vec4_i32(select(_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.a, u_input.c, 2147483647i, 21528i), vec4<i32>(var_0, -45240i, u_input.d, arg_0.a)), -vec4<i32>(-24567i, -2147483647i, var_0, 7615i)), reverseBits(vec4<i32>(var_0, 2147483647i, 0i, -17159i) & vec4<i32>(0i, -2147483647i, -2147483647i, arg_0.a)), select(!arg_0.d, arg_0.d, true)), vec4<i32>(-1i, _wgslsmith_mult_i32(firstTrailingBit(var_0), arg_0.a), _wgslsmith_mod_i32(arg_0.a >> (3296u % 32u), _wgslsmith_clamp_i32(arg_0.a, var_0, 20571i)), 10072i));
    var_1 = -39866i;
    var var_2 = abs(var_0);
    return arg_0;
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: u32) -> Struct_1 {
    var var_0 = arg_1;
    let var_1 = arg_1;
    var_0 = func_1(func_1(arg_1));
    var var_2 = Struct_1(~var_0.a << (~4294967295u % 32u), !(!arg_1.b), firstLeadingBit(_wgslsmith_sub_u32(~arg_3, _wgslsmith_mult_u32(1u, 4294967295u))) <= arg_3, vec4<bool>(true, true, !any(!var_0.d), true));
    var var_3 = _wgslsmith_f_op_vec2_f32(-arg_0.xz);
    return Struct_1(-4860i, _wgslsmith_mod_u32(~countOneBits(4294967295u), arg_3) > _wgslsmith_dot_vec4_u32(vec4<u32>(arg_3, arg_3, 4261u, 0u) >> (vec4<u32>(767u, 82208u, arg_3, arg_3) % vec4<u32>(32u)), ~(~vec4<u32>(4294967295u, 87268u, 4294967295u, arg_3))), false, !(!arg_2));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1565f, -428f, -1955f, -1000f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, -1355f, -382f, 208f))) * vec4<f32>(-320f, 526f, 2096f, 485f)))), func_1(Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.d) | vec2<i32>(u_input.a.x, u_input.d), abs(vec2<i32>(u_input.a.x, u_input.b))), true, true, vec4<bool>(true, any(vec2<bool>(false, false)), true, false))), select(vec4<bool>(true, !(u_input.a.x >= 0i), true, func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(622f, -1000f, -529f)), 1f)), !vec4<bool>(any(vec2<bool>(true, false)), true, false, true), any(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false), vec3<bool>(false, true, true), false))), reverseBits(countOneBits(~(~25857u))));
    var var_1 = _wgslsmith_div_i32(2147483647i, ~(_wgslsmith_div_i32(func_5(vec4<f32>(1000f, -158f, -584f, -1122f), Struct_1(-2147483647i, var_0.d.x, true, var_0.d), vec4<bool>(false, true, var_0.c, var_0.b), 1u).a, ~1494i) >> (23361u % 32u)));
    var_1 = var_0.a;
    var_1 = -76303i;
    var_1 = u_input.a.x >> (~min(~min(58865u, 2478u), ~0u) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, 1u, 12828u, 60008u), ~vec4<u32>(36941u, 50401u, 5979u, 6483u), var_0.b | false) >> (~abs(vec4<u32>(0u, 4294967295u, 1u, 6596u)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(57897u, 0u, 1u, 6160u), vec4<u32>(36237u, 4294967295u, 1u, 4294967295u), vec4<u32>(50581u, 0u, 1u, 1u)), vec4<u32>(1u, 1u, 1u, 1u))));
}

