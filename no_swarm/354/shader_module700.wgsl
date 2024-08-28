struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
    c: u32,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32) -> bool {
    let var_0 = Struct_4(true);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-649f, _wgslsmith_f_op_f32(f32(-1f) * -306f), _wgslsmith_div_f32(-870f, 703f))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, 1000f, 1854f), vec3<f32>(arg_0, 3038f, 138f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(263f, 200f, 602f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 164f, arg_0))), vec3<bool>(any(vec2<bool>(true, false)), true, false | var_0.a)))));
    return select(true, true, select(!all(vec4<bool>(false, false, true, var_0.a)), true, var_0.a) && var_0.a);
}

fn func_2(arg_0: Struct_4) -> f32 {
    let var_0 = Struct_1(15165u);
    var var_1 = !vec4<bool>(false, arg_0.a, !arg_0.a, select(var_0.a != 1u, true, true));
    let var_2 = Struct_3(var_0);
    var_1 = !select(!vec4<bool>(true, !arg_0.a, true, all(var_1.zzx)), vec4<bool>(!(var_1.x | false), false, var_1.x, any(var_1.ywy)), vec4<bool>(abs(var_0.a) <= ~22295u, func_3(_wgslsmith_f_op_f32(f32(-1f) * -1901f)), arg_0.a, true));
    var_1 = !select(select(vec4<bool>(func_3(1410f), arg_0.a, true, arg_0.a), select(select(vec4<bool>(arg_0.a, arg_0.a, var_1.x, arg_0.a), vec4<bool>(var_1.x, arg_0.a, arg_0.a, var_1.x), var_1.x), select(vec4<bool>(true, false, arg_0.a, var_1.x), vec4<bool>(false, true, arg_0.a, false), arg_0.a), func_3(617f)), vec4<bool>(var_1.x, !arg_0.a, all(vec3<bool>(arg_0.a, var_1.x, arg_0.a)), false)), vec4<bool>(!select(arg_0.a, arg_0.a, true), any(select(var_1.yxx, var_1.zyw, true)), any(vec3<bool>(var_1.x, false, arg_0.a)), true), select(!(!vec4<bool>(arg_0.a, true, var_1.x, var_1.x)), vec4<bool>(arg_0.a, false, arg_0.a, var_1.x && false), !arg_0.a));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-113f)));
}

fn func_4(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_3) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(963f + _wgslsmith_f_op_f32(1814f - 838f)), arg_0))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(floor(arg_0)))))));
    let var_1 = Struct_2(arg_2.a);
    let var_2 = firstTrailingBit(vec4<u32>(select(22320u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 27398u), vec2<u32>(4294967295u, u_input.b)), !arg_1.x), 108471u, _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, 4294967295u, arg_2.a.a)), ~vec3<u32>(63693u, u_input.a, 0u)), ~114u) << (select(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 0u, 65748u), firstTrailingBit(vec4<u32>(var_1.a.a, arg_2.a.a, 10535u, 77601u))), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, 28170u), vec3<u32>(39070u, 4294967295u, u_input.b)), 0u, arg_2.a.a, arg_2.a.a), select(vec4<bool>(arg_1.x, false, arg_1.x, true), !vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), arg_1)) % vec4<u32>(32u)));
    var var_3 = firstLeadingBit(0u);
    return !(!select(!vec4<bool>(true, arg_1.x, false, false), vec4<bool>(arg_1.x, u_input.c == u_input.c, -463f == arg_0, false), ~u_input.a >= _wgslsmith_clamp_u32(var_2.x, u_input.a, 1219u)));
}

fn func_1() -> i32 {
    let var_0 = select(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_4(false))))), vec4<bool>(true, all(vec2<bool>(true, false)), select(true, true, func_3(-1292f)), all(vec2<bool>(true, false)) & func_3(814f)), Struct_3(Struct_1(1u & u_input.a))), select(vec4<bool>(!(u_input.b != u_input.a), true, func_4(_wgslsmith_f_op_f32(func_2(Struct_4(true))), vec4<bool>(true, true, true, true), Struct_3(Struct_1(u_input.a))).x, true), vec4<bool>((100538u | u_input.a) >= abs(41538u), true, 1i < u_input.c, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true)), vec4<bool>(all(vec2<bool>(true, false)), true, true, true))), vec4<bool>(false, true, true == (false && any(vec2<bool>(false, false))), true));
    var var_1 = u_input.c;
    let var_2 = Struct_5(Struct_1(~_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 0u, u_input.b, 27270u), vec4<u32>(u_input.b, u_input.b, 1u, u_input.a))), Struct_3(Struct_1(reverseBits(select(8204u, 0u, var_0.x)))), u_input.b, Struct_3(Struct_1(firstLeadingBit(firstTrailingBit(u_input.a)))));
    return _wgslsmith_clamp_i32(max(_wgslsmith_add_i32(_wgslsmith_clamp_i32(-3482i, reverseBits(u_input.c), ~(-1i)), _wgslsmith_sub_i32(u_input.c, u_input.c) | 2147483647i), u_input.c ^ _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2616i, u_input.c), vec2<i32>(u_input.c, 0i)), u_input.c)), -2402i >> (countOneBits(firstLeadingBit(_wgslsmith_mod_u32(var_2.a.a, 0u))) % 32u), -min(~0i, -u_input.c << (_wgslsmith_mult_u32(18273u, 1u) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    var var_1 = select(~_wgslsmith_sub_i32(1i, 1i & u_input.c) < func_1(), all(vec2<bool>(true, true)), reverseBits(reverseBits(u_input.b)) == ~(~(~u_input.b)));
    var_1 = ~_wgslsmith_dot_vec2_u32((vec2<u32>(u_input.a, u_input.a) & vec2<u32>(u_input.b, u_input.b)) << (reverseBits(vec2<u32>(u_input.b, u_input.a)) % vec2<u32>(32u)), firstTrailingBit(firstLeadingBit(vec2<u32>(u_input.a, u_input.b)))) == ~_wgslsmith_dot_vec3_u32(~abs(vec3<u32>(29869u, u_input.a, 4294967295u)), select(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 1u, 25699u), vec3<u32>(1u, 0u, 65554u)), select(vec3<u32>(u_input.b, u_input.b, 1u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<bool>(true, true, true)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-217f, _wgslsmith_f_op_f32(411f * -589f), _wgslsmith_f_op_f32(145f * 751f), -911f), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2522f), _wgslsmith_f_op_f32(ceil(617f)), _wgslsmith_f_op_f32(sign(860f)), -1084f)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1151f, -246f, 555f, 729f) * vec4<f32>(-1000f, -385f, -1566f, -487f)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -598f), 493f, _wgslsmith_f_op_f32(max(1000f, 1499f)), _wgslsmith_f_op_f32(-882f * 398f)))));
    var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_2.x, -818f, 1005f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1060f, -2061f, var_2.x, var_2.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1487f, var_2.x, var_2.x, 1000f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -1516f, var_2.x, -1460f)) * vec4<f32>(-788f, var_2.x, var_2.x, -168f))))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1277f - var_2.x) + -493f);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec3_u32(~vec3<u32>(1u, u_input.a, u_input.b), vec3<u32>(0u, u_input.a, ~u_input.a)), -2147483647i, _wgslsmith_f_op_vec3_f32(min(var_2.wyy, var_2.yzx)));
}

