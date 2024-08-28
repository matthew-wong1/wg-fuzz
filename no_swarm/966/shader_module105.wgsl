struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec3<i32>(1i, -1i, 1i), vec3<i32>(i32(-2147483648), -1i, 2147483647i)), 1i, Struct_1(vec3<i32>(1i, -1i, -22126i), vec3<i32>(-8706i, 0i, 35689i)));

var<private> global1: bool = true;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_3, arg_3: Struct_3) -> vec3<i32> {
    global0 = Struct_2(global0.c, firstTrailingBit(-global0.b), global0.c);
    var var_0 = vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(~u_input.d << (4294967295u % 32u), u_input.d), u_input.d), u_input.d);
    var var_1 = Struct_2(Struct_1(-vec3<i32>(1i, 87523i, _wgslsmith_clamp_i32(50942i, -1i, 2147483647i)), global0.a.a), -11964i | _wgslsmith_dot_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(-10309i, 1i, 0i), global0.c.a), vec3<i32>(_wgslsmith_mult_i32(8555i, global0.c.a.x), 1i, abs(19546i))), Struct_1(abs(u_input.b), ~(-global0.a.a)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a, arg_3.a, 785f))))));
    var_0 = ~max(~(~(~vec2<u32>(1u, u_input.d))), _wgslsmith_div_vec2_u32(firstTrailingBit(select(vec2<u32>(0u, 0u), vec2<u32>(1u, var_0.x), false)), ~(~vec2<u32>(u_input.d, 0u))));
    return -max(~vec3<i32>(_wgslsmith_mod_i32(-1i, 26065i), max(0i, -31970i), -1i), vec3<i32>(_wgslsmith_mult_i32(1i, ~arg_1), var_1.c.a.x ^ 1i, min(-arg_1, max(-1i, global0.b))));
}

fn func_2() -> Struct_3 {
    global0 = Struct_2(Struct_1(vec3<i32>(-(1i | global0.a.a.x), ~firstLeadingBit(global0.a.a.x), _wgslsmith_dot_vec4_i32(~vec4<i32>(-20215i, 1i, 2147483647i, 51826i), ~vec4<i32>(global0.b, u_input.c, global0.b, u_input.c))), _wgslsmith_add_vec3_i32(~vec3<i32>(2321i, -31929i, -2147483647i), min(u_input.b, vec3<i32>(-14042i, -72973i, -331i)) & u_input.b)), ~reverseBits(27026i), global0.c);
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2115f))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(953f, 430f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1850f, _wgslsmith_f_op_f32(f32(-1f) * -449f))))));
    let var_1 = Struct_2(global0.a, -1i, global0.c);
    global0 = Struct_2(Struct_1(func_3(vec3<f32>(_wgslsmith_f_op_f32(-var_0), var_0, _wgslsmith_f_op_f32(f32(-1f) * -196f)), _wgslsmith_add_i32(global0.a.a.x, -19505i) >> (u_input.d % 32u), Struct_3(_wgslsmith_f_op_f32(-1037f - -1158f)), Struct_3(_wgslsmith_f_op_f32(-var_0))), global0.c.b), global0.c.a.x, Struct_1(firstLeadingBit(~(vec3<i32>(1726i, var_1.c.a.x, 10246i) & vec3<i32>(var_1.a.b.x, u_input.c, -8825i))), ~func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 1746f, var_0)), -16161i, Struct_3(var_0), Struct_3(1151f))));
    global1 = !any(vec4<bool>(all(vec4<bool>(false, false, true, true)) & true, any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false)), var_0 <= 558f, false));
    return Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(-var_0)))));
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    global1 = false;
    global1 = select(false, all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)), select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, any(vec3<bool>(true, true, true)), true, true))), !select(false, any(vec4<bool>(false, true, false, false)), _wgslsmith_f_op_f32(-arg_0.a) > _wgslsmith_f_op_f32(min(arg_0.a, -1257f))));
    var var_0 = Struct_2(Struct_1(-_wgslsmith_sub_vec3_i32(-global0.c.b, u_input.b), -global0.c.b), -82423i, Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(-71706i, ~1i, reverseBits(global0.a.a.x)), vec3<i32>(global0.a.a.x, ~0i, -global0.a.a.x), ~(vec3<i32>(-34163i, 28234i, 0i) << (vec3<u32>(u_input.d, u_input.d, u_input.d) % vec3<u32>(32u)))), _wgslsmith_div_vec3_i32(~_wgslsmith_div_vec3_i32(global0.a.b, global0.c.a), ~(u_input.b ^ vec3<i32>(u_input.a, 2147483647i, global0.c.b.x)))));
    var_0 = Struct_2(Struct_1((_wgslsmith_sub_vec3_i32(vec3<i32>(16190i, -23551i, global0.c.b.x), var_0.a.a) >> (vec3<u32>(12002u, u_input.d, 4294967295u) % vec3<u32>(32u))) >> (vec3<u32>(~30847u, max(u_input.d, 34194u), abs(u_input.d)) % vec3<u32>(32u)), firstTrailingBit(firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(global0.a.b.x, 69165i, 1i), u_input.b)))), _wgslsmith_dot_vec3_i32(global0.a.a, var_0.a.b), global0.a);
    var_0 = Struct_2(global0.a, 12594i, var_0.a);
    return Struct_2(var_0.c, func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-143f, arg_0.a, -202f) + vec3<f32>(1210f, -1367f, arg_0.a))), var_0.b, func_2(), arg_0).x >> (u_input.d % 32u), Struct_1(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(var_0.a.a, vec3<i32>(-3880i, -1i, var_0.b), vec3<i32>(-1i, var_0.c.a.x, u_input.b.x)), var_0.c.a), -var_0.c.a), _wgslsmith_div_vec3_i32(abs(-vec3<i32>(global0.c.a.x, u_input.c, 15198i)), _wgslsmith_add_vec3_i32(~vec3<i32>(0i, u_input.a, 14805i), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, 9100i, var_0.a.a.x), global0.c.b)))));
}

