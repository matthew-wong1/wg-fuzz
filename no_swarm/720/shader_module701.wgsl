struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: bool,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, vec4<u32>(4294967295u, 32406u, 4294967295u, 4294967295u), true, 1i, 1567f);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> f32 {
    let var_0 = -2099f;
    global0 = Struct_1(global0.a, vec4<u32>(_wgslsmith_div_u32(u_input.d.x, global0.b.x), ~1u, u_input.c, global0.b.x), all(vec3<bool>(true, !(!global0.a), global0.a)), -(1i & u_input.e.x), var_0);
    let var_1 = _wgslsmith_sub_vec4_u32(global0.b, _wgslsmith_mult_vec4_u32(~(~u_input.d) << (vec4<u32>(4294967295u, ~4294967295u, 15096u, max(26710u, 1u)) % vec4<u32>(32u)), reverseBits(vec4<u32>(_wgslsmith_add_u32(u_input.d.x, 0u), ~36648u, ~3798u, u_input.c))));
    var var_2 = ~(var_1.yz ^ u_input.d.xw);
    global0 = Struct_1(_wgslsmith_f_op_f32(205f * 538f) > _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_0, global0.e), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0), var_0)), true)), countOneBits(vec4<u32>(0u, 0u, global0.b.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, global0.b.x), global0.b.xy))), select(false, select(true, global0.c, select(true, false, false)) || (_wgslsmith_mod_i32(u_input.b.x, global0.d) <= _wgslsmith_div_i32(u_input.b.x, u_input.e.x)), any(vec4<bool>(global0.c, global0.c & global0.a, global0.a, all(vec3<bool>(global0.c, global0.c, false))))), -1i, 1022f);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-160f - global0.e), global0.e))))));
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(149f * _wgslsmith_f_op_f32(abs(500f))));
    var var_1 = select(global0.c, _wgslsmith_f_op_f32(select(global0.e, -1380f, global0.c)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), true);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2390f));
    let var_2 = Struct_1(global0.c, firstLeadingBit(abs(_wgslsmith_add_vec4_u32(select(vec4<u32>(global0.b.x, u_input.d.x, u_input.c, 0u), global0.b, vec4<bool>(global0.a, global0.c, global0.a, false)), firstLeadingBit(global0.b)))), global0.c, _wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.b.x, i32(-1i) * -1i), -17969i), global0.e);
    var_1 = !global0.c;
    return var_2;
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_mod_u32(_wgslsmith_add_u32(~arg_1.b.x, _wgslsmith_dot_vec3_u32(global0.b.xzw, reverseBits(~vec3<u32>(u_input.a, u_input.a, arg_1.b.x)))), min(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, arg_1.b.x, arg_1.b.x), min(u_input.d.wxy, vec3<u32>(1u, global0.b.x, global0.b.x))) << (~(~global0.b.x) % 32u), _wgslsmith_mult_u32(~arg_1.b.x, u_input.d.x | 25983u) ^ 0u));
    let var_1 = Struct_1(arg_1.a, ~u_input.d, arg_1.a, 1i, arg_1.e);
    var var_2 = func_2(vec4<i32>(u_input.b.x, ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, arg_1.d, -1i, 2147483647i), vec4<i32>(global0.d, -14669i, arg_1.d, global0.d)) ^ -12113i, -1i, min(reverseBits(global0.d), u_input.b.x)));
    var_0 = (~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b.x, arg_1.b.x, 4294967295u, var_1.b.x), ~u_input.d) << (~28167u % 32u)) ^ (_wgslsmith_clamp_u32(~4294967295u, ~(~4294967295u), ~(~1u)) & ~(~firstLeadingBit(var_1.b.x)));
    var_0 = ~_wgslsmith_sub_u32(arg_1.b.x, var_2.b.x);
    return var_1;
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    let var_0 = -2147483647i;
    let var_1 = !select(select(!select(vec2<bool>(false, false), vec2<bool>(true, global0.c), vec2<bool>(false, false)), select(select(vec2<bool>(false, true), vec2<bool>(arg_0.c.c, false), vec2<bool>(true, false)), vec2<bool>(global0.a, arg_0.e.a), !vec2<bool>(false, global0.c)), func_4(-830f, arg_0.e).e != _wgslsmith_div_f32(1000f, -144f)), select(!select(vec2<bool>(false, false), vec2<bool>(false, false), global0.a), !select(vec2<bool>(false, arg_0.c.c), vec2<bool>(false, global0.c), false), select(select(vec2<bool>(arg_0.c.c, arg_0.a.c), vec2<bool>(false, true), vec2<bool>(global0.a, true)), !vec2<bool>(global0.c, true), true)), vec2<bool>(true & select(global0.c, arg_0.a.c, arg_0.c.a), reverseBits(var_0) >= ~arg_0.c.d));
    global0 = arg_0.c;
    global0 = func_2(vec4<i32>(~(~arg_0.c.d), _wgslsmith_div_i32(arg_0.c.d, countOneBits(u_input.e.x)), _wgslsmith_mod_i32(_wgslsmith_mult_i32(_wgslsmith_mod_i32(var_0, var_0), arg_0.e.d), -2147483647i), -2147483647i));
    let var_2 = Struct_1(func_4(1889f, Struct_1(var_1.x, ~(~vec4<u32>(1u, 82991u, 79284u, global0.b.x)), !var_1.x, -var_0, _wgslsmith_div_f32(1642f, _wgslsmith_f_op_f32(sign(arg_0.c.e))))).a, _wgslsmith_mult_vec4_u32(u_input.d, vec4<u32>(_wgslsmith_dot_vec2_u32(arg_0.c.b.yw, vec2<u32>(1u, 0u)), 4294967295u, _wgslsmith_mod_u32(global0.b.x, 7021u), 45169u) << (select(u_input.d << (vec4<u32>(19571u, u_input.d.x, 10783u, 70477u) % vec4<u32>(32u)), ~arg_0.c.b, arg_0.c.e != -757f) % vec4<u32>(32u))), all(!vec2<bool>(any(var_1), !var_1.x)), reverseBits(abs(arg_0.c.d)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.e.e, arg_0.a.e))))));
    return Struct_2(Struct_1(var_1.x, vec4<u32>(~(~4294967295u), var_2.b.x, firstTrailingBit(1u), ~1u), true & !select(var_1.x, arg_0.c.a, true), global0.d, _wgslsmith_f_op_f32(global0.e + arg_0.c.e)), countOneBits(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, 37716u), abs(vec3<u32>(27571u, 1859u, 4294967295u))), 15387u, _wgslsmith_dot_vec3_u32(global0.b.yxw & global0.b.wyx, vec3<u32>(1u, 4294967295u, global0.b.x)))), func_2(-countOneBits(-vec4<i32>(1i, arg_0.e.d, -30903i, 0i))), ~_wgslsmith_div_u32(66497u, 44045u), Struct_1(select(true, var_1.x, arg_0.e.a), _wgslsmith_add_vec4_u32(u_input.d, _wgslsmith_mod_vec4_u32(vec4<u32>(1u, global0.b.x, 0u, var_2.b.x), abs(vec4<u32>(global0.b.x, global0.b.x, global0.b.x, 0u)))), true, 0i, arg_0.a.e));
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = vec4<u32>(global0.b.x, global0.b.x, 28603u, _wgslsmith_mod_u32(1u, 1466u));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -960f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.e)) * _wgslsmith_f_op_f32(min(581f, global0.e)))), 1456f, 186f));
    let var_2 = func_5(Struct_2(func_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(ceil(var_1.x)))), func_2(vec4<i32>(arg_0, global0.d, 2147483647i, -3204i) << (vec4<u32>(31859u, global0.b.x, 0u, global0.b.x) % vec4<u32>(32u)))), u_input.d.wwz, Struct_1(false, select(vec4<u32>(u_input.d.x, 4294967295u, 9851u, 16175u), global0.b, vec4<bool>(false, true, false, global0.a)) << (~u_input.d % vec4<u32>(32u)), any(select(vec3<bool>(false, global0.c, global0.c), vec3<bool>(global0.c, false, false), true)), 0i, _wgslsmith_f_op_f32(-1466f + _wgslsmith_div_f32(-232f, -848f))), ~(~(~var_0.x)), Struct_1(global0.a, ~func_2(vec4<i32>(u_input.b.x, u_input.b.x, -32547i, 1i)).b, true, -2147483647i, _wgslsmith_f_op_f32(var_1.x - global0.e))));
    var var_3 = Struct_2(Struct_1(true, min(_wgslsmith_add_vec4_u32(~global0.b, max(vec4<u32>(85672u, 2687u, var_2.d, 0u), vec4<u32>(58745u, 1u, var_0.x, 45027u))), _wgslsmith_clamp_vec4_u32(select(u_input.d, u_input.d, vec4<bool>(var_2.a.c, true, true, false)), _wgslsmith_clamp_vec4_u32(var_0, var_0, var_0), ~var_0)), !(!(2147483647i >= u_input.e.x)), arg_0, _wgslsmith_f_op_f32(abs(func_4(var_2.c.e, Struct_1(var_2.c.c, u_input.d, true, var_2.c.d, -2157f)).e))), _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u) & vec2<u32>(var_0.x, 10314u), func_5(Struct_2(var_2.a, var_0.wxy, var_2.a, u_input.a, var_2.c)).c.b.wy), var_0.x, var_0.x), vec3<u32>(var_2.e.b.x, _wgslsmith_mult_u32(1u << (u_input.c % 32u), 4294967295u >> (var_2.b.x % 32u)), 4294967295u)), func_5(Struct_2(var_2.e, ~min(var_2.b, vec3<u32>(global0.b.x, 1u, var_2.d)), var_2.c, _wgslsmith_add_u32(_wgslsmith_clamp_u32(109842u, 33650u, 4294967295u), ~9978u), Struct_1(any(vec3<bool>(var_2.c.a, true, true)), global0.b, global0.c, firstLeadingBit(2147483647i), var_2.c.e))).c, u_input.c, Struct_1(all(vec3<bool>(var_2.a.c, false, var_2.c.c)), ~min(var_0, vec4<u32>(13565u, 20140u, var_2.c.b.x, 98783u)) << (~(~vec4<u32>(0u, 0u, var_0.x, 4294967295u)) % vec4<u32>(32u)), true, global0.d, 1601f));
    var var_4 = select(select(vec4<bool>(true, true, true, true), vec4<bool>(_wgslsmith_mod_i32(global0.d, -51149i) == u_input.e.x, func_4(global0.e, var_2.a).a, _wgslsmith_div_f32(var_2.c.e, global0.e) > var_1.x, ~arg_0 == -27378i), !(!(!vec4<bool>(var_2.a.a, global0.a, var_3.c.a, false)))), !select(!vec4<bool>(global0.a, false, global0.c, true), select(vec4<bool>(global0.c, true, var_3.a.a, global0.c), select(vec4<bool>(var_3.c.c, var_3.e.a, true, false), vec4<bool>(var_3.a.a, false, true, var_2.e.a), vec4<bool>(true, var_3.a.c, var_3.e.c, global0.a)), !vec4<bool>(true, var_2.e.c, global0.a, false)), select(vec4<bool>(false, false, false, false), select(vec4<bool>(var_2.e.c, true, false, global0.a), vec4<bool>(var_2.c.c, false, var_3.a.a, global0.a), vec4<bool>(global0.c, var_2.c.c, true, global0.c)), var_3.e.c)), false);
    return var_3.c;
}

