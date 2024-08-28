struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: bool,
    d: vec2<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 1>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: Struct_1) -> vec2<u32> {
    global0 = array<f32, 1>();
    return reverseBits(~firstTrailingBit(abs(firstTrailingBit(vec2<u32>(1u, 4294967295u)))));
}

fn func_3() -> vec3<i32> {
    var var_0 = Struct_1(vec4<bool>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(203f)), -761f, any(vec4<bool>(false, false, false, true)))) == 626f, false & any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true))), !(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 1u)] + global0[_wgslsmith_index_u32(4294967295u, 1u)]) != _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(60308u, 1u)] - global0[_wgslsmith_index_u32(1u, 1u)])), false), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(13885u, 1u)], global0[_wgslsmith_index_u32(1u, 1u)])), global0[_wgslsmith_index_u32(1u, 1u)]))), select(_wgslsmith_f_op_f32(min(791f, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, 28612u, 25204u), 1u)])) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 1u)])), all(vec2<bool>(false, false)), all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)))), vec2<bool>(all(select(vec2<bool>(false, false), vec2<bool>(false, true), true)) & all(select(vec2<bool>(false, false), vec2<bool>(false, true), true)), (u_input.c <= (22703i & u_input.b.x)) & (global0[_wgslsmith_index_u32(25784u, 1u)] >= _wgslsmith_f_op_f32(954f * global0[_wgslsmith_index_u32(27967u, 1u)]))), !select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)), vec3<bool>(any(vec2<bool>(false, true)), any(vec2<bool>(true, false)), true), vec3<bool>(true, false, true)));
    var_0 = Struct_1(vec4<bool>(any(!select(var_0.a.wyy, vec3<bool>(var_0.c, var_0.c, var_0.e.x), vec3<bool>(var_0.e.x, true, var_0.c))), !var_0.a.x && (any(var_0.a.xxw) | select(true, true, false)), true, var_0.d.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(var_0.b, var_0.b, true)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b + var_0.b) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0[_wgslsmith_index_u32(51653u, 1u)], 305f), vec2<f32>(var_0.b.x, -676f), var_0.e.zy))), var_0.d)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-991f, -1000f))))), true, select(vec2<bool>(true, true), vec2<bool>(var_0.d.x, all(select(var_0.a, var_0.a, true))), false), var_0.a.zww);
    let var_1 = Struct_1(select(select(!(!vec4<bool>(var_0.a.x, var_0.c, var_0.a.x, true)), vec4<bool>(any(var_0.e.yx), any(vec3<bool>(var_0.e.x, var_0.e.x, true)), any(vec2<bool>(var_0.a.x, true)), false), var_0.a), var_0.a, select(!select(var_0.a, var_0.a, true), !vec4<bool>(var_0.c, true, false, true), select(!var_0.a, var_0.a, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.b * _wgslsmith_f_op_vec2_f32(sign(var_0.b)))), false, var_0.d, select(var_0.a.zwz, !vec3<bool>(!var_0.e.x, all(var_0.e), any(var_0.e)), false));
    let var_2 = Struct_2(Struct_1(select(var_1.a, select(select(var_1.a, var_1.a, vec4<bool>(true, false, var_0.c, var_0.d.x)), !var_0.a, vec4<bool>(var_0.a.x, false, var_1.e.x, var_0.d.x)), !select(vec4<bool>(var_1.c, true, var_1.c, var_0.a.x), vec4<bool>(var_1.d.x, true, false, false), var_1.a)), _wgslsmith_f_op_vec2_f32(max(var_0.b, _wgslsmith_f_op_vec2_f32(-var_1.b))), !var_0.d.x, vec2<bool>(select(select(false, false, false), all(var_0.e), all(vec4<bool>(var_0.e.x, var_0.e.x, false, false))), all(!vec3<bool>(var_1.a.x, false, true))), vec3<bool>(var_0.c, all(var_0.e), !(!var_0.c))), -abs(u_input.b.xx >> (vec2<u32>(66319u, 1u) % vec2<u32>(32u))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(2225f + global0[_wgslsmith_index_u32(4294967295u, 1u)]), _wgslsmith_div_f32(-880f, global0[_wgslsmith_index_u32(45878u, 1u)])), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b.x, var_1.b.x) * var_1.b)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(51401u, 1u)], var_1.b.x)))))));
    global0 = array<f32, 1>();
    return u_input.b;
}

fn func_2(arg_0: i32, arg_1: vec2<u32>, arg_2: f32, arg_3: u32) -> f32 {
    let var_0 = !select(vec3<bool>(_wgslsmith_f_op_f32(floor(727f)) <= arg_2, true, true), select(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), vec3<bool>(true, all(vec2<bool>(true, true)), u_input.c > 7077i), true), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true), false));
    let var_1 = -firstLeadingBit(_wgslsmith_mod_vec3_i32(u_input.b, abs(func_3())));
    global0 = array<f32, 1>();
    global0 = array<f32, 1>();
    global0 = array<f32, 1>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(1437f, _wgslsmith_f_op_f32(max(arg_2, _wgslsmith_f_op_f32(686f + global0[_wgslsmith_index_u32(71094u, 1u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * 1659f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(281f, global0[_wgslsmith_index_u32(69383u, 1u)], -1124f)), vec3<f32>(global0[_wgslsmith_index_u32(57985u, 1u)], global0[_wgslsmith_index_u32(38923u, 1u)], 114f), false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 729f, 671f)))))))));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(_wgslsmith_dot_vec4_i32(firstTrailingBit(countOneBits(vec4<i32>(u_input.a, u_input.b.x, 37798i, u_input.a))), vec4<i32>(-u_input.a, 45709i, ~6532i, select(19292i, u_input.a, true))), _wgslsmith_div_vec2_u32(vec2<u32>(firstLeadingBit(1761u), 4294967295u), _wgslsmith_mult_vec2_u32(max(vec2<u32>(105529u, 21696u), vec2<u32>(57130u, 1u)), func_1(true, u_input.b.x, Struct_1(vec4<bool>(false, false, true, false), vec2<f32>(var_0.x, global0[_wgslsmith_index_u32(68602u, 1u)]), false, vec2<bool>(false, false), vec3<bool>(false, false, true))))), -289f, 0u)), 919f));
    var var_2 = true;
    var var_3 = u_input.a;
    var_2 = !(_wgslsmith_mult_u32(~1u, 0u) <= ~max(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 17323u, 4294967295u), vec3<u32>(33347u, 83712u, 36268u)), 69313u));
    let x = u_input.a;
    s_output = StorageBuffer(max(~min(vec3<u32>(38768u, 4294967295u, 5256u), vec3<u32>(1u, 1u, 1u)), vec3<u32>(1u, 65500u, ~max(8333u, 20801u))), 18740u, countOneBits(max(~vec4<i32>(u_input.b.x, u_input.b.x, 11906i, u_input.a), vec4<i32>(_wgslsmith_add_i32(25294i, -2147483647i), -32437i, 1i, -18781i))), _wgslsmith_clamp_i32(reverseBits(_wgslsmith_div_i32(abs(u_input.c), u_input.b.x)), u_input.b.x, firstTrailingBit(min(reverseBits(u_input.b.x), select(2147483647i, -1i, true)))));
}

