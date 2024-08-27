struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec2<f32>,
    d: i32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6> = array<f32, 6>(-1409f, -1186f, -793f, 320f, 1693f, -449f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_2) -> Struct_3 {
    let var_0 = arg_1.b >= max(38626u, _wgslsmith_add_u32(arg_1.b, 4294967295u));
    return Struct_3(~arg_1.b, arg_1, arg_1);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_3) -> vec3<f32> {
    let var_0 = vec4<u32>(func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-854f, arg_0.c.x, global0[_wgslsmith_index_u32(4294967295u, 6u)], -239f), vec4<f32>(-1427f, 773f, global0[_wgslsmith_index_u32(0u, 6u)], -760f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1057f, global0[_wgslsmith_index_u32(arg_1.x, 6u)], global0[_wgslsmith_index_u32(18666u, 6u)], global0[_wgslsmith_index_u32(arg_2.c.b, 6u)]) - vec4<f32>(arg_0.c.x, arg_0.c.x, -843f, arg_0.c.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1683f, -817f, 981f, global0[_wgslsmith_index_u32(1u, 6u)]))), Struct_2(vec4<i32>(-20626i, abs(-1i), _wgslsmith_sub_i32(arg_0.e.x, 32361i), 2147483647i), 4294967295u)).b.b, ~reverseBits(_wgslsmith_add_u32(firstTrailingBit(arg_0.a.x), ~54493u)), ~max(_wgslsmith_dot_vec3_u32(arg_1.xwx, vec3<u32>(arg_1.x, arg_2.a, 0u)), select(~2803u, firstTrailingBit(55702u), arg_0.b)), abs(_wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(24687u, arg_2.b.b), 92271u), ~arg_2.b.b)));
    let var_1 = _wgslsmith_div_vec2_f32(arg_0.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(arg_0.c, vec2<f32>(arg_0.c.x, 1405f))), vec2<f32>(262f, -1063f))) * _wgslsmith_f_op_vec2_f32(-arg_0.c))));
    global0 = array<f32, 6>();
    global0 = array<f32, 6>();
    let var_2 = func_2(vec4<f32>(_wgslsmith_div_f32(-2158f, global0[_wgslsmith_index_u32(u_input.a.x, 6u)]), arg_0.c.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -458f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -675f) * _wgslsmith_f_op_f32(arg_0.c.x - _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(2265u, 6u)]))))), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1444f, -1000f, 1000f))))), func_2(vec4<f32>(global0[_wgslsmith_index_u32(~21385u, 6u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 6u)] - var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(round(1900f))), Struct_2(arg_2.c.a, ~11246u)).c).b);
    return _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0[_wgslsmith_index_u32(1u, 6u)], _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(29734u, 6u)]))), global0[_wgslsmith_index_u32(var_2.c.b, 6u)], true)), -1000f)));
}

fn func_1() -> vec3<f32> {
    var var_0 = vec3<u32>(reverseBits(~24997u), 4294967295u, reverseBits(u_input.a.x));
    global0 = array<f32, 6>();
    global0 = array<f32, 6>();
    return _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1015f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(84723u, 6u)]) + global0[_wgslsmith_index_u32(u_input.a.x, 6u)]))), 429f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, var_0.x, 24751u), u_input.a.wzz), any(vec2<bool>(false, false)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, global0[_wgslsmith_index_u32(24789u, 6u)]) + vec2<f32>(-915f, 502f)), ~(-29473i), vec2<i32>(1i, 1i)), u_input.a, func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1462f, global0[_wgslsmith_index_u32(4294967295u, 6u)], 968f, global0[_wgslsmith_index_u32(4294967295u, 6u)])), Struct_2(vec4<i32>(-8294i, -30452i, 0i, 2147483647i), 4294967295u)))) - vec3<f32>(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(vec3<u32>(51404u, var_0.x, var_0.x), true, vec2<f32>(global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(75985u, 6u)]), 25078i, vec2<i32>(-903i, -8096i)), select(vec4<u32>(4294967295u, u_input.a.x, var_0.x, u_input.a.x), vec4<u32>(0u, 0u, u_input.a.x, 79957u), vec4<bool>(false, true, true, true)), func_2(vec4<f32>(global0[_wgslsmith_index_u32(1u, 6u)], 334f, global0[_wgslsmith_index_u32(0u, 6u)], -907f), Struct_2(vec4<i32>(-3241i, 29007i, -22454i, -8625i), u_input.a.x)))).x, 1478f, -897f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_1());
    var var_1 = vec3<f32>(-1446f, _wgslsmith_div_f32(-1860f, _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(460f - -2223f) - 1f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1220f, var_0.x))))));
    var var_2 = firstTrailingBit(firstLeadingBit(0u));
    var var_3 = -128f;
    var var_4 = 2147483647i;
    let var_5 = _wgslsmith_mult_vec4_i32(vec4<i32>(~0i, _wgslsmith_mult_i32(-30298i, 1i), ~1i, 6023i), -vec4<i32>(reverseBits(19667i), 1i, i32(-1i) * -29430i, i32(-1i) * -1895i));
    var_4 = 1i;
    var var_6 = firstLeadingBit(abs(var_5.x));
    var var_7 = (_wgslsmith_f_op_f32(-1261f * -188f) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(709f + _wgslsmith_f_op_f32(sign(-1000f))))) | !((all(vec2<bool>(true, false)) | any(vec2<bool>(false, false))) && all(vec4<bool>(true, true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -31801i, u_input.a.x, vec3<i32>((var_5.x | ~var_5.x) << (_wgslsmith_mult_u32(1u ^ u_input.a.x, u_input.a.x) % 32u), _wgslsmith_clamp_i32(-26205i, -32849i, -max(-43524i, -33743i)), _wgslsmith_sub_i32(18690i, -(var_5.x << (1u % 32u)))), ~u_input.a.x);
}

