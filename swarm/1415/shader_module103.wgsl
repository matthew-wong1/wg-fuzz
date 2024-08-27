struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: bool) -> bool {
    let var_0 = firstLeadingBit(_wgslsmith_clamp_vec4_u32(~(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 21148u, u_input.a.x, u_input.a.x), vec4<u32>(1u, u_input.a.x, 64907u, u_input.a.x)) | (vec4<u32>(1456u, u_input.a.x, u_input.a.x, u_input.a.x) | vec4<u32>(u_input.a.x, 43571u, 1u, 33487u))), abs(vec4<u32>(13661u >> (0u % 32u), _wgslsmith_mult_u32(u_input.a.x, 4294967295u), ~25389u, u_input.a.x << (1u % 32u))), abs(~(vec4<u32>(66248u, u_input.a.x, u_input.a.x, 30765u) << (vec4<u32>(u_input.a.x, 1u, 38993u, u_input.a.x) % vec4<u32>(32u))))));
    var var_1 = Struct_1(vec3<bool>(any(select(select(vec3<bool>(false, false, arg_1.x), vec3<bool>(arg_1.x, true, arg_0.x), vec3<bool>(false, arg_2, true)), !vec3<bool>(true, arg_1.x, false), select(vec3<bool>(arg_1.x, true, true), vec3<bool>(arg_0.x, false, arg_2), vec3<bool>(arg_1.x, arg_1.x, arg_2)))), all(select(select(vec4<bool>(false, false, true, false), vec4<bool>(arg_0.x, arg_1.x, arg_1.x, arg_0.x), vec4<bool>(arg_2, arg_0.x, arg_1.x, true)), !vec4<bool>(true, true, arg_0.x, arg_2), false)), 1u != firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(2317u, var_0.x), u_input.a))), -_wgslsmith_sub_i32(~1i, 1i), arg_2, _wgslsmith_clamp_i32(-1i, u_input.e.x << (u_input.a.x % 32u), -1i));
    var_1 = Struct_1(select(!var_1.a, !(!(!vec3<bool>(false, false, arg_0.x))), select(!select(vec3<bool>(arg_0.x, true, arg_1.x), var_1.a, var_1.a), var_1.a, var_1.a)), abs(633i), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -283f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(831f)) - -2029f)), reverseBits(32669i));
    var var_2 = any(vec2<bool>(true, true || arg_1.x));
    var_1 = Struct_1(select(!(!var_1.a), var_1.a, vec3<bool>(false, !any(var_1.a), true)), ~84990i >> (var_0.x % 32u), !(!(!(!arg_0.x))), _wgslsmith_clamp_i32(-1i, max(select(u_input.e.x, u_input.c.x, arg_0.x), u_input.b.x), firstTrailingBit(7825i)) >> (~u_input.a.x % 32u));
    return arg_1.x;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec3<f32>, arg_3: vec4<bool>) -> vec4<i32> {
    var var_0 = firstTrailingBit(_wgslsmith_mod_u32(firstLeadingBit(u_input.a.x), u_input.a.x));
    var_0 = ~_wgslsmith_mod_u32(u_input.a.x, 1u);
    var_0 = u_input.a.x;
    var_0 = 1u;
    let var_1 = arg_0;
    return vec4<i32>(~(-var_1.b), var_1.d, ~_wgslsmith_add_i32(~(-2147483647i & arg_1), _wgslsmith_sub_i32(2147483647i, -var_1.b)), ~41330i);
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: bool) -> i32 {
    let var_0 = func_4(Struct_1(!(!arg_0.a), _wgslsmith_sub_i32(-(~arg_0.d), ~min(u_input.c.x, arg_0.b)), all(vec3<bool>(!arg_2, false, func_3(arg_0.a.zz, vec2<bool>(false, false), true))), u_input.b.x), max(2147483647i, arg_0.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(-661f)), _wgslsmith_f_op_f32(f32(-1f) * -610f), _wgslsmith_f_op_f32(ceil(1076f))))), !(!vec4<bool>(any(vec4<bool>(arg_0.a.x, arg_2, true, arg_0.a.x)), arg_2, true, !arg_0.c)));
    var var_1 = true;
    var var_2 = Struct_1(select(arg_0.a, arg_0.a, arg_0.a), -29720i, !arg_0.a.x, ~(~u_input.e.x));
    var var_3 = Struct_1(select(vec3<bool>(arg_0.c, any(select(arg_0.a, arg_0.a, arg_0.a.x)), (var_0.x << (u_input.a.x % 32u)) != 28017i), arg_0.a, select(select(arg_0.a, var_2.a, select(arg_0.a, vec3<bool>(false, var_2.a.x, arg_2), arg_0.a)), var_2.a, var_2.a.x)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(select(vec2<i32>(43228i, var_2.d), vec2<i32>(var_2.d, var_2.b), false), var_0.xy), ~func_4(Struct_1(vec3<bool>(false, arg_0.c, arg_2), 32834i, true, 2147483647i), 2147483647i, vec3<f32>(299f, 1672f, -431f), vec4<bool>(false, true, false, false)).wz), -23893i, -u_input.b.x), false, max(_wgslsmith_mult_i32(_wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.c.x, 60680i), var_2.b << (1u % 32u)), _wgslsmith_clamp_i32(-25689i, ~(-28091i), 1i)), 86215i));
    var_2 = arg_0;
    return var_3.b;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(firstLeadingBit(arg_0.d), -arg_0.b), select(arg_0.b, -11981i, any(vec2<bool>(arg_0.a.x, false))), 19358i), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, 13564i, 17835i) | u_input.d.wzy, u_input.d.zzz) | -vec3<i32>(-1i, u_input.e.x, -2147483647i)) | reverseBits(-_wgslsmith_clamp_vec3_i32(u_input.e ^ u_input.e, u_input.d.zzy, vec3<i32>(9445i, arg_0.b, -2147483647i)));
    var var_1 = arg_0;
    var_1 = Struct_1(!select(!vec3<bool>(var_1.c, false, var_1.a.x), arg_0.a, vec3<bool>(arg_0.b <= var_0.x, true, false)), var_1.d, true, 1i);
    var_1 = Struct_1(arg_0.a, arg_0.d, ~(~u_input.a.x ^ (u_input.a.x & u_input.a.x)) < 71442u, u_input.c.x);
    var var_2 = u_input.b.x;
    return arg_0;
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: f32) -> Struct_1 {
    let var_0 = -39340i;
    var var_1 = vec2<bool>(arg_1.a.x, false);
    let var_2 = true;
    let var_3 = func_5(Struct_1(!arg_1.a, 14157i, var_1.x, func_2(Struct_1(select(arg_1.a, arg_1.a, arg_1.a), -25984i, true, reverseBits(u_input.b.x)), u_input.a.x, true && (arg_3 <= arg_3))));
    let var_4 = _wgslsmith_sub_i32(var_0, u_input.e.x);
    return Struct_1(func_5(Struct_1(vec3<bool>(var_2, var_0 <= 1i, all(vec4<bool>(var_3.a.x, var_2, false, true))), 0i, arg_1.c, -1167i)).a, max(-23446i, _wgslsmith_mod_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(56324i, arg_2.x), vec2<i32>(2147483647i, 1314i)), arg_1.d), -31308i)), !any(var_3.a), var_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.a;
    let var_1 = _wgslsmith_mult_vec3_i32(vec3<i32>(-_wgslsmith_sub_i32(reverseBits(u_input.d.x), firstTrailingBit(-7928i)), _wgslsmith_dot_vec4_i32(u_input.d, max(vec4<i32>(-2147483647i, u_input.e.x, u_input.b.x, u_input.d.x), vec4<i32>(-2147483647i, -2147483647i, u_input.d.x, 1i))), (-29016i | u_input.b.x) >> (_wgslsmith_add_u32(var_0.x, 0u | u_input.a.x) % 32u)), ~u_input.b << (_wgslsmith_clamp_vec3_u32(max(vec3<u32>(1u, 4294967295u, var_0.x), vec3<u32>(10083u, u_input.a.x, 19493u)), vec3<u32>(1u, var_0.x, _wgslsmith_sub_u32(1u, u_input.a.x)), _wgslsmith_sub_vec3_u32(abs(vec3<u32>(u_input.a.x, var_0.x, var_0.x)), _wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, u_input.a.x, 14013u), vec3<u32>(96109u, 19705u, 44673u)))) % vec3<u32>(32u)));
    let var_2 = func_1(4294967295u, Struct_1(vec3<bool>(true, true, true), -1i, true, -1i), u_input.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1103f + 643f) * -952f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1922f, -1674f))) * _wgslsmith_div_f32(-374f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -207f) + _wgslsmith_f_op_f32(f32(-1f) * -2467f)))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1f)));
    var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-680f))))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-753f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-732f + 103f))))));
    var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-843f))))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(214f, -365f)), -149f)) - -1000f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(165f, 652f) - vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(530f, -480f))))), -(~firstTrailingBit(~var_1)));
}

