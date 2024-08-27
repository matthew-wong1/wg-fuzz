struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec2<u32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2) -> vec3<bool> {
    let var_0 = _wgslsmith_div_vec4_f32(arg_0, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -795f), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, true))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, 1218f)))))));
    var var_1 = _wgslsmith_sub_u32(reverseBits(arg_1.a.c.x), 95913u);
    var var_2 = var_0.xz;
    var var_3 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(trunc(957f)), 806f), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(var_0.yy)))), vec2<bool>(true, arg_1.d.a.x)))), var_0.xx));
    let var_4 = arg_1.d.a.xx;
    return arg_1.a.a;
}

fn func_2() -> Struct_1 {
    let var_0 = !all(vec3<bool>(false, true || all(vec4<bool>(false, false, false, false)), all(vec2<bool>(true, true))));
    let var_1 = Struct_1(select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), var_0), !vec3<bool>(var_0, true, var_0), func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1473f, 390f, 170f, 153f) + vec4<f32>(1074f, 1065f, 2180f, -659f)), Struct_2(Struct_1(vec3<bool>(false, false, false), false, vec2<u32>(4294967295u, 0u), u_input.c.x), -1i, -2147483647i, Struct_1(vec3<bool>(var_0, var_0, var_0), false, vec2<u32>(u_input.a, 3369u), u_input.c.x)))), vec3<bool>(any(vec2<bool>(var_0, var_0)), false, var_0), var_0), var_0, ~select(vec2<u32>(u_input.b, ~u_input.a), vec2<u32>(~4294967295u, ~1u), var_0), firstLeadingBit(u_input.c.x));
    let var_2 = Struct_2(Struct_1(select(vec3<bool>(true, var_1.d <= var_1.d, !var_0), select(var_1.a, vec3<bool>(true, true, var_0), false), !any(var_1.a)), true, vec2<u32>(u_input.b, 4294967295u), firstLeadingBit(_wgslsmith_clamp_i32(-1i, u_input.d.x, u_input.d.x)) | _wgslsmith_mod_i32(max(var_1.d, -1i), _wgslsmith_div_i32(2147483647i, -1i))), select(1i, 7253i, true), 27198i, Struct_1(vec3<bool>(!(!var_1.a.x), true, any(select(vec4<bool>(false, var_1.a.x, var_1.a.x, var_1.b), vec4<bool>(var_1.a.x, var_0, false, var_1.a.x), var_0))), !var_0, min(firstTrailingBit(_wgslsmith_div_vec2_u32(var_1.c, var_1.c)), var_1.c), -1i));
    let var_3 = 20553u;
    let var_4 = Struct_1(var_1.a, false, ~var_1.c, -6295i);
    return var_2.d;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: vec4<f32>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(sign(arg_3.x));
    var var_1 = func_2();
    var_1 = arg_2.d;
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_3.x)));
    var var_3 = ~(~arg_1);
    return arg_2.a.a;
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = Struct_1(func_4(~select(vec3<u32>(u_input.a, 17215u, arg_0.c.x), vec3<u32>(arg_2.c.x, 38613u, 1u), arg_1) >> (~(~vec3<u32>(u_input.a, 52106u, u_input.b)) % vec3<u32>(32u)), max(countOneBits(vec4<u32>(39242u, arg_3.c.x, arg_2.c.x, 1u) >> (vec4<u32>(arg_0.c.x, 1u, 1u, 0u) % vec4<u32>(32u))), firstTrailingBit(abs(vec4<u32>(arg_2.c.x, 44159u, 22183u, 7813u)))), Struct_2(func_2(), -20347i, _wgslsmith_dot_vec2_i32(u_input.d.zx, u_input.c), Struct_1(vec3<bool>(arg_1, false, true), all(vec3<bool>(true, false, arg_2.b)), abs(arg_2.c), countOneBits(arg_2.d))), vec4<f32>(-2057f, _wgslsmith_div_f32(-1969f, _wgslsmith_f_op_f32(f32(-1f) * -1083f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(354f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -379f), 677f)))), u_input.d.x < ((~arg_2.d & 33157i) << (abs(_wgslsmith_clamp_u32(32386u, 6402u, 4294967295u)) % 32u)), vec2<u32>(5517u, _wgslsmith_dot_vec4_u32(~firstTrailingBit(vec4<u32>(arg_3.c.x, arg_3.c.x, u_input.a, 14638u)), ~vec4<u32>(1u, 27138u, 4294967295u, 1u))), ~u_input.c.x);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-782f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(798f - 587f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(517f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -261f)))));
    var var_2 = Struct_1(func_2().a, !(-min(-2147483647i, 47040i) <= (reverseBits(u_input.c.x) << (u_input.a % 32u))), vec2<u32>(abs(~(~51686u)), select(_wgslsmith_mult_u32(~4294967295u, 0u), ~var_0.c.x ^ arg_3.c.x, false)), -_wgslsmith_add_i32(-var_0.d, ~arg_3.d) << ((~(26890u >> (var_0.c.x % 32u)) ^ u_input.b) % 32u));
    let var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-var_1))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(sign(-631f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1034f))))))));
    let var_4 = ~firstLeadingBit(arg_0.c);
    return func_3(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(var_3)), _wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(-var_3), var_3)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, _wgslsmith_f_op_f32(sign(var_1)), _wgslsmith_div_f32(var_3, var_1), var_3)))), Struct_2(func_2(), ~countOneBits(select(70981i, -2147483647i, var_0.b)), arg_3.d, Struct_1(!(!vec3<bool>(arg_2.a.x, arg_3.a.x, var_0.a.x)), false, ~(~var_2.c), arg_0.d)));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    let var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(42747u, reverseBits(1u)), arg_0.ww);
    var var_1 = _wgslsmith_f_op_f32(-338f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-2469f)) * 1f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -359f))), -1471f));
    let var_2 = func_2();
    var_1 = 1f;
    var_1 = -1159f;
    return -1134f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(~(~vec4<u32>(11220u, 4294967295u, 0u, u_input.a)), Struct_2(Struct_1(vec3<bool>(false, true, false), false, _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.a, u_input.a)), u_input.d.x | 0i), 0i, u_input.d.x, Struct_1(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), false, vec2<u32>(u_input.b, u_input.a), u_input.d.x)), Struct_1(select(func_1(Struct_1(vec3<bool>(true, false, true), false, vec2<u32>(u_input.b, u_input.a), 0i), false, Struct_1(vec3<bool>(false, true, false), true, vec2<u32>(u_input.b, 0u), u_input.c.x), Struct_1(vec3<bool>(false, false, false), true, vec2<u32>(u_input.a, u_input.a), u_input.d.x)), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), true, ~vec2<u32>(1u, 30529u), min(11470i << (u_input.b % 32u), _wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(2147483647i, u_input.d.x, u_input.c.x, u_input.d.x)))))) + 1185f);
    let var_1 = _wgslsmith_mod_u32(u_input.b, ~abs(~func_2().c.x));
    var var_2 = -select(countOneBits(_wgslsmith_sub_i32(_wgslsmith_sub_i32(1i, u_input.c.x), 1i)), _wgslsmith_add_i32(max(u_input.d.x, u_input.c.x), u_input.d.x), true);
    let var_3 = Struct_1(func_4(~_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.b, var_1, 24859u), min(vec3<u32>(0u, u_input.b, var_1), vec3<u32>(17890u, var_1, 4294967295u))), _wgslsmith_add_vec4_u32(min(vec4<u32>(1u, u_input.a, 4294967295u, var_1), vec4<u32>(var_1, var_1, 1u, var_1)), ~(vec4<u32>(127u, var_1, var_1, u_input.a) & vec4<u32>(u_input.a, u_input.a, var_1, u_input.b))), Struct_2(func_2(), u_input.c.x, firstTrailingBit(u_input.d.x), func_2()), vec4<f32>(1650f, _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(114f + -1102f)), _wgslsmith_f_op_f32(step(-162f, 2298f)), -596f)), !(!(!func_3(vec4<f32>(var_0, 1360f, var_0, -819f), Struct_2(Struct_1(vec3<bool>(true, true, true), false, vec2<u32>(var_1, 35431u), u_input.c.x), 0i, u_input.c.x, Struct_1(vec3<bool>(false, false, false), true, vec2<u32>(u_input.a, u_input.b), 2147483647i))).x)), firstLeadingBit(vec2<u32>(~u_input.a, _wgslsmith_dot_vec4_u32(~vec4<u32>(47683u, var_1, u_input.a, var_1), vec4<u32>(u_input.a, u_input.a, u_input.b, 63865u) & vec4<u32>(u_input.b, 0u, var_1, 1u)))), u_input.d.x);
    var var_4 = abs(u_input.d.wzx);
    var_4 = vec3<i32>(~var_3.d, 22553i & var_3.d, abs(-1i) | var_4.x);
    let var_5 = countOneBits(_wgslsmith_clamp_vec4_u32(select(~vec4<u32>(var_1, 60290u, var_1, 3916u), firstLeadingBit(vec4<u32>(u_input.b, 0u, var_3.c.x, 0u)), true), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(var_3.c.x, 0u, u_input.a, 4294967295u), vec4<u32>(50406u, var_1, var_3.c.x, 4294967295u))), abs(vec4<u32>(u_input.b, u_input.b, u_input.a, 1u)) >> (~vec4<u32>(var_1, 5011u, var_3.c.x, u_input.b) % vec4<u32>(32u))) | (firstLeadingBit(vec4<u32>(u_input.a, 0u, u_input.b, 4294967295u)) >> (_wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(var_1, u_input.b, var_1, var_1)), vec4<u32>(4294967295u, var_3.c.x, 50117u, u_input.b)) % vec4<u32>(32u))));
    let var_6 = firstTrailingBit(~min(vec3<u32>(min(1187u, var_5.x), 1u, var_5.x), vec3<u32>(_wgslsmith_sub_u32(1u, var_5.x), 54945u, ~25882u)));
    var_4 = reverseBits(vec3<i32>(reverseBits(-7121i), 23484i & -var_4.x, (_wgslsmith_clamp_i32(45421i, 2147483647i, -16591i) ^ (i32(-1i) * -2147483647i)) & -(~u_input.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(405f + var_0))))))));
}

