struct Struct_1 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec3<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 10>;

var<private> global1: array<f32, 12> = array<f32, 12>(-318f, -1401f, -1000f, 205f, 847f, 1000f, 465f, 116f, 625f, -545f, 1768f, 1225f);

var<private> global2: i32 = 36910i;

var<private> global3: vec2<i32>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: f32, arg_1: f32) -> u32 {
    global1 = array<f32, 12>();
    var var_0 = all(!vec3<bool>(false, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 35011u, 0u, 4294967295u), vec4<u32>(u_input.d, u_input.d, 12606u, 30904u)) < _wgslsmith_clamp_u32(54306u, 4294967295u, 22747u), all(vec3<bool>(true, true, true))));
    global1 = array<f32, 12>();
    var var_1 = Struct_1(-(_wgslsmith_clamp_i32(min(global3.x, u_input.b), ~0i, max(global3.x, -25489i)) ^ (24875i << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 64113u, u_input.d, u_input.d), vec4<u32>(u_input.d, 4294967295u, 43805u, u_input.d)) % 32u))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(arg_1)))));
    let var_2 = Struct_1(~firstTrailingBit(1i), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1642f) - arg_1), _wgslsmith_f_op_f32(arg_1 + arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.b)))), false != (true && select(true, false, false)))));
    return ~(~0u);
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: f32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-556f, 341f)));
    global1 = array<f32, 12>();
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(645f, arg_3, global1[_wgslsmith_index_u32(func_3(global1[_wgslsmith_index_u32(4294967295u, 12u)], arg_1.b), 12u)], _wgslsmith_f_op_f32(f32(-1f) * -1853f)) * vec4<f32>(arg_1.b, _wgslsmith_f_op_f32(max(arg_1.b, arg_3)), global1[_wgslsmith_index_u32(~52687u, 12u)], _wgslsmith_f_op_f32(f32(-1f) * -239f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-486f, arg_3, 1799f, global1[_wgslsmith_index_u32(0u, 12u)]), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3, arg_1.b, -869f, 1000f) + vec4<f32>(arg_3, -822f, arg_3, global1[_wgslsmith_index_u32(0u, 12u)]))))))));
    let var_2 = firstLeadingBit(~arg_2.yz);
    let var_3 = false;
    return _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 20845i), _wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(global3.x, -1i)) | -vec2<i32>(arg_1.a, arg_1.a), vec2<i32>(12015i, ~1i)) | vec2<i32>(_wgslsmith_div_i32(0i, _wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(var_2.x, 10u)], global0[_wgslsmith_index_u32(var_2.x, 10u)])), u_input.b));
}

fn func_4(arg_0: u32, arg_1: i32) -> Struct_1 {
    let var_0 = Struct_1(2147483647i, -862f);
    let var_1 = var_0;
    let var_2 = select(vec2<bool>(true, !select(false, any(vec3<bool>(false, true, true)), false)), !select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), any(vec2<bool>(false, true))), true), false);
    var var_3 = var_1;
    var var_4 = Struct_1(var_0.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1132f)) + _wgslsmith_f_op_f32(var_1.b - 1000f)) * _wgslsmith_f_op_f32(f32(-1f) * -404f)))));
    return var_0;
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c, 12u)])) - global1[_wgslsmith_index_u32(u_input.d, 12u)]), 512f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.d, 916u), vec3<u32>(108274u, u_input.d, u_input.d)), 12u)] + -1765f))))));
    return func_4(_wgslsmith_div_u32(u_input.d, ~(~u_input.d)) >> (_wgslsmith_sub_u32(u_input.c, _wgslsmith_clamp_u32(1u, max(u_input.d, u_input.c), firstLeadingBit(12669u))) % 32u), countOneBits(func_2(all(vec3<bool>(false, false, true)), Struct_1(u_input.a, var_0.x), vec3<u32>(18052u, u_input.d, 6153u), -2545f)) >> ((0u ^ countOneBits(u_input.c)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~(~u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -312f)));
    var var_1 = func_1();
    var var_2 = !vec2<bool>(true, !(any(vec3<bool>(false, true, false)) | false));
    global2 = _wgslsmith_sub_i32(func_2(var_2.x, Struct_1(_wgslsmith_sub_i32(36613i, firstLeadingBit(var_0.a)), global1[_wgslsmith_index_u32(reverseBits(~41964u), 12u)]), vec3<u32>(u_input.c, u_input.d & countOneBits(0u), firstTrailingBit(u_input.d)), func_4(0u, reverseBits(1i)).b), ~var_1.a);
    var_2 = !select(vec2<bool>(all(!vec2<bool>(var_2.x, true)), false), vec2<bool>(any(!vec2<bool>(var_2.x, var_2.x)), all(select(vec2<bool>(var_2.x, true), vec2<bool>(var_2.x, var_2.x), true))), vec2<bool>(true, all(vec4<bool>(true, var_2.x, var_2.x, false))));
    global3 = -max(select(vec2<i32>(max(global3.x, -4928i), _wgslsmith_add_i32(var_1.a, var_1.a)), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, -1i) | vec2<i32>(u_input.a, global3.x), -vec2<i32>(-2147483647i, var_0.a)), vec2<bool>(var_2.x, var_2.x)), abs(-vec2<i32>(44535i, var_1.a) << (vec2<u32>(4294967295u, u_input.d) % vec2<u32>(32u))));
    global2 = _wgslsmith_dot_vec3_i32(abs(vec3<i32>(var_1.a, global3.x, -1832i)), vec3<i32>(-(~2147483647i), -6111i >> (1u % 32u), abs(var_1.a))) >> (select(min(16088u, u_input.d), 1u, true) % 32u);
    var var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, -_wgslsmith_sub_vec3_i32(min(vec3<i32>(-2600i, 80863i, 35561i), global0[_wgslsmith_index_u32(u_input.d, 10u)]), ~vec3<i32>(28633i, -9367i, -1i)) & vec3<i32>(~21831i ^ _wgslsmith_sub_i32(var_0.a, var_3.a), global3.x | -1i, abs(abs(3480i))), max(-(~firstLeadingBit(1i)), func_4(u_input.c, var_3.a).a), ~select(~vec3<u32>(u_input.c, 53698u, 35282u), ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.d), vec3<u32>(9691u, u_input.d, u_input.c)), any(select(vec4<bool>(false, true, var_2.x, var_2.x), vec4<bool>(var_2.x, true, var_2.x, true), false))), _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, 29837i), vec2<i32>(var_3.a, u_input.b)), ~vec2<i32>(-2147483647i, 2147483647i)), -(vec2<i32>(var_3.a, var_0.a) & vec2<i32>(u_input.a, -31536i))) | vec2<i32>(global3.x, -5717i));
}

