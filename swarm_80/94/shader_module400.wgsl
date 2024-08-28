struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: bool,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: vec4<i32>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 133977u;

var<private> global1: Struct_4 = Struct_4(Struct_1(true), Struct_1(false), vec3<bool>(false, true, false), vec4<i32>(-1i, 2147483647i, 0i, -11746i));

var<private> global2: f32;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: u32, arg_1: vec2<f32>, arg_2: vec4<bool>, arg_3: vec4<bool>) -> vec2<f32> {
    let var_0 = arg_3;
    var var_1 = _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(1u), ~4294967295u, _wgslsmith_add_u32(~7661u, 26437u << (arg_0 % 32u)), 0u), ~vec4<u32>(_wgslsmith_sub_u32(u_input.d.x, 16875u), ~arg_0, _wgslsmith_mod_u32(60067u, u_input.d.x), 0u << (1u % 32u))), 9155u);
    let var_2 = arg_1.x;
    var var_3 = 0u;
    var var_4 = Struct_3(arg_1.x, var_2, arg_3.x, vec3<i32>(_wgslsmith_add_i32(global1.d.x, -_wgslsmith_dot_vec4_i32(global1.d, global1.d)), -22746i, select(-13823i, -654i, arg_2.x)), global1.a);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.b, -635f) * _wgslsmith_f_op_vec2_f32(-arg_1)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(arg_1))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(arg_1))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-520f, var_2))))))));
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: vec3<u32>, arg_3: bool) -> Struct_5 {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.a)));
    let var_0 = ~arg_2.x;
    var var_1 = Struct_1(false);
    var var_2 = _wgslsmith_sub_i32(-global1.d.x << (24767u % 32u), -48386i);
    var var_3 = ~(~arg_0.d.x);
    return Struct_5(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1857f, arg_0.a))), arg_1), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(~4294967295u, vec2<f32>(arg_1, -499f), !vec4<bool>(true, arg_0.c, false, arg_3), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, global1.c.x), vec4<bool>(global1.a.a, arg_3, var_1.a, arg_3)))))), Struct_2(u_input.d));
}

fn func_4(arg_0: Struct_5, arg_1: vec2<i32>, arg_2: i32, arg_3: Struct_5) -> u32 {
    var var_0 = func_2(Struct_3(_wgslsmith_f_op_f32(-arg_3.a.x), 415f, !((u_input.b.x < 4294967295u) || true), vec3<i32>(~u_input.c.x, 1i, firstLeadingBit(max(-2147483647i, arg_1.x))), global1.a), arg_0.a.x, min(arg_3.b.a, vec3<u32>(~(~arg_0.b.a.x), _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.a, 12569u), _wgslsmith_dot_vec3_u32(arg_3.b.a, arg_0.b.a)), 4294967295u)), all(vec3<bool>(-2147483647i >= global1.d.x, true, true)) || select(all(!vec2<bool>(global1.a.a, true)), global1.a.a, abs(2147483647i) < _wgslsmith_dot_vec4_i32(global1.d, vec4<i32>(arg_1.x, 20957i, global1.d.x, -2147483647i))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a.x, -718f) - var_0.a.x) + var_0.a.x);
    var var_2 = global1.a;
    var var_3 = max(u_input.c, u_input.c);
    var var_4 = _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d.x, arg_0.b.a.x, ~_wgslsmith_clamp_u32(0u, 4294967295u, ~72436u)), _wgslsmith_add_vec3_u32(~_wgslsmith_sub_vec3_u32(arg_3.b.a, arg_0.b.a) ^ ~(~u_input.b), vec3<u32>(func_2(Struct_3(1000f, arg_3.a.x, global1.a.a, global1.d.yxw, global1.a), _wgslsmith_f_op_f32(var_1 * arg_3.a.x), arg_3.b.a, all(vec4<bool>(global1.c.x, global1.a.a, var_2.a, false))).b.a.x, abs(arg_0.b.a.x), ~_wgslsmith_dot_vec2_u32(arg_3.b.a.xx, vec2<u32>(4294967295u, var_0.b.a.x)))));
    return ~var_0.b.a.x;
}

