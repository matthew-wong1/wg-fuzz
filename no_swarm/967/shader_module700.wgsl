struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec2<i32>,
    d: u32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 2> = array<vec2<bool>, 2>(vec2<bool>(false, true), vec2<bool>(true, false));

var<private> global1: array<vec2<i32>, 12> = array<vec2<i32>, 12>(vec2<i32>(6791i, -1i), vec2<i32>(24199i, 22308i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(-1i, 2147483647i), vec2<i32>(-12694i, 10638i), vec2<i32>(-11939i, 13274i), vec2<i32>(i32(-2147483648), -36237i), vec2<i32>(1i, 5140i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(2147483647i, 1i));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<u32>) -> f32 {
    global1 = array<vec2<i32>, 12>();
    var var_0 = 2150i;
    var var_1 = any(!select(vec3<bool>(any(vec4<bool>(true, true, true, false)), 0i <= arg_0.x, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), all(vec2<bool>(false, false))), _wgslsmith_clamp_i32(u_input.c.x, arg_0.x, 1i) > ~0i));
    let var_2 = 1351f;
    var_0 = reverseBits(0i);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-628f + var_2)), _wgslsmith_f_op_f32(f32(-1f) * -863f)));
}

fn func_4(arg_0: f32, arg_1: Struct_3) -> i32 {
    var var_0 = max(-(vec4<i32>(-arg_1.a.a, arg_1.e.a, u_input.d >> (arg_1.e.c.x % 32u), ~arg_1.c.e.x) << (_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.b, u_input.a, 8831u), vec4<u32>(u_input.a, u_input.a, 44192u, u_input.a)), vec4<u32>(1u, u_input.a, 1u, u_input.a)) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_dot_vec4_i32(~_wgslsmith_mult_vec4_i32(arg_1.c.e, arg_1.c.e), ~(-arg_1.c.e)), 1i & _wgslsmith_clamp_i32(arg_1.c.e.x | -4480i, abs(u_input.d), _wgslsmith_dot_vec2_i32(vec2<i32>(18487i, arg_1.a.a), vec2<i32>(28038i, u_input.c.x))), _wgslsmith_mod_i32(u_input.e.x, u_input.e.x), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(arg_1.c.e, arg_1.c.e), abs(arg_1.c.e)) | (_wgslsmith_clamp_i32(-2147483647i, -2147483647i, u_input.c.x) >> (_wgslsmith_sub_u32(22336u, arg_1.d.x) % 32u))));
    var var_1 = Struct_3(Struct_2(u_input.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(-arg_0)), ~arg_1.b.c), arg_1.b, Struct_1(abs(_wgslsmith_add_vec2_i32(select(arg_1.c.e.zx, vec2<i32>(var_0.x, u_input.d), global0[_wgslsmith_index_u32(arg_1.c.d, 2u)]), vec2<i32>(arg_1.b.a, 0i))), arg_1.b.b, global1[_wgslsmith_index_u32(u_input.b, 12u)], _wgslsmith_dot_vec4_u32(~select(vec4<u32>(20857u, 28389u, u_input.a, u_input.a), vec4<u32>(arg_1.d.x, 0u, u_input.b, u_input.a), vec4<bool>(true, true, false, false)), ~(vec4<u32>(arg_1.c.d, 21816u, 17729u, arg_1.d.x) & vec4<u32>(arg_1.b.c.x, u_input.a, 0u, u_input.a))), vec4<i32>(_wgslsmith_dot_vec4_i32(arg_1.c.e, ~vec4<i32>(-18038i, u_input.c.x, var_0.x, -5440i)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, -66936i, -2147483647i), vec3<i32>(-39436i, u_input.c.x, 2147483647i)), -34301i, 24114i)), vec2<u32>(~u_input.b, countOneBits(_wgslsmith_div_u32(u_input.a, 35377u))) | _wgslsmith_div_vec2_u32(vec2<u32>(reverseBits(arg_1.c.d), min(4294967295u, arg_1.c.d)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, arg_1.c.d), arg_1.b.c.yy)), Struct_2(~(-countOneBits(var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -288f), _wgslsmith_f_op_f32(select(-720f, 1000f, false))))), _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(1u, 0u, 0u)), arg_1.e.c, arg_1.a.c), vec3<u32>(arg_1.c.d, u_input.b, u_input.b))));
    let var_2 = Struct_3(arg_1.b, arg_1.b, Struct_1(-_wgslsmith_sub_vec2_i32(min(var_1.c.e.xw, arg_1.c.c), -var_1.c.c), arg_1.e.b, -(var_1.c.a & vec2<i32>(arg_1.a.a, var_0.x)), _wgslsmith_dot_vec2_u32(arg_1.d, vec2<u32>(76189u, arg_1.e.c.x) & ~var_1.d), abs(vec4<i32>(-44957i, -var_0.x, u_input.c.x | var_0.x, 46534i))), firstLeadingBit(_wgslsmith_mult_vec2_u32(~vec2<u32>(1u, var_1.e.c.x), arg_1.b.c.zx)), arg_1.a);
    var var_3 = 2147483647i;
    var_0 = vec4<i32>(14556i, ~var_0.x | -var_1.b.a, ~u_input.d, -28166i);
    return -2147483647i;
}

