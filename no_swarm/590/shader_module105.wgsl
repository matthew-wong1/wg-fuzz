struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: vec4<f32>,
    d: vec2<i32>,
    e: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec2<f32>(670f, -644f), vec4<bool>(true, true, true, true), vec4<f32>(252f, 1315f, 273f, -682f), vec2<i32>(-66230i, 2147483647i), -1i), Struct_1(vec2<f32>(778f, -1082f), vec4<bool>(false, false, true, false), vec4<f32>(-351f, -1378f, -3451f, -680f), vec2<i32>(7436i, i32(-2147483648)), -12967i));

var<private> global1: array<vec2<u32>, 2> = array<vec2<u32>, 2>(vec2<u32>(0u, 1099u), vec2<u32>(29573u, 0u));

var<private> global2: bool;

var<private> global3: u32;

var<private> global4: array<vec3<f32>, 16>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: u32) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(trunc(arg_1.c.x));
    var var_1 = 1i;
    var var_2 = u_input.a.x;
    var var_3 = u_input.a.x;
    var var_4 = -17127i;
    return arg_1.b;
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: vec2<f32>) -> f32 {
    var var_0 = abs(0u) > ~_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), _wgslsmith_div_u32(30362u, u_input.a.x), 34064u), u_input.a.yxz >> (~vec3<u32>(u_input.a.x, 95374u, u_input.a.x) % vec3<u32>(32u)));
    var var_1 = Struct_2(!select(vec4<bool>(true, -1i < arg_0, arg_1 <= arg_2.x, true), select(vec4<bool>(true, true, true, true), func_3(false, Struct_1(arg_2, vec4<bool>(false, false, false, true), vec4<f32>(arg_1, arg_2.x, 563f, -1749f), vec2<i32>(1i, arg_0), arg_0), 570u), true), vec4<bool>(all(vec3<bool>(false, true, true)), true, true, true)), vec4<i32>(-1i) * -(~(~vec4<i32>(arg_0, 0i, 0i, arg_0))));
    global3 = _wgslsmith_mult_u32(~(~u_input.a.x), ~_wgslsmith_dot_vec4_u32(~(~u_input.a), u_input.a));
    let var_2 = _wgslsmith_mod_vec3_u32(u_input.a.yxw, u_input.a.zzz);
    var var_3 = Struct_2(!select(vec4<bool>(!var_1.a.x, false, var_1.a.x, var_1.a.x), vec4<bool>(all(var_1.a.zz), !var_1.a.x, !var_1.a.x, -42141i == var_1.b.x), func_3(true, Struct_1(vec2<f32>(719f, arg_1), var_1.a, vec4<f32>(-170f, arg_2.x, arg_1, arg_1), var_1.b.yw, 2147483647i), ~u_input.a.x).x), -_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.b.x, var_1.b.x ^ arg_0, ~(-15157i), abs(-2147483647i)), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(var_1.b, vec4<i32>(20839i, var_1.b.x, var_1.b.x, arg_0)), max(var_1.b, var_1.b))));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)))) + arg_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(f32(-1f) * -1531f)))));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: vec3<f32>) -> bool {
    global3 = _wgslsmith_add_u32(15933u, select(_wgslsmith_div_u32(arg_1.x, arg_0.x), arg_0.x, true));
    let var_0 = _wgslsmith_f_op_f32(abs(arg_2.x));
    global1 = array<vec2<u32>, 2>();
    var var_1 = _wgslsmith_dot_vec2_i32(firstLeadingBit(_wgslsmith_add_vec2_i32(reverseBits(countOneBits(vec2<i32>(27715i, 28274i))), firstTrailingBit(select(vec2<i32>(2147483647i, -38523i), vec2<i32>(0i, 64030i), false)))), vec2<i32>(-_wgslsmith_div_i32(-1i, _wgslsmith_mod_i32(-1i, 73739i)), i32(-1i) * -34659i));
    global4 = array<vec3<f32>, 16>();
    return !(!(!(!func_3(false, global0[_wgslsmith_index_u32(33291u, 2u)], arg_1.x).x)));
}

