struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec2<u32>,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<i32>,
    d: u32,
    e: vec3<u32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<u32>,
    c: bool,
    d: f32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<vec4<u32>, 17>;

var<private> global2: vec2<u32>;

var<private> global3: u32 = 0u;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4) -> vec4<f32> {
    global0 = _wgslsmith_div_vec4_u32(~vec4<u32>(global2.x, 2244u, ~global0.x, u_input.a) | global1[_wgslsmith_index_u32(~(global2.x << (35368u % 32u)), 17u)], vec4<u32>(~(~4294967295u), ~1u, global0.x, _wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(36359u, 34162u), 1u), select(0u, arg_0.d, false) | countOneBits(global2.x))));
    var var_0 = Struct_5(arg_1, ~(~(_wgslsmith_div_vec2_u32(vec2<u32>(0u, global2.x), vec2<u32>(1u, arg_1.b.x)) & ~arg_0.e.yy)), !arg_1.c.a.b, 262f, max(vec4<u32>(global0.x, _wgslsmith_mult_u32(1u, 1u) << (1u % 32u), 47027u, 0u), abs(vec4<u32>(~29745u, global0.x, u_input.a, global2.x))));
    var var_1 = var_0.a.c.a.d;
    global1 = array<vec4<u32>, 17>();
    let var_2 = var_0.a;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(477f, 370f, 507f, arg_1.a.b))))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2261f, var_2.c.b, 1030f, arg_1.c.b))))));
}

