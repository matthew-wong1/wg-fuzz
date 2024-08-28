struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: vec4<f32>,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: u32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5>;

var<private> global1: array<vec4<f32>, 14>;

var<private> global2: f32 = -100f;

var<private> global3: vec2<f32>;

var<private> global4: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(1i, vec2<bool>(false, false), vec4<i32>(0i, -16955i, 5495i, i32(-2147483648)), 18210u, -27854i), Struct_1(-1i, vec2<bool>(true, false), vec4<i32>(49609i, -10172i, 3080i, 0i), 7922u, 2147483647i), Struct_1(-42648i, vec2<bool>(false, true), vec4<i32>(2016i, -1i, 8185i, 1i), 1u, i32(-2147483648)), Struct_1(i32(-2147483648), vec2<bool>(true, true), vec4<i32>(21882i, 34240i, -31796i, 0i), 50499u, 2147483647i), Struct_1(1727i, vec2<bool>(true, true), vec4<i32>(-1i, -1i, 15070i, i32(-2147483648)), 2260u, -1i), Struct_1(1i, vec2<bool>(false, false), vec4<i32>(i32(-2147483648), 1i, -1i, 2147483647i), 35617u, 2147483647i), Struct_1(6832i, vec2<bool>(false, false), vec4<i32>(-22792i, -17008i, 2147483647i, -1i), 0u, 53115i), Struct_1(37038i, vec2<bool>(true, true), vec4<i32>(0i, -28177i, 1i, 0i), 7507u, i32(-2147483648)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = Struct_2(Struct_1(arg_0.a, !(!select(vec2<bool>(arg_0.b.x, false), vec2<bool>(arg_0.b.x, arg_0.b.x), arg_0.b.x)), vec4<i32>(_wgslsmith_div_i32(u_input.b.x | arg_0.a, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -1i, -12703i), vec3<i32>(-1i, 1i, u_input.b.x))), u_input.b.x, firstLeadingBit(0i), abs(abs(1i))), firstTrailingBit(abs(31619u)) ^ _wgslsmith_mod_u32(min(u_input.a, 1u), _wgslsmith_mult_u32(arg_0.d, 4294967295u)), 134i), Struct_1(u_input.b.x, vec2<bool>(true, true), vec4<i32>(_wgslsmith_dot_vec3_i32(arg_0.c.xyz, -arg_0.c.zxx), u_input.b.x, ~_wgslsmith_div_i32(arg_0.a, u_input.b.x), -1i), select(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 25458u, arg_0.d), ~vec4<u32>(42944u, u_input.a, 4294967295u, arg_0.d)), arg_0.d, arg_0.b.x), u_input.b.x), !arg_0.b, _wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(u_input.a, 4294967295u)), vec2<u32>(1u, arg_0.d) & vec2<u32>(1u, 4294967295u)), 14u)] - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-358f, global3.x, global3.x, 252f)))), 348f);
    var var_1 = Struct_3(var_0.b, var_0.d, ~1u);
    var var_2 = Struct_4(var_1.a);
    let var_3 = var_0.d.x;
    var var_4 = var_1.a;
    return ~vec3<u32>(4294967295u ^ (1u >> (_wgslsmith_mod_u32(u_input.a, 58048u) % 32u)), ~0u, firstTrailingBit(var_2.a.d));
}

fn func_2(arg_0: vec3<u32>, arg_1: bool) -> Struct_1 {
    let var_0 = func_3(Struct_1(u_input.b.x, select(!select(vec2<bool>(arg_1, false), vec2<bool>(arg_1, arg_1), vec2<bool>(false, true)), !select(vec2<bool>(arg_1, false), vec2<bool>(arg_1, arg_1), vec2<bool>(true, arg_1)), vec2<bool>(global3.x > -994f, !arg_1)), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -1i, 1i), vec3<i32>(u_input.b.x, 82290i, -42617i)), 1i), ~2147483647i | _wgslsmith_mult_i32(u_input.b.x, -21923i), ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(3747i, u_input.b.x, u_input.b.x)), 69418i), u_input.a, i32(-1i) * -1i));
    global1 = array<vec4<f32>, 14>();
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(global3.x)), global3.x));
    global0 = array<Struct_2, 5>();
    let var_2 = any(select(!(!vec3<bool>(arg_1, arg_1, arg_1)), select(!(!vec3<bool>(arg_1, true, true)), select(vec3<bool>(true, false, false), select(vec3<bool>(arg_1, false, arg_1), vec3<bool>(false, arg_1, arg_1), vec3<bool>(arg_1, arg_1, true)), vec3<bool>(true, arg_1, arg_1)), arg_1), false));
    return global4[_wgslsmith_index_u32(~(~(35309u | arg_0.x)), 8u)];
}

