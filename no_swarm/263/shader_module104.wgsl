struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 7>;

var<private> global2: f32 = 2096f;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = vec4<i32>(~_wgslsmith_mod_i32(reverseBits(-38508i), select(-38631i, ~(-20757i), select(false, false, false))), -_wgslsmith_add_i32(-max(0i, -18018i), max(-51798i >> (arg_0.a % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(-38445i, 0i), vec2<i32>(2147483647i, -2147483647i)))), -select(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, 2147483647i, 46737i), vec4<i32>(1i, 1i, 1i, 1i)), abs(-6793i), false), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(~4850i, max(25908i, 423i), 1i), 2147483647i));
    var var_1 = 4294967295u;
    let var_2 = arg_2.a;
    var_1 = 117454u;
    global2 = _wgslsmith_f_op_f32(-1f);
    return Struct_1(_wgslsmith_mod_u32(~_wgslsmith_mod_u32(_wgslsmith_sub_u32(116186u, arg_0.a), select(global0.a, var_2, true)), u_input.a));
}

fn func_1(arg_0: bool, arg_1: vec4<u32>, arg_2: f32) -> i32 {
    var var_0 = func_2(global1[_wgslsmith_index_u32(0u, 7u)], Struct_1(~u_input.a | abs(arg_1.x)), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 1u), 7u)]);
    global0 = Struct_1(~(~global0.a));
    global2 = -502f;
    var var_1 = 1073f;
    var var_2 = global1[_wgslsmith_index_u32(global0.a, 7u)];
    return ~1i;
}

fn func_3(arg_0: i32) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(0u, 7u)];
    let var_1 = vec2<bool>(true, !(570f != _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-2723f * 733f)))));
    global2 = -496f;
    let var_2 = -703f;
    global1 = array<Struct_1, 7>();
    return global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, _wgslsmith_dot_vec4_u32(firstLeadingBit(abs(vec4<u32>(55289u, 4294967295u, 4294967295u, var_0.a)) | firstTrailingBit(vec4<u32>(19577u, u_input.a, 1u, 81229u))), vec4<u32>(1u, firstLeadingBit(u_input.a), ~var_0.a >> (1u % 32u), u_input.a))), 7u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_mod_i32(-(~17352i), _wgslsmith_sub_i32(2147483647i, func_1(false, vec4<u32>(global0.a, global0.a, 1u, global0.a), 870f))) ^ 771i, -2147483647i);
    global1 = array<Struct_1, 7>();
    let var_1 = func_2(global1[_wgslsmith_index_u32(~(_wgslsmith_mod_u32(global0.a, ~1u) & 14047u), 7u)], Struct_1(_wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.a, u_input.a), _wgslsmith_mult_u32(1u, countOneBits(global0.a)))), func_2(global1[_wgslsmith_index_u32(65138u, 7u)], global1[_wgslsmith_index_u32(47421u, 7u)], func_2(Struct_1(0u), func_2(Struct_1(83315u), global1[_wgslsmith_index_u32(max(u_input.a, global0.a), 7u)], global1[_wgslsmith_index_u32(select(4294967295u, 41558u, false), 7u)]), func_3(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, -2147483647i), vec3<i32>(4859i, -1i, -42132i))))));
    var var_2 = _wgslsmith_add_u32(u_input.a, ~_wgslsmith_sub_u32(~60495u, 0u));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(floor(1f))) - 1000f);
    var_2 = _wgslsmith_clamp_u32(4294967295u, ~u_input.a, 0u >> (~((13111u ^ global0.a) ^ global0.a) % 32u));
    var var_4 = func_2(func_2(var_1, Struct_1((var_1.a << (u_input.a % 32u)) >> (~15749u % 32u)), func_2(var_1, Struct_1(1u), Struct_1(~38091u))), Struct_1(4294967295u), func_2(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(min(vec4<u32>(1u, var_1.a, 30989u, global0.a), vec4<u32>(var_1.a, 40942u, 23692u, 0u)) >> (~vec4<u32>(10395u, 4294967295u, 0u, 9842u) % vec4<u32>(32u)), vec4<u32>(var_1.a, ~global0.a, 1u, ~68038u)), 7u)], func_2(Struct_1(global0.a), Struct_1(func_3(13967i).a), func_3(firstLeadingBit(1i))), var_1));
    global1 = array<Struct_1, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-2455f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-910f)))), ~select(select(vec4<i32>(8028i, -2147483647i, 2147483647i, 3632i), firstTrailingBit(vec4<i32>(-63128i, 11093i, -1i, 37832i)), all(vec4<bool>(false, false, false, false))), -vec4<i32>(-8502i, 1i, 45925i, 6043i), vec4<bool>(true, true, false, true)), vec2<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -913f)), ~max(~max(u_input.a, 0u), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_4.a, var_1.a, 0u, 1u), vec4<u32>(global0.a, 1u, var_4.a, var_4.a), vec4<u32>(var_4.a, var_1.a, var_1.a, var_1.a)), vec4<u32>(var_1.a, var_4.a, var_1.a, u_input.a))));
}

