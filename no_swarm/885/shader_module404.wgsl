struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<bool>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 15>;

var<private> global1: vec2<u32> = vec2<u32>(1u, 4294967295u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    global1 = u_input.a.wx;
    let var_0 = -(~_wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(-41428i, 2147483647i)), countOneBits(vec2<i32>(-1i, 1074i)))) >> (vec2<u32>(1u, firstTrailingBit(58930u)) % vec2<u32>(32u));
    global0 = array<vec4<u32>, 15>();
    global1 = firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, global1.x), ~vec2<u32>(7592u, ~u_input.a.x), abs(select(vec2<u32>(u_input.a.x, global1.x), vec2<u32>(global1.x, u_input.a.x), false) << (_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(u_input.c, global1.x)) % vec2<u32>(32u)))));
    return -1000f;
}

fn func_2(arg_0: bool) -> vec4<bool> {
    global1 = ~u_input.a.ww;
    let var_0 = abs(min(firstLeadingBit(vec4<i32>(-1i, u_input.b, -21056i, u_input.b)), ~vec4<i32>(30700i, u_input.b, u_input.b, u_input.b)) >> (_wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, global1.x, global1.x, 1u), select(vec4<u32>(1u, 1u, global1.x, 1u), global0[_wgslsmith_index_u32(u_input.a.x, 15u)], true), vec4<u32>(1588u, 0u, u_input.c, 4294967295u)) % vec4<u32>(32u))) >> (~vec4<u32>(_wgslsmith_mult_u32(u_input.a.x, reverseBits(global1.x)), 0u, ~countOneBits(u_input.c), 38206u) % vec4<u32>(32u));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(1290f)), _wgslsmith_f_op_f32(func_3())))), select(u_input.a.x, u_input.a.x, true), select(select(!vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(arg_0, false, arg_0, false), select(vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(arg_0, false, false, arg_0), vec4<bool>(false, true, true, arg_0))), !(!vec4<bool>(false, false, arg_0, false)), all(vec4<bool>(false, arg_0, false, true))), _wgslsmith_dot_vec4_i32(-(vec4<i32>(10171i, 0i, 1i, -22275i) << (u_input.a % vec4<u32>(32u))), abs(vec4<i32>(17481i, -1i, 2147483647i, u_input.b)) & var_0)), arg_0, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(488f - _wgslsmith_f_op_f32(f32(-1f) * -591f))), _wgslsmith_mod_u32(u_input.a.x, u_input.a.x), select(!select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(arg_0, arg_0, false, arg_0)), select(select(vec4<bool>(false, false, false, true), vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(arg_0, arg_0, true, true)), vec4<bool>(true, arg_0, arg_0, arg_0), arg_0), any(vec4<bool>(false, true, false, arg_0))), _wgslsmith_div_i32(u_input.b, var_0.x)), select(vec2<bool>(select(any(vec4<bool>(arg_0, arg_0, arg_0, false)), all(vec4<bool>(false, false, true, false)), true), true), !select(select(vec2<bool>(arg_0, true), vec2<bool>(arg_0, arg_0), vec2<bool>(false, arg_0)), select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(arg_0, true)), arg_0));
    let var_2 = abs(_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.c.b, 0u, ~(~1u)), vec3<u32>(49131u, _wgslsmith_mod_u32(4294967295u, ~var_1.c.b), _wgslsmith_sub_u32(4294967295u, 42406u))));
    var var_3 = _wgslsmith_dot_vec2_i32(var_0.xy, vec2<i32>(-_wgslsmith_div_i32(_wgslsmith_mult_i32(var_0.x, var_1.c.d), u_input.b), ~0i));
    return !select(vec4<bool>(var_1.d.x, true, 91374u == ~var_2.x, var_1.a.c.x), var_1.c.c, ~1u < _wgslsmith_clamp_u32(~var_1.c.b, var_2.x, ~global1.x));
}

