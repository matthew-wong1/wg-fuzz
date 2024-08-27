struct Struct_1 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15>;

var<private> global1: array<vec4<u32>, 8>;

var<private> global2: f32;

var<private> global3: array<vec4<i32>, 3> = array<vec4<i32>, 3>(vec4<i32>(0i, -1i, 1i, -1i), vec4<i32>(0i, 25345i, 1i, i32(-2147483648)), vec4<i32>(0i, i32(-2147483648), 1i, 38906i));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> vec4<u32> {
    global3 = array<vec4<i32>, 3>();
    global0 = array<Struct_1, 15>();
    let var_0 = _wgslsmith_dot_vec4_i32(global3[_wgslsmith_index_u32(4294967295u, 3u)] ^ -vec4<i32>(2147483647i, firstTrailingBit(33179i), ~0i, 1i), max(vec4<i32>(-1i, ~(-15479i), _wgslsmith_add_i32(-1i, 62082i), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -25400i, 9327i, 52017i), global3[_wgslsmith_index_u32(0u, 3u)])) ^ global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_0.a, reverseBits(4294967295u), min(arg_0.a, arg_0.a)), 3u)], -_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 2147483647i, 0i, 28359i), vec4<i32>(46205i, 1i, 1094i, 2147483647i) << (global1[_wgslsmith_index_u32(25042u, 8u)] % vec4<u32>(32u)))));
    var var_1 = global0[_wgslsmith_index_u32(max(~arg_0.a, 1u << (_wgslsmith_add_u32(~(~u_input.b.x), 45184u) % 32u)), 15u)];
    var var_2 = min(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(15301i, var_0), vec2<i32>(6298i, var_0)) | vec2<i32>(var_0, 41954i), vec2<i32>(-32055i << (1u % 32u), _wgslsmith_mult_i32(var_0, var_0))), _wgslsmith_dot_vec2_i32(~(vec2<i32>(var_0, 0i) | vec2<i32>(17828i, -2147483647i)), vec2<i32>(select(11073i, -6038i, true), -var_0))), ~(-16297i) | var_0);
    return ~_wgslsmith_add_vec4_u32(vec4<u32>(~arg_0.a, ~var_1.a, max(30366u, arg_0.a), ~(4294967295u << (0u % 32u))), global1[_wgslsmith_index_u32(4294967295u, 8u)]);
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> vec4<u32> {
    global0 = array<Struct_1, 15>();
    var var_0 = ~func_3(Struct_1(~12396u, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1651f * 1024f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(263f, -896f)) * _wgslsmith_f_op_f32(f32(-1f) * -334f)))));
    var var_1 = arg_2;
    let var_2 = ~u_input.b.x;
    global2 = -1366f;
    return _wgslsmith_mult_vec4_u32(global1[_wgslsmith_index_u32(select(1u, _wgslsmith_add_u32(reverseBits(u_input.a | 22306u), ~_wgslsmith_mult_u32(arg_0.x, 1u)), all(!(!vec2<bool>(arg_3, arg_3)))), 8u)], select(_wgslsmith_mod_vec4_u32(global1[_wgslsmith_index_u32(var_2, 8u)] << (vec4<u32>(7263u, 28634u, arg_0.x, 48801u) % vec4<u32>(32u)), ~global1[_wgslsmith_index_u32(70313u, 8u)]) << (global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(1u, 32747u, 0u), 8u)] % vec4<u32>(32u)), abs(_wgslsmith_mod_vec4_u32(vec4<u32>(12772u, 4294967295u, 1u, 4294967295u), vec4<u32>(30000u, var_0.x, 0u, arg_0.x)) << (vec4<u32>(arg_1.a, 4294967295u, var_2, 7857u) % vec4<u32>(32u))), vec4<bool>(true, true, true, true)));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = reverseBits(_wgslsmith_div_vec4_u32(global1[_wgslsmith_index_u32(min(0u, reverseBits(firstLeadingBit(4294967295u))), 8u)], global1[_wgslsmith_index_u32(4294967295u, 8u)]));
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-721f + -1609f) * _wgslsmith_f_op_f32(f32(-1f) * -1786f)), arg_2.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-199f + arg_2.b), arg_2.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_2.b)), _wgslsmith_f_op_f32(exp2(arg_2.b)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1820f, arg_1.b, arg_2.b, 1105f))))))));
    var_0 = ~firstLeadingBit(_wgslsmith_clamp_vec4_u32(func_2(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, arg_2.a, 0u), var_0.zwz), Struct_1(27023u, -689f), Struct_1(u_input.b.x, -906f), true), firstLeadingBit(~vec4<u32>(56950u, 0u, 14421u, arg_1.a)), global1[_wgslsmith_index_u32(arg_1.a, 8u)]));
    var_0 = firstLeadingBit(global1[_wgslsmith_index_u32(~(~(~(~1u))), 8u)]);
    let var_2 = firstTrailingBit(-vec2<i32>(abs(1i), 2147483647i));
    return Struct_1(_wgslsmith_div_u32(0u, countOneBits(~_wgslsmith_clamp_u32(arg_2.a, 27753u, 0u))), _wgslsmith_f_op_f32(arg_1.b * _wgslsmith_f_op_f32(-var_1.x)));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    global1 = array<vec4<u32>, 8>();
    var var_0 = select(!vec2<bool>(all(vec3<bool>(true, false, true)) || false, !all(vec3<bool>(true, true, true))), !(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false))), !select(vec2<bool>(any(vec2<bool>(true, true)), true), vec2<bool>(true, any(vec2<bool>(false, true))), !all(vec2<bool>(true, true))));
    var var_1 = true;
    let var_2 = select(!select(vec2<bool>(true, true), vec2<bool>(var_0.x & true, var_0.x || var_0.x), select(vec2<bool>(true, true), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x), false), vec2<bool>(true, true))), !(!(!(!vec2<bool>(var_0.x, var_0.x)))), select(vec2<bool>(true, var_0.x), vec2<bool>(!var_0.x || true, false), true));
    global3 = array<vec4<i32>, 3>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -494f))));
    let var_0 = Struct_1(4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_4(max(vec2<i32>(21625i, 2147483647i), vec2<i32>(-2147483647i, -35190i)), func_1(1544f, global0[_wgslsmith_index_u32(u_input.b.x, 15u)], global0[_wgslsmith_index_u32(u_input.b.x, 15u)]), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, 34794u), 15u)])), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(463f, 1063f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-1678f, 1676f, false)))))));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.a, 71689u, u_input.a) | vec3<u32>(0u, var_0.a, 11495u), select(vec3<u32>(var_0.a, var_0.a, 31388u), vec3<u32>(var_0.a, u_input.b.x, 40631u), vec3<bool>(true, false, true))) & (~select(vec3<u32>(u_input.b.x, 4294967295u, var_0.a), vec3<u32>(0u, u_input.b.x, var_0.a), vec3<bool>(true, true, true)) ^ ~(vec3<u32>(17053u, u_input.a, 13535u) ^ vec3<u32>(var_0.a, u_input.a, 0u))), vec3<u32>(var_0.a, ~_wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec2_u32(u_input.b, u_input.b), ~1u), _wgslsmith_add_u32(59063u, 1u << ((u_input.a | 20166u) % 32u)))), 15u)];
    var var_2 = 1u;
    var var_3 = Struct_1(var_1.a, _wgslsmith_f_op_f32(-var_0.b));
    let var_4 = !select(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false))), vec4<bool>(true, true, true, true), true);
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(countOneBits(vec2<i32>(0i, -1i)) << (~vec2<u32>(var_1.a, var_3.a) % vec2<u32>(32u))));
}

