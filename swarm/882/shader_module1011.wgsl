struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec3<bool>(false, false, true), vec3<u32>(0u, 32245u, 0u), Struct_3(1615f, -12560i, Struct_1(vec3<bool>(true, true, false))));

var<private> global1: f32;

var<private> global2: vec4<u32> = vec4<u32>(6644u, 56103u, 0u, 4294967295u);

var<private> global3: vec3<u32>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_2) -> u32 {
    global2 = ~select(~_wgslsmith_clamp_vec4_u32(vec4<u32>(global2.x, u_input.b, 459u, global0.b.x) | vec4<u32>(8205u, 47945u, global0.b.x, global0.b.x), _wgslsmith_mult_vec4_u32(vec4<u32>(global2.x, global0.b.x, global2.x, global3.x), vec4<u32>(47818u, 4294967295u, 1u, global3.x)), vec4<u32>(global0.b.x, 36951u, u_input.e, global3.x)), vec4<u32>(~firstTrailingBit(global0.b.x), 13760u | (u_input.c.x | 47318u), 68567u, ~firstLeadingBit(u_input.c.x)), global0.c.c.a.x);
    let var_0 = select(global0.a, !vec3<bool>(!arg_2.a | false, global0.c.c.a.x, global0.c.c.a.x), any(vec4<bool>(arg_2.a, arg_2.a, true, true)) & (_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global0.c.a, 1455f), _wgslsmith_f_op_f32(floor(-278f)))) >= global0.c.a));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-427f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-525f))))));
    var var_2 = vec4<bool>(global0.a.x, arg_2.a, false, true);
    let var_3 = _wgslsmith_f_op_f32(-511f * _wgslsmith_div_f32(arg_2.b.x, global0.c.a));
    return ~1u;
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -719f), 2147483647i, Struct_1(global0.a));
    var var_1 = ~(~_wgslsmith_sub_u32(global2.x, countOneBits(reverseBits(1u))));
    var_1 = func_3(global0.a.x, ~(~(~vec2<i32>(1i, global0.c.b))), Struct_2(!(global0.a.x && var_0.c.a.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(1000f)), var_0.a)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -337f)), global0.c.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1590f, -1150f) * _wgslsmith_f_op_f32(global0.c.a - 919f)))));
    global3 = _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, _wgslsmith_clamp_u32(u_input.e, 0u, u_input.e), global0.b.x & global2.x), ~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 0u, global2.x), ~vec3<u32>(global2.x, global0.b.x, u_input.b))), global0.b, _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(1u, global3.x)), 1u, global0.b.x ^ global3.x), abs(abs(global2.zxy))), abs(abs(_wgslsmith_mult_vec3_u32(global2.yyx, vec3<u32>(global0.b.x, 4294967295u, 4294967295u))))));
    global2 = vec4<u32>(global0.b.x, firstTrailingBit(~global0.b.x), _wgslsmith_div_u32(_wgslsmith_mult_u32(global0.b.x, ~74238u), ~44669u), 0u);
    return global0.c;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: Struct_3) -> Struct_2 {
    global3 = vec3<u32>(~30085u, 37791u, 49809u);
    global2 = vec4<u32>(~_wgslsmith_div_u32(4294967295u, u_input.c.x), global0.b.x, 2465u, countOneBits(59281u));
    var var_0 = Struct_4(!global0.a, ~_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(global2.xwz, global0.b), ~vec3<u32>(global0.b.x, 0u, global2.x)) & global2.wwy, arg_2);
    var var_1 = _wgslsmith_div_vec3_u32(~vec3<u32>(~(~u_input.b), 0u, 4294967295u), _wgslsmith_sub_vec3_u32(select(~vec3<u32>(1u, 40736u, 0u), select(global2.zyy, ~vec3<u32>(global2.x, 4294967295u, u_input.b), select(var_0.c.c.a, vec3<bool>(true, true, false), vec3<bool>(global0.a.x, false, arg_1.x))), true), vec3<u32>(1u, ~21682u, var_0.b.x)));
    global1 = global0.c.a;
    return Struct_2(func_2().c.a.x, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.c.a)) + arg_2.a), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.c.a * 923f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1254f, _wgslsmith_f_op_f32(f32(-1f) * -770f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(arg_2.a)), _wgslsmith_f_op_f32(step(-737f, arg_2.a)))))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_4, arg_3: f32) -> vec2<bool> {
    global3 = _wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(_wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.b.x, global3.x, 4294967295u, global3.x), vec4<u32>(global0.b.x, 1u, global3.x, u_input.b))), ~u_input.e & _wgslsmith_mult_u32(global2.x, 0u), 4294967295u)), vec3<u32>(_wgslsmith_add_u32(~u_input.b, ~global2.x), global0.b.x, global0.b.x >> (~_wgslsmith_div_u32(1u, 3175u) % 32u)));
    global1 = arg_0.b.x;
    var var_0 = arg_0;
    let var_1 = global0.c;
    var var_2 = vec3<bool>(select(!var_1.c.a.x, select(any(var_1.c.a.yx) | arg_0.a, global0.c.c.a.x, false), global0.c.c.a.x), reverseBits(global0.b.x) > _wgslsmith_mult_u32(1u, _wgslsmith_mult_u32(arg_2.b.x << (global3.x % 32u), max(4294967295u, 3313u))), true);
    return arg_1.a.zz;
}

