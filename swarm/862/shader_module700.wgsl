struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(507f, 1649f, -148f, 352f);

var<private> global1: vec4<i32> = vec4<i32>(i32(-2147483648), -15802i, -24068i, 0i);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool, arg_1: Struct_4, arg_2: vec4<u32>, arg_3: u32) -> vec4<i32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1325f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - arg_1.c.a.x)))), _wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.c.a.x), _wgslsmith_div_f32(690f, global0.x), any(vec2<bool>(arg_0, arg_0)))))))), _wgslsmith_f_op_f32(f32(-1f) * -1161f), -589f);
    let var_1 = vec4<bool>(global0.x <= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.c.a.x + _wgslsmith_f_op_f32(ceil(-1430f))), 1117f)), 913f > global0.x, ((global1.x | firstLeadingBit(global1.x)) >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.a), vec2<u32>(1u, 1u)) % 32u)) < firstTrailingBit(~(~global1.x)), arg_0);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global0.wxw, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global0.wyx))))), all(vec4<bool>(false, true, all(var_1.wzw), any(var_1))))));
    var var_3 = all(!(!vec2<bool>(all(var_1), true)));
    var var_4 = var_1.xyw;
    return vec4<i32>(global1.x, global1.x, -2147483647i, 2147483647i);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: i32, arg_3: u32) -> Struct_2 {
    global1 = max(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(18844i, -29315i, arg_2, global1.x), vec4<i32>(-3645i, 2147483647i, 1i, global1.x)), ~vec4<i32>(-2147483647i, arg_2, 2147483647i, 2147483647i)) << (max(_wgslsmith_div_vec4_u32(u_input.b | vec4<u32>(42729u, 73071u, 64839u, 70613u), ~vec4<u32>(4294967295u, arg_0.b, arg_3, u_input.b.x)), ~u_input.b) % vec4<u32>(32u)), select(countOneBits(func_3(false, Struct_4(vec4<f32>(arg_0.a.x, 808f, 1810f, arg_0.a.x), u_input.b, arg_0), vec4<u32>(u_input.b.x, 52671u, arg_3, arg_0.b), arg_3) ^ -vec4<i32>(arg_2, arg_2, arg_2, -28655i)), _wgslsmith_clamp_vec4_i32(~vec4<i32>(global1.x, arg_2, arg_2, global1.x), -abs(vec4<i32>(-2147483647i, arg_2, 2147483647i, -20936i)), min(~vec4<i32>(-1i, 2147483647i, global1.x, -46977i), vec4<i32>(2147483647i, global1.x, 960i, arg_2) & vec4<i32>(global1.x, 17538i, arg_2, arg_2))), true));
    global0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1.x, arg_1.x, 2080f, -157f), vec4<f32>(global0.x, 124f, arg_0.a.x, 594f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1609f, arg_1.x, 1042f, -131f) + vec4<f32>(110f, global0.x, arg_0.a.x, arg_0.a.x)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1000f, _wgslsmith_f_op_f32(abs(global0.x)), -302f) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-618f, -2222f, -1175f, global0.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1070f, -112f, -314f, arg_1.x) + vec4<f32>(-723f, global0.x, arg_1.x, 332f))))) * vec4<f32>(_wgslsmith_f_op_f32(min(177f, arg_0.a.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(arg_0.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1175f))), arg_1.x)), all(select(vec2<bool>(false, true), vec2<bool>(true, true), any(vec2<bool>(true, true)))) & any(vec3<bool>(-2102f >= global0.x, true, u_input.b.x <= arg_3))));
    var var_0 = _wgslsmith_clamp_u32(48994u, ~arg_3, 1u);
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1537f - -1376f), -749f, 1254f) * global0.wyx), u_input.a);
    var var_2 = !vec3<bool>(false, select(all(vec4<bool>(true, true, true, true)), true, true), all(vec2<bool>(true, true)));
    return Struct_2(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_3, 1u, ~61684u, countOneBits(var_1.b)), select(select(u_input.b, vec4<u32>(arg_3, 1u, 16023u, 0u), vec4<bool>(var_2.x, true, var_2.x, false)), vec4<u32>(0u, 0u, 9970u, 365u) ^ u_input.b, all(vec2<bool>(var_2.x, var_2.x)))) & vec4<u32>(~var_1.b, abs(~0u), ~countOneBits(47629u), var_1.b & ~arg_0.b), ~vec2<i32>(firstLeadingBit(_wgslsmith_clamp_i32(0i, 60980i, arg_2)), select(global1.x, arg_2, true) | global1.x));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2) -> Struct_3 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(arg_0.c.a.x, global0.x)))), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1353f * 1414f))))), 4294967295u);
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(step(arg_0.a.x, 168f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -542f) * -440f)), arg_0.c.a.x, -1268f, 1674f) * _wgslsmith_f_op_vec4_f32(arg_0.a * arg_0.a));
    global0 = arg_0.a;
    var_0 = arg_0.c;
    let var_1 = arg_0.c;
    return Struct_3(Struct_2(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.b, 21305u, 0u, var_0.b), vec4<u32>(2132u, 4294967295u, 7203u, var_1.b)) ^ ~vec4<u32>(4294967295u, var_0.b, 2271u, arg_1.a.x), max(~u_input.b, vec4<u32>(21151u, var_0.b, 1u, u_input.b.x) | vec4<u32>(31153u, arg_0.b.x, var_1.b, var_1.b))), ~vec2<i32>(-1i, min(-2147483647i, global1.x))), 57218u);
}