fn func_1(arg_0: Struct_2) -> Struct_3 {
    global4 = array<vec3<f32>, 16>();
    let var_0 = Struct_2(select(vec4<bool>(true, (u_input.a.x & u_input.a.x) == _wgslsmith_mult_u32(29562u, u_input.a.x), arg_0.a.x, all(!vec2<bool>(arg_0.a.x, true))), select(!arg_0.a, arg_0.a, select(arg_0.a.x, !arg_0.a.x, arg_0.a.x)), any(arg_0.a)), ~arg_0.b);
    global4 = array<vec3<f32>, 16>();
    let var_1 = func_4(vec2<u32>(_wgslsmith_clamp_u32(~u_input.a.x, ~u_input.a.x, 22864u) << (1u % 32u), (~u_input.a.x ^ u_input.a.x) & 59658u), u_input.a.zwz, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-688f * _wgslsmith_f_op_f32(f32(-1f) * -248f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(947f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1009f) - -1000f) * _wgslsmith_f_op_f32(func_2(arg_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1407f), vec2<f32>(1558f, -1583f)))), 1403f));
    global1 = array<vec2<u32>, 2>();
    return Struct_3(var_0, global0[_wgslsmith_index_u32(firstLeadingBit(~(~u_input.a.x | ~1u)), 2u)], global0[_wgslsmith_index_u32(u_input.a.x, 2u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<u32>, 2>();
    var var_0 = func_1(Struct_2(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, u_input.a.x >= 4294967295u, true)), vec4<i32>(_wgslsmith_sub_i32(~(-2147483647i), 1i), -1i, 39424i, 27641i)));
    var var_1 = _wgslsmith_dot_vec3_u32(select(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(43843u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 0u, u_input.a.x, 30351u)), u_input.a.x, 1u), u_input.a.wxz, var_0.c.b.xzz), ~u_input.a.ywz) << (~(~_wgslsmith_clamp_u32(38180u, u_input.a.x, u_input.a.x) << (u_input.a.x % 32u)) % 32u);
    global3 = _wgslsmith_dot_vec4_u32(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 3561u, 1113u, 0u), u_input.a)), firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(~u_input.a.x, ~54821u, _wgslsmith_dot_vec2_u32(u_input.a.ww, global1[_wgslsmith_index_u32(u_input.a.x, 2u)]), ~u_input.a.x), _wgslsmith_div_vec4_u32(abs(u_input.a), u_input.a | vec4<u32>(u_input.a.x, u_input.a.x, 0u, 5994u)), vec4<u32>(~u_input.a.x, 1u, u_input.a.x, u_input.a.x))));
    var var_2 = all(vec2<bool>(!(u_input.a.x > u_input.a.x), func_3(any(vec2<bool>(var_0.a.a.x, var_0.c.b.x)), var_0.b, _wgslsmith_mod_u32(4294967295u, u_input.a.x)).x)) || true;
    var_1 = u_input.a.x;
    var var_3 = var_0.b.d.x;
    var var_4 = select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.a.x)) <= -211f, any(var_0.c.b.xx), 0u > (_wgslsmith_mod_u32(u_input.a.x, 4294967295u) >> (~43132u % 32u))) && var_0.a.a.x;
    let var_5 = func_1(Struct_2(!(!(!vec4<bool>(true, var_0.a.a.x, var_0.b.b.x, var_0.a.a.x))), select((vec4<i32>(var_0.b.e, var_0.a.b.x, 2147483647i, 1i) & vec4<i32>(0i, -8415i, var_0.a.b.x, var_0.a.b.x)) >> (firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) % vec4<u32>(32u)), countOneBits(abs(var_0.a.b)), var_0.c.b.x))).a;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.b.x, 1u, ~var_5.b.x, vec2<i32>(1i, -_wgslsmith_clamp_i32(var_5.b.x & var_5.b.x, var_0.b.e, _wgslsmith_sub_i32(-39593i, -5718i))), var_0.b.c);
}