fn func_1(arg_0: u32) -> i32 {
    let var_0 = func_4(func_2());
    let var_1 = 829f;
    var var_2 = select(select(vec4<bool>(any(vec4<bool>(true, true, true, false)) || (var_0.c.b.x < -74156i), true, all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true))), any(vec3<bool>(true, false, true))), vec4<bool>(true, true, true, true), false), !(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false))), !vec4<bool>(_wgslsmith_f_op_f32(trunc(var_1)) != var_1, true, any(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false)), any(vec3<bool>(true, true, true))));
    global1 = !var_2.x;
    var_2 = select(select(vec4<bool>(arg_0 < u_input.d, true, firstTrailingBit(u_input.d) <= _wgslsmith_add_u32(0u, u_input.d), !(!var_2.x)), select(select(select(vec4<bool>(true, var_2.x, var_2.x, false), vec4<bool>(var_2.x, var_2.x, true, var_2.x), vec4<bool>(var_2.x, false, var_2.x, true)), vec4<bool>(false, var_2.x, false, false), true), vec4<bool>(var_1 <= var_1, var_2.x, var_2.x, true), var_2.x || true), true != (true | !var_2.x)), select(select(!select(vec4<bool>(var_2.x, true, true, true), vec4<bool>(true, var_2.x, var_2.x, var_2.x), var_2.x), !select(vec4<bool>(var_2.x, false, var_2.x, true), vec4<bool>(true, var_2.x, var_2.x, var_2.x), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x)), !(!var_2.x)), select(select(vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), all(vec3<bool>(true, true, var_2.x))), !vec4<bool>(var_2.x, var_2.x, true, var_2.x), select(select(vec4<bool>(var_2.x, var_2.x, true, true), vec4<bool>(true, var_2.x, var_2.x, var_2.x), vec4<bool>(true, true, true, false)), select(vec4<bool>(false, true, true, var_2.x), vec4<bool>(var_2.x, var_2.x, true, var_2.x), vec4<bool>(var_2.x, false, var_2.x, false)), !vec4<bool>(var_2.x, false, true, var_2.x))), true), true);
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !any(select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, false, false, true), false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)));
    var_0 = false;
    global0 = Struct_2(Struct_1(_wgslsmith_add_vec3_i32(~vec3<i32>(-1i, 38360i, 40045i), -(vec3<i32>(global0.a.b.x, u_input.b.x, 1i) >> (vec3<u32>(u_input.d, u_input.d, 4294967295u) % vec3<u32>(32u)))), firstTrailingBit(-global0.a.b)), ~func_1(u_input.d) << (58190u % 32u), global0.c);
    var var_1 = _wgslsmith_mult_i32(1i, -70597i);
    var var_2 = u_input.b.xx;
    global0 = Struct_2(Struct_1(vec3<i32>(u_input.a, func_3(vec3<f32>(-754f, -1057f, 1351f), var_2.x, Struct_3(-754f), Struct_3(-529f)).x, var_2.x | u_input.a), vec3<i32>(_wgslsmith_sub_i32(u_input.c ^ global0.c.a.x, i32(-1i) * -21172i), -47535i, var_2.x)), _wgslsmith_mod_i32(_wgslsmith_mult_i32(-abs(9544i), global0.b >> (_wgslsmith_sub_u32(1u, u_input.d) % 32u)), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(u_input.c, u_input.c), -48989i, _wgslsmith_div_i32(var_2.x, 43849i), u_input.b.x), ~(-vec4<i32>(-20541i, var_2.x, u_input.a, global0.c.a.x)))), Struct_1(_wgslsmith_mult_vec3_i32(abs(global0.c.a & vec3<i32>(u_input.b.x, -6595i, -4596i)), ~(~global0.a.a)), select(vec3<i32>(u_input.a, global0.b, 27801i) | vec3<i32>(global0.a.b.x, -2147483647i, u_input.b.x), vec3<i32>(var_2.x, global0.a.a.x, -var_2.x), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false))));
    let var_3 = Struct_3(func_2().a);
    let var_4 = Struct_2(Struct_1(vec3<i32>(abs(1i >> (u_input.d % 32u)), abs(0i), _wgslsmith_dot_vec3_i32(firstLeadingBit(u_input.b), -u_input.b)), vec3<i32>(_wgslsmith_mult_i32(2658i, select(1i, u_input.c, true)), -10424i, firstTrailingBit(var_2.x) << (u_input.d % 32u))), ~global0.c.b.x, Struct_1(vec3<i32>(var_2.x, global0.c.a.x, u_input.b.x), vec3<i32>(abs(max(global0.b, var_2.x)), -(var_2.x | global0.a.b.x), i32(-1i) * -1078i)));
    let var_5 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-(i32(-1i) * -25913i), -20872i, -51193i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a, var_3.a, var_3.a, var_3.a)))));
}

