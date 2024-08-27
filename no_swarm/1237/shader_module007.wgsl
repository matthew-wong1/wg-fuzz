struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 30>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32, arg_1: i32) -> vec2<i32> {
    global0 = array<vec3<i32>, 30>();
    global0 = array<vec3<i32>, 30>();
    let var_0 = Struct_1(-arg_1, 1f, 1f);
    let var_1 = 1u;
    global0 = array<vec3<i32>, 30>();
    return min(_wgslsmith_add_vec2_i32(u_input.a, max(_wgslsmith_clamp_vec2_i32(u_input.a, u_input.a, u_input.a), firstLeadingBit(u_input.a))) & u_input.a, u_input.a);
}

fn func_2(arg_0: vec3<f32>, arg_1: bool, arg_2: i32, arg_3: vec4<i32>) -> i32 {
    global0 = array<vec3<i32>, 30>();
    global0 = array<vec3<i32>, 30>();
    var var_0 = Struct_1(_wgslsmith_sub_i32(~(-2147483647i), _wgslsmith_div_i32(arg_3.x, ~arg_3.x)), _wgslsmith_f_op_f32(906f * _wgslsmith_f_op_f32(trunc(2597f))), _wgslsmith_f_op_f32(step(-827f, arg_0.x)));
    var var_1 = Struct_2(_wgslsmith_div_vec2_i32(u_input.a >> (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u)), func_3(firstTrailingBit(u_input.a.x), 1i | u_input.a.x) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(1i, 0i), _wgslsmith_clamp_vec2_i32(vec2<i32>(27840i, -12045i), vec2<i32>(u_input.a.x, var_0.a), arg_3.zx))), Struct_1(arg_3.x, var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(147f)))))), select(vec3<bool>(var_0.b == _wgslsmith_f_op_f32(f32(-1f) * -288f), arg_1, arg_1), select(!vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, true, arg_1), !arg_1), !arg_1));
    var_1 = Struct_2(vec2<i32>(_wgslsmith_mult_i32(i32(-1i) * -1i, _wgslsmith_clamp_i32(i32(-1i) * -25311i, ~(-45266i), 1i)), 1i), var_1.b, vec3<bool>(!any(!var_1.c), arg_1, abs(29896i) <= _wgslsmith_dot_vec4_i32(abs(arg_3), arg_3)));
    return _wgslsmith_clamp_i32(countOneBits(-2147483647i), -2147483647i, -arg_2 ^ arg_3.x);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = -((u_input.a >> (~select(u_input.b, vec2<u32>(u_input.b.x, u_input.b.x), false) % vec2<u32>(32u))) ^ u_input.a);
    let var_1 = Struct_2(vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(var_0.x, firstLeadingBit(var_0.x)), -10888i), _wgslsmith_mult_i32(0i, ~u_input.c << (~u_input.b.x % 32u))), Struct_1(~_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(u_input.a.x, 1i, arg_0.a, -2147483647i)), _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, 0i, 23263i, var_0.x), vec4<i32>(arg_0.a, 2147483647i, arg_0.a, arg_0.a))), _wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-401f, arg_0.c, true))))))), !select(vec3<bool>(false, false, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), true));
    var var_2 = vec2<i32>(_wgslsmith_div_i32(var_1.b.a, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(var_1.a.x, var_1.b.a, 1i, var_1.b.a) | vec4<i32>(-11603i, 24255i, var_1.a.x, 980i)), vec4<i32>(_wgslsmith_sub_i32(arg_0.a, -20878i), firstTrailingBit(2147483647i), -var_1.b.a, 2147483647i))), -1i);
    var var_3 = _wgslsmith_sub_u32(_wgslsmith_div_u32(~1u, select(~(~u_input.d.x), 0u, !var_1.c.x)), max(29585u, 22644u));
    return arg_0;
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: f32, arg_3: Struct_1) -> vec4<f32> {
    global0 = array<vec3<i32>, 30>();
    let var_0 = select(!arg_1.c.xy, select(vec2<bool>(true, true), vec2<bool>((-1i & u_input.a.x) != -2147483647i, arg_1.c.x), !vec2<bool>(all(vec4<bool>(arg_1.c.x, arg_1.c.x, arg_1.c.x, false)), true)), arg_1.c.x);
    var var_1 = 1u;
    var var_2 = func_4(Struct_1(~func_2(vec3<f32>(arg_2, -138f, 292f), !var_0.x, -18580i, ~vec4<i32>(-1i, -2147483647i, 33329i, 60752i)), _wgslsmith_div_f32(arg_2, arg_1.b.c), arg_1.b.b));
    let var_3 = u_input.b & vec2<u32>(reverseBits(~(~36610u)), _wgslsmith_sub_u32(arg_0, 0u));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(406f, arg_1.b.b, 265f, _wgslsmith_f_op_f32(sign(-798f))));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_2) -> StorageBuffer {
    let var_0 = arg_1.b;
    let var_1 = false;
    var var_2 = !arg_1.c;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-arg_0.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(663f + var_0.b) + _wgslsmith_f_op_f32(-arg_1.b.c)) * arg_1.b.c)));
    let var_4 = _wgslsmith_f_op_f32(round(-187f));
    return StorageBuffer(vec3<f32>(-429f, arg_1.b.b, -171f), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1258f), -529f, -326f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(arg_1.b.c)))) * _wgslsmith_f_op_f32(ceil(1012f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(u_input.b.x, Struct_2(vec2<i32>(-11849i, u_input.a.x), Struct_1(2200i, 1847f, 354f), vec3<bool>(true, true, false)), -414f, Struct_1(u_input.c, 1355f, -1258f))))), Struct_2(~(-u_input.a & _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.a.x, 27725i))), func_4(Struct_1(func_4(Struct_1(-33081i, -569f, -139f)).a, -606f, _wgslsmith_f_op_f32(floor(1251f)))), select(vec3<bool>(all(vec2<bool>(true, true)), false, all(vec3<bool>(true, true, false))), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true)), !any(vec4<bool>(false, false, true, true)))));
}

