struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: vec4<bool>, arg_2: vec3<i32>, arg_3: Struct_1) -> vec3<f32> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.a >> (4294967295u % 32u), ~21919u), vec2<u32>(1338u, countOneBits(arg_3.a)))));
    let var_1 = !arg_1;
    let var_2 = -arg_2;
    var var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(395f)) - _wgslsmith_f_op_f32(sign(-389f))) - -707f), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1322f, -910f)))))));
    var var_4 = _wgslsmith_mult_vec4_u32(abs(~select(select(vec4<u32>(55214u, arg_3.a, arg_3.a, var_0.a.a), vec4<u32>(arg_3.a, 4294967295u, 0u, var_0.a.a), true), vec4<u32>(1u, 4294967295u, arg_3.a, arg_3.a) | vec4<u32>(var_0.a.a, 4294967295u, arg_3.a, 10542u), select(arg_1, arg_1, arg_1.x))), vec4<u32>(~9712u, ~(~var_0.a.a), var_0.a.a, ~(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_3.a, var_0.a.a), vec3<u32>(64591u, 32038u, arg_3.a)) ^ ~var_0.a.a)));
    return _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(998f - _wgslsmith_f_op_f32(-453f - -1000f)))), -1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-1981f)))), 533f)))));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: i32) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(~(max(2147483647i, -2147483647i) >> (_wgslsmith_mult_u32(arg_0.x, arg_0.x) % 32u)), select(!vec4<bool>(arg_1.x, true, arg_1.x, false), select(select(vec4<bool>(false, false, arg_1.x, false), vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x), vec4<bool>(false, false, true, true)), !vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true)), arg_1.x), firstTrailingBit(vec3<i32>(-1i) * -vec3<i32>(17289i, -1i, 1i)), Struct_1(1u))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(872f, var_0.x, var_0.x, var_0.x), vec4<f32>(var_0.x, var_0.x, var_0.x, -353f)), vec4<f32>(638f, var_0.x, -1312f, 1085f), all(vec4<bool>(false, false, false, arg_1.x)))) + vec4<f32>(-1710f, 247f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(sign(-926f)))))) - vec4<f32>(var_0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1170f, 982f)))), -706f));
}

fn func_4(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: i32) -> vec2<u32> {
    var var_0 = vec3<i32>(arg_3, _wgslsmith_mod_i32(abs(_wgslsmith_add_i32(_wgslsmith_sub_i32(-1i, 27168i), _wgslsmith_add_i32(u_input.a.x, 2147483647i))), -2147483647i), -9919i);
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(arg_1));
    var var_2 = Struct_2(Struct_1(~(~arg_2.a & arg_2.a)));
    let var_3 = !(!any(vec4<bool>(true, true, true, true)));
    var_2 = Struct_2(Struct_1(1u));
    return ~max(abs(vec2<u32>(~var_2.a.a, 1u)), vec2<u32>(~arg_2.a, 1u));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = arg_2;
    let var_1 = Struct_2(Struct_1(select(38330u, ~max(arg_1.a.a, arg_3.x), any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true))))));
    var var_2 = vec2<i32>(-44751i, u_input.a.x);
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1612f)) * _wgslsmith_f_op_f32(f32(-1f) * -426f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-668f * 1328f) - -1000f), -1557f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-935f)) - _wgslsmith_f_op_f32(f32(-1f) * -1052f)), _wgslsmith_f_op_f32(-1116f + _wgslsmith_f_op_f32(select(2017f, _wgslsmith_f_op_f32(abs(-892f)), true)))));
    var var_4 = select(select(vec4<bool>(true, true, true, true), vec4<bool>(!(var_3.x <= var_3.x), var_2.x >= _wgslsmith_div_i32(var_2.x, 1i), arg_0.a > _wgslsmith_mod_u32(arg_3.x, 1769u), any(vec2<bool>(false, true))), select(vec4<bool>(var_2.x > 58260i, any(vec2<bool>(false, true)), true, all(vec3<bool>(false, false, true))), vec4<bool>(true, all(vec3<bool>(false, false, true)), true, true), !all(vec2<bool>(false, false)))), select(select(vec4<bool>(all(vec2<bool>(false, false)), true, true, true), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false)), false), select(vec4<bool>(true, true, any(vec3<bool>(true, false, true)), var_1.a.a == var_0.a.a), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), all(vec2<bool>(true, true))), select(!vec4<bool>(true, true, all(vec4<bool>(true, false, false, false)), false), select(vec4<bool>(all(vec4<bool>(false, true, true, true)), false, true, true), vec4<bool>(true, true, true, u_input.a.x <= 0i), vec4<bool>(any(vec4<bool>(true, true, false, true)), true, all(vec3<bool>(true, true, true)), select(true, true, false))), select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true), all(vec2<bool>(false, true)))));
    return Struct_1(3036u);
}