fn func_6(arg_0: vec2<bool>) -> bool {
    let var_0 = all(global0.c.c.a);
    let var_1 = -17966i;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(764f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(919f)) * -1000f)))));
    global1 = -2184f;
    let var_2 = Struct_1(!global0.c.c.a);
    return true;
}

fn func_1(arg_0: f32) -> Struct_2 {
    let var_0 = any(select(!select(select(vec4<bool>(global0.c.c.a.x, global0.a.x, true, false), vec4<bool>(false, global0.c.c.a.x, global0.a.x, false), vec4<bool>(global0.c.c.a.x, global0.c.c.a.x, true, global0.a.x)), !vec4<bool>(global0.c.c.a.x, global0.c.c.a.x, false, false), true), vec4<bool>(!all(global0.c.c.a.yx), global0.a.x, true, any(!vec3<bool>(global0.c.c.a.x, false, global0.c.c.a.x))), global0.c.c.a.x));
    var var_1 = func_6(!func_5(func_4(_wgslsmith_mult_vec2_i32(vec2<i32>(global0.c.b, 1i), vec2<i32>(global0.c.b, u_input.d)), global0.c.c.a.xz, func_2()), Struct_1(!global0.a), Struct_4(vec3<bool>(false, false, true), vec3<u32>(global3.x, 10126u, 35790u), global0.c), global0.c.a));
    let var_2 = _wgslsmith_add_u32(1u, 43556u);
    var var_3 = vec3<bool>((_wgslsmith_f_op_f32(1599f + _wgslsmith_f_op_f32(-322f - arg_0)) < arg_0) & false, false, (~max(global3.x, global0.b.x) <= ~u_input.e) | global0.c.c.a.x);
    var var_4 = true;
    return func_4(select(_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_add_i32(u_input.a, 34697i), u_input.d), vec2<i32>(global0.c.b, 12181i)), vec2<i32>(u_input.d, u_input.d) & (-vec2<i32>(-12630i, 18605i) ^ _wgslsmith_clamp_vec2_i32(vec2<i32>(global0.c.b, -1i), vec2<i32>(global0.c.b, 0i), vec2<i32>(global0.c.b, global0.c.b))), select(vec2<bool>(true, !var_0), var_3.yz, !vec2<bool>(false, var_3.x))), global0.c.c.a.zx, func_2());
}

fn func_7(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2, arg_3: bool) -> Struct_4 {
    var var_0 = Struct_4(arg_0.a, ~vec3<u32>(u_input.b | arg_1, 1u, ~(~u_input.c.x)), global0.c);
    var var_1 = Struct_4(select(vec3<bool>(all(arg_0.a) && !arg_2.a, true, false & !arg_2.a), arg_0.a, !vec3<bool>(var_0.c.c.a.x, true, global2.x < u_input.c.x)), ~vec3<u32>(74201u, 1u, _wgslsmith_div_u32(19780u, global3.x)), func_2());
    global3 = ~_wgslsmith_mult_vec3_u32(vec3<u32>(global2.x, func_3(arg_3 || global0.c.c.a.x, vec2<i32>(62i, -2147483647i) << (vec2<u32>(arg_1, 1u) % vec2<u32>(32u)), arg_2), 75831u), var_1.b);
    var var_2 = func_2();
    var_2 = var_0.c;
    return Struct_4(vec3<bool>(arg_0.a.x, !((true & var_1.a.x) || func_4(vec2<i32>(2147483647i, global0.c.b), global0.c.c.a.yz, var_1.c).a), !(!(!var_1.c.c.a.x))), global0.b, func_2());
}

