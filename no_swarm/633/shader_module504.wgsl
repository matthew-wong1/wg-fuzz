struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: bool,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(644f, -349f, 158f, 1000f);

var<private> global1: array<vec4<i32>, 27> = array<vec4<i32>, 27>(vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), 62628i), vec4<i32>(-1i, -39495i, 23694i, -8889i), vec4<i32>(-4280i, 33885i, -2635i, i32(-2147483648)), vec4<i32>(2147483647i, 25021i, 9532i, -3387i), vec4<i32>(-26264i, 0i, -11955i, -1i), vec4<i32>(19189i, 10545i, 2147483647i, i32(-2147483648)), vec4<i32>(-42131i, 0i, -1i, i32(-2147483648)), vec4<i32>(0i, -60791i, -69692i, 0i), vec4<i32>(i32(-2147483648), 11335i, -1i, -54267i), vec4<i32>(-62461i, 48091i, 5818i, 6159i), vec4<i32>(0i, i32(-2147483648), 16201i, 1i), vec4<i32>(2147483647i, 42387i, 2147483647i, 2170i), vec4<i32>(-1i, 1i, 2147483647i, 25968i), vec4<i32>(0i, -1i, 8211i, -16905i), vec4<i32>(-17031i, 3413i, 13793i, 8667i), vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), 2147483647i), vec4<i32>(1i, 0i, i32(-2147483648), -35287i), vec4<i32>(2147483647i, 8062i, -1i, -34169i), vec4<i32>(-46508i, 2147483647i, 0i, 0i), vec4<i32>(-15069i, -1i, i32(-2147483648), -9392i), vec4<i32>(27949i, i32(-2147483648), 60324i, 1i), vec4<i32>(1i, -24279i, -5628i, 1025i), vec4<i32>(-3772i, -3485i, -5306i, 2147483647i), vec4<i32>(i32(-2147483648), -82714i, -14457i, 1i), vec4<i32>(-1i, 0i, 2147483647i, 29388i), vec4<i32>(i32(-2147483648), 22417i, 9111i, 39147i), vec4<i32>(i32(-2147483648), -1819i, 50735i, -19137i));

var<private> global2: array<vec3<i32>, 8>;

