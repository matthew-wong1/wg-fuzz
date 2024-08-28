struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_1(vec3<i32>(2147483647i, 1i, 0i), vec3<f32>(1000f, 481f, 1869f), 4294967295u));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: Struct_2) -> vec4<bool> {
    global0 = Struct_4(Struct_1(-_wgslsmith_mult_vec3_i32(vec3<i32>(global0.a.a.x, global0.a.a.x, -9459i) << (vec3<u32>(42648u, 1u, u_input.c) % vec3<u32>(32u)), countOneBits(vec3<i32>(32615i, arg_0, global0.a.a.x))), global0.a.b, _wgslsmith_clamp_u32(global0.a.c, 4294967295u, arg_1.d.c)));
    global0 = Struct_4(global0.a);
    let var_0 = Struct_2(!any(!select(vec2<bool>(arg_2.a, false), vec2<bool>(arg_2.a, arg_2.a), arg_2.a)), global0.a.c);
    let var_1 = global0.a;
    let var_2 = all(select(!(!select(vec3<bool>(false, arg_2.a, false), vec3<bool>(arg_2.a, false, var_0.a), vec3<bool>(var_0.a, true, var_0.a))), vec3<bool>(all(select(vec3<bool>(arg_2.a, false, true), vec3<bool>(arg_2.a, arg_2.a, false), vec3<bool>(arg_2.a, var_0.a, var_0.a))), all(select(vec3<bool>(var_0.a, false, true), vec3<bool>(arg_2.a, true, arg_2.a), true)), !(!arg_2.a)), select(!select(vec3<bool>(true, arg_2.a, false), vec3<bool>(var_0.a, var_0.a, arg_2.a), vec3<bool>(arg_2.a, false, true)), select(vec3<bool>(var_0.a, false, arg_2.a), vec3<bool>(true, false, true), vec3<bool>(var_0.a, arg_2.a, false)), true)));
    return !(!(!vec4<bool>(!var_0.a, arg_2.a, var_0.a, 1u == global0.a.c)));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: Struct_2) -> vec4<bool> {
    global0 = Struct_4(Struct_1(-(~global0.a.a), vec3<f32>(_wgslsmith_f_op_f32(-arg_1), 523f, _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(round(global0.a.b.x)))), _wgslsmith_mod_u32(0u | (global0.a.c >> (76765u % 32u)), firstTrailingBit(~55233u))));
    let var_0 = all(!vec3<bool>(any(!vec4<bool>(arg_2.a, true, true, arg_2.a)), arg_2.a, arg_2.a && !arg_2.a));
    global0 = Struct_4(global0.a);
    let var_1 = u_input.d;
    let var_2 = arg_2;
    return select(!(!func_3(arg_0, Struct_3(global0.a, Struct_1(vec3<i32>(arg_0, 1i, 2147483647i), vec3<f32>(-1928f, -1030f, -1028f), var_1.x), Struct_1(u_input.b.yzy, vec3<f32>(global0.a.b.x, -1049f, arg_1), 16891u), global0.a, global0.a.b.zy), Struct_2(false, 4294967295u))), !vec4<bool>(any(vec3<bool>(false, var_2.a, true)) == select(true, true, false), true, any(select(vec3<bool>(false, var_0, true), vec3<bool>(true, false, arg_2.a), var_2.a)), any(vec3<bool>(var_0, false, arg_2.a))), func_3(2147483647i, Struct_3(global0.a, Struct_1(~vec3<i32>(u_input.b.x, arg_0, global0.a.a.x), vec3<f32>(-836f, -1253f, -509f), arg_2.b & 4294967295u), Struct_1(global0.a.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(190f, arg_1, 1066f) * vec3<f32>(-870f, 1445f, 808f)), 65452u), Struct_1(u_input.b.zwx, _wgslsmith_div_vec3_f32(vec3<f32>(arg_1, 242f, global0.a.b.x), vec3<f32>(global0.a.b.x, -515f, global0.a.b.x)), 20741u), vec2<f32>(1f, 1f)), Struct_2(true, global0.a.c)));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: i32) -> Struct_3 {
    let var_0 = func_3(-4137i, Struct_3(global0.a, global0.a, Struct_1(-firstLeadingBit(u_input.b.wxx), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global0.a.b, global0.a.b))), _wgslsmith_add_u32(global0.a.c, u_input.d.x)), Struct_1(~firstLeadingBit(u_input.b.zyz), vec3<f32>(_wgslsmith_f_op_f32(543f - global0.a.b.x), _wgslsmith_f_op_f32(max(global0.a.b.x, global0.a.b.x)), 1651f), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.a.c, 18204u, 89179u) << (u_input.a % vec3<u32>(32u)), ~u_input.d)), _wgslsmith_div_vec2_f32(vec2<f32>(global0.a.b.x, _wgslsmith_f_op_f32(-1000f * global0.a.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1488f, global0.a.b.x))))), Struct_2(false, 45981u)).x;
    let var_1 = vec2<i32>(~arg_2, select(max(min(firstLeadingBit(-15409i), -27636i), ~firstLeadingBit(arg_2)), min(2147483647i, ~arg_2), !arg_1.a));
    let var_2 = Struct_3(Struct_1(global0.a.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-global0.a.b)))), _wgslsmith_add_u32(~_wgslsmith_add_u32(4294967295u, u_input.a.x), u_input.c)), global0.a, global0.a, global0.a, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-253f, global0.a.b.x))), _wgslsmith_f_op_f32(-global0.a.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(559f, _wgslsmith_f_op_f32(1303f - -2116f))), _wgslsmith_f_op_f32(ceil(-120f)))));
    global0 = Struct_4(global0.a);
    var var_3 = Struct_4(Struct_1(_wgslsmith_add_vec3_i32(u_input.b.yyy >> (abs(vec3<u32>(49855u, u_input.a.x, 1153u)) % vec3<u32>(32u)), abs(countOneBits(var_2.d.a))), global0.a.b, ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 37935u, arg_1.b, var_2.a.c), vec4<u32>(1u, var_2.c.c, 4294967295u, global0.a.c)) ^ global0.a.c));
    return var_2;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_2) -> Struct_4 {
    var var_0 = func_4(!select(vec4<bool>(arg_1.a & false, arg_1.a | false, true, !arg_2.a), vec4<bool>(!arg_2.a, all(vec2<bool>(arg_2.a, arg_2.a)), false, all(vec3<bool>(false, arg_2.a, true))), false), arg_1, u_input.b.x);
    let var_1 = arg_2;
    let var_2 = func_4(!(!(!(!vec4<bool>(arg_2.a, arg_2.a, arg_2.a, var_1.a)))), Struct_2(arg_2.a, ~var_1.b), u_input.b.x).d;
    var_0 = func_4(!select(vec4<bool>(arg_2.a, true, !var_1.a, var_1.a), !select(vec4<bool>(false, false, arg_2.a, true), vec4<bool>(arg_1.a, arg_1.a, false, false), vec4<bool>(false, arg_1.a, arg_1.a, arg_2.a)), true), Struct_2(true, ~(select(arg_0.d.c, 42020u, arg_1.a) ^ ~var_0.c.c)), ~(-var_2.a.x));
    var var_3 = u_input.a.yx;
    return Struct_4(Struct_1(reverseBits(arg_0.a.a) ^ global0.a.a, _wgslsmith_f_op_vec3_f32(global0.a.b * var_0.d.b), _wgslsmith_add_u32(~(~var_0.b.c), 81842u ^ arg_1.b)));
}

