struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: bool,
    d: Struct_3,
}

struct Struct_5 {
    a: vec4<i32>,
    b: u32,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: Struct_5;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: vec3<u32>) -> bool {
    return global1.c.a.x;
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    let var_0 = Struct_4(318f, Struct_2(!vec4<bool>(any(vec2<bool>(arg_0.a.x, false)), arg_0.b.b != 1u, true, all(vec3<bool>(global1.c.b.c, false, true))), Struct_1(vec4<u32>(~4294967295u, _wgslsmith_div_u32(7238u, arg_0.b.a.x), 4294967295u << (0u % 32u), global1.b), global0.x, true || !arg_0.c.c), Struct_1(~arg_0.b.a >> (~vec4<u32>(44373u, 18896u, 0u, global0.x) % vec4<u32>(32u)), 26334u & ~global1.c.b.b, arg_0.b.c == true), -2147483647i), func_3(-1000f, Struct_3(-220f, arg_0), global1.c.c.a.xwz), Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -438f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(385f))), global1.d.c & true)), Struct_2(select(select(global1.c.a, arg_0.a, global1.c.a), !vec4<bool>(false, arg_0.b.c, global1.d.c, arg_0.b.c), vec4<bool>(global1.c.b.c, global1.c.a.x, false, arg_0.b.c)), Struct_1(vec4<u32>(1u, 1u, arg_0.c.b, arg_0.c.a.x), _wgslsmith_div_u32(arg_0.b.a.x, 24925u), arg_0.c.c), Struct_1(global1.c.c.a, 0u, all(vec2<bool>(arg_0.b.c, global1.d.c))), abs(-u_input.a.x))));
    global1 = Struct_5(global1.a, _wgslsmith_dot_vec3_u32(arg_0.c.a.zwy, ~global1.d.a.xwy), Struct_2(vec4<bool>(var_0.b.c.c, -1i == ~global1.c.d, true, true), global1.c.b, arg_0.c, 0i), Struct_1(max(~min(global1.d.a, global1.d.a), countOneBits(~global1.d.a)), 8752u, !select(arg_0.c.c, true, false) & (true & all(var_0.d.b.a))));
    var var_1 = var_0.d;
    global0 = ~firstLeadingBit(~vec2<u32>(arg_0.b.b, global0.x) >> (var_1.b.c.a.wx % vec2<u32>(32u))) ^ vec2<u32>(_wgslsmith_sub_u32(~reverseBits(0u), ~70467u), global0.x);
    let var_2 = var_0;
    return arg_0.b;
}

fn func_4(arg_0: f32, arg_1: Struct_5, arg_2: Struct_5, arg_3: i32) -> Struct_4 {
    let var_0 = func_2(Struct_2(!(!(!arg_1.c.a)), Struct_1(global1.d.a, 85757u, !all(arg_1.c.a.ww)), arg_1.d, 0i));
    global0 = vec2<u32>(global1.b, ~4294967295u);
    global0 = vec2<u32>(~3092u, _wgslsmith_mod_u32(global0.x, _wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 4294967295u), var_0.a.yy), firstLeadingBit(global1.c.b.a.ww))));
    global1 = Struct_5(u_input.a, arg_2.d.a.x, Struct_2(vec4<bool>(false, select(func_3(239f, Struct_3(arg_0, Struct_2(arg_2.c.a, global1.c.b, global1.d, 31898i)), vec3<u32>(1u, 1u, var_0.a.x)), var_0.c, global1.d.c), true, !var_0.c), Struct_1(arg_2.c.b.a, max(~1u, ~arg_2.c.b.b), any(vec3<bool>(false, true, true))), var_0, u_input.a.x), func_2(Struct_2(vec4<bool>(arg_2.c.a.x, arg_2.c.b.c, all(arg_1.c.a.zw), all(global1.c.a.www)), func_2(global1.c), Struct_1(vec4<u32>(global1.c.c.a.x, global1.d.a.x, global0.x, global1.c.c.a.x), arg_2.c.c.b & global0.x, var_0.c), 2147483647i)));
    let var_1 = 61001u;
    return Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -1032f), Struct_2(arg_2.c.a, arg_1.d, func_2(Struct_2(arg_2.c.a, Struct_1(vec4<u32>(var_0.a.x, global1.c.c.a.x, arg_2.b, arg_1.c.b.a.x), var_1, true), Struct_1(vec4<u32>(23029u, 21577u, arg_2.c.b.b, 4294967295u), 54868u, global1.d.c), _wgslsmith_mult_i32(23976i, 49115i))), firstTrailingBit(1i)), select(true, !((false || arg_2.c.b.c) || all(vec3<bool>(false, arg_1.d.c, true))), arg_1.d.c), Struct_3(_wgslsmith_f_op_f32(269f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1040f))), Struct_2(!vec4<bool>(global1.d.c, false, arg_2.d.c, false), func_2(Struct_2(arg_1.c.a, Struct_1(vec4<u32>(0u, 27463u, 1u, 4294967295u), 1u, arg_2.c.b.c), Struct_1(vec4<u32>(1u, 39659u, arg_2.c.c.a.x, var_0.a.x), 94438u, false), 0i)), func_2(Struct_2(arg_1.c.a, Struct_1(arg_1.d.a, var_1, false), var_0, arg_1.a.x)), -reverseBits(u_input.a.x))));
}