fn func_1(arg_0: vec4<u32>) -> f32 {
    let var_0 = func_4(Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.x, global0.x, -442f, global0.x))) + vec4<f32>(892f, _wgslsmith_f_op_f32(ceil(global0.x)), _wgslsmith_f_op_f32(-global0.x), global0.x)), u_input.b, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(global0.x * global0.x), _wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_f_op_f32(-global0.x)), ~min(arg_0.x, arg_0.x))), func_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1426f, -934f, global0.x)), 55516u), global0.xy, -2147483647i, u_input.a));
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1039f, 1574f)), global0.x, -192f, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-global0.x)))) + vec4<f32>(-1882f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1109f))), 890f, _wgslsmith_f_op_f32(func_1(~(~vec4<u32>(1u, u_input.b.x, u_input.b.x, 124369u))))));
    var var_0 = u_input.b.zyz;
    let var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(~abs(5825i), 1i << (firstLeadingBit(u_input.a) % 32u)), -_wgslsmith_clamp_i32(2147483647i, global1.x, 0i), _wgslsmith_dot_vec2_i32(firstLeadingBit(global1.wz), vec2<i32>(-39588i, 2853i)) ^ _wgslsmith_div_i32(~33681i, _wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, global1.x), global1.yw)), abs(firstTrailingBit(func_4(Struct_4(vec4<f32>(-1000f, 1054f, 834f, global0.x), u_input.b, Struct_1(vec3<f32>(global0.x, global0.x, global0.x), 28651u)), Struct_2(u_input.b, global1.wx)).a.b.x))), _wgslsmith_mult_vec4_i32(reverseBits(-(vec4<i32>(global1.x, global1.x, 18743i, -7624i) << (vec4<u32>(var_0.x, 0u, u_input.a, var_0.x) % vec4<u32>(32u)))), _wgslsmith_sub_vec4_i32(vec4<i32>(global1.x, global1.x, global1.x, global1.x) | vec4<i32>(global1.x, 1i, global1.x, -1614i), abs(vec4<i32>(global1.x, global1.x, -1i, global1.x))) & _wgslsmith_div_vec4_i32(vec4<i32>(9654i, global1.x, global1.x, 1i) & vec4<i32>(-1i, -13597i, 37324i, 1i), firstTrailingBit(vec4<i32>(4337i, -1i, -73790i, -27762i)))));
    global1 = -(~select(vec4<i32>(0i, var_1.x, 1i, 2147483647i) | vec4<i32>(global1.x, global1.x, var_1.x, global1.x), min(vec4<i32>(var_1.x, 2147483647i, global1.x, var_1.x), vec4<i32>(-1i, -35527i, var_1.x, var_1.x)), true) >> (~_wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, var_0.x, var_0.x, u_input.b.x), u_input.b, u_input.b) % vec4<u32>(32u)));
    global1 = min(_wgslsmith_mod_vec4_i32(vec4<i32>(global1.x, global1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -1i, var_1.x), vec3<i32>(42691i, -42135i, global1.x)), ~var_1.x), -vec4<i32>(2147483647i, 36179i, 2147483647i, var_1.x)), vec4<i32>(-(~1i), countOneBits(global1.x) << (~u_input.b.x % 32u), -1i, global1.x)) ^ _wgslsmith_mult_vec4_i32(min(firstTrailingBit(min(vec4<i32>(var_1.x, -2147483647i, var_1.x, var_1.x), var_1)), -(vec4<i32>(global1.x, var_1.x, var_1.x, -16689i) >> (vec4<u32>(14887u, var_0.x, var_0.x, var_0.x) % vec4<u32>(32u)))), -(vec4<i32>(global1.x, global1.x, -1i, -12895i) & select(var_1, vec4<i32>(var_1.x, 16435i, 11951i, global1.x), vec4<bool>(false, true, false, false))));
    var var_2 = global0.x;
    var var_3 = -9093i;
    let x = u_input.a;
    s_output = StorageBuffer(select(select(countOneBits(vec4<i32>(-1i, -28682i, -2147483647i, var_1.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 2403i, -1i, var_1.x), var_1, vec4<i32>(2147483647i, -1i, global1.x, global1.x)), vec4<bool>(true, true, true, true)), vec4<i32>(global1.x, global1.x & 1i, _wgslsmith_dot_vec4_i32(var_1, vec4<i32>(global1.x, -36631i, var_1.x, var_1.x)), _wgslsmith_dot_vec2_i32(var_1.yx, global1.zx)), false) << ((vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(1u, var_0.x, var_0.x, var_0.x)), _wgslsmith_sub_u32(var_0.x, var_0.x), u_input.a, u_input.b.x << (u_input.a % 32u)) >> (vec4<u32>(u_input.b.x, 1u, 55478u, firstTrailingBit(4294967295u)) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.x), -772f, _wgslsmith_f_op_f32(f32(-1f) * -954f), _wgslsmith_f_op_f32(max(2128f, global0.x)))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x), global0.x, -2178f))))), global1.yy);
}

