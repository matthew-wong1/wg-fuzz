struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: f32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> vec2<f32> {
    var var_0 = Struct_1(~vec2<u32>(u_input.d.x, ~33983u), -1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-644f - 1f) + -986f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(175f, -1038f)))));
    var_0 = Struct_1(~vec2<u32>(0u, u_input.b ^ _wgslsmith_clamp_u32(u_input.b, 4294967295u, u_input.d.x)), i32(-1i) * -u_input.c.x, _wgslsmith_f_op_f32(trunc(var_0.d.x)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-365f, var_0.c)), _wgslsmith_f_op_vec2_f32(vec2<f32>(719f, 438f) - _wgslsmith_div_vec2_f32(vec2<f32>(var_0.c, var_0.d.x), vec2<f32>(-740f, var_0.c)))))));
    var_0 = Struct_1(reverseBits(var_0.a) ^ ~(~u_input.d), -(u_input.a.x & var_0.b), var_0.d.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_0.d)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.d) + var_0.d))));
    var var_1 = reverseBits(-vec2<i32>(u_input.a.x, max(~2147483647i, u_input.c.x)));
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.d + var_0.d)))))), _wgslsmith_div_vec2_f32(var_0.d, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_0.d))), var_0.d))));
    return vec2<f32>(var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -243f));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: vec4<i32>, arg_3: Struct_1) -> vec4<f32> {
    let var_0 = arg_3;
    let var_1 = var_0;
    let var_2 = ~var_0.a.x;
    let var_3 = Struct_1(_wgslsmith_mult_vec2_u32(countOneBits(_wgslsmith_sub_vec2_u32(var_1.a, vec2<u32>(0u, 18458u)) | var_1.a), ~(var_1.a << (vec2<u32>(var_0.a.x, u_input.d.x) % vec2<u32>(32u)))), var_1.b, -598f, arg_3.d);
    return vec4<f32>(_wgslsmith_f_op_f32(var_3.d.x - var_1.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.c))) - _wgslsmith_f_op_f32(-1528f - var_3.c)) * 717f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(var_3.d.x)))), _wgslsmith_f_op_f32(abs(-254f)));
}

fn func_2(arg_0: f32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1902f)))), arg_0, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1f)))));
    var_0 = _wgslsmith_f_op_vec4_f32(func_4(true, _wgslsmith_dot_vec2_i32(max(u_input.a, u_input.c & reverseBits(u_input.c)), u_input.c), vec4<i32>(min(-_wgslsmith_mod_i32(u_input.c.x, u_input.a.x), _wgslsmith_dot_vec3_i32(-vec3<i32>(12543i, -1i, u_input.c.x), -vec3<i32>(u_input.c.x, 11332i, u_input.c.x))), u_input.a.x, 40830i, 14744i), Struct_1(vec2<u32>(firstTrailingBit(0u), ~u_input.d.x) | _wgslsmith_clamp_vec2_u32(u_input.d, countOneBits(u_input.d), ~u_input.d), ~(~u_input.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1154f), _wgslsmith_f_op_vec2_f32(func_3()))));
    let var_1 = Struct_1(abs(countOneBits(_wgslsmith_clamp_vec2_u32(~u_input.d, firstLeadingBit(u_input.d), firstTrailingBit(u_input.d)))), ~(~countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1i), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, -2147483647i)))), -1775f, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 1112f)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, -502f), _wgslsmith_f_op_vec2_f32(var_0.wz + vec2<f32>(var_0.x, -614f)), false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-906f, var_0.x)))))));
    var var_2 = var_1;
    var_0 = vec4<f32>(1451f, _wgslsmith_f_op_vec4_f32(func_4(true, _wgslsmith_mod_i32(1i, ~64300i) | u_input.a.x, max(firstLeadingBit(abs(vec4<i32>(47150i, -47464i, -2147483647i, var_2.b))), -vec4<i32>(-22991i, 1i, -1i, u_input.a.x) & vec4<i32>(-47289i, -8204i, var_2.b, u_input.c.x)), Struct_1(var_1.a, 2147483647i, -1377f, var_2.d))).x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0 * arg_0), var_2.d.x)), -714f);
    return select(4385i, var_2.b, select(false, false, true));
}

