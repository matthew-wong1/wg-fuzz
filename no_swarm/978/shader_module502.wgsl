struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(78840i, true, Struct_1(-119f, vec3<u32>(79404u, 0u, 1u), vec2<u32>(6462u, 1u), 1u)), Struct_2(-40744i, false, Struct_1(-387f, vec3<u32>(1u, 63644u, 5268u), vec2<u32>(65923u, 0u), 8041u)), Struct_2(1i, true, Struct_1(1095f, vec3<u32>(1u, 0u, 18890u), vec2<u32>(0u, 65149u), 1u)), Struct_2(-4659i, true, Struct_1(-425f, vec3<u32>(48925u, 18413u, 22539u), vec2<u32>(91412u, 29218u), 25209u)), Struct_2(4034i, false, Struct_1(1000f, vec3<u32>(21063u, 0u, 25721u), vec2<u32>(57563u, 0u), 0u)), Struct_2(-52889i, false, Struct_1(1148f, vec3<u32>(0u, 0u, 10776u), vec2<u32>(43237u, 83260u), 4294967295u)), Struct_2(4148i, true, Struct_1(-723f, vec3<u32>(32112u, 14681u, 27012u), vec2<u32>(109207u, 0u), 1u)), Struct_2(19025i, false, Struct_1(-2325f, vec3<u32>(2487u, 0u, 16437u), vec2<u32>(1u, 4294967295u), 4294967295u)), Struct_2(2539i, true, Struct_1(-1000f, vec3<u32>(1u, 50204u, 48588u), vec2<u32>(9045u, 0u), 29565u)), Struct_2(1i, true, Struct_1(-127f, vec3<u32>(62428u, 5191u, 5807u), vec2<u32>(43318u, 64107u), 4294967295u)), Struct_2(12861i, true, Struct_1(-1000f, vec3<u32>(4294967295u, 4294967295u, 6892u), vec2<u32>(0u, 28501u), 4294967295u)), Struct_2(1i, true, Struct_1(266f, vec3<u32>(72412u, 0u, 0u), vec2<u32>(4294967295u, 39978u), 0u)), Struct_2(-63975i, true, Struct_1(-153f, vec3<u32>(22621u, 66889u, 2436u), vec2<u32>(1u, 1u), 4294967295u)), Struct_2(-1i, false, Struct_1(-279f, vec3<u32>(0u, 0u, 20938u), vec2<u32>(4294967295u, 0u), 16277u)), Struct_2(398i, false, Struct_1(1000f, vec3<u32>(29958u, 6749u, 4294967295u), vec2<u32>(4294967295u, 1u), 45730u)), Struct_2(-23911i, false, Struct_1(1000f, vec3<u32>(58423u, 1u, 14364u), vec2<u32>(4294967295u, 39622u), 61173u)), Struct_2(2147483647i, true, Struct_1(959f, vec3<u32>(4849u, 1u, 30429u), vec2<u32>(4294967295u, 1u), 0u)), Struct_2(0i, false, Struct_1(185f, vec3<u32>(28661u, 47439u, 1u), vec2<u32>(4294967295u, 26006u), 31249u)), Struct_2(2147483647i, true, Struct_1(1033f, vec3<u32>(1u, 4294967295u, 1u), vec2<u32>(4294967295u, 65431u), 61812u)), Struct_2(i32(-2147483648), false, Struct_1(-1170f, vec3<u32>(1u, 35371u, 9005u), vec2<u32>(34040u, 0u), 0u)), Struct_2(-36989i, true, Struct_1(-147f, vec3<u32>(60920u, 0u, 86468u), vec2<u32>(71482u, 4294967295u), 594u)), Struct_2(-1i, true, Struct_1(1666f, vec3<u32>(44689u, 8192u, 79632u), vec2<u32>(13697u, 52973u), 24070u)), Struct_2(-64249i, true, Struct_1(674f, vec3<u32>(29108u, 92878u, 33892u), vec2<u32>(4294967295u, 110018u), 4294967295u)), Struct_2(17029i, false, Struct_1(-1000f, vec3<u32>(31384u, 0u, 64846u), vec2<u32>(6770u, 1u), 1u)), Struct_2(i32(-2147483648), true, Struct_1(1142f, vec3<u32>(17407u, 1u, 1u), vec2<u32>(1u, 0u), 34076u)), Struct_2(19063i, true, Struct_1(-900f, vec3<u32>(39707u, 30502u, 1u), vec2<u32>(1u, 4294967295u), 50046u)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_2) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(-arg_0);
    global0 = array<Struct_2, 26>();
    let var_1 = ~(arg_2.c.c.x >> (0u % 32u));
    let var_2 = arg_2.c.c;
    let var_3 = any(select(!(!select(vec2<bool>(arg_2.b, true), vec2<bool>(arg_2.b, true), arg_2.b)), select(!(!vec2<bool>(arg_2.b, arg_2.b)), select(!vec2<bool>(arg_2.b, arg_2.b), vec2<bool>(arg_2.b, arg_2.b), vec2<bool>(true, true)), all(select(vec4<bool>(arg_2.b, arg_2.b, arg_2.b, arg_2.b), vec4<bool>(false, arg_2.b, arg_2.b, arg_2.b), vec4<bool>(arg_2.b, arg_2.b, arg_2.b, false)))), true));
    return vec4<i32>(_wgslsmith_clamp_i32(min(55419i, min(_wgslsmith_sub_i32(1i, u_input.c.x), 0i)), _wgslsmith_mod_i32(1i, arg_2.a), ~countOneBits(i32(-1i) * -2147483647i)), _wgslsmith_dot_vec4_i32(countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, 2147483647i, -12666i, 1i), u_input.d, vec4<i32>(arg_2.a, arg_2.a, -25228i, 0i))), vec4<i32>(44285i, u_input.c.x | arg_2.a, ~(-58191i), _wgslsmith_div_i32(arg_2.a, -1i))) | 13447i, _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.a << (~arg_1 % 32u), -15956i), firstTrailingBit(~u_input.d.x)), select(_wgslsmith_mod_i32(select(9371i, 14573i, true), arg_2.a << (_wgslsmith_div_u32(u_input.b, 16194u) % 32u)), ~(~(-1i)), false));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: vec4<f32>) -> Struct_1 {
    global0 = array<Struct_2, 26>();
    let var_0 = 1u;
    let var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(26435i, 2147483647i, 2147483647i), vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.d >> (vec4<u32>(15787u, var_0, 44913u, u_input.b) % vec4<u32>(32u)), func_3(1840f, 99308u, global0[_wgslsmith_index_u32(67179u, 26u)])), _wgslsmith_mod_i32(arg_1, -u_input.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, 1i, -2147483647i, -2147483647i), u_input.d))) << (~(4294967295u ^ (u_input.b >> (var_0 % 32u))) % 32u);
    var var_2 = _wgslsmith_sub_i32(var_1, _wgslsmith_mult_i32(-arg_1, ~arg_1));
    var var_3 = !(!(!vec2<bool>(arg_0, !arg_0)));
    return Struct_1(646f, vec3<u32>(max(_wgslsmith_mod_u32(45927u, 1u), u_input.b), ~countOneBits(1u | u_input.b), 9869u), vec2<u32>(_wgslsmith_div_u32(select(abs(u_input.b), var_0 << (1u % 32u), var_3.x), _wgslsmith_sub_u32(u_input.b, var_0)), var_0), 0u);
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_add_i32(u_input.d.x, -12969i), !(_wgslsmith_mult_u32(arg_0.c.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c.d, u_input.b), vec2<u32>(74128u, 0u))) >= 0u), func_2(arg_0.b, -1i, _wgslsmith_f_op_vec4_f32(vec4<f32>(-3017f, _wgslsmith_f_op_f32(select(arg_0.c.a, -1138f, arg_0.b)), _wgslsmith_f_op_f32(1677f - 406f), _wgslsmith_f_op_f32(-267f - -1084f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1121f, 755f, 270f, -301f)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.c.a, arg_0.c.a, -608f, 258f)))))));
    var var_1 = arg_0;
    let var_2 = _wgslsmith_add_i32(~_wgslsmith_dot_vec4_i32(abs(u_input.d), ~u_input.d), var_0.a) != u_input.d.x;
    var_0 = Struct_2(arg_0.a, var_0.b, func_2(_wgslsmith_f_op_f32(-1f) == arg_0.c.a, _wgslsmith_add_i32((2147483647i << (u_input.b % 32u)) >> (var_0.c.c.x % 32u), -1i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.c.a, var_0.c.a, var_0.c.a, -1000f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(595f, -546f, var_0.c.a, var_1.c.a) - vec4<f32>(var_0.c.a, arg_0.c.a, -1475f, 1000f))))));
    var var_3 = Struct_3(4294967295u);
    return Struct_2(-_wgslsmith_sub_i32(38120i, -(~(-24230i))), all(!(!select(vec2<bool>(var_2, false), vec2<bool>(false, var_0.b), vec2<bool>(true, false)))), func_2(all(select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, var_1.b), true))), u_input.d.x, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(max(arg_0.c.a, var_0.c.a)), _wgslsmith_f_op_f32(arg_0.c.a - var_1.c.a), -220f, _wgslsmith_f_op_f32(ceil(-212f)))))));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2) -> Struct_2 {
    global0 = array<Struct_2, 26>();
    var var_0 = Struct_2(u_input.a, true, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.c.a)) + _wgslsmith_f_op_f32(trunc(-173f))), vec3<u32>(~u_input.b, ~u_input.b >> (reverseBits(arg_0.x) % 32u), 1u), arg_1.c.b.yz, _wgslsmith_dot_vec3_u32(vec3<u32>(29974u, ~80981u, 1u), vec3<u32>(_wgslsmith_add_u32(26063u, arg_0.x), firstTrailingBit(4294967295u), _wgslsmith_div_u32(arg_1.c.b.x, 16766u)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-491f, arg_1.c.a, var_0.c.a, 378f) - vec4<f32>(664f, 729f, var_0.c.a, -482f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.c.a, arg_1.c.a, 1094f, 1360f))))), false)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(181f, var_0.c.a, -487f, 589f))))));
    var var_2 = func_2(true, _wgslsmith_mod_i32(func_1(Struct_2(var_0.a, true, arg_1.c)).a ^ ~u_input.c.x, ~_wgslsmith_mod_i32(2147483647i, var_0.a) << (~countOneBits(0u) % 32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-381f, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.a)), var_0.c.a)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(var_2.a + _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -977f), 1f)))), ~abs(arg_1.c.b), vec2<u32>(1u, ~(~func_2(var_0.b, u_input.c.x, vec4<f32>(var_0.c.a, 389f, -374f, var_2.a)).b.x)), ~arg_1.c.b.x);
    return global0[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(abs(53518u), ~u_input.b)) << (countOneBits(~u_input.b) % 32u), 26u)];
}

