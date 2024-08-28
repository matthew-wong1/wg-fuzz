struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<u32>,
    d: u32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(-1140f, 809f, vec3<u32>(21871u, 4294967295u, 5956u), 4294967295u, vec3<u32>(64159u, 0u, 0u)), 116f, vec3<i32>(-32780i, 1i, 15159i));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> vec4<f32> {
    let var_0 = any(vec3<bool>(true, true, true));
    var var_1 = global0.b;
    let var_2 = Struct_2(global0.a, -270f, select(~vec3<i32>(1i, select(global0.c.x, global0.c.x, var_0), _wgslsmith_sub_i32(2147483647i, global0.c.x)), vec3<i32>(firstLeadingBit(1i), global0.c.x, -_wgslsmith_mult_i32(global0.c.x, 27723i)), vec3<bool>(var_0 != any(vec2<bool>(true, false)), (var_0 | false) && select(var_0, false, true), true)));
    var var_3 = var_2.c.x;
    var_1 = global0.b;
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -953f), global0.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b) - global0.a.a) - _wgslsmith_div_f32(-703f, -1045f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -935f)))));
}

fn func_4(arg_0: f32, arg_1: vec2<f32>, arg_2: i32, arg_3: vec4<f32>) -> vec3<u32> {
    let var_0 = ~(~global0.c.x);
    let var_1 = global0.c.zz;
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-155f))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3.x - arg_3.x), _wgslsmith_f_op_f32(arg_1.x - global0.a.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(u_input.a.x)).x))), ~firstTrailingBit(~vec3<u32>(u_input.a.x, u_input.b.x, global0.a.e.x)), 20766u, ~(~vec3<u32>(u_input.b.x, 59351u, 19337u) | vec3<u32>(u_input.a.x, u_input.b.x, u_input.b.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.a), _wgslsmith_f_op_f32(arg_0 * arg_0))))), vec3<i32>(0i, var_0, -_wgslsmith_add_i32(reverseBits(36869i), ~global0.c.x)));
    global0 = Struct_2(global0.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-381f, -184f) + _wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(-350f - _wgslsmith_f_op_f32(max(-222f, arg_3.x)))))), var_2.c);
    let var_3 = ~_wgslsmith_mod_vec3_i32(max(global0.c, var_2.c), var_2.c);
    return ~var_2.a.c;
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = false;
    global0 = Struct_2(Struct_1(948f, _wgslsmith_f_op_f32(-global0.b), func_4(-1092f, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1176f, global0.a.a)), vec2<f32>(1112f, 552f))), _wgslsmith_mult_i32(global0.c.x, global0.c.x) | 2147483647i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(global0.a.d)))), _wgslsmith_div_u32(global0.a.d, u_input.a.x), _wgslsmith_add_vec3_u32(vec3<u32>(1u, select(0u, arg_0.x, true), global0.a.c.x), _wgslsmith_div_vec3_u32(~vec3<u32>(53814u, 1u, 70529u), global0.a.e))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.a) - -1574f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(418f, -292f) * _wgslsmith_div_f32(966f, 753f)))), select(-global0.c << (arg_0.wwz % vec3<u32>(32u)), vec3<i32>(global0.c.x, firstTrailingBit(i32(-1i) * -2147483647i), max(_wgslsmith_div_i32(-1i, 2147483647i), firstLeadingBit(global0.c.x))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(true, false, false)), vec3<bool>(any(vec4<bool>(true, false, false, true)), true, true))));
    global0 = Struct_2(global0.a, _wgslsmith_f_op_f32(ceil(-451f)), global0.c >> (vec3<u32>(6944u, arg_0.x | abs(1u), ~abs(arg_0.x)) % vec3<u32>(32u)));
    var_0 = !all(vec2<bool>(true, !(-1164f <= global0.a.b)));
    var var_1 = _wgslsmith_f_op_f32(trunc(-483f));
    return global0.a;
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    var var_0 = countOneBits(_wgslsmith_dot_vec2_i32(-_wgslsmith_add_vec2_i32(-global0.c.yz, -vec2<i32>(1i, 73735i)), vec2<i32>(global0.c.x, -2157i) >> (vec2<u32>(select(arg_0.a.c.x, 0u, true), 54367u) % vec2<u32>(32u))));
    global0 = arg_0;
    global0 = arg_0;
    let var_1 = !(!(!select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false), all(vec2<bool>(true, true)))));
    let var_2 = arg_0;
    return Struct_1(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(865f))), vec3<u32>(_wgslsmith_mod_u32(func_2(vec4<u32>(4294967295u, 1u, 58469u, 4294967295u)).c.x, firstLeadingBit(~u_input.a.x)), _wgslsmith_mult_u32(~u_input.b.x << ((4294967295u >> (var_2.a.d % 32u)) % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 31683u, 4294967295u, 20436u), ~vec4<u32>(arg_0.a.e.x, var_2.a.e.x, 6749u, global0.a.c.x))), select(~firstTrailingBit(global0.a.d), var_2.a.c.x, all(select(vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, false, var_1.x, false), vec4<bool>(true, var_1.x, false, var_1.x))))), abs(55543u), ~(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 40241u, arg_0.a.c.x, 1u), vec4<u32>(38932u, arg_0.a.c.x, u_input.b.x, 54358u)), ~var_2.a.d, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, global0.a.c.x), vec3<u32>(var_2.a.e.x, 10922u, arg_0.a.e.x))) | _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(global0.a.e, global0.a.e, var_2.a.c), ~vec3<u32>(arg_0.a.c.x, var_2.a.c.x, 4294967295u))));
}

