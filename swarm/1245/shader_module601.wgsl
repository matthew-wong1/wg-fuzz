struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: bool,
    d: i32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<i32>,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-1i, 16133i);

var<private> global1: array<Struct_2, 6>;

var<private> global2: Struct_3 = Struct_3(Struct_2(625f, Struct_1(13096u, vec3<bool>(true, true, false), true, 51701i, vec3<bool>(true, true, false)), vec3<i32>(-64653i, -30956i, i32(-2147483648)), vec3<i32>(2147483647i, 1i, i32(-2147483648)), Struct_1(19895u, vec3<bool>(false, false, false), true, 0i, vec3<bool>(true, true, false))));

var<private> global3: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(4294967295u, vec3<bool>(false, true, false), false, -14975i, vec3<bool>(true, true, false)), Struct_1(114569u, vec3<bool>(false, false, false), true, 48606i, vec3<bool>(false, false, false)), Struct_1(9718u, vec3<bool>(false, false, false), false, 1i, vec3<bool>(false, false, false)), Struct_1(34251u, vec3<bool>(false, true, true), true, -29380i, vec3<bool>(false, true, true)), Struct_1(0u, vec3<bool>(true, true, false), false, -73916i, vec3<bool>(false, false, false)), Struct_1(0u, vec3<bool>(false, true, true), false, -42729i, vec3<bool>(false, true, true)), Struct_1(0u, vec3<bool>(false, false, true), false, 0i, vec3<bool>(true, true, true)), Struct_1(53507u, vec3<bool>(true, true, false), true, -10809i, vec3<bool>(false, true, true)), Struct_1(60u, vec3<bool>(true, false, false), false, -1i, vec3<bool>(false, false, false)), Struct_1(0u, vec3<bool>(false, true, false), true, -5952i, vec3<bool>(true, false, true)), Struct_1(47110u, vec3<bool>(false, true, true), true, 772i, vec3<bool>(true, false, false)), Struct_1(16875u, vec3<bool>(true, false, false), true, -12507i, vec3<bool>(true, false, false)), Struct_1(0u, vec3<bool>(true, true, false), true, 2147483647i, vec3<bool>(false, true, true)), Struct_1(1u, vec3<bool>(false, false, true), false, 1i, vec3<bool>(true, true, false)), Struct_1(7384u, vec3<bool>(true, true, true), false, 0i, vec3<bool>(false, false, true)), Struct_1(4294967295u, vec3<bool>(false, true, false), true, 10025i, vec3<bool>(true, true, false)), Struct_1(98474u, vec3<bool>(false, false, true), false, i32(-2147483648), vec3<bool>(true, true, false)), Struct_1(26020u, vec3<bool>(false, true, false), true, -1i, vec3<bool>(true, true, true)), Struct_1(0u, vec3<bool>(false, true, true), false, 20666i, vec3<bool>(false, true, true)), Struct_1(4294967295u, vec3<bool>(true, true, false), false, 1i, vec3<bool>(true, true, true)), Struct_1(4294967295u, vec3<bool>(false, true, false), true, 18533i, vec3<bool>(true, false, false)));

var<private> global4: array<Struct_2, 23>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    var var_0 = ~firstTrailingBit(~_wgslsmith_mod_u32(~u_input.d, ~4294967295u));
    global3 = array<Struct_1, 21>();
    var var_1 = (-u_input.c | -(~_wgslsmith_mod_vec4_i32(u_input.c, vec4<i32>(arg_1.d, global0.x, global0.x, global2.a.c.x)))) | u_input.c;
    global1 = array<Struct_2, 6>();
    var var_2 = !global2.a.b.e.yz;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(999f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.a.a))))));
}

