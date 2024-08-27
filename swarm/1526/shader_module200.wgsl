struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec3<f32>,
    e: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec2<f32>,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 169f;

var<private> global1: vec4<bool> = vec4<bool>(false, true, false, true);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: f32, arg_3: bool) -> i32 {
    var var_0 = _wgslsmith_add_u32(arg_1.x, 0u);
    var_0 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(arg_1.x, 76547u, arg_0.c), ~arg_1.x), arg_1.x, arg_1.x, abs(reverseBits(arg_0.a.x))), select(countOneBits(vec4<u32>(42666u, 43268u, arg_0.c, 30921u)), ~(~vec4<u32>(arg_1.x, 44807u, arg_0.a.x, arg_1.x)), !any(vec4<bool>(arg_3, global1.x, true, global1.x))));
    var var_1 = Struct_3(select(true, all(vec2<bool>(any(vec3<bool>(arg_3, arg_3, global1.x)), true)), all(!(!vec4<bool>(arg_0.e, arg_0.e, arg_3, true)))), u_input.a.x, arg_0.d.xy, abs(vec2<u32>(arg_1.x, arg_0.c)), Struct_1(vec3<u32>(firstLeadingBit(1u), arg_1.x, _wgslsmith_div_u32(24572u, ~arg_1.x)), 1u, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(arg_0.a.xy, vec2<u32>(arg_1.x, arg_1.x)), arg_1), _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(arg_0.a.xx, vec2<u32>(arg_1.x, 25656u)), vec2<u32>(arg_1.x, 0u))), _wgslsmith_f_op_vec3_f32(step(arg_0.d, arg_0.d)), select(any(select(global1.wyx, global1.xyz, vec3<bool>(global1.x, false, false))), true, !arg_3)));
    global1 = select(vec4<bool>(arg_0.e, true, !any(vec2<bool>(true, true)), true), vec4<bool>(!(_wgslsmith_mod_u32(arg_0.b, arg_0.a.x) > ~1837u), true, _wgslsmith_clamp_u32(var_1.e.a.x, 30286u << (var_1.e.a.x % 32u), 1u) > ~var_1.d.x, true), false);
    var var_2 = var_1.e.c;
    return var_1.b;
}

fn func_2() -> f32 {
    let var_0 = ~20604u;
    let var_1 = ~vec2<i32>(func_3(Struct_1(vec3<u32>(0u, var_0, var_0), var_0, 3500u, vec3<f32>(1663f, -573f, -427f), false), _wgslsmith_div_vec2_u32(vec2<u32>(0u, var_0), vec2<u32>(var_0, var_0)), -1274f, !global1.x) << ((var_0 | select(var_0, 0u, global1.x)) % 32u), ~u_input.a.x | ~(~u_input.a.x));
    var var_2 = Struct_2(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(1u, 1u)) >> (~vec2<u32>(var_0, 1u) % vec2<u32>(32u)), vec2<u32>(~(~var_0), ~min(92991u, 13052u))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(260f + _wgslsmith_div_f32(-207f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(123f * 360f), _wgslsmith_f_op_f32(f32(-1f) * -1411f))))));
    var var_3 = !(!(!vec3<bool>(global1.x, global1.x, true)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-260f)), _wgslsmith_f_op_f32(f32(-1f) * -779f), true))))), 646f);
}

fn func_4(arg_0: f32) -> u32 {
    global1 = vec4<bool>(all(global1.yzz), (arg_0 <= 483f) | global1.x, _wgslsmith_dot_vec4_i32(u_input.a ^ vec4<i32>(u_input.b.x, -28609i, u_input.a.x, u_input.d.x), vec4<i32>(_wgslsmith_sub_i32(u_input.d.x, u_input.a.x), i32(-1i) * -6549i, u_input.d.x, -2098i)) < _wgslsmith_mult_i32(-u_input.b.x, u_input.c.x), all(global1.xxy));
    let var_0 = ~vec2<u32>(1u, 1u);
    let var_1 = 0u;
    var var_2 = ~_wgslsmith_sub_i32(-63068i, _wgslsmith_clamp_i32(~_wgslsmith_clamp_i32(u_input.c.x, 7428i, u_input.d.x), -u_input.a.x, select(-10534i << (0u % 32u), 1i, any(vec4<bool>(global1.x, global1.x, true, false)))));
    var_2 = 1i;
    return _wgslsmith_dot_vec2_u32(var_0, vec2<u32>(var_1, var_1));
}

