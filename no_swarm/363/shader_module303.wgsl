struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(Struct_1(997f, true, 17386i, 1636f, 1i), vec2<bool>(false, false)), Struct_2(Struct_1(-552f, false, -1i, -1000f, 3107i), vec2<bool>(false, true)), Struct_2(Struct_1(331f, true, -1i, 1000f, -4162i), vec2<bool>(true, false)), Struct_2(Struct_1(-1000f, true, 55823i, 384f, -1i), vec2<bool>(true, false)), Struct_2(Struct_1(-2889f, false, 0i, -942f, i32(-2147483648)), vec2<bool>(true, true)), Struct_2(Struct_1(-213f, true, i32(-2147483648), 1365f, -4560i), vec2<bool>(false, false)), Struct_2(Struct_1(958f, false, -10377i, 500f, 32229i), vec2<bool>(true, false)), Struct_2(Struct_1(562f, false, 48391i, -1202f, 8928i), vec2<bool>(true, false)), Struct_2(Struct_1(-1243f, false, 0i, -322f, 66704i), vec2<bool>(true, true)), Struct_2(Struct_1(-606f, false, 2147483647i, -192f, i32(-2147483648)), vec2<bool>(false, true)), Struct_2(Struct_1(1222f, true, 36246i, 683f, 1i), vec2<bool>(true, false)), Struct_2(Struct_1(944f, false, -1i, 520f, 56462i), vec2<bool>(false, false)), Struct_2(Struct_1(218f, false, -35870i, -229f, 0i), vec2<bool>(false, false)), Struct_2(Struct_1(2416f, true, 1i, -393f, -1i), vec2<bool>(false, true)));

var<private> global1: array<vec4<f32>, 10> = array<vec4<f32>, 10>(vec4<f32>(1064f, -1006f, 824f, -1393f), vec4<f32>(2010f, 2476f, -680f, 229f), vec4<f32>(1744f, 487f, 983f, -549f), vec4<f32>(-966f, -1000f, 464f, 300f), vec4<f32>(-1579f, -329f, 499f, 1000f), vec4<f32>(-722f, -855f, -1000f, -1495f), vec4<f32>(-1466f, 596f, 791f, 993f), vec4<f32>(1915f, 1642f, -1052f, 630f), vec4<f32>(525f, 697f, -869f, -573f), vec4<f32>(-1000f, -1647f, 1322f, -478f));

var<private> global2: array<vec2<f32>, 22>;

var<private> global3: array<Struct_2, 22>;

var<private> global4: array<i32, 11> = array<i32, 11>(-20582i, 25578i, -1i, -18266i, 11759i, 78869i, -9808i, 1i, -1i, -24284i, 66612i);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_2) -> f32 {
    var var_0 = !arg_2.a.b;
    global2 = array<vec2<f32>, 22>();
    var var_1 = !select(select(vec4<bool>(false, false, any(vec3<bool>(arg_2.a.b, true, true)), true), vec4<bool>(arg_2.a.d > arg_1.x, any(arg_2.b), true, true), !select(vec4<bool>(false, false, arg_2.b.x, arg_2.b.x), vec4<bool>(arg_2.b.x, arg_2.b.x, arg_2.a.b, false), vec4<bool>(true, arg_2.b.x, true, arg_2.a.b))), select(vec4<bool>(true, arg_2.b.x, arg_2.a.b, true), !select(vec4<bool>(arg_2.b.x, true, arg_2.a.b, arg_2.a.b), vec4<bool>(arg_2.a.b, true, arg_2.b.x, arg_2.b.x), vec4<bool>(arg_2.b.x, arg_2.b.x, false, true)), all(select(vec2<bool>(arg_2.a.b, false), vec2<bool>(arg_2.b.x, true), arg_2.a.b))), any(!select(vec4<bool>(arg_2.a.b, true, arg_2.a.b, arg_2.b.x), vec4<bool>(true, arg_2.a.b, arg_2.a.b, arg_2.a.b), vec4<bool>(false, true, false, arg_2.a.b))));
    var_1 = select(vec4<bool>(var_1.x, !(4294967295u >= (u_input.d | arg_0)), _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0, u_input.d), vec2<u32>(arg_0, 48555u)) < 1u, all(!var_1.yyz) & var_1.x), vec4<bool>(!var_1.x, !(_wgslsmith_mod_i32(u_input.a.x, global4[_wgslsmith_index_u32(arg_0, 11u)]) < arg_2.a.e), arg_2.a.b, !(arg_1.x > _wgslsmith_f_op_f32(-arg_2.a.d))), true);
    let var_2 = 23328u;
    return 1750f;
}

