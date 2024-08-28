struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: i32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_1 = Struct_1(vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<f32>(1000f, 345f, 159f), 0i, vec2<i32>(32770i, -19461i), vec3<u32>(18624u, 1u, 4294967295u));

var<private> global2: bool = false;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: vec4<i32>) -> vec4<u32> {
    var var_0 = Struct_1(countOneBits(global1.a), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -848f))), _wgslsmith_f_op_f32(ceil(global1.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) * _wgslsmith_div_f32(646f, -1146f)))), _wgslsmith_mult_i32(u_input.a, 32035i), _wgslsmith_mod_vec2_i32(~arg_2.yx >> (firstTrailingBit(vec2<u32>(global1.a.x, u_input.c)) % vec2<u32>(32u)), ~(~(global1.d | vec2<i32>(-1i, u_input.a)))), ~(~min(vec3<u32>(4786u, 81486u, global1.e.x), vec3<u32>(0u, 60796u, global1.a.x))) << (vec3<u32>(global1.a.x, ~16829u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1u, global1.e.x), vec3<u32>(9221u, 1u, 4294967295u)), min(108069u, 34108u), ~global1.e.x)) % vec3<u32>(32u)));
    var var_1 = 6633u;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) * _wgslsmith_f_op_f32(abs(var_0.b.x))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(var_0.b.x, var_0.b.x, false)))) - var_0.b.x))));
    let var_3 = !vec4<bool>(any(!select(vec4<bool>(arg_1.b, arg_1.b, true, true), vec4<bool>(arg_1.a, arg_1.b, true, arg_1.b), true)), all(!select(vec4<bool>(false, false, true, arg_1.b), vec4<bool>(arg_1.b, arg_1.b, arg_1.b, false), false)), arg_1.b, arg_1.a);
    let var_4 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_0.b), global1.b, var_3.zyx)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1387f, _wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(var_2 - global1.b.x)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1752f), 513f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) + _wgslsmith_f_op_f32(var_2 * 1783f))), _wgslsmith_f_op_vec3_f32(select(var_0.b, _wgslsmith_div_vec3_f32(vec3<f32>(-1248f, global1.b.x, -1249f), vec3<f32>(1218f, -1379f, -1161f)), -var_0.c != arg_0)), any(var_3.zyy))), vec3<bool>(select(var_3.x, var_3.x != (var_0.b.x <= 1171f), all(vec4<bool>(true, true, false, arg_1.a))), true, true)));
    return reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(var_0.e, vec3<u32>(u_input.b, 1u, 0u)), u_input.b, global1.e.x, firstTrailingBit(4328u)), ~(vec4<u32>(var_0.a.x, 4294967295u, 0u, global1.e.x) & vec4<u32>(u_input.b, u_input.c, var_0.e.x, global1.a.x)))) << (vec4<u32>(select(_wgslsmith_mult_u32(~22598u, abs(u_input.c)), max(0u, 1u), false), ~var_0.a.x, _wgslsmith_mod_u32(firstLeadingBit(var_0.a.x), 1u), _wgslsmith_mult_u32(select(firstLeadingBit(var_0.a.x), 4294967295u & global1.a.x, arg_1.b | arg_1.a), var_0.a.x)) % vec4<u32>(32u));
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    global2 = _wgslsmith_dot_vec4_u32(func_3(u_input.a, arg_0, ~(-vec4<i32>(2147483647i, 1i, 0i, -1i))), vec4<u32>(~u_input.c << (global1.e.x % 32u), countOneBits(global1.a.x | 0u), ~0u, ~(0u | u_input.b))) >= (firstLeadingBit(58946u) >> (abs(0u | _wgslsmith_clamp_u32(0u, 4294967295u, u_input.c)) % 32u));
    var var_0 = max(_wgslsmith_add_vec2_u32(vec2<u32>(global1.e.x, u_input.c), vec2<u32>(~4294967295u, ~(4294967295u >> (global1.e.x % 32u)))), func_3(u_input.a, Struct_2(select(false, arg_0.a, !arg_0.a), arg_0.b), abs(_wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(u_input.a, u_input.a, global1.c, 1i)), abs(vec4<i32>(u_input.a, u_input.a, global1.c, u_input.a))))).xw);
    var var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(global1.b.yz - global1.b.yy), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.b.x, -274f), vec2<f32>(global1.b.x, -148f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(223f, global1.b.x) - global1.b.xx))))))));
    var_1 = vec2<f32>(107f, global1.b.x);
    let var_2 = Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(global1.a.x, 1u), 1u), global1.e.x, ~u_input.b), vec3<u32>(u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, var_0.x, var_0.x) << (vec4<u32>(var_0.x, u_input.b, u_input.c, 27161u) % vec4<u32>(32u)), vec4<u32>(u_input.b, global1.a.x, u_input.c, 0u) >> (vec4<u32>(14803u, global1.a.x, 14392u, var_0.x) % vec4<u32>(32u))), _wgslsmith_div_u32(4294967295u, select(var_0.x, 25236u, true))), vec3<u32>(35334u, _wgslsmith_add_u32(max(27920u, u_input.c), _wgslsmith_dot_vec3_u32(global1.e, vec3<u32>(global1.e.x, global1.a.x, 1u))), var_0.x)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.b.x))), _wgslsmith_f_op_f32(-508f * _wgslsmith_f_op_f32(-global1.b.x))), global1.b), u_input.a, abs(vec2<i32>(-1i) * -countOneBits(vec2<i32>(-1i, global1.c))), vec3<u32>(~(~_wgslsmith_mult_u32(var_0.x, 3596u)), _wgslsmith_div_u32(1u, select(~0u, firstLeadingBit(25848u), any(vec4<bool>(arg_0.a, arg_0.a, arg_0.a, false)))), ~global1.a.x));
    return var_2;
}

