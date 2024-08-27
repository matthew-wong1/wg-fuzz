struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: f32,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(i32(-2147483648), -36921i, 1i, -1321i));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(min(-1651f, -675f));
    let var_1 = _wgslsmith_dot_vec3_i32(arg_1.a.yzy, -(firstLeadingBit(select(global0.a.yxz, arg_1.a.wxy, vec3<bool>(true, true, true))) ^ -abs(vec3<i32>(31148i, 0i, 0i))));
    var var_2 = max(firstLeadingBit(vec4<u32>(u_input.b, u_input.a >> (1u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(1u, 77840u)), ~0u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b >> (60048u % 32u), 40834u, 30629u, u_input.a), ~vec4<u32>(u_input.b, u_input.a, 30839u, 10134u))) & select(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 24992u, firstLeadingBit(u_input.b), ~u_input.a), vec4<u32>(u_input.b ^ 0u, u_input.b, 4294967295u, _wgslsmith_add_u32(u_input.a, u_input.b))), _wgslsmith_add_vec4_u32(~(vec4<u32>(31747u, u_input.a, 98140u, u_input.b) << (vec4<u32>(0u, u_input.a, 1u, 6518u) % vec4<u32>(32u))), reverseBits(vec4<u32>(36391u, u_input.b, u_input.a, 32012u))), any(vec2<bool>(false, false)) && false);
    var var_3 = Struct_5(reverseBits(vec3<u32>((4294967295u >> (u_input.b % 32u)) & _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 19784u, 57758u), vec4<u32>(1u, var_2.x, 1u, var_2.x)), ~var_2.x << (~1u % 32u), (var_2.x | var_2.x) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 39545u, 39130u, 1u), vec4<u32>(var_2.x, 79365u, var_2.x, var_2.x)) % 32u))), Struct_2(~1u, Struct_1(vec4<i32>(-1i, _wgslsmith_mult_i32(var_1, -2147483647i), -u_input.c, var_1)), arg_0 < -1073i, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1957f)))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(true, true)), true)));
    let var_4 = Struct_1(vec4<i32>(u_input.c, -countOneBits(arg_1.a.x) | -global0.a.x, -12841i, arg_1.a.x));
    return vec2<bool>(all(var_3.b.e), true);
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    global0 = Struct_1(min(arg_0.a, arg_0.a));
    var var_0 = Struct_2(0u, Struct_1(-(vec4<i32>(-1i, -2147483647i, -5495i, -7446i) | -vec4<i32>(u_input.c, arg_0.a.x, global0.a.x, 13846i))), true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(293f - -386f) - -912f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1597f * 1298f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1610f, -244f))), true))), select(select(vec2<bool>(true, true), func_3(-u_input.c, arg_0), true), !vec2<bool>(true, u_input.b != u_input.a), !vec2<bool>(false, any(vec3<bool>(true, false, false)))));
    let var_1 = vec4<u32>(max(~_wgslsmith_div_u32(0u, 1u), firstLeadingBit(28730u)) << (max(_wgslsmith_mod_u32(~var_0.a, 1u), 50994u) % 32u), 1u & (81168u << ((var_0.a << (1u % 32u)) % 32u)), var_0.a, ~max(_wgslsmith_mod_u32(~u_input.a, _wgslsmith_clamp_u32(28772u, 1u, u_input.a)), var_0.a));
    global0 = Struct_1(arg_0.a);
    var_0 = Struct_2(1u, var_0.b, var_0.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(var_0.d)))), select(var_0.e, vec2<bool>(true, true), true));
    return Struct_2(var_1.x, arg_0, var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(309f))))) + var_0.d), var_0.e);
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_5) -> Struct_2 {
    var var_0 = arg_2.b.c;
    global0 = arg_2.b.b;
    global0 = arg_2.b.b;
    var_0 = func_2(Struct_1(global0.a ^ abs(arg_2.b.b.a))).e.x;
    var_0 = true;
    return func_2(arg_2.b.b);
}

