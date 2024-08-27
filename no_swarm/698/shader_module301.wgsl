struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: i32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<bool>,
    d: i32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2() -> f32 {
    let var_0 = vec4<i32>(countOneBits(abs(min(~(-14902i), u_input.b.x))), 4460i, firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, _wgslsmith_sub_i32(u_input.a, u_input.b.x), -1094i), vec3<i32>(-47303i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a, u_input.b.x, 1i), vec4<i32>(u_input.a, u_input.b.x, 30744i, 21530i)), 1i))), -1109i);
    let var_1 = Struct_2(global0[_wgslsmith_index_u32(~(~1u), 24u)], ~6917u, vec2<bool>(true, any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)))), reverseBits(var_0.x), _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.c, ~u_input.d.x, 3965u), _wgslsmith_mod_vec3_u32(vec3<u32>(11655u, u_input.c, u_input.c), vec3<u32>(_wgslsmith_mod_u32(u_input.c, u_input.d.x), 55676u, ~0u))));
    global0 = array<Struct_1, 24>();
    let var_2 = var_0;
    global0 = array<Struct_1, 24>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.a)))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    let var_0 = ~min(_wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, u_input.d.x, 1u), vec3<u32>(1u, 2700u, 0u)), vec3<u32>(3892u, ~u_input.c, _wgslsmith_add_u32(18950u, arg_2.e.x))), 1u);
    global0 = array<Struct_1, 24>();
    global0 = array<Struct_1, 24>();
    let var_1 = reverseBits(vec3<u32>(~u_input.d.x, arg_2.e.x, _wgslsmith_div_u32(0u ^ arg_2.b, ~u_input.d.x))) << (_wgslsmith_mult_vec3_u32(abs(abs(vec3<u32>(16305u, u_input.c, 7099u))) << (max(vec3<u32>(u_input.d.x, u_input.d.x, 0u), arg_2.e) % vec3<u32>(32u)), vec3<u32>(arg_2.b, ~1u, 0u)) % vec3<u32>(32u));
    let var_2 = vec4<bool>(true, true, false, ((12164i > min(arg_2.d, arg_2.d)) && all(!vec4<bool>(arg_1.b.x, false, false, true))) || any(arg_2.a.b));
    return _wgslsmith_f_op_f32(-arg_1.d.x);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: i32) -> Struct_2 {
    global0 = array<Struct_1, 24>();
    let var_0 = Struct_1(254f, vec3<bool>(any(!arg_0), true, true), ~max(arg_1.x >> (30110u % 32u), ~arg_1.x) >> (u_input.d.x % 32u), vec4<f32>(_wgslsmith_f_op_f32(-1516f - 1165f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-648f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) * _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(-1677f, vec3<bool>(false, true, true), arg_2, vec4<f32>(-1315f, -330f, -1026f, 689f)), global0[_wgslsmith_index_u32(u_input.d.x, 24u)], Struct_2(global0[_wgslsmith_index_u32(u_input.c, 24u)], 41652u, arg_0.yw, 1i, vec3<u32>(u_input.c, u_input.d.x, u_input.d.x))))))));
    var var_1 = arg_0.xx;
    let var_2 = var_0;
    global0 = array<Struct_1, 24>();
    return Struct_2(var_2, _wgslsmith_div_u32(_wgslsmith_clamp_u32(abs(u_input.c << (80198u % 32u)), u_input.c, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c, u_input.d.x), u_input.d)), 1u), arg_0.wy, var_0.c, reverseBits(abs(vec3<u32>(36496u >> (u_input.d.x % 32u), 25053u, 1u))));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: vec3<i32>) -> Struct_2 {
    let var_0 = -arg_2.yz;
    let var_1 = !all(vec3<bool>(all(!arg_0.a.b), all(arg_0.a.b), arg_0.c.x));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.a.d.x))))), _wgslsmith_div_f32(arg_0.a.d.x, _wgslsmith_div_f32(-626f, arg_0.a.a)));
    let var_3 = vec4<bool>(var_1, var_1, all(select(!(!vec4<bool>(arg_0.a.b.x, var_1, arg_0.a.b.x, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, arg_0.c.x, true, arg_0.c.x), all(arg_0.a.b.zx)), arg_0.b == ~arg_1)), !any(arg_0.c));
    return arg_0;
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: Struct_2) -> f32 {
    global0 = array<Struct_1, 24>();
    let var_0 = func_4(Struct_2(func_1(select(!vec4<bool>(arg_0, arg_2.a.b.x, arg_0, false), !vec4<bool>(arg_0, arg_0, arg_0, false), !vec4<bool>(false, false, true, arg_0)), -u_input.b.yx, u_input.a).a, _wgslsmith_mod_u32(1u, ~48076u << ((arg_1 & u_input.d.x) % 32u)), vec2<bool>(func_4(Struct_2(Struct_1(arg_2.a.d.x, vec3<bool>(false, false, false), -11953i, arg_2.a.d), arg_2.b, vec2<bool>(arg_2.a.b.x, false), arg_2.d, vec3<u32>(0u, 4294967295u, arg_1)), u_input.d.x, -u_input.b).a.b.x, arg_2.c.x), u_input.a, select(vec3<u32>(u_input.c, 918u, 36743u), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1, 70958u, arg_2.e.x), vec3<u32>(arg_1, arg_2.b, u_input.d.x), arg_2.e), arg_2.a.b) | reverseBits(arg_2.e)), _wgslsmith_dot_vec3_u32(arg_2.e, func_4(func_4(Struct_2(Struct_1(arg_2.a.d.x, arg_2.a.b, arg_2.a.c, vec4<f32>(1718f, -1349f, arg_2.a.d.x, -1879f)), 2536u, arg_2.c, arg_2.a.c, vec3<u32>(u_input.d.x, 85745u, 72961u)), 1u, vec3<i32>(arg_2.d, 8237i, u_input.b.x) ^ vec3<i32>(8328i, u_input.b.x, 7458i)), _wgslsmith_mod_u32(38087u, arg_2.b), max(u_input.b, u_input.b >> (vec3<u32>(44185u, 4294967295u, arg_2.b) % vec3<u32>(32u)))).e), u_input.b);
    var var_1 = Struct_2(global0[_wgslsmith_index_u32(arg_2.e.x, 24u)], 1u, func_4(Struct_2(func_4(func_4(var_0, arg_2.e.x, vec3<i32>(-353i, -1i, u_input.a)), 1u, _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, 50007i, -1i), vec3<i32>(u_input.b.x, 2147483647i, 69586i))).a, reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 49064u, var_0.e.x), var_0.e)), select(func_1(vec4<bool>(arg_0, false, var_0.a.b.x, false), vec2<i32>(-29291i, -1i), arg_2.a.c).c, var_0.c, var_0.c), _wgslsmith_mult_i32(countOneBits(arg_2.a.c), ~u_input.a), arg_2.e), _wgslsmith_div_u32(firstLeadingBit(var_0.e.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(23266u, u_input.d.x, arg_1, 14934u), ~vec4<u32>(4294967295u, var_0.b, u_input.d.x, var_0.b))), ~u_input.b & _wgslsmith_clamp_vec3_i32(~u_input.b, _wgslsmith_clamp_vec3_i32(u_input.b, vec3<i32>(11177i, u_input.a, -44461i), u_input.b), vec3<i32>(arg_2.a.c, 0i, var_0.a.c))).a.b.yx, max(-arg_2.a.c, -firstTrailingBit(40268i)), vec3<u32>(arg_1, u_input.c, 1u));
    global0 = array<Struct_1, 24>();
    var_1 = Struct_2(var_0.a, 11153u, func_4(arg_2, 0u, u_input.b).c, -_wgslsmith_add_i32(arg_2.a.c << (11634u % 32u), var_1.d) >> (4294967295u % 32u), _wgslsmith_add_vec3_u32(vec3<u32>(84748u, arg_2.b ^ _wgslsmith_dot_vec3_u32(var_0.e, vec3<u32>(0u, 1u, 1u)), ~var_0.e.x), ~_wgslsmith_div_vec3_u32(vec3<u32>(40000u, 1u, 4294967295u), var_0.e)));
    return var_0.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 24>();
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(func_5(true, select(select(37565u, u_input.c, true), select(1u, 18543u, true), true), func_4(func_1(vec4<bool>(true, false, false, false), vec2<i32>(u_input.a, 1735i), u_input.b.x), select(0u, 0u, true), vec3<i32>(u_input.a, u_input.b.x, u_input.b.x) ^ vec3<i32>(u_input.a, u_input.a, -11389i)))), func_4(Struct_2(global0[_wgslsmith_index_u32(1u, 24u)], 94029u, vec2<bool>(false, false), u_input.a, abs(vec3<u32>(21047u, u_input.d.x, u_input.c))), firstLeadingBit(u_input.c), -u_input.b | -vec3<i32>(u_input.b.x, -2147483647i, 2667i)).a.b, u_input.a, vec4<f32>(1f, 1f, 1f, 1f)), select(_wgslsmith_mod_u32(4294967295u, u_input.d.x), u_input.c, !(38568i == abs(u_input.b.x))), vec2<bool>(!(!(38197u == u_input.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(true, u_input.d.x, Struct_2(global0[_wgslsmith_index_u32(u_input.c, 24u)], u_input.d.x, vec2<bool>(true, true), u_input.a, vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x))))) <= 637f), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(u_input.a, 40359i, u_input.b.x) ^ u_input.b) >> (u_input.d.x % 32u), u_input.a), _wgslsmith_add_vec3_u32(~(~vec3<u32>(u_input.d.x, u_input.d.x, 1u)), reverseBits(func_1(vec4<bool>(true, false, false, true), u_input.b.zz, 2147483647i).e)) | func_4(Struct_2(global0[_wgslsmith_index_u32(76268u, 24u)], firstTrailingBit(u_input.c), vec2<bool>(false, false), ~u_input.a, vec3<u32>(4294967295u, u_input.d.x, u_input.c)), ~57794u, ~vec3<i32>(6477i, u_input.b.x, u_input.b.x)).e);
    let var_1 = global0[_wgslsmith_index_u32(u_input.c | ~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 21183u, var_0.e.x), vec3<u32>(u_input.d.x, 4294967295u, var_0.b)) << ((u_input.c ^ 1u) % 32u), var_0.b), 24u)];
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1041f, _wgslsmith_f_op_f32(-var_1.d.x)))), func_1(vec4<bool>(true, true, true, true), vec2<i32>(u_input.b.x, func_1(vec4<bool>(var_0.a.b.x, false, true, true), u_input.b.zz, i32(-1i) * -1i).a.c), var_0.d).a.b, 0i, _wgslsmith_f_op_vec4_f32(var_0.a.d + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.a, 3551f, -1843f, var_0.a.a), vec4<f32>(var_1.a, var_0.a.a, var_0.a.d.x, 172f)))) * _wgslsmith_f_op_vec4_f32(-var_0.a.d))));
    var var_3 = ~(~_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.e.x, u_input.c), countOneBits(u_input.d)), _wgslsmith_sub_vec2_u32(u_input.d, vec2<u32>(0u, 34531u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c, var_0.e.xx >> (countOneBits(max(u_input.d, vec2<u32>(25772u, var_3.x)) >> (~u_input.d % vec2<u32>(32u))) % vec2<u32>(32u)), func_4(Struct_2(var_0.a, _wgslsmith_mult_u32(37113u, _wgslsmith_dot_vec3_u32(var_0.e, vec3<u32>(18655u, var_0.b, 662u))), var_2.b.zx, ~(var_1.c | -42304i), ~(~var_0.e)), u_input.c, firstLeadingBit(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.b, vec3<i32>(var_0.a.c, var_2.c, 50813i)), _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, u_input.a, 20982i), vec3<i32>(var_2.c, var_1.c, 1i))))).d, func_1(!select(vec4<bool>(true, var_0.c.x, var_0.c.x, true), select(vec4<bool>(var_1.b.x, true, false, var_1.b.x), vec4<bool>(var_0.a.b.x, false, var_1.b.x, false), false), vec4<bool>(var_1.b.x, var_2.b.x, var_0.c.x, true)), _wgslsmith_mult_vec2_i32(u_input.b.yx ^ vec2<i32>(var_0.d, var_1.c), vec2<i32>(u_input.b.x, -46124i) | select(u_input.b.xz, u_input.b.zz, var_0.a.b.zx)), -abs(-1i)).a.d.x);
}

