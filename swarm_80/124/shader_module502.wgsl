struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec3<bool>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<bool>,
    d: Struct_1,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_1;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> u32 {
    global0 = Struct_3(global0.d.e, select(~global0.d.e, _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(global1.e, select(vec2<i32>(global0.b.x, 73754i), vec2<i32>(global0.d.c, 0i), vec2<bool>(global0.d.d.x, false))), abs(global0.b)), true), global1.d, global0.d, !vec3<bool>(any(vec4<bool>(global0.d.d.x, false, global0.e.x, false)), !all(global1.d), false));
    var var_0 = Struct_2(select(_wgslsmith_mod_i32(min(global0.a.x, -2147483647i), firstTrailingBit(~(-2147483647i))), -(~_wgslsmith_div_i32(-1i, 8234i)), global0.c.x));
    var var_1 = _wgslsmith_mod_u32(~4294967295u, _wgslsmith_add_u32(_wgslsmith_clamp_u32(1u, 33120u, 1u), u_input.e));
    var_1 = ~max(_wgslsmith_add_u32(global0.d.a.x, global0.d.a.x), ~_wgslsmith_mult_u32(global1.b, global1.b)) | global0.d.a.x;
    let var_2 = Struct_3(vec2<i32>(-(~var_0.a), u_input.b), (global1.e & vec2<i32>(10060i, ~u_input.c.x)) ^ _wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(global0.d.e.x, global1.c)) ^ _wgslsmith_mult_vec2_i32(vec2<i32>(var_0.a, -2147483647i), vec2<i32>(2147483647i, -9158i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.a, -2147483647i), global0.a, u_input.c.zy) << (global1.a.yy % vec2<u32>(32u))), !global0.d.d, global0.d, global1.d);
    return countOneBits(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(51495u, 39044u, 0u) & vec3<u32>(global0.d.a.x, global0.d.a.x, global0.d.a.x))));
}

fn func_2(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_1) -> vec3<bool> {
    global1 = Struct_1(_wgslsmith_mod_vec3_u32(global1.a, min(global1.a, countOneBits(vec3<u32>(global1.a.x, arg_0, 100103u))) ^ vec3<u32>(firstTrailingBit(global0.d.b), _wgslsmith_mod_u32(0u, global0.d.a.x), func_3())), ~40077u, -6039i, arg_2.d, firstLeadingBit(reverseBits(u_input.d)));
    let var_0 = Struct_2(-2147483647i);
    global1 = Struct_1(reverseBits(~arg_2.a), 4294967295u, _wgslsmith_sub_i32(global1.c, global1.e.x), select(select(!(!vec3<bool>(global1.d.x, arg_2.d.x, true)), vec3<bool>(false, true, false), arg_2.d), global1.d, global1.d.x), vec2<i32>(-1i, ~0i));
    var var_1 = 2450i;
    global1 = Struct_1(min(~(vec3<u32>(4294967295u, global1.b, arg_2.a.x) >> ((global0.d.a >> (vec3<u32>(0u, arg_2.b, global1.a.x) % vec3<u32>(32u))) % vec3<u32>(32u))), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, 60068u, global1.a.x) >> (vec3<u32>(60819u, 4294967295u, 0u) % vec3<u32>(32u)), arg_2.a)), ~(~(_wgslsmith_mult_u32(25186u, arg_2.a.x) << (1u % 32u))), u_input.b, !arg_2.d, max(countOneBits(u_input.d), firstLeadingBit(min(u_input.c.xx, vec2<i32>(arg_1.x, u_input.c.x)) & ~global1.e)));
    return vec3<bool>(true, select(global0.d.d.x, true, any(vec3<bool>(true, true, false))), !(!arg_2.d.x));
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: vec3<f32>, arg_3: Struct_1) -> vec3<bool> {
    global0 = Struct_3(vec2<i32>(_wgslsmith_mult_i32(-1i, global1.c), abs(global0.a.x)), select(vec2<i32>(arg_3.e.x, -_wgslsmith_clamp_i32(1i, global1.e.x, arg_3.c)), countOneBits(-vec2<i32>(global1.e.x, u_input.b)) << (global1.a.xy % vec2<u32>(32u)), vec2<bool>(global0.d.d.x, (global0.e.x != arg_3.d.x) && true)), !(!select(func_2(0u, vec4<i32>(global0.d.c, 23154i, 36666i, -5989i), Struct_1(global1.a, 4294967295u, arg_3.c, arg_3.d, vec2<i32>(-24477i, u_input.d.x))), vec3<bool>(arg_3.d.x, arg_3.d.x, global1.d.x), global0.e)), arg_3, vec3<bool>(global0.d.d.x, !(all(global1.d.yz) && any(vec2<bool>(global0.d.d.x, false))), select(true, true, false)));
    let var_0 = !vec2<bool>(all(select(global1.d, vec3<bool>(true, false, false), global1.d.x)) && false, any(vec4<bool>(false | arg_3.d.x, all(vec2<bool>(arg_3.d.x, true)), false | global1.d.x, arg_3.d.x)));
    global1 = Struct_1(vec3<u32>(36851u, arg_0, ~(~(~0u))), 52263u, global0.d.e.x, vec3<bool>(!global1.d.x, false, false), _wgslsmith_mod_vec2_i32(global1.e, arg_3.e));
    var var_1 = _wgslsmith_f_op_vec2_f32(arg_2.xy + _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(arg_1))))), arg_2.xz));
    var var_2 = arg_3;
    return vec3<bool>(!(arg_1 == _wgslsmith_f_op_f32(trunc(-1000f))), true, any(global0.e.zx));
}

