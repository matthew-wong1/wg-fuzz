struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec3<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> i32 {
    global0 = firstTrailingBit(firstTrailingBit(~34684u));
    global0 = ~u_input.b;
    global0 = min(4294967295u, min(~(~u_input.b), select(abs(~4294967295u), ~reverseBits(u_input.b), false)));
    let var_0 = select(select(select(!select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), true)), vec2<bool>(u_input.c != u_input.d, true), false), select(vec2<bool>(true, true), !(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true))), vec2<bool>(true, true)), !select((u_input.a << (u_input.b % 32u)) != ~u_input.a, all(vec3<bool>(true, false, true)), true));
    let var_1 = vec3<i32>(-7735i, u_input.a & firstTrailingBit(19102i), _wgslsmith_mult_i32(_wgslsmith_mult_i32(~(~83427i), reverseBits(u_input.a)), _wgslsmith_div_i32(_wgslsmith_add_i32(~(-2525i), 0i), -29199i)));
    return -10851i;
}

fn func_2(arg_0: bool) -> Struct_5 {
    var var_0 = vec2<i32>(countOneBits(select(2147483647i, u_input.a ^ func_3(), true)), -35319i);
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))));
    global0 = abs(45449u);
    let var_2 = Struct_1(firstTrailingBit(u_input.b), _wgslsmith_f_op_f32(round(var_1.a.x)));
    global0 = 4294967295u;
    return Struct_5(vec3<bool>(u_input.b <= 1u, arg_0, false), Struct_4(!(!vec3<bool>(true, false, arg_0)), var_1, Struct_1(~1u, var_2.b), vec2<u32>(~u_input.b, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, var_2.a, 30526u), vec3<u32>(27481u, var_2.a, var_2.a)), ~vec3<u32>(var_2.a, 29320u, var_2.a)))));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_1) -> Struct_2 {
    var var_0 = Struct_1(reverseBits(abs(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.a, 0u), arg_0.b.d), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 0u), arg_0.b.d)))), arg_1.b);
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -186f)), _wgslsmith_f_op_f32(round(arg_1.b)))) * var_0.b), Struct_1(_wgslsmith_dot_vec3_u32(~(vec3<u32>(u_input.b, 4294967295u, 2210u) << (vec3<u32>(u_input.b, arg_1.a, 782u) % vec3<u32>(32u))), max(~vec3<u32>(1u, 55558u, 0u), ~vec3<u32>(44225u, arg_0.b.c.a, 1u))), 343f), 59622u, arg_0.b.c);
}

fn func_1(arg_0: f32, arg_1: vec2<bool>) -> Struct_5 {
    var var_0 = u_input.b;
    var var_1 = func_4(func_2(!all(select(vec4<bool>(false, true, arg_1.x, true), vec4<bool>(true, arg_1.x, false, arg_1.x), vec4<bool>(false, arg_1.x, true, false)))), func_2(true).b.c);
    var var_2 = Struct_1(select(26098u, ~(~u_input.b >> (_wgslsmith_dot_vec4_u32(vec4<u32>(47810u, var_1.d.a, u_input.b, 51965u), vec4<u32>(4294967295u, 24441u, u_input.b, 0u)) % 32u)), func_2(all(func_2(arg_1.x).a.zz)).a.x), arg_0);
    global0 = ~_wgslsmith_div_u32(_wgslsmith_mod_u32(1u, ~var_1.d.a), u_input.b);
    var_0 = var_2.a;
    return func_2(true);
}

fn func_5(arg_0: Struct_5, arg_1: vec3<bool>) -> bool {
    global0 = firstTrailingBit(arg_0.b.c.a);
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -423f), arg_0.b.c.b, arg_0.b.b.a.x))), vec3<f32>(func_2(true).b.b.a.x, arg_0.b.b.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(560f * arg_0.b.c.b) + _wgslsmith_f_op_f32(exp2(arg_0.b.c.b))) - 191f)));
    var var_1 = false;
    let var_2 = arg_0.b;
    return all(!arg_0.b.a) && false;
}

