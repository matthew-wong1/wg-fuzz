struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: u32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: u32) -> u32 {
    let var_0 = arg_1.e;
    var var_1 = select(arg_1.e, vec4<u32>(var_0.x & arg_2.x, abs(0u), 1u, arg_1.d) & var_0, !arg_0.x);
    var_1 = arg_1.e;
    let var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(11149i | _wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.a.x, -18250i, -25842i), min(arg_1.c.x, -16187i)), u_input.a.x, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.c.x, arg_1.c.x, -1i, u_input.a.x), vec4<i32>(u_input.a.x, arg_1.c.x, u_input.a.x, -2147483647i), vec4<i32>(21406i, u_input.a.x, 0i, arg_1.c.x)) << (select(arg_1.e, arg_1.e, vec4<bool>(arg_0.x, true, arg_0.x, false)) % vec4<u32>(32u)), -vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), arg_1.c.x), -(~(-vec4<i32>(31312i, arg_1.c.x, -1i, -1i)) ^ vec4<i32>(_wgslsmith_div_i32(arg_1.c.x, 15128i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -23029i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, arg_1.c.x, u_input.a.x)), _wgslsmith_dot_vec2_i32(u_input.a.yx, arg_1.c), firstTrailingBit(u_input.a.x))));
    var_1 = ~vec4<u32>(24921u, arg_1.d, firstTrailingBit(15319u), 0u);
    return 0u;
}

fn func_4(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_1) -> vec4<f32> {
    global0 = !(!(_wgslsmith_f_op_f32(sign(arg_2.a)) < arg_2.b)) | false;
    var var_0 = 2147483647i ^ _wgslsmith_add_i32(countOneBits(1i), _wgslsmith_sub_i32(49469i, u_input.a.x));
    var var_1 = (~(min(-1i, arg_2.c.x) & arg_2.c.x) >> (~1u % 32u)) < reverseBits(~(-31133i));
    var var_2 = Struct_1(242f, arg_2.b, arg_2.c, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(0u, ~0u), arg_0, arg_2.e.x), arg_2.e);
    var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1880f + _wgslsmith_f_op_f32(round(arg_2.b))), var_2.b), _wgslsmith_f_op_f32(-arg_2.a), u_input.a.yz, ~_wgslsmith_clamp_u32(4294967295u, func_3(vec2<bool>(true, false), Struct_1(arg_2.b, var_2.b, var_2.c, 1u, var_2.e), arg_2.e.zyz, 1712u) ^ _wgslsmith_mult_u32(8925u, 97309u), 1u), vec4<u32>(~arg_2.e.x, max(~1u, reverseBits(~31660u)), ~61319u, ~49657u));
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(954f, arg_2.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(348f)))), var_2.a)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(var_2.a, var_2.a)), 504f, -1014f, _wgslsmith_f_op_f32(145f + -396f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-948f, var_2.a, -2354f, 620f) + vec4<f32>(-1687f, arg_2.b, 476f, var_2.b)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a, -934f, arg_2.a, arg_2.b) + vec4<f32>(arg_2.a, var_2.a, -2008f, var_2.b)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(149f, var_2.a, arg_2.a, 1000f) - vec4<f32>(-569f, 1665f, 660f, -776f)))))), (0u <= var_2.d) || !all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), false))));
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_4(~(func_3(vec2<bool>(true, false), Struct_1(174f, -1231f, u_input.a.xy, 1u, vec4<u32>(0u, 1u, 28637u, 1u)), countOneBits(vec3<u32>(0u, 72181u, 29553u)), 1u) << (~countOneBits(1u) % 32u)), (countOneBits(vec2<u32>(4294967295u, 7373u)) ^ (select(vec2<u32>(25015u, 0u), vec2<u32>(33565u, 0u), true) >> (vec2<u32>(42705u, 12025u) % vec2<u32>(32u)))) & select(min(vec2<u32>(1u, 1u), firstLeadingBit(vec2<u32>(4294967295u, 1u))), abs(~vec2<u32>(0u, 1u)), vec2<bool>(true, all(vec3<bool>(true, true, false)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -513f) + 110f)), _wgslsmith_f_op_f32(max(110f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1737f + -265f), _wgslsmith_f_op_f32(sign(-2354f)))))), select(~u_input.a.zy, vec2<i32>(-34779i, 23315i), all(vec2<bool>(false, false))) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), ~(~(~0u)), select(firstLeadingBit(~vec4<u32>(4294967295u, 11219u, 0u, 37421u)), ~(~vec4<u32>(0u, 4294967295u, 1u, 37874u)), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true))))));
    let var_1 = ~(-1i);
    global0 = false;
    var var_2 = _wgslsmith_div_u32(abs(34647u), 57330u);
    global0 = !(!(!(!any(vec3<bool>(true, true, true)))));
    return -abs(countOneBits(i32(-1i) * -2147483647i));
}

