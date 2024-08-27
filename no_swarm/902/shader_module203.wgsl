struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(i32(-2147483648), 0i, 2147483647i);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = Struct_1(vec3<bool>(any(select(!vec2<bool>(arg_0.x, arg_2.a.x), select(vec2<bool>(true, arg_1.a.x), arg_0, vec2<bool>(arg_2.a.x, arg_0.x)), arg_1.a.x)), !(!(arg_2.a.x && false)), true), _wgslsmith_f_op_vec2_f32(-arg_1.b));
    var var_1 = 1531f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-936f)));
}

fn func_2() -> vec4<u32> {
    let var_0 = Struct_1(!vec3<bool>(!any(vec2<bool>(false, true)), true, select(true, true, true)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -201f) + _wgslsmith_f_op_f32(f32(-1f) * -794f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -477f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<bool>(true, false), Struct_1(vec3<bool>(true, true, true), vec2<f32>(-860f, -122f)), Struct_1(vec3<bool>(false, true, true), vec2<f32>(652f, 346f)))) + 2737f))));
    let var_1 = var_0;
    let var_2 = var_1.a.x;
    let var_3 = 2147483647i;
    let var_4 = true;
    return vec4<u32>(~1u, _wgslsmith_add_u32(u_input.b, 82339u), _wgslsmith_div_u32(u_input.b, 16268u), u_input.b ^ 39133u);
}

