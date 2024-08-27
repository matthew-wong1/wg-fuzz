struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: vec3<u32>,
    d: i32,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_3) -> vec3<f32> {
    var var_0 = reverseBits(_wgslsmith_div_i32(arg_2.c, arg_1.x)) << (arg_0 % 32u);
    let var_1 = -685f;
    let var_2 = !(!(!(!select(vec3<bool>(false, false, arg_2.d.b.x), vec3<bool>(arg_2.e.b.x, arg_2.d.b.x, arg_2.e.b.x), arg_2.e.b.x))));
    var var_3 = Struct_4(!vec4<bool>(false, true, !any(vec4<bool>(arg_2.d.b.x, arg_2.d.b.x, var_2.x, false)), false), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1119f, _wgslsmith_f_op_f32(-arg_2.a.b.x), 135f, _wgslsmith_f_op_f32(-var_1)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1656f, -2036f, arg_2.a.b.x, 1165f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(1271f)), _wgslsmith_div_f32(var_1, -791f), _wgslsmith_f_op_f32(1099f + arg_2.a.e), var_1) * vec4<f32>(_wgslsmith_f_op_f32(trunc(var_1)), _wgslsmith_f_op_f32(min(arg_2.a.a, -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -628f), arg_2.a.a))));
    let var_4 = Struct_1(vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.b, u_input.b), u_input.b.x, ~arg_0, 4294967295u), vec2<bool>(any(!arg_2.e.b), false));
    return _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(-245f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_3.b.x - _wgslsmith_f_op_f32(822f * 647f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-774f - 1000f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(-366f, _wgslsmith_f_op_f32(-arg_2.a.e), !arg_2.e.b.x)), _wgslsmith_f_op_f32(min(-1402f, _wgslsmith_div_f32(304f, var_1))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1))))));
}

fn func_2(arg_0: vec4<i32>) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1136f, 818f)), -141f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-858f - -2330f)), -1440f))));
    let var_1 = Struct_3(Struct_2(var_0.x, _wgslsmith_f_op_vec3_f32(func_3(~(~u_input.a.x), vec3<i32>(20896i, 1i, _wgslsmith_sub_i32(-2147483647i, u_input.d.x)), Struct_3(Struct_2(var_0.x, vec3<f32>(844f, -383f, -742f), vec3<u32>(19480u, u_input.a.x, 5194u), arg_0.x, var_0.x), vec4<i32>(arg_0.x, -2147483647i, arg_0.x, -2147483647i), ~arg_0.x, Struct_1(vec4<u32>(22468u, 4294967295u, 1u, u_input.b.x), vec2<bool>(true, true)), Struct_1(vec4<u32>(u_input.a.x, u_input.b.x, 29741u, u_input.a.x), vec2<bool>(false, false))))), firstTrailingBit(vec3<u32>(~u_input.a.x, u_input.b.x, ~u_input.a.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(22741i, -54828i), -21439i, abs(-1i)), max(vec3<i32>(arg_0.x, arg_0.x, -2147483647i), vec3<i32>(0i, 16929i, -2147483647i))), var_0.x), arg_0, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(-reverseBits(arg_0.xy), _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(arg_0.yw, u_input.d), _wgslsmith_mult_vec2_i32(vec2<i32>(arg_0.x, arg_0.x), u_input.c.yz))), (countOneBits(vec2<i32>(u_input.c.x, 41102i)) >> (~u_input.a % vec2<u32>(32u))) ^ vec2<i32>(i32(-1i) * -2147483647i, u_input.c.x)), Struct_1(~min(min(vec4<u32>(u_input.a.x, u_input.a.x, 0u, 41258u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), ~vec4<u32>(u_input.b.x, u_input.b.x, u_input.a.x, u_input.a.x)), !vec2<bool>(true, any(vec4<bool>(true, true, true, false)))), Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(abs(1u), 0u, reverseBits(u_input.b.x), ~u_input.a.x), _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.b.x, 112330u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.a.x, u_input.a.x), vec4<u32>(45984u, u_input.b.x, u_input.a.x, u_input.a.x)), ~vec4<u32>(4294967295u, 1u, u_input.a.x, u_input.a.x))), vec2<bool>(u_input.b.x <= 4294967295u, all(vec2<bool>(true, true)))));
    var_0 = vec3<f32>(var_1.a.e, -1112f, 633f);
    let var_2 = Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.a.x, ~u_input.b.x, _wgslsmith_mod_u32(26422u, 56622u) ^ u_input.a.x), max(var_1.e.a, ~vec4<u32>(4294967295u, 15017u, 72644u, 0u))), !(!(!select(var_1.e.b, vec2<bool>(false, var_1.e.b.x), var_1.d.b.x))));
    var var_3 = var_1.d.b;
    return Struct_4(vec4<bool>(true, var_3.x, !(!(!var_1.d.b.x)), var_1.d.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2080f, 132f, -1000f, var_1.a.b.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -461f, var_1.a.b.x, var_0.x))))));
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: f32, arg_3: Struct_4) -> vec2<i32> {
    var var_0 = false;
    let var_1 = Struct_1(vec4<u32>(_wgslsmith_dot_vec4_u32(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0, arg_0, 0u, 20550u), vec4<u32>(25701u, 0u, u_input.a.x, 2231u), vec4<u32>(arg_0, 81249u, 1u, u_input.b.x)), abs(vec4<u32>(arg_0, 30928u, arg_0, arg_0)), -789f <= arg_2), ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 10041u, u_input.b.x, u_input.a.x), vec4<u32>(arg_0, 16911u, 1u, u_input.b.x))), 66746u, (0u ^ select(arg_0, 1u, arg_3.a.x)) ^ u_input.a.x, ~440u), !vec2<bool>(_wgslsmith_div_u32(85825u, u_input.a.x) >= _wgslsmith_clamp_u32(u_input.b.x, u_input.a.x, arg_0), _wgslsmith_f_op_f32(-1294f * 183f) < _wgslsmith_f_op_f32(ceil(1982f))));
    let var_2 = -_wgslsmith_mod_i32(2147483647i, u_input.c.x);
    var_0 = any(func_2(vec4<i32>(u_input.c.x, ~min(var_2, -1i), min(_wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(0i, var_2, 90772i)), -42596i), 5738i)).a.wyw);
    var_0 = any(vec4<bool>(arg_3.a.x, true & (arg_3.a.x && (-497f != arg_2)), any(vec3<bool>(arg_1.a.x, arg_3.a.x, !arg_1.a.x)), false));
    return ~countOneBits(vec2<i32>(30334i, ~var_2));
}

