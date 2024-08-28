struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: bool,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<f32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: vec4<i32>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: f32, arg_1: u32) -> i32 {
    var var_0 = Struct_4(global1.x);
    var var_1 = _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0 * arg_0), arg_0)));
    var var_2 = global1.x;
    return i32(-1i) * -360i;
}

fn func_2() -> Struct_5 {
    global1 = vec4<i32>(~(~(-1i & global1.x)), (~_wgslsmith_dot_vec3_i32(global1.xzx, vec3<i32>(1i, global0.x, -2147483647i)) & global0.x) << (1u % 32u), 5046i, 9527i);
    global1 = select(reverseBits(reverseBits(max(vec4<i32>(1i, global0.x, global0.x, global1.x), vec4<i32>(global1.x, -43267i, global1.x, global1.x)) ^ _wgslsmith_add_vec4_i32(vec4<i32>(global1.x, 4345i, 1i, global0.x), vec4<i32>(-1i, -14364i, global0.x, 13438i)))), _wgslsmith_clamp_vec4_i32(~vec4<i32>(-24177i, 0i, 2147483647i, global0.x), vec4<i32>(abs(2147483647i), -1i, global0.x, -2147483647i), firstLeadingBit(~vec4<i32>(global1.x, -24259i, global1.x, global1.x))) >> (~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 33503u, u_input.a.x), vec4<u32>(4195u, 24721u, 4294967295u, u_input.a.x), vec4<u32>(4294967295u, 1u, 0u, 0u))) % vec4<u32>(32u)), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), true)));
    global1 = vec4<i32>(func_3(-488f, abs(firstTrailingBit(u_input.a.x))), max(_wgslsmith_mult_i32(global1.x, -27226i), _wgslsmith_add_i32(global1.x, ~(-57551i))), _wgslsmith_div_i32(global1.x, -30922i), _wgslsmith_mult_i32(countOneBits(global0.x), _wgslsmith_add_i32(-global1.x, 9516i << (u_input.a.x % 32u))) << (4294967295u % 32u));
    var var_0 = select(all(vec4<bool>(false, all(vec2<bool>(true, true)), false, !any(vec4<bool>(false, true, false, true)))), select(!any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false)), all(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), true)), true), true);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-945f, 1324f), vec2<f32>(619f, -1227f))))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-1338f, -441f), vec2<f32>(-1248f, -793f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1526f, -2275f))), vec2<bool>(true, true)))))) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(752f)))), _wgslsmith_f_op_f32(356f * _wgslsmith_f_op_f32(step(1060f, 392f)))))));
    return Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2604f + var_1.x)), 42503i, firstLeadingBit(-global1.x) >> (~(~firstLeadingBit(u_input.a.x)) % 32u), u_input.a | _wgslsmith_clamp_vec3_u32(select(vec3<u32>(u_input.a.x, 100900u, 38387u), u_input.a, vec3<bool>(true, false, true)), ~vec3<u32>(1u, 32927u, 0u), abs(abs(u_input.a))));
}

fn func_4(arg_0: i32, arg_1: Struct_5) -> f32 {
    let var_0 = reverseBits(global1.wyy) >> (vec3<u32>(~arg_1.d.x >> (~0u % 32u), ~arg_1.d.x, u_input.a.x) % vec3<u32>(32u));
    var var_1 = countOneBits(~(-29859i));
    var var_2 = u_input.a.x;
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-666f, _wgslsmith_div_f32(-858f, -179f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.a, 445f))))), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(241f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a * arg_1.a))))));
    var_2 = _wgslsmith_div_u32(~u_input.a.x | ~func_2().d.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(abs(arg_1.d), ~vec3<u32>(14787u, u_input.a.x, u_input.a.x)), u_input.a) & _wgslsmith_add_u32(79942u, u_input.a.x));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(287f)), -2437f, arg_1.a != -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(1763f)), var_3))));
}

