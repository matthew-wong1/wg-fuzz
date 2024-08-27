struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: u32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 5>;

var<private> global1: vec4<f32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: bool, arg_1: vec2<i32>) -> bool {
    return !(!arg_0);
}

fn func_2(arg_0: vec4<i32>) -> f32 {
    var var_0 = u_input.d.wy;
    let var_1 = !(!any(vec4<bool>(true, true, true, true)));
    let var_2 = _wgslsmith_clamp_i32(-_wgslsmith_mod_i32(0i, 1817i), -(~_wgslsmith_mod_i32(-25077i, _wgslsmith_dot_vec4_i32(arg_0, vec4<i32>(u_input.b.x, 0i, 7054i, 1i)))), arg_0.x);
    let var_3 = Struct_2(var_0.x, Struct_1(!var_1, u_input.d, 70549u, vec4<bool>(!(!var_1), var_1, !func_3(var_1, arg_0.ww), var_1)), Struct_1(true, vec4<u32>(1u, 3232u, 43023u, 0u), var_0.x, vec4<bool>(var_1, func_3(all(vec2<bool>(var_1, false)), vec2<i32>(-12355i, arg_0.x)), select(false, var_1, true), true)));
    var var_4 = Struct_2(56867u, Struct_1(var_1, var_3.c.b, abs(abs(var_3.c.b.x)) ^ u_input.d.x, var_3.c.d), Struct_1(any(var_3.c.d.wx), firstTrailingBit(var_3.c.b), 64009u, select(select(vec4<bool>(false, false, true, true), vec4<bool>(var_1, false, var_3.c.a, false), !var_3.b.d), var_3.c.d, select(select(var_3.b.d, vec4<bool>(false, true, true, var_3.c.d.x), var_3.c.d), select(var_3.b.d, var_3.b.d, false), vec4<bool>(var_1, false, true, false)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(0u, 5u)], _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(global1.x)))))) + _wgslsmith_div_f32(-1021f, global1.x));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: f32, arg_3: vec4<i32>) -> bool {
    global1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec4<i32>(40223i, 1i, 2147483647i, u_input.c.x))), _wgslsmith_f_op_f32(240f - arg_2)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-134f)), -668f), -1511f, arg_2)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(arg_3)) * 593f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 * global0[_wgslsmith_index_u32(37001u, 5u)]) + global0[_wgslsmith_index_u32(~arg_1.b.b.x, 5u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + 963f)), _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.x - global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 28810u), u_input.d.yw), 5u)]))), _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(6945u & arg_1.b.b.x, 5u)], _wgslsmith_f_op_f32(446f - arg_2))))));
    let var_0 = ~firstTrailingBit(4294967295u);
    var var_1 = vec3<bool>(arg_1.b.d.x, arg_1.b.a, true);
    var_1 = select(select(select(select(vec3<bool>(false, arg_0.x, var_1.x), select(arg_1.b.d.xwz, arg_1.b.d.www, vec3<bool>(var_1.x, var_1.x, false)), arg_1.a), arg_1.b.d.zyw, arg_1.b.d.xyx), vec3<bool>(any(select(vec4<bool>(arg_1.b.a, arg_0.x, arg_0.x, false), vec4<bool>(false, false, false, false), false)), arg_0.x, var_0 <= _wgslsmith_mult_u32(arg_1.b.b.x, 4294967295u)), arg_0.x & !(global0[_wgslsmith_index_u32(u_input.d.x, 5u)] >= global1.x)), arg_1.b.d.wzz, arg_1.b.d.yzx);
    let var_2 = vec4<u32>(abs(u_input.d.x), 25287u, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.d.yyy, vec3<u32>(35893u, arg_1.b.b.x, var_0)), ~arg_1.b.b.x, ~var_0, firstTrailingBit(var_0)), vec4<u32>(760u, arg_1.b.c, firstTrailingBit(arg_1.b.b.x), u_input.d.x ^ 0u)) | ~1u, u_input.d.x);
    return any(select(select(vec2<bool>(any(vec3<bool>(false, arg_1.a, var_1.x)), true), select(vec2<bool>(arg_0.x, true), vec2<bool>(arg_0.x, arg_0.x), false), false), vec2<bool>(any(!arg_1.b.d), select(!var_1.x, true, true)), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-861f + -1000f), global0[_wgslsmith_index_u32(7893u, 5u)])), -127f);
    var var_1 = vec3<bool>(any(vec4<bool>(true, true, true, true)) | (false == func_1(vec2<bool>(false, true), Struct_3(false, Struct_1(true, vec4<u32>(u_input.d.x, 7397u, u_input.d.x, u_input.d.x), 51533u, vec4<bool>(false, true, true, true))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(27399u, 5u)]), vec4<i32>(-24155i, -4407i, u_input.b.x, 0i))), all(vec3<bool>(true, true, true)), true);
    let var_2 = _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(u_input.d.x, 5u)]));
    let var_3 = var_1.yx;
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global1.wyw, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-402f, global0[_wgslsmith_index_u32(u_input.d.x, 5u)], global1.x) + vec3<f32>(-332f, 1244f, var_2))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, global1.x, 654f) + vec3<f32>(var_0.x, 114f, global0[_wgslsmith_index_u32(45561u, 5u)]))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(global1.zzw, vec3<f32>(var_0.x, var_0.x, var_0.x))))), vec3<bool>(true, all(vec2<bool>(var_1.x, var_3.x)), true)))));
    var_1 = select(!(!select(vec3<bool>(false, true, var_1.x), vec3<bool>(true, true, true), !var_1.x)), !vec3<bool>(false, any(vec3<bool>(var_3.x, var_3.x, var_1.x)), any(vec3<bool>(var_3.x, true, false))), !(any(vec3<bool>(true, true, true)) & func_3(false, vec2<i32>(-1i, u_input.c.x))));
    var_1 = vec3<bool>(!(1i == _wgslsmith_div_i32(u_input.c.x, u_input.a.x >> (0u % 32u))), (92103u | _wgslsmith_div_u32(4294967295u, _wgslsmith_sub_u32(u_input.d.x, u_input.d.x))) == u_input.d.x, _wgslsmith_f_op_f32(abs(var_0.x)) >= -282f);
    var var_4 = i32(-1i) * -30292i;
    let x = u_input.a;
    s_output = StorageBuffer(select(((vec4<i32>(u_input.a.x, -2147483647i, -2267i, u_input.a.x) | vec4<i32>(u_input.b.x, u_input.c.x, u_input.c.x, u_input.a.x)) & _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, u_input.c.x, -15594i, u_input.b.x), vec4<i32>(0i, u_input.b.x, u_input.c.x, 0i), vec4<i32>(u_input.a.x, u_input.a.x, 11692i, u_input.a.x))) ^ ~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, 2147483647i, 0i, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, -4661i, 2147483647i)), _wgslsmith_mod_vec4_i32(vec4<i32>(reverseBits(u_input.a.x), u_input.a.x | u_input.c.x, u_input.b.x, ~0i), _wgslsmith_sub_vec4_i32(~vec4<i32>(-2147483647i, 18825i, u_input.c.x, u_input.b.x), vec4<i32>(42838i, 3408i, -12015i, u_input.a.x) & vec4<i32>(0i, u_input.a.x, u_input.a.x, 1i))), func_3(!any(vec4<bool>(var_3.x, true, false, var_1.x)), -u_input.b.xz)));
}