fn func_1(arg_0: u32, arg_1: vec3<u32>, arg_2: vec2<i32>) -> vec2<i32> {
    var var_0 = Struct_1(vec4<u32>(arg_1.x ^ 25207u, ~176979u, arg_1.x, _wgslsmith_mod_u32(52350u, arg_1.x)), vec2<bool>(true, true));
    return func_4(reverseBits(_wgslsmith_mod_u32(0u, _wgslsmith_mod_u32(u_input.b.x, 8082u) & countOneBits(0u))), func_2(-min(~vec4<i32>(-2147483647i, u_input.c.x, 0i, -1i), vec4<i32>(u_input.e, u_input.d.x, arg_2.x, arg_2.x))), 1599f, Struct_4(vec4<bool>(var_0.b.x, any(vec3<bool>(true, false, false)), all(select(vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x), vec3<bool>(true, var_0.b.x, false), vec3<bool>(var_0.b.x, var_0.b.x, false))), var_0.b.x), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-734f, 371f, 1251f, 586f)) * _wgslsmith_div_vec4_f32(vec4<f32>(-862f, -522f, 229f, 586f), vec4<f32>(-1437f, -1735f, -1076f, -303f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec2_i32(~max(abs(vec2<i32>(-31144i, 0i)), u_input.d), func_1(u_input.b.x, ~vec3<u32>(~u_input.b.x, ~u_input.a.x, ~u_input.a.x), vec2<i32>((u_input.c.x << (0u % 32u)) & (u_input.c.x >> (u_input.b.x % 32u)), -8872i)));
    var var_1 = 1i;
    var_0 = _wgslsmith_mult_i32(u_input.c.x, u_input.d.x | u_input.e);
    var var_2 = select(vec3<bool>(true, true, true), !select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, select(false, true, false), func_2(vec4<i32>(8877i, -2147483647i, -25919i, u_input.d.x)).a.x), true), true);
    var var_3 = Struct_3(Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), vec3<f32>(434f, -421f, -378f), min(vec3<u32>(u_input.a.x, ~u_input.a.x, 7839u), ~reverseBits(vec3<u32>(u_input.b.x, 1u, 1u))), ~(-1i), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-121f, _wgslsmith_f_op_f32(floor(239f)))))), vec4<i32>(u_input.d.x | u_input.e, _wgslsmith_div_i32(-2147483647i, ~u_input.e | _wgslsmith_add_i32(-70378i, -21667i)), -1i, -1i >> (firstTrailingBit(_wgslsmith_add_u32(43169u, 1u)) % 32u)), u_input.d.x, Struct_1(reverseBits(countOneBits(~vec4<u32>(0u, u_input.a.x, 4294967295u, 1u))), var_2.yz), Struct_1(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(1u, 57120u, 1u, u_input.a.x)), max(max(vec4<u32>(0u, u_input.b.x, u_input.a.x, u_input.b.x), vec4<u32>(u_input.a.x, 4294967295u, u_input.b.x, 102125u)), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) ^ vec4<u32>(80909u, 0u, u_input.b.x, 0u))), select(var_2.yx, select(vec2<bool>(true, true), !var_2.yz, var_2.x), !(!var_2.x))));
    let var_4 = u_input.a;
    var_1 = u_input.d.x;
    let var_5 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_3.a.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(max(min(countOneBits(u_input.b.x), 35629u), ~1u), 2155f, vec4<u32>(countOneBits(u_input.a.x), max(u_input.b.x, var_3.e.a.x), abs(0u), 1u) & vec4<u32>(0u << (0u % 32u), max(u_input.b.x, var_4.x) | ~42420u, 1u, 0u), var_3.d.a.x, var_3.b.x);
}