fn func_5(arg_0: Struct_4) -> Struct_2 {
    let var_0 = arg_0.b;
    global0 = global1.d.a.yy;
    global1 = Struct_5(_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, 0i, global1.c.d) << (max(vec4<u32>(arg_0.d.b.c.b, var_0.c.a.x, 0u, arg_0.b.c.a.x), var_0.b.a) % vec4<u32>(32u)), -vec4<i32>(2147483647i, var_0.d, arg_0.b.d, 0i)), vec4<i32>(arg_0.b.d & _wgslsmith_div_i32(19083i, var_0.d), arg_0.b.d, _wgslsmith_sub_i32(83038i, var_0.d) ^ ~0i, 20356i)), var_0.b.b, arg_0.d.b, arg_0.b.b);
    var var_1 = func_4(_wgslsmith_f_op_f32(min(-168f, arg_0.a)), Struct_5(firstLeadingBit(u_input.a), 6602u, Struct_2(func_4(arg_0.d.a, Struct_5(vec4<i32>(-20746i, global1.c.d, arg_0.d.b.d, var_0.d), 51668u, Struct_2(var_0.a, var_0.b, Struct_1(arg_0.d.b.b.a, global1.b, arg_0.b.b.c), -1i), Struct_1(var_0.c.a, global0.x, var_0.a.x)), Struct_5(u_input.a, global0.x, arg_0.b, arg_0.b.c), abs(23952i)).d.b.a, func_4(_wgslsmith_f_op_f32(arg_0.a + arg_0.a), Struct_5(global1.a, 1718u, Struct_2(vec4<bool>(true, arg_0.d.b.c.c, var_0.c.c, var_0.c.c), arg_0.d.b.b, Struct_1(vec4<u32>(var_0.b.b, arg_0.d.b.b.a.x, 70631u, 50086u), var_0.b.a.x, global1.c.a.x), -2147483647i), var_0.c), Struct_5(vec4<i32>(var_0.d, -18311i, u_input.a.x, global1.c.d), global1.d.a.x, Struct_2(vec4<bool>(false, true, false, true), Struct_1(global1.d.a, 50142u, true), Struct_1(var_0.c.a, 30667u, global1.c.c.c), 33177i), var_0.b), reverseBits(var_0.d)).b.c, var_0.c, ~(~(-2147483647i))), Struct_1(vec4<u32>(min(1u, global0.x), ~17344u, countOneBits(0u), ~2324u), func_4(_wgslsmith_div_f32(761f, arg_0.d.a), Struct_5(vec4<i32>(-13940i, 8965i, global1.c.d, -13079i), global1.c.b.b, var_0, Struct_1(vec4<u32>(0u, arg_0.b.c.b, arg_0.b.c.a.x, 1u), global0.x, true)), Struct_5(vec4<i32>(var_0.d, 26212i, arg_0.b.d, global1.c.d), global1.c.c.a.x, Struct_2(vec4<bool>(var_0.c.c, false, var_0.a.x, false), Struct_1(vec4<u32>(6255u, global0.x, global1.d.b, global0.x), 52366u, arg_0.b.b.c), global1.c.c, global1.a.x), Struct_1(vec4<u32>(28675u, 4294967295u, 20187u, 1u), global1.b, var_0.a.x)), _wgslsmith_div_i32(global1.a.x, var_0.d)).b.b.b, true)), Struct_5(vec4<i32>(u_input.a.x, u_input.a.x, 0i, _wgslsmith_div_i32(2147483647i, -3308i)), select(23996u, var_0.b.b, _wgslsmith_sub_i32(global1.c.d, -2147483647i) == ~arg_0.d.b.d), global1.c, Struct_1(~func_2(Struct_2(vec4<bool>(true, true, true, var_0.b.c), Struct_1(arg_0.b.c.a, arg_0.d.b.b.a.x, true), Struct_1(vec4<u32>(arg_0.d.b.b.b, 19672u, global1.c.b.a.x, var_0.b.b), global1.c.c.a.x, global1.c.a.x), u_input.a.x)).a, global1.d.b, global1.c.b.c)), 7157i).d.b;
    global1 = Struct_5(vec4<i32>(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -2147483647i), u_input.a.wx)), 0i, 0i, max(-2147483647i & (u_input.a.x ^ var_0.d), arg_0.d.b.d)), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(abs(var_0.c.a.x), 36823u, var_1.c.a.x), vec3<u32>(reverseBits(global0.x), abs(arg_0.d.b.b.b), global1.d.b ^ var_0.c.a.x)), select(var_1.b.a.ywx, select(~var_0.c.a.xyw, ~vec3<u32>(global0.x, arg_0.b.b.b, 70731u), !var_0.a.zyw), !var_0.a.yxx)), Struct_2(vec4<bool>(true, true, arg_0.c, all(arg_0.b.a.yy) | (-1433f <= arg_0.d.a)), func_4(-1020f, Struct_5(vec4<i32>(-1i, var_1.d, u_input.a.x, var_0.d), ~40889u, Struct_2(vec4<bool>(false, var_0.a.x, global1.c.b.c, true), var_1.b, Struct_1(vec4<u32>(27747u, 7792u, var_1.b.b, 30193u), var_0.c.b, false), u_input.a.x), Struct_1(vec4<u32>(arg_0.b.c.a.x, 42244u, 21545u, 19937u), global0.x, true)), Struct_5(global1.a, _wgslsmith_mod_u32(arg_0.d.b.b.a.x, 0u), Struct_2(vec4<bool>(var_1.b.c, false, var_1.b.c, arg_0.b.b.c), Struct_1(vec4<u32>(13573u, 100658u, global0.x, global0.x), 4690u, true), Struct_1(vec4<u32>(0u, global0.x, 1u, 0u), global0.x, var_1.c.c), 1i), func_4(132f, Struct_5(u_input.a, var_0.c.b, Struct_2(global1.c.a, Struct_1(vec4<u32>(var_0.b.b, 3784u, 4294967295u, global0.x), 34791u, arg_0.b.c.c), Struct_1(arg_0.d.b.b.a, 1u, false), -18519i), global1.d), Struct_5(vec4<i32>(-18107i, -6468i, var_0.d, var_1.d), global1.b, var_0, arg_0.b.b), -57765i).b.b), _wgslsmith_div_i32(_wgslsmith_mult_i32(37663i, var_1.d), _wgslsmith_mult_i32(9879i, 6632i))).d.b.b, func_2(Struct_2(global1.c.a, func_2(Struct_2(vec4<bool>(false, arg_0.b.a.x, var_0.c.c, var_1.b.c), var_1.b, var_0.b, arg_0.d.b.d)), func_4(1693f, Struct_5(vec4<i32>(54245i, global1.a.x, -34327i, var_0.d), var_0.b.b, Struct_2(vec4<bool>(global1.d.c, true, false, true), Struct_1(arg_0.b.c.a, 16355u, false), var_1.c, var_0.d), var_0.c), Struct_5(global1.a, global1.d.a.x, arg_0.b, Struct_1(var_1.b.a, 4464u, false)), 1i).d.b.c, _wgslsmith_div_i32(u_input.a.x, global1.a.x))), 1i), func_4(arg_0.d.a, Struct_5(~u_input.a, select(92872u, global1.d.a.x, !var_1.a.x), arg_0.d.b, arg_0.d.b.b), Struct_5(countOneBits(vec4<i32>(-28306i, arg_0.b.d, var_0.d, u_input.a.x)), _wgslsmith_mult_u32(countOneBits(26772u), 5331u), var_0, func_4(_wgslsmith_f_op_f32(arg_0.d.a - arg_0.d.a), Struct_5(vec4<i32>(u_input.a.x, 0i, global1.c.d, -63988i), arg_0.d.b.c.a.x, Struct_2(vec4<bool>(global1.d.c, true, var_1.a.x, true), global1.c.b, arg_0.b.c, var_1.d), arg_0.d.b.c), Struct_5(vec4<i32>(-11801i, global1.a.x, var_1.d, var_1.d), arg_0.b.c.b, Struct_2(vec4<bool>(var_1.b.c, false, true, global1.c.a.x), Struct_1(vec4<u32>(1u, 3038u, var_0.b.a.x, 1u), 28793u, false), Struct_1(var_0.b.a, 17221u, false), var_0.d), Struct_1(var_0.b.a, 6021u, var_0.b.c)), ~(-1i)).d.b.c), -36004i).b.b);
    return var_0;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_2) -> Struct_3 {
    let var_0 = select(arg_2.a, !func_4(-643f, Struct_5(global1.a, 4294967295u | arg_0.c.b, arg_1.b, func_5(arg_1).b), Struct_5(_wgslsmith_mult_vec4_i32(global1.a, vec4<i32>(-1i, 30352i, 12134i, arg_0.d)), arg_1.b.b.a.x, func_5(Struct_4(arg_1.a, global1.c, arg_1.c, arg_1.d)), Struct_1(arg_1.d.b.b.a, 0u, false)), u_input.a.x).d.b.a, arg_0.a);
    global0 = _wgslsmith_div_vec2_u32(abs(~(~vec2<u32>(arg_2.c.a.x, 1u))), arg_0.c.a.xz);
    let var_1 = Struct_3(_wgslsmith_f_op_f32(ceil(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1715f - 268f) - -866f), Struct_5(vec4<i32>(-90054i, 1i, 2147483647i, -2147483647i), ~arg_2.b.a.x, arg_2, func_4(arg_1.a, Struct_5(global1.a, 19393u, Struct_2(global1.c.a, Struct_1(arg_1.d.b.c.a, arg_1.b.c.b, var_0.x), Struct_1(arg_1.d.b.b.a, arg_1.b.b.b, false), 22724i), arg_1.b.b), Struct_5(u_input.a, 4294967295u, arg_0, Struct_1(vec4<u32>(global0.x, global1.d.b, 4294967295u, global0.x), arg_0.b.a.x, var_0.x)), -2147483647i).d.b.b), Struct_5(max(vec4<i32>(-1i, global1.c.d, arg_0.d, 12506i), global1.a), arg_1.d.b.b.b | 44530u, Struct_2(vec4<bool>(arg_0.c.c, arg_1.c, false, false), arg_2.b, arg_2.b, -2147483647i), Struct_1(arg_0.b.a, arg_0.c.a.x, false)), ~arg_1.d.b.d).a)), arg_1.b);
    let var_2 = vec4<f32>(var_1.a, -931f, 1189f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_1.a)), _wgslsmith_div_f32(_wgslsmith_div_f32(var_1.a, -128f), arg_1.a))));
    let var_3 = -1i;
    return func_4(var_1.a, Struct_5(vec4<i32>(-35284i, reverseBits(_wgslsmith_add_i32(0i, arg_2.d)), -20444i, arg_2.d), 62195u, Struct_2(var_1.b.a, arg_1.d.b.b, func_5(func_4(623f, Struct_5(vec4<i32>(arg_2.d, var_1.b.d, global1.c.d, -15794i), 27641u, arg_1.b, global1.d), Struct_5(vec4<i32>(global1.c.d, var_1.b.d, -30379i, var_1.b.d), global0.x, Struct_2(arg_2.a, Struct_1(vec4<u32>(0u, 0u, arg_2.b.b, global1.c.b.b), 24630u, arg_1.d.b.c.c), var_1.b.b, -34432i), global1.d), arg_1.d.b.d)).c, ~(-2147483647i)), Struct_1(vec4<u32>(9901u, global1.c.b.b << (80686u % 32u), ~arg_2.c.b, var_1.b.b.a.x), var_1.b.b.a.x, false)), Struct_5(_wgslsmith_div_vec4_i32(-(~global1.a), global1.a), arg_0.b.b, Struct_2(arg_2.a, Struct_1(~vec4<u32>(4294967295u, 0u, 1u, 0u), func_2(Struct_2(vec4<bool>(false, false, false, arg_1.c), Struct_1(arg_0.b.a, 0u, true), Struct_1(arg_2.b.a, arg_1.d.b.b.b, arg_1.c), arg_2.d)).b, func_4(var_1.a, Struct_5(global1.a, 13334u, arg_1.d.b, Struct_1(arg_0.c.a, 4294967295u, true)), Struct_5(u_input.a, 4294967295u, Struct_2(var_0, arg_1.b.b, Struct_1(arg_1.d.b.b.a, 1u, arg_2.b.c), 45287i), var_1.b.b), arg_0.d).c), arg_2.c, max(~arg_2.d, i32(-1i) * -1i)), global1.d), arg_1.d.b.d ^ global1.a.x).d;
}

