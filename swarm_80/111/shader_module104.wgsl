struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: bool,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: f32,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 150f;

var<private> global1: Struct_1 = Struct_1(vec4<bool>(true, false, false, true), 52046u, false, vec3<f32>(313f, -1050f, -835f));

var<private> global2: bool;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: vec3<f32>, arg_3: Struct_1) -> vec3<u32> {
    let var_0 = Struct_2(arg_3, arg_3.a, 598f, arg_3, any(vec4<bool>(-4898i >= u_input.a, arg_0, arg_3.c, select(!arg_3.c, arg_0 | false, any(arg_3.a.xyw)))));
    global1 = Struct_1(select(!vec4<bool>(all(global1.a), arg_0, !arg_3.c, arg_3.c), var_0.b, var_0.d.c), max(var_0.d.b, ~(_wgslsmith_div_u32(0u, 7573u) | _wgslsmith_dot_vec3_u32(vec3<u32>(18811u, 1u, 23744u), vec3<u32>(4294967295u, 15804u, 33346u)))), !(!all(vec3<bool>(arg_3.c, false, false)) || any(vec3<bool>(arg_0, arg_0, false))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-922f, var_0.a.d.x, arg_3.d.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.d.x, var_0.d.d.x, -1852f)), vec3<f32>(_wgslsmith_f_op_f32(1000f - var_0.c), _wgslsmith_f_op_f32(exp2(arg_3.d.x)), _wgslsmith_f_op_f32(arg_3.d.x - 926f)), !(global1.d.x > var_0.c))))));
    var var_1 = var_0;
    return select(firstLeadingBit(vec3<u32>(select(min(arg_1, 19837u), var_0.d.b, true), 0u, (arg_3.b & 0u) << (63270u % 32u))), _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.d.b, abs(~var_1.a.b), ~(var_1.a.b >> (global1.b % 32u))), vec3<u32>(~_wgslsmith_mod_u32(global1.b, var_0.d.b), firstTrailingBit(arg_3.b), max(83704u, arg_1))), var_0.b.zxx);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec4<i32> {
    global1 = arg_0;
    global1 = arg_0;
    let var_0 = firstLeadingBit(_wgslsmith_dot_vec3_u32(~(vec3<u32>(global1.b, arg_1.b, 4294967295u) & (vec3<u32>(arg_0.b, global1.b, 1u) << (vec3<u32>(4294967295u, arg_1.b, 1u) % vec3<u32>(32u)))), ~_wgslsmith_add_vec3_u32(~vec3<u32>(global1.b, global1.b, arg_1.b), ~vec3<u32>(arg_0.b, 1u, global1.b))));
    let var_1 = vec2<bool>(false, false);
    let var_2 = select(~(~(~func_3(global1.a.x, 26930u, vec3<f32>(-1000f, arg_1.d.x, 213f), Struct_1(global1.a, global1.b, false, arg_1.d)))), select(_wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(arg_1.b, global1.b, global1.b)) << (vec3<u32>(global1.b, arg_0.b, 1u) % vec3<u32>(32u)), vec3<u32>(20492u, func_3(false, global1.b, vec3<f32>(2323f, global1.d.x, arg_1.d.x), arg_1).x, arg_0.b)), abs(min(vec3<u32>(var_0, 11080u, 4294967295u), vec3<u32>(var_0, 119902u, 76316u))) >> (vec3<u32>(1u, 481u, min(global1.b, 6935u)) % vec3<u32>(32u)), !vec3<bool>(any(vec3<bool>(true, var_1.x, global1.a.x)), true, true)), any(vec4<bool>(false, false, all(vec3<bool>(arg_0.a.x, false, var_1.x)), any(arg_0.a.wy))));
    return -abs(vec4<i32>(2147483647i, _wgslsmith_clamp_i32(0i >> (var_0 % 32u), -u_input.b, _wgslsmith_sub_i32(11183i, u_input.b)), -_wgslsmith_clamp_i32(u_input.c, u_input.b, u_input.b), 32732i));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: Struct_2) -> vec4<bool> {
    let var_0 = Struct_1(!vec4<bool>(!arg_2.e, any(!vec4<bool>(false, false, false, arg_2.e)), false, arg_2.a.c), 4294967295u << (~global1.b % 32u), global1.c, vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-1247f + arg_0.x), -1627f));
    var var_1 = _wgslsmith_clamp_vec4_i32(~_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-4901i, 2147483647i, u_input.c, arg_1.x), vec4<i32>(66009i, u_input.a, arg_1.x, u_input.b)), -vec4<i32>(u_input.a, -6938i, u_input.a, u_input.a)) | vec4<i32>(-1i, _wgslsmith_dot_vec4_i32(-vec4<i32>(13104i, arg_1.x, 13807i, u_input.b), vec4<i32>(-67715i, 2147483647i, u_input.a, 1i)), i32(-1i) * -2147483647i, _wgslsmith_mult_i32(arg_1.x, ~(-1i))), ~func_2(Struct_1(vec4<bool>(var_0.a.x, global1.a.x, arg_2.a.c, true), _wgslsmith_mult_u32(0u, global1.b), true, _wgslsmith_f_op_vec3_f32(step(var_0.d, arg_2.d.d))), Struct_1(var_0.a, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b, 46280u), vec2<u32>(global1.b, 0u)), all(vec4<bool>(false, true, false, global1.a.x)), _wgslsmith_f_op_vec3_f32(min(arg_0, vec3<f32>(960f, arg_2.d.d.x, global1.d.x))))), vec4<i32>(arg_1.x, -20993i, -(-arg_1.x ^ ~u_input.c), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_1.x & u_input.c, arg_1.x, arg_1.x), vec4<i32>(u_input.b, 2147483647i, u_input.c, _wgslsmith_add_i32(-2147483647i, -1i)))));
    let var_2 = Struct_2(Struct_1(var_0.a, ~(~1u), false, _wgslsmith_f_op_vec3_f32(step(var_0.d, vec3<f32>(955f, _wgslsmith_f_op_f32(select(668f, -595f, false)), _wgslsmith_div_f32(-823f, global1.d.x))))), !var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -564f)), global1.d.x))), Struct_1(arg_2.d.a, ~func_3(true, 4294967295u, var_0.d, Struct_1(vec4<bool>(true, true, global1.a.x, true), var_0.b, arg_2.b.x, vec3<f32>(arg_2.a.d.x, -2633f, 121f))).x ^ func_3(global1.d.x == arg_2.d.d.x, 30779u, global1.d, Struct_1(vec4<bool>(true, arg_2.d.c, false, var_0.a.x), global1.b, arg_2.e, global1.d)).x, any(vec2<bool>(var_0.c, arg_2.a.a.x && arg_2.e)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.d.x, 257f, var_0.d.x)))) * vec3<f32>(_wgslsmith_f_op_f32(ceil(-123f)), _wgslsmith_f_op_f32(-532f * 1982f), _wgslsmith_f_op_f32(f32(-1f) * -667f)))), global1.c == !(var_1.x <= firstTrailingBit(-17303i)));
    let var_3 = Struct_2(var_0, select(arg_2.a.a, select(!vec4<bool>(false, false, true, global1.c), global1.a, true), vec4<bool>(all(var_0.a.xwy), (-2147483647i >> (var_0.b % 32u)) != (arg_1.x << (var_0.b % 32u)), true, all(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(196f)) * var_0.d.x)) + _wgslsmith_f_op_f32(f32(-1f) * -829f)), var_0, ((~var_0.b > ~global1.b) | arg_2.b.x) && false);
    var var_4 = abs(var_1.x);
    return global1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global1.c;
    global1 = Struct_1(!func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.d.x, global1.d.x, global1.d.x)), ~vec2<i32>(u_input.c, 1958i), Struct_2(Struct_1(global1.a, global1.b, false, vec3<f32>(global1.d.x, -855f, 1000f)), global1.a, _wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_1(global1.a, 1u, true, vec3<f32>(506f, global1.d.x, 819f)), global1.a.x || true)), firstTrailingBit(4294967295u), !(!global1.c | any(select(vec3<bool>(false, global1.a.x, true), vec3<bool>(global1.a.x, true, false), false))), global1.d);
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.d - global1.d) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.d.x, -228f, global1.d.x), global1.d, global1.c)) + vec3<f32>(1524f, -139f, 1650f))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(global1.d.x, global1.d.x)), global1.d.x, _wgslsmith_f_op_f32(f32(-1f) * -2087f)) - vec3<f32>(251f, _wgslsmith_f_op_f32(685f - -555f), _wgslsmith_f_op_f32(-488f + global1.d.x))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global1.d.x)), global1.d.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.d.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(global1.d.x, global1.d.x))))), vec3<bool>((1057f <= global1.d.x) && true, 1u < firstLeadingBit(global1.b), true))));
    let var_1 = Struct_1(!(!global1.a), global1.b, global1.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), 832f, -748f) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(global1.d))))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(478f * -298f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x))), 324f, _wgslsmith_f_op_f32(f32(-1f) * -570f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~reverseBits(1u), (~93362u << (global1.b % 32u)) << (global1.b % 32u)), min(6265i, u_input.a), vec4<u32>(~abs(1u), _wgslsmith_dot_vec2_u32(~(vec2<u32>(115275u, 38925u) >> (vec2<u32>(global1.b, var_1.b) % vec2<u32>(32u))), ~vec2<u32>(60332u, 2004u)), 4294967295u, _wgslsmith_mult_u32(1u, ~_wgslsmith_sub_u32(global1.b, global1.b))), u_input.a);
}

