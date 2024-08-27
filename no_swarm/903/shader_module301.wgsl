struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec3<i32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: i32,
    c: Struct_3,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6>;

var<private> global1: f32 = -291f;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4, arg_2: bool, arg_3: vec4<bool>) -> vec4<u32> {
    var var_0 = Struct_1(arg_3.x, vec2<bool>(true, false), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, u_input.b, -25124i), vec3<i32>(u_input.b, -17555i, -6242i)), 2147483647i), -29862i), vec3<i32>(2147483647i, ~(~(-35569i)), max(u_input.d.x, 0i))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(abs(u_input.c.x), 6u)], global0[_wgslsmith_index_u32(u_input.c.x ^ _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c.x, u_input.c.x, 1u), vec4<u32>(u_input.c.x, 0u, u_input.c.x, 1u)), 6u)], global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_mult_u32(4294967295u, u_input.c.x)), 6u)]) + _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 6u)], 2671f, 179f))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0[_wgslsmith_index_u32(90844u, 6u)], arg_1.a, arg_1.a), vec3<f32>(arg_1.a, 245f, global0[_wgslsmith_index_u32(4294967295u, 6u)])))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(879f, 277f, -663f), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1.a, global0[_wgslsmith_index_u32(0u, 6u)], arg_1.a))))))));
    let var_1 = 1u;
    var var_2 = (!arg_3.x == arg_2) | any(!select(select(vec3<bool>(false, false, false), arg_3.wwx, true), select(arg_3.zwy, arg_3.yyy, vec3<bool>(true, arg_0.a.x, arg_2)), select(vec3<bool>(true, arg_2, arg_0.a.x), arg_0.a, arg_0.a)));
    global1 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a), -1908f)));
    let var_3 = 1727f;
    return _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(var_1, ~1u, u_input.c.x ^ u_input.c.x, ~u_input.c.x), ~vec4<u32>(min(4294967295u, u_input.c.x), var_1, ~20919u, 30553u << (var_1 % 32u))), firstLeadingBit(~vec4<u32>(~var_1, ~1u, var_1, u_input.c.x)), select((vec4<u32>(1u, 4294967295u, 42667u, 50135u) | (vec4<u32>(var_1, 4294967295u, 1u, u_input.c.x) & vec4<u32>(u_input.c.x, u_input.c.x, 0u, var_1))) >> (reverseBits(vec4<u32>(1u, var_1, 4294967295u, 33984u)) % vec4<u32>(32u)), ~vec4<u32>(9192u, u_input.c.x, 0u, 1u) >> (vec4<u32>(63520u, _wgslsmith_div_u32(u_input.c.x, var_1), 4144u, abs(0u)) % vec4<u32>(32u)), var_0.b.x));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: u32, arg_3: i32) -> f32 {
    var var_0 = firstLeadingBit(vec3<i32>(u_input.a, arg_3, -(20404i >> (arg_2 % 32u))));
    global1 = _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(~(~(0u ^ arg_1.x)), 6u)]));
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -549f);
    return arg_0.x;
}

