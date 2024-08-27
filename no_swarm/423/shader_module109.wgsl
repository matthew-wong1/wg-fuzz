struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: f32,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec3<bool>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_2 = Struct_2(vec3<bool>(true, false, true), 700f, -1037f);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: vec4<i32>, arg_2: vec4<i32>) -> vec3<f32> {
    let var_0 = -(arg_1.zxw >> (_wgslsmith_mult_vec3_u32(~countOneBits(vec3<u32>(3442u, u_input.a, u_input.a)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 3739u, 4294967295u), vec3<u32>(5748u, u_input.a, u_input.a))) % vec3<u32>(32u)));
    let var_1 = Struct_4(_wgslsmith_mult_vec4_u32(~(~(~vec4<u32>(u_input.a, 11227u, 1u, 0u))), _wgslsmith_add_vec4_u32(vec4<u32>(34455u, _wgslsmith_add_u32(u_input.a, u_input.a), abs(0u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 91173u, u_input.a, 0u), vec4<u32>(31049u, u_input.a, 0u, 27271u))), abs(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.a, 35345u), vec4<u32>(1u, u_input.a, u_input.a, u_input.a))))), Struct_1(select(firstTrailingBit(countOneBits(vec3<u32>(0u, 22839u, 38915u))), ~vec3<u32>(0u, u_input.a, u_input.a), vec3<bool>(true, !global1.a.x, !global1.a.x)), max(select(u_input.a, u_input.a, true), u_input.a), 1u), vec3<bool>(select(true, any(global1.a.yz), global1.a.x), arg_0 | false, arg_0), vec4<i32>(select(~u_input.e.x, abs(u_input.d.x << (u_input.a % 32u)), !(u_input.e.x <= -1i)), -2147483647i, i32(-1i) * -_wgslsmith_mod_i32(var_0.x, u_input.e.x), countOneBits(arg_2.x << (~u_input.a % 32u))));
    var var_2 = 3444i;
    var var_3 = var_1.d.xwy;
    global0 = !(~(abs(32649i) | countOneBits(arg_1.x)) <= -36230i);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b, global1.b, global1.c)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(145f, 1000f, -284f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(global1.b)), 1529f, global1.b) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1526f, global1.b, 485f))))));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: i32) -> vec3<u32> {
    return ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, ~u_input.a), ~vec3<u32>(0u, u_input.a, u_input.a)));
}