fn func_2(arg_0: vec4<bool>) -> Struct_3 {
    let var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(func_3(0i, global3[_wgslsmith_index_u32(u_input.d ^ 51659u, 21u)], global2.a.b)), Struct_1(select(firstLeadingBit(31816u), u_input.d, any(vec2<bool>(true, global2.a.e.c))), !arg_0.zyy, global2.a.e.e.x, global0.x >> (global2.a.e.a % 32u), global2.a.e.b), global2.a.c, _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.c.xwz, select(u_input.c.zxx, u_input.c.xyw, true)), -(global2.a.c >> (vec3<u32>(97617u, global2.a.b.a, 75282u) % vec3<u32>(32u)))), global2.a.b));
    global4 = array<Struct_2, 23>();
    return Struct_3(Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0.a.a, -1642f))), var_0.a.e, -(vec3<i32>(global2.a.d.x, global2.a.b.d, global0.x) ^ vec3<i32>(global2.a.d.x, global2.a.c.x, global2.a.d.x)) << (~vec3<u32>(4294967295u, 47896u, 32188u) % vec3<u32>(32u)), vec3<i32>(i32(-1i) * -2147483647i, abs(global0.x), global0.x), var_0.a.e));
}

fn func_4(arg_0: Struct_3) -> Struct_3 {
    var var_0 = Struct_2(arg_0.a.a, arg_0.a.e, -countOneBits(_wgslsmith_mod_vec3_i32(abs(vec3<i32>(1i, u_input.c.x, 0i)), u_input.c.yxz)), vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_div_i32(reverseBits(arg_0.a.c.x), 28901i), -1i), global2.a.e.d, _wgslsmith_dot_vec4_i32(firstLeadingBit(-u_input.c), vec4<i32>(u_input.e, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.c.x, 0i, arg_0.a.d.x, global2.a.d.x), u_input.c), firstLeadingBit(u_input.c.x), global0.x << (arg_0.a.b.a % 32u)))), func_2(!vec4<bool>(global2.a.e.e.x, true, true, true)).a.b);
    let var_1 = true;
    var var_2 = countOneBits(global2.a.b.a);
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(530f * arg_0.a.a)));
    var var_4 = Struct_1(~global2.a.b.a, var_0.b.e, !var_1, -(~_wgslsmith_dot_vec2_i32(u_input.c.wy >> (vec2<u32>(var_0.b.a, 1u) % vec2<u32>(32u)), abs(vec2<i32>(4553i, -30897i)))), arg_0.a.b.e);
    return Struct_3(func_2(select(vec4<bool>(false || var_4.b.x, var_4.d == global0.x, true, var_1), vec4<bool>(all(var_4.b), true, arg_0.a.e.a <= global2.a.b.a, any(vec4<bool>(false, true, var_1, true))), !(!vec4<bool>(global2.a.b.b.x, true, arg_0.a.b.c, true)))).a);
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: Struct_3, arg_3: Struct_2) -> u32 {
    global0 = arg_3.d.yy;
    global3 = array<Struct_1, 21>();
    let var_0 = func_2(!select(vec4<bool>(true, all(vec4<bool>(arg_2.a.e.b.x, global2.a.b.c, arg_0.a.e.b.x, false)), any(vec4<bool>(true, true, false, true)), select(false, global2.a.b.e.x, false)), !vec4<bool>(arg_3.b.b.x, global2.a.b.c, arg_2.a.e.c, true), !select(vec4<bool>(arg_2.a.b.e.x, arg_0.a.e.b.x, true, false), vec4<bool>(false, arg_2.a.e.e.x, global2.a.e.c, true), vec4<bool>(false, true, true, true)))).a.e;
    return ~0u;
}

