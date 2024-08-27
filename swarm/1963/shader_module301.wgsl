struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: u32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<f32, 31>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_1(arg_0: vec2<u32>, arg_1: bool, arg_2: vec2<f32>, arg_3: vec2<i32>) -> u32 {
    let var_0 = select(vec3<bool>(true, true, select(true, !arg_1, all(vec3<bool>(arg_1, false, false)))), select(vec3<bool>(!(arg_1 == false), arg_1, arg_1), !(!vec3<bool>(true, true, arg_1)), select(vec3<bool>(arg_1, true, true), vec3<bool>(arg_1, 0u <= u_input.a, !arg_1), false)), select(!vec3<bool>(!arg_1, false, !arg_1), select(select(select(vec3<bool>(false, arg_1, true), vec3<bool>(arg_1, arg_1, true), vec3<bool>(false, arg_1, true)), vec3<bool>(arg_1, arg_1, true), !vec3<bool>(arg_1, false, arg_1)), vec3<bool>(arg_1, arg_1, u_input.e >= 1i), vec3<bool>(true, true, true)), false));
    let var_1 = Struct_2(~countOneBits(arg_3));
    let var_2 = firstTrailingBit(~arg_0.x ^ _wgslsmith_dot_vec3_u32(vec3<u32>(19460u, 4294967295u ^ arg_0.x, ~arg_0.x), ~abs(vec3<u32>(arg_0.x, 24581u, 0u))));
    return arg_0.x;
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_sub_vec4_i32(vec4<i32>(-28939i, max(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, -36308i, u_input.e, 2147483647i), firstLeadingBit(u_input.c)), -_wgslsmith_clamp_i32(-1i, -8776i, 2147483647i)), firstTrailingBit(i32(-1i) * -66411i), u_input.e), ~u_input.c);
    global0 = 352f;
    var var_1 = Struct_2(var_0.yy);
    var var_2 = !select(!select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), any(vec3<bool>(false, true, true))), vec2<bool>(true, true), !any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), true)));
    let var_3 = global1[_wgslsmith_index_u32(countOneBits(41313u), 31u)];
    return ~countOneBits(~abs(countOneBits(u_input.a)));
}