fn func_2(arg_0: bool, arg_1: Struct_2) -> Struct_3 {
    global1 = array<vec2<i32>, 12>();
    var var_0 = Struct_3(arg_1, arg_1, Struct_1(u_input.e.zy, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.b))), -1332f), vec2<i32>(_wgslsmith_mod_i32(-32561i, ~arg_1.a), u_input.d), ~u_input.b, -(~(vec4<i32>(-4402i, u_input.c.x, 16102i, -7535i) | vec4<i32>(arg_1.a, -27919i, u_input.c.x, -1i)))), arg_1.c.zy, Struct_2(abs(_wgslsmith_mod_i32(firstTrailingBit(u_input.c.x), -u_input.c.x)), 305f, vec3<u32>(~(1u << (u_input.a % 32u)), u_input.a, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(60554u, 4294967295u, 4294967295u, 6492u), vec4<u32>(u_input.a, 61911u, arg_1.c.x, 45744u)), vec4<u32>(4294967295u, 53352u, u_input.b, 1u)))));
    let var_1 = select(firstLeadingBit(u_input.e), reverseBits(abs(~_wgslsmith_add_vec3_i32(vec3<i32>(var_0.b.a, 4296i, -942i), var_0.c.e.xyx))), false);
    var var_2 = ~var_0.c.c;
    var_2 = vec2<i32>(func_4(_wgslsmith_f_op_f32(arg_1.b * -866f), Struct_3(var_0.a, Struct_2(-18119i, var_0.c.b, select(arg_1.c, var_0.a.c, vec3<bool>(arg_0, arg_0, arg_0))), Struct_1(vec2<i32>(u_input.c.x, -2147483647i), _wgslsmith_f_op_f32(func_3(u_input.e, var_0.a.c.xx)), abs(var_0.c.e.yz), ~var_0.b.c.x, vec4<i32>(arg_1.a, arg_1.a, u_input.e.x, 63633i) << (vec4<u32>(u_input.b, u_input.b, arg_1.c.x, 34994u) % vec4<u32>(32u))), max(abs(vec2<u32>(17305u, 30028u)), select(vec2<u32>(u_input.a, u_input.b), vec2<u32>(arg_1.c.x, 0u), arg_0)), Struct_2(abs(var_1.x), arg_1.b, arg_1.c))), var_2.x);
    return Struct_3(Struct_2(-firstTrailingBit(1i), _wgslsmith_f_op_f32(func_3(vec3<i32>(firstLeadingBit(1i), 8504i & var_0.c.e.x, arg_1.a), vec2<u32>(u_input.b & arg_1.c.x, 6265u))), firstTrailingBit(vec3<u32>(u_input.b, firstTrailingBit(4294967295u), countOneBits(var_0.b.c.x)))), Struct_2(arg_1.a, _wgslsmith_f_op_f32(var_0.c.b - _wgslsmith_f_op_f32(round(144f))), var_0.e.c), var_0.c, select(var_0.b.c.zy, arg_1.c.zy, select(false & arg_0, all(vec3<bool>(arg_0, true, arg_0)), !(arg_1.b >= var_0.b.b))), Struct_2(~(-(~2147483647i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -879f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-231f + 1779f) * arg_1.b)), firstLeadingBit(vec3<u32>(_wgslsmith_clamp_u32(u_input.b, arg_1.c.x, 12126u), _wgslsmith_mod_u32(u_input.b, arg_1.c.x), arg_1.c.x))));
}

