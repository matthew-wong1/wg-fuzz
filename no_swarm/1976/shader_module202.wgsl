struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<u32>,
    c: u32,
    d: vec3<bool>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(727f, -795f, 1190f, 580f);

var<private> global1: array<vec3<i32>, 29> = array<vec3<i32>, 29>(vec3<i32>(-2844i, 1i, -1i), vec3<i32>(i32(-2147483648), -38039i, 24339i), vec3<i32>(41551i, 2147483647i, -19140i), vec3<i32>(8894i, 2147483647i, 53962i), vec3<i32>(2147483647i, -1i, -13284i), vec3<i32>(0i, -13567i, 39682i), vec3<i32>(i32(-2147483648), 9417i, -23897i), vec3<i32>(-43445i, -13672i, -1447i), vec3<i32>(-37541i, 32488i, 0i), vec3<i32>(10416i, -6369i, 1i), vec3<i32>(-25913i, -18637i, -24143i), vec3<i32>(i32(-2147483648), 93743i, 1i), vec3<i32>(-693i, 1i, i32(-2147483648)), vec3<i32>(30526i, -39230i, 1324i), vec3<i32>(i32(-2147483648), 2147483647i, -1i), vec3<i32>(0i, 5004i, -26784i), vec3<i32>(0i, 4791i, -1i), vec3<i32>(-45371i, 1i, -1i), vec3<i32>(2147483647i, 2147483647i, -31358i), vec3<i32>(76962i, -15994i, 1i), vec3<i32>(17836i, 20845i, 10596i), vec3<i32>(7367i, -4480i, i32(-2147483648)), vec3<i32>(2147483647i, 2147483647i, 1i), vec3<i32>(i32(-2147483648), 70065i, 527i), vec3<i32>(1i, -1i, 32640i), vec3<i32>(4395i, 5369i, 38301i), vec3<i32>(13922i, -16622i, 33344i), vec3<i32>(4794i, 3610i, -23862i), vec3<i32>(-48553i, 36987i, -4905i));

var<private> global2: array<vec2<f32>, 28> = array<vec2<f32>, 28>(vec2<f32>(-662f, -1057f), vec2<f32>(-1000f, -478f), vec2<f32>(-238f, -324f), vec2<f32>(1561f, 286f), vec2<f32>(999f, -597f), vec2<f32>(-2497f, -548f), vec2<f32>(-454f, -1000f), vec2<f32>(-577f, -280f), vec2<f32>(-707f, -471f), vec2<f32>(572f, 218f), vec2<f32>(716f, -1052f), vec2<f32>(-1336f, -598f), vec2<f32>(-784f, 145f), vec2<f32>(993f, -1812f), vec2<f32>(-529f, -1344f), vec2<f32>(600f, -338f), vec2<f32>(1000f, -1032f), vec2<f32>(-239f, 1000f), vec2<f32>(-1824f, 869f), vec2<f32>(958f, -1542f), vec2<f32>(-379f, -734f), vec2<f32>(351f, -451f), vec2<f32>(1000f, -1511f), vec2<f32>(143f, 669f), vec2<f32>(322f, 980f), vec2<f32>(-962f, 1025f), vec2<f32>(887f, 1212f), vec2<f32>(-1431f, 127f));

