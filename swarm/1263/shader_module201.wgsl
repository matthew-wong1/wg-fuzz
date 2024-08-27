struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(i32(-2147483648), 28806i), vec4<f32>(1223f, -1636f, -418f, -544f), vec3<i32>(i32(-2147483648), 31552i, 1i), vec4<i32>(27888i, 2147483647i, 1i, 2147483647i));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> vec4<f32> {
    global0 = Struct_1(vec2<i32>(_wgslsmith_mod_i32(50199i, -15222i), _wgslsmith_mod_i32(u_input.a, max(-2147483647i | global0.d.x, 0i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.b)))), ~global0.d.yzy, -vec4<i32>(52739i, 1i, 2147483647i, -35358i));
    let var_0 = all(select(vec2<bool>(false, true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(false, false)), vec2<bool>(true, false))) && (any(select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)))) && any(vec2<bool>(true, true)));
    let var_1 = Struct_1(-min(-global0.c.zz, vec2<i32>(~35634i, _wgslsmith_clamp_i32(-15898i, -13877i, 1i))), _wgslsmith_f_op_vec4_f32(-global0.b), ~(~(~(~vec3<i32>(u_input.a, -33035i, 7729i)))), ((_wgslsmith_add_vec4_i32(vec4<i32>(0i, global0.a.x, global0.a.x, u_input.a), global0.d) & reverseBits(global0.d)) | (global0.d << (vec4<u32>(1u, 0u, 19503u, 3689u) % vec4<u32>(32u)))) & -(~select(global0.d, global0.d, true)));
    var var_2 = var_1;
    var var_3 = Struct_1(-(vec2<i32>(~u_input.a, 0i) >> (~vec2<u32>(10664u, 20015u) % vec2<u32>(32u))), var_1.b, global0.c, ~max(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.d.x, -55615i, 0i, u_input.a), vec4<i32>(global0.a.x, u_input.a, -76347i, 1i) >> (vec4<u32>(65303u, 4294967295u, 0u, 4294967295u) % vec4<u32>(32u)), reverseBits(vec4<i32>(var_2.a.x, u_input.a, 2147483647i, var_1.d.x))), ~(~var_2.d)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-459f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.b.x, var_1.b.x))), var_1.b.x, -1382f), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, var_3.b.x, -561f, global0.b.x) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.b.x, var_1.b.x, var_2.b.x, -685f)))))))));
}

fn func_2() -> vec4<f32> {
    let var_0 = !select(false, true, false);
    global0 = Struct_1(~(_wgslsmith_mult_vec2_i32(global0.c.yz, vec2<i32>(30759i, 3281i)) | (global0.c.yx & -vec2<i32>(27988i, global0.d.x))), _wgslsmith_f_op_vec4_f32(func_3()), vec3<i32>(1i & _wgslsmith_add_i32(_wgslsmith_mult_i32(0i, u_input.a), -global0.d.x), global0.a.x, 0i), global0.d);
    var var_1 = global0.d;
    let var_2 = Struct_1(countOneBits(~(-(~vec2<i32>(14046i, u_input.a)))), vec4<f32>(global0.b.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.b.x))), 1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1452f * 980f)), global0.b.x)), var_1.wyz, -max((vec4<i32>(0i, global0.d.x, u_input.a, u_input.a) & global0.d) & vec4<i32>(-2147483647i, global0.a.x, -21067i, u_input.a), global0.d));
    global0 = Struct_1(vec2<i32>(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.c.x, -2147483647i, var_1.x, global0.d.x), reverseBits(var_2.d))), var_1.x), global0.b, vec3<i32>(global0.d.x, global0.c.x, ~(~39524i)), var_2.d);
    return _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -826f), _wgslsmith_f_op_f32(sign(var_2.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-657f - 802f))) - _wgslsmith_f_op_f32(-840f * _wgslsmith_f_op_f32(abs(var_2.b.x)))), var_2.b.x), global0.b, true | !var_0));
}

fn func_1(arg_0: i32) -> i32 {
    var var_0 = Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-14132i, -8078i), vec2<i32>(1i, 2147483647i)), abs(_wgslsmith_mult_i32(arg_0, 2881i))), vec2<i32>(1i, global0.c.x)), _wgslsmith_f_op_vec4_f32(func_2()), _wgslsmith_div_vec3_i32(firstTrailingBit(global0.d.wxz), abs(global0.c | global0.c)) << (~(~firstLeadingBit(vec3<u32>(36839u, 1u, 0u))) % vec3<u32>(32u)), abs(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(-global0.d, vec4<i32>(-18955i, 19060i, global0.d.x, -2147483647i)), vec4<i32>(countOneBits(-2147483647i), u_input.a, reverseBits(-1i), i32(-1i) * -31610i))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(var_0.b.zxz, vec3<f32>(_wgslsmith_f_op_f32(ceil(728f)), _wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(-global0.b.x)), var_0.b.x))));
    let var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(global0.b)), var_0.b)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, global0.b.x, global0.b.x, -701f) * global0.b) + var_0.b))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-716f - 1085f), -414f, _wgslsmith_f_op_f32(f32(-1f) * -545f), -955f)))))));
    let var_3 = Struct_1(var_0.c.yy, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.b + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(var_0.b, vec4<f32>(1407f, -1008f, global0.b.x, -1452f))))), vec4<f32>(_wgslsmith_f_op_f32(select(-1092f, -2590f, true)), _wgslsmith_f_op_f32(f32(-1f) * -832f), -159f, var_2.x)), var_0.d.zzx, -_wgslsmith_mult_vec4_i32(-(vec4<i32>(arg_0, global0.c.x, 33047i, global0.d.x) ^ var_0.d), vec4<i32>(~1i, -u_input.a, ~arg_0, global0.a.x ^ var_0.a.x)));
    let var_4 = _wgslsmith_mult_i32(arg_0, u_input.a);
    return -55105i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(global0.d, _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(~(-global0.d), _wgslsmith_mult_vec4_i32(global0.d, global0.d)), global0.d >> (vec4<u32>(~4294967295u, ~7649u, 1u, _wgslsmith_sub_u32(51984u, 6329u)) % vec4<u32>(32u))), !(!(firstTrailingBit(28156u) >= 3378u)));
    global0 = Struct_1(-max(-vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(-14599i, func_1(var_0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2()) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, global0.b.x, -1362f, 1914f) + global0.b), vec4<f32>(global0.b.x, global0.b.x, 416f, global0.b.x))))), ~vec3<i32>(~(-1480i), u_input.a, abs(-global0.c.x)), global0.d);
    var var_1 = 1192f;
    var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1488f * _wgslsmith_f_op_f32(1f * global0.b.x))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1f * -973f))));
    let var_3 = vec4<bool>(true, false, all(vec2<bool>(true, -global0.a.x != 0i)), !(!any(vec2<bool>(true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global0.b.zw, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec4_f32(func_3()).xz)), var_3.wx))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(2508f, global0.b.x, 370f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-886f, global0.b.x, true)) + _wgslsmith_f_op_f32(f32(-1f) * -266f))), _wgslsmith_f_op_vec4_f32(func_3()))), countOneBits(vec2<u32>(firstLeadingBit(_wgslsmith_div_u32(24078u, 44198u)), ~0u & _wgslsmith_clamp_u32(80083u, 4294967295u, 44403u))), ~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(82877u, 1u), vec2<u32>(1u, 1u)), 1u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(17539u, 1u, 13521u, 4294967295u), vec4<u32>(0u, 25166u, 0u, 0u), var_3.x), vec4<u32>(1u, 1u, 1u, 1u))), var_0.wx);
}