fn func_5(arg_0: Struct_2) -> Struct_4 {
    var var_0 = 24072u;
    var var_1 = u_input.a;
    var var_2 = arg_0.b;
    let var_3 = true;
    var_1 = _wgslsmith_dot_vec3_u32(~(~_wgslsmith_sub_vec3_u32(vec3<u32>(35304u, arg_0.a, 0u), vec3<u32>(arg_0.a, 5309u, u_input.a)) | ~(~vec3<u32>(106141u, 70227u, u_input.b))), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a, _wgslsmith_div_u32(u_input.b, arg_0.a), u_input.b), max(_wgslsmith_div_vec3_u32(vec3<u32>(28255u, arg_0.a, arg_0.a), vec3<u32>(1u, 25281u, 4294967295u)), vec3<u32>(9850u, arg_0.a, 4294967295u))), ~(~1u) << (_wgslsmith_sub_u32(u_input.a, countOneBits(35464u)) % 32u), u_input.b));
    return Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-924f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.d), _wgslsmith_f_op_f32(-arg_0.d))))), Struct_3(max(~global0.a, vec4<i32>(4707i, -9719i, global0.a.x, global0.a.x) << (vec4<u32>(1u, 53071u, 15964u, 38591u) % vec4<u32>(32u))) << (abs(~vec4<u32>(4675u, 30947u, 14243u, u_input.b)) % vec4<u32>(32u)), arg_0, vec4<bool>(true, true, true, true), func_2(arg_0.b).b));
}

fn func_1(arg_0: i32, arg_1: vec4<u32>, arg_2: u32, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = func_5(func_4(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(52715u, 44777u, 4294967295u) >> (_wgslsmith_div_u32(arg_2, 17131u) % 32u), 81709u, 1u), 0i, Struct_5(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 1u, arg_3.x) | arg_1.wwy, vec3<u32>(u_input.b, 13250u, 7283u)), func_2(Struct_1(vec4<i32>(-2147483647i, u_input.c, 1i, arg_0))))));
    let var_1 = 6211u;
    var_0 = func_5(func_5(Struct_2(var_0.b.b.a, var_0.b.b.b, var_0.b.c.x || (var_0.b.b.c || false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.b.d + 349f) * _wgslsmith_f_op_f32(201f * var_0.b.b.d)), vec2<bool>(!var_0.b.c.x, var_0.b.c.x && true))).b.b);
    return Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_add_i32(2147483647i, global0.a.x), ~24807i, 0i, global0.a.x) ^ global0.a, vec4<i32>(~arg_0, u_input.c, -1i, 1i)));
}