var<private> global3: array<Struct_4, 13> = array<Struct_4, 13>(Struct_4(Struct_2(24282u, -1i, vec4<u32>(1u, 0u, 8900u, 1403u), Struct_1(vec2<u32>(4294967295u, 1u)), false), vec2<u32>(52400u, 59467u)), Struct_4(Struct_2(1u, -6270i, vec4<u32>(4294967295u, 74822u, 36615u, 38227u), Struct_1(vec2<u32>(4294967295u, 0u)), false), vec2<u32>(23068u, 1u)), Struct_4(Struct_2(35435u, -21263i, vec4<u32>(0u, 36901u, 0u, 4294967295u), Struct_1(vec2<u32>(78385u, 1u)), false), vec2<u32>(4294967295u, 14779u)), Struct_4(Struct_2(70907u, -239i, vec4<u32>(9013u, 558u, 4546u, 0u), Struct_1(vec2<u32>(1u, 4294967295u)), true), vec2<u32>(1u, 4294967295u)), Struct_4(Struct_2(122142u, 0i, vec4<u32>(0u, 32218u, 84540u, 24230u), Struct_1(vec2<u32>(1u, 45359u)), false), vec2<u32>(81554u, 33632u)), Struct_4(Struct_2(14527u, 1i, vec4<u32>(4294967295u, 4294967295u, 64145u, 123133u), Struct_1(vec2<u32>(1u, 66603u)), true), vec2<u32>(5386u, 0u)), Struct_4(Struct_2(4294967295u, 1i, vec4<u32>(35435u, 46450u, 5590u, 20862u), Struct_1(vec2<u32>(14426u, 0u)), true), vec2<u32>(0u, 103691u)), Struct_4(Struct_2(4054u, -33324i, vec4<u32>(4294967295u, 46790u, 1u, 1u), Struct_1(vec2<u32>(69667u, 0u)), false), vec2<u32>(1u, 4294967295u)), Struct_4(Struct_2(44084u, -1i, vec4<u32>(4294967295u, 1u, 4294967295u, 47389u), Struct_1(vec2<u32>(24831u, 8276u)), true), vec2<u32>(81166u, 43638u)), Struct_4(Struct_2(43450u, 1i, vec4<u32>(100430u, 54182u, 4294967295u, 0u), Struct_1(vec2<u32>(58332u, 24291u)), false), vec2<u32>(11704u, 1u)), Struct_4(Struct_2(2908u, -97i, vec4<u32>(54518u, 1u, 0u, 0u), Struct_1(vec2<u32>(1u, 18845u)), true), vec2<u32>(52511u, 45749u)), Struct_4(Struct_2(4294967295u, 1i, vec4<u32>(1u, 0u, 0u, 1u), Struct_1(vec2<u32>(22558u, 31357u)), true), vec2<u32>(4294967295u, 8655u)), Struct_4(Struct_2(1u, 21350i, vec4<u32>(3610u, 65630u, 4294967295u, 41057u), Struct_1(vec2<u32>(4294967295u, 4294967295u)), true), vec2<u32>(4294967295u, 4294967295u)));

var<private> global4: i32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: u32) -> u32 {
    let var_0 = Struct_2(~(~select(_wgslsmith_dot_vec2_u32(vec2<u32>(35456u, 1u), vec2<u32>(58554u, 0u)), ~arg_1, 43780i < u_input.c.x)), u_input.c.x, min(~_wgslsmith_div_vec4_u32(vec4<u32>(arg_1, 22200u, arg_1, arg_1), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 1u, 19871u, arg_1), vec4<u32>(u_input.a, arg_1, 64875u, 96968u))), ~vec4<u32>(1u, 1u, 1u, 1u)), Struct_1(vec2<u32>(abs(~4294967295u), u_input.a)), (arg_0 > _wgslsmith_f_op_f32(max(-890f, arg_0))) & all(vec4<bool>(22127i == u_input.c.x, true, any(vec2<bool>(false, false)), u_input.b.x > u_input.c.x)));
    let var_1 = Struct_3(Struct_1(var_0.c.ww >> (reverseBits(vec2<u32>(49734u, u_input.a)) % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0, _wgslsmith_f_op_f32(473f + _wgslsmith_f_op_f32(step(arg_0, -446f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0))), arg_0))), 27071i & reverseBits(var_0.b));
    global2 = array<vec2<f32>, 28>();
    var var_2 = Struct_2(_wgslsmith_div_u32(_wgslsmith_div_u32(76637u, select(var_0.d.a.x, 0u, var_0.e)), ~countOneBits(4294967295u)) >> (u_input.a % 32u), 7898i, var_0.c, Struct_1(var_0.c.zz), var_0.e);
    var var_3 = select(select(select(select(vec2<bool>(var_0.e, true), vec2<bool>(var_0.e, false), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false))), vec2<bool>(true | var_2.e, any(vec3<bool>(false, var_2.e, var_2.e))), all(!vec3<bool>(var_2.e, true, var_2.e))), vec2<bool>(true, true), true), !select(vec2<bool>(true, -872f > arg_0), vec2<bool>(select(var_2.e, false, false), true), var_2.e), select(select(vec2<bool>(var_2.e, var_2.b <= u_input.c.x), select(!vec2<bool>(var_2.e, var_0.e), vec2<bool>(true, true), all(vec3<bool>(var_0.e, true, false))), var_0.e), !vec2<bool>(any(vec3<bool>(false, false, var_2.e)), var_0.e), select(select(vec2<bool>(var_2.e, false), select(vec2<bool>(false, var_0.e), vec2<bool>(var_0.e, var_2.e), false), !vec2<bool>(var_0.e, var_0.e)), vec2<bool>(!var_2.e, select(false, true, true)), select(select(vec2<bool>(true, false), vec2<bool>(false, var_0.e), true), vec2<bool>(false, var_0.e), vec2<bool>(true, true)))));
    return 109120u;
}