fn func_2(arg_0: vec3<f32>) -> u32 {
    let var_0 = u_input.d;
    var var_1 = Struct_1(abs(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(10187u, u_input.a, u_input.a), vec3<u32>(38492u, 4294967295u, 73934u)), vec3<u32>(u_input.a, u_input.a, 1u)) >> (func_4(-vec4<i32>(var_0.x, 2147483647i, var_0.x, 47633i), _wgslsmith_f_op_vec3_f32(func_3(global1.a.x, vec4<i32>(-2147483647i, -10883i, u_input.e.x, 29591i), vec4<i32>(var_0.x, 21355i, 0i, var_0.x))), abs(-2147483647i)) % vec3<u32>(32u))), ~u_input.a, ~11694u);
    global1 = Struct_2(vec3<bool>(any(vec2<bool>(all(vec4<bool>(false, false, global1.a.x, true)), all(vec4<bool>(true, global1.a.x, global1.a.x, true)))), !(all(global1.a.yz) | true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global1.c, 2012f)), _wgslsmith_f_op_f32(-global1.c)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.b)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) + _wgslsmith_f_op_f32(sign(arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, arg_0.x)))), _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(global1.c * _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_div_f32(arg_0.x, global1.c)))));
    let var_2 = select(global1.a.zz, !(!select(vec2<bool>(global1.a.x, false), global1.a.yx, arg_0.x != arg_0.x)), !(!select(select(global1.a.yz, vec2<bool>(global1.a.x, global1.a.x), global1.a.yy), !global1.a.zz, select(vec2<bool>(global1.a.x, global1.a.x), vec2<bool>(global1.a.x, global1.a.x), global1.a.x))));
    global0 = any(vec2<bool>(any(global1.a), var_2.x));
    return ~0u;
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -244f), _wgslsmith_f_op_f32(f32(-1f) * -1009f)), _wgslsmith_f_op_f32(-global1.c))));
    var var_1 = 317f;
    let var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-999f, var_0.x, -1074f) - vec3<f32>(var_0.x, 1092f, global1.b))))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.zx)));
    var var_3 = (vec3<i32>(-1i) * -(~(~vec3<i32>(u_input.e.x, 18600i, u_input.d.x)))) << (vec3<u32>(func_2(var_2), 1u, 4294967295u) % vec3<u32>(32u));
    return Struct_1(vec3<u32>(1u, ~_wgslsmith_add_u32(22421u, 34146u), u_input.a) & vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 12290u, u_input.a, 17232u), max(vec4<u32>(0u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 21455u, u_input.a, u_input.a))), 0u, _wgslsmith_div_u32(1u, 8225u ^ u_input.a)), u_input.a, ~0u);
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: vec3<i32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b, -1146f, -1979f) + vec3<f32>(-119f, global1.c, 283f)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1.b, global1.b, global1.c), vec3<f32>(global1.c, global1.c, global1.b)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-366f, 1811f, global1.c))))));
    global1 = Struct_2(!vec3<bool>(true, (u_input.c ^ 2147483647i) != _wgslsmith_mult_i32(arg_2.x, arg_2.x), global1.a.x), var_0.x, var_0.x);
    global1 = Struct_2(!vec3<bool>(false, global1.a.x, true), _wgslsmith_f_op_f32(step(global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-443f)) - _wgslsmith_f_op_f32(select(-1000f, -613f, false)))))), var_0.x);
    var var_1 = arg_1.c.x;
    global1 = Struct_2(select(select(arg_1.c, arg_1.c, !vec3<bool>(arg_1.c.x, false, arg_1.c.x)), !global1.a, !select(select(vec3<bool>(arg_1.c.x, true, arg_1.c.x), vec3<bool>(false, global1.a.x, global1.a.x), false), select(global1.a, arg_1.c, true), !arg_1.c)), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_vec3_f32(func_3(false, vec4<i32>(arg_2.x, u_input.e.x, i32(-1i) * -7125i, abs(arg_2.x)), vec4<i32>(~(-31498i), u_input.d.x, -arg_2.x, _wgslsmith_dot_vec4_i32(arg_1.d, vec4<i32>(-1i, arg_1.d.x, 299i, arg_1.d.x))))).x));
    return _wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(-arg_1.d.ww, vec2<i32>(10505i, arg_2.x)), _wgslsmith_div_i32(arg_2.x, i32(-1i) * -27846i)), arg_1.d.x) | u_input.e.x;
}

