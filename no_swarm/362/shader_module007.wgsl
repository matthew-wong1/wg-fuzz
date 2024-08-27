struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: bool,
    d: vec4<i32>,
    e: i32,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: f32,
    d: vec2<u32>,
    e: vec2<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec2<u32>(1u, 1u), 68004u, -2223f, 0i), Struct_1(vec2<u32>(0u, 423u), 15280u, 403f, 1i), Struct_1(vec2<u32>(59463u, 1u), 0u, 500f, i32(-2147483648)), Struct_1(vec2<u32>(1u, 4294967295u), 39232u, -920f, 33710i), Struct_1(vec2<u32>(0u, 4294967295u), 1u, -485f, 0i), Struct_1(vec2<u32>(4294967295u, 4294967295u), 0u, 676f, 20048i), Struct_1(vec2<u32>(1u, 0u), 11504u, -258f, i32(-2147483648)), Struct_1(vec2<u32>(4294967295u, 39446u), 1u, -1105f, 1i), Struct_1(vec2<u32>(47508u, 0u), 0u, -1149f, 7456i), Struct_1(vec2<u32>(84245u, 4294967295u), 4294967295u, -1000f, 0i), Struct_1(vec2<u32>(0u, 32374u), 1u, -135f, 0i), Struct_1(vec2<u32>(0u, 87204u), 4294967295u, 1000f, 0i), Struct_1(vec2<u32>(4294967295u, 4294967295u), 1u, -647f, -80086i), Struct_1(vec2<u32>(15767u, 67255u), 8744u, 1248f, -24675i), Struct_1(vec2<u32>(3855u, 0u), 1u, -216f, 31553i), Struct_1(vec2<u32>(0u, 0u), 50931u, -218f, 1i));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec2<i32> {
    var var_0 = vec3<f32>(-208f, _wgslsmith_f_op_f32(abs(-155f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1013f), _wgslsmith_f_op_f32(floor(-986f))));
    let var_1 = ~(~reverseBits(~vec4<u32>(0u, u_input.c, 4294967295u, u_input.a)));
    var var_2 = (_wgslsmith_dot_vec2_u32(max(_wgslsmith_mult_vec2_u32(var_1.xw, var_1.ww), vec2<u32>(u_input.c, 0u)), vec2<u32>(u_input.b, _wgslsmith_sub_u32(12198u, u_input.b))) >= select(reverseBits(4294967295u), ~u_input.b, true)) & (_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -281f)))) > _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1532f)));
    var_2 = select(false == any(vec3<bool>(true, true, all(vec4<bool>(true, false, false, true)))), !all(vec4<bool>(true, true, true, true)), false);
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-293f, _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(select(var_0.x, var_0.x, true))))))), var_0.x, var_0.x);
    return _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(~firstLeadingBit(u_input.d.zx), vec2<i32>(_wgslsmith_add_i32(firstTrailingBit(u_input.d.x), u_input.d.x), u_input.d.x)), min(-(~vec2<i32>(u_input.d.x, u_input.d.x) | (vec2<i32>(-50384i, -10847i) ^ u_input.d.yy)), abs(vec2<i32>(1i, u_input.d.x) >> (var_1.wx % vec2<u32>(32u))) & (u_input.d.xw ^ reverseBits(vec2<i32>(u_input.d.x, 0i)))), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -u_input.d.x, max(u_input.d.x, -30210i)), u_input.d.xxz), reverseBits(0i) >> (~(~var_1.x) % 32u)));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<i32>) -> vec3<bool> {
    global0 = array<Struct_1, 16>();
    var var_0 = ~(u_input.d.zy | countOneBits(func_3()));
    var_0 = u_input.d.wy;
    var var_1 = Struct_2(vec2<u32>(~(~(~u_input.c)), ~(~_wgslsmith_clamp_u32(46054u, 54669u, u_input.b))), vec2<i32>(reverseBits(-23735i), abs(abs(41554i))), all(select(vec3<bool>(arg_0.x > 557f, any(vec3<bool>(true, true, true)), any(vec4<bool>(false, false, true, true))), vec3<bool>(true, true, arg_0.x == -1000f), false)), ~vec4<i32>(arg_1.x, _wgslsmith_mult_i32(-1i >> (u_input.a % 32u), u_input.d.x), var_0.x, 5861i), u_input.d.x);
    let var_2 = vec2<bool>(var_1.c, !any(!select(vec4<bool>(var_1.c, false, var_1.c, var_1.c), vec4<bool>(var_1.c, var_1.c, var_1.c, var_1.c), vec4<bool>(false, var_1.c, false, var_1.c))));
    return select(!(!(!select(vec3<bool>(var_2.x, false, false), vec3<bool>(var_2.x, var_1.c, var_1.c), vec3<bool>(true, true, var_2.x)))), select(select(!select(vec3<bool>(false, var_1.c, var_1.c), vec3<bool>(var_1.c, var_2.x, var_1.c), vec3<bool>(false, true, true)), select(vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(true, true, true), true), var_2.x), !(!select(vec3<bool>(false, var_1.c, true), vec3<bool>(var_2.x, var_1.c, var_1.c), vec3<bool>(true, var_1.c, var_2.x))), !select(vec3<bool>(var_2.x, false, var_2.x), vec3<bool>(var_2.x, false, true), all(vec3<bool>(var_1.c, var_2.x, var_2.x)))), false);
}

