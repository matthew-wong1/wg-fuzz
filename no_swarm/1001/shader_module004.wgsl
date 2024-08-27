struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: bool,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec2<f32>, arg_3: vec2<u32>) -> vec2<u32> {
    return min(~(~arg_0.b), arg_1.yz >> (vec2<u32>(_wgslsmith_dot_vec2_u32(~arg_0.b, arg_0.b), reverseBits(~5688u)) % vec2<u32>(32u)));
}

fn func_3(arg_0: u32, arg_1: vec4<f32>, arg_2: f32, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = _wgslsmith_mult_vec4_i32(((vec4<i32>(arg_3.d, -2147483647i, u_input.a, -33509i) << (vec4<u32>(7551u, 102412u, arg_0, 1u) % vec4<u32>(32u))) ^ firstTrailingBit(vec4<i32>(2147483647i, u_input.a, -72536i, 1i))) << (select(~vec4<u32>(u_input.d, u_input.c, 1u, u_input.d), max(vec4<u32>(0u, 33663u, u_input.d, arg_3.a), vec4<u32>(29277u, arg_0, arg_0, u_input.c)), vec4<bool>(true, false, arg_3.c, true)) % vec4<u32>(32u)), abs(countOneBits(vec4<i32>(-32679i, u_input.a, 26977i, arg_3.d)))) | (vec4<i32>(-u_input.b, ~(~u_input.b), u_input.b | arg_3.d, arg_3.d) ^ -(reverseBits(vec4<i32>(arg_3.d, u_input.b, arg_3.d, -2147483647i)) << (select(vec4<u32>(89803u, 62114u, 0u, arg_3.b.x), vec4<u32>(u_input.c, 105217u, u_input.d, 1u), arg_3.c) % vec4<u32>(32u))));
    global0 = array<Struct_1, 21>();
    var var_1 = arg_3;
    let var_2 = !any(vec2<bool>(!var_1.c, arg_3.c));
    let var_3 = Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(abs(1u), _wgslsmith_clamp_u32(96617u, var_1.a, u_input.c), ~arg_0, _wgslsmith_dot_vec4_u32(vec4<u32>(139921u, 0u, 1947u, 40947u), vec4<u32>(35496u, 37596u, 1u, u_input.c))) ^ vec4<u32>(~arg_0, _wgslsmith_sub_u32(0u, 0u), var_1.a, u_input.d & 14673u), _wgslsmith_add_vec4_u32(vec4<u32>(12210u, ~78036u, u_input.d | 16696u, 4294967295u), abs(reverseBits(vec4<u32>(arg_0, u_input.d, u_input.c, var_1.a))))), var_1.b, !all(select(select(vec2<bool>(var_2, true), vec2<bool>(var_1.c, var_1.c), vec2<bool>(var_1.c, true)), vec2<bool>(true, true), vec2<bool>(arg_3.c, true))), -arg_3.d, 900f);
    return (~(min(arg_3.b, arg_3.b) << (countOneBits(var_1.b) % vec2<u32>(32u))) & ~(arg_3.b >> (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u)))) | ~vec2<u32>(countOneBits(_wgslsmith_sub_u32(var_3.b.x, 0u)), _wgslsmith_dot_vec2_u32(arg_3.b, arg_3.b));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: vec2<f32>) -> vec2<u32> {
    let var_0 = Struct_1(~_wgslsmith_dot_vec2_u32(~(~vec2<u32>(4294967295u, arg_1)), ~func_2(global0[_wgslsmith_index_u32(arg_1, 21u)], vec3<u32>(arg_1, arg_1, 59040u), vec2<f32>(921f, -1000f), vec2<u32>(4294967295u, u_input.c))), _wgslsmith_mod_vec2_u32(abs(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.d, 1u), vec2<u32>(arg_1, arg_1))), reverseBits(~vec2<u32>(0u, 17147u))), false, min(u_input.a, ~arg_0), _wgslsmith_f_op_f32(-arg_2.x));
    global0 = array<Struct_1, 21>();
    let var_1 = ~(~_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(func_3(arg_1, vec4<f32>(var_0.e, var_0.e, arg_2.x, arg_2.x), 1845f, var_0), _wgslsmith_div_vec2_u32(vec2<u32>(arg_1, arg_1), vec2<u32>(u_input.d, arg_1))), var_0.b));
    let var_2 = !select(!vec3<bool>(false || var_0.c, !var_0.c, false), select(vec3<bool>(true, false, var_0.c), vec3<bool>(false, true, !var_0.c), !(!vec3<bool>(var_0.c, false, true))), true);
    var var_3 = _wgslsmith_f_op_f32(-var_0.e);
    return var_0.b >> (vec2<u32>(0u, var_0.b.x) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 21>();
    var var_0 = -_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b, u_input.a, u_input.b, u_input.a), ~vec4<i32>(0i, 3852i, 47331i, 0i)), (-2147483647i << (u_input.c % 32u)) | -13770i) >= (firstTrailingBit(min(-10965i, _wgslsmith_div_i32(-56077i, 15593i))) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u) >> (select(vec2<u32>(u_input.d, 38914u), vec2<u32>(4294967295u, u_input.c), vec2<bool>(true, false)) % vec2<u32>(32u)), (vec2<u32>(0u, u_input.d) | vec2<u32>(u_input.c, 33915u)) << (func_1(u_input.a, u_input.d, vec2<f32>(807f, 374f)) % vec2<u32>(32u))) % 32u));
    var var_1 = Struct_1(u_input.c, vec2<u32>(~firstTrailingBit(_wgslsmith_div_u32(1u, u_input.d)), u_input.c), true || all(vec3<bool>(true, true, true)), min(u_input.b, abs(abs(1i))), _wgslsmith_f_op_f32(min(473f, 1000f)));
    var_1 = global0[_wgslsmith_index_u32(firstLeadingBit(0u), 21u)];
    var var_2 = select(!select(vec3<bool>(true, !var_1.c, all(vec3<bool>(var_1.c, var_1.c, true))), vec3<bool>(!var_1.c, all(vec4<bool>(false, var_1.c, true, var_1.c)), 700f > var_1.e), !(!vec3<bool>(false, var_1.c, var_1.c))), vec3<bool>(any(!vec3<bool>(false, var_1.c, var_1.c)) || var_1.c, !any(!vec2<bool>(var_1.c, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1555f, -1269f)) + 371f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-914f * var_1.e))), !vec3<bool>(!any(vec4<bool>(true, false, true, var_1.c)), var_1.c, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.e)) + -1077f), var_1.e, firstLeadingBit(var_1.d) > -2147483647i)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-2728f, var_1.e))) - -172f)), var_1.b.x, 2147483647i);
}

