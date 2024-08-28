struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec3<u32>, 28>;

var<private> global2: vec3<i32>;

var<private> global3: array<vec2<i32>, 6> = array<vec2<i32>, 6>(vec2<i32>(-8304i, 1i), vec2<i32>(2147483647i, -18203i), vec2<i32>(0i, -1i), vec2<i32>(0i, 2147483647i), vec2<i32>(-28525i, i32(-2147483648)), vec2<i32>(-14427i, -18952i));

var<private> global4: array<Struct_1, 12>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_mod_i32(12694i, global0.a), ~global2.x), _wgslsmith_mod_i32(global2.x, 1i)), _wgslsmith_f_op_f32(-global0.b));
    global1 = array<vec3<u32>, 28>();
    global4 = array<Struct_1, 12>();
    var var_1 = Struct_2(-global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(1f, -346f))))));
    global2 = vec3<i32>(19737i, ~global2.x, -select(_wgslsmith_dot_vec4_i32(~vec4<i32>(global0.a, 19073i, -1i, -22638i), select(vec4<i32>(var_1.a, 91651i, -2147483647i, global0.a), vec4<i32>(var_1.a, global0.a, -28633i, -33516i), true)), i32(-1i) * -2147483647i, (var_1.b >= -152f) && false));
    return Struct_1(39357u);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_2 {
    var var_0 = arg_1;
    let var_1 = Struct_1(arg_2.a);
    var var_2 = Struct_2(2147483647i, -1137f);
    let var_3 = arg_2;
    let var_4 = func_2();
    return Struct_2(_wgslsmith_mod_i32(var_2.a, global0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1464f)))) + global0.b));
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> vec4<bool> {
    global1 = array<vec3<u32>, 28>();
    let var_0 = func_2();
    let var_1 = _wgslsmith_f_op_f32(-arg_1.b);
    var var_2 = !vec3<bool>(any(vec3<bool>(true, true, true)), select(true, all(vec3<bool>(true, true, true)), all(vec4<bool>(false, true, true, true))), (abs(u_input.a.x) & u_input.a.x) < ~var_0.a);
    global4 = array<Struct_1, 12>();
    return vec4<bool>(true, all(!vec4<bool>(var_2.x, var_2.x, !var_2.x, true && var_2.x)), (88553u < abs(~var_0.a)) && select(var_2.x, false, true), any(vec2<bool>(!var_2.x, !(u_input.a.x != var_0.a))));
}

fn func_1(arg_0: f32, arg_1: bool) -> Struct_1 {
    var var_0 = func_4(_wgslsmith_mult_i32(~10145i >> (u_input.a.x % 32u), (global2.x << ((4294967295u | u_input.a.x) % 32u)) & (min(1i, 2147483647i) >> (~u_input.a.x % 32u))), func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0, 1019f, 368f, 383f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.b, 1769f, 485f, arg_0))))) + vec4<f32>(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(global0.b - global0.b), global0.b, _wgslsmith_f_op_f32(trunc(global0.b)))), Struct_2(select(global2.x, 13902i, true), arg_0), func_2()));
    global1 = array<vec3<u32>, 28>();
    global1 = array<vec3<u32>, 28>();
    let var_1 = Struct_2(min(u_input.b, ~1832i & abs(global0.a)), _wgslsmith_div_f32(403f, -1051f));
    let var_2 = Struct_2(u_input.b, _wgslsmith_f_op_f32(trunc(1000f)));
    return global4[_wgslsmith_index_u32(4294967295u, 12u)];
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2) -> Struct_2 {
    global4 = array<Struct_1, 12>();
    global3 = array<vec2<i32>, 6>();
    let var_0 = global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(27911u, u_input.a.x), 12u)];
    var var_1 = firstLeadingBit(~(countOneBits(-u_input.b) ^ reverseBits(u_input.b << (arg_0.a % 32u))));
    let var_2 = _wgslsmith_mult_i32(-3830i, -47707i);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<i32>, 6>();
    global0 = func_5(func_1(global0.b, -1773f <= global0.b), Struct_2(global2.x, global0.b));
    var var_0 = Struct_1(u_input.a.x);
    var var_1 = Struct_2(~_wgslsmith_sub_i32(global0.a, global0.a), 335f);
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.b, global0.b, -330f, 1289f), vec4<f32>(-298f, 1000f, 564f, 529f), vec4<bool>(true, false, true, false)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-2971f, global0.b, var_1.b, 417f))))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(550f, 630f, -715f, global0.b), vec4<f32>(1759f, -1582f, 728f, global0.b), false)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.b, var_1.b, -283f, -950f)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.b, -920f, var_1.b, var_1.b))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, 1000f, global0.b, var_1.b)), vec4<bool>(false, false, false, true)))))), func_4(var_1.a, Struct_2(~(~(-1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) - global0.b))).x));
    var var_3 = true;
    let var_4 = var_1.a;
    let var_5 = Struct_1(0u ^ ~_wgslsmith_div_u32(func_2().a, _wgslsmith_sub_u32(var_0.a, 23680u)));
    var var_6 = any(vec3<bool>(true && (-1i < u_input.c.x), false, false)) & func_4(4734i, Struct_2(-(i32(-1i) * -10078i), global0.b)).x;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_u32(4294967295u, 31678u, ~0u) | 0u, _wgslsmith_add_i32(u_input.b, -1i), u_input.b, min(var_1.a, -1i));
}