fn func_5(arg_0: bool, arg_1: Struct_3) -> Struct_1 {
    global1 = array<vec2<i32>, 12>();
    var var_0 = !select(select(vec3<bool>(true, true, true), !vec3<bool>(arg_0, arg_0, true), false), select(select(!vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(true, false, arg_0), u_input.c.x != arg_1.a.a), vec3<bool>(arg_0, arg_1.b.a != -2479i, arg_0), !arg_0), select(vec3<bool>(true, true, true), !vec3<bool>(true, arg_0, arg_0), select(vec3<bool>(false, true, arg_0), select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, arg_0, arg_0)), false)));
    global1 = array<vec2<i32>, 12>();
    var_0 = vec3<bool>(true | any(select(select(vec4<bool>(true, true, var_0.x, arg_0), vec4<bool>(var_0.x, var_0.x, false, arg_0), vec4<bool>(true, var_0.x, true, var_0.x)), !vec4<bool>(true, var_0.x, true, arg_0), select(vec4<bool>(true, arg_0, arg_0, false), vec4<bool>(arg_0, false, var_0.x, arg_0), vec4<bool>(false, var_0.x, false, true)))), true, false);
    let var_1 = Struct_3(func_2(!(!all(vec3<bool>(false, arg_0, false))), arg_1.e).e, arg_1.b, arg_1.c, arg_1.e.c.yx, Struct_2(u_input.d, 1000f, _wgslsmith_div_vec3_u32(arg_1.b.c, ~arg_1.b.c | abs(vec3<u32>(u_input.b, u_input.b, u_input.b)))));
    return Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(countOneBits(_wgslsmith_mod_i32(var_1.e.a, arg_1.a.a)), -arg_1.c.a.x), ~vec2<i32>(u_input.c.x, u_input.d) | reverseBits(vec2<i32>(u_input.d, 3066i))), _wgslsmith_f_op_f32(-591f - var_1.b.b), vec2<i32>(-1i) * -global1[_wgslsmith_index_u32(~u_input.a, 12u)], ~(~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(arg_1.b.c, var_1.a.c), _wgslsmith_mod_u32(12324u, u_input.a))), vec4<i32>(-42453i, countOneBits(u_input.d), var_1.c.a.x, 7202i));
}

fn func_1() -> bool {
    var var_0 = func_5(false, func_2(true, Struct_2(-72058i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1062f) - _wgslsmith_f_op_f32(select(-895f, 1278f, false))), ~vec3<u32>(0u, 3032u, u_input.b))));
    var var_1 = _wgslsmith_f_op_f32(func_3(select(_wgslsmith_mult_vec3_i32(select(var_0.e.yzy, vec3<i32>(var_0.a.x, 2147483647i, u_input.c.x), true), ~vec3<i32>(-2147483647i, u_input.d, -1i)), -firstLeadingBit(vec3<i32>(u_input.d, -1i, 16031i) >> (vec3<u32>(u_input.b, 35648u, 49573u) % vec3<u32>(32u))), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), firstLeadingBit(vec2<u32>(1u, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(84084u, 39132u, var_0.d, 4294967295u)), select(vec4<u32>(4294967295u, 108924u, 52236u, u_input.b), vec4<u32>(var_0.d, 4294967295u, var_0.d, u_input.b), false))))));
    var var_2 = var_0.b;
    let var_3 = all(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), true), vec3<bool>(~u_input.b != ~var_0.d, true, any(vec4<bool>(false, false, false, false))), vec3<bool>(!any(vec4<bool>(true, false, false, false)), true, true)));
    var_1 = _wgslsmith_f_op_f32(-var_0.b);
    return any(vec2<bool>(var_3 | all(!global0[_wgslsmith_index_u32(41157u, 2u)]), any(!select(global0[_wgslsmith_index_u32(var_0.d, 2u)], vec2<bool>(false, var_3), false))));
}

