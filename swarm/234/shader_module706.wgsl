struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<f32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: i32,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_4,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: Struct_2) -> i32 {
    let var_0 = Struct_3(Struct_2(_wgslsmith_sub_u32(~(~37334u), arg_2.a), arg_2.b, arg_2.c), vec4<u32>(41186u, 0u, arg_2.a, arg_2.c.b.x) | vec4<u32>(10374u, ~(~arg_2.a), arg_2.a, arg_2.a));
    global0 = var_0.a.c.a;
    var var_1 = 25062i;
    let var_2 = _wgslsmith_sub_vec2_i32(-(arg_1.zy >> (vec2<u32>(_wgslsmith_add_u32(21377u, 41034u), 43728u) % vec2<u32>(32u))), vec2<i32>(u_input.a, ~_wgslsmith_sub_i32(abs(-1i), _wgslsmith_sub_i32(arg_1.x, -35193i))));
    var var_3 = _wgslsmith_dot_vec2_u32(~var_0.b.yz, vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~17685u, var_0.a.a, ~0u), var_0.b.ywz), ~4294967295u));
    return abs(max(_wgslsmith_clamp_i32(-global0.x >> (_wgslsmith_dot_vec4_u32(var_0.b, var_0.b) % 32u), u_input.b, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_2.c.a.x, arg_2.c.a.x), var_2), arg_1.zy)), _wgslsmith_div_i32(abs(-1i), 1i)));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_4 {
    global0 = _wgslsmith_add_vec2_i32(abs(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, _wgslsmith_sub_i32(-24144i, 0i)), vec2<i32>(func_3(arg_2.d, vec4<i32>(-1527i, global0.x, u_input.b, global0.x), Struct_2(70700u, vec3<bool>(false, true, true), Struct_1(vec2<i32>(arg_2.a.x, arg_2.a.x), vec2<u32>(53239u, 0u), arg_2.c, arg_2.c.ww))), 43226i))), select(min(vec2<i32>(2147483647i >> (arg_1.x % 32u), arg_2.a.x), ~arg_2.a | (vec2<i32>(-24236i, u_input.b) ^ arg_2.a)), arg_2.a, vec2<bool>(select(false, arg_0.x || arg_0.x, true), any(!arg_0.xx))));
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.d.x, -1177f, arg_2.d.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_2.c.x, -995f)))), arg_2.c, select(!select(vec4<bool>(false, false, arg_0.x, true), vec4<bool>(arg_0.x, false, arg_0.x, true), arg_0.x), select(select(vec4<bool>(true, arg_0.x, false, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), vec4<bool>(false, arg_0.x, arg_0.x, true)), select(vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), vec4<bool>(true, false, arg_0.x, arg_0.x), vec4<bool>(true, true, arg_0.x, true)), true), -855f != arg_2.c.x))) - _wgslsmith_f_op_vec4_f32(arg_2.c - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-704f, -228f, arg_2.c.x, arg_2.c.x), vec4<f32>(arg_2.d.x, arg_2.c.x, arg_2.d.x, -1000f), vec4<bool>(true, arg_0.x, arg_0.x, false))) - _wgslsmith_f_op_vec4_f32(-arg_2.c)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -392f), 161f, _wgslsmith_f_op_f32(sign(1260f)), _wgslsmith_div_f32(-206f, -927f))))));
    global0 = arg_2.a;
    var var_1 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_2.d.x, -353f), _wgslsmith_f_op_f32(select(633f, var_0.x, true)), !arg_0.x)) - _wgslsmith_f_op_f32(-var_0.x)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(arg_2.d.x)))), _wgslsmith_f_op_f32(-var_0.x), var_1.x) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(174f, var_1.x) * -359f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.c.x + var_0.x) - _wgslsmith_f_op_f32(round(arg_2.d.x))), -648f, 582f)), vec4<f32>(_wgslsmith_f_op_f32(abs(arg_2.d.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), 532f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-816f, _wgslsmith_f_op_f32(-arg_2.c.x))), 1194f)));
    return Struct_4(_wgslsmith_div_u32(3170u, 26328u), Struct_3(Struct_2(4294967295u, select(arg_0, select(vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), arg_0), true), arg_2), _wgslsmith_mult_vec4_u32(max(countOneBits(vec4<u32>(0u, arg_2.b.x, arg_2.b.x, 18427u)), firstTrailingBit(vec4<u32>(arg_1.x, arg_1.x, 4294967295u, 0u))), vec4<u32>(~arg_2.b.x, 1u, 1u, arg_1.x))), _wgslsmith_div_i32(func_3(_wgslsmith_f_op_vec2_f32(round(var_1.xy)), countOneBits(vec4<i32>(u_input.b, global0.x, global0.x, -2147483647i)), Struct_2(58262u, vec3<bool>(arg_0.x, arg_0.x, arg_0.x), arg_2)), ~2147483647i) << (1u % 32u), Struct_3(Struct_2(min(77874u, 27562u) & arg_2.b.x, vec3<bool>(select(false, arg_0.x, true), arg_0.x, all(vec3<bool>(true, true, true))), arg_2), abs(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.b.x, 4294967295u, arg_2.b.x, 27550u), vec4<u32>(arg_2.b.x, arg_2.b.x, arg_2.b.x, 53710u)), ~vec4<u32>(arg_2.b.x, arg_2.b.x, arg_1.x, 10161u)))));
}