fn func_1() -> f32 {
    let var_0 = func_6(func_5(func_4(_wgslsmith_f_op_f32(sign(1339f)), Struct_5(~global1.a, 4294967295u, Struct_2(vec4<bool>(global1.c.c.c, global1.d.c, global1.d.c, false), global1.c.b, Struct_1(global1.c.c.a, global1.b, true), -2147483647i), func_2(global1.c)), Struct_5(_wgslsmith_div_vec4_i32(u_input.a, vec4<i32>(-1i, -5874i, -16772i, u_input.a.x)), 0u, Struct_2(vec4<bool>(true, false, global1.d.c, global1.c.b.c), global1.c.b, global1.d, u_input.a.x), func_2(global1.c)), 1i)), func_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1226f), _wgslsmith_f_op_f32(f32(-1f) * -1154f))), Struct_5(~vec4<i32>(global1.c.d, u_input.a.x, u_input.a.x, u_input.a.x), firstLeadingBit(0u), Struct_2(global1.c.a, Struct_1(vec4<u32>(global1.d.b, 46189u, global1.b, global0.x), global0.x, true), global1.c.b, 1i), global1.c.b), Struct_5(vec4<i32>(u_input.a.x, ~(-2147483647i), firstLeadingBit(0i), abs(global1.c.d)), max(8508u, abs(global0.x)), func_4(_wgslsmith_f_op_f32(select(1000f, 394f, false)), Struct_5(vec4<i32>(global1.a.x, global1.a.x, -48661i, -5088i), global0.x, global1.c, Struct_1(vec4<u32>(1u, global1.d.a.x, global0.x, global1.d.a.x), global1.b, false)), Struct_5(vec4<i32>(u_input.a.x, -242i, -45668i, u_input.a.x), global0.x, Struct_2(global1.c.a, Struct_1(global1.c.c.a, 0u, true), Struct_1(vec4<u32>(global1.d.b, 1u, 4294967295u, global0.x), global1.d.a.x, false), -2147483647i), Struct_1(global1.d.a, global1.b, false)), func_5(Struct_4(-2831f, Struct_2(vec4<bool>(global1.d.c, true, global1.c.c.c, true), Struct_1(vec4<u32>(global1.c.b.a.x, 11440u, 12696u, global1.c.c.b), 54838u, true), Struct_1(global1.c.b.a, global1.d.b, false), u_input.a.x), global1.d.c, Struct_3(412f, Struct_2(global1.c.a, Struct_1(global1.d.a, 4294967295u, false), global1.d, -1i)))).d).d.b, func_2(func_5(Struct_4(272f, Struct_2(vec4<bool>(true, false, false, false), global1.d, global1.c.c, u_input.a.x), global1.d.c, Struct_3(-122f, global1.c))))), -_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, global1.c.d), -vec2<i32>(u_input.a.x, u_input.a.x))), func_5(func_4(func_4(-1315f, Struct_5(vec4<i32>(u_input.a.x, -5210i, -19703i, -1i), 17300u, global1.c, global1.d), Struct_5(u_input.a, global0.x, Struct_2(global1.c.a, Struct_1(global1.d.a, global1.b, true), global1.d, u_input.a.x), global1.d), select(global1.c.d, -9360i, global1.d.c)).a, Struct_5(vec4<i32>(-1i, global1.c.d, u_input.a.x, u_input.a.x), global1.c.b.a.x, global1.c, func_5(Struct_4(557f, global1.c, true, Struct_3(210f, global1.c))).c), Struct_5(global1.a << (global1.c.c.a % vec4<u32>(32u)), global1.b, func_5(Struct_4(1534f, Struct_2(vec4<bool>(global1.c.c.c, false, false, true), Struct_1(global1.d.a, global0.x, global1.d.c), Struct_1(global1.d.a, 14868u, global1.c.b.c), -43722i), global1.c.a.x, Struct_3(-564f, global1.c))), Struct_1(global1.c.c.a, global0.x, global1.c.b.c)), _wgslsmith_div_i32(12297i, 10175i))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_0.a, var_0.a, -362f)))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a + 955f) - _wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_f32(f32(-1f) * -340f), -101f, 340f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(var_0.a)), var_0.a, _wgslsmith_f_op_f32(308f - var_0.a), _wgslsmith_div_f32(-1000f, -1650f)))));
    var var_2 = func_5(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1670f, var_1.x))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(var_1.x, -585f, global1.d.c))))), Struct_5(~global1.a >> (abs(global1.c.c.a) % vec4<u32>(32u)), abs(~31282u), var_0.b, func_4(var_0.a, Struct_5(global1.a, global0.x, Struct_2(global1.c.a, var_0.b.c, global1.c.b, global1.a.x), Struct_1(var_0.b.b.a, 1u, global1.c.c.c)), Struct_5(vec4<i32>(-16708i, global1.c.d, 1i, 55171i), global1.d.b, Struct_2(vec4<bool>(false, global1.d.c, global1.c.c.c, global1.d.c), Struct_1(global1.d.a, global1.c.c.a.x, false), global1.c.b, -2147483647i), Struct_1(global1.c.b.a, global0.x, var_0.b.c.c)), max(u_input.a.x, var_0.b.d)).b.c), Struct_5((u_input.a & global1.a) & u_input.a, ~var_0.b.b.b ^ 1u, Struct_2(!vec4<bool>(var_0.b.b.c, true, global1.d.c, global1.c.a.x), func_4(-508f, Struct_5(u_input.a, 14845u, Struct_2(vec4<bool>(false, global1.d.c, false, false), var_0.b.c, Struct_1(var_0.b.c.a, 45825u, var_0.b.a.x), var_0.b.d), Struct_1(vec4<u32>(68314u, 0u, 19569u, 23028u), global1.c.b.b, var_0.b.b.c)), Struct_5(vec4<i32>(-3536i, -42028i, var_0.b.d, global1.a.x), global0.x, var_0.b, var_0.b.b), 46050i).b.c, global1.d, select(-43610i, u_input.a.x, global1.c.b.c)), global1.c.b), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(var_0.b.d, 4112i, u_input.a.x), firstLeadingBit(vec3<i32>(-1i, var_0.b.d, var_0.b.d))), -global1.c.d)));
    var var_3 = false;
    global0 = ~_wgslsmith_sub_vec2_u32(select(var_2.b.a.xw, ~func_6(global1.c, Struct_4(-1340f, Struct_2(global1.c.a, Struct_1(var_0.b.c.a, global0.x, false), Struct_1(var_2.c.a, 4294967295u, var_2.c.c), u_input.a.x), global1.d.c, Struct_3(var_0.a, global1.c)), Struct_2(var_2.a, var_2.b, global1.d, 1i)).b.b.a.yw, !(!var_2.a.wx)), min(_wgslsmith_clamp_vec2_u32(vec2<u32>(global0.x, 0u), ~global1.d.a.zw, vec2<u32>(var_0.b.c.b, var_0.b.c.a.x)), vec2<u32>(_wgslsmith_mult_u32(global1.d.b, 5580u), ~0u)));
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2292f - 1f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(max(225f, 523f))))));
    var var_1 = _wgslsmith_sub_i32(u_input.a.x & (_wgslsmith_sub_i32(firstLeadingBit(-16965i), ~(-24085i)) & reverseBits(_wgslsmith_mult_i32(global1.c.d, -2147483647i))), ~u_input.a.x);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-167f, -664f), _wgslsmith_f_op_f32(336f - -281f))));
    var var_3 = !vec4<bool>(!(abs(69077i) >= global1.c.d), !(!global1.d.c) || global1.c.b.c, !any(vec3<bool>(false, global1.d.c, global1.d.c)), true);
    let var_4 = !global1.c.a;
    var var_5 = func_4(256f, Struct_5(global1.a, countOneBits(4350u), func_6(Struct_2(global1.c.a, func_2(Struct_2(global1.c.a, global1.d, global1.c.b, u_input.a.x)), global1.c.b, ~global1.c.d), Struct_4(_wgslsmith_f_op_f32(-1363f - 1113f), func_6(global1.c, Struct_4(1234f, global1.c, var_3.x, Struct_3(-299f, global1.c)), Struct_2(global1.c.a, global1.c.c, Struct_1(vec4<u32>(1u, global0.x, 4294967295u, 4294967295u), global0.x, false), -1i)).b, !var_3.x, Struct_3(511f, Struct_2(vec4<bool>(true, global1.c.b.c, var_3.x, true), global1.c.c, global1.c.c, u_input.a.x))), Struct_2(vec4<bool>(true, var_4.x, var_3.x, true), global1.d, Struct_1(global1.d.a, global1.b, true), global1.a.x)).b, func_5(func_4(_wgslsmith_f_op_f32(-472f * -1031f), Struct_5(vec4<i32>(u_input.a.x, -1i, -1677i, -1i), 4294967295u, Struct_2(vec4<bool>(false, var_4.x, true, false), global1.c.c, Struct_1(global1.d.a, 19165u, false), u_input.a.x), global1.d), Struct_5(global1.a, global1.c.b.a.x, global1.c, Struct_1(global1.d.a, global0.x, var_3.x)), _wgslsmith_dot_vec2_i32(global1.a.xz, vec2<i32>(u_input.a.x, 1i)))).c), Struct_5(u_input.a, 1u, Struct_2(!var_4, global1.c.c, global1.c.c, _wgslsmith_sub_i32(global1.c.d, global1.c.d)), global1.d), -2147483647i).d.b.a.xxz;
    var var_6 = max(vec4<u32>(abs(0u), ~4294967295u, _wgslsmith_dot_vec4_u32(~func_4(346f, Struct_5(vec4<i32>(25804i, 23416i, u_input.a.x, u_input.a.x), 4294967295u, global1.c, Struct_1(vec4<u32>(4294967295u, global1.b, 4294967295u, 13832u), 6686u, var_5.x)), Struct_5(vec4<i32>(-12741i, global1.a.x, -2147483647i, u_input.a.x), global1.c.b.b, global1.c, Struct_1(vec4<u32>(global1.b, global0.x, global0.x, 18115u), 34299u, false)), u_input.a.x).b.b.a, vec4<u32>(0u, ~global0.x, ~global0.x, 0u)), func_5(func_4(_wgslsmith_f_op_f32(797f * 1000f), Struct_5(global1.a, 4899u, Struct_2(var_4, Struct_1(vec4<u32>(global0.x, global0.x, 0u, 4294967295u), 41009u, true), Struct_1(global1.c.c.a, 56859u, var_3.x), global1.a.x), global1.d), Struct_5(global1.a, 1793u, global1.c, Struct_1(global1.d.a, 1u, true)), u_input.a.x >> (global0.x % 32u))).b.b), ~vec4<u32>(reverseBits(min(global1.b, global1.c.b.b)), ~54173u, 37632u | global0.x, 9795u));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -474f));
    var var_7 = false;
    let x = u_input.a;
    s_output = StorageBuffer(~global1.c.c.a.zxx, -(u_input.a.x | u_input.a.x), global1.d.a.zz);
}

