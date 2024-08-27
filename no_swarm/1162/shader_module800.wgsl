struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec3<f32>,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: u32,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec3<u32> {
    var var_0 = 1862f;
    var var_1 = -(~vec4<i32>(~(-u_input.a.x), _wgslsmith_div_i32(u_input.a.x << (117705u % 32u), ~u_input.a.x), _wgslsmith_div_i32(firstLeadingBit(u_input.a.x), _wgslsmith_clamp_i32(u_input.a.x, 624i, 0i)), ~(u_input.a.x | u_input.a.x)));
    let var_2 = u_input.a.x <= max(_wgslsmith_mult_i32(u_input.a.x, ~24517i), _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(39407i, u_input.a.x)), (var_1.zx | u_input.a.xy) & vec2<i32>(1i, 1i)));
    var var_3 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-985f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-810f, -264f), _wgslsmith_f_op_f32(trunc(1000f)))))), 527f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(936f, -1000f)), -1000f, -1227f), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -792f), _wgslsmith_f_op_f32(-201f * 1000f), -260f)))));
    var var_4 = vec4<bool>(all(vec3<bool>(true, any(vec4<bool>(false, var_2, var_2, true)), all(!vec3<bool>(var_2, false, true)))), true, !all(vec2<bool>(var_2, all(vec2<bool>(var_2, false)))), true);
    return ~vec3<u32>(53165u, 19135u, ~select(~26789u, firstLeadingBit(1u), !var_2));
}

fn func_2() -> Struct_5 {
    var var_0 = Struct_1(_wgslsmith_mult_vec3_u32(vec3<u32>(~(~1u), ~(~0u), _wgslsmith_div_u32(33636u, ~1u)), func_3()), u_input.a.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1398f, -688f, 2307f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-575f, -1967f, -1004f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(746f, 2065f, 1121f))) - vec3<f32>(1f, 1f, 1f)), _wgslsmith_clamp_u32(4294967295u, _wgslsmith_mult_u32(firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 12524u), vec2<u32>(34201u, 0u))), _wgslsmith_add_u32(1u, ~23051u)), 1u << (min(0u, 1u) % 32u)), abs(select(_wgslsmith_add_u32(_wgslsmith_sub_u32(37194u, 0u), ~48985u), 1u, false)));
    var_0 = Struct_1(min(var_0.a, select(select(var_0.a, var_0.a, true), ~vec3<u32>(var_0.e, var_0.e, 5851u), select(false, false, false))) & ~var_0.a, -(i32(-1i) * -22838i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(2056f, var_0.c.x, var_0.c.x))) * _wgslsmith_f_op_vec3_f32(-var_0.c)) + vec3<f32>(var_0.c.x, _wgslsmith_f_op_f32(step(var_0.c.x, 113f)), _wgslsmith_f_op_f32(f32(-1f) * -343f)))), var_0.e, 53448u);
    var_0 = Struct_1((_wgslsmith_mult_vec3_u32(var_0.a >> (var_0.a % vec3<u32>(32u)), select(vec3<u32>(4294967295u, 0u, var_0.d), var_0.a, true)) >> (~(vec3<u32>(var_0.e, var_0.a.x, var_0.d) & var_0.a) % vec3<u32>(32u))) & var_0.a, (i32(-1i) * -_wgslsmith_mult_i32(u_input.a.x, u_input.a.x)) ^ (i32(-1i) * -1i), vec3<f32>(651f, _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(-var_0.c.x)), _wgslsmith_mult_u32(abs(_wgslsmith_add_u32(0u, var_0.e)), ~_wgslsmith_add_u32(~1u, _wgslsmith_add_u32(4294967295u, var_0.e))), var_0.a.x);
    var var_1 = vec4<f32>(var_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1385f + var_0.c.x)) - -275f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x * 1000f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2014f - var_0.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), -416f, !(1000f > var_0.c.x) | all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true)))), 1000f);
    var_0 = Struct_1(_wgslsmith_clamp_vec3_u32(var_0.a, var_0.a, var_0.a), u_input.a.x, _wgslsmith_div_vec3_f32(var_0.c, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(var_0.c)), _wgslsmith_div_vec3_f32(var_0.c, vec3<f32>(var_1.x, -1084f, 145f))))), _wgslsmith_dot_vec3_u32(~select(var_0.a << (vec3<u32>(var_0.d, 27518u, var_0.d) % vec3<u32>(32u)), select(var_0.a, vec3<u32>(4657u, 4294967295u, 4294967295u), true), all(vec4<bool>(true, true, true, false))), vec3<u32>(firstTrailingBit(1u), ~4294967295u, firstLeadingBit(88441u)) >> (firstTrailingBit(var_0.a) % vec3<u32>(32u))), select(firstLeadingBit(~_wgslsmith_dot_vec4_u32(vec4<u32>(5485u, 1u, 31965u, var_0.e), vec4<u32>(1u, 2265u, var_0.e, var_0.e))), firstTrailingBit(var_0.a.x), false));
    return Struct_5(var_1.zzz);
}

fn func_1(arg_0: vec2<bool>, arg_1: bool) -> vec3<f32> {
    let var_0 = func_2();
    return _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-604f, var_0.a.x, var_0.a.x) + var_0.a) * _wgslsmith_f_op_vec3_f32(vec3<f32>(756f, -1000f, -1218f) * vec3<f32>(var_0.a.x, 1000f, 1583f)))) * var_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(459f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-460f))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(998f, 732f, 757f))) * _wgslsmith_f_op_vec3_f32(func_1(vec2<bool>(true, false), false))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(770f, -1000f, 1000f))))))));
    var_0 = _wgslsmith_f_op_f32(exp2(var_1.x));
    var var_2 = -u_input.a.zx;
    var_2 = u_input.a.yz;
    let var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, -u_input.a.xy, 23724u, 4294967295u);
}