fn func_2(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_4) -> u32 {
    global1 = _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~(~(~arg_0.x)), 6u)] * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-667f + global0[_wgslsmith_index_u32(74586u, 6u)]), -161f)), _wgslsmith_f_op_f32(1530f + -1000f)))));
    let var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 6u)], global0[_wgslsmith_index_u32(u_input.c.x, 6u)], 643f)) - _wgslsmith_div_vec3_f32(vec3<f32>(1235f, 406f, arg_2.a), vec3<f32>(global0[_wgslsmith_index_u32(0u, 6u)], -1119f, -1009f))), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, u_input.c.x), func_3(Struct_2(vec3<bool>(false, true, true)), Struct_4(arg_2.a), true, vec4<bool>(true, true, false, true))), 0u >> (arg_0.x % 32u), _wgslsmith_sub_i32(abs(4502i), _wgslsmith_clamp_i32(34041i, u_input.d.x, u_input.d.x))))));
    return func_3(Struct_2(vec3<bool>(true, ~arg_0.x > arg_0.x, true || (-1304f >= global0[_wgslsmith_index_u32(u_input.c.x, 6u)]))), Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(954f)))), all(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false))), !vec4<bool>(true, _wgslsmith_f_op_f32(var_0.a * global0[_wgslsmith_index_u32(arg_0.x, 6u)]) != _wgslsmith_div_f32(-1568f, var_0.a), (u_input.c.x > 51194u) && true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false))))).x;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<i32>) -> f32 {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, u_input.c.x, u_input.c.x), 6u)] * _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(u_input.c.x, 6u)])))), _wgslsmith_f_op_f32(-903f + global0[_wgslsmith_index_u32(_wgslsmith_add_u32(func_2(vec3<u32>(0u, u_input.c.x, u_input.c.x), global0[_wgslsmith_index_u32(1u, 6u)], Struct_4(211f)), ~u_input.c.x), 6u)]), any(vec4<bool>(arg_0.a.x, true, false, select(arg_0.a.x, arg_0.a.x, arg_0.a.x))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1372f + _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(4294967295u, 6u)])))));
    let var_0 = 4294967295u;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(490f - _wgslsmith_f_op_f32(f32(-1f) * -687f)) != _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(~u_input.c.x, 6u)], 658f)), vec2<bool>(true, false), arg_1.zxx, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(8207u, 6u)], 1501f, 280f), vec3<f32>(1000f, -1097f, global0[_wgslsmith_index_u32(1u, 6u)]))) * vec3<f32>(_wgslsmith_div_f32(-1900f, 276f), _wgslsmith_f_op_f32(1410f + 336f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(51367u, 6u)] * global0[_wgslsmith_index_u32(var_0, 6u)]))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1095f, global0[_wgslsmith_index_u32(61584u, 6u)], -2203f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0[_wgslsmith_index_u32(var_0, 6u)], global0[_wgslsmith_index_u32(var_0, 6u)], 683f), vec3<f32>(global0[_wgslsmith_index_u32(0u, 6u)], -1098f, global0[_wgslsmith_index_u32(18254u, 6u)])))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(var_0, 6u)], -1095f) + vec3<f32>(-1000f, global0[_wgslsmith_index_u32(var_0, 6u)], -809f)))))));
    let var_2 = select(vec2<i32>(abs(-6354i), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(var_1.c.x, var_1.c.x), abs(0i), 2147483647i)), -var_1.c.xy, select(arg_0.a.yz, select(!vec2<bool>(arg_0.a.x, arg_0.a.x), vec2<bool>(true, true), true), any(!vec4<bool>(arg_0.a.x, false, arg_0.a.x, true)))) << (vec2<u32>(11255u, 1u) % vec2<u32>(32u));
    global1 = _wgslsmith_f_op_f32(func_4(vec3<f32>(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.d)), vec4<u32>(u_input.c.x, u_input.c.x, max(32938u, 47818u), 1u), u_input.c.x, firstLeadingBit(2147483647i))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.d.x), 953f, false)), 1115f), abs(vec4<u32>(44010u, ~reverseBits(var_0), 21045u, _wgslsmith_mod_u32(_wgslsmith_add_u32(var_0, 53517u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 4294967295u, 867u), vec3<u32>(var_0, var_0, u_input.c.x))))), 74613u >> (u_input.c.x % 32u), ~1i));
    return _wgslsmith_f_op_f32(var_1.d.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-340f - 1545f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(false, vec2<bool>(any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true))), true), abs(~_wgslsmith_div_vec3_i32(vec3<i32>(1i, 32877i, u_input.a), vec3<i32>(1i, u_input.a, u_input.d.x) & vec3<i32>(u_input.d.x, u_input.a, 0i))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(1u, 6u)], false)), global0[_wgslsmith_index_u32(firstTrailingBit(17355u), 6u)], _wgslsmith_f_op_f32(2152f + -263f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u ^ u_input.c.x, 6u)], _wgslsmith_f_op_f32(-746f * global0[_wgslsmith_index_u32(57032u, 6u)]), _wgslsmith_f_op_f32(func_1(Struct_2(vec3<bool>(false, true, true)), vec4<i32>(0i, u_input.b, u_input.a, u_input.d.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1013f, global0[_wgslsmith_index_u32(80235u, 6u)], global0[_wgslsmith_index_u32(u_input.c.x, 6u)]))))));
    var var_1 = min(~(~(u_input.c.x ^ u_input.c.x) >> (max(firstLeadingBit(u_input.c.x), 18571u) % 32u)), _wgslsmith_add_u32(1u, func_2(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u), vec3<u32>(31301u, 4294967295u, u_input.c.x)) >> (max(vec3<u32>(u_input.c.x, 4294967295u, 1u), vec3<u32>(u_input.c.x, 76227u, u_input.c.x)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-224f + _wgslsmith_f_op_f32(-773f + -302f)), Struct_4(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(16377u, 6u)] + global0[_wgslsmith_index_u32(u_input.c.x, 6u)])))));
    let var_2 = vec4<f32>(var_0.d.x, 1019f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-706f + global0[_wgslsmith_index_u32(1u, 6u)]))), _wgslsmith_f_op_f32(max(974f, global0[_wgslsmith_index_u32(4294967295u, 6u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(var_0.d, vec4<u32>(u_input.c.x, 85507u, 17467u, 38781u), 14526u, var_0.c.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -746f)))));
    var_1 = u_input.c.x << (firstTrailingBit(_wgslsmith_sub_u32(u_input.c.x ^ ~u_input.c.x, u_input.c.x | 49760u)) % 32u);
    let var_3 = Struct_3(Struct_2(vec3<bool>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 6u)]) != -750f, var_0.b.x && true, (0u << (u_input.c.x % 32u)) >= u_input.c.x)), vec2<i32>(1043i, u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 6u)]));
}

