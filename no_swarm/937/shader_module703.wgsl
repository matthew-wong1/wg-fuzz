struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: vec2<bool>,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec3<i32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-918f, vec3<u32>(0u, 4294967295u, 38043u), 1103f);

var<private> global1: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(207f, vec3<u32>(4294967295u, 67013u, 36753u), -1237f), Struct_1(1000f, vec3<u32>(0u, 4294967295u, 85324u), 841f), Struct_1(111f, vec3<u32>(4294967295u, 7191u, 2014u), -530f), Struct_1(350f, vec3<u32>(120797u, 1u, 4294967295u), -1000f), Struct_1(-2476f, vec3<u32>(0u, 1u, 52909u), -1474f), Struct_1(251f, vec3<u32>(33797u, 1u, 16190u), -1043f), Struct_1(-1283f, vec3<u32>(4294967295u, 2808u, 1u), 218f), Struct_1(-362f, vec3<u32>(11187u, 10697u, 0u), -564f), Struct_1(589f, vec3<u32>(4294967295u, 33384u, 1u), 157f), Struct_1(-110f, vec3<u32>(4294967295u, 0u, 6620u), -1000f), Struct_1(-624f, vec3<u32>(1u, 1u, 24382u), -657f), Struct_1(1288f, vec3<u32>(3744u, 12333u, 2216u), -1994f), Struct_1(145f, vec3<u32>(1u, 47649u, 15991u), -496f), Struct_1(-1742f, vec3<u32>(1u, 4294967295u, 20734u), 366f), Struct_1(773f, vec3<u32>(20079u, 4294967295u, 4294967295u), -998f), Struct_1(612f, vec3<u32>(1u, 0u, 4294967295u), -1000f), Struct_1(490f, vec3<u32>(74813u, 4294967295u, 40586u), -228f), Struct_1(-720f, vec3<u32>(8812u, 24123u, 5931u), 1476f), Struct_1(-615f, vec3<u32>(1u, 46805u, 855u), 578f), Struct_1(1096f, vec3<u32>(95001u, 100294u, 65825u), 739f), Struct_1(133f, vec3<u32>(1u, 4016u, 4294967295u), -1685f), Struct_1(735f, vec3<u32>(30566u, 33345u, 1u), 406f), Struct_1(268f, vec3<u32>(1u, 0u, 59765u), -402f), Struct_1(-302f, vec3<u32>(4294967295u, 906u, 0u), 1000f), Struct_1(-359f, vec3<u32>(37816u, 0u, 46382u), -1733f), Struct_1(-171f, vec3<u32>(1u, 26552u, 44401u), 1467f), Struct_1(-1211f, vec3<u32>(1u, 1u, 4294967295u), -1236f), Struct_1(-770f, vec3<u32>(70708u, 11298u, 4294967295u), -626f), Struct_1(-1071f, vec3<u32>(1066u, 62879u, 4294967295u), -206f));

