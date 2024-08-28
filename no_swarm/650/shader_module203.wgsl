struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec3<u32> = vec3<u32>(29036u, 12267u, 0u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2, arg_3: vec2<u32>) -> i32 {
    global0 = false & !(arg_2.c.x && (arg_2.c.x || true));
    var var_0 = arg_0.b.yzw;
    var var_1 = _wgslsmith_f_op_vec3_f32(-arg_2.b);
    return ~abs(-1728i);
}

fn func_3(arg_0: i32, arg_1: u32) -> vec3<f32> {
    global1 = select(vec3<u32>((~u_input.b << (~u_input.b % 32u)) << (~1u % 32u), 1u, ~_wgslsmith_mod_u32(~1u, global1.x << (0u % 32u))), ~vec3<u32>(~45329u, ~select(u_input.b, global1.x, false), max(global1.x, arg_1)), select(select(vec3<bool>(true, all(vec2<bool>(false, true)), true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), all(vec4<bool>(true, true, false, false))), true), !vec3<bool>(false, true, u_input.a.x >= -1i), select(vec3<bool>(true, all(vec3<bool>(true, false, false)), true), vec3<bool>(true, true, select(false, true, true)), true)));
    let var_0 = select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))), true, true), vec4<bool>(true, true, true, true)), !select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), false)), vec4<bool>(true, select(true, true, true), false, true), true), false);
    let var_1 = any(vec2<bool>(reverseBits(u_input.b) > ~54695u, !var_0.x));
    global0 = !(max(~(arg_0 | -1553i), func_2(Struct_1(u_input.a.x, vec4<u32>(0u, 1u, 24739u, arg_1)), -2147483647i, Struct_2(-2100f, vec3<f32>(844f, -1922f, -1000f), vec4<bool>(false, var_0.x, var_1, false)), ~vec2<u32>(12507u, global1.x))) < select(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), 56829i, true));
    var var_2 = Struct_1(u_input.a.x, ~firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(62698u, arg_1, arg_1, 40167u), min(vec4<u32>(71726u, global1.x, 1u, u_input.b), vec4<u32>(arg_1, arg_1, 41571u, global1.x)))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(395f, -852f, -835f), vec3<f32>(-460f, -1000f, 1104f), vec3<bool>(var_0.x, true, var_0.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1001f, -1000f, 1406f) * vec3<f32>(-1527f, 580f, 595f)), vec3<bool>(true, false, var_1))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-244f, -291f, 2060f), vec3<f32>(-265f, -716f, -1101f), var_1)))))));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1) -> bool {
    var var_0 = vec3<i32>(-2147483647i | func_2(arg_1, -u_input.a.x, Struct_2(_wgslsmith_f_op_f32(-arg_0.x), vec3<f32>(-991f, 1889f, arg_0.x), vec4<bool>(true, true, false, false)), firstLeadingBit(global1.yy)), abs(arg_1.a), 21159i);
    let var_1 = ~firstLeadingBit(~firstTrailingBit(63558u)) != (u_input.b << (~20609u % 32u));
    var var_2 = Struct_2(arg_0.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(u_input.a.x, 1u))), select(select(select(!vec4<bool>(true, var_1, false, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, var_1), vec4<bool>(var_1, true, var_1, var_1)), vec4<bool>(true, var_1, var_1, var_1)), vec4<bool>(!var_1, any(vec2<bool>(var_1, var_1)), false, var_1), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(false, var_1, var_1, false), select(vec4<bool>(false, var_1, var_1, false), vec4<bool>(true, var_1, true, true), true), !vec4<bool>(false, true, var_1, true)), select(vec4<bool>(false, var_1, var_1, true), !vec4<bool>(false, var_1, true, true), any(vec3<bool>(var_1, var_1, var_1))), any(vec4<bool>(true, false, true, true)) | true), !vec4<bool>(var_1 || var_1, var_1, false, true)));
    let var_3 = arg_1.b.wwy;
    global0 = ((u_input.b == ~u_input.b) | (var_2.c.x != (var_1 == (4294967295u < global1.x)))) && !(!(arg_1.a != _wgslsmith_mult_i32(-26441i, -1i)));
    return all(var_2.c.yw);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<u32>(34625u, _wgslsmith_clamp_u32(u_input.b, 4294967295u, ~_wgslsmith_mult_u32(~24557u, 0u)), 89698u);
    global1 = firstLeadingBit(vec3<u32>(~(~(~u_input.b)), 35090u, 72532u));
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -625f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-568f, -477f, _wgslsmith_f_op_f32(-1068f + 316f))))), select(vec4<bool>(any(vec3<bool>(true, true, true)), true, true & all(vec3<bool>(true, false, true)), !func_1(vec2<f32>(316f, -1000f), Struct_1(1i, vec4<u32>(38314u, 4294967295u, global1.x, 1u)))), !select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true)), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), true)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -947f) - _wgslsmith_f_op_f32(min(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b.x, var_0.a) + -211f) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(var_0.b.x, var_0.a)), -1000f))))));
    let var_2 = ~_wgslsmith_dot_vec3_u32(firstTrailingBit(firstTrailingBit(abs(vec3<u32>(u_input.b, global1.x, global1.x)))), min(~(vec3<u32>(global1.x, 33541u, 4294967295u) >> (vec3<u32>(4294967295u, 43684u, 1u) % vec3<u32>(32u))), ~reverseBits(vec3<u32>(global1.x, 23516u, u_input.b))));
    let var_3 = Struct_2(170f, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(var_1))))), var_0.b.x, _wgslsmith_f_op_vec3_f32(func_3(~select(-19915i, 0i, var_0.c.x), max(~56108u, 54903u))).x), select(vec4<bool>(!var_0.c.x, var_0.c.x, !all(vec3<bool>(true, var_0.c.x, var_0.c.x)), _wgslsmith_f_op_f32(exp2(var_1)) != -149f), vec4<bool>(var_0.c.x && !var_0.c.x, var_0.c.x, var_0.c.x, false), vec4<bool>(!(var_2 != var_2), var_0.c.x, false, false)));
    let var_4 = vec3<i32>(-48809i, 71006i, _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), _wgslsmith_div_i32(47740i, u_input.a.x)));
    var var_5 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -max(~u_input.a.x, _wgslsmith_add_i32(0i, 42180i)), 3362u, var_5.b.x, -19509i);
}