fn func_1(arg_0: u32) -> bool {
    var var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(func_4(func_2(Struct_3(-566f, 119f, global1.c.x, u_input.c, Struct_1(global1.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -652f), u_input.d, true), reverseBits(abs(vec2<i32>(global1.d.x, -30056i))), (global1.d.x | global1.d.x) << (~arg_0 % 32u), Struct_5(vec2<f32>(992f, -704f), func_2(Struct_3(1324f, -396f, global1.b.a, vec3<i32>(global1.d.x, -37766i, u_input.c.x), global1.b), -764f, u_input.b, true).b)), 0u << (1u % 32u), 4294967295u, min(~_wgslsmith_sub_u32(arg_0, arg_0), ~(~1u))), _wgslsmith_add_vec4_u32(vec4<u32>(arg_0, arg_0, arg_0, _wgslsmith_dot_vec3_u32(~u_input.d, vec3<u32>(u_input.d.x, 1u, arg_0))), ~(~vec4<u32>(arg_0, u_input.b.x, 1u, 33248u)) ^ _wgslsmith_mult_vec4_u32(~vec4<u32>(arg_0, arg_0, arg_0, u_input.a), vec4<u32>(arg_0, 35110u, 21961u, 39716u))));
    var_0 = firstTrailingBit(~vec4<u32>(var_0.x, ~(~1u), var_0.x << (~var_0.x % 32u), u_input.d.x));
    let var_1 = global1.c.xx;
    let var_2 = select(select(vec4<bool>(!(!var_1.x), true, true, any(vec3<bool>(global1.c.x, var_1.x, global1.c.x))), select(!select(vec4<bool>(var_1.x, var_1.x, global1.b.a, global1.a.a), vec4<bool>(var_1.x, false, global1.c.x, true), false), select(select(vec4<bool>(true, var_1.x, false, var_1.x), vec4<bool>(true, var_1.x, false, var_1.x), global1.b.a), !vec4<bool>(true, true, global1.c.x, true), !vec4<bool>(true, global1.a.a, true, var_1.x)), !(!vec4<bool>(global1.a.a, false, var_1.x, var_1.x))), var_1.x), !select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, var_1.x, var_1.x, true), var_1.x), select(vec4<bool>(var_1.x, false, global1.b.a, false), vec4<bool>(false, global1.a.a, var_1.x, false), var_1.x), vec4<bool>(global1.c.x, true, var_1.x, var_1.x)), select(vec4<bool>(global1.a.a, var_1.x, global1.a.a, false), select(vec4<bool>(true, var_1.x, global1.a.a, global1.a.a), vec4<bool>(var_1.x, false, true, global1.c.x), vec4<bool>(true, false, global1.c.x, var_1.x)), select(vec4<bool>(var_1.x, true, var_1.x, true), vec4<bool>(true, false, false, var_1.x), vec4<bool>(true, false, global1.a.a, true))), true), select(!(!vec4<bool>(true, var_1.x, true, true)), !(!select(vec4<bool>(var_1.x, false, true, var_1.x), vec4<bool>(var_1.x, global1.c.x, true, true), true)), var_0.x < arg_0));
    var_0 = ~countOneBits(firstTrailingBit((vec4<u32>(1u, 28842u, 1u, 1u) | vec4<u32>(arg_0, var_0.x, 7331u, 7220u)) | select(vec4<u32>(4294967295u, 0u, var_0.x, 50063u), vec4<u32>(16125u, 0u, 0u, 87000u), false)));
    return var_1.x;
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: u32) -> Struct_4 {
    var var_0 = u_input.c.x;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-115f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -289f))))));
    global0 = arg_2 & 0u;
    let var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1653f, -149f, var_1.x, 559f))) - vec4<f32>(_wgslsmith_f_op_f32(floor(-258f)), -1000f, -817f, var_1.x)) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-849f, var_1.x, var_1.x, -1674f) + vec4<f32>(-347f, 1945f, var_1.x, var_1.x)) + _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, 419f, var_1.x, -1000f), vec4<f32>(var_1.x, var_1.x, -958f, -814f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -637f, var_1.x, var_1.x) + vec4<f32>(var_1.x, -673f, var_1.x, -612f))), select(vec4<bool>(arg_1.a, false, false, true), vec4<bool>(arg_1.a, global1.a.a, true, global1.c.x), global1.c.x))))));
    var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(276f * -970f), _wgslsmith_f_op_f32(round(-1236f)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, 1263f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, -689f)) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.x, 1656f)))) + _wgslsmith_div_vec2_f32(vec2<f32>(1116f, -810f), vec2<f32>(var_1.x, -1000f))))));
    return Struct_4(Struct_1(select(true, all(!vec4<bool>(true, arg_1.a, arg_1.a, false)), all(global1.c))), global1.b, !global1.c, vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(global1.d.zw, vec2<i32>(global1.d.x, global1.d.x)), _wgslsmith_clamp_i32(global1.d.x, 2147483647i, 1i), 0i), vec3<i32>(u_input.c.x, 0i, _wgslsmith_div_i32(2147483647i, 10100i))), ~u_input.c.x, -(~(u_input.c.x >> (58273u % 32u))), ~5202i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(~select(vec3<u32>(30845u, _wgslsmith_mult_u32(9286u, 1u), abs(35555u)), _wgslsmith_mod_vec3_u32(abs(u_input.b), min(u_input.b, u_input.d)), vec3<bool>(true, func_1(0u), u_input.d.x == 0u)), Struct_1(global1.b.a == (_wgslsmith_div_f32(219f, -2060f) < func_2(Struct_3(624f, -609f, true, vec3<i32>(-23106i, -2147483647i, global1.d.x), Struct_1(global1.a.a)), -277f, vec3<u32>(40383u, u_input.a, 66218u), global1.b.a).a.x)), _wgslsmith_mult_u32(~(~min(u_input.a, u_input.d.x)), u_input.d.x << (~abs(u_input.d.x) % 32u)));
    var var_1 = func_5(u_input.d, Struct_1(all(select(vec4<bool>(global1.b.a, var_0.a.a, var_0.c.x, var_0.a.a), !vec4<bool>(false, global1.c.x, true, var_0.a.a), !vec4<bool>(global1.b.a, var_0.a.a, global1.b.a, var_0.c.x)))), ~12682u);
    var_0 = Struct_4(func_5(~(vec3<u32>(u_input.d.x, 1u, 6185u) >> (~u_input.d % vec3<u32>(32u))), func_5(vec3<u32>(u_input.a, u_input.b.x, 0u) | vec3<u32>(u_input.a, 4294967295u, u_input.a), var_0.a, u_input.d.x).a, firstLeadingBit(max(~85862u, 1u))).b, func_5(_wgslsmith_add_vec3_u32(~_wgslsmith_clamp_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, u_input.b.x, u_input.a), u_input.b), u_input.b), func_5(u_input.d, func_5(u_input.d, Struct_1(false), firstLeadingBit(u_input.d.x)).a, firstTrailingBit(17002u)).b, 1u).a, !var_1.c, -(~(-vec4<i32>(0i, var_0.d.x, var_1.d.x, 47526i) << (select(vec4<u32>(4294967295u, 34858u, u_input.a, u_input.d.x), vec4<u32>(1u, 4294967295u, 1u, 1u), global1.a.a) % vec4<u32>(32u)))));
    var_1 = func_5(vec3<u32>(9191u, 9297u, func_2(Struct_3(-1450f, -572f, global1.a.a, u_input.c, Struct_1(false)), -991f, select(u_input.b, vec3<u32>(u_input.b.x, u_input.d.x, 64959u), global1.a.a), true).b.a.x) << (min(~(u_input.b | vec3<u32>(u_input.a, 0u, 21070u)), ~vec3<u32>(u_input.d.x, 0u, u_input.b.x)) % vec3<u32>(32u)), var_0.a, func_4(func_2(Struct_3(_wgslsmith_f_op_f32(max(-966f, 825f)), _wgslsmith_div_f32(1007f, 844f), true, ~vec3<i32>(15433i, 0i, 1i), func_5(vec3<u32>(u_input.b.x, 5635u, u_input.a), var_1.b, u_input.d.x).a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -980f) - _wgslsmith_f_op_f32(ceil(1288f))), u_input.b | (u_input.d | u_input.b), var_0.c.x), func_5(firstLeadingBit(~u_input.b), Struct_1(true), _wgslsmith_dot_vec2_u32(vec2<u32>(31393u, 1u) & u_input.d.zy, _wgslsmith_div_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(u_input.b.x, u_input.a)))).d.xy, -(i32(-1i) * -1i) | ~var_1.d.x, func_2(Struct_3(_wgslsmith_f_op_f32(-712f + -699f), _wgslsmith_f_op_f32(ceil(-145f)), true, vec3<i32>(global1.d.x, -2147483647i, var_1.d.x), global1.a), _wgslsmith_f_op_f32(min(-1093f, 776f)), ~(u_input.b << (u_input.b % vec3<u32>(32u))), true)));
    let var_2 = -(-(~(-vec2<i32>(u_input.c.x, global1.d.x))) & -abs(~var_1.d.zz));
    var var_3 = global1.d;
    var_1 = Struct_4(Struct_1(true), func_5(vec3<u32>(u_input.b.x, 57794u, u_input.d.x) >> (~vec3<u32>(14906u, 17285u, u_input.b.x) % vec3<u32>(32u)), Struct_1(all(vec2<bool>(true, true))), ~func_2(Struct_3(-1038f, -780f, true, vec3<i32>(20371i, u_input.c.x, -61676i), var_0.a), 808f, _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.d.x), u_input.d), all(vec4<bool>(global1.a.a, false, false, global1.b.a))).b.a.x).b, select(var_1.c, var_1.c, -976i >= var_3.x), var_1.d);
    let var_4 = ~(~(~u_input.b) | reverseBits(u_input.d));
    var var_5 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(358f, _wgslsmith_f_op_f32(f32(-1f) * -2482f), -149f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2067f)) + 1186f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -306f), _wgslsmith_f_op_f32(-var_5.x), _wgslsmith_f_op_f32(floor(var_5.x))), var_5.xyz))));
}