fn func_6(arg_0: i32) -> Struct_2 {
    let var_0 = Struct_1(~(vec3<u32>(u_input.a, func_4(vec4<i32>(u_input.b, -2335i, arg_0, 1i), vec3<f32>(1510f, -837f, global1.b), 55i).x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(u_input.a, 8786u, u_input.a))) ^ ~vec3<u32>(u_input.a, 0u, 43875u)), ~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(4294967295u, 6267u, 949u, 0u) << (vec4<u32>(31548u, u_input.a, 11128u, u_input.a) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 4966u, u_input.a, u_input.a), vec4<u32>(u_input.a, 0u, 43142u, 11906u)), ~vec4<u32>(u_input.a, u_input.a, u_input.a, 1u))), abs((1u ^ u_input.a) | countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 11152u), vec3<u32>(24885u, u_input.a, 0u)))));
    var var_1 = vec3<bool>(any(!select(select(global1.a, vec3<bool>(global1.a.x, global1.a.x, global1.a.x), vec3<bool>(global1.a.x, global1.a.x, global1.a.x)), !vec3<bool>(global1.a.x, global1.a.x, global1.a.x), !global1.a.x)), ~reverseBits(arg_0) < _wgslsmith_mod_i32(~_wgslsmith_add_i32(arg_0, u_input.e.x), _wgslsmith_mult_i32(arg_0, u_input.d.x) & _wgslsmith_sub_i32(61946i, 5342i)), false);
    let var_2 = Struct_3(88720u, global1.a.x, var_0, _wgslsmith_sub_vec2_u32(abs(_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(var_0.a.xy, var_0.a.zy), var_0.a.zz)), var_0.a.zx));
    global0 = all(global1.a);
    global1 = Struct_2(vec3<bool>(all(select(!vec4<bool>(global1.a.x, var_1.x, true, true), vec4<bool>(var_2.b, var_2.b, false, var_1.x), global1.c <= 2108f)), global1.a.x, true | (any(vec3<bool>(var_1.x, var_2.b, false)) | !var_2.b)), _wgslsmith_f_op_f32(-1161f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1000f, 1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1250f - global1.c)))));
    return Struct_2(global1.a, _wgslsmith_f_op_vec3_f32(func_3(true, vec4<i32>(2147483647i, countOneBits(arg_0), ~reverseBits(-119278i), arg_0), _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_div_i32(0i, 2147483647i), -2147483647i, arg_0 | arg_0, ~53181i), firstTrailingBit(-vec4<i32>(arg_0, arg_0, u_input.e.x, arg_0))))).x, _wgslsmith_f_op_f32(trunc(global1.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c) - 1020f)))) > global1.b;
    global1 = func_6(~func_5(abs(vec2<u32>(u_input.a, u_input.a)), Struct_4(abs(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), func_1(), select(global1.a, vec3<bool>(global1.a.x, global1.a.x, global1.a.x), global1.a.x), vec4<i32>(30177i, -24849i, u_input.e.x, u_input.d.x)), min(firstTrailingBit(vec3<i32>(-37791i, -776i, 1i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-48406i, -2147483647i, 0i), vec3<i32>(2147483647i, u_input.e.x, u_input.b), vec3<i32>(1i, u_input.c, -2147483647i)))));
    let var_1 = _wgslsmith_add_vec4_u32(vec4<u32>(func_4(~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.d.x, u_input.b, u_input.e.x), vec4<i32>(u_input.d.x, 41181i, 2147483647i, -39690i)), vec3<f32>(-1000f, _wgslsmith_f_op_f32(sign(346f)), 570f), -_wgslsmith_dot_vec2_i32(u_input.d, u_input.e)).x, 4294967295u, ~105374u, reverseBits(_wgslsmith_clamp_u32(~5412u, ~u_input.a, u_input.a))), vec4<u32>(~u_input.a, abs(u_input.a), u_input.a, 4294967295u));
    let var_2 = func_5(var_1.yz, Struct_4(~select(~vec4<u32>(u_input.a, u_input.a, 0u, 33678u), vec4<u32>(4294967295u, 1217u, u_input.a, 0u), func_6(u_input.b).a.x), Struct_1(_wgslsmith_sub_vec3_u32(~var_1.wwz, countOneBits(vec3<u32>(var_1.x, 1u, 51098u))), abs(min(u_input.a, 78776u)), ~58408u), vec3<bool>(global1.a.x & all(vec3<bool>(true, global1.a.x, global1.a.x)), !global1.a.x && global1.a.x, true), vec4<i32>(abs(-62188i), i32(-1i) * -u_input.e.x, firstLeadingBit(abs(u_input.c)), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.e.x, u_input.e.x)), vec2<i32>(-31835i, 1i)))), vec3<i32>(~(-1i ^ u_input.b), ~u_input.c & _wgslsmith_add_i32(u_input.e.x << (u_input.a % 32u), -31001i), abs(24152i)));
    var var_3 = max(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(1i, var_2), _wgslsmith_add_i32(-11125i, 2147483647i)), -(var_2 | -49036i), -1i, 21608i), ~(vec4<i32>(u_input.e.x, var_2, -1i, u_input.d.x) << (var_1 % vec4<u32>(32u)))), ~firstTrailingBit(vec4<i32>(var_2, abs(-2147483647i), 0i, ~u_input.e.x)));
    var var_4 = Struct_4(vec4<u32>(_wgslsmith_div_u32(u_input.a, ~var_1.x) | 0u, abs(u_input.a), var_1.x, (0u & _wgslsmith_clamp_u32(10170u, 4294967295u, var_1.x)) ^ max(~var_1.x, _wgslsmith_sub_u32(4294967295u, var_1.x))), func_1(), global1.a, select(abs(min(vec4<i32>(var_2, var_3.x, 1i, -10543i), vec4<i32>(1i, 3378i, var_3.x, u_input.e.x)) >> (var_1 % vec4<u32>(32u))), vec4<i32>(~var_3.x, i32(-1i) * -2147483647i, -1i, -29945i), !(!select(vec4<bool>(true, true, true, global1.a.x), vec4<bool>(global1.a.x, true, true, global1.a.x), true))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec4_u32(var_4.a, vec4<u32>(35848u, _wgslsmith_add_u32(4294967295u, 0u), abs(0u), firstTrailingBit(4294967295u))));
}