fn func_4(arg_0: Struct_4) -> i32 {
    var var_0 = !vec3<bool>(~(~0u) <= reverseBits(arg_0.b.a.c.b.x), false, arg_0.d.a.b.x);
    let var_1 = Struct_5(arg_0.b.a, countOneBits(arg_0.d.b.yyy), func_2(vec3<bool>(any(vec4<bool>(false, true, arg_0.b.a.b.x, false)) && (arg_0.b.a.a >= 4294967295u), arg_0.b.a.b.x, arg_0.d.a.b.x), _wgslsmith_mult_vec3_u32(~abs(vec3<u32>(arg_0.b.a.c.b.x, 4294967295u, arg_0.a)), firstLeadingBit(countOneBits(arg_0.b.b.xzx))), Struct_1(func_2(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(arg_0.d.a.b.x, false, arg_0.b.a.b.x)), arg_0.d.b.wzz, func_2(arg_0.b.a.b, arg_0.d.b.zwz, Struct_1(vec2<i32>(0i, 41330i), arg_0.d.a.c.b, arg_0.d.a.c.c, vec2<f32>(arg_0.d.a.c.c.x, -164f))).d.a.c).b.a.c.a, ~arg_0.b.b.yy, arg_0.b.a.c.c, vec2<f32>(-815f, -691f))), Struct_1(arg_0.d.a.c.a, ~(~vec2<u32>(1u, 0u)), arg_0.b.a.c.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(278f, -2646f) * _wgslsmith_f_op_vec2_f32(-arg_0.b.a.c.d)))), arg_0.d.a);
    var_0 = vec3<bool>(true, any(func_2(func_2(arg_0.b.a.b, _wgslsmith_clamp_vec3_u32(var_1.b, arg_0.d.b.xwy, var_1.b), arg_0.b.a.c).d.a.b, var_1.c.b.b.yyw, var_1.c.d.a.c).d.a.b), !(!arg_0.b.a.b.x));
    var_0 = vec3<bool>(!var_0.x, var_1.c.d.a.b.x && !arg_0.b.a.b.x, false);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(671f + arg_0.b.a.c.d.x) * _wgslsmith_f_op_f32(sign(-1039f)));
    return countOneBits(-57422i);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: vec3<i32>, arg_3: bool) -> vec3<bool> {
    global0 = vec2<i32>(_wgslsmith_clamp_i32(select(global0.x, ~39089i, true), _wgslsmith_mult_i32(u_input.b, arg_2.x) ^ func_4(func_2(vec3<bool>(false, false, true), vec3<u32>(14658u, 1u, 1u), Struct_1(arg_0.ww, vec2<u32>(55691u, 4294967295u), arg_1, vec2<f32>(474f, arg_1.x)))), -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -64961i, abs(arg_2.x), -2147483647i >> (abs(1u) % 32u), min(~(-30444i), -26044i)), firstLeadingBit(-(~vec4<i32>(global0.x, arg_2.x, -59878i, 16776i)))));
    let var_0 = Struct_1(~vec2<i32>(-23310i, -arg_2.x), vec2<u32>(1u, 1u), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_div_f32(arg_1.x, 1000f)), _wgslsmith_f_op_f32(1f + 601f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.x))), -393f))), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.x * arg_1.x))), _wgslsmith_f_op_f32(-arg_1.x)));
    var var_1 = reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(~var_0.b.x, _wgslsmith_sub_u32(var_0.b.x, 0u)), var_0.b)) & (abs(countOneBits(var_0.b.x) & _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.x, 0u, var_0.b.x, 4294967295u), vec4<u32>(var_0.b.x, var_0.b.x, 0u, var_0.b.x))) << ((firstLeadingBit(_wgslsmith_div_u32(53448u, 4294967295u)) ^ var_0.b.x) % 32u));
    var var_2 = arg_1.x;
    let var_3 = func_2(!select(!func_2(vec3<bool>(false, arg_3, arg_3), vec3<u32>(var_0.b.x, var_0.b.x, 4294967295u), Struct_1(vec2<i32>(-1i, -37052i), vec2<u32>(var_0.b.x, 0u), arg_1, arg_1.zx)).d.a.b, func_2(select(vec3<bool>(false, arg_3, true), vec3<bool>(false, arg_3, false), vec3<bool>(false, true, arg_3)), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.b.x, 2469u, 44836u), vec3<u32>(var_0.b.x, var_0.b.x, 32145u), vec3<u32>(var_0.b.x, var_0.b.x, 1u)), Struct_1(vec2<i32>(arg_0.x, arg_2.x), vec2<u32>(var_0.b.x, 1u), var_0.c, var_0.c.wz)).d.a.b, !func_2(vec3<bool>(arg_3, false, arg_3), vec3<u32>(var_0.b.x, 1u, 6846u), var_0).d.a.b), firstLeadingBit(reverseBits(vec3<u32>(_wgslsmith_dot_vec2_u32(var_0.b, var_0.b), ~62383u, 0u))), var_0).d;
    return var_3.a.b;
}