fn func_1() -> vec2<i32> {
    let var_0 = _wgslsmith_mult_u32(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)));
    return _wgslsmith_sub_vec2_i32(select(u_input.d.wz, _wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(select(u_input.d.zy, vec2<i32>(u_input.b.x, u_input.c.x), vec2<bool>(true, global1.x)), vec2<i32>(u_input.c.x, -1361i), vec2<i32>(u_input.a.x, u_input.a.x)), abs(~vec2<i32>(u_input.a.x, u_input.d.x)), vec2<i32>(~14842i, firstTrailingBit(u_input.a.x))), false), vec2<i32>(abs(~(~(-1i))), ~u_input.b.x));
}

fn func_5(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: vec3<f32>) -> Struct_2 {
    var var_0 = vec2<bool>(arg_2.a, global1.x);
    let var_1 = select(vec3<i32>(_wgslsmith_dot_vec3_i32(select(-u_input.b.zxw, _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1.x, -13749i, -1975i), vec3<i32>(u_input.c.x, arg_1.x, 2537i), vec3<i32>(arg_2.b, -1i, u_input.b.x)), true || var_0.x), abs(vec3<i32>(arg_1.x, -8259i, arg_1.x))), -1i, firstTrailingBit(firstTrailingBit(-52550i))), vec3<i32>(i32(-1i) * -u_input.d.x, ~(arg_1.x << (arg_0.x % 32u)), -func_1().x) | -(vec3<i32>(arg_1.x, -2147483647i, u_input.d.x) & vec3<i32>(arg_1.x, u_input.b.x, u_input.b.x)), !(!(!vec3<bool>(true, var_0.x, global1.x))));
    let var_2 = _wgslsmith_mod_i32(~(~u_input.c.x & (_wgslsmith_clamp_i32(u_input.d.x, u_input.a.x, -21737i) >> (_wgslsmith_mod_u32(arg_2.e.a.x, arg_0.x) % 32u))), _wgslsmith_div_i32(-9808i, ~29609i));
    let var_3 = arg_0;
    var var_4 = select(!(!(!vec3<bool>(false, arg_2.e.e, false))), select(!global1.yww, select(!select(vec3<bool>(arg_2.e.e, true, true), global1.yyz, global1.x), vec3<bool>(true, all(global1.xy), select(var_0.x, arg_2.a, false)), true), !(true && all(vec3<bool>(false, arg_2.e.e, true)))), global1.xwy);
    return Struct_2(arg_2.e.b);
}

fn func_6(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_2, arg_3: vec3<f32>) -> StorageBuffer {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x * -303f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(364f, 477f))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_3.x))))));
    var var_0 = Struct_3(global1.x, -6204i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 944f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.x, 1212f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, arg_3.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(arg_3.zy))))), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, _wgslsmith_mult_u32(~arg_2.a, reverseBits(4294967295u))), ~vec2<u32>(arg_2.a, _wgslsmith_div_u32(63058u, arg_2.a))), Struct_1(vec3<u32>(arg_2.a, (arg_2.a ^ 61341u) << (1u % 32u), 13631u << (func_4(arg_3.x) % 32u)), _wgslsmith_add_u32(_wgslsmith_div_u32(~9371u, ~arg_2.a), arg_2.a | _wgslsmith_add_u32(arg_2.a, 55473u)), arg_2.a, _wgslsmith_f_op_vec3_f32(min(arg_3, vec3<f32>(-236f, _wgslsmith_f_op_f32(step(arg_3.x, 442f)), arg_3.x))), arg_0.x));
    var var_1 = var_0.c;
    var var_2 = true;
    var var_3 = -firstTrailingBit(abs(vec2<i32>(_wgslsmith_mod_i32(-18701i, u_input.c.x), 0i)));
    return StorageBuffer(7923u, 23011i, func_1().x, _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(var_3.x, -2147483647i, var_3.x, var_3.x), u_input.b), ~u_input.d), u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(-3270i, 0i, u_input.d.x);
    let x = u_input.a;
    s_output = func_6(select(!select(vec4<bool>(global1.x, global1.x, false, global1.x), !vec4<bool>(global1.x, global1.x, true, global1.x), vec4<bool>(true, global1.x, false, global1.x)), vec4<bool>(false, global1.x, global1.x, ~var_0.x != -u_input.d.x), !global1.x), true, func_5(vec4<u32>(~(~27651u), 0u, min(55724u, ~1u), abs(5214u) << (1u % 32u)), -min(func_1(), var_0.xz), Struct_3(!(!global1.x), -34513i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(817f, 1370f)), vec2<u32>(~0u, ~1u), Struct_1(min(vec3<u32>(59712u, 7846u, 133524u), vec3<u32>(4294967295u, 1u, 83599u)), ~4294967295u, 1u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(853f, 2006f, -237f)), all(global1.wzz))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1f, 1f, 1f)))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-671f - -1091f)) - 168f), _wgslsmith_f_op_f32(-378f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(456f, -288f)) - _wgslsmith_f_op_f32(f32(-1f) * -829f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-1000f, -563f)), -1000f)))));
}