fn func_1(arg_0: vec2<bool>) -> i32 {
    var var_0 = select(!(!vec3<bool>(arg_0.x || true, !arg_0.x, true)), select(!(!(!vec3<bool>(arg_0.x, arg_0.x, arg_0.x))), select(select(select(vec3<bool>(arg_0.x, false, false), vec3<bool>(false, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, true)), !vec3<bool>(false, arg_0.x, arg_0.x), !vec3<bool>(false, false, arg_0.x)), select(!vec3<bool>(false, arg_0.x, arg_0.x), func_2(vec4<f32>(-606f, -1565f, 526f, -288f), u_input.d.wyx), select(vec3<bool>(false, true, true), vec3<bool>(false, arg_0.x, false), true)), select(!vec3<bool>(true, arg_0.x, arg_0.x), !vec3<bool>(arg_0.x, false, arg_0.x), true)), true), 1u < firstLeadingBit(~reverseBits(u_input.a)));
    var_0 = !select(!select(!vec3<bool>(true, var_0.x, arg_0.x), func_2(vec4<f32>(-125f, 1092f, 220f, -876f), vec3<i32>(37474i, u_input.d.x, u_input.d.x)), !vec3<bool>(true, true, var_0.x)), vec3<bool>(arg_0.x, true, true), !select(select(vec3<bool>(arg_0.x, false, false), vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(true, arg_0.x, false)), func_2(vec4<f32>(-1114f, 375f, -1668f, -659f), u_input.d.wyz), arg_0.x));
    let var_1 = Struct_4(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-285f))) - -581f), -37033i, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1228f + _wgslsmith_f_op_f32(-1000f * 821f)))), (~vec2<u32>(1u, u_input.c) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 22405u), vec2<u32>(u_input.b, 55246u)) % vec2<u32>(32u))) >> ((_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(u_input.c, u_input.b)) & (vec2<u32>(u_input.a, 0u) << (vec2<u32>(u_input.a, u_input.b) % vec2<u32>(32u)))) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(252f, -199f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1187f, 1440f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-151f, 455f))))), u_input.d.x, ~abs(select(vec3<u32>(35639u, u_input.c, u_input.a), vec3<u32>(u_input.b, 1u, 4294967295u), var_0.x) & vec3<u32>(4294967295u, u_input.c, u_input.b)));
    var var_2 = vec2<bool>(!func_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.a, var_1.a.e.x, 2109f, -1483f) - vec4<f32>(var_1.a.e.x, -1590f, var_1.a.e.x, var_1.a.a)), vec4<f32>(1f, 1f, 1f, 1f), vec4<bool>(false, var_0.x, true, var_0.x))), -vec3<i32>(0i, 0i, 36030i)).x, all(!(!func_2(vec4<f32>(var_1.a.a, -661f, -383f, 622f), vec3<i32>(-23342i, var_1.b, var_1.b)))));
    let var_3 = vec2<i32>(-2147483647i, -(~var_1.a.b));
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_u32(select(4294967295u, _wgslsmith_mod_u32(1u, ~_wgslsmith_mult_u32(u_input.c, 9737u)), any(vec4<bool>(all(vec4<bool>(true, false, false, false)), all(vec4<bool>(true, true, false, false)), false, true))), ~(0u & u_input.b));
    var var_1 = vec2<bool>(false, false);
    var var_2 = firstTrailingBit(func_1(vec2<bool>(false, !var_1.x)));
    var_0 = min(u_input.b, 1u);
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(591f * 214f))), 286f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))) - _wgslsmith_f_op_f32(-659f * -523f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-927f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1137f), _wgslsmith_f_op_f32(ceil(-2180f))))));
    var_2 = countOneBits(-(i32(-1i) * -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(floor(-1473f)), vec2<u32>(_wgslsmith_mod_u32(abs(~4294967295u), u_input.c), firstTrailingBit(~4294967295u)), _wgslsmith_mod_vec2_i32(u_input.d.zz, vec2<i32>(-1i, 22404i) ^ u_input.d.yy));
}