fn func_1(arg_0: bool, arg_1: vec2<u32>) -> Struct_3 {
    var var_0 = Struct_3(Struct_1(vec2<u32>(1u, ~(~0u))), Struct_2(74292i, vec3<f32>(_wgslsmith_f_op_f32(func_4(global1.x, func_2())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1635f)), _wgslsmith_f_op_f32(step(-610f, -451f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1291f, -745f, 321f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1247f, 260f, -470f)))), (arg_0 | (global1.x > global1.x)) || arg_0, reverseBits(_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, global1.x), global1.zz), select(global1.xy, global1.ww, arg_0)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(252f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -545f))))), max(global1.wzy | global1.xwz, _wgslsmith_sub_vec3_i32(-global1.xxy, vec3<i32>(0i, abs(global0.x), _wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, global1.x, global1.x, 56877i), vec4<i32>(global1.x, global0.x, global1.x, global1.x))))), abs(~firstLeadingBit(global1.xz)));
    var var_1 = Struct_2(var_0.d.x, var_0.b.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(var_0.b.c + _wgslsmith_f_op_vec3_f32(var_0.b.b * var_0.b.c)), var_0.b.c))), !any(!vec2<bool>(true, arg_0)), max(vec2<i32>(func_2().c, ~var_0.b.a), abs(var_0.b.e)));
    var var_2 = var_1.a > var_0.d.x;
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(-424f, 1100f, 817f) * vec3<f32>(-302f, var_1.b.x, -560f))))) + _wgslsmith_f_op_vec3_f32(var_0.b.c * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.b.x, var_1.c.x, 260f))), _wgslsmith_f_op_vec3_f32(sign(var_1.b))))));
    var var_4 = Struct_4(var_0.e.x);
    return Struct_3(var_0.a, var_0.b, vec2<f32>(_wgslsmith_f_op_f32(-var_0.b.c.x), 424f), vec3<i32>(_wgslsmith_sub_i32(1i, -1i), max(-var_0.d.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.a.x, var_0.a.a.x, 77689u, 1u), vec4<u32>(1u, 35440u, 19076u, u_input.a.x)) % 32u), _wgslsmith_div_i32(var_0.b.a, _wgslsmith_div_i32(var_1.e.x, 0i))), var_4.a), vec2<i32>(_wgslsmith_sub_i32(var_0.d.x, func_2().c), ~(~(~(-24675i)))));
}

