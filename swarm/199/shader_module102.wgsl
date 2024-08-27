struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<f32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> f32 {
    var var_0 = -vec3<i32>(abs(-2147483647i), _wgslsmith_dot_vec3_i32(abs(~vec3<i32>(4888i, global0.a, global0.a)), vec3<i32>(-global0.a, 1i, 0i)), _wgslsmith_mult_i32(_wgslsmith_mod_i32(~0i, global0.a), global0.a));
    global0 = Struct_4(1i);
    var var_1 = 20769u;
    var_0 = vec3<i32>(global0.a, ~var_0.x, -16737i);
    var var_2 = select(firstLeadingBit(max(firstLeadingBit(vec3<i32>(-1i, var_0.x, global0.a)), vec3<i32>(-1i) * -vec3<i32>(-1i, -9133i, var_0.x))), -(_wgslsmith_add_vec3_i32(-vec3<i32>(global0.a, 42629i, 2147483647i), max(vec3<i32>(0i, var_0.x, 2147483647i), vec3<i32>(global0.a, global0.a, -2147483647i))) ^ vec3<i32>(countOneBits(-38828i), 1i, _wgslsmith_div_i32(global0.a, var_0.x))), !select(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), vec3<bool>(any(vec4<bool>(false, false, false, false)), true, all(vec4<bool>(false, false, true, true)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -142f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))), -1043f));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-932f, _wgslsmith_f_op_f32(-868f + arg_0.x), _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-111f, 382f, arg_0.x)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.x, -286f, -2466f), vec3<f32>(arg_0.x, arg_0.x, 1318f)))))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2048f), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(func_3()))))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(563f, arg_0.x)) * _wgslsmith_f_op_vec2_f32(var_0.yz * arg_0)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -495f)) + vec2<f32>(1537f, var_0.x))));
    let var_2 = Struct_4(abs(1i));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(-2243f - arg_0.x), -369f);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(498f))), -1000f, _wgslsmith_f_op_f32(373f + -728f));
    return Struct_1(global0.a, all(vec3<bool>(true, select(all(vec3<bool>(false, true, true)), true, true), true)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + 449f)), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-494f - _wgslsmith_f_op_f32(-var_3.x)))), reverseBits(0u));
}

fn func_4(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_1, arg_3: vec4<u32>) -> vec4<i32> {
    var var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(68856u, arg_2.d), arg_3.zz);
    var_0 = 0u;
    var var_1 = Struct_1(arg_2.a, true, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_2.c.x, -229f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1193f * -947f) - _wgslsmith_f_op_f32(select(-1423f, -881f, true)))), arg_2.c)), 43396u << (firstLeadingBit(_wgslsmith_clamp_u32(select(0u, arg_3.x, true), 1u, _wgslsmith_div_u32(0u, arg_3.x))) % 32u));
    global0 = Struct_4(abs(_wgslsmith_dot_vec4_i32(select(vec4<i32>(var_1.a, -2147483647i, arg_2.a, arg_2.a), vec4<i32>(-14107i, 4822i, 2147483647i, -1i), vec4<bool>(true, arg_2.b, var_1.b, var_1.b)), vec4<i32>(54586i, arg_2.a, 14215i, -39483i)) & -8004i));
    var var_2 = select(_wgslsmith_add_vec3_i32(~(~(-vec3<i32>(var_1.a, -65080i, -65019i))), -min(vec3<i32>(global0.a, -27960i, 12929i) & vec3<i32>(var_1.a, global0.a, global0.a), firstTrailingBit(vec3<i32>(35185i, var_1.a, var_1.a)))), firstLeadingBit(vec3<i32>(arg_2.a, 0i, -9916i)) << (firstTrailingBit(_wgslsmith_mult_vec3_u32(u_input.a.zyz ^ u_input.a.wwx, ~arg_3.xyw)) % vec3<u32>(32u)), !arg_1);
    return vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(0i, global0.a), -3258i, firstTrailingBit(-2147483647i), -2147483647i), ~vec4<i32>(-2788i, 0i, -1i, 0i));
}

