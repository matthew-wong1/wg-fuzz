struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec4<i32>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_3,
    d: vec2<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec4<i32>(-27244i, -1i, 0i, i32(-2147483648)), Struct_1(-5610i, 21710u, -1000f), Struct_3(Struct_2(0u, Struct_1(1i, 9266u, -698f)), 26184i, vec4<i32>(-16020i, 1i, -31768i, 28247i), Struct_2(1u, Struct_1(-48015i, 4294967295u, -1429f)), Struct_1(2147483647i, 0u, -390f)), vec2<i32>(2147483647i, -1i), Struct_2(1u, Struct_1(6572i, 29287u, -2338f)));

var<private> global1: bool;

var<private> global2: u32;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: Struct_4, arg_3: Struct_3) -> f32 {
    global2 = _wgslsmith_dot_vec2_u32(select(u_input.d.zx, vec2<u32>(firstLeadingBit(69294u), ~global0.b.b), vec2<bool>(any(vec3<bool>(true, true, false)), all(vec3<bool>(true, true, true)))), ~(u_input.d.zy << (vec2<u32>(u_input.d.x, 49609u) % vec2<u32>(32u)))) << (0u % 32u);
    var var_0 = select(vec4<bool>(false, false, any(vec3<bool>(true, true, true)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true))), vec4<bool>(true, true, true, true), !(!vec4<bool>(true, true, any(vec4<bool>(false, false, true, false)), global0.d.x != 19164i)));
    var var_1 = global0.c.a;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(846f * -1243f), _wgslsmith_f_op_f32(-arg_1.b.c), 820f);
    let var_3 = select(!(!var_0.wwy), vec3<bool>(all(var_0.wwy), all(var_0.zz), true), true);
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(1970f)), arg_0)) + global0.b.c), -540f) - global0.e.b.c);
}

fn func_2() -> bool {
    let var_0 = true;
    let var_1 = global0.c;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.c) - _wgslsmith_f_op_f32(f32(-1f) * -1190f));
    global1 = !var_0;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1640f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.b.c - var_1.a.b.c))))), var_1.a.b.c, _wgslsmith_f_op_f32(-364f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(var_1.a.b.c, Struct_2(38866u, var_1.e), Struct_4(var_1.c, Struct_1(global0.b.a, global0.b.b, var_1.a.b.c), global0.c, vec2<i32>(1i, u_input.b.x), global0.e), Struct_3(var_1.a, -1i, vec4<i32>(-24179i, -8816i, var_1.b, var_1.c.x), Struct_2(0u, global0.c.e), Struct_1(var_1.e.a, 0u, 315f)))), _wgslsmith_f_op_f32(select(global0.c.e.c, global0.c.d.b.c, var_0))))));
    return all(vec3<bool>(!(all(vec2<bool>(true, false)) == !var_0), false, all(vec4<bool>(var_0, var_0, var_0, true)) & (global0.b.a <= -2147483647i)));
}

