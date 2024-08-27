struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: f32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: Struct_4, arg_3: vec4<bool>) -> u32 {
    var var_0 = arg_1.b;
    let var_1 = Struct_1(abs(arg_1.b.a), abs(max(vec3<i32>(_wgslsmith_add_i32(arg_2.b.b.x, -19510i), 2147483647i, var_0.a.x), ~vec3<i32>(12171i, u_input.a.x, var_0.a.x))), arg_1.b.c, !vec3<bool>(!any(vec4<bool>(var_0.d.x, false, false, false)), true, false));
    let var_2 = !arg_3.x;
    var var_3 = countOneBits(~(i32(-1i) * -(arg_2.b.b.x >> (27280u % 32u))));
    var_3 = _wgslsmith_mult_i32(var_1.a.x, 2147483647i);
    return _wgslsmith_mod_u32(_wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 40052u, 4294967295u, 4294967295u), firstLeadingBit(vec4<u32>(56357u, 1u, 40828u, 4294967295u))), _wgslsmith_div_u32(firstTrailingBit(1u), 34264u)), 79409u);
}

fn func_2(arg_0: i32, arg_1: Struct_3) -> f32 {
    var var_0 = vec3<u32>(1u, ~0u, _wgslsmith_dot_vec4_u32(select(~vec4<u32>(4294967295u, 65833u, 53483u, 2969u), ~vec4<u32>(42699u, 1u, 1u, 1u), true), ~(~vec4<u32>(18865u, 9086u, 6311u, 1u)))) ^ countOneBits(vec3<u32>(1u, max(func_3(vec4<f32>(-852f, -2418f, 982f, -713f), Struct_4(-1124f, Struct_1(vec4<i32>(arg_0, arg_0, 11379i, 2147483647i), vec3<i32>(u_input.a.x, u_input.a.x, 0i), -210f, vec3<bool>(false, arg_1.a.x, false))), Struct_4(1076f, Struct_1(vec4<i32>(arg_0, 0i, arg_0, -1i), vec3<i32>(2147483647i, 18858i, 0i), -1266f, vec3<bool>(false, arg_1.a.x, false))), vec4<bool>(false, arg_1.a.x, arg_1.a.x, false)), 4294967295u), _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 1u), abs(vec2<u32>(4294967295u, 4294967295u)))));
    var var_1 = vec3<bool>(true, any(select(arg_1.a.xx, vec2<bool>(arg_1.a.x, arg_1.a.x), !(false || arg_1.a.x))), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, 51600u), select(vec4<u32>(var_0.x, 1u, 36288u, 1u), vec4<u32>(75645u, 134768u, 1u, var_0.x), arg_1.a.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0.x, var_0.x), vec3<u32>(47280u, 1u, var_0.x)) >> (abs(var_0.x) % 32u)) <= _wgslsmith_add_u32(var_0.x, 1u));
    var var_2 = true;
    var var_3 = abs(u_input.a.x);
    let var_4 = vec3<bool>(true, all(select(!(!vec4<bool>(false, var_1.x, var_1.x, false)), !vec4<bool>(false, true, arg_1.a.x, var_1.x), ~4294967295u <= _wgslsmith_clamp_u32(var_0.x, 1u, var_0.x))), true);
    return _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-638f, 1f)) * 1020f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(552f * 142f), _wgslsmith_f_op_f32(min(109f, 251f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1509f - 163f) - _wgslsmith_f_op_f32(-458f + 1000f)))));
}

