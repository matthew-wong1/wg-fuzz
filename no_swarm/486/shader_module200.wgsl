struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct Struct_5 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
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

var<private> global0: f32;

var<private> global1: array<Struct_4, 31>;

var<private> global2: Struct_5;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec2<i32>) -> i32 {
    global0 = -2137f;
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-714f, 171f)))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + _wgslsmith_f_op_f32(ceil(-422f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -1165f) + _wgslsmith_f_op_f32(f32(-1f) * -272f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 2050f))))));
    var var_2 = -reverseBits(_wgslsmith_sub_vec2_i32(arg_1, select(arg_1, vec2<i32>(arg_1.x, arg_1.x), any(vec3<bool>(arg_0, false, false)))));
    let var_3 = 0i > max(1i & var_2.x, ~firstTrailingBit(firstLeadingBit(28576i)));
    return _wgslsmith_clamp_i32(-firstLeadingBit(6123i), _wgslsmith_div_i32(var_2.x, 1i), var_2.x);
}

fn func_2(arg_0: u32) -> Struct_4 {
    var var_0 = vec4<bool>(!(global2.a.x == (93486u & arg_0)), false, firstLeadingBit(-17654i) < ~func_3(true, max(vec2<i32>(1i, 23750i), vec2<i32>(-21806i, 37927i))), true);
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-440f, 1442f))) + -288f)), _wgslsmith_f_op_f32(1651f - _wgslsmith_f_op_f32(round(376f))), !all(select(select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(true, var_0.x, false), true), select(var_0.xyx, var_0.yyy, true), select(var_0.wwx, vec3<bool>(var_0.x, var_0.x, false), var_0.x)))));
    var var_2 = global1[_wgslsmith_index_u32(arg_0, 31u)];
    let var_3 = Struct_4(var_2.a, Struct_3(var_2.b.a, 61328u, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(66343u, arg_0), _wgslsmith_dot_vec3_u32(u_input.a.yxy, var_2.a.e)), select(var_2.a.a.b.yy ^ global2.a, firstTrailingBit(var_2.a.d.wy), var_2.b.a > -1i)), vec3<f32>(_wgslsmith_f_op_f32(var_2.b.d.x - _wgslsmith_f_op_f32(floor(502f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(438f * -987f))), 205f)));
    let var_4 = _wgslsmith_clamp_vec3_i32(~(~(~abs(vec3<i32>(-21139i, var_2.b.a, 1i)))), vec3<i32>(1i, 1i, var_2.b.a), firstTrailingBit(min(countOneBits(~vec3<i32>(1i, var_3.b.a, -1i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, var_2.b.a, 0i), vec3<i32>(var_2.b.a, 12617i, -1715i), vec3<i32>(-75140i, 23098i, var_2.b.a) & vec3<i32>(8114i, 2147483647i, var_2.b.a)))));
    return global1[_wgslsmith_index_u32(reverseBits(~4294967295u), 31u)];
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_4, arg_3: u32) -> Struct_5 {
    var var_0 = select(select(select(select(vec4<bool>(arg_1.a, false, true, arg_2.a.b.a), !vec4<bool>(arg_2.a.b.a, false, arg_1.a, arg_2.a.a.a), vec4<bool>(arg_2.a.b.a, arg_1.a, arg_2.a.a.a, arg_1.a)), vec4<bool>(false, true, !arg_2.a.c.a, any(vec2<bool>(false, arg_1.a))), arg_2.a.c.a), !vec4<bool>(true, !arg_1.a, arg_2.a.c.a, arg_2.a.a.a), any(!select(vec4<bool>(arg_1.a, arg_2.a.b.a, false, true), vec4<bool>(arg_1.a, arg_1.a, arg_2.a.c.a, false), vec4<bool>(false, true, arg_1.a, true)))), vec4<bool>(func_2(u_input.c.x).a.b.a, all(!select(vec3<bool>(true, false, arg_1.a), vec3<bool>(arg_2.a.b.a, arg_2.a.b.a, false), vec3<bool>(arg_2.a.c.a, arg_1.a, arg_1.a))), !any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), arg_2.a.b.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.d.x)) <= _wgslsmith_f_op_f32(exp2(arg_2.b.d.x))), vec4<bool>(all(select(!vec4<bool>(arg_1.a, arg_2.a.c.a, false, arg_2.a.b.a), vec4<bool>(true, true, false, arg_2.a.c.a), true)), arg_2.b.d.x < _wgslsmith_div_f32(arg_2.b.d.x, _wgslsmith_f_op_f32(max(arg_2.b.d.x, arg_2.b.d.x))), arg_2.a.c.a, !(!any(vec2<bool>(true, true)))));
    var var_1 = ~51597u;
    global1 = array<Struct_4, 31>();
    let var_2 = global1[_wgslsmith_index_u32(0u, 31u)];
    var var_3 = Struct_4(Struct_2(Struct_1(false, ~(~vec3<u32>(84400u, 35449u, 46399u))), var_2.a.c, func_2(firstLeadingBit(31410u)).a.a, vec4<u32>(39268u, 45775u, 0u, var_2.a.d.x), max(var_2.a.e, u_input.b)), arg_2.b);
    return Struct_5(vec2<u32>(arg_2.b.b, var_2.b.c));
}