fn func_4(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_1) -> bool {
    var var_0 = select(_wgslsmith_dot_vec2_i32(max(_wgslsmith_add_vec2_i32(vec2<i32>(global1.d.x, arg_1.x), func_2(Struct_2(false, true)).d), select(arg_2.d, vec2<i32>(1483i, 13702i), true) | arg_2.d), arg_2.d), _wgslsmith_add_i32(_wgslsmith_mod_i32(abs(arg_2.c), 1i), -1i), all(vec4<bool>(true, false & any(vec3<bool>(false, true, true)), all(vec2<bool>(true, true)), true != all(vec4<bool>(false, false, false, true)))));
    var_0 = ~(~1i) >> (global1.a.x % 32u);
    let var_1 = -_wgslsmith_mod_i32(firstTrailingBit(arg_1.x) << (u_input.c % 32u), ~(-41744i));
    let var_2 = _wgslsmith_div_f32(441f, _wgslsmith_f_op_f32(round(arg_2.b.x)));
    let var_3 = select(vec4<bool>((0u <= _wgslsmith_dot_vec2_u32(arg_2.e.zy, arg_2.a.xz)) | (func_2(Struct_2(true, false)).c < countOneBits(arg_2.d.x)), all(vec3<bool>(true, true, true)), 226f < global1.b.x, select(all(vec3<bool>(true, true, true)), true, true)), select(!vec4<bool>(true, false, 57645i <= global1.d.x, true), vec4<bool>(!any(vec4<bool>(false, false, false, true)), any(vec4<bool>(true, true, true, true)), false, -2147483647i < _wgslsmith_div_i32(-1i, var_1)), vec4<bool>(!all(vec3<bool>(true, true, false)), !all(vec2<bool>(true, false)), true, true || select(false, false, false))), !select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), all(vec3<bool>(false, true, false))), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true)), !select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), false)));
    return true;
}

fn func_5(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: bool) -> Struct_3 {
    let var_0 = arg_1.x;
    let var_1 = -(~vec2<i32>(max(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.d.x, 0i), global1.d), 2147483647i), -47507i));
    let var_2 = abs(vec3<u32>(reverseBits(~func_3(var_1.x, Struct_2(false, true), vec4<i32>(var_1.x, var_1.x, var_1.x, global1.d.x)).x), 14338u, abs(global1.e.x) | 1u));
    global1 = Struct_1(vec3<u32>(firstTrailingBit(1u), global1.a.x, 10756u), global1.b, func_2(Struct_2(!(4294967295u == u_input.c), true)).c, var_1, ~(~_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(arg_0.wzz, arg_0.zzy), countOneBits(vec3<u32>(u_input.b, u_input.b, arg_0.x)))));
    let var_3 = select(select(vec2<bool>(arg_1.x, (arg_1.x && var_0) || any(vec2<bool>(false, var_0))), vec2<bool>(arg_1.x, all(vec3<bool>(true, false, true))), !var_0 != (true || (true && var_0))), select(arg_1.zz, select(!arg_1.zy, vec2<bool>(var_0, true), true), false && !select(false, false, true)), !var_0);
    return Struct_3(u_input.a);
}