fn func_4(arg_0: vec4<u32>) -> vec3<i32> {
    global0 = min(vec3<i32>(-_wgslsmith_add_i32(global0.x, _wgslsmith_add_i32(u_input.a, global0.x)), i32(-1i) * -_wgslsmith_dot_vec2_i32(global0.zy, vec2<i32>(u_input.a, u_input.a)), firstTrailingBit(-select(global0.x, 21176i, false))), _wgslsmith_mult_vec3_i32(max((vec3<i32>(0i, 0i, 2147483647i) << (arg_0.yxz % vec3<u32>(32u))) >> (abs(arg_0.zwz) % vec3<u32>(32u)), ~(-vec3<i32>(-1i, -1i, -1i))), vec3<i32>(_wgslsmith_dot_vec2_i32(global0.xx, global0.zy), u_input.a & -3501i, ~u_input.a) & (abs(vec3<i32>(u_input.a, 0i, global0.x)) >> (~arg_0.yzx % vec3<u32>(32u)))));
    let var_0 = arg_0.x;
    var var_1 = Struct_1(select(select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true), true), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), vec3<bool>(true, false, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false)), !select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false))), vec3<bool>(!any(vec4<bool>(true, true, false, false)), (global0.x > global0.x) || select(false, true, false), !any(vec4<bool>(true, false, false, true))), all(vec3<bool>(any(vec3<bool>(false, false, true)), true, any(vec2<bool>(false, true))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(507f, -963f), 465f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(796f, -1000f), vec2<f32>(2874f, 218f)))))));
    var var_2 = Struct_1(var_1.a, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-397f, var_1.b.x) * _wgslsmith_div_f32(_wgslsmith_div_f32(-1044f, -317f), _wgslsmith_f_op_f32(-var_1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-424f - 3316f)))));
    var var_3 = Struct_1(vec3<bool>(arg_0.x == ~min(arg_0.x, arg_0.x), any(vec3<bool>(true && var_2.a.x, false, true)), true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.b * var_1.b) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.b * vec2<f32>(var_2.b.x, 144f)) * _wgslsmith_div_vec2_f32(var_2.b, var_1.b))))));
    return firstLeadingBit(~vec3<i32>(global0.x, global0.x, _wgslsmith_div_i32(i32(-1i) * -14851i, -2147483647i)));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> vec3<i32> {
    var var_0 = ~14756u;
    global0 = _wgslsmith_sub_vec3_i32(func_4(max(func_2(), ~vec4<u32>(8696u, u_input.b, 0u, u_input.b))), ~abs(_wgslsmith_add_vec3_i32(vec3<i32>(-40515i, -39722i, global0.x), vec3<i32>(18823i, u_input.a, global0.x)))) & vec3<i32>(2147483647i, _wgslsmith_div_i32(u_input.a, global0.x), -(22756i >> (_wgslsmith_add_u32(54919u, u_input.b) % 32u)));
    let var_1 = arg_0;
    global0 = vec3<i32>(_wgslsmith_clamp_i32(-func_4(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 36118u), vec4<u32>(u_input.b, 28941u, u_input.b, u_input.b))).x, 0i, (firstTrailingBit(-1i) | u_input.a) >> (~(u_input.b >> (19402u % 32u)) % 32u)), global0.x, i32(-1i) * -u_input.a);
    let var_2 = var_1;
    return reverseBits(~vec3<i32>(3711i, -u_input.a, reverseBits(global0.x))) & vec3<i32>(-min(countOneBits(global0.x), u_input.a), 29690i, ~global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1750f;
    global0 = _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(u_input.a, firstTrailingBit(~(-22555i)), u_input.a | u_input.a), -_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, 1i, 1i, -6682i) & vec4<i32>(u_input.a, global0.x, u_input.a, global0.x), ~vec4<i32>(2147483647i, -54903i, global0.x, 2147483647i)), u_input.a), select(_wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a, global0.x, global0.x)) >> (vec3<u32>(u_input.b, 4294967295u, u_input.b) % vec3<u32>(32u)), abs(vec3<i32>(global0.x, global0.x, 0i) ^ vec3<i32>(global0.x, u_input.a, -5632i))), _wgslsmith_clamp_vec3_i32(-func_1(Struct_1(vec3<bool>(true, true, true), vec2<f32>(1000f, 1577f)), false), ~vec3<i32>(-23283i, 49816i, -1i), reverseBits(reverseBits(vec3<i32>(u_input.a, global0.x, u_input.a)))), vec3<bool>(false || (1i != global0.x), all(vec4<bool>(true, true, true, true)), select(true, true, true))), vec3<i32>(i32(-1i) * -firstLeadingBit(u_input.a), func_4(~(~vec4<u32>(u_input.b, 10921u, 1u, u_input.b))).x, ~(-1i)));
    global0 = ~(~(~vec3<i32>(global0.x, 7339i, -2147483647i)));
    let var_1 = Struct_1(!(!vec3<bool>(any(vec2<bool>(false, false)), true, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1512f, -146f) - vec2<f32>(832f, -1916f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1162f, -760f) - vec2<f32>(-829f, -560f))) + vec2<f32>(-1219f, _wgslsmith_f_op_f32(1380f + -1270f)))));
    var_0 = _wgslsmith_f_op_f32(round(609f));
    let var_2 = min(~(~vec3<u32>(4294967295u, u_input.b, u_input.b)) >> (~(~(vec3<u32>(u_input.b, 91183u, u_input.b) | vec3<u32>(1u, u_input.b, u_input.b))) % vec3<u32>(32u)), ~vec3<u32>(1u, ~1u, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(34670u, u_input.b), ~69117u, u_input.b)));
    let var_3 = max(vec4<u32>(_wgslsmith_div_u32(~36655u, ~_wgslsmith_clamp_u32(u_input.b, var_2.x, 8178u)), var_2.x, ~u_input.b, 21027u), select(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_2.x, 4294967295u, 51393u, 56077u) | vec4<u32>(u_input.b, u_input.b, 59932u, u_input.b), vec4<u32>(0u, 5522u, var_2.x, 1u)), select(~vec4<u32>(29701u, 38979u, 1u, var_2.x), vec4<u32>(1u, 99861u, 1u, 0u), select(vec4<bool>(false, false, false, var_1.a.x), vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x), var_1.a.x)), firstTrailingBit(vec4<u32>(u_input.b, u_input.b, 4294967295u, 66479u))), vec4<u32>(var_2.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, var_2.x), var_2.xx), 38206u | ~u_input.b, ~(var_2.x << (0u % 32u))), !vec4<bool>(var_1.a.x, !var_1.a.x, var_1.a.x && false, true)));
    var var_4 = Struct_1(var_1.a, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1147f, var_1.b.x) - vec2<f32>(2193f, var_1.b.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1159f, 378f))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(var_1.b * vec2<f32>(var_1.b.x, 1534f)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(var_1.b, vec2<f32>(var_1.b.x, var_1.b.x))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.b.x, var_1.b.x), vec2<f32>(var_1.b.x, var_1.b.x))))))))));
    var_4 = Struct_1(var_4.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_4.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.b.x, -616f))));
    let x = u_input.a;
    s_output = StorageBuffer(min(max(vec3<i32>(global0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, global0.x, global0.x), vec3<i32>(u_input.a, global0.x, global0.x)), -u_input.a), vec3<i32>(_wgslsmith_mod_i32(global0.x, 2147483647i), 2147483647i, u_input.a & 0i)), firstTrailingBit(-vec3<i32>(17206i, global0.x, u_input.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, 120f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(-var_1.b.x)))), vec3<u32>(~(_wgslsmith_add_u32(1u, 42507u) >> ((var_3.x >> (1u % 32u)) % 32u)), _wgslsmith_mod_u32(~_wgslsmith_clamp_u32(1u, u_input.b, u_input.b), ~min(u_input.b, u_input.b)), 35599u));
}