fn func_1() -> vec3<i32> {
    let var_0 = func_4(u_input.c.x, Struct_1(1f < _wgslsmith_div_f32(-353f, _wgslsmith_f_op_f32(trunc(285f))), ~vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.b.xz, global2.a), countOneBits(4294967295u), _wgslsmith_sub_u32(51703u, u_input.b.x))), func_2(global2.a.x), _wgslsmith_clamp_u32(~(~4294967295u) >> (_wgslsmith_dot_vec2_u32(~u_input.a.xx, vec2<u32>(global2.a.x, u_input.b.x)) % 32u), 1u, _wgslsmith_div_u32(13652u, _wgslsmith_div_u32(~u_input.a.x, _wgslsmith_clamp_u32(global2.a.x, global2.a.x, 0u)))));
    var var_1 = 1u;
    return vec3<i32>(~25909i, -1i, countOneBits(abs(~min(1i, 1i))));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_2) -> Struct_2 {
    var var_0 = select(select(!select(select(vec3<bool>(false, false, true), vec3<bool>(arg_1.b.a, arg_1.b.a, arg_1.b.a), vec3<bool>(false, true, false)), vec3<bool>(true, arg_1.c.a, arg_1.a.a), arg_1.a.a || true), vec3<bool>(arg_1.c.a, all(!vec4<bool>(true, arg_1.c.a, arg_1.a.a, true)), arg_1.b.a), false || arg_1.a.a), vec3<bool>(arg_1.a.a, arg_1.a.a && any(!vec4<bool>(arg_1.c.a, arg_1.a.a, true, false)), ~_wgslsmith_mod_u32(global2.a.x, 56018u) == _wgslsmith_mod_u32(53084u | u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(25271u, 27278u), vec2<u32>(0u, u_input.c.x)))), select(!select(select(vec3<bool>(arg_1.a.a, arg_1.a.a, arg_1.b.a), vec3<bool>(false, false, arg_1.a.a), vec3<bool>(false, false, arg_1.b.a)), !vec3<bool>(arg_1.b.a, arg_1.a.a, arg_1.b.a), select(vec3<bool>(arg_1.b.a, true, arg_1.c.a), vec3<bool>(false, arg_1.c.a, arg_1.b.a), vec3<bool>(true, arg_1.a.a, true))), vec3<bool>(arg_1.a.a, arg_1.c.a, arg_1.c.a), true));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(reverseBits(643u ^ arg_1.d.x) | ~u_input.b.x), arg_1.e.x), 31u)];
    var var_2 = var_1.b;
    var var_3 = _wgslsmith_f_op_vec3_f32(select(var_2.d, var_1.b.d, select(vec3<bool>(false, true, select(arg_1.a.a, arg_1.a.a, true)), !(!select(vec3<bool>(arg_1.c.a, var_1.a.b.a, true), vec3<bool>(arg_1.c.a, arg_1.c.a, var_1.a.a.a), var_1.a.a.a)), !vec3<bool>(true, var_1.b.a >= var_1.b.a, false))));
    let var_4 = Struct_5(func_4(var_1.a.e.x, func_2(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(var_1.a.d, u_input.a), 10047u)).a.c, global1[_wgslsmith_index_u32(~global2.a.x, 31u)], 4294967295u).a);
    return var_1.a;
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_5, arg_2: Struct_2, arg_3: Struct_2) -> vec2<u32> {
    global2 = func_4(~_wgslsmith_mult_u32(~u_input.c.x, ~arg_1.a.x), arg_3.b, Struct_4(arg_3, Struct_3((-2147483647i << (u_input.a.x % 32u)) & _wgslsmith_add_i32(0i, 0i), arg_1.a.x, global2.a.x, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1f, 1f, 1f))))), _wgslsmith_div_u32(_wgslsmith_div_u32(43763u << (_wgslsmith_sub_u32(4294967295u, 4294967295u) % 32u), 9081u), _wgslsmith_dot_vec2_u32(u_input.c, ~u_input.c << (vec2<u32>(u_input.b.x, global2.a.x) % vec2<u32>(32u)))));
    var var_0 = func_2(global2.a.x);
    global2 = func_4(var_0.b.b, arg_2.b, func_2(func_4(_wgslsmith_div_u32(~var_0.a.c.b.x, var_0.b.c), func_5(vec3<i32>(-2147483647i, var_0.b.a, var_0.b.a), func_5(vec3<i32>(-2430i, var_0.b.a, -11617i), arg_3)).c, Struct_4(func_5(vec3<i32>(var_0.b.a, var_0.b.a, var_0.b.a), arg_3), Struct_3(-1i, 4294967295u, var_0.b.c, vec3<f32>(var_0.b.d.x, var_0.b.d.x, -1185f))), var_0.b.b).a.x), 29214u);
    var var_1 = global2.a.x;
    let var_2 = arg_1;
    return vec2<u32>(abs(_wgslsmith_mod_u32(u_input.a.x & var_0.b.c, ~var_0.a.b.b.x)) >> (~(_wgslsmith_dot_vec4_u32(vec4<u32>(122948u, var_2.a.x, var_0.a.a.b.x, global2.a.x), vec4<u32>(arg_2.d.x, var_2.a.x, arg_3.c.b.x, 39287u)) ^ _wgslsmith_add_u32(19518u, var_2.a.x)) % 32u), arg_2.e.x);
}

