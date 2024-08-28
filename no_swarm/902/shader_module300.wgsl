struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-426f, 2064f);

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> vec3<f32> {
    global0 = vec2<f32>(108f, _wgslsmith_f_op_f32(-arg_1.b.x));
    let var_0 = abs(~_wgslsmith_clamp_u32(4294967295u, u_input.a.x, countOneBits(u_input.a.x)) >> (u_input.e % 32u));
    var var_1 = Struct_3(vec4<u32>((~var_0 ^ abs(78921u)) | ~reverseBits(1u), u_input.e, 53166u, 1u));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(select(-498f, -938f, arg_1.a)), _wgslsmith_div_f32(arg_1.b.x, -931f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.b.zy))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -914f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.x, 280f)) - arg_1.b.zx), vec2<bool>(true, true))) + arg_1.b.zy));
    var var_2 = _wgslsmith_dot_vec4_u32(min(vec4<u32>(~(arg_0 ^ 0u), ~(~arg_0), var_0, ~min(var_0, 38136u)), ~var_1.a), ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_1.a.x, u_input.e, u_input.a.x, var_0), firstTrailingBit(vec4<u32>(0u, 0u, var_0, arg_0)), vec4<u32>(abs(arg_0), ~arg_0, 26310u, ~u_input.a.x)));
    return _wgslsmith_f_op_vec3_f32(-arg_1.b);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4) -> u32 {
    let var_0 = Struct_1(57965u & max(~arg_0.c.d, 0u), _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(~vec2<i32>(1i, u_input.d), arg_1.a.b), vec2<i32>(firstTrailingBit(countOneBits(48190i)), max(arg_1.a.c.x, -37554i) << (arg_0.e.a % 32u)), vec2<i32>(-reverseBits(arg_1.a.b.x), arg_0.e.c.x)), vec3<i32>(abs(~abs(3114i)), -11629i, _wgslsmith_sub_i32(arg_1.a.c.x, _wgslsmith_add_i32(abs(arg_0.c.c.x), ~2147483647i))), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.d.d, arg_1.a.d, 64363u), u_input.a));
    var var_1 = Struct_3(~(~(~abs(vec4<u32>(arg_0.d.a, arg_1.a.d, var_0.a, arg_0.e.d)))));
    let var_2 = select(vec2<bool>(true, true), vec2<bool>(false, _wgslsmith_div_i32(i32(-1i) * -2147483647i, _wgslsmith_mult_i32(-36910i, var_0.b.x)) <= abs(var_0.b.x)), any(vec2<bool>(false, any(!vec3<bool>(arg_0.a, false, arg_0.a)))));
    let var_3 = 1i;
    let var_4 = arg_1;
    return abs(_wgslsmith_div_u32(~(~arg_1.a.a), ~25216u));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<u32>) -> u32 {
    var var_0 = ~arg_0.x;
    let var_1 = vec4<u32>(1126u, func_4(Struct_2(all(vec2<bool>(false, false)), _wgslsmith_f_op_vec3_f32(func_3(~u_input.a.x, Struct_2(true, vec3<f32>(global0.x, -1566f, global0.x), Struct_1(42841u, vec2<i32>(1i, 2147483647i), vec3<i32>(u_input.b, 1i, u_input.d), 42337u), Struct_1(21291u, vec2<i32>(2147483647i, 3949i), vec3<i32>(-9080i, u_input.c, u_input.c), arg_0.x), Struct_1(23070u, vec2<i32>(0i, u_input.c), vec3<i32>(-2147483647i, u_input.d, u_input.b), 48502u)))), Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, arg_1.x, 0u), vec4<u32>(1u, arg_0.x, 0u, 3576u)), ~vec2<i32>(-15453i, u_input.b), select(vec3<i32>(2147483647i, u_input.c, u_input.b), vec3<i32>(u_input.c, -17715i, 0i), vec3<bool>(true, false, true)), reverseBits(u_input.e)), Struct_1(1u, vec2<i32>(46897i, 1i), -vec3<i32>(u_input.d, -1i, u_input.b), u_input.a.x), Struct_1(4294967295u, -vec2<i32>(28756i, 25341i), select(vec3<i32>(58900i, -1i, -1i), vec3<i32>(u_input.c, u_input.c, u_input.b), vec3<bool>(true, true, false)), 0u)), Struct_4(Struct_1(arg_1.x, ~vec2<i32>(6576i, 1i), vec3<i32>(-1287i, u_input.b, -2147483647i), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.e, 100435u), arg_0)))), arg_1.x, u_input.a.x);
    return 15434u;
}

