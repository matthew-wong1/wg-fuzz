struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: vec3<u32>) -> i32 {
    var var_0 = _wgslsmith_div_f32(2229f, 1000f);
    let var_1 = u_input.a.x;
    var var_2 = arg_1;
    var_0 = -489f;
    var var_3 = -min(_wgslsmith_mod_i32(0i, u_input.a.x) | ~(68080i >> (0u % 32u)), -9648i);
    return reverseBits((i32(-1i) * -83198i) ^ var_1);
}

fn func_2() -> f32 {
    var var_0 = min(_wgslsmith_div_i32(u_input.a.x << (1u % 32u), ~_wgslsmith_sub_i32(min(u_input.b, -16847i), ~18906i)), func_3(Struct_1(1u), Struct_2(abs(70270u), Struct_1(22327u), ~1u), firstTrailingBit(~vec4<u32>(1u, 22232u, 1u, 17083u)), ~vec3<u32>(1u, 1u, 1u)) ^ (~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -1i, 42668i, u_input.b), vec4<i32>(17849i, u_input.b, u_input.a.x, u_input.a.x)) >> (~0u % 32u)));
    var var_1 = 21958u;
    var_0 = abs(-22178i);
    var_0 = -(((-u_input.a.x >> (firstLeadingBit(1u) % 32u)) << ((1u | select(48082u, 3628u, true)) % 32u)) << (1u % 32u));
    var_1 = 0u;
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-1000f))));
}

fn func_1() -> vec4<f32> {
    let var_0 = -(~vec4<i32>(u_input.b, 9513i, ~8633i, ~(-25776i)));
    return _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-1038f + -533f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())))), 1f, _wgslsmith_f_op_f32(min(889f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, 572f)) + _wgslsmith_f_op_f32(f32(-1f) * -1006f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(1021f, 998f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(314f - -1525f), -221f)) * -502f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(626f)) - 912f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-184f * 815f))))), !(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true)), vec4<bool>(false, false, false, true), false))));
}

fn func_4(arg_0: vec4<f32>, arg_1: i32, arg_2: vec4<i32>) -> Struct_2 {
    let var_0 = Struct_2(~1u, Struct_1(_wgslsmith_mult_u32(~(~4294967295u), 1u)), (1u | select(~3364u, 1u, false)) << (~countOneBits(firstTrailingBit(21305u)) % 32u));
    return Struct_2(~1u, var_0.b, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(func_1()), -_wgslsmith_add_i32(u_input.a.x, i32(-1i) * -87501i), select(~abs(vec4<i32>(u_input.b, -11050i, u_input.b, -15540i)) >> (firstLeadingBit(vec4<u32>(0u, 34006u, 0u, 0u)) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(~(~vec4<i32>(u_input.a.x, u_input.b, u_input.a.x, u_input.b)), vec4<i32>(u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.b, u_input.b, u_input.a.x), vec4<i32>(-2147483647i, -15724i, u_input.a.x, u_input.a.x)), func_3(Struct_1(42264u), Struct_2(1u, Struct_1(4294967295u), 1u), vec4<u32>(36273u, 64556u, 16575u, 20112u), vec3<u32>(53271u, 4294967295u, 44739u)), _wgslsmith_add_i32(u_input.a.x, u_input.b)), vec4<i32>(-30376i, 58586i, 0i, 30459i)), true));
    var var_1 = func_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(125f, 1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-418f, _wgslsmith_f_op_f32(f32(-1f) * -185f))) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-128f))) * _wgslsmith_f_op_f32(709f + -307f)), -1000f), -1i, firstLeadingBit(~select(vec4<i32>(u_input.b, u_input.b, 2147483647i, -2147483647i) >> (vec4<u32>(var_0.c, 1u, var_0.a, var_0.b.a) % vec4<u32>(32u)), ~vec4<i32>(61909i, u_input.b, u_input.b, u_input.a.x), vec4<bool>(true, true, true, true))));
    var var_2 = true;
    let var_3 = _wgslsmith_sub_vec4_u32(max(vec4<u32>(var_0.b.a, abs(firstLeadingBit(var_1.a)), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(40695u, var_0.c, var_0.c), vec3<u32>(111980u, 0u, var_1.b.a)), vec3<u32>(var_1.b.a, var_0.c, 1u)), var_1.a), _wgslsmith_div_vec4_u32(~vec4<u32>(15140u, 1u, var_1.b.a, 4294967295u), ~(vec4<u32>(var_0.c, 18015u, 4294967295u, var_0.b.a) << (vec4<u32>(var_1.b.a, var_1.a, var_1.c, 15764u) % vec4<u32>(32u))))), vec4<u32>(11544u, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_1.a, var_0.b.a, var_1.a, 12280u), vec4<u32>(var_0.b.a, var_1.c, var_0.a, var_0.b.a)), vec4<u32>(20640u, 4294967295u, 34933u, 14647u) | vec4<u32>(var_0.b.a, 0u, 0u, var_1.c), select(vec4<u32>(1u, 32311u, var_1.a, 4294967295u), vec4<u32>(4294967295u, 23363u, var_1.c, var_0.b.a), false)), abs(~vec4<u32>(var_0.b.a, var_0.a, 3953u, 1u))), 5962u, 0u));
    var_2 = true;
    let var_4 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(abs(187f)), 152f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-183f)) * _wgslsmith_f_op_f32(f32(-1f) * -1203f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let var_5 = Struct_1(4294967295u << ((_wgslsmith_mult_u32(var_1.a, var_3.x) | 22277u) % 32u));
    var_1 = func_4(var_4, abs(_wgslsmith_mult_i32(countOneBits(i32(-1i) * -23458i), 1i)), countOneBits(_wgslsmith_mult_vec4_i32(~reverseBits(vec4<i32>(u_input.a.x, 9722i, 37056i, 1i)), select(-vec4<i32>(0i, u_input.b, -1i, 16921i), vec4<i32>(u_input.a.x, u_input.b, u_input.a.x, 26018i) & vec4<i32>(u_input.b, 2147483647i, u_input.a.x, -6407i), vec4<bool>(true, true, true, true)))));
    let var_6 = vec3<bool>(-1i == max(-(~u_input.a.x), u_input.a.x), true, any(select(vec4<bool>(false, -1i < u_input.a.x, true, true), vec4<bool>(var_4.x >= var_4.x, any(vec2<bool>(true, true)), true, all(vec4<bool>(true, false, false, true))), vec4<bool>(true, true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(-547f, vec2<i32>(1236i, abs(u_input.b | -2147483647i) << (_wgslsmith_dot_vec4_u32(var_3, _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, var_5.a, 1u, var_1.b.a), vec4<u32>(0u, var_0.c, var_1.a, 4294967295u))) % 32u)), firstTrailingBit(-(~vec4<i32>(1i, 2147483647i, u_input.a.x, 8878i))) | vec4<i32>(_wgslsmith_add_i32(12472i >> (var_1.c % 32u), u_input.a.x), -1i, 1i, u_input.a.x), ~(firstLeadingBit(var_3.yw) ^ var_3.ww));
}