fn func_5(arg_0: i32, arg_1: bool) -> vec3<f32> {
    var var_0 = false;
    var_0 = arg_1;
    let var_1 = _wgslsmith_clamp_i32(39827i, _wgslsmith_sub_i32(-arg_0, -min(~(-2147483647i), ~(-2147483647i))), abs(i32(-1i) * -1i));
    let var_2 = arg_1;
    var_0 = arg_1;
    return vec3<f32>(1125f, 159f, -640f);
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_1(~vec2<u32>(arg_0.x, firstTrailingBit(_wgslsmith_mult_u32(4294967295u, arg_0.x))), ~countOneBits(3635i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -105f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-530f + -1109f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1052f)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(552f, -1295f))))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_div_f32(354f, -367f), _wgslsmith_f_op_f32(abs(-1000f))))))));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.d.x + 1376f), var_0.c, -1368f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.x, -756f, -524f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1200f, var_0.c, 1898f))), vec3<f32>(var_0.c, _wgslsmith_f_op_f32(trunc(-2041f)), var_0.d.x));
    var_1 = _wgslsmith_f_op_vec3_f32(func_5(_wgslsmith_sub_i32(~((-2147483647i << (arg_0.x % 32u)) | func_2(var_0.d.x)), ~var_0.b), !(arg_0.x == var_0.a.x) & (abs(_wgslsmith_sub_u32(var_0.a.x, 1u)) >= (firstLeadingBit(u_input.d.x) << ((17143u & u_input.d.x) % 32u)))));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -610f, var_1.x)))) - _wgslsmith_div_vec3_f32(vec3<f32>(var_0.c, 235f, -815f), vec3<f32>(-914f, 291f, var_0.d.x))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1.x - -332f), _wgslsmith_f_op_f32(var_0.d.x * 2078f), -1000f) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-979f, var_0.d.x, var_1.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, -338f)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true))))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_vec4_f32(func_4(false, u_input.c.x, vec4<i32>(2147483647i, -10546i, -13379i, -35337i), var_0)).x, var_0.d.x, _wgslsmith_f_op_f32(-235f - 191f)) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.x, var_0.c, 341f) - vec3<f32>(var_1.x, -1000f, var_1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, 274f, var_1.x))))))));
    var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-189f, -709f, 150f), vec3<f32>(168f, 959f, var_0.c)), vec3<f32>(var_1.x, var_1.x, var_1.x)))))));
    return Struct_1(vec2<u32>(countOneBits(~(~4294967295u)), ~arg_0.x), abs(2147483647i & u_input.c.x), 1366f, vec2<f32>(270f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), -2880f), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_4(true, u_input.a.x, vec4<i32>(u_input.a.x, 1i, 22578i, var_0.b), var_0)).x + var_0.c)))));
}

fn func_6(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = func_1(reverseBits(min(vec3<u32>(51043u, arg_0.a.x, 4294967295u), vec3<u32>(1u, u_input.d.x, arg_0.a.x)) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, arg_0.a.x), vec3<u32>(arg_0.a.x, u_input.d.x, u_input.d.x)) % vec3<u32>(32u))) | ~vec3<u32>(106882u, _wgslsmith_clamp_u32(1u, arg_0.a.x, arg_0.a.x), _wgslsmith_clamp_u32(36436u, u_input.d.x, u_input.b)));
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(176f - -973f), _wgslsmith_f_op_f32(floor(1004f)))), -1418f, -2394f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(103f, arg_0.c, var_0.c))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d.x, var_0.c, var_0.c))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(936f, var_0.d.x, arg_0.d.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(214f, var_0.d.x, arg_0.d.x))))))));
    let var_2 = arg_0;
    var_0 = func_1(vec3<u32>(func_1(max(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 4294967295u, var_2.a.x), vec3<u32>(var_2.a.x, var_0.a.x, 1047u)), max(vec3<u32>(1u, 50018u, 32112u), vec3<u32>(u_input.b, var_0.a.x, 35704u)))).a.x, u_input.d.x, ~var_2.a.x));
    let var_3 = Struct_1(var_0.a, ~17502i, var_0.c, _wgslsmith_f_op_vec2_f32(var_1.yz - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.d) - _wgslsmith_div_vec2_f32(var_1.zy, var_0.d)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.xz) - var_2.d))));
    return vec4<bool>(!(false & any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true)))), !(~(-u_input.c.x) < -_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.b, u_input.a.x), vec2<i32>(var_0.b, arg_0.b))), any(select(vec2<bool>(true, true), vec2<bool>(true, all(vec3<bool>(true, true, true))), select(vec2<bool>(false, true), vec2<bool>(false, false), true))), -1310f < _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -413f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.d << (~vec2<u32>(u_input.d.x, 1u) % vec2<u32>(32u)), 19619i, -685f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(483f)), -1751f)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-634f, -399f) + vec2<f32>(378f, -1449f)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -320f), _wgslsmith_f_op_f32(f32(-1f) * -1934f)))));
    var var_1 = -1731f;
    var var_2 = any(func_6(func_1(~vec3<u32>(var_0.a.x, u_input.b, var_0.a.x))));
    var var_3 = func_1(abs(vec3<u32>(var_0.a.x, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(1u, 23221u, 0u, 15788u)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 24862u, 17914u, u_input.b), vec4<u32>(4294967295u, 0u, var_0.a.x, 167u))), u_input.b)));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1491f)) * var_0.d.x);
    var_2 = true;
    let var_5 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(1251f);
}

