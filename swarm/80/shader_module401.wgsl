struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(1u);

var<private> global1: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(false, vec2<u32>(0u, 4294967295u), vec3<bool>(false, false, false)), Struct_1(false, vec2<u32>(1u, 1u), vec3<bool>(true, true, false)), Struct_1(false, vec2<u32>(8487u, 4294967295u), vec3<bool>(false, true, true)), Struct_1(true, vec2<u32>(210u, 76748u), vec3<bool>(true, false, false)), Struct_1(false, vec2<u32>(9025u, 4294967295u), vec3<bool>(false, false, false)));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_add_u32(1289u, 1u);
    global0 = Struct_2(~var_0);
    global0 = Struct_2(u_input.c);
    global1 = array<Struct_1, 5>();
    let var_1 = Struct_4(Struct_1(!(!all(vec2<bool>(false, false))), vec2<u32>(1u, var_0), vec3<bool>(true, true, true)));
    return var_1.a.b.x;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_3(Struct_2(~max(global0.a, max(global0.a, 4294967295u))), global1[_wgslsmith_index_u32(~(43190u & _wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.c, 59449u, global0.a), ~global0.a)), 5u)], global1[_wgslsmith_index_u32(max(global0.a, func_3()), 5u)]);
    global1 = array<Struct_1, 5>();
    var var_1 = var_0.c.a;
    global0 = var_0.a;
    var var_2 = u_input.c;
    return var_0.a;
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> bool {
    let var_0 = select(vec3<i32>(countOneBits(select(-11521i, u_input.d.x, true)), _wgslsmith_sub_i32(~(~(-1i)), min(u_input.a, u_input.a ^ u_input.d.x)), _wgslsmith_clamp_i32(-8499i, max(~(-1i), -1i), _wgslsmith_dot_vec3_i32(vec3<i32>(-24993i, -2147483647i, 0i), abs(u_input.d)))), countOneBits(vec3<i32>(u_input.d.x, u_input.a, u_input.a)), vec3<bool>(func_3() < ~arg_1.a, true, false));
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(arg_0, arg_0), 148f) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1976f, _wgslsmith_f_op_f32(round(arg_0))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(550f, arg_0))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-910f, arg_0))), true)))));
    var var_2 = u_input.d.zz;
    global1 = array<Struct_1, 5>();
    var var_3 = all(!(!select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), false), select(true, false, true))));
    return true;
}