fn func_1(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: vec4<i32>, arg_3: f32) -> Struct_3 {
    global1 = all(vec4<bool>(true, !any(vec4<bool>(true, false, false, false)), !(all(vec3<bool>(false, false, true)) && false), func_2()));
    var var_0 = global0.e.b.b;
    let var_1 = abs(47174u);
    let var_2 = Struct_1(-5311i, var_1, _wgslsmith_f_op_f32(floor(187f)));
    global2 = _wgslsmith_clamp_u32(16164u, arg_0.e.b.b << (27354u % 32u), max(0u, ~4294967295u & _wgslsmith_add_u32(1u, arg_0.b.b)));
    return Struct_3(Struct_2(_wgslsmith_clamp_u32(select(global0.c.d.a, 4294967295u, true), _wgslsmith_mult_u32(var_2.b, firstLeadingBit(130534u)), ~_wgslsmith_mult_u32(79970u, arg_0.e.a)), Struct_1(-u_input.a.x, 0u, _wgslsmith_f_op_f32(min(arg_3, _wgslsmith_f_op_f32(-global0.b.c))))), -_wgslsmith_add_i32(-1i, abs(var_2.a)), -_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(min(vec4<i32>(arg_0.c.e.a, 17317i, u_input.c, arg_1.x), u_input.b), vec4<i32>(2147483647i, 2147483647i, 28748i, arg_1.x) >> (vec4<u32>(38869u, var_2.b, var_1, global0.e.b.b) % vec4<u32>(32u))), reverseBits(u_input.b)), Struct_2(global0.c.a.a, Struct_1(global0.b.a, 5866u, -148f)), arg_0.c.d.b);
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: Struct_3) -> u32 {
    var var_0 = func_1(Struct_4(_wgslsmith_sub_vec4_i32(arg_2.c, arg_2.c >> (~vec4<u32>(3666u, arg_2.a.b.b, global0.e.b.b, 4294967295u) % vec4<u32>(32u))), func_1(arg_0, -vec2<i32>(u_input.c, -2147483647i), vec4<i32>(firstTrailingBit(u_input.b.x), _wgslsmith_clamp_i32(40640i, 2147483647i, 1i), u_input.b.x, ~0i), global0.c.a.b.c).a.b, func_1(Struct_4(global0.c.c >> (vec4<u32>(u_input.d.x, arg_0.b.b, 4294967295u, 0u) % vec4<u32>(32u)), arg_0.e.b, arg_0.c, arg_0.d, func_1(Struct_4(vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, arg_2.d.b.a), Struct_1(arg_2.c.x, 0u, -409f), Struct_3(arg_0.e, u_input.b.x, arg_0.c.c, arg_0.e, arg_2.e), vec2<i32>(37688i, global0.a.x), global0.c.a), arg_2.c.xw, u_input.b, arg_0.e.b.c).d), vec2<i32>(2147483647i, -52857i), ~vec4<i32>(-1i, arg_2.c.x, 38816i, u_input.a.x) ^ vec4<i32>(2147483647i, -35259i, -60783i, global0.d.x), _wgslsmith_f_op_f32(f32(-1f) * -845f)), arg_2.c.zw, func_1(Struct_4(min(vec4<i32>(37736i, 3398i, arg_2.b, -12204i), vec4<i32>(26833i, -17980i, u_input.b.x, -9552i)), Struct_1(global0.c.d.b.a, arg_0.e.b.b, arg_2.a.b.c), Struct_3(arg_2.d, global0.a.x, arg_0.c.c, arg_0.c.d, Struct_1(-17317i, arg_2.d.b.b, arg_0.b.c)), global0.d, Struct_2(arg_1, global0.c.d.b)), countOneBits(u_input.b.zy << (u_input.d.xx % vec2<u32>(32u))), arg_2.c, _wgslsmith_f_op_f32(trunc(global0.b.c))).d), vec2<i32>(_wgslsmith_dot_vec4_i32(select(arg_0.c.c, u_input.b, 49976u <= arg_1), -(~vec4<i32>(0i, arg_0.e.b.a, global0.b.a, global0.e.b.a))), ~u_input.a.x), -(vec4<i32>(arg_0.d.x, _wgslsmith_div_i32(u_input.a.x, global0.c.a.b.a), abs(arg_2.b), ~arg_2.b) << (~(~vec4<u32>(arg_2.a.b.b, 1u, u_input.d.x, arg_0.c.e.b)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.d.b.c) + -1000f)))).d;
    var var_1 = reverseBits(firstTrailingBit(arg_2.c));
    let var_2 = Struct_4(~arg_0.c.c, func_1(Struct_4(max(arg_0.c.c, vec4<i32>(-1i, u_input.c, var_1.x, var_1.x)) | -arg_2.c, Struct_1(~(-32122i), _wgslsmith_mod_u32(global0.c.d.b.b, 9423u), _wgslsmith_f_op_f32(var_0.b.c + var_0.b.c)), Struct_3(func_1(Struct_4(global0.c.c, var_0.b, Struct_3(global0.e, -2147483647i, vec4<i32>(u_input.b.x, -2147483647i, arg_0.c.b, arg_0.e.b.a), global0.c.a, arg_2.e), u_input.a.zy, Struct_2(1u, Struct_1(-27780i, global0.c.e.b, arg_0.b.c))), vec2<i32>(arg_2.a.b.a, 0i), vec4<i32>(u_input.b.x, arg_2.e.a, 50615i, -48349i), -153f).a, 1i, ~arg_2.c, arg_0.c.a, func_1(Struct_4(arg_0.a, arg_2.e, arg_0.c, vec2<i32>(-1161i, -3473i), global0.c.d), vec2<i32>(global0.c.a.b.a, var_1.x), vec4<i32>(16137i, -2248i, 0i, -6509i), var_0.b.c).d.b), -vec2<i32>(-25490i, arg_0.d.x), arg_2.d), ~global0.d, -_wgslsmith_div_vec4_i32(~vec4<i32>(-2645i, -1i, arg_2.a.b.a, var_0.b.a), arg_2.c), -1027f).d.b, arg_2, -select(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_2.a.b.a, global0.b.a) | u_input.a.yy, firstTrailingBit(var_1.yw)), u_input.a.yy, func_2()), func_1(arg_0, _wgslsmith_div_vec2_i32(~_wgslsmith_clamp_vec2_i32(global0.c.c.yy, var_1.xz, vec2<i32>(4087i, var_0.b.a)), -_wgslsmith_add_vec2_i32(arg_2.c.wz, global0.d)), arg_2.c, arg_0.b.c).d);
    global0 = var_2;
    var_1 = vec4<i32>(~firstLeadingBit(2147483647i), arg_2.d.b.a, ~(-select(arg_0.e.b.a, arg_2.c.x, true)), arg_0.e.b.a);
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 791f;
    let var_1 = ~select(vec4<u32>(~_wgslsmith_mult_u32(global0.c.e.b, u_input.d.x), func_4(Struct_4(u_input.b, global0.c.a.b, Struct_3(Struct_2(global0.b.b, Struct_1(global0.e.b.a, 89962u, 1302f)), 16728i, global0.a, Struct_2(4294967295u, global0.b), Struct_1(global0.a.x, global0.e.a, -1000f)), u_input.a.xz, Struct_2(global0.c.d.a, global0.c.e)), 55109u, func_1(Struct_4(global0.a, Struct_1(u_input.b.x, global0.e.a, global0.e.b.c), Struct_3(global0.c.a, -800i, u_input.b, global0.c.d, Struct_1(u_input.c, 56018u, -234f)), u_input.b.yz, global0.e), u_input.a.zz, vec4<i32>(global0.d.x, global0.b.a, global0.a.x, 2147483647i), global0.c.d.b.c)), select(global0.e.b.b, _wgslsmith_mod_u32(u_input.d.x, global0.b.b), any(vec4<bool>(true, false, true, true))), firstTrailingBit(global0.e.b.b) | global0.e.a), reverseBits(~select(vec4<u32>(global0.e.b.b, 34690u, u_input.d.x, 1u), vec4<u32>(u_input.d.x, u_input.d.x, 46881u, u_input.d.x), false)), true);
    var var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-101f)) * _wgslsmith_f_op_f32(sign(-1246f))), _wgslsmith_div_f32(global0.b.c, _wgslsmith_f_op_f32(f32(-1f) * -801f)), global0.c.d.b.c, global0.b.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.c.d.b.c, -671f, global0.e.b.c, global0.e.b.c))))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.e.c, -1070f, -706f, 156f) + vec4<f32>(1446f, global0.b.c, 1509f, -113f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.b.c, 427f, -2328f, 1173f)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.x, 220f, 1f, 2751f))), firstLeadingBit(1u), -1026f, reverseBits(-global0.a));
}