fn func_6(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = vec2<bool>(_wgslsmith_clamp_i32(-u_input.e.x, 3945i, func_1(global0.d).d << (~4294967295u % 32u)) != -2147483647i, global0.c & arg_2.a);
    let var_1 = _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(abs(u_input.e), u_input.e, _wgslsmith_mult_vec3_i32(vec3<i32>(1i, u_input.b.x, global0.d), ~abs(vec3<i32>(0i, u_input.b.x, u_input.e.x)))), ~u_input.e);
    var_0 = select(vec2<bool>(true, true), vec2<bool>(arg_2.a, arg_2.c), func_1(~arg_2.d).c & true);
    let var_2 = Struct_2(Struct_1(arg_2.c, vec4<u32>(~u_input.c, abs(~1u), u_input.a, ~(~arg_2.b.x)), func_4(arg_2.e, arg_2).c, abs(36292i), func_5(func_5(Struct_2(arg_2, vec3<u32>(arg_2.b.x, 1u, 44986u), Struct_1(arg_2.a, u_input.d, false, arg_2.d, arg_1.x), arg_2.b.x, Struct_1(arg_2.a, u_input.d, global0.c, arg_2.d, -997f)))).e.e), min(~vec3<u32>(1u, abs(17509u), ~21860u), _wgslsmith_add_vec3_u32(~(~vec3<u32>(u_input.a, arg_2.b.x, u_input.a)), _wgslsmith_mod_vec3_u32(func_1(var_1.x).b.zzx, global0.b.zyx))), arg_2, func_5(func_5(Struct_2(func_4(global0.e, arg_2), ~u_input.d.ywz, Struct_1(true, arg_2.b, global0.c, -2147483647i, arg_1.x), _wgslsmith_sub_u32(4294967295u, u_input.a), func_4(-145f, arg_2)))).d, Struct_1(any(vec4<bool>(var_0.x, true, true, true)), arg_2.b, global0.a, ~(-4643i), 1096f));
    var_0 = !(!vec2<bool>(any(!vec3<bool>(false, var_2.e.a, false)), true));
    return Struct_1(arg_2.b.x <= _wgslsmith_div_u32(15139u, 1u), firstLeadingBit(~arg_2.b | var_2.e.b), func_5(Struct_2(func_1(_wgslsmith_clamp_i32(var_2.e.d, global0.d, -23893i)), vec3<u32>(_wgslsmith_mod_u32(u_input.a, global0.b.x), func_2(vec4<i32>(-52607i, 43053i, 0i, u_input.b.x)).b.x, _wgslsmith_div_u32(arg_2.b.x, 28439u)), arg_2, ~(arg_2.b.x & global0.b.x), Struct_1(3338u > global0.b.x, ~u_input.d, all(vec3<bool>(arg_2.a, global0.c, var_2.c.a)), _wgslsmith_sub_i32(0i, 1i), _wgslsmith_f_op_f32(func_3())))).e.c, global0.d, 665f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(950f, global0.e, global0.e) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.e, global0.e, -1738f) * vec3<f32>(global0.e, global0.e, global0.e))), _wgslsmith_div_vec3_f32(vec3<f32>(global0.e, global0.e, 539f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.e, global0.e, 1000f))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.e), -752f, _wgslsmith_f_op_f32(min(global0.e, global0.e))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.e, -1164f, 490f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-558f, global0.e, global0.e) * vec3<f32>(global0.e, global0.e, -1197f))))), func_1(-23282i));
    let var_1 = func_5(Struct_2(var_0, vec3<u32>(~reverseBits(global0.b.x), (4274u << (var_0.b.x % 32u)) ^ 1u, ~_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(0u, var_0.b.x, 1u, u_input.c))), func_6(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-205f, var_0.e, global0.e)))), vec3<f32>(_wgslsmith_div_f32(var_0.e, global0.e), var_0.e, _wgslsmith_f_op_f32(f32(-1f) * -634f)), func_5(func_5(Struct_2(var_0, vec3<u32>(u_input.a, var_0.b.x, var_0.b.x), Struct_1(false, var_0.b, false, 25298i, global0.e), 37746u, var_0))).e), global0.b.x, var_0));
    let var_2 = !select(!vec2<bool>(global0.a, false), vec2<bool>(true, true), func_6(vec3<f32>(_wgslsmith_f_op_f32(floor(var_1.c.e)), var_0.e, global0.e), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1367f, global0.e, -912f)) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.e, var_1.c.e, -234f)))), var_1.a).c);
    global0 = func_4(var_1.c.e, var_0);
    global0 = var_1.e;
    global0 = var_1.a;
    var var_3 = var_1;
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.e, var_3.c.e, -1763f) * vec3<f32>(446f, var_3.e.e, global0.e)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.e, var_1.e.e, _wgslsmith_f_op_f32(global0.e + -141f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.e, var_1.c.e, global0.e))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.e.e, -2192f, 1115f))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e, var_0.e, var_3.c.e))))))));
    let var_5 = Struct_2(func_4(_wgslsmith_f_op_f32(f32(-1f) * -520f), var_3.c), global0.b.wyw >> (vec3<u32>(4294967295u, ~_wgslsmith_mod_u32(0u, global0.b.x), _wgslsmith_div_u32(55540u, ~u_input.a)) % vec3<u32>(32u)), func_5(var_1).a, 0u, Struct_1(var_0.c, firstTrailingBit(vec4<u32>(41019u >> (var_0.b.x % 32u), 1u, 14415u, var_3.e.b.x)), var_3.e.a, -1i, var_4.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_4, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(448f, _wgslsmith_f_op_f32(-1000f - var_1.a.e))), 1f);
}

