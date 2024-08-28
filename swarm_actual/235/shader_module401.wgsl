struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>) -> u32 {
    var var_0 = 63665i;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-360f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-671f, -1611f)) - _wgslsmith_f_op_f32(-1000f - 1000f)))) - 410f);
    var_0 = abs(-2147483647i);
    let var_2 = !select(any(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true))), (abs(arg_0.x) == firstTrailingBit(0u)) & all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) * var_1) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1, 992f, true))));
    return select(arg_0.x, arg_0.x & _wgslsmith_mod_u32(~arg_0.x, _wgslsmith_clamp_u32(reverseBits(arg_0.x), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 4294967295u), arg_0.xy), arg_0.x)), !select(false, var_2, false));
}

fn func_2() -> f32 {
    var var_0 = Struct_1(true, vec4<u32>(func_3(~vec4<u32>(3985u, 4294967295u, 1u, 10559u)) >> (~1u % 32u), ~(~1u), countOneBits(abs(1u)), 4294967295u), vec4<bool>(true, !(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 37319u, 0u), vec3<u32>(45880u, 1u, 4294967295u)) >= ~27653u), !(u_input.a <= u_input.a), any(select(vec4<bool>(false, true, true, false), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true)), all(vec4<bool>(true, true, true, false))))));
    let var_1 = vec2<i32>((i32(-1i) * -(-8038i << (var_0.b.x % 32u))) << (var_0.b.x % 32u), u_input.a);
    var var_2 = Struct_1(!all(vec2<bool>(true, !var_0.a)), var_0.b, !vec4<bool>(all(vec3<bool>(false, false, true)), var_0.a, !var_0.c.x, true));
    var var_3 = vec2<f32>(1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-243f)))))));
    var var_4 = reverseBits(max(u_input.a, select(20445i, -var_1.x, any(var_2.c.zwy))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-602f)));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: Struct_1, arg_3: vec2<bool>) -> vec4<i32> {
    let var_0 = -_wgslsmith_mult_i32(-1i, -2147483647i);
    var var_1 = select(arg_2.b.x, arg_2.b.x, any(!select(arg_2.c.zxx, arg_2.c.xxw, !arg_1)));
    var var_2 = ~(-(vec2<i32>(~var_0, -40209i) ^ firstTrailingBit(max(vec2<i32>(var_0, u_input.a), vec2<i32>(arg_0, -2147483647i)))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-117f)), 618f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-773f, _wgslsmith_f_op_f32(f32(-1f) * -768f))) + _wgslsmith_f_op_f32(round(748f)))));
    let var_4 = any(select(vec4<bool>(false, true, all(!vec4<bool>(true, arg_3.x, true, arg_2.a)), arg_1), select(!(!arg_2.c), vec4<bool>(arg_3.x, var_3 <= 1451f, arg_2.a | arg_1, arg_3.x || arg_3.x), arg_1), any(arg_2.c)));
    return ~(~(~vec4<i32>(arg_0 >> (0u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.x, var_0), vec2<i32>(0i, arg_0)), 29080i, var_0)));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: i32, arg_3: vec4<u32>) -> Struct_1 {
    return Struct_1(~func_3(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_3.x, 30683u, 1u, 0u), arg_3)) > (_wgslsmith_dot_vec4_u32(vec4<u32>(8878u, 74889u, arg_3.x, 4294967295u), _wgslsmith_clamp_vec4_u32(arg_3, arg_3, vec4<u32>(arg_3.x, arg_3.x, 0u, 4294967295u))) << (~4294967295u % 32u)), arg_3, vec4<bool>(true, _wgslsmith_sub_i32(0i, func_1(arg_2, false, Struct_1(false, arg_3, vec4<bool>(true, false, true, true)), vec2<bool>(true, true)).x) > abs(24829i << (arg_3.x % 32u)), true, !(!any(vec2<bool>(false, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 2147483647i;
    let var_1 = func_4(firstTrailingBit(min(vec4<i32>(1i, 16874i, u_input.a, u_input.a), func_1(2147483647i, false, Struct_1(true, vec4<u32>(1u, 1u, 168923u, 13947u), vec4<bool>(true, true, true, false)), vec2<bool>(true, true)))) | countOneBits((vec4<i32>(-1i, u_input.a, 51062i, u_input.a) << (vec4<u32>(53437u, 4294967295u, 1u, 106140u) % vec4<u32>(32u))) ^ countOneBits(vec4<i32>(u_input.a, -1i, -12420i, u_input.a))), ~vec2<i32>(~u_input.a, _wgslsmith_add_i32(reverseBits(-2147483647i), u_input.a)), abs(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), _wgslsmith_div_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(-48650i, 0i))), u_input.a)), min(vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(17661u, 1u, 4294967295u, 1300u), vec4<u32>(39400u, 63582u, 4294967295u, 10898u)), ~vec4<u32>(0u, 7920u, 32213u, 1u)), countOneBits(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(7816u, 72125u, 4294967295u, 1u), ~vec4<u32>(31659u, 28622u, 4294967295u, 124963u)), _wgslsmith_dot_vec3_u32(vec3<u32>(3355u, 1u, 94335u), select(vec3<u32>(1u, 101005u, 11600u), vec3<u32>(1u, 47284u, 5799u), vec3<bool>(true, true, false)))), ~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(12027u, 1u, 0u, 1u), vec4<u32>(1u, 8049u, 10246u, 22314u)), abs(26312u), reverseBits(4294967295u), 24745u)));
    let var_2 = vec4<bool>(var_1.a, !any(var_1.c), all(func_4(~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, 25620i, 25132i, u_input.a), vec4<i32>(0i, -2147483647i, -18540i, u_input.a)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, -39746i), vec2<i32>(-1i, u_input.a)), u_input.a, var_1.b).c.zy), !all(var_1.c));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(1677f - -139f), -217f, _wgslsmith_f_op_f32(-316f * 1000f)))))));
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_3.yx * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3.xz * vec2<f32>(-484f, 1076f)))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1537f, -1000f) * 618f), _wgslsmith_f_op_f32(sign(var_3.x)))));
    let var_5 = func_4(vec4<i32>(i32(-1i) * -(1i & u_input.a), u_input.a, ~(-(~u_input.a)), _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(-2147483647i, 7382i, 1i)) ^ (vec3<i32>(38220i, u_input.a, u_input.a) & vec3<i32>(u_input.a, u_input.a, -8375i)), firstLeadingBit(vec3<i32>(0i, u_input.a, -2147483647i) << (vec3<u32>(64590u, var_1.b.x, var_1.b.x) % vec3<u32>(32u))))), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, ~u_input.a), vec2<i32>(0i, u_input.a & -36579i) >> (abs(vec2<u32>(var_1.b.x, var_1.b.x)) % vec2<u32>(32u))), u_input.a, var_1.b);
    var_0 = ~41290i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), vec3<i32>(-1i, _wgslsmith_sub_i32(-u_input.a, _wgslsmith_clamp_i32(countOneBits(-2147483647i), ~u_input.a, -2147483647i)), _wgslsmith_add_i32(21232i, u_input.a)));
}