fn func_6(arg_0: bool, arg_1: vec3<i32>, arg_2: u32) -> vec4<f32> {
    global0 = firstLeadingBit(func_4(Struct_5(!vec3<bool>(false, arg_0, true), func_1(1977f, vec2<bool>(arg_0, arg_0)).b), func_4(func_2(arg_0), func_2(true).b.c).d).c);
    let var_0 = vec4<bool>(all(select(select(!vec3<bool>(false, arg_0, false), !vec3<bool>(arg_0, false, true), func_1(1000f, vec2<bool>(false, arg_0)).a), !func_1(1000f, vec2<bool>(arg_0, true)).a, !select(vec3<bool>(false, true, arg_0), vec3<bool>(true, arg_0, arg_0), vec3<bool>(arg_0, arg_0, arg_0)))), true, any(select(vec3<bool>(!arg_0, true, true), func_2(!arg_0).b.a, true | (6019u == arg_2))), false);
    var var_1 = vec4<f32>(-1171f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))), _wgslsmith_f_op_f32(f32(-1f) * -500f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_4(Struct_5(vec3<bool>(true, false, true), Struct_4(vec3<bool>(false, true, arg_0), Struct_3(vec2<f32>(-1429f, 1021f)), Struct_1(4294967295u, 446f), vec2<u32>(4294967295u, arg_2))), Struct_1(arg_2, -554f)).d.b)));
    global0 = _wgslsmith_mod_u32(_wgslsmith_mult_u32(func_4(func_1(456f, vec2<bool>(var_0.x, arg_0)), Struct_1(u_input.b, -136f)).d.a, arg_2), 45352u);
    var var_2 = func_2(false).b.c;
    return vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1124f, -376f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * var_1.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-1967f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_6(func_5(func_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(584f + 377f))), vec2<bool>(true, true)), select(vec3<bool>(true, any(vec2<bool>(false, false)), true), vec3<bool>(any(vec4<bool>(false, false, true, true)), any(vec2<bool>(true, true)), false), func_2(true).a)), vec3<i32>(~func_3(), u_input.a, _wgslsmith_mod_i32(_wgslsmith_mult_i32(-1i, 0i), u_input.c)) << (vec3<u32>(0u, u_input.b | 6888u, _wgslsmith_clamp_u32(~u_input.b, u_input.b, 0u)) % vec3<u32>(32u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(8202u, 11735u & u_input.b), _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(25774u, u_input.b), vec2<u32>(u_input.b, u_input.b)), vec2<u32>(u_input.b, 53566u) | vec2<u32>(100536u, 1u), vec2<u32>(0u, 22244u)) ^ select(~vec2<u32>(u_input.b, 4294967295u), ~vec2<u32>(u_input.b, 7174u), select(vec2<bool>(true, false), vec2<bool>(false, false), false)))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(367f * var_0.x), _wgslsmith_f_op_f32(-var_0.x), -1306f, var_0.x);
    let var_2 = any(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1242f + _wgslsmith_div_f32(-1483f, var_0.x))), vec2<bool>(true, _wgslsmith_div_i32(-1i, -12026i) > u_input.c)).b.a.xy);
    var var_3 = firstTrailingBit(~(-u_input.d));
    var var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-func_2(var_2).b.c.b), _wgslsmith_f_op_f32(-var_0.x)));
    let var_5 = select(vec3<bool>(any(vec4<bool>(all(vec3<bool>(true, false, var_2)), var_2, var_2, var_2)), false | var_2, true), func_2(false).b.a, vec3<bool>(true, select(!all(vec3<bool>(false, false, true)), var_2 | (var_1.x <= var_4.x), !var_2), false));
    let var_6 = func_4(func_1(_wgslsmith_f_op_f32(-var_4.x), var_5.yx), func_2(var_5.x | (var_5.x & false)).b.c).b;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~vec2<u32>(4294967295u, 0u))), vec3<f32>(1070f, _wgslsmith_f_op_f32(trunc(884f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1572f - -251f)))), vec4<u32>(func_4(Struct_5(func_2(var_5.x).b.a, Struct_4(vec3<bool>(var_5.x, var_2, false), Struct_3(vec2<f32>(-836f, var_6.b)), Struct_1(u_input.b, var_4.x), vec2<u32>(var_6.a, var_6.a))), var_6).b.a, 88935u, var_6.a, 34033u), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(func_2(true).b.c.b, func_4(func_1(-877f, vec2<bool>(false, var_2)), Struct_1(u_input.b, -1529f)).b.b, _wgslsmith_f_op_f32(-309f + _wgslsmith_f_op_f32(f32(-1f) * -1056f))))), vec2<i32>(2147483647i, 12207i));
}