var<private> global2: i32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> u32 {
    var var_0 = vec3<i32>(-(~u_input.b), -6902i, 26515i);
    let var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -404f), _wgslsmith_f_op_f32(-380f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -588f))), arg_1.e.c, _wgslsmith_f_op_f32(exp2(global0.a))), _wgslsmith_div_f32(global0.c, global0.c), !select(select(select(vec2<bool>(arg_1.c.x, false), arg_1.c, arg_1.c), arg_1.c, true), !(!arg_1.c), !any(arg_1.c)), global0.a, global1[_wgslsmith_index_u32(select(_wgslsmith_div_u32(~0u, firstTrailingBit(_wgslsmith_dot_vec3_u32(global0.b, global0.b))), _wgslsmith_mod_u32(~global0.b.x, ~74070u) & (0u | arg_1.e.b.x), _wgslsmith_clamp_i32(u_input.b, _wgslsmith_clamp_i32(var_0.x, 2147483647i, var_0.x), ~0i) > _wgslsmith_mult_i32(u_input.b | 2346i, ~var_0.x)), 29u)]);
    global1 = array<Struct_1, 29>();
    var var_2 = vec3<bool>(any(vec4<bool>(arg_0, u_input.b >= firstLeadingBit(u_input.b), all(!vec4<bool>(arg_0, true, arg_0, var_1.c.x)), all(vec4<bool>(true, true, var_1.c.x, arg_0)) & all(arg_1.c))), _wgslsmith_f_op_f32(min(arg_1.b, _wgslsmith_f_op_f32(f32(-1f) * -971f))) < -175f, false);
    var_2 = select(vec3<bool>(true, false, arg_1.c.x), select(!select(select(vec3<bool>(true, false, false), vec3<bool>(arg_0, false, false), vec3<bool>(arg_1.c.x, true, true)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, var_2.x), vec3<bool>(arg_0, arg_1.c.x, true), vec3<bool>(arg_1.c.x, var_1.c.x, var_2.x))), select(select(select(vec3<bool>(arg_1.c.x, true, arg_1.c.x), vec3<bool>(var_1.c.x, true, var_1.c.x), true), select(vec3<bool>(var_2.x, var_2.x, var_1.c.x), vec3<bool>(true, var_2.x, var_2.x), vec3<bool>(var_2.x, true, true)), select(vec3<bool>(var_2.x, false, arg_1.c.x), vec3<bool>(false, false, true), vec3<bool>(true, arg_0, true))), select(vec3<bool>(true, true, true), !vec3<bool>(true, var_1.c.x, false), arg_1.c.x), vec3<bool>(true, all(vec3<bool>(var_2.x, arg_0, false)), false)), true), arg_1.c.x);
    return arg_1.e.b.x;
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: vec3<u32>) -> f32 {
    var var_0 = true;
    global1 = array<Struct_1, 29>();
    var var_1 = vec3<u32>(max(~(~u_input.a), ~u_input.a), 0u, 989u);
    global1 = array<Struct_1, 29>();
    var_1 = firstLeadingBit(arg_0.e.b << (vec3<u32>(_wgslsmith_mult_u32(~arg_1, _wgslsmith_dot_vec2_u32(arg_2.zx, vec2<u32>(arg_1, 99233u))), 75965u, func_3(u_input.b >= u_input.b, arg_0)) % vec3<u32>(32u)));
    return -1627f;
}

