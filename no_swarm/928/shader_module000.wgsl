struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31>;

var<private> global1: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(27607i), Struct_1(69113i), Struct_1(i32(-2147483648)), Struct_1(0i), Struct_1(14366i), Struct_1(-30479i), Struct_1(2147483647i), Struct_1(2147483647i), Struct_1(1i), Struct_1(-1i), Struct_1(34525i), Struct_1(-2776i), Struct_1(-10561i), Struct_1(-1i), Struct_1(1i));

var<private> global2: array<f32, 1> = array<f32, 1>(-390f);

var<private> global3: vec4<f32> = vec4<f32>(-1000f, 2303f, 594f, -1000f);

var<private> global4: Struct_3 = Struct_3(Struct_2(vec4<i32>(i32(-2147483648), 2147483647i, 1i, 25249i), Struct_1(2088i), 628f, Struct_1(1i)), vec4<u32>(15404u, 25318u, 1u, 24997u), vec3<i32>(-20845i, -29294i, -18105i));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: f32, arg_3: vec3<i32>) -> vec4<i32> {
    return vec4<i32>(_wgslsmith_add_i32(select(~15492i, firstLeadingBit(_wgslsmith_add_i32(25605i, 12379i)), all(vec3<bool>(false, true, arg_0)) || false), min(arg_3.x ^ arg_3.x, global4.c.x & -global4.a.a.x)), 1i, ~_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, -53558i, arg_3.x, -37521i), vec4<i32>(2147483647i, -6887i, arg_3.x, global4.a.a.x)), global4.a.a >> (u_input.a % vec4<u32>(32u))) & global4.c.x, arg_3.x);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<i32>) -> Struct_2 {
    var var_0 = global4.c;
    let var_1 = global4.a.d;
    return Struct_2(func_3(true, _wgslsmith_f_op_f32(floor(global3.x)), 1537f, vec3<i32>(-2147483647i, arg_0.x, -countOneBits(var_1.a))), Struct_1(global4.a.b.a), -364f, Struct_1(-var_1.a));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec4<i32>) -> vec4<f32> {
    let var_0 = !(!(~4294967295u >= firstLeadingBit(global4.b.x)));
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global3.x, -1736f, global2[_wgslsmith_index_u32(u_input.b, 1u)], -178f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1431f, -665f, global4.a.c, global4.a.c) * vec4<f32>(-529f, 619f, 150f, 164f)))) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1417f, 1082f, -106f, global4.a.c))))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.a.c, global4.a.c, -1339f, 174f) - vec4<f32>(533f, global4.a.c, -142f, global4.a.c)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.c, global2[_wgslsmith_index_u32(u_input.a.x, 1u)], -618f, 967f), vec4<f32>(global3.x, global4.a.c, global2[_wgslsmith_index_u32(global4.b.x, 1u)], 1643f), vec4<bool>(var_0, var_0, false, false))))))));
    let var_1 = all(!select(vec2<bool>(var_0 | false, true || var_0), !(!vec2<bool>(var_0, var_0)), any(select(vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(var_0, var_0, false, true), vec4<bool>(var_0, false, true, var_0)))));
    var var_2 = _wgslsmith_mod_u32(u_input.a.x, global4.b.x);
    var var_3 = global4.c;
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c)), _wgslsmith_div_f32(global4.a.c, -819f), _wgslsmith_f_op_f32(step(1f, 997f)), -367f))));
}