fn func_1(arg_0: i32, arg_1: vec2<u32>, arg_2: f32, arg_3: Struct_3) -> Struct_1 {
    let var_0 = Struct_2(-953f, Struct_1(4294967295u, global2.a.e.e, false, -33768i, !global2.a.b.b), u_input.c.xww, _wgslsmith_add_vec3_i32(min(~vec3<i32>(arg_0, global2.a.c.x, u_input.c.x) | -vec3<i32>(global0.x, arg_0, arg_3.a.c.x), u_input.c.xyx), arg_3.a.d), global3[_wgslsmith_index_u32(func_5(func_4(func_2(!vec4<bool>(false, arg_3.a.e.c, arg_3.a.b.e.x, arg_3.a.b.e.x))), -1000f, Struct_3(arg_3.a), arg_3.a), 21u)]);
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-703f, 1143f))))), func_4(Struct_3(func_4(arg_3).a)).a.b, global2.a.c, ~arg_3.a.d, Struct_1(_wgslsmith_mod_u32(firstTrailingBit(8613u) & arg_1.x, 1u), global2.a.e.b, false, arg_3.a.b.d, func_2(!select(vec4<bool>(true, true, true, true), vec4<bool>(arg_3.a.e.b.x, false, true, global2.a.e.c), vec4<bool>(arg_3.a.b.b.x, true, false, arg_3.a.b.b.x))).a.e.e));
    var var_2 = vec2<u32>(~(_wgslsmith_add_u32(5059u, 1u) | _wgslsmith_div_u32(arg_3.a.e.a, var_1.e.a)), firstTrailingBit(9991u)) ^ (vec2<u32>(289u, ~var_1.e.a | abs(0u)) ^ ~reverseBits(_wgslsmith_mult_vec2_u32(arg_1, vec2<u32>(0u, 26057u))));
    let var_3 = func_2(vec4<bool>(true, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.a) + global2.a.a) <= _wgslsmith_f_op_f32(-1441f + -2545f), any(vec2<bool>(false, true))));
    let var_4 = var_3.a.e.a;
    return func_2(!(!vec4<bool>(any(var_3.a.b.e.xx), false, any(var_0.e.e.yx), global2.a.b.e.x))).a.e;
}

fn func_6(arg_0: Struct_1, arg_1: f32, arg_2: Struct_3, arg_3: vec4<bool>) -> Struct_2 {
    let var_0 = global2.a.e.e.xz;
    let var_1 = func_1(~abs(abs(arg_2.a.b.d >> (global2.a.e.a % 32u))), firstTrailingBit(abs(vec2<u32>(~11778u, global2.a.b.a))), arg_1, arg_2);
    global4 = array<Struct_2, 23>();
    var var_2 = func_2(!(!vec4<bool>(true, all(global2.a.e.b), !var_1.b.x, arg_0.c)));
    global4 = array<Struct_2, 23>();
    return func_2(vec4<bool>(-1231f <= var_2.a.a, any(!vec2<bool>(arg_2.a.e.e.x, false)), true, select(global0.x < global2.a.d.x, true, var_1.c) && (any(var_2.a.b.b.zx) & arg_0.c))).a;
}

fn func_7(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    var var_0 = vec2<i32>(global0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-abs(u_input.c.x), func_2(vec4<bool>(false, true, arg_0, false)).a.b.d), _wgslsmith_mult_vec2_i32(arg_1.c.xz, ~vec2<i32>(global0.x, u_input.c.x) | _wgslsmith_clamp_vec2_i32(vec2<i32>(-58126i, 2147483647i), vec2<i32>(2147483647i, global2.a.b.d), vec2<i32>(-46487i, -28518i)))));
    let var_1 = func_4(Struct_3(func_6(func_1(i32(-1i) * -2147483647i, vec2<u32>(1436u, arg_1.b.a) >> (vec2<u32>(1u, arg_1.e.a) % vec2<u32>(32u)), 1146f, Struct_3(arg_1)), -257f, func_4(func_4(Struct_3(Struct_2(arg_1.a, Struct_1(arg_2.a, vec3<bool>(true, true, false), arg_1.e.e.x, arg_2.d, vec3<bool>(global2.a.b.e.x, true, false)), arg_1.d, global2.a.c, arg_2)))), vec4<bool>(!global2.a.b.e.x, arg_1.b.c, true || arg_1.b.b.x, !arg_1.e.c))));
    var_0 = vec2<i32>(~(-_wgslsmith_add_i32(global2.a.b.d << (arg_1.b.a % 32u), global2.a.e.d)), global0.x);
    global1 = array<Struct_2, 6>();
    let var_2 = -_wgslsmith_div_vec2_i32(var_1.a.d.xz, reverseBits(min(-global2.a.c.xx, vec2<i32>(29729i, -60267i))));
    return global2.a.e;
}