fn func_5(arg_0: Struct_3, arg_1: bool, arg_2: vec2<bool>) -> vec4<bool> {
    global1 = _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(global1.x, _wgslsmith_sub_i32(44480i, arg_0.e.x), _wgslsmith_sub_i32(global0.x, -16154i), 1i), _wgslsmith_clamp_vec4_i32(~(-vec4<i32>(0i, arg_0.b.a, global0.x, 21371i)), -(~vec4<i32>(global1.x, -2147483647i, arg_0.b.a, -58397i)), vec4<i32>(-21352i, -3633i, i32(-1i) * -1i, _wgslsmith_mult_i32(-50966i, arg_0.b.a)))), vec4<i32>(func_2().b, global1.x, ~(-1i), -_wgslsmith_mod_i32(~global1.x, reverseBits(arg_0.e.x))));
    var var_0 = arg_0;
    global0 = vec2<i32>(-1i, reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(~global0.x, ~var_0.b.a, ~2147483647i, 1i), -(~vec4<i32>(var_0.d.x, 0i, -1i, 4177i)))));
    global1 = vec4<i32>(~(-2147483647i), -35008i, 0i, reverseBits(-func_1(func_1(false, var_0.a.a).b.d, vec2<u32>(u_input.a.x, var_0.a.a.x)).b.a));
    global1 = vec4<i32>(-259i & global1.x, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(~abs(vec3<i32>(var_0.e.x, global0.x, arg_0.d.x)), vec3<i32>(~global0.x, func_2().c, -1i)), _wgslsmith_add_i32(max(1i, arg_0.e.x), firstLeadingBit(48184i))), _wgslsmith_dot_vec2_i32(var_0.e, ~_wgslsmith_clamp_vec2_i32(vec2<i32>(global1.x, var_0.d.x), vec2<i32>(-2147483647i, global1.x), -vec2<i32>(-12042i, global1.x))), (global1.x ^ -37660i) & _wgslsmith_sub_i32(_wgslsmith_sub_i32(global1.x, -2147483647i) | _wgslsmith_add_i32(arg_0.b.e.x, global0.x), -2794i));
    return select(select(vec4<bool>(arg_1, arg_1, !select(var_0.b.d, true, true), true), !vec4<bool>(arg_1, var_0.b.d, arg_1 & true, true), vec4<bool>(!(!var_0.b.d), arg_0.b.d, !any(vec4<bool>(false, true, false, false)), false)), select(vec4<bool>((global0.x < global0.x) && (arg_0.d.x == global0.x), any(vec3<bool>(true, var_0.b.d, arg_1)) | select(arg_1, arg_2.x, var_0.b.d), _wgslsmith_div_u32(7550u, var_0.a.a.x) < ~4776u, !arg_0.b.d), select(select(vec4<bool>(false, false, arg_1, arg_0.b.d), select(vec4<bool>(true, arg_2.x, arg_0.b.d, var_0.b.d), vec4<bool>(false, arg_1, var_0.b.d, arg_1), vec4<bool>(true, var_0.b.d, arg_0.b.d, arg_2.x)), all(vec4<bool>(false, arg_2.x, arg_2.x, false))), !select(vec4<bool>(var_0.b.d, false, true, arg_0.b.d), vec4<bool>(true, var_0.b.d, arg_2.x, false), arg_1), !(!vec4<bool>(true, arg_2.x, true, false))), select(vec4<bool>(all(vec4<bool>(false, false, var_0.b.d, false)), 51496i == var_0.e.x, any(vec3<bool>(true, var_0.b.d, true)), true), vec4<bool>(true, true, -873f < arg_0.c.x, false), arg_0.b.d)), select(select(!select(vec4<bool>(arg_2.x, arg_0.b.d, false, false), vec4<bool>(true, arg_2.x, arg_0.b.d, arg_1), vec4<bool>(var_0.b.d, arg_1, true, true)), select(!vec4<bool>(arg_2.x, arg_1, false, true), vec4<bool>(arg_0.b.d, true, arg_1, arg_2.x), true), !any(vec3<bool>(arg_0.b.d, false, arg_2.x))), vec4<bool>(true, !arg_1, global0.x != global0.x, !(global0.x == -1i)), vec4<bool>(~arg_0.a.a.x > _wgslsmith_clamp_u32(arg_0.a.a.x, 41046u, 1u), all(vec4<bool>(arg_2.x, arg_2.x, true, arg_2.x)), arg_1, all(select(vec3<bool>(arg_0.b.d, true, arg_0.b.d), vec3<bool>(false, arg_2.x, false), vec3<bool>(false, false, true))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(abs((~10001i ^ global1.x) >> (_wgslsmith_add_u32(3321u, _wgslsmith_div_u32(4795u, u_input.a.x)) % 32u)));
    global1 = ~select(vec4<i32>(-2147483647i, 1i, -_wgslsmith_dot_vec2_i32(global1.xx, vec2<i32>(global1.x, 18203i)), 1i), vec4<i32>(_wgslsmith_mult_i32(-6937i, global1.x), -48196i, _wgslsmith_div_i32(global0.x, -36195i), 1i) & vec4<i32>(-64875i, 67192i, -28770i, 15331i), func_5(func_1(true, vec2<u32>(u_input.a.x, 0u)), true, vec2<bool>(true, true)));
    var var_1 = vec3<u32>(u_input.a.x, ~(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 0u), u_input.a.zz) | _wgslsmith_dot_vec3_u32(~u_input.a, u_input.a ^ vec3<u32>(31609u, 17089u, u_input.a.x))), ~9324u);
    var var_2 = any(select(vec3<bool>(any(select(vec2<bool>(true, false), vec2<bool>(true, true), false)), true, any(vec2<bool>(true, true))), select(vec3<bool>(true, global0.x > -14217i, false), select(vec3<bool>(true, true, true), func_5(Struct_3(Struct_1(vec2<u32>(var_1.x, var_1.x)), Struct_2(global0.x, vec3<f32>(155f, 2197f, 653f), vec3<f32>(927f, -144f, -432f), false, global1.xw), vec2<f32>(242f, -771f), global1.zyx, global1.xw), false, vec2<bool>(true, true)).zxw, true), vec3<bool>(true, true, true)), all(vec2<bool>(true, true))));
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -44125i, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-func_1(true, vec2<u32>(var_1.x, u_input.a.x)).b.b.zz), vec2<f32>(233f, 1f)), global1.wzz);
}

