struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: u32) -> vec4<u32> {
    var var_0 = u_input.a;
    let var_1 = vec3<f32>(arg_1.b.x, _wgslsmith_f_op_f32(max(arg_1.b.x, arg_1.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.b.x, 522f))));
    var var_2 = -176f;
    var var_3 = 93309u;
    var var_4 = Struct_1(vec2<bool>(var_1.x > arg_1.b.x, any(select(select(vec4<bool>(false, false, false, arg_1.a.x), vec4<bool>(arg_1.a.x, true, arg_1.a.x, true), vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, arg_1.a.x)), vec4<bool>(true, true, true, true), true))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(sign(arg_1.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.b.x, -1511f)) - _wgslsmith_f_op_f32(abs(-516f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1806f, var_1.x), vec2<f32>(-179f, -749f)))))));
    return vec4<u32>(4294967295u, ~arg_0, 1u, abs(~arg_2 ^ 15120u)) >> (vec4<u32>((countOneBits(arg_0) >> (73118u % 32u)) >> (_wgslsmith_sub_u32(61772u, ~4294967295u) % 32u), firstLeadingBit(~firstTrailingBit(46684u)), ~countOneBits(29882u), _wgslsmith_dot_vec3_u32(vec3<u32>(18522u, arg_2, 4294967295u), ~vec3<u32>(3862u, 4294967295u, 65812u)) << (~firstLeadingBit(arg_0) % 32u)) % vec4<u32>(32u));
}

fn func_2() -> Struct_3 {
    var var_0 = u_input.a;
    var_0 = -2147483647i;
    let var_1 = countOneBits(_wgslsmith_dot_vec4_u32(reverseBits(func_3(~45252u, Struct_1(vec2<bool>(true, false), vec2<f32>(1000f, -277f)), 1739u)), ~vec4<u32>(max(4294967295u, 1u), min(4294967295u, 0u), _wgslsmith_mod_u32(1u, 1u), countOneBits(17604u))));
    var var_2 = Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(866f, 174f) * vec2<f32>(1299f, 354f))) * vec2<f32>(_wgslsmith_f_op_f32(ceil(-948f)), _wgslsmith_f_op_f32(-857f + -505f))), _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(-545f * 765f)), vec2<f32>(_wgslsmith_f_op_f32(734f - -272f), _wgslsmith_div_f32(1245f, -1137f)))), vec2<u32>(var_1, abs(var_1)), _wgslsmith_mod_i32(-26863i ^ u_input.a, select(_wgslsmith_mod_i32(u_input.a, u_input.a), u_input.a, -2147483647i >= (0i & u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(ceil(2912f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(805f))))))));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2251f), 139f);
    return Struct_3(_wgslsmith_f_op_vec2_f32(-var_2.a), var_2.b, var_2.c, _wgslsmith_f_op_f32(f32(-1f) * -512f));
}

fn func_4(arg_0: bool, arg_1: Struct_3) -> vec2<bool> {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(arg_1.a, arg_1.a), vec2<f32>(_wgslsmith_f_op_f32(arg_1.d - -1172f), -235f))))), arg_1.b << (vec2<u32>(arg_1.b.x ^ func_3(arg_1.b.x, Struct_1(vec2<bool>(arg_0, false), arg_1.a), arg_1.b.x).x, _wgslsmith_mult_u32(arg_1.b.x, 33605u) & _wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_1.b.x, arg_1.b.x, arg_1.b.x), vec4<u32>(66615u, 17972u, 0u, arg_1.b.x))) % vec2<u32>(32u)), ~_wgslsmith_add_i32(-func_2().c, -22200i), _wgslsmith_f_op_f32(trunc(1349f)));
    let var_1 = _wgslsmith_clamp_vec2_i32(reverseBits(select(vec2<i32>(-2147483647i, -15440i) ^ vec2<i32>(-2147483647i, var_0.c), vec2<i32>(-2147483647i, 0i), select(true, true, arg_0)) ^ firstTrailingBit(vec2<i32>(arg_1.c, u_input.a) ^ vec2<i32>(2147483647i, 13390i))), select(-(_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.c, arg_1.c), vec2<i32>(var_0.c, u_input.a)) >> (~vec2<u32>(0u, var_0.b.x) % vec2<u32>(32u))), ~vec2<i32>(46722i, -2147483647i), select(vec2<bool>(arg_0, true), !vec2<bool>(false, arg_0), vec2<bool>(true, true))), _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_add_i32(-1i, 0i), 2147483647i | var_0.c), ~(-vec2<i32>(2147483647i, var_0.c))), -((vec2<i32>(u_input.a, 1i) << (arg_1.b % vec2<u32>(32u))) & reverseBits(vec2<i32>(-15682i, arg_1.c)))));
    return select(!(!vec2<bool>(arg_0 & arg_0, all(vec3<bool>(false, false, true)))), select(select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(arg_0, arg_0), true), vec2<bool>(true, true), !arg_0), vec2<bool>(!arg_0, true)), vec2<bool>(!arg_0, arg_0), false), !(!select(vec2<bool>(arg_0, false), select(vec2<bool>(false, arg_0), vec2<bool>(arg_0, true), vec2<bool>(false, true)), false)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    var var_0 = min(_wgslsmith_clamp_i32(u_input.a, _wgslsmith_sub_i32(-12100i, min(30308i, 725i)), select(0i, (u_input.a ^ -1i) << (1u % 32u), !all(vec2<bool>(arg_0.a.x, false)))), u_input.a & reverseBits(-2147483647i));
    var_0 = firstTrailingBit(_wgslsmith_add_i32(u_input.a, firstTrailingBit(41255i)));
    var_0 = u_input.a;
    var_0 = -1i << (_wgslsmith_clamp_u32(1u, 939u, 21378u) % 32u);
    var_0 = abs(u_input.a);
    return Struct_2(Struct_1(!select(!vec2<bool>(arg_1.a.x, false), vec2<bool>(true, true), arg_0.a), arg_0.b), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + arg_0.b.x)), reverseBits(~(_wgslsmith_mult_u32(1u, 20750u) >> (1u % 32u))));
}