fn func_4(arg_0: f32, arg_1: Struct_5, arg_2: u32) -> u32 {
    var var_0 = Struct_2(max(abs(firstLeadingBit(37006u)), ~4294967295u), firstLeadingBit(~1i & u_input.b.x), ~vec4<u32>(661u, ~4294967295u, ~_wgslsmith_dot_vec3_u32(arg_1.e.zyw, arg_1.e.yyz), ~(~1u)), Struct_1(vec2<u32>(u_input.a, 1u)), true);
    var_0 = Struct_2(~u_input.a, u_input.c.x, vec4<u32>(45704u >> (firstLeadingBit(~var_0.c.x) % 32u), _wgslsmith_mult_u32(arg_2, u_input.a), 0u, ~arg_2), Struct_1(_wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(var_0.c.x, arg_2)), max(vec2<u32>(27654u, arg_2), var_0.d.a), ~(~var_0.d.a))), arg_1.d.x);
    global1 = array<vec3<i32>, 29>();
    let var_1 = arg_0 != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)));
    let var_2 = ~_wgslsmith_mod_vec2_i32(u_input.c, _wgslsmith_div_vec2_i32(u_input.c, _wgslsmith_sub_vec2_i32(vec2<i32>(15010i, u_input.b.x), u_input.b)));
    return u_input.a;
}

fn func_2(arg_0: u32) -> i32 {
    let var_0 = Struct_5(Struct_3(Struct_1(~vec2<u32>(1u, arg_0)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.x, global0.x, global0.x, global0.x), vec4<f32>(global0.x, global0.x, global0.x, global0.x)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1444f, global0.x, 951f, global0.x) + vec4<f32>(global0.x, 365f, 730f, 161f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(678f, global0.x, global0.x, global0.x)))), true)), u_input.c.x), vec2<u32>(u_input.a | _wgslsmith_mult_u32(_wgslsmith_add_u32(arg_0, u_input.a), 4294967295u), func_4(_wgslsmith_div_f32(-1630f, _wgslsmith_f_op_f32(min(global0.x, -265f))), Struct_5(Struct_3(Struct_1(vec2<u32>(3279u, arg_0)), vec4<f32>(global0.x, global0.x, global0.x, -358f), u_input.b.x), ~vec2<u32>(arg_0, u_input.a), max(u_input.a, 4294967295u), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false), ~vec4<u32>(22751u, 4294967295u, u_input.a, u_input.a)), func_3(global0.x, ~u_input.a))), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(36390u, 4294967295u, 1u, 36532u)) | _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, arg_0, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 46543u) ^ vec4<u32>(u_input.a, 4294967295u, 0u, 0u), ~vec4<u32>(arg_0, u_input.a, 1u, 0u)), _wgslsmith_mult_vec4_u32(~(vec4<u32>(arg_0, arg_0, 55909u, 0u) >> (vec4<u32>(1u, arg_0, u_input.a, arg_0) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(1u, 0u, arg_0, arg_0)), vec4<u32>(4294967295u, 0u, 4294967295u, 48219u), vec4<u32>(11384u, 4294967295u, 26857u, u_input.a)))), select(select(vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(false, true)), true, true), true), vec3<bool>(any(vec3<bool>(true, true, true)), false, true), any(vec3<bool>(true, true, true))), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 18101u, arg_0, u_input.a), vec4<u32>(arg_0, 92941u, u_input.a, 9506u))) | vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, arg_0), vec2<u32>(arg_0, u_input.a)), arg_0, ~countOneBits(22545u), _wgslsmith_add_u32(u_input.a ^ u_input.a, 4294967295u)));
    let var_1 = arg_0;
    var var_2 = var_0.a.a;
    var var_3 = ~vec2<u32>(u_input.a, var_0.c);
    let var_4 = _wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(func_4(-1094f, var_0, select(_wgslsmith_mult_u32(19020u, 1u), ~abs(4294967295u), var_0.d.x)), 28u)]);
    return var_0.a.c;
}