fn func_2(arg_0: Struct_2, arg_1: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(arg_0.a, 427f, arg_0.c, 4294967295u, vec3<u32>(4349u, global0.x, global0.x)), Struct_4(arg_0, global1[_wgslsmith_index_u32(12381u, 17u)], arg_0))) + vec4<f32>(arg_0.b, _wgslsmith_f_op_f32(-arg_0.b), -849f, 1000f)))));
    global0 = firstTrailingBit(global1[_wgslsmith_index_u32(~(~(global2.x | ~0u)), 17u)]);
    let var_1 = Struct_2(arg_0.a, _wgslsmith_f_op_f32(-var_0.x), arg_0.a.e >> (vec4<u32>(4294967295u, 962u, 20321u, 13295u) % vec4<u32>(32u)), 53335u, vec3<u32>(u_input.a, ~1u, ~_wgslsmith_sub_u32(~0u, _wgslsmith_div_u32(arg_0.e.x, 4294967295u))));
    let var_2 = firstTrailingBit(_wgslsmith_mult_vec3_u32(var_1.e, _wgslsmith_mult_vec3_u32(arg_0.a.a, var_1.a.a) ^ ~arg_0.e));
    var var_3 = false;
    return arg_0.a;
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> Struct_2 {
    let var_0 = any(vec4<bool>(true, arg_1.b, !arg_1.b, arg_1.b));
    global3 = global0.x;
    let var_1 = false;
    var var_2 = ~global2.x << (_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(global0.x, 17u)], ~(select(global1[_wgslsmith_index_u32(arg_1.c.x, 17u)], vec4<u32>(global0.x, global0.x, 1u, 0u), var_1) | vec4<u32>(56096u, arg_1.a.x, 21577u, arg_1.a.x))) % 32u);
    var var_3 = !(!vec4<bool>(!var_0, false, true, false));
    return Struct_2(arg_1, _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_2(Struct_1(arg_1.a, false, vec2<u32>(4294967295u, 78838u), u_input.b.x, arg_1.e), 1000f, arg_1.e, global0.x, global0.xyw), Struct_4(Struct_2(arg_1, -725f, vec4<i32>(27704i, -7639i, arg_0, 0i), 1u, vec3<u32>(4294967295u, 4294967295u, 4294967295u)), vec4<u32>(global0.x, 4294967295u, 28333u, 0u), Struct_2(arg_1, 1490f, arg_1.e, global2.x, arg_1.a)))).x)), _wgslsmith_sub_vec4_i32(arg_1.e, vec4<i32>(~(~2147483647i), ~65031i, 31810i, abs(arg_0))), 4294967295u, global0.zwy);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: f32, arg_3: vec4<u32>) -> u32 {
    let var_0 = Struct_5(Struct_4(arg_1, vec4<u32>(_wgslsmith_dot_vec3_u32(arg_1.a.a, arg_1.e), 25183u & _wgslsmith_div_u32(u_input.a, arg_3.x), ~(~u_input.a), func_2(arg_1, !arg_0.a).c.x), Struct_2(Struct_1(vec3<u32>(u_input.a, 14700u, 4294967295u), all(vec4<bool>(arg_1.a.b, arg_1.a.b, false, arg_1.a.b)), global0.zy << (vec2<u32>(global2.x, 36517u) % vec2<u32>(32u)), -46576i, _wgslsmith_div_vec4_i32(vec4<i32>(8958i, u_input.b.x, -38895i, u_input.b.x), vec4<i32>(494i, -1i, 0i, -2147483647i))), _wgslsmith_f_op_vec4_f32(func_3(arg_1, Struct_4(Struct_2(arg_1.a, arg_2, vec4<i32>(598i, 0i, 1i, -1210i), global0.x, arg_3.zzy), arg_3, arg_1))).x, _wgslsmith_add_vec4_i32(vec4<i32>(arg_1.a.d, -2147483647i, -2147483647i, 1i), _wgslsmith_clamp_vec4_i32(arg_1.a.e, arg_1.a.e, vec4<i32>(u_input.b.x, arg_1.a.e.x, -22479i, 4397i))), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global2.x, global2.x) | vec3<u32>(20569u, 1u, arg_3.x), vec3<u32>(arg_3.x, global0.x, 1u) >> (vec3<u32>(36697u, 0u, arg_3.x) % vec3<u32>(32u))), vec3<u32>(_wgslsmith_mult_u32(28228u, global2.x), 0u, func_4(-9208i, Struct_1(global0.zxz, arg_0.a, vec2<u32>(u_input.a, 1u), 3468i, arg_1.c)).e.x))), vec2<u32>(firstTrailingBit(~(4294967295u & global0.x)), ~(~1u)), !(arg_0.a != !arg_0.a) & (~1u == arg_3.x), arg_1.b, arg_3 >> (vec4<u32>(28505u, ~_wgslsmith_dot_vec2_u32(global0.xy, vec2<u32>(0u, u_input.a)), 1u, 37165u) % vec4<u32>(32u)));
    let var_1 = func_4(~_wgslsmith_mult_i32(_wgslsmith_add_i32(reverseBits(u_input.b.x), 22347i), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a.d, u_input.b.x, u_input.b.x, var_0.a.c.c.x), -vec4<i32>(-18407i, 52848i, u_input.b.x, u_input.b.x))), func_4(reverseBits(2059i), Struct_1(~(~vec3<u32>(global0.x, arg_3.x, global2.x)), true, vec2<u32>(arg_3.x, global0.x), firstLeadingBit(abs(u_input.b.x)), _wgslsmith_mod_vec4_i32(~vec4<i32>(var_0.a.a.a.e.x, arg_1.c.x, 1i, 2147483647i), ~arg_1.c))).a);
    var var_2 = func_2(Struct_2(Struct_1(max(~global0.zyz, _wgslsmith_div_vec3_u32(vec3<u32>(23424u, 1u, 75317u), arg_1.a.a)), var_1.a.b, reverseBits(~var_0.a.a.e.yz), ~60412i, ~firstLeadingBit(var_0.a.a.c)), _wgslsmith_f_op_f32(step(-1003f, arg_2)), vec4<i32>(1i, _wgslsmith_dot_vec4_i32(var_0.a.c.c << (global1[_wgslsmith_index_u32(28010u, 17u)] % vec4<u32>(32u)), vec4<i32>(arg_1.c.x, 0i, -631i, 0i)), _wgslsmith_mult_i32(~arg_1.a.d, _wgslsmith_mult_i32(arg_1.a.e.x, -15512i)), _wgslsmith_clamp_i32(-2147483647i, -7433i, -var_1.c.x)), arg_1.e.x, arg_3.wxz), arg_0.a);
    global0 = var_0.e;
    let var_3 = any(!(!(!vec3<bool>(var_2.b, true, false))));
    return func_2(var_1, arg_1.c.x > ~abs(var_2.e.x)).a.x;
}