fn func_1(arg_0: vec2<bool>, arg_1: i32, arg_2: u32) -> Struct_2 {
    global1 = vec2<u32>(arg_2, ~(~_wgslsmith_mod_u32(4629u, u_input.c))) ^ u_input.a.yy;
    let var_0 = Struct_2(Struct_1(155f, ~_wgslsmith_mod_u32(global1.x, u_input.c) << (_wgslsmith_dot_vec2_u32(abs(u_input.a.wy), vec2<u32>(global1.x, global1.x)) % 32u), func_2(all(vec4<bool>(arg_0.x, true, true, false))), arg_1), true, Struct_1(-1988f, ~((global1.x ^ u_input.a.x) | 54325u), vec4<bool>(select(arg_0.x | arg_0.x, 0u != u_input.a.x, !arg_0.x), _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], u_input.a) < 4294967295u, true, arg_0.x), i32(-1i) * -59757i), arg_0);
    var var_1 = vec4<i32>(arg_1, ~(~0i), -_wgslsmith_sub_i32(-(~var_0.c.d), -arg_1), -(~countOneBits(2147483647i)) ^ u_input.b);
    let var_2 = var_0.a;
    let var_3 = Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3()))), -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.c.a))))), global1.x, !var_2.c, -(~firstTrailingBit(0i)) << (_wgslsmith_add_u32(u_input.c, var_2.b) % 32u));
    return var_0;
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_f32(min(arg_1.a.a, 495f)), arg_0 & arg_0, arg_1.c.c, ~_wgslsmith_add_i32(~_wgslsmith_add_i32(u_input.b, -12315i), reverseBits(5175i) << (arg_0 % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 15>();
    let var_0 = Struct_2(func_4(u_input.c, func_1(select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true), vec2<bool>(true, true)), u_input.b, 1u)), false, func_4(4294967295u, func_1(vec2<bool>(true, true), _wgslsmith_div_i32(i32(-1i) * -51653i, u_input.b), reverseBits(global1.x) | u_input.c)), vec2<bool>(true, true));
    global1 = _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.c.b, _wgslsmith_mod_u32(~u_input.a.x, 19171u)), u_input.a.zw), _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(~u_input.a.zyz, _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, global1.x, u_input.c), u_input.a.yyw)), ~(~4294967295u)), ~min(~vec2<u32>(18239u, 32328u), u_input.a.yx & vec2<u32>(var_0.c.b, 4294967295u))), max(_wgslsmith_sub_vec2_u32(~vec2<u32>(global1.x, global1.x), u_input.a.ww), max(vec2<u32>(_wgslsmith_mod_u32(0u, var_0.c.b), global1.x), u_input.a.yz)));
    var var_1 = var_0.c.d;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.a + _wgslsmith_div_f32(_wgslsmith_div_f32(-575f, var_0.c.a), _wgslsmith_f_op_f32(-217f * 262f))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c.a, 1452f) * var_0.c.a), -1031f))), _wgslsmith_dot_vec2_u32(~min(u_input.a.wx, u_input.a.wy), u_input.a.yy), vec4<bool>((false || var_0.d.x) == any(var_0.c.c.yyw), !(select(global1.x, 0u, false) > _wgslsmith_div_u32(0u, u_input.a.x)), true, !(var_0.d.x & var_0.c.c.x) & ((1i >= u_input.b) & var_0.c.c.x)), 0i << (~_wgslsmith_clamp_u32(func_4(u_input.a.x, Struct_2(Struct_1(var_0.c.a, 0u, var_0.a.c, u_input.b), var_0.d.x, var_0.a, vec2<bool>(var_0.c.c.x, true))).b, 20444u << (var_0.c.b % 32u), _wgslsmith_sub_u32(u_input.c, u_input.c)) % 32u));
    var var_3 = func_1(vec2<bool>(true, true), ~(func_4(func_4(var_2.b, Struct_2(Struct_1(295f, global1.x, var_0.c.c, 2147483647i), var_0.b, Struct_1(-1063f, var_0.a.b, vec4<bool>(var_2.c.x, false, var_2.c.x, true), 0i), vec2<bool>(var_0.b, var_2.c.x))).b, func_1(vec2<bool>(false, true), -29068i, 9501u)).d ^ abs(~var_2.d)), max(33617u, ~func_4(4294967295u, func_1(var_2.c.zy, var_2.d, 1531u)).b));
    let var_4 = var_3.a;
    var var_5 = func_1(func_1(!vec2<bool>(true, var_0.a.d == 1i), _wgslsmith_dot_vec4_i32(select(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.a.d, var_2.d, var_3.a.d, u_input.b), vec4<i32>(var_4.d, 2147483647i, 10070i, var_2.d), vec4<i32>(var_2.d, 0i, 0i, var_0.a.d)), ~vec4<i32>(1i, 2147483647i, 55409i, var_4.d), true), vec4<i32>(reverseBits(-21204i), _wgslsmith_mod_i32(u_input.b, var_3.a.d), -u_input.b, var_0.c.d << (11092u % 32u))), abs(14107u)).d, u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(~59551u, min(10341u, 1u)) ^ ~countOneBits(u_input.a.yy), abs(~u_input.a.yy)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.yzy);
}