fn func_6(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: f32) -> Struct_4 {
    let var_0 = abs(~(~u_input.d));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -825f) - global0.a.b.x);
    let var_2 = arg_0.a.c;
    let var_3 = global0.a.b;
    var_1 = 812f;
    return Struct_4(arg_1);
}

fn func_7(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: Struct_2) -> Struct_2 {
    var var_0 = arg_0.a.a.x;
    var var_1 = select(any(!vec3<bool>(false, global0.a.b.x <= global0.a.b.x, u_input.a.x != 18287u)), func_2(_wgslsmith_add_i32(43830i, u_input.b.x) << (4294967295u % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(248f - 325f) - _wgslsmith_f_op_f32(floor(global0.a.b.x))), arg_2).x, true);
    global0 = Struct_4(arg_0.a);
    var_0 = arg_0.a.a.x;
    var_1 = !arg_2.a;
    return Struct_2(arg_2.a, arg_2.b);
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> Struct_4 {
    let var_0 = func_7(func_6(func_5(func_4(func_2(-11751i, 664f, Struct_2(false, u_input.d.x)), Struct_2(true, u_input.d.x), _wgslsmith_add_i32(-2147483647i, global0.a.a.x)), Struct_2(false, abs(0u)), Struct_2(true, 0u)), global0.a, firstTrailingBit(~(-vec4<i32>(-1i, -51954i, u_input.b.x, 1i))), global0.a.b.x), vec4<u32>(1u, ~(~56646u), ~(~abs(arg_0.c)), global0.a.c & _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.a, u_input.a, u_input.a), u_input.d)), Struct_2(0u >= ~_wgslsmith_div_u32(4294967295u, arg_0.c), _wgslsmith_mult_u32(global0.a.c, abs(global0.a.c))));
    global0 = Struct_4(arg_0);
    global0 = Struct_4(Struct_1(vec3<i32>(-1i) * -countOneBits(arg_0.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -138f), _wgslsmith_f_op_f32(f32(-1f) * -434f), func_6(Struct_4(arg_0), global0.a, vec4<i32>(-2147483647i, global0.a.a.x, arg_1, 23671i), 615f).a.b.x)), func_4(!func_3(arg_1, Struct_3(arg_0, Struct_1(vec3<i32>(arg_0.a.x, arg_0.a.x, 0i), vec3<f32>(global0.a.b.x, global0.a.b.x, arg_0.b.x), global0.a.c), global0.a, Struct_1(u_input.b.wzz, global0.a.b, 27830u), vec2<f32>(-894f, global0.a.b.x)), var_0), Struct_2(var_0.a || false, ~arg_0.c), arg_0.a.x).b.c));
    let var_1 = func_2(_wgslsmith_clamp_i32(firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-22618i, global0.a.a.x), arg_0.a.yz)), -(i32(-1i) * -4009i), 37280i), global0.a.b.x, var_0).x | true;
    let var_2 = arg_0.a.x;
    return Struct_4(global0.a);
}

