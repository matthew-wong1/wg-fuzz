struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: u32,
    d: vec2<f32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: i32 = 2147483647i;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>) -> u32 {
    let var_0 = Struct_1(_wgslsmith_add_u32(reverseBits(arg_0.c), _wgslsmith_add_u32(u_input.e, 1512u)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, -778f) * _wgslsmith_div_f32(-528f, global0.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.b.x - 2232f)))), arg_0.b)), ~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~u_input.a, vec4<u32>(arg_0.a, u_input.a.x, arg_0.a, u_input.a.x)), max(u_input.a, _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.a, 4294967295u, arg_0.c, 2234u), vec4<u32>(arg_0.a, u_input.d, 0u, arg_0.a)))), vec2<f32>(arg_0.d.x, -355f), vec4<i32>(2147483647i, ((-12583i >> (arg_0.a % 32u)) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.x, u_input.b, arg_1.x, -115i), vec4<i32>(u_input.b, u_input.b, arg_1.x, arg_0.e.x))) << (firstTrailingBit(u_input.a.x) % 32u), firstTrailingBit(30892i), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.b, arg_1.x), vec4<i32>(arg_0.e.x, arg_1.x, 15697i, -40169i)), arg_1.x)));
    global1 = -632i;
    global0 = vec4<f32>(_wgslsmith_f_op_f32(round(var_0.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global0.x, -582f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-1644f)))) * _wgslsmith_f_op_f32(floor(478f))), -1000f);
    let var_1 = arg_0;
    var var_2 = select(vec2<bool>(true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), false)) && true), !select(select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(true, true), false), true), !select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), any(vec4<bool>(true, true, true, true))), !select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(true, true, true, true))));
    return abs(arg_0.a);
}

fn func_4(arg_0: Struct_1) -> vec2<f32> {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-1000f, arg_0.d.x)))), -1106f, -1008f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-938f + arg_0.d.x))) * vec4<f32>(1872f, _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(max(global0.x, -442f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-309f + arg_0.b.x) * _wgslsmith_f_op_f32(-arg_0.b.x)), global0.x)));
    global1 = 0i;
    var var_0 = arg_0.b.x;
    global0 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-531f + -1249f)), _wgslsmith_f_op_f32(-791f + global0.x), _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(609f, 703f, arg_0.d.x, 281f) + vec4<f32>(542f, arg_0.b.x, -906f, -1585f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.x, arg_0.d.x, -780f, global0.x) + vec4<f32>(1022f, arg_0.d.x, global0.x, arg_0.d.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, arg_0.d.x, global0.x, 1144f)) + vec4<f32>(arg_0.d.x, -644f, -606f, arg_0.b.x))))));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(1256f, _wgslsmith_f_op_f32(ceil(641f)), _wgslsmith_f_op_f32(floor(global0.x)), global0.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, -787f)), vec4<f32>(arg_0.b.x, -895f, 217f, 912f), any(vec3<bool>(true, true, false))))))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1035f, -1106f, -978f, -936f) * vec4<f32>(global0.x, arg_0.d.x, global0.x, arg_0.d.x))))))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1305f, global0.x) - arg_0.b)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0.x), arg_0.b.x) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.b.x, 1903f), arg_0.d) * global0.wy))));
}

fn func_2() -> f32 {
    let var_0 = 1425f;
    var var_1 = Struct_1(~32699u, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global0.yy * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-387f, var_0))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.zx) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0, var_0)))))), !(_wgslsmith_f_op_f32(782f - var_0) <= _wgslsmith_f_op_f32(-460f - -220f)))), ~u_input.a.x, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(func_4(Struct_1(1u, vec2<f32>(-2321f, -846f), func_3(Struct_1(u_input.d, vec2<f32>(-882f, var_0), u_input.e, global0.zx, vec4<i32>(-1i, -2147483647i, u_input.b, u_input.c)), vec3<i32>(-68164i, 11585i, u_input.c)), vec2<f32>(var_0, -1000f), vec4<i32>(-3919i, u_input.b, u_input.b, 2147483647i) & vec4<i32>(u_input.b, u_input.b, -2147483647i, 2147483647i)))))), vec4<i32>(0i, u_input.c << (_wgslsmith_mult_u32(u_input.e, u_input.a.x) % 32u), _wgslsmith_mult_i32(8013i, _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.b, 0i, 1i), vec3<i32>(-24394i, u_input.b, u_input.b))), _wgslsmith_sub_i32(58291i, _wgslsmith_add_i32(firstTrailingBit(5422i), u_input.b))));
    let var_2 = 36285i;
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_1.b.x)), var_0)) + var_0), var_1.b.x);
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(var_3.x * var_3.x))) + global0.zw);
    return var_0;
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> f32 {
    let var_0 = reverseBits(u_input.a.xyz);
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.x, -1246f, _wgslsmith_div_f32(global0.x, arg_1.b.x), -375f) * vec4<f32>(_wgslsmith_f_op_f32(-405f + _wgslsmith_f_op_f32(func_2())), -1598f, 897f, global0.x)));
    var var_1 = global0.yzz;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(step(arg_1.d.x, -957f))), arg_1.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-799f)) - global0.x), var_1.x)));
    let var_3 = var_2;
    return _wgslsmith_f_op_f32(sign(-1291f));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = i32(-1i) * -2147483647i;
    global1 = _wgslsmith_clamp_i32(u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -u_input.b, _wgslsmith_div_i32(abs(-12250i), u_input.c), -13989i), _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(-1i, 0i, 0i, u_input.c)), vec4<i32>(-1i, u_input.c, u_input.c, -2147483647i), abs(vec4<i32>(u_input.c, u_input.c, -2147483647i, u_input.c))) ^ _wgslsmith_sub_vec4_i32(abs(vec4<i32>(1i, u_input.c, 0i, -2147483647i)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, 16722i, u_input.c, u_input.b), vec4<i32>(u_input.c, 13336i, u_input.c, u_input.c)))), ~_wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.c, -24994i, u_input.b, u_input.b)), select(vec4<i32>(u_input.c, -1i, u_input.c, u_input.c), vec4<i32>(u_input.b, u_input.b, 1i, -40852i), vec4<bool>(true, false, true, false))) ^ u_input.b);
    let var_0 = Struct_1(max(u_input.e, _wgslsmith_add_u32(u_input.e, u_input.d) & reverseBits(104321u)), global0.wz, ~u_input.a.x, global0.zy, min(~((vec4<i32>(-1i, u_input.b, u_input.b, u_input.b) | vec4<i32>(u_input.b, u_input.b, u_input.c, u_input.c)) >> (vec4<u32>(u_input.e, u_input.a.x, u_input.e, 71407u) % vec4<u32>(32u))), ~(-vec4<i32>(-1i, 1i, u_input.b, -620i) << (~u_input.a % vec4<u32>(32u)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, -771f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(376f, var_0)), var_0.d.x)))), _wgslsmith_f_op_vec3_f32(sign(global0.zxx)), !(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)))));
    let var_2 = Struct_1(5347u, _wgslsmith_f_op_vec2_f32(-var_1.xy), _wgslsmith_mult_u32(1u, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, 1u), vec2<u32>(1u, 0u)))), _wgslsmith_f_op_vec2_f32(var_0.d - var_0.b), var_0.e);
    global1 = -25960i;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_dot_vec2_i32(max(var_0.e.yz, ~vec2<i32>(1i, u_input.c)), select(var_2.e.yy, -vec2<i32>(2147483647i, var_0.e.x), vec2<bool>(true, true))), var_0.e.x), var_2.d.x);
}