fn func_1(arg_0: i32, arg_1: Struct_3) -> Struct_1 {
    global2 = array<f32, 1>();
    var var_0 = -48289i;
    let var_1 = -549f;
    global3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(arg_1.b.x, 1u)], var_1), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(422f, _wgslsmith_f_op_f32(321f + -212f))))), _wgslsmith_f_op_f32(f32(-1f) * -1035f), global3.x) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global4.a.c, -1000f, var_1, -1117f))))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_4(func_2(arg_1.a.a, vec4<i32>(0i, arg_0, -1i, 33964i)), ~(-1i), vec4<i32>(1655i, arg_0, 1i, global4.c.x)))))));
    var var_2 = func_2(global4.a.a >> (arg_1.b % vec4<u32>(32u)), ~global4.a.a).b;
    return func_2(~_wgslsmith_add_vec4_i32(arg_1.a.a, global4.a.a), func_3(true, _wgslsmith_f_op_vec4_f32(func_4(arg_1.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global4.a.d.a, var_2.a, 2147483647i), vec4<i32>(arg_0, 1i, var_2.a, 1i)), _wgslsmith_mult_vec4_i32(abs(arg_1.a.a), global4.a.a))).x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global4.a.c))))), vec3<i32>(~_wgslsmith_clamp_i32(arg_0, -2147483647i, var_2.a), var_2.a << (global4.b.x % 32u), reverseBits(_wgslsmith_add_i32(25885i, global4.c.x))))).d;
}

fn func_5(arg_0: bool, arg_1: Struct_3, arg_2: bool) -> bool {
    var var_0 = global4.a;
    var var_1 = global3.x;
    let var_2 = arg_1;
    var var_3 = Struct_3(Struct_2(-(~vec4<i32>(var_2.a.b.a, 0i, -1i, 1i)), global4.a.d, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4.a.c), 115f)), global4.a.d), abs(select(vec4<u32>(~var_2.b.x, 1u, ~6442u, global4.b.x | global4.b.x), _wgslsmith_add_vec4_u32(abs(vec4<u32>(15028u, var_2.b.x, arg_1.b.x, 10610u)), vec4<u32>(arg_1.b.x, 0u, global4.b.x, u_input.b)), false)), firstLeadingBit(_wgslsmith_sub_vec3_i32(select(vec3<i32>(var_0.a.x, -2147483647i, 0i), var_0.a.zzx, true) & vec3<i32>(global4.a.b.a, 5351i, 2147483647i), vec3<i32>(_wgslsmith_add_i32(var_0.b.a, var_0.a.x), ~var_2.a.d.a, global4.a.b.a))));
    var var_4 = select(!select(vec4<bool>(true, arg_2, true, select(arg_2, arg_0, arg_2)), select(vec4<bool>(arg_2, false, true, true), vec4<bool>(false, arg_0, arg_0, arg_2), arg_0 != false), vec4<bool>(true, arg_0, !arg_0, arg_2 & true)), !vec4<bool>(arg_2, !any(vec3<bool>(arg_2, arg_0, true)), arg_2, !arg_0), vec4<bool>(true, arg_2, arg_2, true));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 31>();
    var var_0 = global4.a.b;
    let var_1 = global0[_wgslsmith_index_u32(u_input.b, 31u)];
    var var_2 = vec4<bool>(func_5(true, Struct_3(Struct_2(vec4<i32>(-6722i, 2147483647i, 2147483647i, global4.c.x), func_1(var_1.a, Struct_3(global4.a, vec4<u32>(u_input.a.x, 35344u, u_input.a.x, global4.b.x), global4.a.a.xyy)), 1136f, global1[_wgslsmith_index_u32(u_input.a.x, 15u)]), ~(~u_input.a), abs(_wgslsmith_sub_vec3_i32(vec3<i32>(var_1.a, global4.a.a.x, var_1.a), vec3<i32>(var_0.a, var_1.a, global4.a.a.x)))), true), true, true, false);
    var var_3 = 1u;
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(global3.x)), _wgslsmith_div_f32(-637f, global3.x), global3.x, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b, 1u)] + global3.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(424f, global4.a.c, global4.a.c, -986f) + vec4<f32>(global2[_wgslsmith_index_u32(23767u, 1u)], 524f, global3.x, -631f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(644f, 160f, -1130f, -1731f))))));
    let var_5 = 1u;
    var_2 = !(!vec4<bool>(false, _wgslsmith_clamp_u32(var_5, u_input.a.x, global4.b.x) < ~var_5, var_2.x, true & !var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a, vec2<i32>(firstTrailingBit(_wgslsmith_add_i32(~2147483647i, 0i)), var_1.a), _wgslsmith_dot_vec3_u32(abs(max(global4.b.wzz, global4.b.yzy)), ~select(global4.b.yww, global4.b.ywy, var_2.x)));
}