fn func_8(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: Struct_3) -> Struct_2 {
    global0 = arg_2.c.xy;
    var var_0 = -757f;
    let var_1 = func_5(arg_3, 2061f, Struct_3(Struct_2(-750f, func_4(arg_3).a.e, _wgslsmith_mod_vec3_i32(-arg_2.c, -vec3<i32>(arg_0.d, global2.a.d.x, 2147483647i)), vec3<i32>(1i, 0i, _wgslsmith_div_i32(arg_2.b.d, arg_2.c.x)), Struct_1(~arg_3.a.b.a, vec3<bool>(true, false, arg_3.a.e.e.x), false, arg_0.d, !vec3<bool>(false, arg_3.a.b.e.x, arg_3.a.e.b.x)))), arg_2);
    var var_2 = _wgslsmith_add_u32(select(max(var_1, 83356u), func_7(global2.a.e.c, Struct_2(arg_3.a.a, global2.a.b, global2.a.d, vec3<i32>(global2.a.c.x, arg_1.x, 0i), Struct_1(94917u, arg_0.e, true, arg_1.x, arg_0.b)), Struct_1(global2.a.e.a, global2.a.e.b, arg_2.b.e.x, 19476i, arg_0.e)).a >> (33321u % 32u), false), arg_2.b.a);
    var_0 = 532f;
    return Struct_2(_wgslsmith_div_f32(1496f, -515f), arg_0, vec3<i32>(-((global2.a.d.x ^ -36587i) | global0.x), select(arg_1.x, -reverseBits(arg_2.b.d), any(!vec4<bool>(arg_3.a.b.e.x, false, true, true))), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, arg_3.a.e.d ^ arg_0.d, -28457i), global2.a.c)), vec3<i32>(~(-1i), -_wgslsmith_add_i32(1i, arg_0.d), 9551i), Struct_1(abs(global2.a.b.a), global2.a.e.b, !(func_5(arg_3, 1745f, arg_3, global2.a) <= arg_0.a), arg_0.d ^ ~(-2147483647i), !vec3<bool>(!global2.a.b.e.x, true, all(arg_3.a.b.b.zz))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_i32(-10728i, global2.a.d.x);
    var var_1 = global2.a.b.b.x;
    var var_2 = func_8(func_7(all(!vec2<bool>(true, global2.a.b.b.x)), func_6(func_1(_wgslsmith_clamp_i32(35810i, global0.x, u_input.a), abs(vec2<u32>(4294967295u, 14439u)), 417f, Struct_3(global2.a)), 911f, Struct_3(func_4(Struct_3(Struct_2(-947f, global3[_wgslsmith_index_u32(u_input.b, 21u)], global2.a.d, vec3<i32>(global2.a.d.x, u_input.a, global2.a.c.x), Struct_1(129964u, vec3<bool>(global2.a.b.b.x, true, global2.a.b.e.x), global2.a.b.e.x, global0.x, global2.a.e.b)))).a), select(!vec4<bool>(global2.a.e.b.x, global2.a.b.e.x, global2.a.e.c, global2.a.b.e.x), vec4<bool>(global2.a.b.b.x, global2.a.b.c, true, global2.a.e.e.x), 2403u != global2.a.e.a)), Struct_1(global2.a.b.a, func_1(-10238i, vec2<u32>(30367u, 4294967295u) >> (vec2<u32>(u_input.d, 41109u) % vec2<u32>(32u)), 1000f, Struct_3(Struct_2(542f, global2.a.e, global2.a.d, vec3<i32>(global0.x, global0.x, global0.x), global3[_wgslsmith_index_u32(u_input.d, 21u)]))).e, -1i < (u_input.e | global0.x), 1i, !select(global2.a.b.e, vec3<bool>(true, false, false), global2.a.b.e))), u_input.c.xz, func_6(Struct_1(_wgslsmith_dot_vec3_u32(~vec3<u32>(38384u, global2.a.e.a, u_input.d), min(vec3<u32>(0u, 1u, global2.a.e.a), vec3<u32>(57125u, global2.a.e.a, global2.a.b.a))), !vec3<bool>(true, global2.a.e.b.x, global2.a.b.c), func_6(Struct_1(global2.a.e.a, vec3<bool>(global2.a.e.e.x, false, global2.a.e.b.x), global2.a.e.b.x, global0.x, vec3<bool>(false, false, true)), _wgslsmith_f_op_f32(ceil(global2.a.a)), func_4(Struct_3(global1[_wgslsmith_index_u32(global2.a.b.a, 6u)])), vec4<bool>(global2.a.e.e.x, false, global2.a.e.b.x, global2.a.b.b.x)).e.b.x, u_input.c.x & func_1(1i, vec2<u32>(u_input.b, 4323u), 104f, Struct_3(global2.a)).d, vec3<bool>(global2.a.e.e.x == global2.a.e.b.x, global2.a.e.c, all(global2.a.b.b))), -836f, Struct_3(Struct_2(-813f, Struct_1(4294967295u, vec3<bool>(false, global2.a.e.c, global2.a.e.b.x), true, global2.a.c.x, global2.a.b.b), global2.a.c >> (vec3<u32>(59262u, 49226u, 125336u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(vec3<i32>(global2.a.e.d, global2.a.c.x, global2.a.b.d), vec3<i32>(-4176i, global0.x, -16140i)), Struct_1(u_input.b, vec3<bool>(global2.a.e.e.x, global2.a.e.c, false), true, global0.x, global2.a.e.b))), vec4<bool>(global2.a.e.e.x, false, global2.a.b.b.x, global2.a.e.e.x)), Struct_3(func_2(!(!vec4<bool>(false, global2.a.e.e.x, global2.a.e.b.x, true))).a));
    let var_3 = func_4(Struct_3(func_8(func_1(var_2.c.x, min(vec2<u32>(57477u, 9312u), vec2<u32>(var_2.b.a, 53422u)), var_2.a, func_2(vec4<bool>(global2.a.b.e.x, true, var_2.e.b.x, false))), global2.a.d.xx | u_input.c.xy, Struct_2(_wgslsmith_div_f32(-381f, global2.a.a), Struct_1(global2.a.e.a, vec3<bool>(false, false, global2.a.b.c), false, global0.x, global2.a.b.e), global2.a.d, -u_input.c.yxw, Struct_1(88206u, vec3<bool>(global2.a.b.b.x, global2.a.e.e.x, global2.a.e.e.x), false, global0.x, var_2.e.b)), func_4(func_2(vec4<bool>(false, var_2.e.c, global2.a.e.e.x, global2.a.e.e.x))))));
    var var_4 = -var_3.a.c;
    let var_5 = vec3<f32>(func_8(func_1(-19800i, ~vec2<u32>(88713u, 24187u), global2.a.a, Struct_3(func_4(var_3).a)), var_4.zx >> (~vec2<u32>(38202u, 7809u) % vec2<u32>(32u)), global4[_wgslsmith_index_u32(var_2.b.a, 23u)], func_2(select(vec4<bool>(true, var_2.e.e.x, true, var_3.a.e.c), vec4<bool>(global2.a.e.e.x, true, global2.a.e.e.x, false), vec4<bool>(var_2.b.e.x, var_2.b.b.x, global2.a.b.b.x, false)))).a, var_3.a.a, _wgslsmith_div_f32(var_2.a, -1035f));
    let x = u_input.a;
    s_output = StorageBuffer(~(func_2(vec4<bool>(var_2.b.b.x, var_2.b.b.x, false, true)).a.d.x << (_wgslsmith_add_u32(_wgslsmith_div_u32(var_3.a.e.a, u_input.b), var_3.a.b.a) % 32u)), global2.a.d);
}

