struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: vec3<f32>,
    d: f32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<bool, 4>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_1(arg_0: u32) -> vec2<f32> {
    global1 = array<bool, 4>();
    global1 = array<bool, 4>();
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -622f)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1143f, 3300f) - vec2<f32>(302f, 1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(933f, 995f) + vec2<f32>(621f, var_0))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1589f, 1905f)), vec2<f32>(821f, var_0), !vec2<bool>(global1[_wgslsmith_index_u32(39415u, 4u)], false)))))));
}

fn func_3() -> f32 {
    var var_0 = Struct_2(vec4<bool>(!(_wgslsmith_sub_u32(u_input.b, 4294967295u) < _wgslsmith_add_u32(5367u, u_input.d)), global1[_wgslsmith_index_u32(u_input.d, 4u)], select(all(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 4u)], global1[_wgslsmith_index_u32(47785u, 4u)], global1[_wgslsmith_index_u32(4294967295u, 4u)], true)), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(38231u, u_input.b), u_input.d | 44897u), 4u)], !(!global1[_wgslsmith_index_u32(u_input.d, 4u)])), global1[_wgslsmith_index_u32(abs(u_input.d) ^ (~u_input.d | _wgslsmith_mod_u32(42658u, u_input.d)), 4u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(818f + 1380f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -286f) - -373f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2740f + 507f)), 384f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-194f, -274f, 895f), vec3<f32>(-583f, 182f, -1257f), true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(667f, -987f, -713f) - vec3<f32>(-483f, -918f, 1246f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(240f, -377f, 1647f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(657f, -221f, -516f), vec3<f32>(-1104f, 2334f, 889f), vec3<bool>(false, true, true)))))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(488f, 600f)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-817f))))), vec2<bool>(global1[_wgslsmith_index_u32(14032u, 4u)], true));
    global1 = array<bool, 4>();
    var var_1 = _wgslsmith_sub_u32(~_wgslsmith_mult_u32(u_input.d, 14555u) ^ abs(_wgslsmith_sub_u32(4294967295u, u_input.d)), _wgslsmith_mult_u32(u_input.b, _wgslsmith_add_u32(14376u, 1u)));
    global0 = global1[_wgslsmith_index_u32(~(u_input.b ^ ~u_input.b), 4u)];
    global0 = true;
    return 1039f;
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = _wgslsmith_div_u32(firstLeadingBit(8306u), ~u_input.d);
    var var_1 = Struct_2(!select(vec4<bool>(all(vec4<bool>(true, true, global1[_wgslsmith_index_u32(0u, 4u)], true)), arg_0 > arg_0, false && global1[_wgslsmith_index_u32(u_input.b, 4u)], true), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.d, 4u)], global1[_wgslsmith_index_u32(65814u, 4u)], false, global1[_wgslsmith_index_u32(25986u, 4u)]), vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0, var_0, 0u), 4u)], all(vec2<bool>(false, global1[_wgslsmith_index_u32(4071u, 4u)])), true, any(vec2<bool>(global1[_wgslsmith_index_u32(var_0, 4u)], global1[_wgslsmith_index_u32(u_input.b, 4u)])))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1758f + -1751f), -212f))))), vec3<f32>(631f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-630f - -105f)), -619f), 808f, select(select(!vec2<bool>(true, global1[_wgslsmith_index_u32(var_0, 4u)]), !vec2<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 4u)]), true), !vec2<bool>(!global1[_wgslsmith_index_u32(u_input.d, 4u)], true), true));
    let var_2 = Struct_2(!var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.d))))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_1.d, 803f)), -1000f), 744f, -740f))), var_1.b, select(vec2<bool>(var_1.e.x | global1[_wgslsmith_index_u32(u_input.d, 4u)], !(arg_0 == u_input.c.x)), var_1.a.xx, _wgslsmith_f_op_vec2_f32(func_1(~var_0)).x == _wgslsmith_f_op_f32(abs(var_1.c.x))));
    let var_3 = _wgslsmith_f_op_f32(-var_2.b);
    var var_4 = var_2;
    return Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.c)) * _wgslsmith_f_op_vec3_f32(select(var_1.c, var_2.c, vec3<bool>(global1[_wgslsmith_index_u32(58684u, 4u)], var_2.a.x, false)))))), abs(u_input.a));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_1) -> StorageBuffer {
    let var_0 = arg_1.b.x;
    let var_1 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-865f, 2399f, _wgslsmith_f_op_f32(min(arg_3.a.x, arg_2.b))) + vec3<f32>(_wgslsmith_f_op_f32(-228f * arg_3.a.x), func_2(arg_0.x).a.x, arg_2.c.x)), arg_3.a), ~vec2<i32>(arg_0.x, arg_1.b.x));
    global1 = array<bool, 4>();
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -971f);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(477f * _wgslsmith_f_op_f32(-772f - -337f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-953f, arg_2.b, arg_2.a.x)) - _wgslsmith_f_op_f32(sign(arg_1.a.x))))) * _wgslsmith_f_op_f32(arg_2.d - 630f)));
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(arg_3.a * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.x, var_2, _wgslsmith_f_op_f32(f32(-1f) * -944f)) - arg_2.c)), countOneBits(-_wgslsmith_add_vec4_i32(-vec4<i32>(23329i, -2147483647i, 54713i, arg_1.b.x), reverseBits(vec4<i32>(arg_3.b.x, -2147483647i, -30812i, arg_0.x)))), _wgslsmith_mod_vec4_i32(~vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.b.x, arg_1.b.x, 1i), vec3<i32>(arg_3.b.x, -1i, var_1.b.x)), -51257i, arg_3.b.x | var_0, _wgslsmith_div_i32(u_input.c.x, arg_0.x)), -min(_wgslsmith_clamp_vec4_i32(vec4<i32>(-59943i, var_1.b.x, 1i, 0i), vec4<i32>(3193i, u_input.a.x, var_0, 37255i), vec4<i32>(arg_3.b.x, var_0, arg_0.x, -1i)), ~vec4<i32>(45392i, 0i, arg_0.x, arg_3.b.x))), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 4>();
    var var_0 = 46796u;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(u_input.b))));
    var_0 = 1u;
    let var_2 = vec3<f32>(_wgslsmith_f_op_vec2_f32(func_1(~u_input.d)).x, 169f, _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-984f - var_1.x)) * -405f)));
    let x = u_input.a;
    s_output = func_4(_wgslsmith_div_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, u_input.a.x), vec3<i32>(23670i, u_input.c.x, 32995i)) >> (_wgslsmith_mult_vec3_u32(~vec3<u32>(7664u, u_input.d, u_input.b), ~vec3<u32>(u_input.b, 1u, 4294967295u)) % vec3<u32>(32u)), vec3<i32>(~u_input.c.x, u_input.a.x << (37820u % 32u), 27661i)), func_2(-u_input.a.x >> (28869u % 32u)), Struct_2(vec4<bool>(!(var_2.x >= -1342f), global1[_wgslsmith_index_u32(0u, 4u)], global1[_wgslsmith_index_u32(1u, 4u)], global1[_wgslsmith_index_u32(firstTrailingBit(min(u_input.d, 1u)), 4u)]), _wgslsmith_f_op_f32(var_1.x - var_1.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_1.x, var_2.x)))), var_1.x, select(vec2<bool>(true, true), select(select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 4u)], global1[_wgslsmith_index_u32(u_input.b, 4u)]), vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 4u)], global1[_wgslsmith_index_u32(4294967295u, 4u)]), vec2<bool>(true, true)), select(vec2<bool>(global1[_wgslsmith_index_u32(29011u, 4u)], global1[_wgslsmith_index_u32(10572u, 4u)]), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 4u)], false), vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 4u)])), global1[_wgslsmith_index_u32(firstTrailingBit(0u), 4u)]), vec2<bool>(true, true))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, -672f, var_2.x) + vec3<f32>(-1203f, 210f, -1592f))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.x, var_1.x, var_2.x)))))), _wgslsmith_sub_vec2_i32(~(-vec2<i32>(u_input.c.x, 2147483647i)), u_input.a)));
}

