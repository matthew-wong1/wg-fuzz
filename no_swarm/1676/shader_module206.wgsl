struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec4<bool>, 27>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<i32>) -> f32 {
    let var_0 = Struct_1(~vec4<u32>(global0.a.a.x, 26568u, abs(~global0.a.b), _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 0u), abs(global0.a.a.yy))), 0u, false);
    let var_1 = vec2<u32>(31787u, 1u);
    global0 = Struct_2(var_0, arg_0.x, select(true, true, false));
    var var_2 = _wgslsmith_add_u32(~4294967295u, firstTrailingBit(var_0.b));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2249f))))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(1971f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1414f, 315f)), _wgslsmith_f_op_f32(f32(-1f) * -984f)), true)))), 398f);
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<i32>(global0.b, 78783i, u_input.a.x), vec2<i32>(2147483647i, u_input.a.x))) * 1657f)))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -884f));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-783f, -1425f)))))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-816f, -207f)))))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(f32(-1f) * -348f));
    var var_3 = firstLeadingBit(~17976u);
    global0 = Struct_2(global0.a, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a.x, -37850i, u_input.a.x, global0.b)), vec4<i32>(u_input.a.x, global0.b, global0.b, u_input.a.x)), _wgslsmith_clamp_i32(firstTrailingBit(-38343i), u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, 45294i)), min(-12560i, _wgslsmith_dot_vec3_i32(u_input.a, u_input.a))) ^ (min(_wgslsmith_add_i32(21021i, global0.b), global0.b) & 2147483647i), global0.c);
    return true;
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> vec3<f32> {
    global1 = array<vec4<bool>, 27>();
    let var_0 = arg_0.a;
    let var_1 = select(arg_0.a.c, func_2(), !(var_0.c || !arg_0.c));
    let var_2 = _wgslsmith_mod_vec4_u32(vec4<u32>(~(~var_0.a.x), 18719u, var_0.b, ~var_0.b | select(11132u, arg_0.a.b, false)), ~vec4<u32>(var_0.b, var_0.a.x, ~0u, abs(13306u))) ^ abs(_wgslsmith_div_vec4_u32(countOneBits(var_0.a) >> (vec4<u32>(var_0.a.x, global0.a.b, global0.a.a.x, 62151u) % vec4<u32>(32u)), arg_0.a.a));
    global1 = array<vec4<bool>, 27>();
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(753f, 1508f), _wgslsmith_f_op_f32(trunc(-1321f)), 162f)) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-951f, -353f)), -237f, _wgslsmith_f_op_f32(func_3(u_input.a, max(vec2<i32>(82800i, 2147483647i), vec2<i32>(arg_0.b, -2147483647i)))))) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(step(-301f, -1803f)), -242f, -159f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(372f + 416f) + -403f), -991f, _wgslsmith_f_op_f32(step(-977f, _wgslsmith_f_op_f32(256f + -303f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(Struct_2(global0.a, -38459i, global0.c), ~(-13320i))))) - _wgslsmith_f_op_vec3_f32(func_1(Struct_2(global0.a, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-14722i, u_input.a.x, 47366i, -1i)), _wgslsmith_div_vec4_i32(vec4<i32>(0i, -1i, global0.b, global0.b), vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, global0.b))), !select(global0.a.c, global0.a.c, false)), 6483i)));
    global0 = Struct_2(global0.a, _wgslsmith_mod_i32(~abs(~1i), ~(2147483647i | u_input.a.x)), global0.c);
    var var_1 = _wgslsmith_f_op_f32(func_3(vec3<i32>(min(global0.b, abs(~(-2147483647i))), ~max(global0.b, -u_input.a.x), i32(-1i) * -_wgslsmith_add_i32(u_input.a.x, u_input.a.x)), -reverseBits(vec2<i32>(2147483647i, -43150i)) << (global0.a.a.zx % vec2<u32>(32u))));
    var var_2 = Struct_1(~select(min(_wgslsmith_mod_vec4_u32(global0.a.a, vec4<u32>(4294967295u, 0u, 0u, global0.a.a.x)), _wgslsmith_div_vec4_u32(vec4<u32>(global0.a.a.x, global0.a.a.x, 4058u, global0.a.b), vec4<u32>(31587u, 1u, global0.a.a.x, global0.a.a.x))), firstTrailingBit(min(global0.a.a, global0.a.a)), any(!vec4<bool>(global0.a.c, true, true, global0.c))), 0u, false && (true && (4294967295u <= firstTrailingBit(global0.a.a.x))));
    let var_3 = vec3<bool>(var_2.c, _wgslsmith_clamp_i32(-_wgslsmith_div_i32(u_input.a.x, u_input.a.x), global0.b, -global0.b) != u_input.a.x, true);
    let var_4 = vec2<bool>(false, true && all(select(select(vec4<bool>(true, false, var_3.x, true), vec4<bool>(false, var_2.c, false, true), vec4<bool>(var_2.c, true, var_3.x, var_3.x)), global1[_wgslsmith_index_u32(4294967295u, 27u)], !global0.a.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0 + var_0)), _wgslsmith_f_op_vec3_f32(func_1(Struct_2(global0.a, 2147483647i, var_3.x), -global0.b)))), vec3<f32>(1f, 253f, -2301f)), ~_wgslsmith_sub_vec3_i32(~_wgslsmith_mult_vec3_i32(vec3<i32>(-7321i, 18908i, -2147483647i), u_input.a), _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(1i, global0.b, 41405i)), u_input.a)), _wgslsmith_mod_vec2_u32(var_2.a.yz, vec2<u32>(0u, var_2.a.x)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(var_0.zz, _wgslsmith_div_vec2_f32(vec2<f32>(-461f, var_0.x), _wgslsmith_f_op_vec2_f32(var_0.yx * vec2<f32>(var_0.x, -675f)))))));
}

