struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: f32,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> f32 {
    global0 = vec2<f32>(_wgslsmith_f_op_f32(step(global0.x, arg_0.c)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-224f)))));
    let var_0 = Struct_1(vec3<f32>(global0.x, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(2263f)) * _wgslsmith_f_op_f32(1922f + -1329f)))), firstTrailingBit(-min(_wgslsmith_sub_vec2_i32(arg_0.b, u_input.a.zy), vec2<i32>(0i, u_input.a.x))), 1888f, vec4<i32>(-1i) * -arg_0.d, countOneBits(~(~(~arg_0.e))));
    var var_1 = -u_input.a.x;
    var var_2 = var_0;
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(arg_0.a.xx)))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.c, _wgslsmith_f_op_f32(-1251f + _wgslsmith_f_op_f32(global0.x - var_0.a.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_0.a.xy * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -342f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, var_2.a.x)) * var_0.a.xx), true)), vec2<bool>(select(true, true, true), _wgslsmith_f_op_f32(-140f + 560f) > global0.x))));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c) * -470f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -195f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1629f, arg_0.a.x), 673f, true)))))));
}

fn func_2() -> vec2<f32> {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(278f, -1000f, false)) + _wgslsmith_f_op_f32(-727f - global0.x)), _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(global0.x * global0.x)))) - vec2<f32>(global0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(global0.x)), _wgslsmith_f_op_f32(func_3(Struct_1(vec3<f32>(-568f, global0.x, global0.x), vec2<i32>(u_input.a.x, -1737i), global0.x, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(4294967295u, 55061u, 4343u))))))))));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0.x, global0.x), vec2<f32>(global0.x, 1000f)))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.x, 1000f)))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-173f, 458f)), global0.x, global0.x > -748f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1086f), _wgslsmith_f_op_f32(func_3(Struct_1(vec3<f32>(144f, -1393f, global0.x), vec2<i32>(-1i, -1i), global0.x, vec4<i32>(1i, 10868i, -2147483647i, -2147483647i), vec3<u32>(43190u, 0u, 1u))))))));
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-2047f - global0.x), -1292f, global0.x))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(513f, 884f, global0.x) + vec3<f32>(global0.x, global0.x, -1000f))))), u_input.a.xy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-1422f, -443f)), _wgslsmith_f_op_f32(func_3(Struct_1(vec3<f32>(global0.x, -2303f, -103f), u_input.a.xx, global0.x, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(24352u, 1u, 41615u)))), -1000f == _wgslsmith_f_op_f32(round(global0.x)))) * global0.x), ~(~(-vec4<i32>(-2147483647i, 50458i, 84091i, u_input.a.x))), firstTrailingBit(_wgslsmith_div_vec3_u32(~max(vec3<u32>(80697u, 41530u, 1u), vec3<u32>(33055u, 74781u, 8799u)), ~vec3<u32>(1u, 3882u, 0u))));
    var var_1 = any(vec4<bool>(true, false, select(false, true, any(vec4<bool>(true, true, true, true))) & true, !(!any(vec3<bool>(false, true, true)))));
    let var_2 = abs(~var_0.e) ^ _wgslsmith_mult_vec3_u32(var_0.e, var_0.e);
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(global0.x)), _wgslsmith_f_op_f32(global0.x * 212f))));
}

