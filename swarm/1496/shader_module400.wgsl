struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 28>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<bool>) -> vec2<u32> {
    var var_0 = _wgslsmith_clamp_vec3_u32(min(u_input.d, _wgslsmith_mult_vec3_u32(u_input.d, u_input.d)), u_input.d << (u_input.d % vec3<u32>(32u)), ~u_input.d) | ~(~_wgslsmith_add_vec3_u32(~u_input.d, vec3<u32>(u_input.a.x, u_input.c.x, 4294967295u)));
    var_0 = abs(select(u_input.d, vec3<u32>(4294967295u | reverseBits(var_0.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.d.x, 8623u), vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, u_input.c.x)), _wgslsmith_mod_u32(~36649u, u_input.d.x ^ var_0.x)), !select(arg_0, arg_0, arg_0)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-1582f)))), _wgslsmith_f_op_f32(-1507f * 510f))), -739f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1825f + 701f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(263f)))))));
    var_0 = _wgslsmith_div_vec3_u32(firstLeadingBit(u_input.d), vec3<u32>(1u, var_0.x, u_input.a.x) ^ abs(u_input.d));
    global0 = array<vec4<f32>, 28>();
    return ~vec2<u32>(var_0.x, select(u_input.a.x, max(var_0.x, 4294967295u), false));
}

fn func_2(arg_0: f32) -> bool {
    let var_0 = func_3(!(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), true)), vec2<bool>(true, false));
    global0 = array<vec4<f32>, 28>();
    global0 = array<vec4<f32>, 28>();
    var var_1 = ~_wgslsmith_div_vec3_u32(u_input.d, (~vec3<u32>(26045u, 4294967295u, 73128u) & _wgslsmith_add_vec3_u32(u_input.d, vec3<u32>(u_input.d.x, var_0.x, 4294967295u))) >> (~_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.x, u_input.d.x, var_0.x), vec3<u32>(100875u, u_input.d.x, u_input.a.x)) % vec3<u32>(32u)));
    var var_2 = _wgslsmith_div_vec2_i32(select(vec2<i32>(1i, 1i), _wgslsmith_mult_vec2_i32(max(vec2<i32>(2147483647i, -11927i), select(vec2<i32>(-42278i, 1037i), vec2<i32>(-2147483647i, 34933i), true)), select(-vec2<i32>(65157i, 49866i), vec2<i32>(1i, 1i), vec2<bool>(true, false))), vec2<bool>(true, true)), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, 1i), abs(_wgslsmith_clamp_vec2_i32(-vec2<i32>(-1i, -1i), -vec2<i32>(0i, 1i), vec2<i32>(1i, 1i)))));
    return all(select(vec4<bool>(false, select(true, any(vec4<bool>(false, false, false, false)), true), _wgslsmith_dot_vec4_u32(vec4<u32>(95297u, 22541u, 29500u, var_1.x), vec4<u32>(u_input.c.x, 23081u, 63575u, u_input.a.x)) == 19780u, true), !select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), false), vec4<bool>(true, true, true, true)), vec4<bool>(any(vec4<bool>(false, false, false, false)) & true, true, (u_input.d.x < u_input.a.x) & true, all(vec3<bool>(true, true, false)))));
}

fn func_1(arg_0: bool, arg_1: vec3<i32>, arg_2: vec2<u32>) -> Struct_1 {
    var var_0 = vec3<bool>(arg_0, all(vec2<bool>(false, !arg_0)), all(vec2<bool>(true, true)));
    var_0 = select(vec3<bool>(!var_0.x, false, true), select(select(vec3<bool>(true, false, true), vec3<bool>(var_0.x, true, false), func_2(235f) | arg_0), vec3<bool>(!(!arg_0), true, false), !vec3<bool>(!arg_0, arg_0, all(vec3<bool>(false, arg_0, var_0.x)))), select(vec3<bool>(var_0.x, all(select(vec3<bool>(true, true, arg_0), vec3<bool>(true, arg_0, false), true)), var_0.x), !(!(!vec3<bool>(false, arg_0, true))), true));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(min(1f, 1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1262f - _wgslsmith_div_f32(706f, 122f)), 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2596f))))), select(vec3<bool>(var_0.x, arg_0, !arg_0), select(select(select(vec3<bool>(false, arg_0, false), vec3<bool>(var_0.x, arg_0, arg_0), arg_0), select(vec3<bool>(false, false, var_0.x), vec3<bool>(var_0.x, true, false), var_0.x), any(var_0.yy)), vec3<bool>(arg_0, var_0.x, !arg_0), true), !(!arg_0) || any(select(vec3<bool>(true, true, true), vec3<bool>(var_0.x, var_0.x, arg_0), vec3<bool>(true, false, true)))));
    let var_2 = -136f;
    var var_3 = ~(~_wgslsmith_mod_vec3_u32(u_input.d, max(vec3<u32>(0u, arg_2.x, 3783u), vec3<u32>(u_input.c.x, 14021u, 6249u)))) & ~u_input.d;
    return Struct_1(_wgslsmith_f_op_f32(var_1.b * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(326f * var_2) + -270f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b * _wgslsmith_f_op_f32(trunc(726f))) * var_2)), var_1.c);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec3<bool>, arg_3: vec4<bool>) -> i32 {
    let var_0 = select(vec3<bool>(any(select(select(arg_3, arg_3, arg_3.x), arg_3, false)), true, true), !(!arg_2), all(arg_3));
    var var_1 = ~(-1i >> (u_input.c.x % 32u));
    global0 = array<vec4<f32>, 28>();
    global0 = array<vec4<f32>, 28>();
    var var_2 = func_2(_wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.x)) * _wgslsmith_f_op_f32(step(arg_1.x, 259f))))) || false;
    return abs(1i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(25707u, u_input.d.x, 42032u, 4294967295u)), vec4<u32>(u_input.a.x, 0u, u_input.c.x, u_input.c.x) & vec4<u32>(4294967295u, u_input.c.x, u_input.d.x, u_input.a.x), vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(1u, 28230u, 0u, _wgslsmith_mult_u32(u_input.d.x, 0u))), 2147483647i, vec2<i32>(func_4(func_1(false, select(vec3<i32>(54773i, 2147483647i, 18927i), vec3<i32>(-31106i, -42320i, -2147483647i), true), u_input.a | u_input.d.yy), global0[_wgslsmith_index_u32(u_input.d.x, 28u)], vec3<bool>(true, true, true), vec4<bool>(false, false, false, true)), _wgslsmith_dot_vec4_i32(vec4<i32>(~16636i, 1i, 30402i, _wgslsmith_div_i32(44843i, 2673i)), countOneBits(vec4<i32>(1i, 1i, 1i, 1i)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(607f)), _wgslsmith_f_op_f32(-124f - 372f))))));
}