fn func_1(arg_0: vec3<i32>) -> vec3<bool> {
    var var_0 = all(vec3<bool>(all(vec2<bool>(false, false)), func_4(_wgslsmith_f_op_f32(trunc(-224f)), func_2()), true)) | true;
    return vec3<bool>(false, !(!any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false)))), func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1489f - -624f) + -1073f) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1281f + -606f)))), Struct_2(firstLeadingBit(reverseBits(60316u)))));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: vec3<u32>) -> Struct_2 {
    var var_0 = !arg_0.x;
    global0 = func_2();
    global0 = func_2();
    var var_1 = ~(~_wgslsmith_dot_vec4_u32(~vec4<u32>(global0.a, 4294967295u, 42258u, 24070u) >> (~vec4<u32>(arg_2.x, u_input.c, 30296u, arg_1.a.b.x) % vec4<u32>(32u)), ~_wgslsmith_div_vec4_u32(vec4<u32>(1u, arg_1.a.b.x, u_input.c, 0u), vec4<u32>(56493u, 1u, 10186u, 1u))));
    let var_2 = ~vec4<u32>(~0u, 47468u, 0u, _wgslsmith_dot_vec4_u32(~(vec4<u32>(arg_1.a.b.x, u_input.c, 0u, 69464u) | vec4<u32>(31338u, 4777u, u_input.c, 1u)), vec4<u32>(select(u_input.c, arg_2.x, false), ~arg_2.x, arg_2.x << (global0.a % 32u), arg_1.a.b.x)));
    return Struct_2(arg_1.a.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec2_i32(~_wgslsmith_mod_vec2_i32(u_input.d.yy, _wgslsmith_sub_vec2_i32(select(u_input.d.yy, vec2<i32>(u_input.b, -14051i), vec2<bool>(false, true)), min(u_input.d.zx, vec2<i32>(0i, u_input.d.x)))), vec2<i32>(-(~(~1i)), u_input.d.x));
    var var_1 = func_5(select(!select(vec3<bool>(true, true, true), func_1(vec3<i32>(-2147483647i, 11989i, u_input.d.x)), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false)), select(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, false), true), vec3<bool>(true, true, false)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -478f))) >= 1497f), Struct_4(Struct_1(true, _wgslsmith_div_vec2_u32(~vec2<u32>(u_input.c, 4294967295u), ~vec2<u32>(64057u, 1u)), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), global0.a < u_input.c))), ~vec3<u32>(firstTrailingBit(global0.a) & abs(global0.a), reverseBits(1u), _wgslsmith_sub_u32(0u, _wgslsmith_mod_u32(u_input.c, global0.a))));
    let var_2 = Struct_4(Struct_1(false, _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(var_1.a, var_1.a), ~vec2<u32>(var_1.a, 0u)), ~(~vec2<u32>(u_input.c, 62866u))), select(vec3<bool>(true, any(vec4<bool>(false, true, false, false)), true), vec3<bool>(any(vec4<bool>(true, false, false, true)), select(true, false, true), any(vec2<bool>(false, true))), true)));
    var_0 = ~u_input.a;
    let var_3 = all(select(vec4<bool>(!var_2.a.c.x, false, !(!var_2.a.c.x), false), vec4<bool>(true, (var_2.a.a & true) & var_2.a.c.x, !(false | var_2.a.a), var_2.a.c.x), !var_2.a.c.x));
    let var_4 = Struct_3(func_5(var_2.a.c, Struct_4(var_2.a), ~vec3<u32>(global0.a, _wgslsmith_mult_u32(0u, 4294967295u), _wgslsmith_div_u32(981u, var_2.a.b.x))), var_2.a, Struct_1(false, vec2<u32>(~min(global0.a, 52185u), 4294967295u), select(!(!var_2.a.c), var_2.a.c, any(select(var_2.a.c.yz, vec2<bool>(true, true), vec2<bool>(true, true))))));
    var var_5 = _wgslsmith_f_op_f32(-685f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f - -586f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(194f * 1000f)))));
    global1 = array<Struct_1, 5>();
    let var_6 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.a.b.x, firstLeadingBit(3535u >> (var_4.c.b.x % 32u)), firstTrailingBit(~7244u)), _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(var_4.b.b.x, 1u, var_4.b.b.x), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 98723u, 114566u), vec3<u32>(var_6.b.x, 56378u, u_input.c))), select(vec3<u32>(var_4.c.b.x, 4294967295u, 0u), vec3<u32>(var_2.a.b.x, u_input.c, 99060u), vec3<bool>(var_6.a, var_2.a.a, false)) << (~vec3<u32>(u_input.c, 0u, 0u) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_6.b.x, 1u, var_4.a.a), vec3<u32>(0u, 6750u, u_input.c) | vec3<u32>(var_4.c.b.x, global0.a, var_2.a.b.x), vec3<u32>(36446u, var_6.b.x, var_1.a)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-2607f)), _wgslsmith_f_op_f32(-1415f * -1217f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1041f, _wgslsmith_div_f32(1795f, -890f))), _wgslsmith_f_op_f32(1291f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f * 1902f)))), _wgslsmith_f_op_f32(f32(-1f) * -2434f)), vec3<u32>(~(var_6.b.x ^ ~global0.a), min(~_wgslsmith_clamp_u32(14427u, 71244u, 105699u), ~68424u), ~_wgslsmith_sub_u32(var_6.b.x, ~var_4.c.b.x)), min(max(-(~vec3<i32>(u_input.a, -2147483647i, 34206i)), vec3<i32>(-1i) * -u_input.d), ~vec3<i32>(max(36903i, -1i), -u_input.d.x, 1i >> (1u % 32u))), vec3<f32>(1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(683f, -1000f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f + 1189f)))));
}