fn func_6(arg_0: Struct_3) -> Struct_1 {
    var var_0 = select(vec4<bool>(true, _wgslsmith_mod_i32(func_5(vec4<u32>(u_input.b, 1u, 1u, 53100u), vec3<bool>(true, false, false), true).a, -47366i) == abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.a, -1i, 25494i), vec4<i32>(global1.d.x, -1i, global1.d.x, 0i))), !func_4(_wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_sub_vec2_i32(global1.d, vec2<i32>(arg_0.a, arg_0.a)), func_2(Struct_2(false, true))), true), vec4<bool>(all(select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, false))), !(-1443f == global1.b.x), true, true), select(vec4<bool>(true, any(vec2<bool>(true, true)), false, func_4(global1.b.x, ~vec2<i32>(arg_0.a, -20945i), Struct_1(global1.e, global1.b, 37810i, vec2<i32>(arg_0.a, arg_0.a), global1.e))), vec4<bool>(true, true, true, true), select(false, true, any(vec2<bool>(true, true)))));
    var var_1 = select(select(!select(vec4<bool>(var_0.x, true, true, var_0.x), !vec4<bool>(true, var_0.x, var_0.x, var_0.x), !var_0.x), select(vec4<bool>(false, true, false, all(vec2<bool>(var_0.x, var_0.x))), vec4<bool>(func_4(global1.b.x, vec2<i32>(5317i, global1.c), Struct_1(vec3<u32>(74581u, u_input.c, 4294967295u), global1.b, -1i, vec2<i32>(global1.d.x, 2147483647i), global1.a)), global1.a.x <= 91540u, all(vec3<bool>(true, var_0.x, var_0.x)), true), vec4<bool>(true, true, true, true)), var_0.x), select(vec4<bool>(_wgslsmith_f_op_f32(-global1.b.x) != _wgslsmith_f_op_f32(sign(global1.b.x)), !func_4(global1.b.x, global1.d, Struct_1(global1.e, global1.b, -49068i, global1.d, global1.e)), true, var_0.x && var_0.x), vec4<bool>(all(!var_0.zyx), false, var_0.x, !var_0.x), !select(vec4<bool>(var_0.x, true, true, false), !vec4<bool>(var_0.x, true, var_0.x, var_0.x), true)), var_0.x);
    let var_2 = 1u;
    global1 = Struct_1(vec3<u32>(~5165u, 47497u, 8727u) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(~global1.e.x, var_2, func_3(global1.c, Struct_2(var_1.x, var_1.x), vec4<i32>(54095i, 0i, -37555i, global1.d.x)).x), ~(~global1.a)) % vec3<u32>(32u)), global1.b, arg_0.a, -global1.d, global1.a);
    let var_3 = min(vec2<u32>(global1.a.x & ~0u, firstTrailingBit(reverseBits(1u))), _wgslsmith_mod_vec2_u32(global1.a.zy >> (global1.e.zy % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(~vec2<u32>(var_2, 46739u) & (vec2<u32>(58122u, 4294967295u) & vec2<u32>(global1.a.x, 0u)), abs(_wgslsmith_mult_vec2_u32(global1.e.xx, global1.e.zy)))));
    return Struct_1(firstLeadingBit(vec3<u32>(~var_2, ~select(global1.a.x, 12721u, true), ~(~global1.e.x))), global1.b, u_input.a, -vec2<i32>(global1.c, func_2(Struct_2(true, var_1.x)).c), ~global1.a);
}