fn func_1(arg_0: bool, arg_1: vec4<i32>, arg_2: u32) -> i32 {
    global0 = Struct_2(func_5(Struct_2(func_2(vec4<u32>(0u, u_input.b.x, 4294967295u, arg_2)), global0.a.a, global0.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.b))) + -1000f), -arg_1.yww);
    global0 = Struct_2(Struct_1(global0.a.b, global0.a.b, ~(~vec3<u32>(20515u, 4294967295u, global0.a.d) >> (vec3<u32>(u_input.b.x, arg_2, global0.a.c.x) % vec3<u32>(32u))), 30834u, _wgslsmith_clamp_vec3_u32(abs(vec3<u32>(u_input.b.x, arg_2, arg_2)), max(vec3<u32>(0u, 0u, 0u), u_input.b ^ vec3<u32>(u_input.b.x, global0.a.e.x, arg_2)), vec3<u32>(1u, abs(arg_2), 29468u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.a)), ~_wgslsmith_mod_vec3_i32(~vec3<i32>(2147483647i, 13049i, global0.c.x), global0.c));
    global0 = Struct_2(global0.a, -2060f, ~global0.c);
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(479f + _wgslsmith_f_op_vec4_f32(func_3(17868u)).x))));
    let var_1 = Struct_2(func_5(Struct_2(Struct_1(_wgslsmith_f_op_f32(min(global0.b, 530f)), _wgslsmith_f_op_f32(ceil(global0.a.a)), u_input.b, ~20605u, global0.a.c ^ vec3<u32>(31837u, arg_2, arg_2)), global0.b, arg_1.zzw << (global0.a.c % vec3<u32>(32u)))), -330f, -(global0.c ^ (vec3<i32>(-1i) * -global0.c)));
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(global0.a.c.x, 98419u, _wgslsmith_sub_u32(4294967295u, ~global0.a.d) << (_wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(global0.a.e, u_input.b), ~(~vec3<u32>(10357u, 17948u, u_input.a.x))) % 32u));
    var var_1 = true;
    var var_2 = global0.a;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-336f, _wgslsmith_f_op_f32(select(global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -257f) * _wgslsmith_f_op_f32(207f + global0.b)), true))) - -459f);
    var_0 = var_2.c;
    var var_4 = Struct_2(global0.a, global0.b, vec3<i32>(select(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.c.x, -2911i, global0.c.x) << (vec3<u32>(0u, u_input.a.x, 0u) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, global0.c.x, -6590i), vec3<i32>(global0.c.x, global0.c.x, -1i))), global0.c.x, true || (global0.c.x < global0.c.x)), 1i, abs(_wgslsmith_clamp_i32(func_1(false, vec4<i32>(-2147483647i, global0.c.x, global0.c.x, -2147483647i), u_input.a.x), firstLeadingBit(global0.c.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-77550i, 1i, -18098i), global0.c)))));
    var var_5 = Struct_2(var_4.a, 1107f, reverseBits(vec3<i32>(72047i, select(global0.c.x, _wgslsmith_mod_i32(global0.c.x, global0.c.x), true), -(~1i))));
    var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(select(-var_5.c.x, var_5.c.x, true), ~global0.c.x, ~max(var_4.c.x | -29357i, -21093i));
}

