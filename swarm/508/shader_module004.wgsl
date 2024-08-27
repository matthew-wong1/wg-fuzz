struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec4<f32>,
    d: vec4<f32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: vec2<f32>;

var<private> global2: f32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -(i32(-1i) * -1i)), max(abs(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(15627i, 12168i))), countOneBits(vec2<i32>(-1i, -22995i))) ^ select(select(max(vec2<i32>(-1i, -1i), vec2<i32>(0i, 27259i)), -vec2<i32>(-52984i, 40966i), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true))), _wgslsmith_add_vec2_i32(~vec2<i32>(1i, 19234i), vec2<i32>(-24411i, -1i) << (global0.xy % vec2<u32>(32u))), vec2<bool>(true, true)));
    let var_1 = vec4<bool>(!(!(_wgslsmith_dot_vec2_i32(vec2<i32>(-3832i, 2147483647i), vec2<i32>(-9000i, 2147483647i)) <= firstTrailingBit(-2147483647i))), false, true != all(vec3<bool>(true, true, true)), (1i << (~_wgslsmith_div_u32(60722u, global0.x) % 32u)) >= _wgslsmith_mult_i32(-23141i, abs(~(-1i))));
    let var_2 = Struct_1(!var_1.zz, var_1.x, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global1.x, global1.x), _wgslsmith_f_op_f32(min(global1.x, global1.x)), _wgslsmith_f_op_f32(-global1.x), global1.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2381f, global1.x, global1.x, global1.x) * vec4<f32>(104f, 446f, global1.x, global1.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 1000f, global1.x, -134f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -327f), _wgslsmith_f_op_f32(-299f + global1.x), 718f, global1.x), true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-109f, 868f, global1.x) + vec3<f32>(global1.x, -674f, 1571f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 285f, global1.x))) * vec3<f32>(_wgslsmith_f_op_f32(select(global1.x, global1.x, false)), _wgslsmith_f_op_f32(select(global1.x, global1.x, false)), _wgslsmith_f_op_f32(select(global1.x, 1674f, true))))));
    var var_3 = firstLeadingBit(abs(_wgslsmith_add_u32(abs(u_input.a.x), _wgslsmith_div_u32(u_input.a.x, 1u))));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(1837f)))) * _wgslsmith_div_f32(288f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-298f - -1343f))));
    return var_1.x;
}

