struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(ceil(arg_0));
    let var_1 = ~u_input.b;
    var_0 = arg_0;
    var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0)));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1200f + arg_0), _wgslsmith_f_op_f32(-arg_0))), -1937f, 1894f, _wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(arg_0 * 1404f), true)))) + _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(arg_0)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0), 872f, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0))), _wgslsmith_f_op_f32(sign(-493f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(913f, arg_0, 545f, arg_0)))));
    return -_wgslsmith_div_vec2_i32(max(min(countOneBits(vec2<i32>(var_1, 1i)), abs(vec2<i32>(u_input.b, u_input.b))), vec2<i32>(u_input.b, _wgslsmith_sub_i32(var_1, 6206i))), vec2<i32>(u_input.b, var_1));
}

fn func_2() -> vec3<bool> {
    var var_0 = firstLeadingBit(vec2<i32>(_wgslsmith_div_i32(0i, (u_input.b & u_input.b) ^ _wgslsmith_mult_i32(-43552i, u_input.b)), 1i & _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-9788i, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)), firstTrailingBit(vec4<i32>(u_input.b, 1i, u_input.b, -2147483647i)))));
    var_0 = ~abs(~(-(vec2<i32>(u_input.b, var_0.x) ^ vec2<i32>(u_input.b, var_0.x))));
    var_0 = vec2<i32>(firstLeadingBit(_wgslsmith_div_i32(_wgslsmith_sub_i32(_wgslsmith_add_i32(0i, 0i), var_0.x), var_0.x)), _wgslsmith_dot_vec2_i32(func_3(1f), -firstTrailingBit(reverseBits(vec2<i32>(var_0.x, 5863i)))));
    let var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1088f + 2020f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -277f))), 2152f, -239f);
    var_0 = vec2<i32>(-13530i, ~(~u_input.b));
    return !select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec4<bool>(true, true, false, false)) & all(vec2<bool>(false, false)), any(vec2<bool>(true, true)) || true), _wgslsmith_f_op_f32(-672f * -860f) <= var_1.x);
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: vec3<bool>) -> Struct_2 {
    var var_0 = -232f;
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(624f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1103f)) * -461f))), vec2<f32>(_wgslsmith_f_op_f32(159f + 1606f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(159f - _wgslsmith_f_op_f32(sign(958f))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-212f, -3098f)))))), arg_2.xy));
    let var_2 = !(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.x))) > _wgslsmith_f_op_f32(trunc(var_1.x)));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2636f + -1291f)) - 1f)), _wgslsmith_f_op_f32(max(538f, -644f)), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(412f + -343f), _wgslsmith_f_op_f32(-var_1.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))) * _wgslsmith_f_op_f32(f32(-1f) * -1041f)));
    let var_4 = true;
    return Struct_2(-vec2<i32>(arg_1, _wgslsmith_sub_i32(arg_1, -1i) >> (_wgslsmith_div_u32(u_input.a.x, u_input.a.x) % 32u)), Struct_1(1u, u_input.a.x), Struct_1(u_input.a.x, _wgslsmith_clamp_u32(~u_input.a.x, 17630u, 15444u)), Struct_1(~_wgslsmith_mod_u32(u_input.a.x, ~1u), u_input.a.x), !all(vec4<bool>(any(vec3<bool>(var_4, true, true)), false, u_input.a.x > u_input.a.x, var_2)));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: i32, arg_3: Struct_1) -> Struct_2 {
    let var_0 = arg_1.c;
    let var_1 = !arg_1.e;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-243f, -1000f, 1512f, -1000f), vec4<f32>(1277f, -2250f, 525f, 518f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -200f, 1000f, 172f) * vec4<f32>(1000f, 711f, -774f, -904f))))));
    var var_3 = arg_1;
    var var_4 = u_input.a;
    return func_4(arg_2, abs(select(-32301i, _wgslsmith_dot_vec4_i32(vec4<i32>(-18823i, var_3.a.x, arg_1.a.x, 18199i), vec4<i32>(37890i, -2147483647i, arg_0.x, 1i)) & u_input.b, countOneBits(arg_3.b) < u_input.a.x)), vec3<bool>(all(!(!vec4<bool>(arg_1.e, var_1, arg_1.e, false))), true, var_1 | all(func_2())));
}