fn func_1(arg_0: Struct_2) -> vec3<f32> {
    global1 = func_6(func_5(_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(u_input.c, 495u, 0u, 104661u)), vec4<u32>(~1u, 4294967295u, _wgslsmith_clamp_u32(u_input.c, 1u, 48751u), global1.e.x)), vec3<bool>(func_4(_wgslsmith_div_f32(-134f, global1.b.x), global1.d, func_2(Struct_2(arg_0.a, arg_0.b))), any(vec4<bool>(true, arg_0.a, arg_0.b, arg_0.b)), !arg_0.a | all(vec4<bool>(false, arg_0.b, true, false))), arg_0.a));
    var var_0 = func_5(vec4<u32>(1u, u_input.c, _wgslsmith_div_u32(0u, u_input.c), u_input.c), vec3<bool>(arg_0.a, true, false), true);
    let var_1 = func_2(Struct_2(arg_0.b, !func_4(_wgslsmith_f_op_f32(floor(global1.b.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(global1.c, 2147483647i), global1.d), Struct_1(global1.e, global1.b, 17159i, global1.d, global1.e))));
    global2 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_6(Struct_3(var_1.c)).b.x)) >= _wgslsmith_f_op_f32(global1.b.x * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(var_1.b.x, -1786f))))));
    var var_2 = countOneBits(vec4<u32>(~(~var_1.a.x << (1u % 32u)), ~u_input.b, 1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 0u, u_input.b, global1.a.x), abs(vec4<u32>(48258u, 4294967295u, 4294967295u, 1063u)))));
    return vec3<f32>(-2204f, _wgslsmith_f_op_f32(764f * _wgslsmith_f_op_f32(abs(global1.b.x))), func_6(Struct_3(var_0.a)).b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    var var_0 = vec4<f32>(global1.b.x, global1.b.x, global1.b.x, 815f);
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_1(Struct_2(true, false))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1126f, -192f, 448f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-340f, var_0.x, var_0.x))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, global1.b.x, 1171f), var_0.xzy))) * global1.b) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.x, var_0.x, 1356f), _wgslsmith_f_op_vec3_f32(abs(var_0.wyy))))))), select(select(select(vec3<bool>(true, false, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true), true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), all(vec3<bool>(true, true, true))), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true))), vec3<bool>(func_4(_wgslsmith_f_op_f32(-global1.b.x), global1.d, Struct_1(vec3<u32>(u_input.b, 1u, u_input.b), vec3<f32>(1199f, global1.b.x, global1.b.x), -6663i, global1.d, global1.a)), false, true), false)));
    var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-455f, global1.b.x)), -1794f, _wgslsmith_f_op_f32(var_1.x * var_1.x), -471f) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.x, global1.b.x, 1000f, var_1.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_1.x, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_1.x, -602f, 241f)))), any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), false)))))));
    global1 = func_2(Struct_2(func_4(1152f, min(vec2<i32>(-2147483647i, 2147483647i), select(global1.d, vec2<i32>(u_input.a, -14870i), false)), Struct_1(vec3<u32>(4294967295u, 0u, 86514u), global1.b, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 45903i, u_input.a, u_input.a), vec4<i32>(u_input.a, -34366i, 2147483647i, u_input.a)), ~vec2<i32>(global1.d.x, u_input.a), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 4294967295u, u_input.b), global1.e))), all(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true)))));
    let var_2 = _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(firstTrailingBit(-1i), 21736i), select(~_wgslsmith_add_vec2_i32(global1.d, global1.d), _wgslsmith_div_vec2_i32(global1.d, vec2<i32>(-39062i, global1.c)), all(vec2<bool>(false, true)) && true)), func_2(Struct_2(true, true)).d);
    global2 = !(((_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.a, global1.c, global1.c), vec4<i32>(var_2, var_2, u_input.a, u_input.a)) << (abs(u_input.b) % 32u)) <= _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, var_2, var_2, -1i), vec4<i32>(u_input.a, global1.d.x, u_input.a, global1.d.x), vec4<i32>(2147483647i, -2147483647i, u_input.a, var_2)), vec4<i32>(-1i, global1.d.x, -1i, u_input.a) << (vec4<u32>(global1.a.x, u_input.c, global1.a.x, global1.a.x) % vec4<u32>(32u)))) | !(var_2 == u_input.a));
    let var_3 = func_2(Struct_2(all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true))) | (_wgslsmith_f_op_f32(select(global1.b.x, var_0.x, false)) <= -272f), true));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~max(global1.a.xz, global1.e.yz)) & firstLeadingBit(max(global1.e.xy, abs(global1.a.zx))), _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, i32(-1i) * -3506i, 1i), _wgslsmith_sub_vec3_i32(min(vec3<i32>(global1.d.x, var_3.d.x, var_2), vec3<i32>(-9692i, -1i, u_input.a)), vec3<i32>(global1.d.x, -1i, 0i)), ~_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 29147i, var_2), vec3<i32>(var_3.d.x, u_input.a, global1.d.x))), vec3<i32>(29421i, var_2, _wgslsmith_mult_i32(38605i >> (1u % 32u), global1.d.x))));
}