fn func_2() -> vec2<i32> {
    var var_0 = vec4<u32>(select(25984u, u_input.d, true), _wgslsmith_mod_u32(4294967295u, firstLeadingBit(42124u)), 46935u, u_input.d);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-457f - _wgslsmith_f_op_f32(f32(-1f) * -2261f))))), false, 0i, _wgslsmith_f_op_f32(func_3(~(~(4294967295u ^ var_0.x)), vec3<f32>(_wgslsmith_div_f32(-2250f, -1000f), -464f, 511f), Struct_2(Struct_1(-1180f, true, 0i, 1745f, global4[_wgslsmith_index_u32(~63089u, 11u)]), vec2<bool>(true, true)))), -2147483647i);
    var var_2 = _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, var_0.x, firstLeadingBit(_wgslsmith_sub_u32(~21131u, u_input.d)), _wgslsmith_dot_vec3_u32(firstTrailingBit(~vec3<u32>(u_input.d, var_0.x, 39759u)), vec3<u32>(u_input.d, var_0.x, var_0.x))), vec4<u32>(firstTrailingBit(u_input.d), var_0.x, abs(_wgslsmith_mult_u32(countOneBits(u_input.d), 1u)), firstLeadingBit(1u)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(262f + var_1.d))), var_1.b, -86017i, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.d * _wgslsmith_f_op_f32(1983f + -979f)))), _wgslsmith_f_op_f32(round(var_1.a)))), -2147483647i);
    let var_4 = vec2<bool>(false, var_1.b);
    return u_input.c.yy;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_2 {
    global3 = array<Struct_2, 22>();
    var var_0 = _wgslsmith_dot_vec2_i32(-vec2<i32>(arg_1.c, -2147483647i), ~vec2<i32>(_wgslsmith_add_i32(firstTrailingBit(12825i), _wgslsmith_sub_i32(-18357i, arg_1.e)), -2147483647i));
    let var_1 = vec3<bool>(false, select(!(arg_1.b && true), false, arg_1.a < arg_1.d), _wgslsmith_f_op_f32(f32(-1f) * -590f) <= _wgslsmith_f_op_f32(trunc(arg_1.d)));
    global3 = array<Struct_2, 22>();
    global0 = array<Struct_2, 14>();
    return global0[_wgslsmith_index_u32(0u, 14u)];
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    global3 = array<Struct_2, 22>();
    global3 = array<Struct_2, 22>();
    var var_0 = !select(!vec4<bool>(true, u_input.d > u_input.d, true, arg_0.b.x), !select(select(vec4<bool>(false, true, false, arg_0.b.x), vec4<bool>(true, false, arg_0.b.x, true), false), select(vec4<bool>(arg_0.b.x, arg_0.a.b, arg_0.b.x, true), vec4<bool>(arg_0.b.x, arg_0.b.x, true, false), vec4<bool>(false, false, true, false)), arg_0.a.d < arg_0.a.a), true);
    var var_1 = func_4(countOneBits(vec2<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(1i, 1i, -1i, 2147483647i)), vec4<i32>(-63765i, global4[_wgslsmith_index_u32(u_input.d, 11u)], arg_0.a.c, 5330i)), _wgslsmith_mult_i32(~global4[_wgslsmith_index_u32(4294967295u, 11u)], -5341i))), arg_0.a);
    var_1 = func_4(func_2(), arg_0.a);
    return func_4(firstLeadingBit(_wgslsmith_mod_vec2_i32(~(u_input.b.yz & u_input.a), abs(vec2<i32>(-2147483647i, u_input.b.x) ^ vec2<i32>(1i, u_input.b.x)))), arg_0.a).a;
}