fn func_1(arg_0: Struct_4, arg_1: Struct_4, arg_2: Struct_4) -> f32 {
    global0 = vec2<f32>(global0.x, -1074f);
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) - vec2<f32>(global0.x, global0.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(282f, 960f))))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global0.x - 2089f), _wgslsmith_f_op_f32(-global0.x))))));
    var var_1 = vec4<u32>(firstTrailingBit(func_2(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.a.a, 39656u, 1u, arg_2.a.d), vec4<u32>(5874u, 0u, u_input.e, 4294967295u)), countOneBits(arg_0.a.a), ~19257u), select(u_input.a, u_input.a, select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)))), _wgslsmith_add_u32(firstTrailingBit(reverseBits(4294967295u)), reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 19068u, 31910u, 37065u), vec4<u32>(arg_1.a.d, arg_0.a.a, arg_2.a.d, arg_2.a.d))) << (_wgslsmith_mod_u32(~arg_1.a.a, ~arg_0.a.a) % 32u)), u_input.a.x, 22812u);
    var_1 = ~_wgslsmith_add_vec4_u32(~select(vec4<u32>(4294967295u, 43278u, 4294967295u, 63395u), vec4<u32>(0u, arg_1.a.d, 0u, arg_0.a.d), false), abs(select(vec4<u32>(var_1.x, 0u, 0u, arg_2.a.a), vec4<u32>(4294967295u, 16212u, 0u, arg_0.a.a), vec4<bool>(false, false, false, false)))) ^ (vec4<u32>(41669u, u_input.e, 1u, 1u) << (~(~vec4<u32>(86558u, 74420u, 50205u, arg_2.a.a) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(31348u, 4294967295u, arg_0.a.d, u_input.a.x), vec4<u32>(85589u, u_input.a.x, arg_0.a.d, 1u), vec4<u32>(arg_0.a.a, 0u, var_1.x, 1u))) % vec4<u32>(32u)));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(337f - var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.x)) - var_0.x) * _wgslsmith_div_f32(452f, global0.x)) + global0.x), -514f);
    return var_0.x;
}

fn func_5(arg_0: f32) -> f32 {
    global0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)), vec2<f32>(-975f, -202f)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2233f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(Struct_4(Struct_1(4294967295u, vec2<i32>(u_input.c, -15484i), vec3<i32>(u_input.d, u_input.c, 1i), u_input.e)), Struct_4(Struct_1(1u, vec2<i32>(u_input.d, u_input.d), vec3<i32>(u_input.b, u_input.d, u_input.c), u_input.e)), Struct_4(Struct_1(38752u, vec2<i32>(0i, u_input.b), vec3<i32>(0i, u_input.c, -2147483647i), 1u)))), _wgslsmith_div_f32(global0.x, global0.x))))), _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(global0.x - global0.x))))));
    let var_1 = Struct_1(func_2(vec3<u32>(_wgslsmith_div_u32(u_input.e ^ u_input.a.x, _wgslsmith_div_u32(3270u, u_input.a.x)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(60634u, u_input.a.x, u_input.e, 59322u), vec4<u32>(0u, 4294967295u, u_input.e, 15991u)), _wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.e, 4294967295u), u_input.e)), u_input.a), vec2<i32>(~abs(u_input.c), -(~(-u_input.c))), max(vec3<i32>(_wgslsmith_clamp_i32(u_input.d, ~2147483647i, ~u_input.c), -u_input.d, u_input.d << (u_input.e % 32u)), vec3<i32>(-abs(u_input.b), _wgslsmith_clamp_i32(u_input.c, u_input.d, -11674i) | _wgslsmith_div_i32(54628i, 5265i), 15779i)), ~_wgslsmith_sub_u32(u_input.a.x, _wgslsmith_sub_u32(u_input.e, countOneBits(u_input.e))));
    var var_2 = vec4<bool>(any(vec2<bool>(true, !any(vec3<bool>(true, true, false)))), all(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), any(vec4<bool>(true, false, true, true)))), all(vec2<bool>(true, true)), any(vec4<bool>(true, true, true, select(true, false, true) != false)));
    var var_3 = Struct_2(!any(vec3<bool>(true, true, all(var_2.wxx))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))), global0.x, _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_f32(select(var_0.x, 661f, var_2.x)))))), var_1, Struct_1(0u, reverseBits(_wgslsmith_add_vec2_i32(vec2<i32>(21570i, 3403i), var_1.b)), ~max(_wgslsmith_clamp_vec3_i32(var_1.c, var_1.c, var_1.c), select(var_1.c, vec3<i32>(-40865i, u_input.b, u_input.c), var_2.x)), func_4(Struct_2(true, vec3<f32>(482f, 750f, global0.x), Struct_1(70244u, vec2<i32>(var_1.c.x, var_1.b.x), var_1.c, u_input.a.x), var_1, var_1), Struct_4(var_1))), var_1);
    var var_4 = firstTrailingBit(firstLeadingBit(~(_wgslsmith_dot_vec2_i32(vec2<i32>(-78549i, u_input.d), var_1.c.zx) & _wgslsmith_dot_vec2_i32(var_1.b, var_1.c.xz))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(max(308f, var_3.b.x)), 1810f, -1000f), vec3<f32>(_wgslsmith_f_op_f32(-global0.x), -1000f, -1390f)))), abs(~vec3<u32>(0u, reverseBits(var_1.a), _wgslsmith_dot_vec3_u32(u_input.a, u_input.a))), 284f, max(vec2<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-29006i, 0i), vec2<i32>(var_3.e.c.x, var_1.b.x)), _wgslsmith_clamp_i32(1i, var_1.c.x, -46264i)), ~(-2147483647i)), -(vec2<i32>(u_input.d, -2147483647i) ^ select(var_1.c.yx, vec2<i32>(u_input.d, u_input.b), false))));
}