fn func_5(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec4<u32>, arg_3: vec2<i32>) -> Struct_2 {
    let var_0 = Struct_1(arg_0.c.a, arg_2.ywy, ~_wgslsmith_mod_vec2_u32(arg_2.zz, arg_0.c.b.xz), ~_wgslsmith_div_u32(_wgslsmith_add_u32(98633u, ~arg_2.x), 16118u));
    let var_1 = -reverseBits(-37360i);
    let var_2 = vec3<bool>(arg_0.b, true, arg_0.b);
    var var_3 = select(!(!select(!vec4<bool>(false, false, false, var_2.x), select(vec4<bool>(false, false, false, arg_1.x), vec4<bool>(arg_1.x, var_2.x, true, arg_0.b), false), select(vec4<bool>(true, true, arg_1.x, false), vec4<bool>(arg_1.x, var_2.x, var_2.x, arg_0.b), arg_0.b))), select(!(!vec4<bool>(arg_1.x, true, true, false)), !select(vec4<bool>(arg_0.b, arg_1.x, arg_1.x, true), select(vec4<bool>(arg_0.b, false, true, false), vec4<bool>(arg_0.b, arg_0.b, arg_0.b, true), vec4<bool>(arg_0.b, true, arg_0.b, var_2.x)), !vec4<bool>(false, arg_0.b, false, true)), !(!select(vec4<bool>(true, false, true, arg_1.x), vec4<bool>(false, var_2.x, var_2.x, var_2.x), arg_1.x))), select(select(vec4<bool>(true, true, true, true), !vec4<bool>(false, var_2.x, var_2.x, false), false), select(!vec4<bool>(arg_1.x, true, false, var_2.x), vec4<bool>(func_4(var_0.b.yy, arg_0).b, var_2.x, true, arg_1.x), 1u > var_0.b.x), true));
    global0 = array<Struct_2, 26>();
    return func_1(func_4(firstTrailingBit(arg_2.xy), func_1(Struct_2(-13896i, true, func_1(Struct_2(arg_3.x, false, Struct_1(-807f, vec3<u32>(arg_2.x, u_input.b, var_0.b.x), arg_0.c.c, 75983u))).c))));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_3) -> Struct_3 {
    var var_0 = arg_1;
    var_0 = arg_3;
    let var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(213f, _wgslsmith_f_op_f32(-arg_0.c.a)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.a, 544f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(973f, -306f)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_4(~vec2<u32>(var_0.a, 37375u), func_4(vec2<u32>(0u, 4294967295u), global0[_wgslsmith_index_u32(var_0.a, 26u)])), !vec2<bool>(arg_0.b, false), countOneBits(vec4<u32>(4294967295u, arg_3.a, arg_3.a, 36341u) ^ vec4<u32>(arg_0.c.b.x, arg_3.a, arg_1.a, arg_0.c.b.x)), -func_3(arg_0.c.a, arg_0.c.c.x, Struct_2(-31589i, arg_0.b, Struct_1(var_1.x, vec3<u32>(arg_1.a, arg_3.a, 3745u), arg_0.c.c, 28645u))).ww).c.a - _wgslsmith_f_op_f32(floor(-1000f))));
    let var_3 = ~_wgslsmith_mult_vec3_u32(vec3<u32>(~firstLeadingBit(arg_0.c.d), arg_1.a, u_input.b), ~func_4(vec2<u32>(18009u, 4980u), Struct_2(arg_0.a, arg_0.b, arg_0.c)).c.b);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1084f))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-327f, _wgslsmith_f_op_f32(f32(-1f) * -520f)))));
    let var_1 = Struct_1(var_0.x, ~vec3<u32>(~u_input.b, _wgslsmith_sub_u32(0u, 0u), u_input.b) >> (~(~vec3<u32>(1u, 4294967295u, u_input.b)) % vec3<u32>(32u)), vec2<u32>(u_input.b, abs(u_input.b)), u_input.b);
    let var_2 = Struct_2(7047i, true, Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.a, -775f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(383f - var_0.x) + var_1.a)), var_1.b, countOneBits(abs(~vec2<u32>(u_input.b, u_input.b))), 14246u));
    global0 = array<Struct_2, 26>();
    let var_3 = var_1.d;
    global0 = array<Struct_2, 26>();
    let var_4 = _wgslsmith_dot_vec4_u32(abs(~vec4<u32>(_wgslsmith_div_u32(30846u, var_1.c.x), var_1.b.x | u_input.b, ~u_input.b, ~var_2.c.c.x)), ~firstTrailingBit(~vec4<u32>(14119u, var_1.b.x, 1u, 4294967295u)) << (~vec4<u32>(reverseBits(34293u), ~u_input.b, _wgslsmith_clamp_u32(17583u, 1u, u_input.b), ~3832u) % vec4<u32>(32u)));
    let var_5 = vec4<i32>(-1i, _wgslsmith_div_i32(_wgslsmith_div_i32(var_2.a, 1i) | ~(-1i), -7584i), 7518i, abs(var_2.a));
    let var_6 = func_6(func_5(func_4(var_2.c.c, func_1(Struct_2(var_5.x, var_2.b, Struct_1(var_2.c.a, vec3<u32>(13996u, 27820u, 58917u), var_2.c.c, 4294967295u)))), select(vec2<bool>(false, any(vec4<bool>(var_2.b, var_2.b, true, true))), select(!vec2<bool>(var_2.b, var_2.b), vec2<bool>(var_2.b, var_2.b), var_2.b), vec2<bool>(any(vec4<bool>(false, true, var_2.b, false)), any(vec3<bool>(true, true, true)))), (_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.b, 21509u, var_4), vec4<u32>(2732u, 45922u, var_2.c.c.x, var_2.c.b.x)) << ((vec4<u32>(4294967295u, 1u, 1u, var_2.c.d) >> (vec4<u32>(var_2.c.d, 0u, 4269u, var_1.d) % vec4<u32>(32u))) % vec4<u32>(32u))) & ~(~vec4<u32>(var_1.b.x, u_input.b, var_3, 68302u)), _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(abs(u_input.d.xy), var_5.yz >> (var_1.c % vec2<u32>(32u))), abs(vec2<i32>(var_2.a, var_5.x) | var_5.xz))), Struct_3(_wgslsmith_div_u32(~19450u, _wgslsmith_mod_u32(var_3, abs(31572u)))), Struct_3(44330u), Struct_3(~31135u));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec2<i32>(abs(var_2.a & -2147483647i), var_5.x)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1269f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1594f + var_2.c.a)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -225f)))))), _wgslsmith_add_u32(_wgslsmith_clamp_u32(~var_2.c.b.x, var_4, abs(4294967295u)), 70423u >> (1u % 32u)) | 1u);
}