fn func_4(arg_0: u32, arg_1: vec3<bool>, arg_2: vec3<u32>, arg_3: vec4<f32>) -> Struct_1 {
    global0 = Struct_3(vec2<i32>(14992i, 9910i), ~select((vec2<i32>(global1.e.x, global1.e.x) & vec2<i32>(-30742i, global0.d.e.x)) ^ (vec2<i32>(u_input.d.x, global1.c) & global1.e), abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, -2147483647i), vec2<i32>(1i, global0.d.c), vec2<i32>(global1.c, u_input.d.x))), !(!arg_1.x)), global0.e, Struct_1(~_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2.x, arg_0, u_input.a), vec3<u32>(4294967295u, global0.d.b, arg_2.x), firstLeadingBit(vec3<u32>(1u, 4294967295u, 0u))), 8960u, ~(-_wgslsmith_add_i32(global1.c, -2147483647i)), !(!vec3<bool>(arg_1.x, false, true)), vec2<i32>(~abs(0i), ~0i ^ reverseBits(global0.d.c))), select(arg_1, global0.e, all(!(!vec4<bool>(false, true, arg_1.x, false)))));
    var var_0 = arg_1.x;
    var var_1 = func_2(~0u, -(~(-vec4<i32>(u_input.d.x, -21947i, global1.e.x, u_input.d.x) << (~vec4<u32>(global0.d.a.x, arg_0, 4294967295u, global0.d.a.x) % vec4<u32>(32u)))), Struct_1(vec3<u32>(~(~13622u), global1.a.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, arg_0), vec2<u32>(arg_2.x, global1.b))), 18508u, min(firstTrailingBit(global0.d.c), -46606i), select(!(!vec3<bool>(true, true, arg_1.x)), func_1(~10401u, _wgslsmith_f_op_f32(-arg_3.x), vec3<f32>(109f, -1176f, 502f), Struct_1(vec3<u32>(4294967295u, 11787u, arg_0), u_input.a, 1287i, vec3<bool>(true, arg_1.x, global1.d.x), global0.b)), global0.e.x), u_input.c.zy)).x;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-860f + arg_3.x));
    global1 = Struct_1(vec3<u32>(16629u, 81189u, 37711u), _wgslsmith_dot_vec3_u32(~global1.a, _wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(arg_2.x, 2837u, u_input.a)), arg_2)), abs(abs(0i)), !func_2(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(global0.d.a.zx, vec2<u32>(1u, 31717u)), arg_2.yx), ~(~vec4<i32>(0i, -7165i, -43426i, 21714i)), Struct_1(abs(vec3<u32>(87560u, global1.a.x, 0u)), arg_2.x & arg_2.x, -21091i ^ u_input.c.x, func_2(arg_0, vec4<i32>(15359i, 11485i, 1i, u_input.c.x), Struct_1(global0.d.a, 1u, -2147483647i, vec3<bool>(false, true, arg_1.x), vec2<i32>(u_input.b, -15662i))), u_input.d)), firstLeadingBit(-global1.e));
    return global0.d;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> StorageBuffer {
    var var_0 = firstTrailingBit(abs(vec4<u32>(~(~arg_1.b), 1u, arg_1.b, arg_1.b >> (49825u % 32u))));
    global0 = Struct_3(vec2<i32>(-2147483647i, arg_1.e.x), reverseBits(vec2<i32>(_wgslsmith_mod_i32(firstTrailingBit(u_input.d.x), global1.c), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-43663i, 0i), global0.a), vec2<i32>(66579i, 62555i)))), !arg_0.d, arg_0, func_1((global1.b & global0.d.b) & ~arg_1.b, 1260f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1181f, 246f, -550f))))), Struct_1(select(select(vec3<u32>(1u, 15820u, global1.b), vec3<u32>(var_0.x, 0u, 30400u), global0.e.x), vec3<u32>(u_input.a, u_input.e, 343u), !vec3<bool>(arg_1.d.x, false, arg_0.d.x)), 4294967295u, ~2147483647i >> (_wgslsmith_clamp_u32(1u, 26407u, 21785u) % 32u), select(select(vec3<bool>(false, true, arg_0.d.x), vec3<bool>(arg_1.d.x, global1.d.x, global0.d.d.x), vec3<bool>(false, true, true)), !global0.c, global0.d.b > 82590u), firstLeadingBit(-u_input.d))));
    var var_1 = func_4(u_input.a & ~arg_0.b, vec3<bool>(true, all(select(!vec4<bool>(arg_1.d.x, arg_0.d.x, false, arg_1.d.x), !vec4<bool>(false, arg_0.d.x, true, arg_1.d.x), select(global0.e.x, global1.d.x, global1.d.x))), arg_1.d.x), vec3<u32>(~var_0.x, (39635u & ~arg_0.b) >> (_wgslsmith_mult_u32(~49113u, ~var_0.x) % 32u), 47008u), vec4<f32>(_wgslsmith_f_op_f32(abs(-662f)), _wgslsmith_f_op_f32(-1071f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(390f * -593f) + -125f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(120f + 754f) + 1f) * 1222f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1404f * -1048f) - _wgslsmith_f_op_f32(-977f * _wgslsmith_f_op_f32(round(453f))))));
    let var_2 = _wgslsmith_mult_vec4_u32(max(min(countOneBits(~vec4<u32>(global0.d.b, 1u, arg_1.b, arg_1.a.x)), vec4<u32>(abs(global1.b), global0.d.a.x, 14468u, 21181u)), ~vec4<u32>(max(0u, var_1.b), 0u, 30633u, 99494u)), countOneBits(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e, 98072u, 83564u, var_0.x), vec4<u32>(25717u, global1.b, global0.d.a.x, global0.d.a.x)))));
    let var_3 = -reverseBits(~(~(~vec4<i32>(var_1.e.x, -66052i, global1.c, arg_1.c))));
    return StorageBuffer(_wgslsmith_clamp_vec2_i32(-min(vec2<i32>(2147483647i, u_input.b), arg_0.e) | -_wgslsmith_mod_vec2_i32(vec2<i32>(global1.c, -1i), var_1.e), -(~(-vec2<i32>(global1.e.x, -2147483647i))), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2469i, 28239i, u_input.d.x, 22145i), ~vec4<i32>(-24069i, global1.e.x, arg_1.c, -40751i)), -33668i)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(func_4(~44699u, select(global1.d, select(!vec3<bool>(global0.e.x, global0.c.x, global0.c.x), func_1(global0.d.a.x, 147f, vec3<f32>(2943f, 1507f, -1139f), global0.d), !global0.c), global1.d.x), global1.a, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1551f * 949f)), 451f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -569f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1158f)))), global0.d);
}