fn func_1() -> Struct_2 {
    global2 = global0.xz;
    global0 = vec4<u32>(func_5(Struct_3(true), func_4(-42390i, func_2(Struct_2(Struct_1(vec3<u32>(global0.x, 2665u, u_input.a), false, vec2<u32>(30050u, 0u), u_input.b.x, vec4<i32>(u_input.b.x, -39844i, u_input.b.x, u_input.b.x)), -303f, vec4<i32>(u_input.b.x, u_input.b.x, 0i, -11709i), 1u, global0.wxw), 10233i > u_input.b.x)), -1217f, firstTrailingBit(global1[_wgslsmith_index_u32(~1u, 17u)])), _wgslsmith_sub_u32(24133u, global0.x), ~(~_wgslsmith_mult_u32(~u_input.a, _wgslsmith_add_u32(global0.x, 1u))), func_4(_wgslsmith_add_i32(70292i, _wgslsmith_sub_i32(u_input.b.x & 0i, u_input.b.x ^ u_input.b.x)), Struct_1(global0.wyy, true, _wgslsmith_mult_vec2_u32(select(global0.yz, vec2<u32>(45880u, 1u), vec2<bool>(true, true)), max(vec2<u32>(1u, global2.x), vec2<u32>(u_input.a, 22286u))), _wgslsmith_add_i32(reverseBits(-11900i), ~u_input.b.x), _wgslsmith_mod_vec4_i32(abs(vec4<i32>(-31649i, u_input.b.x, u_input.b.x, 26633i)), -vec4<i32>(-5743i, u_input.b.x, u_input.b.x, -1i)))).d);
    let var_0 = func_4(-1i, func_2(func_4(countOneBits(0i), func_2(func_4(-2147483647i, Struct_1(global0.xzw, false, vec2<u32>(global2.x, 42183u), u_input.b.x, vec4<i32>(-53699i, 53769i, u_input.b.x, -2147483647i))), true)), true));
    var var_1 = i32(-1i) * -u_input.b.x;
    var var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.b, -1514f, var_0.b, var_0.b)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-2135f, var_0.b, 835f, 290f))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.b, -1601f, -1023f, var_0.b)))))))));
    return Struct_2(var_0.a, -2371f, -(~(var_0.c >> (vec4<u32>(1u, global0.x, var_0.a.c.x, global0.x) % vec4<u32>(32u)))) >> (vec4<u32>(0u, var_0.e.x, var_0.a.c.x, _wgslsmith_add_u32(var_0.a.a.x, global2.x) << (1u % 32u)) % vec4<u32>(32u)), u_input.a, firstLeadingBit(global0.wyz));
}

