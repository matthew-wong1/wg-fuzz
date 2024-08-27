struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec4<f32> {
    var var_0 = true;
    let var_1 = any(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true)) & ((~reverseBits(u_input.a) & ~_wgslsmith_mult_u32(u_input.a, 0u)) < 47754u);
    var var_2 = Struct_1(reverseBits(vec4<i32>(~_wgslsmith_add_i32(10045i, 0i), firstTrailingBit(-20663i) & -1i, select(12215i, 4876i, true), _wgslsmith_add_i32(2147483647i, select(-1i, -2147483647i, false)))));
    var_0 = true;
    var_2 = Struct_1(~abs(vec4<i32>(var_2.a.x, var_2.a.x >> (u_input.a % 32u), var_2.a.x, var_2.a.x)));
    return _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(510f * 373f) + _wgslsmith_f_op_f32(f32(-1f) * -645f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(618f - -1236f))))), _wgslsmith_f_op_f32(sign(1f)), -1154f, -1181f)));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: vec3<f32>, arg_3: vec4<f32>) -> i32 {
    let var_0 = abs(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(19609u, u_input.a ^ 0u, ~_wgslsmith_div_u32(27872u, u_input.a)), u_input.a));
    var var_1 = firstTrailingBit(countOneBits(vec4<u32>(_wgslsmith_sub_u32(1u, u_input.a), abs(var_0), ~u_input.a, 1617u >> (var_0 % 32u))));
    var var_2 = vec2<bool>(all(vec4<bool>((arg_2.x >= -1000f) & select(true, false, false), true, any(vec4<bool>(true, true, false, true)), true)), true);
    var var_3 = Struct_1(firstLeadingBit(_wgslsmith_mod_vec4_i32(~(~arg_0), (vec4<i32>(1i, 2147483647i, arg_0.x, arg_0.x) >> (vec4<u32>(4294967295u, 1u, var_0, 1u) % vec4<u32>(32u))) | arg_0)));
    var_3 = Struct_1(-_wgslsmith_sub_vec4_i32((var_3.a | arg_0) ^ -var_3.a, vec4<i32>(-2147483647i, 0i, arg_0.x, arg_0.x) << ((vec4<u32>(u_input.a, 68172u, u_input.a, var_1.x) ^ vec4<u32>(var_1.x, 4294967295u, var_0, u_input.a)) % vec4<u32>(32u))));
    return -9849i;
}

fn func_2() -> vec2<f32> {
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_add_i32(~0i, -_wgslsmith_sub_i32(-2147483647i, -49151i)) | _wgslsmith_sub_i32(func_4(-vec4<i32>(2147483647i, -14059i, 15900i, -31355i), vec2<f32>(-1000f, -297f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-274f, 1838f, 805f))), _wgslsmith_f_op_vec4_f32(func_3())), 19757i), -2147483647i);
    var var_1 = Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i) & ~(vec4<i32>(57365i, 2954i, 0i, -2147483647i) >> (vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u))), -vec4<i32>(-1i >> (u_input.a % 32u), 1i, _wgslsmith_sub_i32(-58212i, -1i), ~(-2147483647i))));
    let var_2 = _wgslsmith_f_op_f32(-323f + -124f);
    var_1 = Struct_1(vec4<i32>(var_1.a.x, 1i, -25308i | select(abs(-31758i), _wgslsmith_mod_i32(-1048i, var_1.a.x), true), -min(_wgslsmith_mod_i32(var_1.a.x, var_1.a.x), _wgslsmith_mod_i32(-62332i, var_1.a.x))));
    var_0 = firstTrailingBit(i32(-1i) * -var_1.a.x);
    return _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1608f, _wgslsmith_f_op_f32(f32(-1f) * -465f)))), vec2<f32>(var_2, 1000f), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(2415f, _wgslsmith_f_op_f32(max(-1494f, -784f))))))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = vec2<bool>(true, true);
    var var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(-838f, _wgslsmith_f_op_f32(-1f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2()), vec2<f32>(-1011f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(598f + -330f)))));
    var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -409f), _wgslsmith_f_op_f32(ceil(-1423f)), var_0.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_vec2_f32(func_2()).x))));
    let var_2 = abs(~_wgslsmith_mod_vec4_u32((vec4<u32>(1u, u_input.a, u_input.a, 0u) << (vec4<u32>(u_input.a, u_input.a, 59633u, 0u) % vec4<u32>(32u))) & vec4<u32>(u_input.a, u_input.a, 1u, 23073u), select(vec4<u32>(0u, 4294967295u, 0u, 0u), vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u) | vec4<u32>(u_input.a, 1u, u_input.a, 13777u), any(vec4<bool>(false, true, var_0.x, var_0.x)))));
    var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(-1249f, _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(-1000f * -402f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) * vec2<f32>(var_1.x, -148f)))))));
    return var_2.yzx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(round(-456f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(716f - 197f)))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0.x)), var_0.x)));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -317f)), _wgslsmith_f_op_f32(f32(-1f) * -887f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -509f) - vec2<f32>(var_0.x, -366f)))))));
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(506f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1162f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(var_0.x, var_0.x)), _wgslsmith_f_op_f32(sign(-391f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-138f, var_0.x) + vec2<f32>(-1779f, -186f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 240f))))));
    var var_1 = reverseBits(vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(24205u, u_input.a), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 2958u), vec2<u32>(4294967295u, 28596u)), ~vec2<u32>(u_input.a, u_input.a)), ~vec2<u32>(u_input.a, u_input.a) | ~vec2<u32>(u_input.a, u_input.a)), firstLeadingBit(38606u), ~abs(1u)));
    var_1 = _wgslsmith_clamp_vec3_u32(~(~func_1(Struct_1(vec4<i32>(-26761i, -13998i, 41053i, -13005i)), Struct_1(vec4<i32>(-46085i, -1i, 32052i, -2147483647i)), Struct_1(vec4<i32>(-55665i, 2147483647i, -2147483647i, -1i)))) | countOneBits(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, var_1.x, 4294967295u), vec3<u32>(var_1.x, 27728u, u_input.a)), ~vec3<u32>(17815u, var_1.x, 33989u))), ~vec3<u32>(23249u, var_1.x, ~u_input.a | ~u_input.a), firstTrailingBit(_wgslsmith_sub_vec3_u32(~vec3<u32>(58463u, var_1.x, 0u), ~(~vec3<u32>(41001u, var_1.x, u_input.a)))));
    var var_2 = vec4<bool>(!select(false, all(vec2<bool>(false, false)), false) != true, all(vec2<bool>(true, true)), ((2783u | _wgslsmith_mult_u32(var_1.x, 29069u)) | var_1.x) > 1u, all(vec3<bool>(false, all(vec2<bool>(false, true)) && all(vec4<bool>(false, false, true, false)), any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.a, 4294967295u, u_input.a), _wgslsmith_f_op_vec2_f32(func_2()).x, 26750u, func_1(Struct_1(-vec4<i32>(2147483647i, 30177i, -1i, -50557i)), Struct_1(~(vec4<i32>(29628i, 0i, -1i, 2147483647i) << (vec4<u32>(var_1.x, 113112u, 4294967295u, 22260u) % vec4<u32>(32u)))), Struct_1(firstLeadingBit(vec4<i32>(1i, 1i, 1i, 1i)))));
}