fn func_1() -> bool {
    let var_0 = func_5(Struct_1(func_4(all(vec2<bool>(true, true)), func_2()), vec2<f32>(-279f, 511f)), Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -701f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1000f))))));
    let var_1 = vec4<u32>(59120u, 1u, 4294967295u, var_0.d);
    var var_2 = func_5(func_5(func_5(Struct_1(vec2<bool>(false, var_0.a.a.x), var_0.a.b), var_0.b).a, Struct_1(vec2<bool>(true, true), _wgslsmith_div_vec2_f32(var_0.a.b, var_0.b.b))).a, var_0.b);
    var var_3 = var_0;
    let var_4 = var_0.a.b;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = !select(vec4<bool>(false, any(select(vec3<bool>(var_0, var_0, false), vec3<bool>(false, true, var_0), var_0)), true, true), !(!(!vec4<bool>(var_0, true, var_0, true))), !(true && var_0) && false);
    let var_2 = vec4<bool>(any(!(!vec4<bool>(false, true, false, var_0))) != (var_0 & var_0), var_0, !((all(var_1.zw) & true) & (func_5(Struct_1(var_1.yy, vec2<f32>(-864f, 1259f)), Struct_1(vec2<bool>(var_0, var_0), vec2<f32>(-1081f, 235f))).a.b.x != -717f)), var_1.x);
    var var_3 = _wgslsmith_div_f32(101f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -729f)))));
    var_3 = 976f;
    var var_4 = Struct_1(var_1.yy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -559f))))));
    let var_5 = func_5(Struct_1(vec2<bool>(all(!var_2), true), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.b.x, var_4.b.x) * var_4.b)), _wgslsmith_f_op_vec2_f32(var_4.b * var_4.b)))), Struct_1(var_2.xz, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_4.b.x, var_4.b.x), vec2<f32>(var_4.b.x, 1035f)) * var_4.b))).b;
    var var_6 = func_2();
    var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-253f)) + _wgslsmith_f_op_f32(step(var_4.b.x, -1000f))))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1162f + -473f) - _wgslsmith_div_f32(var_4.b.x, var_4.b.x)))), _wgslsmith_f_op_f32(-350f - var_4.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(min(~vec3<i32>(1i, -1i >> (1u % 32u), firstLeadingBit(18250i)), select(vec3<i32>(~var_6.c, -u_input.a, _wgslsmith_sub_i32(u_input.a, u_input.a)), vec3<i32>(-2147483647i, 35785i, reverseBits(u_input.a)), true)), ~var_6.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-826f + 956f), _wgslsmith_div_f32(-1433f, 489f), func_5(Struct_1(var_4.a, vec2<f32>(var_6.a.x, var_6.d)), var_5).c, _wgslsmith_div_f32(var_6.a.x, -918f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(254f, -1738f, var_6.d, -475f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(func_5(Struct_1(var_2.wx, vec2<f32>(var_5.b.x, var_4.b.x)), var_5).b.b.x)) * _wgslsmith_f_op_f32(floor(718f))));
}