fn func_2() -> vec4<bool> {
    var var_0 = ((abs(4294967295u) >> (func_3() % 32u)) << (4294967295u % 32u)) >> ((67775u | ~func_3()) % 32u);
    global0 = _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(abs(0u), 31u)] + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~func_3(), 31u)] * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(countOneBits(42984u), 31u)]))));
    global1 = array<f32, 31>();
    var var_1 = vec4<i32>(abs(u_input.b.x), -2147483647i, ~0i, -2147483647i);
    var var_2 = Struct_1(_wgslsmith_clamp_vec2_u32(~reverseBits(~vec2<u32>(u_input.a, 4294967295u)), ~firstTrailingBit(~vec2<u32>(u_input.a, u_input.a)), select(~(vec2<u32>(37030u, u_input.a) & vec2<u32>(4294967295u, u_input.a)), vec2<u32>(~4294967295u, u_input.a), vec2<bool>(true, true))), (global1[_wgslsmith_index_u32(func_1(vec2<u32>(u_input.a, 0u), false, _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(27193u, 31u)], 725f) * vec2<f32>(-146f, global1[_wgslsmith_index_u32(45837u, 31u)])), _wgslsmith_add_vec2_i32(u_input.b, vec2<i32>(var_1.x, -1098i))), 31u)] < global1[_wgslsmith_index_u32(countOneBits(reverseBits(0u)), 31u)]) || true, ~min(select(4294967295u, u_input.a, true), _wgslsmith_clamp_u32(u_input.a ^ u_input.a, 25811u, 15811u)), ~(~_wgslsmith_div_vec4_i32(u_input.c ^ vec4<i32>(u_input.d, 1i, 801i, 72129i), countOneBits(vec4<i32>(var_1.x, u_input.d, var_1.x, -40621i)))));
    return vec4<bool>(true, var_2.b, var_2.b & var_2.b, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~vec2<u32>(4294967295u, func_1(vec2<u32>(0u, 42298u), select(false, false, false), _wgslsmith_f_op_vec2_f32(vec2<f32>(-213f, 712f) + vec2<f32>(-1616f, global1[_wgslsmith_index_u32(0u, 31u)])), ~vec2<i32>(u_input.e, 1i))), true, u_input.a, vec4<i32>(firstLeadingBit(~_wgslsmith_mod_i32(0i, u_input.b.x)), ~max(2147483647i | u_input.c.x, -2147483647i), 28866i, _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(2147483647i, -21372i, 0i)) | _wgslsmith_clamp_vec3_i32(u_input.c.xxz, vec3<i32>(1i, -68918i, -2147483647i), vec3<i32>(2147483647i, u_input.d, 1i)), u_input.c.zzy)));
    let var_1 = u_input.c;
    global1 = array<f32, 31>();
    let var_2 = !select(vec4<bool>(true, select(true, false, false), !var_0.b, true || all(vec4<bool>(true, var_0.b, true, var_0.b))), select(!vec4<bool>(true, var_0.b, var_0.b, var_0.b), vec4<bool>(select(var_0.b, true, var_0.b), any(vec3<bool>(true, var_0.b, true)), false, var_0.b || var_0.b), !func_2()), !var_0.b);
    var var_3 = !all(func_2().xwy);
    let var_4 = Struct_1(select(_wgslsmith_sub_vec2_u32(vec2<u32>(~var_0.c, abs(var_0.a.x)), var_0.a), vec2<u32>(~abs(42949u), 1u), !(!var_2.x)), false, _wgslsmith_clamp_u32(~var_0.c, var_0.c, 5001u), -(firstTrailingBit(var_0.d << (vec4<u32>(8863u, 1u, 17655u, 21698u) % vec4<u32>(32u))) >> ((countOneBits(vec4<u32>(u_input.a, var_0.a.x, u_input.a, u_input.a)) << (~vec4<u32>(u_input.a, 73542u, 30131u, 3698u) % vec4<u32>(32u))) % vec4<u32>(32u))));
    global0 = global1[_wgslsmith_index_u32(reverseBits(~max(u_input.a, ~1u) ^ ~14635u), 31u)];
    let var_5 = _wgslsmith_dot_vec4_i32(var_0.d, var_0.d);
    let var_6 = !vec2<bool>(any(select(func_2().xwz, var_2.xzw, any(vec3<bool>(true, var_4.b, var_4.b)))), var_4.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_sub_i32(var_4.d.x, _wgslsmith_dot_vec3_i32(u_input.c.yyy, abs(var_4.d.xyx))), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(var_1.x, var_5)), vec2<i32>(2147483647i, var_0.d.x)), _wgslsmith_mod_vec2_i32(var_1.yw, var_1.wy))), vec4<u32>(0u, (~u_input.a ^ var_0.c) | _wgslsmith_sub_u32(~u_input.a, var_4.a.x), _wgslsmith_mod_u32(_wgslsmith_add_u32(61384u, ~u_input.a), ~abs(var_4.a.x)), var_4.c), reverseBits(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(14459u, 131456u), var_4.a) & ~vec2<u32>(u_input.a, 0u), var_0.a)), ~vec3<u32>(firstTrailingBit(5121u), ~var_0.a.x, ~1u) ^ ~(_wgslsmith_add_vec3_u32(vec3<u32>(var_4.a.x, u_input.a, var_0.c), vec3<u32>(u_input.a, var_4.a.x, var_4.a.x)) & _wgslsmith_mult_vec3_u32(vec3<u32>(0u, var_0.c, 17919u), vec3<u32>(u_input.a, 29249u, 4294967295u))), abs(4294967295u));
}