fn func_6(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(ceil(arg_1));
    var var_1 = Struct_2(func_5(Struct_1(1u), Struct_2(Struct_1(arg_0.a)), Struct_2(arg_0), ~select(vec2<u32>(0u, arg_0.a), vec2<u32>(3690u, 0u), vec2<bool>(false, true)) & reverseBits(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 77968u), vec2<u32>(61607u, arg_0.a)))));
    return func_5(func_5(Struct_1(reverseBits(arg_0.a)), Struct_2(func_5(func_5(Struct_1(0u), Struct_2(var_1.a), Struct_2(arg_0), vec2<u32>(15696u, arg_0.a)), Struct_2(var_1.a), Struct_2(arg_0), firstTrailingBit(vec2<u32>(var_1.a.a, arg_0.a)))), Struct_2(func_5(var_1.a, Struct_2(Struct_1(44753u)), Struct_2(Struct_1(8564u)), ~vec2<u32>(17862u, 4294967295u))), _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.a, max(1u, arg_0.a)), ~_wgslsmith_div_vec2_u32(vec2<u32>(arg_0.a, var_1.a.a), vec2<u32>(var_1.a.a, 1u)), ~firstLeadingBit(vec2<u32>(var_1.a.a, var_1.a.a)))), Struct_2(Struct_1(14096u)), Struct_2(arg_0), vec2<u32>(28244u, var_1.a.a));
}

fn func_1(arg_0: f32, arg_1: i32) -> Struct_2 {
    var var_0 = func_6(func_5(Struct_1((4294967295u >> (1u % 32u)) ^ _wgslsmith_clamp_u32(66027u, 13311u, 1u)), Struct_2(Struct_1(1u)), Struct_2(Struct_1(~0u)), func_4(arg_0, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-694f, 555f, -562f, arg_0)), _wgslsmith_f_op_vec4_f32(func_2(vec3<u32>(1u, 89568u, 0u), vec2<bool>(false, true), u_input.a.x))), Struct_1(firstLeadingBit(1u)), u_input.a.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0))));
    var_0 = Struct_1(var_0.a);
    let var_1 = Struct_2(Struct_1(var_0.a));
    var_0 = func_6(func_6(Struct_1(1u), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-2007f + arg_0)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(914f, arg_0)))));
    var_0 = func_6(func_6(func_5(func_6(func_5(var_1.a, var_1, var_1, vec2<u32>(var_0.a, 5010u)), _wgslsmith_f_op_vec3_f32(func_3(-8640i, vec4<bool>(false, true, false, true), vec3<i32>(1i, u_input.a.x, arg_1), var_1.a)).x), Struct_2(var_1.a), var_1, ~vec2<u32>(var_0.a, 56301u)), -120f), arg_0);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_f32(floor(128f)), 9717i);
    var var_1 = -(u_input.a.x << (~var_0.a.a % 32u));
    var_1 = ~_wgslsmith_div_i32(reverseBits(-2147483647i), -15435i);
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-1f)));
    var var_3 = ~26055u;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - var_2.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))), -746f));
}

