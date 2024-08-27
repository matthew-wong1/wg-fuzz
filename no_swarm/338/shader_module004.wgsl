struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5> = array<bool, 5>(false, true, false, true, false);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: u32) -> vec4<bool> {
    global0 = array<bool, 5>();
    var var_0 = min(vec2<u32>(~(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 14392u, 0u, arg_2), vec4<u32>(u_input.b, 1u, arg_2, 49557u)) << (~u_input.b % 32u)), 1794u & abs(~arg_2)), vec2<u32>(~arg_1.x, min(19157u, 0u)));
    var var_1 = 38905u;
    global0 = array<bool, 5>();
    global0 = array<bool, 5>();
    return !vec4<bool>(true, !any(select(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 5u)]), vec2<bool>(true, true), vec2<bool>(true, global0[_wgslsmith_index_u32(arg_1.x, 5u)]))), true, global0[_wgslsmith_index_u32(max(_wgslsmith_clamp_u32(37987u, u_input.b, 89932u), _wgslsmith_mod_u32(0u, var_0.x)) ^ ~arg_1.x, 5u)]);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: vec4<i32>, arg_3: vec3<i32>) -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(570f, -524f)))));
    return select(func_3(Struct_1(-1274f), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(11665u, u_input.b, 42331u, 28468u), vec4<u32>(1u, arg_0.x, arg_0.x, arg_0.x)) >> (abs(0u) % 32u), u_input.b, u_input.a), 1u), select(func_3(Struct_1(var_0.a), ~(~vec3<u32>(4294967295u, 22251u, u_input.b)), abs(_wgslsmith_mult_u32(0u, 31193u))), !vec4<bool>(any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)], false)), !global0[_wgslsmith_index_u32(42834u, 5u)], true, global0[_wgslsmith_index_u32(0u, 5u)] || global0[_wgslsmith_index_u32(arg_0.x, 5u)]), true), any(vec4<bool>(arg_1.x >= ~35186i, any(func_3(var_0, vec3<u32>(43034u, arg_0.x, arg_0.x), 0u)), false, true)));
}

fn func_1(arg_0: bool) -> vec4<bool> {
    let var_0 = select(!(!func_2(~vec2<u32>(u_input.a, u_input.a), vec3<i32>(1i, 1i, 1i), -vec4<i32>(16785i, 2147483647i, 1i, 0i), max(vec3<i32>(19371i, -14612i, 1933i), vec3<i32>(-1244i, -37781i, 42196i)))), vec4<bool>(!(global0[_wgslsmith_index_u32(54271u, 5u)] & arg_0) | !all(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 5u)], arg_0)), true, true, false), !(!arg_0));
    let var_1 = u_input.b;
    global0 = array<bool, 5>();
    global0 = array<bool, 5>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-577f - _wgslsmith_f_op_f32(round(1464f))) - -890f);
    return func_2(~select(~vec2<u32>(4294967295u, 132771u), countOneBits(~vec2<u32>(46384u, 0u)), var_0.wx), ~(-(~vec3<i32>(-1i, -16881i, 22i))) | countOneBits(vec3<i32>(_wgslsmith_mult_i32(-1i, -2897i), select(2147483647i, 0i, false), -30473i)), ~vec4<i32>(0i, _wgslsmith_mult_i32(firstTrailingBit(-26356i), ~1i), -_wgslsmith_mod_i32(8734i, -2147483647i), 1i), vec3<i32>(~_wgslsmith_mod_i32(_wgslsmith_clamp_i32(44907i, 18744i, 47151i), abs(2147483647i)), ~(-2147483647i), ~(i32(-1i) * -5773i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mult_i32(abs(~(~(-2147483647i))), 1i);
    var var_1 = !global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(~(~vec2<u32>(u_input.a, 30456u))), _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(28902u, 4294967295u), max(vec2<u32>(101373u, 4294967295u), vec2<u32>(u_input.a, u_input.b))), vec2<u32>(u_input.b, firstLeadingBit(u_input.a)))), 5u)];
    let var_2 = !(!select(global0[_wgslsmith_index_u32(abs(u_input.a << (u_input.b % 32u)), 5u)], all(select(vec2<bool>(global0[_wgslsmith_index_u32(0u, 5u)], true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 5u)], false), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 5u)], true))), var_0 > 0i));
    global0 = array<bool, 5>();
    var var_3 = Struct_1(_wgslsmith_f_op_f32(sign(1f)));
    var var_4 = any(!select(select(!vec2<bool>(var_2, true), select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 5u)], true), vec2<bool>(true, false), global0[_wgslsmith_index_u32(u_input.a, 5u)]), !vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 5u)])), vec2<bool>(global0[_wgslsmith_index_u32(1u, 5u)], any(vec2<bool>(false, global0[_wgslsmith_index_u32(4756u, 5u)]))), true));
    global0 = array<bool, 5>();
    var var_5 = !(!(!select(func_1(true), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 5u)], global0[_wgslsmith_index_u32(u_input.a, 5u)], global0[_wgslsmith_index_u32(40776u, 5u)], var_2), vec4<bool>(true, true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, var_0), vec2<i32>(70619i, 22861i)), vec2<i32>(-2147483647i, ~var_0)), _wgslsmith_add_u32(~countOneBits(0u), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, u_input.a, u_input.b), ~vec3<u32>(u_input.b, u_input.a, 49719u)), firstTrailingBit(62267u))), ~(u_input.b | firstTrailingBit(21417u)), 1198f);
}

