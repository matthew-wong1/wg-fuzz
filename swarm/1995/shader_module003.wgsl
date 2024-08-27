struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2> = array<bool, 2>(true, true);

var<private> global1: array<i32, 20>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_1) -> vec3<i32> {
    var var_0 = arg_0;
    global0 = array<bool, 2>();
    let var_1 = arg_0;
    global1 = array<i32, 20>();
    var var_2 = vec2<bool>(select(false, !global0[_wgslsmith_index_u32(var_1.c, 2u)], !(!global0[_wgslsmith_index_u32(var_1.a.x, 2u)])), true);
    return firstTrailingBit(-(~(~vec3<i32>(u_input.a, 20471i, u_input.a) ^ firstLeadingBit(vec3<i32>(global1[_wgslsmith_index_u32(arg_0.c, 20u)], 28494i, u_input.a)))));
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    global0 = array<bool, 2>();
    let var_0 = select(max(vec2<u32>(_wgslsmith_sub_u32(arg_0.c, arg_0.a.x), _wgslsmith_mod_u32(arg_0.a.x, arg_0.c)), select(arg_0.a.xy >> (arg_0.a.yz % vec2<u32>(32u)), ~arg_0.a.yy, arg_0.b)) >> (vec2<u32>(_wgslsmith_dot_vec3_u32(~arg_0.a, ~vec3<u32>(4294967295u, arg_0.c, arg_0.c)), 5710u) % vec2<u32>(32u)), arg_0.a.xy, !select(!vec2<bool>(true, arg_0.b), select(!vec2<bool>(true, global0[_wgslsmith_index_u32(arg_0.c, 2u)]), !vec2<bool>(global0[_wgslsmith_index_u32(arg_0.c, 2u)], true), !vec2<bool>(arg_0.b, arg_0.b)), vec2<bool>(true, true)));
    let var_1 = true;
    let var_2 = _wgslsmith_add_i32(_wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(countOneBits(arg_0.c), 20u)], u_input.a >> (_wgslsmith_mult_u32(firstTrailingBit(var_0.x), 4723u) % 32u), countOneBits(min(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(0u, 20u)], u_input.a, global1[_wgslsmith_index_u32(0u, 20u)]), vec3<i32>(global1[_wgslsmith_index_u32(arg_0.c, 20u)], global1[_wgslsmith_index_u32(0u, 20u)], 74443i))))), _wgslsmith_add_i32(~_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, -18996i, -1327i, 0i), -vec4<i32>(u_input.a, -22201i, global1[_wgslsmith_index_u32(0u, 20u)], 51841i)), countOneBits(u_input.a)));
    let var_3 = arg_0;
    return !select(vec3<bool>(all(select(vec4<bool>(var_1, var_1, false, true), vec4<bool>(false, true, var_3.b, var_1), vec4<bool>(false, var_3.b, var_3.b, var_3.b))), !all(vec3<bool>(false, false, false)), select(true, true, true)), !vec3<bool>(false, true, all(vec3<bool>(arg_0.b, global0[_wgslsmith_index_u32(4294967295u, 2u)], arg_0.b))), !select(vec3<bool>(true, true, true), !vec3<bool>(true, global0[_wgslsmith_index_u32(var_0.x, 2u)], false), var_1));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = -_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(func_2(Struct_1(vec3<u32>(67574u, 1u, arg_1.c), arg_1.b, 0u)), select(vec3<i32>(1i, global1[_wgslsmith_index_u32(4294967295u, 20u)], -2147483647i), vec3<i32>(-1i, global1[_wgslsmith_index_u32(4294967295u, 20u)], u_input.a), vec3<bool>(false, global0[_wgslsmith_index_u32(arg_1.c, 2u)], arg_1.b))), func_2(arg_1)) >> (arg_1.a % vec3<u32>(32u));
    global0 = array<bool, 2>();
    var var_1 = ~(~(-_wgslsmith_div_vec2_i32(abs(var_0.xx), vec2<i32>(20954i, var_0.x))));
    let var_2 = true;
    let var_3 = !select(!(!func_3(arg_1)), !func_3(arg_1), vec3<bool>(arg_1.b, (global0[_wgslsmith_index_u32(23168u, 2u)] | global0[_wgslsmith_index_u32(1u, 2u)]) && global0[_wgslsmith_index_u32(~22397u, 2u)], (64671u > arg_1.a.x) | !global0[_wgslsmith_index_u32(arg_1.a.x, 2u)]));
    return Struct_1(min(firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(arg_1.c, arg_1.a.x, arg_1.c) << (arg_1.a % vec3<u32>(32u)), arg_1.a)), firstTrailingBit(~arg_1.a)), ~arg_1.c <= arg_1.a.x, _wgslsmith_mult_u32(11165u, arg_1.a.x));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1962f - _wgslsmith_f_op_f32(-642f * 233f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1690f) - 1080f))), _wgslsmith_div_f32(1547f, _wgslsmith_f_op_f32(-1f)))));
    global1 = array<i32, 20>();
    let var_1 = ~_wgslsmith_div_vec4_u32(~(~(vec4<u32>(arg_0.c, arg_0.c, arg_2.a.x, 0u) ^ vec4<u32>(4294967295u, 34907u, 16719u, 45412u))), select(vec4<u32>(46661u >> (arg_0.a.x % 32u), ~0u, min(arg_2.a.x, 1u), ~35708u), ~vec4<u32>(59091u, arg_1.a.x, arg_1.c, arg_2.a.x), true));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - 738f)) + _wgslsmith_f_op_f32(abs(-1361f)));
    return StorageBuffer(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-252f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1066f)) - _wgslsmith_f_op_f32(max(1292f, 1249f))))), countOneBits(min(arg_0.c, arg_1.c) & firstLeadingBit(~var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -981f)))) + _wgslsmith_f_op_f32(f32(-1f) * -284f)), _wgslsmith_f_op_f32(f32(-1f) * -769f)));
    var var_1 = true;
    let var_2 = ~vec3<u32>(~countOneBits(_wgslsmith_div_u32(4294967295u, 56709u)), ~(~1u), ~(~5206u));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-234f)))) + 1f);
    var_1 = false;
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-2388f, -309f), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(111f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2124f, -1651f)))))));
    let var_4 = Struct_1(~(~var_2), true, firstTrailingBit(~var_2.x));
    let var_5 = var_4.c;
    let var_6 = vec2<u32>(var_4.a.x, var_2.x);
    let x = u_input.a;
    s_output = func_4(func_1(25922i, Struct_1(_wgslsmith_add_vec3_u32(var_4.a, firstTrailingBit(vec3<u32>(var_5, 17932u, var_6.x))), var_6.x <= ~0u, 1u)), Struct_1(vec3<u32>(var_4.c, _wgslsmith_div_u32(firstLeadingBit(16624u), abs(var_5)), var_6.x), !(!global0[_wgslsmith_index_u32(~var_5, 2u)]), 4294967295u), var_4);
}