fn func_8(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: Struct_3) -> Struct_2 {
    var var_0 = _wgslsmith_mult_vec4_u32(~select(~abs(vec4<u32>(0u, 4294967295u, 47841u, u_input.b)), vec4<u32>(~12278u, 0u ^ arg_1.b.x, ~0u, global0.b.x), global0.c.c.a.x), _wgslsmith_div_vec4_u32(firstLeadingBit(firstLeadingBit(firstTrailingBit(vec4<u32>(0u, global2.x, global0.b.x, 1810u)))), vec4<u32>(6500u, _wgslsmith_add_u32(min(0u, 4294967295u), _wgslsmith_add_u32(global0.b.x, 1308u)), countOneBits(1u), 17442u)));
    var_0 = abs(firstLeadingBit(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global3.x, global2.x, var_0.x, 1u), vec4<u32>(62992u, 86154u, 4294967295u, 37536u)), vec4<u32>(0u, 0u, 55498u, 1u) >> (vec4<u32>(1u, arg_1.b.x, global2.x, 4294967295u) % vec4<u32>(32u))))) << ((vec4<u32>(arg_1.b.x, global0.b.x, countOneBits(42732u), 980u) ^ _wgslsmith_mult_vec4_u32(~vec4<u32>(var_0.x, global3.x, u_input.b, u_input.c.x), _wgslsmith_mult_vec4_u32(vec4<u32>(36271u, global3.x, var_0.x, 5623u) & vec4<u32>(0u, 0u, 1u, global2.x), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 0u, 4294967295u, arg_1.b.x), vec4<u32>(31001u, global0.b.x, var_0.x, 1u))))) % vec4<u32>(32u));
    let var_1 = func_7(func_7(global0.c.c, ~1u, func_1(_wgslsmith_f_op_f32(f32(-1f) * -1240f)), -63362i >= -arg_2.b).c.c, 1u, Struct_2(!(arg_2.a != _wgslsmith_f_op_f32(-global0.c.a)), func_1(_wgslsmith_f_op_f32(695f + _wgslsmith_f_op_f32(arg_1.c.a + -741f))).b, vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(-962f * global0.c.a), arg_0.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(82432u, ~1u), vec2<u32>(~arg_1.b.x, u_input.b << (0u % 32u))) < 13470u);
    let var_2 = arg_1.c.a;
    let var_3 = _wgslsmith_f_op_vec2_f32(-arg_0.yy);
    return Struct_2(!all(vec4<bool>(!var_1.a.x, var_1.c.c.a.x, var_1.a.x, func_7(arg_1.c.c, u_input.e, Struct_2(global0.c.c.a.x, vec2<f32>(473f, global0.c.a), arg_0.ywx), false).a.x)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(arg_0.zw * vec2<f32>(-2268f, -166f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(728f, -1000f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1284f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_2.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.x)) * 1205f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2.a)) - -874f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.wx;
    let var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0.c.a), 2217f), vec2<f32>(1079f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(max(global0.c.a, global0.c.a)))));
    global3 = ~(global0.b << (vec3<u32>(0u, min(_wgslsmith_dot_vec2_u32(vec2<u32>(26358u, u_input.e), vec2<u32>(var_0.x, var_0.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, global2.x, var_0.x, 1u), vec4<u32>(global2.x, global3.x, global2.x, global3.x))), ~global3.x) % vec3<u32>(32u)));
    let var_2 = func_8(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(539f, 309f, global0.c.a, global0.c.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-301f, 260f, -1967f, global0.c.a) - vec4<f32>(global0.c.a, global0.c.a, -214f, -786f)))), vec4<f32>(_wgslsmith_f_op_f32(round(1000f)), var_1.x, global0.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + global0.c.a))))), func_7(global0.c.c, u_input.b ^ 4294967295u, func_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(296f, -827f)), -949f))), global0.c.c.a.x), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-205f, 1000f, global0.c.c.a.x))))), countOneBits(u_input.d), func_2().c));
    var var_3 = func_7(Struct_1(vec3<bool>(true, false && select(global0.c.c.a.x, var_2.a, var_2.a), var_2.a)), 1u, Struct_2(!(-262f <= _wgslsmith_f_op_f32(-var_2.c.x)), var_2.c.xy, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.x)) - _wgslsmith_f_op_f32(-2299f - global0.c.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.x - -330f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(531f - var_2.b.x), -990f)))), (_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(2039f, 814f)))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(884f, global0.c.a, false)) + _wgslsmith_f_op_f32(global0.c.a - -1007f))) || var_2.a);
    let var_4 = func_7(Struct_1(vec3<bool>(func_8(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.x, var_3.c.a, global0.c.a, -1000f))), Struct_4(global0.a, vec3<u32>(global3.x, 1u, global2.x), var_3.c), Struct_3(var_1.x, -75978i, global0.c.c)).a, (false == global0.a.x) & (-1i <= u_input.d), var_2.a)), ~4294967295u, Struct_2(func_2().c.a.x, vec2<f32>(-1000f, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1175f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_2.c, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, -817f, -416f))))))), false);
    let var_5 = Struct_2(countOneBits(~0u) == ~abs(var_4.b.x | 4294967295u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.c.xy)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.a, -1042f, global0.c.a)) * _wgslsmith_f_op_vec3_f32(floor(var_2.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(7133i, func_2().a, ~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(min(vec3<u32>(global3.x, global3.x, global2.x), var_4.b), ~global2.wzx), global2.wwz), vec2<f32>(_wgslsmith_div_f32(var_2.c.x, global0.c.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.c.a) + -1119f)));
}

