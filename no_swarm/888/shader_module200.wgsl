struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: i32,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 17899u;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<f32>, arg_1: f32, arg_2: vec4<i32>) -> bool {
    let var_0 = abs(-arg_2.x);
    global0 = _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(reverseBits(~u_input.b), u_input.d.ww), ~firstTrailingBit(u_input.d.x));
    let var_1 = _wgslsmith_div_vec3_i32(arg_2.yxy, vec3<i32>(reverseBits(-_wgslsmith_clamp_i32(arg_2.x, u_input.e.x, -2147483647i)), -30254i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.x, -1i, 0i, var_0), -_wgslsmith_mult_vec4_i32(arg_2, arg_2))));
    var var_2 = select(!vec2<bool>(all(vec2<bool>(true, true)), true), vec2<bool>(true, !any(select(vec2<bool>(false, true), vec2<bool>(false, true), false))), !(!(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)))));
    var var_3 = Struct_3(~_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, 12221u), vec2<u32>(u_input.d.x, 4294967295u)) ^ ~u_input.a.xz, ~u_input.c.zy), 809f, Struct_2(Struct_1(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -190f), _wgslsmith_f_op_f32(arg_1 * arg_0.x), 108f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_1, arg_1), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, -184f)))), ~(arg_2.x | u_input.e.x), 58945u, abs(103482i)), Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(974f, -1409f, arg_1, arg_1), vec4<f32>(734f, -779f, arg_1, -646f)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-arg_0.zy))), abs(~u_input.e.x), u_input.a.x, _wgslsmith_add_i32(-950i, var_0) ^ _wgslsmith_sub_i32(-2147483647i, -48577i)), !(true | !var_2.x)), any(!(!vec3<bool>(true, true, var_2.x))) && true);
    return all(!select(vec4<bool>(var_0 <= 24640i, var_3.d, true, var_3.d), !(!vec4<bool>(var_3.c.c, true, true, false)), true));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_2 {
    global0 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(countOneBits(~u_input.d), _wgslsmith_add_vec4_u32(u_input.d, ~u_input.d)), _wgslsmith_dot_vec4_u32(~u_input.d, ~_wgslsmith_clamp_vec4_u32(u_input.d, vec4<u32>(0u, u_input.c.x, arg_1.d, 0u), vec4<u32>(0u, arg_1.d, u_input.c.x, 1u)))), u_input.b);
    let var_0 = _wgslsmith_mult_i32(-24401i, ~35792i) ^ -arg_1.e;
    global0 = 63182u;
    global0 = 1u;
    let var_1 = select(!vec2<bool>(!any(vec3<bool>(true, true, false)), true), vec2<bool>(all(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), any(vec3<bool>(true, true, true)))), all(vec4<bool>(true, all(vec3<bool>(true, false, false)), true, true))), vec2<bool>(true, (_wgslsmith_sub_i32(-22331i, 1i) << (u_input.b.x % 32u)) != u_input.e.x));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(arg_1.a)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.a + arg_1.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(arg_1.b, arg_1.a.xy)))), arg_1.c, arg_1.d, ~var_0), arg_1, select(!func_3(arg_1.a.zwx, arg_0.x, firstLeadingBit(vec4<i32>(42559i, var_0, arg_1.c, arg_1.e))), 30698i <= firstTrailingBit(var_0), max(2147483647i, u_input.e.x) >= _wgslsmith_div_i32(u_input.e.x & u_input.e.x, _wgslsmith_sub_i32(u_input.e.x, 8106i))));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: Struct_3, arg_3: Struct_3) -> bool {
    global0 = _wgslsmith_mult_u32(arg_3.a.x, _wgslsmith_dot_vec4_u32(u_input.d, _wgslsmith_add_vec4_u32(u_input.d, u_input.d)));
    global0 = arg_3.c.a.d;
    var var_0 = arg_2.c;
    let var_1 = vec3<i32>(~arg_1, 46493i, firstTrailingBit(-abs(arg_3.c.b.e)));
    var var_2 = func_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(580f, var_0.b.b.x)))), var_0.b.b.x), arg_3.c.a);
    return var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(-2147483647i, i32(-1i) * -(_wgslsmith_mod_i32(u_input.e.x, u_input.e.x) | countOneBits(-34487i)));
    var var_1 = all(select(vec2<bool>(all(vec2<bool>(true, true)), true & func_1(u_input.d.x, -67768i, Struct_3(u_input.a.zy, 1282f, Struct_2(Struct_1(vec4<f32>(1151f, -1000f, 384f, -1000f), vec2<f32>(-1000f, -852f), u_input.e.x, u_input.a.x, u_input.e.x), Struct_1(vec4<f32>(1000f, -408f, 1762f, -132f), vec2<f32>(-926f, 924f), u_input.e.x, u_input.a.x, -1i), true), false), Struct_3(vec2<u32>(u_input.a.x, u_input.b.x), -659f, Struct_2(Struct_1(vec4<f32>(-1000f, -436f, -1546f, 1900f), vec2<f32>(564f, 1788f), 0i, 41355u, u_input.e.x), Struct_1(vec4<f32>(743f, 387f, 307f, 164f), vec2<f32>(361f, 244f), u_input.e.x, u_input.c.x, u_input.e.x), true), false))), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), !(_wgslsmith_f_op_f32(ceil(-122f)) >= _wgslsmith_f_op_f32(min(597f, 112f)))));
    global0 = 4294967295u | u_input.b.x;
    var_0 = _wgslsmith_mult_i32((-2147483647i >> (select(_wgslsmith_sub_u32(6953u, u_input.a.x), ~u_input.a.x, true) % 32u)) << (~u_input.a.x % 32u), -26440i);
    let var_2 = Struct_1(func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-357f, 1062f)) + vec2<f32>(-1000f, 726f)) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(626f, -2322f)))))), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-911f, -444f))), func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(806f, 287f) * vec2<f32>(-1457f, 292f)), Struct_1(vec4<f32>(1225f, -721f, -448f, 250f), vec2<f32>(300f, 1000f), u_input.e.x, u_input.d.x, 0i)).a).b).b.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(190f * -1000f), _wgslsmith_f_op_f32(-831f - -584f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, -910f)))), false)) * func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-206f, -833f)), Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(507f, -1578f, -965f, 260f), vec4<f32>(1142f, -2605f, -2631f, -456f), vec4<bool>(true, false, true, true))), vec2<f32>(-1000f, -160f), 0i, _wgslsmith_mult_u32(u_input.b.x, u_input.a.x), u_input.e.x << (3529u % 32u))).a.a.yx), -u_input.e.x, 1u, u_input.e.x);
    global0 = abs(~1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_2.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-3061f, -186f)))))), ~u_input.d.xw, firstLeadingBit(33655u & ~countOneBits(var_2.d)), _wgslsmith_f_op_f32(floor(var_2.b.x)));
}

