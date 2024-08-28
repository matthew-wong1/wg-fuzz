struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2) -> vec2<u32> {
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-605f, _wgslsmith_f_op_f32(-830f * global0.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(global0.x)))), global0.x));
    var var_0 = u_input.b;
    var_0 = u_input.b;
    var var_1 = ~vec4<i32>(abs(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(u_input.b.x, 64224i)), vec2<i32>(1i, var_0.x))), 2147483647i, abs(~(-2147483647i) >> (select(17802u, 57169u, arg_0.x) % 32u)), _wgslsmith_dot_vec2_i32(select(u_input.b & vec2<i32>(u_input.b.x, -50004i), u_input.b, arg_0.x || arg_0.x), vec2<i32>(arg_1.a, -1i | var_0.x)));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(825f * 1309f))) - _wgslsmith_f_op_f32(max(global0.x, global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-275f * 1200f))), global0.x, global0.x) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(231f, global0.x, 516f, global0.x))))));
    return ~arg_1.b.yy;
}

fn func_2() -> i32 {
    let var_0 = func_3(vec2<bool>(abs(max(1u, 0u)) != _wgslsmith_sub_u32(~u_input.a, 4294967295u), _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-2773f * global0.x)) < -1603f), Struct_2(max(_wgslsmith_sub_i32(1i, i32(-1i) * -1i), u_input.b.x), vec3<u32>(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 57305u), vec2<u32>(u_input.a, 2795u))), ~u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, 1u, u_input.a), firstTrailingBit(vec4<u32>(u_input.a, 0u, 0u, u_input.a))))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, 435f, -1259f)))));
    var var_1 = u_input.b.x < u_input.b.x;
    var_1 = !any(vec3<bool>(all(vec3<bool>(true, false, true)), (u_input.b.x | u_input.b.x) >= ~u_input.b.x, true));
    var var_2 = u_input.b;
    return -var_2.x;
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: u32, arg_3: u32) -> bool {
    var var_0 = u_input.b.x;
    let var_1 = _wgslsmith_add_vec3_i32(max(vec3<i32>(-2147483647i, 1i, _wgslsmith_div_i32(_wgslsmith_mult_i32(653i, arg_0), -1i)), vec3<i32>(_wgslsmith_sub_i32(0i, i32(-1i) * -2147483647i), 9395i, -41187i)), ~_wgslsmith_sub_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(-2147483647i, arg_1.a, arg_1.a), firstTrailingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, arg_0, 253i), vec3<i32>(u_input.b.x, arg_1.a, arg_0)))));
    let var_2 = select(vec4<bool>(any(vec4<bool>(true, u_input.b.x > -2147483647i, any(vec4<bool>(false, true, true, false)), true)), true, _wgslsmith_add_i32(arg_0 >> (1u % 32u), arg_1.a) >= 40770i, true), !(!vec4<bool>(true, any(vec3<bool>(true, true, false)), true, false)), !any(vec2<bool>(u_input.b.x == arg_0, true)));
    var var_3 = select(!select(select(!var_2.yy, var_2.zw, !var_2.x), var_2.zx, true), var_2.yz, any(select(select(var_2.zy, vec2<bool>(true, false), vec2<bool>(false, true)), !var_2.zx, var_2.xz)) | select(var_2.x, false, true));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.x, _wgslsmith_f_op_f32(ceil(274f)), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(trunc(446f))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(914f, 1007f, _wgslsmith_f_op_f32(ceil(global0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1648f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-232f, global0.x, global0.x, global0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -382f, -1061f, 459f)))))));
    return true;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: i32) -> i32 {
    var var_0 = 53300i;
    var var_1 = ~_wgslsmith_div_u32(54356u, 4294967295u) >> (u_input.a % 32u);
    var_1 = u_input.a;
    var var_2 = !any(vec2<bool>(false && arg_1.x, true)) || !(!any(!vec2<bool>(true, arg_1.x)));
    return firstLeadingBit(u_input.b.x);
}

fn func_1() -> i32 {
    let var_0 = false;
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(global0.x)), global0.x, -261f, 429f) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-164f, 231f, -1696f, global0.x))))))));
    let var_1 = func_5(Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(global0.zz)), vec2<f32>(-1000f, global0.x))))), vec3<bool>(!select(var_0, !var_0, true), true, func_4(func_2(), Struct_2(~2147483647i, firstLeadingBit(vec3<u32>(u_input.a, u_input.a, u_input.a))), u_input.a & u_input.a, u_input.a)), 32139i);
    global0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-814f, _wgslsmith_f_op_f32(f32(-1f) * -869f), 1357f, _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global0.x, 1000f, 1368f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-313f, -1953f, 489f, 2813f)))))), var_0 == true));
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global0.x))))));
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1() & _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, -14389i, 3385i), vec3<i32>(1i, u_input.b.x, 2147483647i)), vec3<i32>(u_input.b.x, u_input.b.x, 2147483647i)), _wgslsmith_mod_vec3_i32(vec3<i32>(0i, -35760i, u_input.b.x), vec3<i32>(u_input.b.x, -2147483647i, 67296i) << (vec3<u32>(40740u, u_input.a, 0u) % vec3<u32>(32u)))), reverseBits(vec3<u32>(u_input.a, u_input.a, ~1u)));
    var var_1 = ~var_0.b;
    var var_2 = -vec3<i32>(abs(57140i), u_input.b.x, -(~0i));
    var var_3 = Struct_3(Struct_2(1i, vec3<u32>(_wgslsmith_sub_u32(var_1.x, min(34765u, 0u)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 39370u, u_input.a, var_0.b.x) | vec4<u32>(1u, var_1.x, 0u, var_0.b.x), vec4<u32>(35505u, u_input.a, 56955u, var_1.x)), 4294967295u)), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(-u_input.b, vec2<i32>(u_input.b.x, u_input.b.x) >> (var_1.yx % vec2<u32>(32u))), var_2.xx), -(~(~u_input.b.x))), var_0.b.x, var_0);
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(ceil(global0.x)), -220f, _wgslsmith_f_op_f32(f32(-1f) * -663f)))))));
    let var_4 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(max(582f, 1000f))), -291f));
    var_2 = _wgslsmith_clamp_vec3_i32(vec3<i32>(select(~2147483647i, _wgslsmith_add_i32(0i, -2147483647i), true), -func_1(), ~(-var_2.x)), vec3<i32>(var_0.a, -var_2.x, ~1i), vec3<i32>(var_2.x & -1i, 2147483647i, u_input.b.x) >> (~var_0.b % vec3<u32>(32u))) | (_wgslsmith_mod_vec3_i32(~vec3<i32>(-2147483647i, var_3.b, 2147483647i) << ((var_0.b << (var_3.a.b % vec3<u32>(32u))) % vec3<u32>(32u)), select(-vec3<i32>(var_3.b, 1i, 1i), vec3<i32>(-7204i, u_input.b.x, 2147483647i), vec3<bool>(true, true, true))) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, 7001i << (0u % 32u), firstTrailingBit(25707i)), ~(vec3<i32>(var_3.d.a, 0i, u_input.b.x) >> (vec3<u32>(u_input.a, var_3.d.b.x, 1u) % vec3<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2316f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(global0.wyx, vec3<f32>(var_4.a.x, 998f, var_4.a.x), vec3<bool>(false, false, true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.a.x, global0.x, 473f)))) + global0.yyz)));
}