fn func_1() -> bool {
    var var_0 = -(_wgslsmith_dot_vec3_i32(-vec3<i32>(-2674i, u_input.a.x, -1i), vec3<i32>(-1i, u_input.a.x, 1i)) >> (1u % 32u));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(1i, Struct_3(vec3<bool>(true, false, true))))))));
    var_0 = -18237i;
    var_1 = -228f;
    let var_2 = Struct_2(vec3<bool>(true, true, true), _wgslsmith_f_op_f32(select(-675f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(457f * -841f))) + -170f), false)), Struct_1(select(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 53506i) ^ vec4<i32>(u_input.a.x, u_input.a.x, -16211i, u_input.a.x), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, -800i, -3539i, u_input.a.x), vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.a.x))), ~firstLeadingBit(vec4<i32>(u_input.a.x, 0i, u_input.a.x, u_input.a.x)), vec4<bool>(true, all(vec3<bool>(true, true, true)), true, true)), min(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, u_input.a.x, -13492i), vec3<i32>(u_input.a.x, 2147483647i, 2147483647i) & vec3<i32>(7013i, -12822i, 1i)), vec3<i32>(u_input.a.x | u_input.a.x, u_input.a.x & u_input.a.x, u_input.a.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1276f, -520f))))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), Struct_1(~max(max(vec4<i32>(-1i, u_input.a.x, 24864i, u_input.a.x), vec4<i32>(7568i, 1i, u_input.a.x, u_input.a.x)), reverseBits(vec4<i32>(u_input.a.x, 0i, u_input.a.x, -2147483647i))), vec3<i32>(u_input.a.x, _wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.a.x, u_input.a.x), ~31896i), reverseBits(_wgslsmith_mod_i32(1i, u_input.a.x))), _wgslsmith_f_op_f32(func_2(firstLeadingBit(i32(-1i) * -2147483647i), Struct_3(vec3<bool>(true, false, false)))), vec3<bool>(true, all(vec4<bool>(false, false, true, false)), true)));
    return !var_2.d.d.x;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3) -> Struct_4 {
    let var_0 = !vec2<bool>(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -177f) + -1137f) < _wgslsmith_f_op_f32(871f * _wgslsmith_f_op_f32(floor(-489f))));
    var var_1 = Struct_1(vec4<i32>(1i, 1i, u_input.a.x, _wgslsmith_mod_i32(max(_wgslsmith_add_i32(u_input.a.x, -11170i), -14196i), _wgslsmith_sub_i32(~u_input.a.x, 0i))), _wgslsmith_div_vec3_i32(vec3<i32>(-47861i, ~1i, abs(u_input.a.x)), _wgslsmith_mod_vec3_i32(~vec3<i32>(1i, u_input.a.x, u_input.a.x), vec3<i32>(0i, u_input.a.x, -1i) << (vec3<u32>(0u, 27654u, 4294967295u) % vec3<u32>(32u)))) ^ -vec3<i32>(_wgslsmith_mod_i32(895i, -1i), -u_input.a.x, _wgslsmith_dot_vec2_i32(u_input.a, u_input.a)), _wgslsmith_f_op_f32(f32(-1f) * -1332f), select(vec3<bool>(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, u_input.a.x) < 1i, true, var_0.x), vec3<bool>(var_0.x, arg_1.a.x, all(!arg_1.a.zx)), true));
    var_1 = Struct_1(~vec4<i32>(u_input.a.x, var_1.b.x, _wgslsmith_dot_vec3_i32(~vec3<i32>(var_1.b.x, var_1.a.x, -2147483647i), countOneBits(var_1.a.zyx)), max(-31692i, var_1.b.x)), vec3<i32>(~var_1.b.x, i32(-1i) * -22691i, _wgslsmith_mod_i32(var_1.b.x, ~_wgslsmith_mult_i32(u_input.a.x, -9415i))), 699f, select(!(!vec3<bool>(arg_1.a.x, var_1.d.x, var_1.d.x)), !select(!arg_0.wxw, arg_1.a, !arg_1.a), true));
    var var_2 = !any(arg_0);
    return Struct_4(908f, Struct_1(~var_1.a ^ ((vec4<i32>(var_1.a.x, u_input.a.x, var_1.b.x, u_input.a.x) >> (vec4<u32>(36362u, 50185u, 56062u, 18782u) % vec4<u32>(32u))) >> (firstTrailingBit(vec4<u32>(80400u, 20154u, 1u, 49548u)) % vec4<u32>(32u))), var_1.a.zww, var_1.c, vec3<bool>(any(var_0), var_0.x, select(all(vec4<bool>(true, arg_1.a.x, true, arg_0.x)), var_1.c == -981f, all(vec2<bool>(var_0.x, arg_1.a.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec4<bool>((all(vec4<bool>(true, true, false, true)) || true) | true, true, all(vec3<bool>(true, true, all(vec3<bool>(true, false, true)))), !func_1() | true), Struct_3(vec3<bool>(true, true, true)));
    var_0 = func_4(!vec4<bool>(!var_0.b.d.x, func_1(), !(!var_0.b.d.x), (1531f < var_0.b.c) && var_0.b.d.x), Struct_3(vec3<bool>(true, (var_0.b.d.x && false) & !var_0.b.d.x, !var_0.b.d.x != func_1())));
    var var_1 = any(!vec4<bool>(false, true == func_4(vec4<bool>(true, true, var_0.b.d.x, var_0.b.d.x), Struct_3(vec3<bool>(var_0.b.d.x, true, var_0.b.d.x))).b.d.x, all(vec4<bool>(var_0.b.d.x, true, false, var_0.b.d.x)), true));
    var var_2 = countOneBits((-select(vec2<i32>(var_0.b.b.x, var_0.b.a.x), u_input.a, vec2<bool>(true, true)) | u_input.a) & var_0.b.b.zz);
    var var_3 = vec3<bool>(any(!func_4(vec4<bool>(true, true, var_0.b.d.x, var_0.b.d.x), Struct_3(var_0.b.d)).b.d.yx), var_0.b.a.x <= firstTrailingBit(_wgslsmith_mod_i32(_wgslsmith_mod_i32(var_2.x, var_0.b.a.x), 14004i)), var_0.b.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(25516i, _wgslsmith_clamp_vec3_u32(~(~_wgslsmith_sub_vec3_u32(vec3<u32>(2604u, 4294967295u, 4294967295u), vec3<u32>(0u, 3357u, 57798u))), vec3<u32>(10504u, func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(1504f, 481f, var_0.b.c, var_0.b.c) + vec4<f32>(-531f, var_0.b.c, -1021f, var_0.b.c)), Struct_4(var_0.b.c, Struct_1(vec4<i32>(var_0.b.a.x, -31372i, -1i, 2147483647i), var_0.b.a.www, var_0.a, var_0.b.d)), Struct_4(var_0.a, var_0.b), vec4<bool>(true, var_3.x, false, false)), 1u), ~(~(~vec3<u32>(0u, 4294967295u, 0u)))));
}