fn func_1(arg_0: Struct_4) -> Struct_4 {
    let var_0 = _wgslsmith_sub_i32(~global0.a, _wgslsmith_dot_vec4_i32(func_4(select(vec2<bool>(true, true), vec2<bool>(true, true), true), true, func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(918f, -866f)), vec3<i32>(-65966i, -5582i, arg_0.a) << (vec3<u32>(u_input.a.x, 7535u, u_input.a.x) % vec3<u32>(32u)), -vec3<i32>(2147483647i, arg_0.a, 9902i)), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.a.x, 100773u, 62458u), u_input.a), u_input.a)), countOneBits(~(vec4<i32>(0i, -2147483647i, global0.a, arg_0.a) | vec4<i32>(1i, global0.a, -10877i, 9630i)))));
    var var_1 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-690f * 796f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(369f)), _wgslsmith_div_f32(-1000f, 893f)))), 1013f), _wgslsmith_mod_u32(86169u, firstTrailingBit(u_input.a.x)));
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.a.x * 1f)));
    let var_3 = var_0;
    return Struct_4(-arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1672f;
    global0 = func_1(Struct_4(firstTrailingBit(~(i32(-1i) * -1i))));
    let var_1 = max(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(select(~1u, 27323u, true), 113537u, 1u), 18423u), 0u);
    let var_2 = firstLeadingBit(global0.a);
    global0 = func_1(func_1(func_1(func_1(Struct_4(-35687i)))));
    global0 = Struct_4(_wgslsmith_mod_i32(_wgslsmith_div_i32(_wgslsmith_mult_i32(~global0.a, select(var_2, var_2, false)), -(~var_2)), -19374i));
    var var_3 = Struct_2(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 1581f))))), vec3<i32>(i32(-1i) * -1i, func_2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-189f, -801f))), vec3<i32>(1i, -50526i, var_2), vec3<i32>(var_2, 0i, global0.a) & vec3<i32>(var_2, global0.a, -2147483647i)).a, abs(-9206i)), vec3<i32>(max(_wgslsmith_sub_i32(1i, 0i), ~global0.a), -global0.a, 13297i)), func_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 1168f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-821f, var_0) * vec2<f32>(-168f, var_0)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) - vec2<f32>(-1978f, var_0))))), -vec3<i32>(global0.a, ~var_2, func_2(vec2<f32>(-337f, var_0), vec3<i32>(global0.a, global0.a, var_2), vec3<i32>(-1i, 57207i, 2147483647i)).a), ~vec3<i32>(-1i, _wgslsmith_div_i32(global0.a, 13451i), func_1(Struct_4(-2147483647i)).a)), func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(var_0, var_0, true)), _wgslsmith_f_op_f32(min(var_0, -790f)))), ~(-vec3<i32>(26235i, -31957i, 2147483647i)) & _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(global0.a, -2147483647i, 33055i), vec3<i32>(-7832i, var_2, var_2)), abs(vec3<i32>(var_2, var_2, global0.a)), vec3<i32>(-8832i, global0.a, var_2)), select(max(vec3<i32>(global0.a, var_2, 0i), vec3<i32>(var_2, global0.a, -1i)), ~vec3<i32>(global0.a, 13011i, global0.a), vec3<bool>(true, true, true)) | _wgslsmith_div_vec3_i32(vec3<i32>(0i, global0.a, global0.a), ~vec3<i32>(global0.a, global0.a, -1i))), Struct_1(var_2, all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0, -231f, var_0)))), u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_3()), 1233f, var_3.c.c.xz, -_wgslsmith_mult_i32(reverseBits(1i), _wgslsmith_div_i32(var_2, -1i)) & 0i, vec4<f32>(var_0, _wgslsmith_f_op_f32(min(var_0, _wgslsmith_f_op_f32(f32(-1f) * -265f))), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(func_3())));
}