fn func_1(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_2, arg_3: Struct_1) -> i32 {
    var var_0 = arg_3;
    var var_1 = select(vec2<bool>(all(!vec2<bool>(arg_0.x, true)), true & !(arg_3.b && arg_2.b.x)), vec2<bool>(true, var_0.b), any(!vec4<bool>(arg_0.x, arg_0.x || var_0.b, var_0.b, true)));
    var_0 = func_5(func_4(select(~u_input.a << (~vec2<u32>(u_input.d, u_input.d) % vec2<u32>(32u)), func_2(), countOneBits(u_input.d) <= (1u << (0u % 32u))), arg_3));
    let var_2 = global0[_wgslsmith_index_u32(u_input.d, 14u)];
    global1 = array<vec4<f32>, 10>();
    return ~var_0.e >> (4294967295u % 32u);
}

fn func_6(arg_0: vec3<u32>, arg_1: Struct_1) -> u32 {
    global1 = array<vec4<f32>, 10>();
    var var_0 = func_4(-u_input.b.yx, Struct_1(1029f, false, ~(min(-46289i, arg_1.e) & -arg_1.c), -1097f, i32(-1i) * -2147483647i));
    return u_input.d >> (reverseBits(u_input.d) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<u32>(u_input.d, u_input.d, min(max(u_input.d, ~1u), firstTrailingBit(u_input.d | 1u)));
    var var_1 = vec4<i32>(-_wgslsmith_add_i32(global4[_wgslsmith_index_u32(0u, 11u)], 1i), global4[_wgslsmith_index_u32(func_6(vec3<u32>(488u, ~64652u, select(~u_input.d, ~u_input.d, false)), Struct_1(_wgslsmith_f_op_f32(sign(1433f)), false || any(vec4<bool>(false, false, false, true)), func_1(vec3<bool>(false, true, true), 1i, global3[_wgslsmith_index_u32(7739u, 22u)], Struct_1(-481f, false, 2147483647i, -404f, u_input.b.x)) | -global4[_wgslsmith_index_u32(0u, 11u)], _wgslsmith_f_op_f32(f32(-1f) * -545f), -2147483647i)), 11u)], 15826i, select(-func_2().x, _wgslsmith_div_i32(_wgslsmith_add_i32(global4[_wgslsmith_index_u32(0u, 11u)] | -2147483647i, _wgslsmith_clamp_i32(1i, global4[_wgslsmith_index_u32(1u, 11u)], global4[_wgslsmith_index_u32(var_0.x, 11u)])), _wgslsmith_div_i32(u_input.b.x, -u_input.c.x)), true));
    let var_2 = abs(u_input.a.x);
    let var_3 = func_4(max(vec2<i32>(var_1.x, u_input.c.x), u_input.b.zx), func_4(~(~u_input.b.xz) << ((var_0.xx ^ (var_0.zy & var_0.xy)) % vec2<u32>(32u)), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -329f))), all(vec3<bool>(false, true, false)), 1i, -1345f, var_1.x)).a).a;
    global0 = array<Struct_2, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(func_6(vec3<u32>(11253u, u_input.d, 26986u), Struct_1(var_3.a, var_3.b, -15766i, -174f, var_3.e)) & _wgslsmith_add_u32(_wgslsmith_mod_u32(var_0.x, var_0.x), u_input.d & 1u), 10u)]));
}

