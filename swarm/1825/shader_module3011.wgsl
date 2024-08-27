struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>) -> f32 {
    var var_0 = Struct_1(214f, abs(_wgslsmith_mult_i32(1i, -45400i)));
    let var_1 = abs(~max(vec2<u32>(reverseBits(u_input.a.x), 23612u), _wgslsmith_mult_vec2_u32(u_input.a, abs(u_input.a))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a + arg_0.x) - var_0.a) * _wgslsmith_f_op_f32(var_0.a + 549f))), -var_0.b);
    let var_2 = vec3<u32>(_wgslsmith_mod_u32(abs(reverseBits(_wgslsmith_add_u32(u_input.a.x, 10460u))), _wgslsmith_mult_u32(u_input.a.x, ~u_input.a.x)), ~u_input.a.x, ~u_input.a.x);
    var var_3 = vec3<u32>(var_1.x, 0u, ~_wgslsmith_dot_vec3_u32(abs(_wgslsmith_add_vec3_u32(vec3<u32>(54385u, var_2.x, var_1.x), vec3<u32>(u_input.a.x, 42756u, 18308u))), abs(_wgslsmith_mod_vec3_u32(vec3<u32>(65374u, 4294967295u, 1u), var_2))));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1282f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-1107f)), 113f)))));
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: vec4<i32>, arg_3: Struct_1) -> i32 {
    let var_0 = any(vec4<bool>(true, true, !(firstLeadingBit(u_input.a.x) > u_input.a.x), !all(vec2<bool>(true, true))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec4_f32(vec4<f32>(-1051f, -760f, -975f, arg_0.a.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.a, 490f, 266f, arg_0.a.a)))))), arg_0.a.a, _wgslsmith_f_op_f32(-arg_3.a), -120f);
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.a.a, arg_3.a, var_0))), _wgslsmith_f_op_f32(step(-127f, arg_0.a.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(232f, arg_0.a.a))), var_1.x))));
    var_1 = vec4<f32>(-1129f, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a)), var_1.x)), -301f);
    let var_2 = vec4<u32>(59042u, 1u, firstTrailingBit(0u), ~min(~(~4226u), abs(4294967295u)));
    return ~(~arg_3.b);
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: Struct_2) -> Struct_3 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.a.a - 446f), arg_2.a.a) - _wgslsmith_f_op_f32(f32(-1f) * -645f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-137f * arg_2.a.a) + -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.a) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1547f))), 1114f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2.a.a, 1f, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-484f)) + _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(var_0.x)))), var_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-634f)))))));
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1066f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1976f + -1000f), _wgslsmith_f_op_f32(floor(-972f))), true)), 1321f)), var_0.x));
    let var_2 = Struct_2(arg_2.a);
    var var_3 = Struct_3(max(_wgslsmith_add_u32(1u, 19339u & u_input.a.x), arg_1.b >> (~select(u_input.a.x, u_input.a.x, true) % 32u)), ~u_input.a.x);
    return Struct_3(4294967295u, 0u);
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_3(1u, 2108u);
    let var_1 = _wgslsmith_f_op_f32(227f + _wgslsmith_f_op_f32(trunc(-1856f)));
    var_0 = func_4(reverseBits(_wgslsmith_sub_i32(_wgslsmith_div_i32(-1i, reverseBits(20040i)), func_2(Struct_2(Struct_1(415f, -2147483647i)), _wgslsmith_dot_vec3_i32(vec3<i32>(66723i, -145i, 0i), vec3<i32>(-2147483647i, -3065i, 1i)), vec4<i32>(1i, 1i, 1i, 1i), Struct_1(570f, -22651i)))), Struct_3(72290u, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, 3870u)), var_0.a)), Struct_2(Struct_1(var_1, 1i)));
    let var_2 = Struct_2(Struct_1(var_1, countOneBits(_wgslsmith_div_i32(1i, firstTrailingBit(41717i)))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -292f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-420f)) - var_1)), var_2.a.a)), var_2.a.b ^ -41634i);
    return var_2.a;
}

fn func_5(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec3<f32>, arg_3: Struct_3) -> bool {
    var var_0 = _wgslsmith_f_op_f32(step(arg_0.a.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -790f), 2094f)), _wgslsmith_f_op_f32(trunc(1021f)), arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)))));
    let var_1 = arg_0;
    var_0 = -675f;
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_2 = vec3<f32>(227f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.a.a, -1128f)) * -202f), _wgslsmith_f_op_f32(arg_0.a.a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1920f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.a) + _wgslsmith_f_op_f32(round(1000f))))));
    return true && (44625u >= func_4(2147483647i, func_4(_wgslsmith_dot_vec2_i32(vec2<i32>(9776i, var_1.a.b), vec2<i32>(var_1.a.b, var_1.a.b)), func_4(arg_0.a.b, arg_3, arg_0), Struct_2(var_1.a)), Struct_2(Struct_1(950f, arg_0.a.b))).b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(vec2<bool>(false, true)) | func_5(Struct_2(func_1()), vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1030f, 705f, -646f)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1050f, -1000f, -2087f), vec3<f32>(-762f, -716f, -983f))))), func_4(countOneBits(abs(10494i)), func_4(_wgslsmith_dot_vec4_i32(vec4<i32>(52i, -49750i, 0i, -2147483647i), vec4<i32>(-24173i, 0i, -1i, -16063i)), Struct_3(20715u, 16740u), Struct_2(Struct_1(-1085f, -2147483647i))), Struct_2(func_1())));
    let var_1 = Struct_3(4294967295u, 4294967295u);
    let var_2 = _wgslsmith_mod_vec3_i32(min(min(vec3<i32>(_wgslsmith_mult_i32(0i, 2147483647i), _wgslsmith_mult_i32(1131i, -1i), _wgslsmith_clamp_i32(-7475i, -18533i, -2147483647i)), vec3<i32>(1i, -92132i, 1i)), vec3<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(3878i, 11914i), 1i), -(~0i), -(1i >> (var_1.a % 32u)))), ~max(~firstTrailingBit(vec3<i32>(647i, -17139i, -2147483647i)), vec3<i32>(-42824i >> (var_1.a % 32u), i32(-1i) * -55275i, 1i)));
    var_0 = true;
    var_0 = func_5(Struct_2(func_1()), vec2<bool>(all(select(vec2<bool>(false, false), vec2<bool>(true, true), true)), false), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-136f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -852f) + _wgslsmith_f_op_f32(-315f * -165f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1696f)))), _wgslsmith_f_op_f32(1f - -790f)), Struct_3(u_input.a.x, ~0u << (_wgslsmith_add_u32(var_1.a, 100083u) % 32u)));
    var_0 = any(vec3<bool>(true, true, true));
    var_0 = select(any(vec4<bool>(true, true, true, true)) | all(vec3<bool>(false, all(vec4<bool>(false, false, true, false)), true)), firstLeadingBit(reverseBits(~var_2.x)) == -2147483647i, func_5(Struct_2(func_1()), vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(vec3<f32>(-875f, 1133f, 466f) * vec3<f32>(_wgslsmith_f_op_f32(-148f * 1921f), _wgslsmith_f_op_f32(ceil(-1657f)), _wgslsmith_f_op_f32(1000f * -1705f))), var_1));
    var_0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-678f, 332f, 451f, 1000f)) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 693f, 861f, 377f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(753f, 307f, -734f, 104f))))))), reverseBits(var_1.a), _wgslsmith_mod_i32(min(_wgslsmith_dot_vec2_i32(var_2.xz, -var_2.yy), var_2.x), reverseBits(-18227i)), firstLeadingBit(var_2.x));
}