fn func_1() -> Struct_1 {
    var var_0 = !any(vec3<bool>(true, false, -u_input.b.x <= _wgslsmith_div_i32(0i, u_input.b.x)));
    let var_1 = Struct_4(func_2(select(~vec3<u32>(u_input.a, 52963u, u_input.a), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 7558u, u_input.a), vec3<u32>(u_input.a, 23942u, u_input.a)), vec3<bool>(true, false, true)) >> (vec3<u32>(~0u, u_input.a, 38136u) % vec3<u32>(32u)), true));
    global4 = array<Struct_1, 8>();
    let var_2 = var_1.a.b;
    let var_3 = _wgslsmith_mod_u32(var_1.a.d, var_1.a.d);
    return func_2(~(~abs(~vec3<u32>(45979u, 57596u, u_input.a))), var_2.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2, arg_3: f32) -> Struct_2 {
    let var_0 = arg_2.d;
    global2 = _wgslsmith_f_op_f32(arg_1.e - -1528f);
    global0 = array<Struct_2, 5>();
    let var_1 = _wgslsmith_f_op_f32(-var_0.x);
    var var_2 = vec2<bool>(arg_1.a.b.x, !(true | func_1().b.x));
    return Struct_2(func_1(), func_2(vec3<u32>(_wgslsmith_clamp_u32(u_input.a, arg_2.b.d, u_input.a) >> (_wgslsmith_sub_u32(5721u, 1u) % 32u), _wgslsmith_add_u32(1108u << (arg_2.a.d % 32u), func_1().d), u_input.a), var_2.x), func_1().b, vec4<f32>(var_1, -1616f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.e + _wgslsmith_f_op_f32(global3.x * -687f)) - _wgslsmith_f_op_f32(-arg_3)), _wgslsmith_div_f32(arg_3, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(arg_1.e, -2027f)))))), global3.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(), Struct_2(Struct_1(_wgslsmith_div_i32(1i, _wgslsmith_mult_i32(9767i, u_input.b.x)), vec2<bool>(global3.x <= global3.x, true), ~(vec4<i32>(-24638i, u_input.b.x, 23377i, u_input.b.x) >> (vec4<u32>(1u, 0u, 1u, u_input.a) % vec4<u32>(32u))), ~func_2(vec3<u32>(0u, u_input.a, 4294967295u), false).d, -abs(u_input.b.x)), Struct_1(~(-u_input.b.x), vec2<bool>(true, true), -vec4<i32>(2147483647i, 2147483647i, 45946i, -22972i), _wgslsmith_mult_u32(41473u, func_2(vec3<u32>(43001u, u_input.a, u_input.a), false).d), _wgslsmith_add_i32(u_input.b.x, u_input.b.x) & (u_input.b.x << (u_input.a % 32u))), func_2(countOneBits(vec3<u32>(0u, u_input.a, u_input.a) ^ vec3<u32>(0u, 1u, 22865u)), func_1().b.x).b, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(26219u, u_input.a), 14u)], global3.x), global0[_wgslsmith_index_u32(~func_3(func_1()).x, 5u)], _wgslsmith_div_f32(1000f, global3.x));
    var var_1 = vec2<i32>(47881i, -17404i);
    var var_2 = vec2<bool>(var_0.a.b.x, func_2(firstLeadingBit(firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.a, 4294967295u), vec3<u32>(u_input.a, 29032u, 50556u)))), func_4(Struct_1(var_0.b.c.x, !var_0.c, func_1().c, ~u_input.a, select(-34261i, 0i, false)), Struct_2(Struct_1(u_input.b.x, var_0.b.b, var_0.a.c, u_input.a, 51086i), func_1(), func_4(Struct_1(-9780i, var_0.c, vec4<i32>(u_input.b.x, 37568i, -2147483647i, -2147483647i), var_0.b.d, 25398i), Struct_2(global4[_wgslsmith_index_u32(var_0.b.d, 8u)], var_0.a, var_0.b.b, var_0.d, 1959f), Struct_2(var_0.a, Struct_1(var_1.x, vec2<bool>(var_0.a.b.x, false), vec4<i32>(-20866i, -35733i, var_1.x, 26372i), 6469u, 1i), var_0.b.b, var_0.d, 1570f), var_0.d.x).b.b, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1181f, -1633f, global3.x, -186f))), _wgslsmith_f_op_f32(-231f * 241f)), func_4(func_4(Struct_1(1i, var_0.c, vec4<i32>(26921i, var_0.a.a, var_0.a.e, -2147483647i), 1u, 87560i), Struct_2(Struct_1(38676i, vec2<bool>(var_0.c.x, var_0.b.b.x), vec4<i32>(var_1.x, 18674i, -47587i, var_1.x), var_0.a.d, var_0.b.a), global4[_wgslsmith_index_u32(1u, 8u)], var_0.c, global1[_wgslsmith_index_u32(1u, 14u)], 1000f), Struct_2(Struct_1(-3007i, var_0.b.b, vec4<i32>(u_input.b.x, var_0.a.c.x, -2147483647i, -29572i), 4294967295u, 31942i), global4[_wgslsmith_index_u32(72595u, 8u)], vec2<bool>(true, false), vec4<f32>(global3.x, global3.x, var_0.e, -1724f), global3.x), global3.x).a, func_4(Struct_1(var_1.x, vec2<bool>(false, var_0.b.b.x), var_0.a.c, var_0.b.d, var_1.x), var_0, global0[_wgslsmith_index_u32(4294967295u, 5u)], 335f), Struct_2(Struct_1(u_input.b.x, vec2<bool>(true, true), var_0.a.c, u_input.a, -43867i), Struct_1(58877i, var_0.b.b, vec4<i32>(var_1.x, 20514i, u_input.b.x, -2147483647i), 0u, var_0.a.a), vec2<bool>(false, var_0.a.b.x), vec4<f32>(var_0.d.x, var_0.e, 545f, 423f), global3.x), global3.x), global3.x).c.x).b.x);
    let var_3 = !(!vec3<bool>(true, any(vec3<bool>(var_0.a.b.x, var_2.x, var_0.c.x)), var_2.x));
    global0 = array<Struct_2, 5>();
    var var_4 = _wgslsmith_f_op_f32(sign(-316f));
    var var_5 = _wgslsmith_f_op_f32(-var_0.d.x);
    var var_6 = -1696f;
    var_1 = ~var_0.b.c.yw;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_1.x, -17669i), _wgslsmith_f_op_f32(ceil(-497f)), global3.x);
}