fn func_5(arg_0: vec2<i32>, arg_1: i32) -> Struct_2 {
    var var_0 = countOneBits(-1i) | ~(~arg_1);
    var var_1 = i32(-1i) * -_wgslsmith_add_i32(~u_input.b.x, _wgslsmith_mult_i32(0i, 0i));
    global4 = 8491i;
    global0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, -515f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(641f)), _wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(151f, -1166f, global0.x, global0.x) + vec4<f32>(372f, 990f, -1000f, global0.x))), vec4<f32>(global0.x, -509f, _wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_f_op_f32(sign(-353f))))), vec4<bool>(true, true, true, true)))));
    global0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(global0.x * -487f), _wgslsmith_f_op_f32(-370f - -1287f), _wgslsmith_f_op_f32(-1000f + global0.x), global0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.x), -1604f, global0.x, _wgslsmith_f_op_f32(exp2(global0.x))))))));
    return Struct_2(u_input.a, ~0i, vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 42880u), vec3<u32>(u_input.a, 79635u, 0u)), select(88390u, 1u, false)) << (countOneBits(u_input.a) % 32u), max(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(38618u, 1u, u_input.a, 0u), vec4<u32>(u_input.a, 0u, 0u, 34949u)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 7205u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)), 0u << (u_input.a % 32u)), ~u_input.a), 0u, ~50023u), Struct_1(~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(0u, u_input.a)), ~u_input.a)), !(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 8033u, 44121u), vec3<u32>(15296u, u_input.a, u_input.a)) <= max(func_3(global0.x, 32914u), ~4294967295u)));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool, arg_3: Struct_3) -> Struct_4 {
    global3 = array<Struct_4, 13>();
    global2 = array<vec2<f32>, 28>();
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1345f);
    var var_1 = arg_3.a;
    var var_2 = func_5(abs(firstTrailingBit(u_input.b & firstLeadingBit(u_input.b))), -_wgslsmith_add_i32(arg_0.b, -(u_input.b.x ^ 0i)));
    return Struct_4(arg_0, vec2<u32>(26287u << (abs(func_3(arg_3.b.x, 129369u)) % 32u), func_5(firstTrailingBit(_wgslsmith_div_vec2_i32(u_input.b, u_input.b)), min(u_input.b.x, ~87671i)).c.x));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_5) -> Struct_5 {
    global3 = array<Struct_4, 13>();
    global1 = array<vec3<i32>, 29>();
    let var_0 = func_6(func_5(vec2<i32>(func_2(~arg_1.c), 32865i), ~(u_input.b.x << ((4294967295u >> (arg_1.a.a.a.x % 32u)) % 32u))), func_5(_wgslsmith_clamp_vec2_i32(-_wgslsmith_div_vec2_i32(u_input.b, vec2<i32>(u_input.c.x, u_input.c.x)), vec2<i32>(-51303i, -8935i), firstLeadingBit(min(u_input.c, u_input.b))), arg_1.a.c), !arg_1.d.x, arg_1.a);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1959f) <= _wgslsmith_f_op_f32(sign(global0.x));
    let var_2 = arg_1.a.a.a.x;
    return Struct_5(arg_1.a, vec2<u32>(59346u, 22707u ^ reverseBits(~u_input.a)), var_0.b.x, arg_1.d, ~vec4<u32>(arg_1.a.a.a.x, 43075u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, var_2), arg_1.e.yyy), var_0.a.d.a.x));
}

fn func_7(arg_0: Struct_5, arg_1: f32) -> vec4<f32> {
    let var_0 = arg_0.a.a;
    var var_1 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.x, -1000f))), arg_1)), Struct_5(func_1(arg_0.a.b, arg_0).a, abs(vec2<u32>(_wgslsmith_clamp_u32(u_input.a, u_input.a, 1832u), _wgslsmith_mult_u32(0u, 4294967295u))), u_input.a, arg_0.d, arg_0.e), ~4294967295u);
    global3 = array<Struct_4, 13>();
    let var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1086f) <= var_2.a.b.x;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.a.b - vec4<f32>(_wgslsmith_f_op_f32(select(global0.x, global0.x, true)), 1000f, 2495f, _wgslsmith_f_op_f32(798f * global0.x))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-arg_0.a.b))), arg_0.a.b, !(!vec4<bool>(arg_0.d.x, false, true, true))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(404f, -1244f, var_2.a.b.x, arg_1))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.a.b + var_2.a.b))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1349f)) - _wgslsmith_f_op_f32(1704f - -1882f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(671f, arg_1))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-387f, -383f), -592f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(397f * 845f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<f32>, 28>();
    global1 = array<vec3<i32>, 29>();
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_7(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -1369f, global0.x, global0.x)), Struct_5(Struct_3(Struct_1(vec2<u32>(0u, 35742u)), vec4<f32>(-209f, -1000f, global0.x, global0.x), 47212i), vec2<u32>(4294967295u, u_input.a), 151516u, vec3<bool>(false, false, false), vec4<u32>(0u, 29833u, u_input.a, u_input.a))), _wgslsmith_f_op_f32(-global0.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_7(func_1(vec4<f32>(799f, 1000f, global0.x, 1443f), func_1(vec4<f32>(-1119f, 951f, global0.x, 1557f), Struct_5(Struct_3(Struct_1(vec2<u32>(37217u, 1u)), vec4<f32>(-412f, 1164f, -398f, 683f), 1i), vec2<u32>(u_input.a, u_input.a), u_input.a, vec3<bool>(true, true, false), vec4<u32>(u_input.a, 15775u, u_input.a, 37695u)))), 1121f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1361f, 137f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), 829f))));
    global4 = abs(abs(u_input.b.x << (4294967295u % 32u)) << (~23173u % 32u));
    global4 = _wgslsmith_mult_i32(_wgslsmith_add_i32(reverseBits(50748i), u_input.b.x), -u_input.c.x);
    var var_0 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(~(-36796i));
}