fn func_6(arg_0: Struct_2) -> i32 {
    var var_0 = func_5(firstTrailingBit(-(vec3<i32>(-1i) * -vec3<i32>(u_input.b, u_input.b, arg_0.a.x))), Struct_2(arg_0.a, arg_0.b, Struct_1(select(1u, 0u, any(vec2<bool>(arg_0.e, true))), u_input.a.x), arg_0.b, false), arg_0.a.x, Struct_1(firstTrailingBit(27246u), u_input.a.x)).b;
    var_0 = arg_0.d;
    var var_1 = Struct_2(firstLeadingBit(arg_0.a), arg_0.d, arg_0.b, Struct_1(18815u, _wgslsmith_div_u32(arg_0.c.a, func_5(~vec3<i32>(-16751i, arg_0.a.x, u_input.b), arg_0, 1i, arg_0.b).c.a)), all(!(!(!vec4<bool>(arg_0.e, false, true, arg_0.e)))));
    var var_2 = _wgslsmith_dot_vec4_u32(~vec4<u32>(~var_0.b << (var_0.a % 32u), ~(u_input.a.x ^ 1u), u_input.a.x >> (u_input.a.x % 32u), _wgslsmith_mult_u32(~var_0.a, ~var_0.a)), ~(~select(~vec4<u32>(var_1.b.a, 89042u, arg_0.b.b, var_0.b), countOneBits(vec4<u32>(arg_0.d.a, u_input.a.x, 0u, 0u)), !vec4<bool>(var_1.e, false, true, true))));
    var var_3 = var_0.b;
    return _wgslsmith_sub_i32(select(u_input.b, _wgslsmith_add_i32(var_1.a.x >> (u_input.a.x % 32u), func_3(-787f).x), any(!vec4<bool>(false, arg_0.e, true, arg_0.e))), 11822i);
}

fn func_1(arg_0: Struct_2) -> f32 {
    let var_0 = -(~(~vec4<i32>(u_input.b, u_input.b, arg_0.a.x, u_input.b)) << (vec4<u32>(29712u, ~abs(23961u), 36779u, u_input.a.x) % vec4<u32>(32u)));
    var var_1 = Struct_1(~arg_0.c.b, ~reverseBits(u_input.a.x));
    var var_2 = func_6(func_5(var_0.yzz, func_4(1i << (1u % 32u), _wgslsmith_mult_i32(1i, u_input.b) ^ u_input.b, !func_2()), -1i, Struct_1(arg_0.d.a, countOneBits(39561u))));
    var_1 = arg_0.c;
    var_2 = arg_0.a.x;
    return 708f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(!(!vec4<bool>(select(true, false, true), u_input.b <= u_input.b, 1u >= u_input.a.x, true)));
    var_0 = false;
    let var_1 = (~u_input.a.x >> (70477u % 32u)) != ~min(u_input.a.x, 1u);
    let var_2 = !(!vec3<bool>(false, var_1, !var_1 | true));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(Struct_2(vec2<i32>(u_input.b, -33504i), Struct_1(53772u, 4294967295u), Struct_1(u_input.a.x, 58019u), Struct_1(14375u, 4294967295u), true))), 137f)), _wgslsmith_f_op_f32(-502f * _wgslsmith_div_f32(-3476f, -2446f))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-199f * 804f), 1125f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1420f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(503f, _wgslsmith_f_op_f32(f32(-1f) * -567f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(218f)) + _wgslsmith_f_op_f32(max(-367f, 342f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1292f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(func_4(u_input.b, _wgslsmith_add_i32(-3783i, -58668i), var_2)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(699f, -749f))) - 1021f) * 402f));
    var_0 = false;
    let var_4 = func_4(~1i, u_input.b, vec3<bool>(select(false, true, var_1), var_1, all(select(var_2, var_2, var_2)) && true)).c;
    var var_5 = _wgslsmith_mult_vec3_u32(min(~u_input.a, vec3<u32>(select(u_input.a.x, var_4.b, all(vec4<bool>(true, false, var_1, true))), 89987u, min(u_input.a.x, var_4.b))), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, var_3.ww);
}