fn func_1(arg_0: f32, arg_1: vec4<u32>) -> vec4<u32> {
    global0 = _wgslsmith_f_op_vec2_f32(func_2());
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_f_op_f32(-global0.x)) * vec2<f32>(_wgslsmith_f_op_f32(ceil(1000f)), global0.x));
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-543f, global0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(ceil(-300f))), _wgslsmith_f_op_vec2_f32(func_2()).x) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, arg_0, -2533f), vec3<f32>(global0.x, 431f, 237f), false))), vec3<f32>(_wgslsmith_div_f32(arg_0, global0.x), _wgslsmith_div_f32(-1000f, global0.x), 639f))), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(7347i, ~u_input.a.x), _wgslsmith_sub_vec2_i32(select(vec2<i32>(-2147483647i, u_input.a.x), vec2<i32>(2147483647i, -1i), false), vec2<i32>(u_input.a.x, -21559i))), 2147483647i), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - global0.x))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_div_f32(-987f, -2059f), arg_0), -1000f)))), -vec4<i32>(min(1i, -60367i), _wgslsmith_dot_vec4_i32(min(vec4<i32>(u_input.a.x, 24671i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, -39718i, u_input.a.x, -5765i)), ~vec4<i32>(u_input.a.x, u_input.a.x, 60656i, -41168i)), u_input.a.x ^ u_input.a.x, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 34728i, u_input.a.x, 2147483647i), vec4<i32>(2147483647i, u_input.a.x, 0i, 0i)))), vec3<u32>(_wgslsmith_clamp_u32(arg_1.x ^ 0u, arg_1.x, arg_1.x), ~_wgslsmith_mod_u32(arg_1.x, arg_1.x), 1u) << ((firstTrailingBit(~arg_1.xzz) << (vec3<u32>(arg_1.x, _wgslsmith_mult_u32(arg_1.x, 0u), ~1u) % vec3<u32>(32u))) % vec3<u32>(32u)));
    var var_1 = !vec3<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false))) & any(vec3<bool>(false, false, true)), 512f < _wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(-var_0.c)), !all(vec4<bool>(true, true, true, true)));
    let var_2 = select(vec4<bool>(!(_wgslsmith_f_op_f32(sign(557f)) >= _wgslsmith_f_op_f32(f32(-1f) * -470f)), all(select(select(vec3<bool>(false, false, false), vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(var_1.x, false, var_1.x)), vec3<bool>(var_1.x, true, true), select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(false, true, false)))), var_1.x, true), select(!vec4<bool>(var_1.x, false && var_1.x, true, false), vec4<bool>(true, var_1.x, false, _wgslsmith_f_op_f32(-var_0.c) <= _wgslsmith_f_op_f32(floor(var_0.a.x))), select(!select(vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<bool>(var_1.x, false, var_1.x, true), vec4<bool>(false, false, true, var_1.x)), !(!vec4<bool>(true, true, var_1.x, true)), select(vec4<bool>(false, var_1.x, true, var_1.x), !vec4<bool>(true, var_1.x, var_1.x, false), select(vec4<bool>(false, false, var_1.x, true), vec4<bool>(true, true, var_1.x, true), var_1.x)))), !(!select(vec4<bool>(var_1.x, true, false, true), !vec4<bool>(var_1.x, var_1.x, false, false), true)));
    return firstLeadingBit(countOneBits(vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, arg_1.x, var_0.e.x), arg_1.zyy), _wgslsmith_mod_u32(~var_0.e.x, max(0u, 0u)), _wgslsmith_dot_vec3_u32(var_0.e, vec3<u32>(var_0.e.x, 4294967295u, 16361u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_1.x, arg_1.x), select(arg_1.yz, vec2<u32>(arg_1.x, 4294967295u), var_1.zx)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(57311u) <= _wgslsmith_dot_vec3_u32(~(~vec3<u32>(24515u, 4294967295u, 3033u)), _wgslsmith_mult_vec3_u32(countOneBits(~vec3<u32>(4294967295u, 0u, 4294967295u)), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 0u), vec3<u32>(8854u, 26529u, 34737u))));
    var var_1 = (~select(vec4<u32>(4294967295u, 0u, 8156u, 7707u), vec4<u32>(20828u, 26849u, 17458u, 12363u), true) & vec4<u32>(1u, 1u, 1u, 1u)) & ~_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(1u, 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(41646u, 13501u), vec2<u32>(27052u, 0u)), abs(22268u), min(53579u, 4294967295u)), _wgslsmith_clamp_vec4_u32(func_1(global0.x, vec4<u32>(38601u, 4294967295u, 15844u, 0u)), ~vec4<u32>(1u, 16346u, 1u, 29712u), ~vec4<u32>(62135u, 4294967295u, 28758u, 14959u)), vec4<u32>(~1u, _wgslsmith_sub_u32(67502u, 0u), 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 28583u, 3683u), vec3<u32>(0u, 25928u, 12635u))));
    var var_2 = vec3<bool>(true, true, !all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true)) && select(all(vec4<bool>(true, true, true, true)), false, true));
    var var_3 = _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.a, abs(u_input.a), ~(-vec3<i32>(36096i, -6830i, 2147483647i))) >> (~_wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(var_1.x, var_1.x, var_1.x)), var_1.ywx | vec3<u32>(var_1.x, var_1.x, var_1.x)) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, 63564i), _wgslsmith_mod_i32(u_input.a.x, 1i), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -1i, 1i), vec3<i32>(2147483647i, u_input.a.x, u_input.a.x))), vec3<i32>(-u_input.a.x, abs(u_input.a.x), _wgslsmith_mult_i32(u_input.a.x, u_input.a.x))) << (var_1.yzx % vec3<u32>(32u)));
    var_3 = _wgslsmith_div_vec3_i32(~u_input.a, vec3<i32>(_wgslsmith_div_i32(u_input.a.x, _wgslsmith_add_i32(-u_input.a.x, 1i)), select(u_input.a.x, 7300i, var_2.x), abs(u_input.a.x | u_input.a.x) >> (1u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i) * -(~vec4<i32>(2147483647i, u_input.a.x, -1i, u_input.a.x)), -2147483647i, abs(var_3.x));
}