fn func_6(arg_0: f32, arg_1: bool, arg_2: Struct_1, arg_3: Struct_2) -> f32 {
    global0 = func_5(Struct_2(arg_3.a, Struct_1(max(vec4<i32>(2147483647i, arg_2.a.x, u_input.c, -2147483647i), arg_3.b.a)), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_3.d)) + arg_3.d)), vec2<bool>(arg_3.e.x != true, true))).b.b.b;
    let var_0 = -firstTrailingBit(-2147483647i);
    global0 = Struct_1(_wgslsmith_sub_vec4_i32(global0.a, vec4<i32>(arg_3.b.a.x, -1i, reverseBits(7642i), -853i)));
    let var_1 = select(vec4<bool>(false, arg_3.e.x, !(!arg_1) || any(vec4<bool>(arg_3.c, arg_3.c, arg_1, arg_1)), false), vec4<bool>(func_2(Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(arg_3.b.a.x, global0.a.x, arg_2.a.x, global0.a.x), vec4<i32>(71358i, var_0, -1567i, 2147483647i)))).c, true, arg_3.e.x, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_3.a, 8541u, u_input.a, u_input.a), vec4<u32>(17277u, u_input.b, u_input.b, arg_3.a)), ~vec4<u32>(4294967295u, arg_3.a, 35883u, 59416u)) < 41991u), vec4<bool>(u_input.b < ~arg_3.a, true, !arg_1, true));
    let var_2 = arg_3;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -587f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1026f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -405f), -2044f, true)), _wgslsmith_f_op_f32(func_6(-403f, false, func_1(-2147483647i, vec4<u32>(u_input.b, 882u, u_input.a, u_input.b), 1u, vec4<u32>(59839u, u_input.a, u_input.b, u_input.b)), func_5(Struct_2(u_input.b, Struct_1(vec4<i32>(-2147483647i, 1i, 2147483647i, u_input.c)), false, -150f, vec2<bool>(false, false))).b.b)))));
    let var_1 = _wgslsmith_clamp_vec2_i32(max(func_2(Struct_1(vec4<i32>(u_input.c, 2147483647i, 0i, 34563i))).b.a.zy, global0.a.yx), global0.a.zx, global0.a.yy);
    var_0 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) * func_4(1u, -2147483647i, Struct_5(vec3<u32>(u_input.b, 7359u, u_input.a), Struct_2(4294967295u, Struct_1(global0.a), false, var_0.x, vec2<bool>(true, true)))).d) + var_0.x), _wgslsmith_f_op_f32(354f - 421f))));
    let var_2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-420f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(947f * 763f)))), Struct_3(global0.a, Struct_2(func_4(countOneBits(1u), var_1.x, Struct_5(vec3<u32>(4329u, 0u, 4294967295u), Struct_2(u_input.b, Struct_1(vec4<i32>(global0.a.x, global0.a.x, 35696i, -1i)), false, 1110f, vec2<bool>(true, false)))).a, Struct_1(global0.a), !all(vec2<bool>(true, false)), var_0.x, select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true))), select(vec4<bool>(true, any(vec3<bool>(false, true, true)), true, true), !select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false)), !func_2(Struct_1(global0.a)).c), Struct_1(vec4<i32>(u_input.c ^ u_input.c, func_4(35137u, -2147483647i, Struct_5(vec3<u32>(u_input.b, u_input.b, 4294967295u), Struct_2(1u, Struct_1(global0.a), false, -1930f, vec2<bool>(true, true)))).b.a.x, var_1.x, global0.a.x))));
    let var_3 = vec3<bool>(var_2.b.b.e.x, _wgslsmith_f_op_f32(-var_0.x) >= _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2.b.b.d - -1837f), _wgslsmith_f_op_f32(var_0.x * var_2.a), u_input.b < 49849u))), !(true || any(!var_2.b.c)));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, -1208f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(148f, var_2.a, var_0.x, 343f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a, -1318f, 939f, 490f) + vec4<f32>(var_0.x, var_0.x, var_2.a, var_2.a)))))));
    var var_4 = Struct_1(func_4(_wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.a), var_1.x, Struct_5(vec3<u32>(select(2495u, 0u, true), ~0u, 4294967295u), Struct_2(func_5(var_2.b.b).b.b.a, var_2.b.d, true, _wgslsmith_f_op_f32(round(var_0.x)), vec2<bool>(var_2.b.c.x, var_3.x)))).b.a);
    var_4 = var_2.b.b.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a, vec3<f32>(1626f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.b.b.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -540f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1528f)) - _wgslsmith_f_op_f32(var_2.b.b.d * 546f)))), _wgslsmith_clamp_i32(-global0.a.x, func_1(var_1.x, vec4<u32>(~8212u, 1u, func_4(u_input.a, var_4.a.x, Struct_5(vec3<u32>(23335u, u_input.b, u_input.b), var_2.b.b)).a, u_input.a), ~_wgslsmith_sub_u32(u_input.b, u_input.a), vec4<u32>(1u, u_input.a, _wgslsmith_add_u32(0u, u_input.a), _wgslsmith_sub_u32(var_2.b.b.a, 4294967295u))).a.x, -34810i));
}