fn func_6(arg_0: Struct_2, arg_1: f32, arg_2: i32, arg_3: vec4<i32>) -> Struct_2 {
    let var_0 = Struct_4(Struct_2(func_1().a, arg_0.b, vec4<i32>(func_4(-42198i, func_4(arg_2, Struct_1(arg_0.a.a, false, arg_0.a.c, -2082i, vec4<i32>(arg_2, 21186i, arg_2, arg_0.c.x))).a).a.e.x, u_input.b.x, -1i, arg_2), _wgslsmith_mod_u32(7798u, abs(abs(7702u))), ~_wgslsmith_mod_vec3_u32(~global0.zxw, arg_0.e)), abs(global1[_wgslsmith_index_u32(func_5(Struct_3(arg_0.a.b), func_4(-7048i, Struct_1(global0.zxy, arg_0.a.b, global0.yy, -49241i, vec4<i32>(arg_3.x, -1550i, -21698i, 0i))), func_4(0i, arg_0.a).b, ~vec4<u32>(u_input.a, global0.x, 11115u, 0u)), 17u)] << (~global1[_wgslsmith_index_u32(u_input.a & 4294967295u, 17u)] % vec4<u32>(32u))), func_1());
    let var_1 = Struct_1(~((_wgslsmith_sub_vec3_u32(var_0.a.e, vec3<u32>(1u, 47696u, global2.x)) ^ (vec3<u32>(arg_0.e.x, global2.x, global0.x) >> (vec3<u32>(u_input.a, 70117u, global0.x) % vec3<u32>(32u)))) | (arg_0.a.a ^ reverseBits(global0.zwx))), true, vec2<u32>(_wgslsmith_sub_u32(arg_0.a.c.x, ~u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global2.x, arg_0.d) >> (var_0.b.wwy % vec3<u32>(32u)), ~vec3<u32>(u_input.a, 75466u, global0.x))) & abs(~arg_0.a.a.yx), arg_3.x, arg_3);
    let var_2 = Struct_5(var_0, arg_0.a.a.zy, -(i32(-1i) * -arg_3.x) == var_0.c.a.e.x, _wgslsmith_f_op_f32(arg_0.b + _wgslsmith_f_op_f32(trunc(var_0.c.b))), vec4<u32>(var_0.b.x ^ arg_0.a.c.x, ~func_4(var_0.c.a.e.x, func_1().a).a.c.x, 43378u, global2.x));
    global3 = 17392u;
    global0 = min(var_0.b, select(vec4<u32>(~(~23832u), _wgslsmith_dot_vec3_u32(min(arg_0.e, global0.wyz), vec3<u32>(global2.x, global2.x, global2.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.e.x, 22165u, 0u), var_0.b.zww) >> (0u % 32u), 7118u), (vec4<u32>(u_input.a, var_1.a.x, u_input.a, 1u) >> (max(vec4<u32>(arg_0.e.x, var_1.a.x, 1u, 37062u), vec4<u32>(var_0.b.x, var_2.b.x, global2.x, 72686u)) % vec4<u32>(32u))) & global1[_wgslsmith_index_u32(43394u, 17u)], true));
    return var_2.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(Struct_4(func_6(func_1(), _wgslsmith_f_op_f32(trunc(-1144f)), firstLeadingBit(-u_input.b.x), -vec4<i32>(u_input.b.x, -1i, u_input.b.x, u_input.b.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(18539u, 81704u, 4294967295u << (global0.x % 32u), global2.x), countOneBits(~global1[_wgslsmith_index_u32(1u, 17u)])), func_6(func_1(), _wgslsmith_f_op_f32(-1f), ~(-u_input.b.x), (vec4<i32>(-40920i, 30286i, u_input.b.x, 20138i) ^ vec4<i32>(-2147483647i, -1i, u_input.b.x, -54769i)) >> (vec4<u32>(global0.x, 4294967295u, 53414u, global0.x) % vec4<u32>(32u)))), _wgslsmith_mod_vec2_u32(global0.wy, _wgslsmith_clamp_vec2_u32(global0.xw, _wgslsmith_div_vec2_u32(global0.xx, global0.zy), vec2<u32>(12161u, 93616u)) & global0.wz), (~(~u_input.a) < global0.x) && (true || any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), false))), _wgslsmith_f_op_f32(-1f), ~global1[_wgslsmith_index_u32(u_input.a, 17u)]);
    let var_1 = any(vec4<bool>(select(true, select(false, var_0.c, false), true), true, var_0.a.a.a.b, func_2(func_4(0i, Struct_1(vec3<u32>(u_input.a, 0u, 33232u), var_0.c, vec2<u32>(4294967295u, 95820u), -27121i, vec4<i32>(var_0.a.c.c.x, u_input.b.x, var_0.a.a.c.x, u_input.b.x))), var_0.a.c.a.b).b)) | true;
    let var_2 = _wgslsmith_add_vec2_u32(func_6(Struct_2(var_0.a.c.a, -2283f, var_0.a.a.c, 4294967295u >> (global0.x % 32u), var_0.e.zxz), var_0.d, u_input.b.x, max(_wgslsmith_div_vec4_i32(var_0.a.c.a.e, vec4<i32>(var_0.a.c.a.d, 1i, u_input.b.x, -2147483647i)), ~var_0.a.a.c)).a.a.xz, var_0.b) << ((global0.zz << (var_0.b % vec2<u32>(32u))) % vec2<u32>(32u));
    var var_3 = var_0.e.yxz;
    var var_4 = var_0.a.c.a.b;
    let var_5 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_5.d, -400f, -903f, -429f), vec4<f32>(var_0.d, 383f, 1000f, 681f), true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_0.d, -1000f, var_5.d)), !vec4<bool>(true, false, var_0.a.a.a.b, var_5.a.c.a.b))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_5.d, -140f, -751f))))))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(var_5.d)))), func_4(1i, func_6(var_0.a.c, var_5.d, var_5.a.c.a.e.x, var_5.a.a.a.e).a).b))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_5.a.a.b))));
}