fn func_8(arg_0: Struct_4, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_3(Struct_1(arg_1.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.a.b)) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.b.x, -2550f, arg_0.a.b.x)), arg_0.a.b, vec3<bool>(true, false, true)))), _wgslsmith_mod_u32(0u, arg_1.c)), Struct_1(vec3<i32>(func_1(arg_0.a, arg_0.a.a.x).a.a.x, _wgslsmith_add_i32(arg_1.a.x, max(49174i, -1i)), arg_0.a.a.x), global0.a.b, ~arg_1.c), Struct_1((_wgslsmith_div_vec3_i32(vec3<i32>(68457i, arg_1.a.x, global0.a.a.x), arg_1.a) ^ (arg_1.a ^ vec3<i32>(arg_1.a.x, -39936i, 66530i))) >> (u_input.a % vec3<u32>(32u)), func_1(global0.a, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(u_input.b.x, -1i, 55552i), arg_0.a.a.x >> (global0.a.c % 32u), _wgslsmith_add_i32(-2147483647i, global0.a.a.x))).a.b, u_input.c), func_5(func_4(func_3(2147483647i, func_4(vec4<bool>(true, false, true, false), Struct_2(false, arg_1.c), 0i), func_7(Struct_4(arg_1), vec4<u32>(arg_0.a.c, u_input.a.x, 6679u, 29607u), Struct_2(false, 23765u))), Struct_2(all(vec4<bool>(false, false, true, true)), abs(arg_0.a.c)), -u_input.b.x), Struct_2(arg_0.a.c != 1u, ~89730u >> (arg_0.a.c % 32u)), Struct_2(true, global0.a.c)).a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a.b.zy), arg_0.a.b.xy), _wgslsmith_f_op_vec2_f32(floor(global0.a.b.zx)))) * arg_0.a.b.xy));
    var var_1 = u_input.b;
    var var_2 = arg_0;
    let var_3 = ~(var_0.a.c | _wgslsmith_clamp_u32(func_6(func_6(arg_0, Struct_1(vec3<i32>(arg_1.a.x, var_0.d.a.x, var_2.a.a.x), arg_0.a.b, arg_0.a.c), vec4<i32>(-1i, -3388i, 1i, 36897i), arg_1.b.x), func_6(Struct_4(arg_1), var_2.a, vec4<i32>(2147483647i, var_0.b.a.x, 31725i, 1i), -823f).a, u_input.b, -100f).a.c, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.d.x, u_input.d.x, arg_1.c), vec4<u32>(50473u, arg_1.c, var_0.c.c, 20125u)) | max(arg_0.a.c, 60148u)));
    var var_4 = _wgslsmith_dot_vec3_i32(-(~vec3<i32>(_wgslsmith_sub_i32(-46214i, arg_0.a.a.x), _wgslsmith_mult_i32(-2147483647i, var_1.x), 239i << (var_3 % 32u))), -vec3<i32>(_wgslsmith_add_i32(arg_0.a.a.x, u_input.b.x), _wgslsmith_add_i32(-2147483647i, 1i) << (~4294967295u % 32u), countOneBits(abs(88948i))));
    return Struct_1(func_6(arg_0, arg_1, firstLeadingBit(u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x))).a.a, vec3<f32>(791f, _wgslsmith_f_op_f32(arg_0.a.b.x + func_1(Struct_1(vec3<i32>(var_2.a.a.x, arg_1.a.x, global0.a.a.x), global0.a.b, var_3), global0.a.a.x).a.b.x), _wgslsmith_f_op_f32(round(global0.a.b.x))), _wgslsmith_clamp_u32(abs(28591u), 1239u, _wgslsmith_mult_u32(firstLeadingBit(0u), func_5(Struct_3(global0.a, Struct_1(vec3<i32>(global0.a.a.x, -12644i, u_input.b.x), var_0.b.b, 19127u), Struct_1(vec3<i32>(-14888i, 59210i, arg_1.a.x), vec3<f32>(260f, arg_0.a.b.x, arg_0.a.b.x), 12453u), var_2.a, vec2<f32>(var_2.a.b.x, -1169f)), Struct_2(true, 0u), Struct_2(true, 1u)).a.c)) ^ _wgslsmith_dot_vec4_u32(min(vec4<u32>(var_3, u_input.c, global0.a.c, arg_0.a.c) << (vec4<u32>(0u, var_3, 0u, var_2.a.c) % vec4<u32>(32u)), vec4<u32>(arg_0.a.c, global0.a.c, u_input.d.x, u_input.c) << (vec4<u32>(var_0.b.c, arg_1.c, 5474u, 37750u) % vec4<u32>(32u))), vec4<u32>(~1u, var_0.a.c, _wgslsmith_add_u32(1u, 1u), _wgslsmith_mult_u32(var_2.a.c, global0.a.c))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_4(func_8(func_1(Struct_1(vec3<i32>(3945i, u_input.b.x, -2147483647i) ^ u_input.b.xxw, vec3<f32>(global0.a.b.x, global0.a.b.x, global0.a.b.x), global0.a.c), firstLeadingBit(65565i)), global0.a));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~_wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(global0.a.c, 695u, 19844u)), ~u_input.d)), -47317i);
}

