struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<f32>,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_2) -> vec3<f32> {
    let var_0 = arg_0.b.x;
    var var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -265f))), 1610f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~arg_0.b.x, 7u)] + _wgslsmith_f_op_f32(f32(-1f) * -1129f)) * 1311f)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(8354u, 7u)], -1999f, -1000f) + vec3<f32>(global0[_wgslsmith_index_u32(var_0, 7u)], global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(var_0, 7u)]))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(var_0, 7u)], 367f, 1594f), vec3<f32>(-1000f, global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(var_0, 7u)]))))))));
    let var_2 = u_input.a.x;
    var var_3 = ~var_2;
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0[_wgslsmith_index_u32(var_0, 7u)], 1038f, 447f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, -927f, -941f))))))));
    return _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-var_1.x), global0[_wgslsmith_index_u32(~0u, 7u)])));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<bool>) -> i32 {
    let var_0 = vec2<f32>(arg_0.x, arg_0.x);
    let var_1 = vec2<u32>(1u, ~21740u);
    var var_2 = Struct_1(-442f, any(vec3<bool>(!any(arg_1), arg_1.x, _wgslsmith_sub_i32(u_input.a.x, u_input.a.x) >= -13473i)), vec3<f32>(_wgslsmith_f_op_vec3_f32(func_1(Struct_2(var_1.x, var_1 << (var_1 % vec2<u32>(32u))))).x, _wgslsmith_div_f32(773f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-887f))))), _wgslsmith_f_op_f32(f32(-1f) * -1794f)), var_0.x);
    var var_3 = Struct_1(-495f, var_2.b, arg_0, _wgslsmith_div_f32(-1000f, var_0.x));
    var var_4 = Struct_1(var_3.a, var_3.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.c.x), _wgslsmith_f_op_f32(-var_3.d)), _wgslsmith_f_op_vec3_f32(func_1(Struct_2(var_1.x, vec2<u32>(var_1.x, 0u)))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1102f * 867f)), _wgslsmith_f_op_f32(trunc(-395f)), 617f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.a - 2694f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(36684u, 7u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-514f)))))));
    return max(u_input.a.x, _wgslsmith_dot_vec3_i32(min(-(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) | vec3<i32>(1i, u_input.a.x, 34150i)), vec3<i32>(~u_input.a.x, max(0i, u_input.a.x), ~u_input.a.x)), -(vec3<i32>(-11963i, u_input.a.x, -12997i) | -vec3<i32>(1i, u_input.a.x, -1424i))));
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: vec4<u32>) -> vec2<u32> {
    var var_0 = arg_1;
    var var_1 = vec3<i32>(u_input.a.x << (4294967295u % 32u), -20520i, min(0i, func_3(vec3<f32>(global0[_wgslsmith_index_u32(~arg_2.x, 7u)], -1189f, global0[_wgslsmith_index_u32(arg_0, 7u)]), vec4<bool>(true, true, true, true))));
    global0 = array<f32, 7>();
    let var_2 = ~(_wgslsmith_sub_u32(abs(arg_0), arg_2.x) | (var_0.a | 26329u));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, 10999u, 73835u, 14005u), ~arg_2), 7u)])), any(!vec3<bool>(true, true, any(vec4<bool>(false, true, false, false)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(var_0.a, 7u)], -402f, global0[_wgslsmith_index_u32(arg_2.x, 7u)])) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-506f, -1844f, global0[_wgslsmith_index_u32(22261u, 7u)])))), global0[_wgslsmith_index_u32(~(16331u >> (0u % 32u)), 7u)]);
    return _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(abs(arg_2.x), 0u), ~abs(firstTrailingBit(vec2<u32>(17947u, arg_1.b.x))), vec2<u32>(0u ^ countOneBits(arg_2.x), 0u)), _wgslsmith_mod_vec2_u32(~vec2<u32>(var_2, 33625u), ~_wgslsmith_sub_vec2_u32(var_0.b, var_0.b)) ^ arg_1.b);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(max(_wgslsmith_add_vec4_u32(vec4<u32>(arg_2.b.x, arg_2.a, arg_1.a, 0u), vec4<u32>(4294967295u, 46852u, arg_2.b.x, 5451u)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 0u, 0u, 0u), vec4<u32>(4294967295u, 4294967295u, 1u, arg_2.b.x))), ~vec4<u32>(37507u, arg_2.a, 1u, 57754u) >> (~vec4<u32>(4352u, 15888u, arg_1.b.x, 0u) % vec4<u32>(32u))), 7u)]), arg_0.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_1(arg_1)))) + vec3<f32>(global0[_wgslsmith_index_u32(firstLeadingBit(arg_1.b.x), 7u)], arg_0.c.x, _wgslsmith_f_op_f32(arg_0.c.x * global0[_wgslsmith_index_u32(arg_1.a, 7u)]))) - arg_0.c), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_2.a, 7u)] * -1037f));
    global0 = array<f32, 7>();
    var var_1 = global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.a, arg_2.a), vec2<u32>(arg_2.a, 27630u)), _wgslsmith_mod_u32(4294967295u, reverseBits(80486u)), ~arg_1.a), ~(~(~vec3<u32>(4294967295u, arg_2.a, arg_1.a))))), 7u)];
    let var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a), -2147483647i), (vec2<i32>(u_input.a.x, 0i) & vec2<i32>(u_input.a.x, u_input.a.x)) >> (~arg_1.b % vec2<u32>(32u)))), ~select(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, 78065i), max(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x))), vec2<i32>(min(u_input.a.x, 9014i), 6808i), vec2<bool>(true, true)));
    global0 = array<f32, 7>();
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 7>();
    var var_0 = func_4(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1478f))), true, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(17273u, 7u)], 396f, global0[_wgslsmith_index_u32(4294967295u, 7u)])), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, global0[_wgslsmith_index_u32(48377u, 7u)], -557f), _wgslsmith_f_op_vec3_f32(func_1(Struct_2(31565u, vec2<u32>(18421u, 4294967295u)))), true)), select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false), vec3<bool>(false, false, true)))), _wgslsmith_f_op_vec3_f32(func_1(Struct_2(28586u, _wgslsmith_mod_vec2_u32(vec2<u32>(105414u, 36258u), vec2<u32>(51690u, 5529u))))).x), Struct_2(2586u, ~(countOneBits(vec2<u32>(4294967295u, 4294967295u)) | func_2(79964u, Struct_2(70587u, vec2<u32>(88062u, 4294967295u)), vec4<u32>(4294967295u, 1u, 18747u, 0u)))), Struct_2(~1u, _wgslsmith_div_vec2_u32(vec2<u32>(~0u, ~23629u), vec2<u32>(1u, max(1u, 33163u)))), vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 7u)] * _wgslsmith_f_op_f32(f32(-1f) * -118f)), -362f));
    let var_1 = Struct_2(1u, _wgslsmith_add_vec2_u32(vec2<u32>(countOneBits(1u), 2265u), firstLeadingBit(~countOneBits(vec2<u32>(3861u, 1u)))));
    let var_2 = abs(vec2<i32>(-1i, _wgslsmith_sub_i32(u_input.a.x, -12393i)));
    let var_3 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(var_1.a, 7u)], 982f, 261f, var_0.d)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, global0[_wgslsmith_index_u32(var_1.a, 7u)], 1000f, 264f) - vec4<f32>(global0[_wgslsmith_index_u32(var_1.b.x, 7u)], var_0.a, -1000f, -1210f))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1134f, var_0.a, global0[_wgslsmith_index_u32(1u, 7u)], var_0.d))))), vec4<f32>(-537f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~var_1.b.x, 7u)] + _wgslsmith_f_op_f32(-var_0.d)), var_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d + var_0.c.x))), var_0.b))));
    let var_4 = vec3<bool>(false, true, true);
    var var_5 = ~vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(29937u, var_1.b.x, var_1.b.x), ~vec3<u32>(42188u, var_1.b.x, 0u)), _wgslsmith_div_vec3_u32(vec3<u32>(30831u, var_1.b.x, var_1.b.x) & vec3<u32>(var_1.a, 0u, 0u), vec3<u32>(var_1.a, 1u, 4294967295u) << (vec3<u32>(19126u, 55762u, var_1.b.x) % vec3<u32>(32u)))), var_1.a);
    global0 = array<f32, 7>();
    var_5 = ~var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b);
}