fn func_7(arg_0: u32, arg_1: Struct_5, arg_2: bool) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_f32(min(668f, -734f));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(1i);
    global0 = _wgslsmith_f_op_f32(select(-2614f, _wgslsmith_f_op_f32(ceil(1f)), 1u <= u_input.c.x));
    let var_1 = ~global2.a;
    global2 = func_7(~34371u, Struct_5(func_6(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), Struct_5(u_input.b.yz), func_5(func_1(), func_2(12532u).a), Struct_2(func_5(vec3<i32>(24135i, -2147483647i, -1i), Struct_2(Struct_1(false, u_input.a.xwz), Struct_1(false, u_input.a.xwy), Struct_1(true, u_input.b), vec4<u32>(global2.a.x, 17084u, var_1.x, u_input.c.x), vec3<u32>(1u, global2.a.x, 13916u))).a, Struct_1(true, vec3<u32>(var_1.x, global2.a.x, 4294967295u)), Struct_1(false, vec3<u32>(global2.a.x, var_1.x, 1u)), u_input.a, func_5(vec3<i32>(54015i, -15318i, 30621i), Struct_2(Struct_1(false, u_input.b), Struct_1(true, u_input.b), Struct_1(false, u_input.b), u_input.a, vec3<u32>(u_input.b.x, 0u, var_1.x))).d.zyz))), true);
    let var_2 = _wgslsmith_sub_i32(-func_1().x & -2147483647i, _wgslsmith_mod_i32(func_1().x, -32881i));
    let var_3 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(-195f);
}