fn func_6(arg_0: bool, arg_1: Struct_3) -> Struct_3 {
    global1 = array<vec2<i32>, 12>();
    var var_0 = 397f;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<i32>, 12>();
    let var_0 = func_6(select(firstTrailingBit(-19441i) == countOneBits(-1i), true, func_1()) || (_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(23395u, u_input.b, 25124u, 1u), vec4<u32>(u_input.b, 0u, 4294967295u, u_input.a)), u_input.b) < _wgslsmith_div_u32(43102u, 4294967295u)), Struct_3(Struct_2(u_input.c.x, _wgslsmith_f_op_f32(exp2(func_5(true, Struct_3(Struct_2(-31074i, -1235f, vec3<u32>(4294967295u, 67473u, u_input.a)), Struct_2(u_input.e.x, -1143f, vec3<u32>(1u, 1u, u_input.b)), Struct_1(u_input.e.zx, -171f, vec2<i32>(-2147483647i, u_input.c.x), 38021u, vec4<i32>(u_input.c.x, 42518i, u_input.e.x, -27042i)), vec2<u32>(u_input.b, u_input.a), Struct_2(2147483647i, 161f, vec3<u32>(u_input.b, u_input.b, 1u)))).b)), ~vec3<u32>(40643u, u_input.b, 39060u) << (_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 1u, u_input.b), vec3<u32>(39357u, u_input.a, u_input.b)) % vec3<u32>(32u))), Struct_2(u_input.d, func_2(true, func_2(true, Struct_2(u_input.d, -883f, vec3<u32>(u_input.b, 2759u, 0u))).e).b.b, ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.b, 63560u), vec3<u32>(1u, u_input.a, u_input.a))), Struct_1(vec2<i32>(~11162i, func_2(true, Struct_2(-2147483647i, -216f, vec3<u32>(u_input.b, u_input.b, u_input.a))).c.c.x), _wgslsmith_f_op_f32(func_3(reverseBits(vec3<i32>(u_input.d, -1i, u_input.c.x)), ~vec2<u32>(4294967295u, 4294967295u))), vec2<i32>(countOneBits(-1348i), _wgslsmith_clamp_i32(u_input.d, u_input.d, -5778i)), firstLeadingBit(53318u) & _wgslsmith_mult_u32(u_input.b, 1u), _wgslsmith_mod_vec4_i32(~vec4<i32>(-45769i, -2147483647i, u_input.d, u_input.e.x), -vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.c.x))), func_2(true, func_2(true, Struct_2(u_input.e.x, 320f, vec3<u32>(4294967295u, u_input.a, 12931u))).a).d << (reverseBits(vec2<u32>(30694u, 1u)) % vec2<u32>(32u)), Struct_2(-_wgslsmith_div_i32(u_input.d, -33756i), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1118f, 115f)), _wgslsmith_mod_vec3_u32(select(vec3<u32>(u_input.b, 28904u, u_input.a), vec3<u32>(u_input.a, 19894u, u_input.a), false), vec3<u32>(u_input.a, u_input.a, u_input.a) >> (vec3<u32>(64086u, 0u, 1u) % vec3<u32>(32u))))));
    let var_1 = _wgslsmith_add_vec2_i32(var_0.c.c, u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.e.b + 733f), -627f));
}

