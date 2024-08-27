struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(vec4<u32>(0u, 0u, 1u, 0u), Struct_1(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false))), Struct_2(vec4<u32>(1962u, 2397u, 4294967295u, 55016u), Struct_1(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true))), Struct_2(vec4<u32>(20263u, 0u, 42343u, 43550u), Struct_1(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false))), Struct_2(vec4<u32>(31457u, 0u, 11985u, 1u), Struct_1(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true))), Struct_2(vec4<u32>(1u, 49979u, 23925u, 4294967295u), Struct_1(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true))), Struct_2(vec4<u32>(1u, 17906u, 4294967295u, 7684u), Struct_1(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false))), Struct_2(vec4<u32>(10306u, 12702u, 4294967295u, 1u), Struct_1(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true))), Struct_2(vec4<u32>(0u, 4294967295u, 4294967295u, 12256u), Struct_1(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true))), Struct_2(vec4<u32>(0u, 0u, 65842u, 0u), Struct_1(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true))), Struct_2(vec4<u32>(0u, 16104u, 10063u, 40887u), Struct_1(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true))), Struct_2(vec4<u32>(71213u, 0u, 84869u, 3787u), Struct_1(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false))), Struct_2(vec4<u32>(0u, 26967u, 32771u, 19101u), Struct_1(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false))), Struct_2(vec4<u32>(4294967295u, 0u, 46127u, 0u), Struct_1(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true))), Struct_2(vec4<u32>(31046u, 4294967295u, 4294967295u, 1u), Struct_1(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true))), Struct_2(vec4<u32>(4495u, 39931u, 0u, 47330u), Struct_1(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true))), Struct_2(vec4<u32>(0u, 60282u, 1u, 4755u), Struct_1(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false))), Struct_2(vec4<u32>(0u, 22806u, 47974u, 4294967295u), Struct_1(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true))), Struct_2(vec4<u32>(38721u, 4294967295u, 27912u, 4294967295u), Struct_1(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true))), Struct_2(vec4<u32>(16269u, 65938u, 0u, 42240u), Struct_1(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true))), Struct_2(vec4<u32>(18655u, 1u, 1u, 4294967295u), Struct_1(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false))), Struct_2(vec4<u32>(0u, 21246u, 35041u, 51324u), Struct_1(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true))), Struct_2(vec4<u32>(92043u, 1u, 59783u, 12251u), Struct_1(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false))), Struct_2(vec4<u32>(32229u, 79260u, 0u, 44380u), Struct_1(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true))), Struct_2(vec4<u32>(41839u, 0u, 1200u, 4294967295u), Struct_1(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true))));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> f32 {
    var var_0 = any(vec4<bool>(true, true, true, true));
    global0 = array<Struct_2, 24>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(786f, 1250f, 256f, 1f));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-2251f * var_1.x))), var_1.x, _wgslsmith_f_op_f32(ceil(var_1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x * var_1.x), _wgslsmith_f_op_f32(-var_1.x))))));
    var var_3 = min(~vec2<u32>(1u, 1u), ~countOneBits(min(vec2<u32>(1734u, 48573u), vec2<u32>(1u, 1u))));
    return _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(753f, 1762f, false)))))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: i32) -> vec2<u32> {
    global0 = array<Struct_2, 24>();
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), -267f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f + -724f), _wgslsmith_f_op_f32(f32(-1f) * -1028f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(340f - 1409f), 1f))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(-895f, -1000f)), _wgslsmith_f_op_f32(882f * 833f))))));
    var var_1 = arg_0.b;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1066f * 1674f));
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1038f - -158f)))))) < _wgslsmith_f_op_f32(func_3());
    return _wgslsmith_mod_vec2_u32(~vec2<u32>(arg_0.a.x, arg_0.a.x), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_1.a.x, reverseBits(arg_0.a.x) >> (arg_0.a.x % 32u)), ~vec2<u32>(4294967295u, 74482u) ^ arg_1.a.yx));
}

fn func_1() -> vec4<u32> {
    var var_0 = abs(select(select(vec2<u32>(1u, 1u), func_2(global0[_wgslsmith_index_u32(4294967295u, 24u)], Struct_2(vec4<u32>(24910u, 1u, 56470u, 39206u), Struct_1(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true))), Struct_1(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true)), u_input.b), vec2<bool>(true, true)), ~vec2<u32>(1u, 0u), vec2<bool>(true, all(vec2<bool>(false, false))))) ^ firstTrailingBit(firstTrailingBit(~vec2<u32>(48136u, 55708u)) ^ ~vec2<u32>(1u, 1u));
    let var_1 = u_input.b ^ ((~u_input.a.x ^ 19882i) | 24996i);
    global0 = array<Struct_2, 24>();
    let var_2 = !vec2<bool>(false, any(select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true), vec2<bool>(true, false))));
    let var_3 = vec3<u32>(0u, 4294967295u, abs(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(var_0.x, var_0.x) & vec2<u32>(var_0.x, 21190u)), ~_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, var_0.x), vec2<u32>(var_0.x, 1u)))));
    return abs(vec4<u32>(var_0.x, max(~(var_3.x ^ var_0.x), _wgslsmith_sub_u32(~var_0.x, ~var_3.x)), 9524u, 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 24>();
    global0 = array<Struct_2, 24>();
    let var_0 = Struct_2(select(firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(0u, 20501u, 1u, 32330u))), vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 53400u, 18515u, 4294967295u), func_1()), 4294967295u, 1u, 22454u), true), Struct_1(!select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false)), vec4<bool>(false, true, true, true)), !select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), true), vec4<bool>(false, false, false, true), all(vec4<bool>(true, true, false, false)))));
    var var_1 = var_0.a;
    global0 = array<Struct_2, 24>();
    let var_2 = min(var_0.a, ~(~(~var_0.a)) | ~vec4<u32>(_wgslsmith_add_u32(86607u, 0u), ~1u, var_0.a.x, ~var_0.a.x));
    global0 = array<Struct_2, 24>();
    var var_3 = min(_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, var_1.x), vec2<u32>(var_0.a.x, var_1.x)), reverseBits(min(vec2<u32>(var_1.x, var_2.x), var_0.a.wx)), ~vec2<u32>(var_1.x, 4294967295u)), select(vec2<u32>(var_1.x, 10172u), abs(vec2<u32>(var_0.a.x, 6558u)), vec2<bool>(var_0.b.a.x, u_input.a.x > u_input.a.x))), ~(~vec2<u32>(_wgslsmith_sub_u32(var_0.a.x, 0u), var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f * 654f))), 128f)));
}