fn func_1(arg_0: Struct_2, arg_1: vec2<u32>) -> Struct_1 {
    global1 = array<Struct_1, 29>();
    var var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_2(Struct_2(vec4<f32>(arg_0.a.x, 672f, -769f, global0.c), -1308f, vec2<bool>(arg_0.c.x, false), -1129f, Struct_1(-863f, vec3<u32>(arg_1.x, 61933u, arg_1.x), -221f)), min(74287u, arg_1.x), ~global0.b)), global0.a), vec2<f32>(global0.c, -130f))));
    global0 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.b + var_0.x))), ~countOneBits(~_wgslsmith_add_vec3_u32(global0.b, arg_0.e.b)), 1786f);
    var var_1 = Struct_2(arg_0.a, -614f, arg_0.c, global0.c, global1[_wgslsmith_index_u32(4294967295u, 29u)]);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(304f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1160f, _wgslsmith_f_op_f32(func_2(arg_0, 88383u, vec3<u32>(28747u, u_input.a, 1u))))))), _wgslsmith_add_vec3_u32(global0.b, ~(~arg_0.e.b) ^ vec3<u32>(u_input.a, ~u_input.a, ~u_input.a)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(-global0.a)) + var_0.x))));
    return global1[_wgslsmith_index_u32(var_1.e.b.x, 29u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32, arg_3: Struct_1) -> Struct_2 {
    var var_0 = u_input.b;
    let var_1 = arg_1.e;
    global1 = array<Struct_1, 29>();
    global1 = array<Struct_1, 29>();
    var var_2 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(arg_1.a, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.c, -244f, arg_1.a.x, arg_1.b)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 2233f, _wgslsmith_f_op_f32(min(var_1.c, arg_0.c)), -1029f))), _wgslsmith_f_op_f32(arg_0.a + arg_1.d), !vec2<bool>(!arg_1.c.x, arg_1.c.x | arg_1.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(round(-2110f))) * _wgslsmith_f_op_f32(func_2(arg_1, _wgslsmith_div_u32(47226u, var_1.b.x), func_1(Struct_2(vec4<f32>(global0.a, global0.a, var_1.c, 771f), 1000f, vec2<bool>(false, true), -981f, arg_0), global0.b.yx).b)))), var_1);
    return arg_1;
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec3<bool>) -> Struct_1 {
    global2 = ~arg_0;
    let var_0 = -17441i;
    var var_1 = any(!vec4<bool>(true, !(42377u <= global0.b.x), arg_3.x, arg_2.c.x));
    var var_2 = ~select(abs(vec3<u32>(u_input.a, _wgslsmith_mult_u32(1u, 27087u), 8311u)), vec3<u32>(3719u, arg_2.e.b.x, arg_2.e.b.x), false);
    var var_3 = ~vec3<i32>(var_0, -35007i, -13853i);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(364f, arg_2.b)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.a)) + _wgslsmith_f_op_f32(trunc(arg_2.b))))), ~(~(~arg_1.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c + _wgslsmith_f_op_f32(-arg_1.c))), global0.c));
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> Struct_2 {
    let var_0 = !any(select(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false), vec3<bool>(false, arg_2.c < arg_1.a, true), vec3<bool>(arg_3 >= u_input.a, func_4(Struct_1(global0.a, arg_2.b, 765f), Struct_2(vec4<f32>(arg_2.c, arg_1.c, global0.c, arg_1.c), 894f, vec2<bool>(true, false), arg_2.a, Struct_1(777f, arg_1.b, arg_2.a)), u_input.a, Struct_1(2187f, vec3<u32>(58154u, global0.b.x, arg_1.b.x), 1341f)).c.x, any(vec3<bool>(true, true, true)))));
    var var_1 = func_4(func_5(-51490i, Struct_1(-201f, ~countOneBits(vec3<u32>(global0.b.x, u_input.a, 17937u)), _wgslsmith_f_op_f32(f32(-1f) * -1769f)), func_4(Struct_1(_wgslsmith_f_op_f32(-arg_1.a), arg_1.b, global0.a), func_4(func_5(arg_0.x, arg_2, Struct_2(vec4<f32>(1601f, arg_2.c, 1266f, -646f), global0.c, vec2<bool>(var_0, var_0), -963f, Struct_1(-1414f, vec3<u32>(arg_1.b.x, u_input.a, 1u), 1813f)), vec3<bool>(true, var_0, var_0)), Struct_2(vec4<f32>(global0.a, -1473f, arg_2.a, 210f), arg_1.a, vec2<bool>(false, var_0), arg_1.a, Struct_1(-277f, vec3<u32>(arg_3, arg_2.b.x, arg_3), global0.c)), 69563u, func_4(Struct_1(arg_1.a, arg_1.b, arg_1.c), Struct_2(vec4<f32>(159f, arg_2.c, 276f, 791f), 389f, vec2<bool>(var_0, true), 613f, Struct_1(arg_1.a, vec3<u32>(u_input.a, arg_3, u_input.a), arg_1.c)), 55161u, Struct_1(-767f, vec3<u32>(4294967295u, arg_1.b.x, arg_3), 353f)).e), arg_3, func_4(func_4(Struct_1(436f, vec3<u32>(arg_1.b.x, arg_3, arg_3), -1040f), Struct_2(vec4<f32>(-729f, -1762f, global0.a, 169f), arg_1.c, vec2<bool>(var_0, true), arg_2.c, Struct_1(-479f, vec3<u32>(u_input.a, 49753u, 108902u), -372f)), arg_3, Struct_1(783f, vec3<u32>(4294967295u, u_input.a, arg_2.b.x), global0.a)).e, func_4(Struct_1(-1212f, vec3<u32>(u_input.a, 0u, 10338u), global0.c), Struct_2(vec4<f32>(520f, global0.c, -704f, global0.c), arg_2.a, vec2<bool>(false, true), arg_1.c, Struct_1(667f, vec3<u32>(0u, arg_2.b.x, 0u), 457f)), 1u, global1[_wgslsmith_index_u32(75474u, 29u)]), 133082u >> (1u % 32u), Struct_1(162f, vec3<u32>(1u, 34664u, global0.b.x), -700f)).e), select(vec3<bool>(false, any(vec3<bool>(true, false, false)), var_0 || true), select(vec3<bool>(true, var_0, false), vec3<bool>(var_0, false, var_0), vec3<bool>(false, true, false)), select(!vec3<bool>(false, var_0, var_0), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(var_0, var_0, true)), var_0))), Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global0.a - 274f), _wgslsmith_f_op_f32(min(1509f, arg_2.a)), _wgslsmith_f_op_f32(-arg_1.a), 881f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.c, arg_1.c, -290f, arg_1.a), vec4<f32>(arg_1.c, arg_1.a, global0.c, arg_1.a), true)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(254f, 1212f, 1686f, 805f)))), _wgslsmith_f_op_f32(step(arg_2.c, global0.c)), select(vec2<bool>(!var_0, var_0), !(!vec2<bool>(var_0, var_0)), false & var_0), _wgslsmith_f_op_f32(304f - arg_2.a), func_4(global1[_wgslsmith_index_u32(func_1(Struct_2(vec4<f32>(arg_2.c, -1531f, global0.c, arg_1.c), -984f, vec2<bool>(var_0, false), global0.a, Struct_1(arg_1.a, global0.b, 1590f)), vec2<u32>(arg_2.b.x, 4294967295u) ^ vec2<u32>(0u, 37477u)).b.x, 29u)], func_4(Struct_1(global0.c, arg_1.b, 383f), Struct_2(vec4<f32>(113f, global0.c, 228f, global0.a), 1329f, vec2<bool>(true, false), 2204f, Struct_1(arg_2.a, vec3<u32>(50304u, 53516u, u_input.a), global0.a)), 130100u, Struct_1(arg_1.c, global0.b, -1000f)), _wgslsmith_clamp_u32(1u, 4294967295u, u_input.a), Struct_1(arg_2.a, min(global0.b, global0.b), -1163f)).e), func_3(!(~arg_3 > _wgslsmith_dot_vec2_u32(vec2<u32>(global0.b.x, arg_3), vec2<u32>(arg_2.b.x, u_input.a))), func_4(func_4(Struct_1(-1176f, global0.b, -618f), func_4(global1[_wgslsmith_index_u32(0u, 29u)], Struct_2(vec4<f32>(arg_1.a, -1556f, -1681f, arg_1.c), -369f, vec2<bool>(true, var_0), arg_1.c, Struct_1(1365f, arg_2.b, arg_2.a)), arg_2.b.x, arg_2), _wgslsmith_clamp_u32(1u, arg_3, 4294967295u), arg_2).e, Struct_2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.a, 354f, global0.c, -729f), vec4<f32>(1470f, 1000f, -2276f, global0.c))), _wgslsmith_f_op_f32(sign(arg_2.c)), func_4(Struct_1(223f, arg_1.b, -1505f), Struct_2(vec4<f32>(arg_1.a, -829f, global0.a, global0.a), -374f, vec2<bool>(false, true), 363f, Struct_1(arg_2.a, vec3<u32>(4294967295u, global0.b.x, arg_1.b.x), -893f)), arg_2.b.x, arg_1).c, _wgslsmith_f_op_f32(trunc(arg_2.c)), global1[_wgslsmith_index_u32(arg_1.b.x, 29u)]), ~4294967295u, func_4(global1[_wgslsmith_index_u32(func_4(Struct_1(-716f, arg_2.b, 867f), Struct_2(vec4<f32>(arg_2.c, 1927f, 488f, global0.a), 1128f, vec2<bool>(false, var_0), arg_1.c, arg_2), arg_1.b.x, global1[_wgslsmith_index_u32(4294967295u, 29u)]).e.b.x, 29u)], Struct_2(vec4<f32>(arg_1.a, arg_2.c, arg_2.a, -1335f), -459f, vec2<bool>(var_0, true), global0.a, Struct_1(arg_1.a, vec3<u32>(4294967295u, arg_2.b.x, global0.b.x), global0.a)), global0.b.x, arg_1).e)), func_1(Struct_2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_2.c, 1142f, global0.a, arg_2.c), vec4<f32>(global0.a, 1297f, arg_1.c, global0.a))), func_5(arg_0.x, arg_1, func_4(Struct_1(global0.a, arg_2.b, arg_1.c), Struct_2(vec4<f32>(793f, global0.a, 177f, 453f), arg_1.c, vec2<bool>(true, var_0), -1000f, arg_2), arg_3, arg_2), vec3<bool>(false, true, false)).c, select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), !vec2<bool>(var_0, true), func_4(Struct_1(global0.a, global0.b, global0.c), Struct_2(vec4<f32>(global0.c, arg_1.c, 1000f, global0.c), arg_2.a, vec2<bool>(var_0, false), arg_2.c, global1[_wgslsmith_index_u32(0u, 29u)]), arg_3, global1[_wgslsmith_index_u32(3600u, 29u)]).c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-198f - 396f) - 512f), func_5(i32(-1i) * -19753i, func_5(arg_0.x, Struct_1(-497f, vec3<u32>(arg_1.b.x, arg_2.b.x, arg_3), -1336f), Struct_2(vec4<f32>(arg_2.a, arg_2.a, global0.a, 251f), global0.a, vec2<bool>(true, true), global0.a, arg_1), vec3<bool>(var_0, var_0, false)), func_4(Struct_1(216f, global0.b, global0.c), Struct_2(vec4<f32>(847f, arg_2.a, arg_2.a, 1000f), -589f, vec2<bool>(false, true), arg_2.a, arg_2), 4294967295u, Struct_1(arg_2.c, vec3<u32>(arg_2.b.x, 53556u, 1u), arg_1.c)), !vec3<bool>(var_0, var_0, var_0))), global0.b.xx ^ vec2<u32>(firstLeadingBit(4294967295u), _wgslsmith_mult_u32(0u, 42628u))));
    let var_2 = arg_1;
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_1.e.b.x, select(u_input.a, _wgslsmith_add_u32(countOneBits(82606u), u_input.a), var_1.c.x) | _wgslsmith_div_u32(~abs(4294967295u), countOneBits(~32050u))), 29u)];
    let var_4 = !var_1.c.x;
    return func_4(arg_2, func_4(var_1.e, Struct_2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(var_1.a * var_1.a))), -601f, !(!var_1.c), func_5(-u_input.b, func_4(Struct_1(1548f, arg_2.b, -258f), Struct_2(vec4<f32>(2167f, var_1.a.x, 1273f, 1735f), -1000f, var_1.c, arg_2.a, Struct_1(-2050f, vec3<u32>(44601u, var_1.e.b.x, 0u), 1000f)), u_input.a, global1[_wgslsmith_index_u32(var_2.b.x, 29u)]).e, Struct_2(var_1.a, arg_1.a, vec2<bool>(true, var_0), -463f, arg_1), !vec3<bool>(false, var_1.c.x, var_1.c.x)).c, func_5(arg_0.x, func_5(1i, Struct_1(-380f, global0.b, arg_2.c), Struct_2(var_1.a, arg_1.a, vec2<bool>(var_1.c.x, true), -1851f, arg_1), vec3<bool>(var_1.c.x, true, true)), Struct_2(var_1.a, -467f, var_1.c, arg_1.c, Struct_1(arg_1.a, var_2.b, var_2.a)), !vec3<bool>(var_1.c.x, var_0, false))), (_wgslsmith_dot_vec3_u32(arg_1.b, arg_1.b) | 1u) << (~arg_2.b.x % 32u), func_1(func_4(func_4(arg_1, Struct_2(vec4<f32>(global0.a, var_3.c, 437f, arg_2.a), var_2.a, vec2<bool>(false, var_0), 786f, Struct_1(1382f, var_2.b, 822f)), global0.b.x, Struct_1(global0.a, var_1.e.b, -281f)).e, func_4(global1[_wgslsmith_index_u32(4294967295u, 29u)], Struct_2(vec4<f32>(arg_2.a, global0.c, var_3.a, 374f), 644f, var_1.c, 1000f, Struct_1(571f, arg_1.b, global0.c)), global0.b.x, arg_2), func_4(arg_2, Struct_2(vec4<f32>(1000f, 1820f, var_3.c, arg_1.c), 1000f, var_1.c, -443f, Struct_1(-1703f, global0.b, var_3.c)), arg_2.b.x, arg_1).e.b.x, func_1(Struct_2(var_1.a, 326f, vec2<bool>(false, var_0), global0.c, Struct_1(889f, global0.b, var_1.e.c)), vec2<u32>(1u, 4294967295u))), ~var_1.e.b.yx)), 65001u, Struct_1(_wgslsmith_div_f32(-994f, -912f), _wgslsmith_div_vec3_u32(~var_2.b, reverseBits(vec3<u32>(var_2.b.x, global0.b.x, 4294967295u))) & vec3<u32>(2339u, 14980u, arg_3 << (35360u % 32u)), func_1(Struct_2(vec4<f32>(var_3.c, -1000f, -508f, -1563f), _wgslsmith_f_op_f32(-arg_1.c), vec2<bool>(false, false), _wgslsmith_div_f32(var_2.a, -414f), var_2), ~max(arg_1.b.zx, global0.b.yz)).c));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 29>();
    var var_0 = global0.b.yz;
    global0 = global1[_wgslsmith_index_u32(2976u, 29u)];
    var var_1 = true;
    var var_2 = func_6(vec3<i32>(u_input.b & ~_wgslsmith_mod_i32(1i, u_input.b), 0i, -1i), Struct_1(-1650f, global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.c)) + -917f)), func_5(countOneBits(~_wgslsmith_mult_i32(-35852i, 16940i)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1174f), _wgslsmith_add_vec3_u32(vec3<u32>(global0.b.x, var_0.x, 8099u), vec3<u32>(var_0.x, global0.b.x, 10262u)) & reverseBits(vec3<u32>(var_0.x, var_0.x, var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.c)))), func_4(func_1(Struct_2(vec4<f32>(342f, 1256f, global0.c, global0.c), global0.c, vec2<bool>(false, true), global0.a, global1[_wgslsmith_index_u32(global0.b.x, 29u)]), ~vec2<u32>(u_input.a, 0u)), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1403f, -1254f, 1179f, -1000f)), _wgslsmith_f_op_f32(global0.a + global0.c), vec2<bool>(true, true), global0.a, global1[_wgslsmith_index_u32(4294967295u, 29u)]), 15726u, func_1(Struct_2(vec4<f32>(global0.c, global0.a, global0.a, 508f), -1420f, vec2<bool>(false, false), global0.c, global1[_wgslsmith_index_u32(81849u, 29u)]), min(vec2<u32>(1u, var_0.x), vec2<u32>(4294967295u, global0.b.x)))), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), func_5(~u_input.b, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(reverseBits(global0.b.x), ~(var_0.x & 0u)), 29u)], Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, global0.a, global0.c, 514f))), 1f, vec2<bool>(true, true), _wgslsmith_f_op_f32(f32(-1f) * -2358f), func_1(func_4(Struct_1(1000f, global0.b, -191f), Struct_2(vec4<f32>(global0.a, global0.a, 365f, -1000f), -1000f, vec2<bool>(false, true), global0.a, Struct_1(-720f, global0.b, 1261f)), u_input.a, Struct_1(global0.a, vec3<u32>(global0.b.x, 4294967295u, var_0.x), -818f)), vec2<u32>(u_input.a, 69515u))), !(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false))).b.x);
    let var_3 = var_2.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(global0.a, _wgslsmith_div_vec3_f32(func_4(Struct_1(_wgslsmith_f_op_f32(global0.a * -909f), ~var_2.e.b, _wgslsmith_div_f32(-1331f, 310f)), Struct_2(var_2.a, -1420f, var_2.c, _wgslsmith_f_op_f32(min(global0.a, 898f)), Struct_1(1206f, vec3<u32>(var_0.x, 16985u, 105541u), global0.c)), var_0.x, func_6(select(vec3<i32>(u_input.b, u_input.b, 1i), vec3<i32>(2147483647i, u_input.b, -1i), false), global1[_wgslsmith_index_u32(var_0.x | var_2.e.b.x, 29u)], global1[_wgslsmith_index_u32(_wgslsmith_div_u32(48814u, 1u), 29u)], ~0u).e).a.zxy, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_2.a.ywx))) + _wgslsmith_f_op_vec3_f32(sign(var_2.a.xwx)))), -countOneBits(~vec3<i32>(46262i, u_input.b, u_input.b) & _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, 0i, -48677i), vec3<i32>(-11201i, 22528i, -2147483647i))), u_input.a, func_6(_wgslsmith_div_vec3_i32(min(vec3<i32>(-28165i, -1i, u_input.b) ^ vec3<i32>(1i, -14595i, u_input.b), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, 2147483647i, -2021i), vec3<i32>(u_input.b, -2147483647i, -1i))), min(vec3<i32>(u_input.b, 18121i, u_input.b), vec3<i32>(u_input.b, u_input.b, 6057i)) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(1i, u_input.b, -25451i), vec3<i32>(u_input.b, u_input.b, u_input.b))), Struct_1(-439f, vec3<u32>(~1u, _wgslsmith_sub_u32(0u, var_2.e.b.x), _wgslsmith_div_u32(var_2.e.b.x, var_0.x)), func_4(var_2.e, Struct_2(var_2.a, 2408f, vec2<bool>(true, false), var_2.a.x, Struct_1(816f, vec3<u32>(1u, var_0.x, 16344u), -1729f)), firstLeadingBit(6118u), Struct_1(-645f, global0.b, var_2.a.x)).a.x), func_6(_wgslsmith_clamp_vec3_i32(~vec3<i32>(u_input.b, u_input.b, -1i), vec3<i32>(1i, u_input.b, u_input.b), vec3<i32>(-2147483647i, u_input.b, 25010i)), var_2.e, Struct_1(global0.c, vec3<u32>(u_input.a, 1u, 0u), 1469f), ~var_0.x).e, _wgslsmith_mult_u32(~84316u, max(~5635u, var_0.x))).a);
}