var<private> global3: f32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(1f)), -1000f, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.x)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2.c.x)))) * _wgslsmith_f_op_f32(max(global0.x, 467f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_3.b), _wgslsmith_div_f32(-1819f, -1000f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-679f, arg_0))))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-141f, arg_2.c.x, false)) * -1541f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(arg_3.b)), -1000f)))), false == !(4294967295u >= max(4294967295u, u_input.b)), countOneBits(_wgslsmith_sub_vec3_u32(arg_3.e, u_input.a)));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1590f, -370f) + _wgslsmith_f_op_f32(global0.x + -105f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * global0.x)), (arg_3.d != false) && !arg_2.d))), _wgslsmith_f_op_f32(-1085f * var_0.b), _wgslsmith_f_op_f32(-arg_3.c.x), _wgslsmith_f_op_f32(max(var_0.c.x, _wgslsmith_f_op_f32(-global0.x))));
    global2 = array<vec3<i32>, 8>();
    let var_2 = vec3<u32>(~arg_3.e.x, reverseBits(u_input.a.x), reverseBits(u_input.a.x));
    var var_3 = !(!any(vec2<bool>(true, true))) & (any(!select(vec3<bool>(var_0.d, var_0.d, arg_3.d), vec3<bool>(true, false, true), arg_3.d)) || any(vec3<bool>(any(vec3<bool>(arg_3.d, true, arg_3.d)), any(vec3<bool>(var_0.d, arg_2.d, arg_3.d)), -1036f < var_0.a)));
    return true;
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = reverseBits(~vec2<i32>(firstLeadingBit(_wgslsmith_mult_i32(arg_0, arg_0)), arg_0));
    let var_1 = !select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true)), true), vec4<bool>(false, func_3(-1049f, vec2<i32>(var_0.x, var_0.x), Struct_1(-724f, 204f, global0.yx, false, u_input.a), Struct_1(global0.x, global0.x, vec2<f32>(-569f, -1000f), false, u_input.a)), false, any(vec4<bool>(true, true, true, true))));
    let var_2 = Struct_1(-231f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(582f * global0.x))) + 1000f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.xx) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.wy * global0.yw) - vec2<f32>(837f, global0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-584f, global0.x)))), any(var_1.zw), select(abs(~select(vec3<u32>(0u, 4294967295u, u_input.c.x), vec3<u32>(u_input.d, 20082u, u_input.b), false)), ~select(vec3<u32>(1u, 1u, 0u), u_input.a, true), !any(vec3<bool>(var_1.x, true, var_1.x))));
    var var_3 = var_2;
    global2 = array<vec3<i32>, 8>();
    return Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-284f + _wgslsmith_f_op_f32(f32(-1f) * -1486f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-901f, var_3.a)))))), _wgslsmith_f_op_f32(-1000f + var_2.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.xz)), var_3.e.x < ~var_3.e.x, vec3<u32>(max(_wgslsmith_dot_vec3_u32(var_3.e, _wgslsmith_mod_vec3_u32(vec3<u32>(var_2.e.x, u_input.c.x, u_input.d), vec3<u32>(var_3.e.x, 10139u, 1u))), _wgslsmith_mod_u32(_wgslsmith_sub_u32(1u, u_input.c.x), 16217u)), var_2.e.x, ~_wgslsmith_mult_u32(_wgslsmith_mod_u32(var_2.e.x, 35882u), 1u)));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: vec4<i32>) -> Struct_1 {
    global3 = _wgslsmith_f_op_f32(f32(-1f) * -2742f);
    global2 = array<vec3<i32>, 8>();
    return func_2(-select(~arg_2.x, arg_2.x, all(!vec2<bool>(arg_1, arg_1))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: vec2<f32>) -> bool {
    var var_0 = arg_2.d;
    var var_1 = 30115i;
    var var_2 = vec2<i32>(-1366i, max(-2147483647i, max(1i, 2147483647i))) >> (vec2<u32>(abs(~arg_2.e.x ^ ~u_input.c.x), ~arg_2.e.x << (25047u % 32u)) % vec2<u32>(32u));
    let var_3 = _wgslsmith_dot_vec2_i32(vec2<i32>(countOneBits(1i), _wgslsmith_div_i32(max(-var_2.x, ~var_2.x), (var_2.x << (0u % 32u)) | -5148i)), vec2<i32>(_wgslsmith_add_i32(~var_2.x, -28526i & var_2.x), -22903i) << (vec2<u32>(arg_0.e.x, ~firstTrailingBit(arg_2.e.x)) % vec2<u32>(32u)));
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(_wgslsmith_f_op_f32(1962f + global0.x), select(true, all(vec2<bool>(true, false)), true), _wgslsmith_mod_vec4_i32(countOneBits(_wgslsmith_mult_vec4_i32(global1[_wgslsmith_index_u32(0u, 27u)], global1[_wgslsmith_index_u32(31906u, 27u)])), vec4<i32>(5749i, -2147483647i, 2147483647i, 1i) >> (vec4<u32>(u_input.d, 17256u, 1u, 53763u) % vec4<u32>(32u)))), select(vec4<bool>(true, true, true, true), vec4<bool>(select(all(vec3<bool>(false, false, true)), true, true), true, any(select(vec2<bool>(true, false), vec2<bool>(true, true), false)), true), true), func_2(i32(-1i) * -2147483647i), vec2<f32>(-194f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -718f)) * global0.x)));
    var var_1 = !(!vec2<bool>(true, !(23552u == u_input.c.x)));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(global0.x))))), global0.x, vec2<f32>(-847f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.x)) + -670f)), true, ~(~(~u_input.a)));
    global2 = array<vec3<i32>, 8>();
    let var_3 = Struct_1(_wgslsmith_div_f32(210f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1989f), _wgslsmith_f_op_f32(sign(var_2.a)))), -752f, !var_2.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.x, global0.x, !var_1.x)) - global0.x) + 745f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.x) + 333f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))), false, max(select(_wgslsmith_mult_vec3_u32(vec3<u32>(23411u, var_2.e.x, 1u) | vec3<u32>(var_2.e.x, 42857u, 55530u), vec3<u32>(61014u, var_2.e.x, var_2.e.x) | vec3<u32>(u_input.d, 4990u, 1u)), _wgslsmith_mult_vec3_u32(vec3<u32>(19798u, var_2.e.x, 1u), vec3<u32>(1u, 4294967295u, u_input.c.x)), !var_2.d), ~u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-913f, global0.x));
}