fn func_5(arg_0: i32, arg_1: vec2<f32>, arg_2: vec4<u32>) -> u32 {
    global0 = all(!vec4<bool>(false, (u_input.a.x != 719i) | (arg_0 >= 81383i), all(vec2<bool>(true, true)), any(vec3<bool>(true, true, true))));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(select(328f, _wgslsmith_f_op_f32(f32(-1f) * -515f), true)), _wgslsmith_f_op_f32(-arg_1.x), ~vec2<i32>(u_input.a.x ^ -24541i, _wgslsmith_div_i32(u_input.a.x, 1i)), abs(abs(1u) >> (~(arg_2.x & 1u) % 32u)), ~_wgslsmith_div_vec4_u32(~(~vec4<u32>(120498u, arg_2.x, 4294967295u, 109449u)), arg_2));
    global0 = true;
    let var_1 = _wgslsmith_mod_u32(min((var_0.d ^ arg_2.x) >> (min(61242u, 0u) % 32u), 27091u | ~var_0.e.x), arg_2.x) >> (var_0.d % 32u);
    var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1713f), _wgslsmith_f_op_f32(-var_0.b), vec2<i32>(-56288i, -17744i | reverseBits(_wgslsmith_div_i32(58584i, u_input.a.x))), var_0.e.x, select(~(vec4<u32>(var_0.d, 12239u, var_0.e.x, arg_2.x) & ~vec4<u32>(var_0.d, var_1, var_0.e.x, var_0.e.x)), arg_2, countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(13122u, var_1, 0u), arg_2.zyy)) < 4294967295u));
    return 8857u;
}

fn func_6(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: f32) -> Struct_1 {
    global0 = !((32234i > min(25558i, arg_0.c.x)) & any(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true)));
    let var_0 = max(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), arg_0.c.x);
    global0 = any(vec4<bool>(false, !all(vec4<bool>(false, true, false, false)) && false, _wgslsmith_div_f32(-1000f, arg_2) < _wgslsmith_f_op_f32(-198f + _wgslsmith_f_op_f32(-arg_0.b)), !all(vec3<bool>(true, true, true))));
    let var_1 = Struct_1(arg_0.a, arg_2, -(~vec2<i32>(u_input.a.x, -var_0)), ~0u, _wgslsmith_div_vec4_u32(vec4<u32>(~58390u << (arg_1.x % 32u), ~abs(arg_0.e.x), _wgslsmith_div_u32(arg_1.x << (arg_1.x % 32u), reverseBits(1u)), ~arg_1.x), firstTrailingBit(arg_0.e)));
    global0 = true;
    return var_1;
}

fn func_1() -> Struct_1 {
    global0 = false;
    return func_6(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2759f))), ~u_input.a.zz, func_5(func_2(), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(523f, 160f) - vec2<f32>(-366f, -249f)))), firstLeadingBit(vec4<u32>(66507u, 15185u, 0u, 26484u))), ~(~(~vec4<u32>(7829u, 16884u, 18001u, 0u)))), select(~(~vec2<u32>(1u, 1u)), ~firstLeadingBit(abs(vec2<u32>(1u, 4294967295u))), all(vec4<bool>(true, all(vec2<bool>(true, true)), all(vec4<bool>(true, false, false, false)), false))), _wgslsmith_f_op_f32(abs(1386f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec2_u32(~select(vec2<u32>(~77416u, ~4294967295u), _wgslsmith_div_vec2_u32(~vec2<u32>(53306u, 39440u), _wgslsmith_mod_vec2_u32(vec2<u32>(73919u, 48366u), vec2<u32>(27733u, 48054u))), vec2<bool>(true, true)), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)));
    let var_1 = func_1();
    var var_2 = func_1();
    global0 = !(all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false))) | any(vec2<bool>(true, true))) | true;
    var var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(var_2.c.x << (var_0 % 32u), _wgslsmith_add_i32(1i, -u_input.a.x), 5946i), ~1u);
}

