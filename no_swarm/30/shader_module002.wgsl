struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec4<u32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: bool,
}

struct Struct_3 {
    a: bool,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 13>;

var<private> global1: i32 = 41235i;

var<private> global2: vec2<u32>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_1) -> vec2<bool> {
    return select(arg_0.b.xy, !select(vec2<bool>(true, select(false, false, true)), vec2<bool>(true, arg_0.a), !vec2<bool>(arg_0.b.x, arg_0.a)), vec2<bool>(any(arg_0.b), arg_0.b.x));
}

fn func_3() -> bool {
    global2 = ~_wgslsmith_clamp_vec2_u32(u_input.a.yw, vec2<u32>(1u, u_input.c.x), u_input.a.ww);
    var var_0 = Struct_3(false, vec2<bool>(true, true));
    var var_1 = vec3<u32>(_wgslsmith_mult_u32(firstTrailingBit(_wgslsmith_sub_u32(u_input.c.x, 96613u)), _wgslsmith_mult_u32(21081u, global2.x)), ~_wgslsmith_mod_u32(~0u ^ global2.x, ~(global2.x >> (12510u % 32u))), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(max(u_input.a.x, 39891u), _wgslsmith_clamp_u32(0u, u_input.a.x, 1u))), u_input.c.yy));
    let var_2 = vec4<u32>(~1u, select(_wgslsmith_sub_u32(firstTrailingBit(4294967295u), u_input.c.x), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(77094u, 1u), vec2<u32>(var_1.x, 53651u)), 1u), false), global2.x, ~4294967295u);
    var var_3 = any(!(!vec3<bool>(true, true, !var_0.a)));
    return 1f <= _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(0u, 13u)], -408f, false)) - global0[_wgslsmith_index_u32(~4294967295u, 13u)]), 935f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1354f, 634f)))));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: bool) -> u32 {
    let var_0 = arg_1;
    let var_1 = Struct_2(var_0, !vec2<bool>(var_0.d, select(true, !arg_1.a, all(vec3<bool>(false, true, true)))), 493f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)) + _wgslsmith_f_op_f32(1106f * _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(1u, 13u)])))));
    var var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-925f)), _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(9346u, 13u)]), _wgslsmith_f_op_f32(f32(-1f) * -783f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1428f, arg_2.x, arg_2.x, global0[_wgslsmith_index_u32(var_1.a.c.x, 13u)]) - vec4<f32>(-631f, arg_2.x, arg_2.x, -1667f)))))));
    return arg_1.c.x;
}

fn func_1(arg_0: f32) -> u32 {
    var var_0 = true;
    var var_1 = true;
    global0 = array<f32, 13>();
    let var_2 = -_wgslsmith_sub_vec2_i32(min(max(-vec2<i32>(0i, u_input.b), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(81414i, u_input.b))), ~_wgslsmith_mult_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(u_input.b, u_input.b))), abs(firstLeadingBit(vec2<i32>(u_input.b, u_input.b))) & _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, u_input.b) << (vec2<u32>(u_input.a.x, global2.x) % vec2<u32>(32u)), min(vec2<i32>(u_input.b, 1i), vec2<i32>(u_input.b, 38631i)), ~vec2<i32>(-2147483647i, u_input.b)));
    var var_3 = Struct_3(true, select(select(!select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), true), any(vec2<bool>(true, false))), true), !select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true)), select(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), func_2(Struct_1(true, vec4<bool>(true, true, true, false), vec4<u32>(u_input.a.x, global2.x, 1u, global2.x), true)), true && any(vec2<bool>(true, false)))));
    return func_4(vec2<bool>(!var_3.b.x, false), Struct_1(!any(select(vec4<bool>(true, var_3.b.x, false, var_3.b.x), vec4<bool>(true, false, true, true), vec4<bool>(false, var_3.b.x, false, false))), vec4<bool>(true, var_3.b.x, _wgslsmith_f_op_f32(f32(-1f) * -351f) != _wgslsmith_f_op_f32(sign(-542f)), func_3() & func_3()), ~(~vec4<u32>(global2.x, 0u, 15918u, 62694u)), true), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(abs(arg_0)), _wgslsmith_f_op_f32(ceil(-244f)), global0[_wgslsmith_index_u32(u_input.a.x, 13u)]))))), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(-abs(-2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-countOneBits(_wgslsmith_div_i32(2147483647i, 102401i)), ~u_input.b), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, ~4294967295u, _wgslsmith_mod_u32(u_input.c.x, u_input.a.x), ~0u), u_input.a | vec4<u32>(4294967295u, 1u, 1888u, global2.x)), vec4<u32>(49u, func_1(global0[_wgslsmith_index_u32(abs(58019u), 13u)]), u_input.a.x, global2.x)), ((i32(-1i) * -u_input.b) >> (~(19641u << (global2.x % 32u)) % 32u)) ^ select(1i, -7248i, true), -max(_wgslsmith_mod_vec2_i32(select(vec2<i32>(-43739i, 1i), vec2<i32>(u_input.b, -2147483647i), vec2<bool>(false, true)), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, 6756i))), ~vec2<i32>(-45699i, -2147483647i) << (~u_input.a.zw % vec2<u32>(32u))));
}