fn func_5(arg_0: Struct_2) -> StorageBuffer {
    let var_0 = !arg_0.b.yx;
    global0 = vec2<i32>(_wgslsmith_clamp_i32(u_input.b, _wgslsmith_mult_i32(47243i, 2890i), global0.x), global0.x);
    global0 = vec2<i32>(abs(~countOneBits(19050i << (arg_0.c.b.x % 32u))), 1i);
    global0 = ~_wgslsmith_add_vec2_i32(vec2<i32>(1i, global0.x), _wgslsmith_mult_vec2_i32(reverseBits(vec2<i32>(u_input.a, 62052i)), -max(vec2<i32>(u_input.b, global0.x), vec2<i32>(19471i, 0i))));
    global0 = arg_0.c.a;
    return StorageBuffer(abs(-vec2<i32>(arg_0.c.a.x, ~arg_0.c.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<i32>(-(-global0.x ^ ~u_input.a) & global0.x, u_input.a);
    global0 = vec2<i32>(-4565i, 2147483647i);
    global0 = vec2<i32>(1i, ~((u_input.b << (~0u % 32u)) << (_wgslsmith_div_u32(20099u, 17563u) % 32u)));
    let x = u_input.a;
    s_output = func_5(Struct_2(49434u << (1u % 32u), select(!func_1(vec4<i32>(6156i, u_input.a, u_input.a, -30511i), vec4<f32>(-144f, 2133f, 1000f, -2056f), vec3<i32>(global0.x, -3506i, u_input.a), true), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), !all(vec2<bool>(true, true))), func_2(vec3<bool>(true, true, true), func_2(func_2(vec3<bool>(true, true, true), vec3<u32>(1u, 4294967295u, 26944u), Struct_1(vec2<i32>(1i, u_input.b), vec2<u32>(54257u, 1u), vec4<f32>(-594f, 389f, -624f, -222f), vec2<f32>(1285f, 636f))).b.a.b, func_2(vec3<bool>(true, false, true), vec3<u32>(4294967295u, 15234u, 27105u), Struct_1(vec2<i32>(2147483647i, -12617i), vec2<u32>(55914u, 4294967295u), vec4<f32>(-1479f, -1070f, -964f, 692f), vec2<f32>(358f, -382f))).b.b.yzx, Struct_1(vec2<i32>(global0.x, 46589i), vec2<u32>(4294967295u, 37863u), vec4<f32>(-232f, -1158f, -434f, 663f), vec2<f32>(-1046f, 355f))).d.b.xyz, func_2(vec3<bool>(false, true, false), vec3<u32>(1u, 4294967295u, 0u), Struct_1(vec2<i32>(-2147483647i, global0.x), vec2<u32>(23927u, 0u), vec4<f32>(-1000f, -134f, -954f, -1011f), vec2<f32>(-831f, -536f))).d.a.c).d.a.c));
}

