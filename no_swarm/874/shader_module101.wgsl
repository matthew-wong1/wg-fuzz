struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(559f, -1381f, 2049f, -647f);

var<private> global1: array<Struct_1, 30>;

var<private> global2: array<i32, 5>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> u32 {
    global1 = array<Struct_1, 30>();
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-788f, _wgslsmith_f_op_f32(-global0.x), global0.x, _wgslsmith_f_op_f32(-global0.x))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 733f, global0.x, global0.x)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.x, global0.x, 1128f, -941f), vec4<f32>(-1775f, global0.x, -1000f, global0.x))))));
    var var_0 = ~(global2[_wgslsmith_index_u32(u_input.b, 5u)] >> (_wgslsmith_dot_vec2_u32(select(~vec2<u32>(u_input.b, 104202u), select(vec2<u32>(3532u, arg_2), vec2<u32>(1u, 5260u), false), select(vec2<bool>(arg_1.a, arg_0.a), vec2<bool>(false, false), vec2<bool>(true, arg_1.a))), reverseBits(~vec2<u32>(arg_2, 1u))) % 32u));
    var var_1 = arg_0;
    let var_2 = arg_0;
    return ~u_input.b;
}

fn func_2(arg_0: Struct_1) -> bool {
    let var_0 = vec2<u32>(4294967295u, func_3(arg_0, arg_0, u_input.b) << (~u_input.b % 32u));
    global1 = array<Struct_1, 30>();
    global1 = array<Struct_1, 30>();
    global0 = vec4<f32>(global0.x, -1501f, -2523f, 402f);
    global2 = array<i32, 5>();
    return true;
}

fn func_1() -> u32 {
    let var_0 = Struct_1(func_2(Struct_1(true)));
    var var_1 = Struct_1(!select(!any(vec3<bool>(false, var_0.a, true)), true, !func_2(Struct_1(var_0.a))));
    let var_2 = Struct_1(true || all(!select(vec3<bool>(true, var_1.a, true), vec3<bool>(false, false, var_1.a), var_0.a)));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.x, 749f, global0.x, global0.x))), vec4<f32>(global0.x, global0.x, global0.x, global0.x)))));
    global0 = vec4<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(301f, -1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-325f * global0.x))))) + global0.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.x + 630f))));
    return 0u;
}

fn func_4(arg_0: u32, arg_1: vec3<i32>, arg_2: f32) -> vec2<bool> {
    global2 = array<i32, 5>();
    global2 = array<i32, 5>();
    global2 = array<i32, 5>();
    var var_0 = ~_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(1u, 1u, 55363u), vec3<u32>(4294967295u, u_input.b, u_input.b)), ~vec3<u32>(0u, ~31030u, arg_0 << (4294967295u % 32u)));
    var var_1 = vec3<f32>(803f, arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + global0.x)));
    return !(!vec2<bool>(true, any(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, 307f)))), vec3<f32>(global0.x, 1423f, -1000f)));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~(~(vec3<u32>(14841u, u_input.b, 0u) & vec3<u32>(u_input.b, u_input.b, u_input.b)))), _wgslsmith_div_vec3_u32(countOneBits(~vec3<u32>(u_input.b, 41674u, u_input.b)) & (select(vec3<u32>(4294967295u, 1u, u_input.b), vec3<u32>(u_input.b, 4294967295u, 1u), vec3<bool>(false, false, false)) | vec3<u32>(u_input.b, 4294967295u, u_input.b)), vec3<u32>(~u_input.b, firstTrailingBit(u_input.b) >> (abs(93888u) % 32u), 65074u))), 30u)];
    var var_2 = func_4(func_1(), u_input.a, _wgslsmith_f_op_f32(trunc(-355f)));
    var var_3 = u_input.b;
    let var_4 = max(vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.a, ~u_input.a), global2[_wgslsmith_index_u32(u_input.b, 5u)]), _wgslsmith_mult_vec2_i32(u_input.a.yz, -vec2<i32>(u_input.a.x, global2[_wgslsmith_index_u32(43421u, 5u)])));
    var_2 = func_4(~_wgslsmith_dot_vec3_u32(firstTrailingBit(~vec3<u32>(126064u, u_input.b, 6687u)), ~vec3<u32>(u_input.b, u_input.b, 0u)), u_input.a, -784f);
    var var_5 = Struct_1(!any(func_4(u_input.b, u_input.a, _wgslsmith_f_op_f32(ceil(197f)))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x - 1518f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(var_0.x, global0.x)))))));
    var var_6 = global1[_wgslsmith_index_u32(1u, 30u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>((1u >> (~u_input.b % 32u)) & _wgslsmith_clamp_u32(10998u, 4294967295u, u_input.b), _wgslsmith_clamp_u32(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 26797u), vec2<u32>(u_input.b, 1u)), u_input.b) >> ((u_input.b | _wgslsmith_mod_u32(u_input.b, 63902u)) % 32u), _wgslsmith_dot_vec3_u32(~vec3<u32>(24625u, 1u, u_input.b), ~vec3<u32>(u_input.b, 36713u, u_input.b)) | (~50928u | u_input.b), _wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.b, u_input.b ^ 100775u), (37667u | u_input.b) >> (firstTrailingBit(1u) % 32u))), _wgslsmith_mod_i32(_wgslsmith_sub_i32(var_4.x, -u_input.a.x) >> (4294967295u % 32u), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(u_input.b, 5u)], var_4.x), vec2<i32>(-2147483647i, 37812i) << (vec2<u32>(u_input.b, 1u) % vec2<u32>(32u))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-142f - var_0.x), _wgslsmith_f_op_f32(var_0.x + 292f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(576f * global0.x)), _wgslsmith_f_op_f32(1064f - 2371f), _wgslsmith_f_op_f32(step(229f, _wgslsmith_f_op_f32(464f - global0.x)))) * vec4<f32>(global0.x, -634f, _wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x))))));
}