fn func_2() -> i32 {
    var var_0 = Struct_1(vec2<bool>(true, select(select(1u > global0.x, func_3(), true), true, all(vec4<bool>(true, true, true, true)))), !any(vec3<bool>(true, false, func_3())), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.x - -695f)))), 112f, 1f, 1000f), vec4<f32>(global1.x, _wgslsmith_f_op_f32(step(-200f, global1.x)), -1809f, -643f), vec3<f32>(-723f, global1.x, global1.x));
    let var_1 = -2147483647i;
    let var_2 = Struct_1(vec2<bool>(var_0.a.x, all(!select(vec3<bool>(var_0.b, var_0.b, false), vec3<bool>(true, false, var_0.b), true))), any(select(!(!vec3<bool>(true, var_0.b, false)), vec3<bool>(all(vec2<bool>(var_0.b, var_0.b)), var_0.a.x, var_0.a.x), vec3<bool>(true, false, var_0.a.x))), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -598f) + _wgslsmith_f_op_f32(sign(global1.x))), var_0.c.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1226f - var_0.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * global1.x)), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * -1382f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-712f * var_0.d.x) - var_0.c.x))), var_0.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.c.yww * var_0.e) - _wgslsmith_f_op_vec3_f32(round(var_0.e)))) + var_0.d.xxz));
    var_0 = var_2;
    let var_3 = u_input.a.x;
    return -firstLeadingBit(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-39416i, -1i, var_1)), vec3<i32>(var_1, 0i, var_1)) >> (var_3 % 32u));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(-1114f + -146f);
    let var_1 = _wgslsmith_sub_vec4_i32(vec4<i32>(1i, abs(_wgslsmith_add_i32(arg_2, ~arg_2)), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, arg_2, -1i, 24126i), vec4<i32>(arg_2, 1i, 1i, arg_2)), 38878i), select(vec3<i32>(-58074i, 1i, arg_2), vec3<i32>(1i, arg_2, arg_2), vec3<bool>(arg_1.b, false, true)) >> ((u_input.a ^ vec3<u32>(50932u, u_input.a.x, u_input.a.x)) % vec3<u32>(32u))), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(0i, -1i), vec2<i32>(arg_2, 1i)), firstLeadingBit(~vec2<i32>(2147483647i, arg_2)))), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_2, func_2(), arg_2, ~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, -1i, arg_2, arg_2), vec4<i32>(arg_2, 2147483647i, arg_2, arg_2))), _wgslsmith_mod_vec4_i32(firstLeadingBit(-vec4<i32>(arg_2, 0i, 0i, arg_2)), vec4<i32>(max(arg_2, arg_2), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 19816i), vec2<i32>(arg_2, arg_2)), -13771i, arg_2))));
    let var_2 = vec2<i32>(countOneBits(var_1.x), var_1.x);
    let var_3 = global0.x;
    return _wgslsmith_add_vec2_u32(u_input.a.yz, vec2<u32>(~firstLeadingBit(36687u), 1u)) & _wgslsmith_mult_vec2_u32(~_wgslsmith_sub_vec2_u32(~global0.wy, global0.xw), ~vec2<u32>(~21330u, 4294967295u));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_3;
    var var_1 = !any(!select(select(vec3<bool>(var_0.a.x, var_0.b, arg_1.a.x), vec3<bool>(arg_3.a.x, true, arg_3.a.x), vec3<bool>(arg_1.b, true, false)), vec3<bool>(false, true, arg_1.a.x), arg_3.b));
    var var_2 = i32(-1i) * -_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-2147483647i, -27585i, -1559i)), max(-vec3<i32>(-11509i, 2147483647i, 6936i), vec3<i32>(1i, 1i, 1i)));
    var var_3 = firstLeadingBit(countOneBits(arg_2 << (arg_0 % 32u)) ^ ~(~global0.x >> ((2535u >> (arg_0 % 32u)) % 32u)));
    let var_4 = ~_wgslsmith_sub_u32(global0.x, 4294967295u);
    return Struct_1(!vec2<bool>(false, !any(var_0.a)), !select(false, select(true, true, true), !select(true, arg_3.a.x, false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(global1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(146f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.d.x, arg_1.c.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3.e.x + -1965f), 2352f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1554f, -2499f, 903f, -949f), _wgslsmith_div_vec4_f32(var_0.c, vec4<f32>(arg_3.d.x, -147f, arg_1.e.x, arg_3.d.x)))), vec4<f32>(arg_3.c.x, _wgslsmith_f_op_f32(arg_1.c.x - -1736f), -1677f, _wgslsmith_f_op_f32(-var_0.e.x)), vec4<bool>(!arg_3.a.x, true, any(vec3<bool>(var_0.a.x, false, false)), true))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.d.x, arg_1.c.x, -1113f) * vec3<f32>(_wgslsmith_f_op_f32(trunc(global1.x)), _wgslsmith_f_op_f32(ceil(var_0.d.x)), _wgslsmith_f_op_f32(-2235f + var_0.e.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_dot_vec2_u32(abs(u_input.a.xx), abs(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, global0.x), func_1(Struct_1(vec2<bool>(true, true), false, vec4<f32>(-344f, global1.x, -1416f, global1.x), vec4<f32>(-2513f, -396f, -804f, 100f), vec3<f32>(global1.x, global1.x, global1.x)), Struct_1(vec2<bool>(false, true), false, vec4<f32>(global1.x, global1.x, global1.x, -1292f), vec4<f32>(global1.x, global1.x, -1160f, -1141f), vec3<f32>(global1.x, -2703f, 678f)), 72037i)))), Struct_1(vec2<bool>((2147483647i >> (global0.x % 32u)) < _wgslsmith_add_i32(36729i, -1i), true & (12873u >= u_input.a.x)), all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), vec4<f32>(915f, -122f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-190f, global1.x, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1381f - 773f) + _wgslsmith_f_op_f32(global1.x * global1.x))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, global1.x)) * vec4<f32>(1021f, global1.x, global1.x, global1.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, 1243f, global1.x, -162f), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 1268f, global1.x, -308f) + vec4<f32>(3024f, global1.x, global1.x, global1.x)), true)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global1.x))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x), vec3<f32>(global1.x, -1084f, global1.x)), vec3<f32>(-1000f, global1.x, global1.x))))), ~firstLeadingBit(global0.x), Struct_1(select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(true, true), false), true), vec2<bool>(true, true), vec2<bool>(true, true)), func_3(), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.x, -187f, 1270f, -734f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1073f - -764f), -1754f, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(1262f + global1.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, -572f, 1662f, global1.x), vec4<f32>(global1.x, 373f, global1.x, 208f), vec4<bool>(false, false, true, true))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 1268f, global1.x, 234f)))), vec3<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1322f)), _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(min(global1.x, 672f))))));
    var var_1 = false;
    var var_2 = Struct_1(vec2<bool>(all(var_0.a), var_0.b), all(!vec4<bool>(true, false, true, any(vec4<bool>(true, false, false, var_0.b)))), var_0.d, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, var_0.c.x, global1.x, var_0.d.x))))))), vec3<f32>(_wgslsmith_f_op_f32(sign(func_4(global0.x, Struct_1(vec2<bool>(false, var_0.a.x), var_0.b, var_0.c, var_0.d, vec3<f32>(global1.x, global1.x, global1.x)), u_input.a.x, func_4(10296u, Struct_1(vec2<bool>(var_0.b, var_0.a.x), var_0.b, var_0.c, vec4<f32>(global1.x, 425f, var_0.d.x, var_0.c.x), var_0.d.wzx), u_input.a.x, Struct_1(var_0.a, true, var_0.d, vec4<f32>(global1.x, 1427f, global1.x, -438f), vec3<f32>(var_0.d.x, var_0.c.x, var_0.e.x)))).e.x)), -1995f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))));
    let var_3 = func_4(global0.x, func_4(18469u, func_4(~abs(4798u), func_4(_wgslsmith_div_u32(u_input.a.x, 6684u), Struct_1(var_2.a, false, var_2.d, vec4<f32>(543f, global1.x, var_0.e.x, var_2.e.x), vec3<f32>(var_0.c.x, -1000f, -859f)), 22207u, func_4(39205u, Struct_1(var_0.a, false, var_2.c, var_0.c, var_2.e), u_input.a.x, Struct_1(var_2.a, var_2.a.x, var_2.c, var_2.c, vec3<f32>(var_2.d.x, var_0.d.x, -780f)))), global0.x, func_4(4294967295u >> (0u % 32u), Struct_1(vec2<bool>(var_2.a.x, true), var_0.a.x, var_2.d, var_2.d, var_2.c.xwz), _wgslsmith_clamp_u32(4294967295u, global0.x, 49350u), Struct_1(var_0.a, var_0.a.x, vec4<f32>(-1212f, 769f, -1301f, -104f), vec4<f32>(-1875f, global1.x, 137f, -309f), var_0.d.wzx))), global0.x, func_4(abs(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x)), Struct_1(vec2<bool>(var_2.a.x, false), u_input.a.x > u_input.a.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.e.x, -740f, global1.x, var_0.d.x)), _wgslsmith_f_op_vec4_f32(-var_2.d), var_0.d.xyy), ~(~global0.x), Struct_1(var_2.a, !var_0.b, var_0.c, _wgslsmith_f_op_vec4_f32(var_0.d - vec4<f32>(-861f, 1204f, var_0.e.x, var_2.d.x)), var_2.c.zzx))), u_input.a.x, Struct_1(!vec2<bool>(var_0.b, all(vec2<bool>(var_0.a.x, var_2.a.x))), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-849f, var_2.d.x, -2715f, -701f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.d)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(915f, _wgslsmith_f_op_f32(-862f + var_2.d.x), var_2.c.x))));
    var var_4 = vec2<bool>(var_2.a.x, !var_3.b && true);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.d, max(reverseBits(0i), ~min(_wgslsmith_mod_i32(-2147483647i, 1i), _wgslsmith_mult_i32(-1i, -3542i))));
}

