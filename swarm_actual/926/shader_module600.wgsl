struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec3<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: u32, arg_2: vec4<i32>, arg_3: Struct_3) -> f32 {
    var var_0 = select(!(!vec4<bool>(arg_3.b.a.x && true, false, arg_3.b.a.x, true)), vec4<bool>(arg_3.a >= 105693u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -845f)) < _wgslsmith_f_op_f32(floor(arg_0.x)), !arg_3.d.d.d, arg_3.b.d.d || true), select(!(!select(vec4<bool>(true, false, false, false), vec4<bool>(arg_3.b.d.d, arg_3.d.d.d, true, true), vec4<bool>(true, arg_3.d.a.x, arg_3.b.d.b, arg_3.b.a.x))), select(!(!vec4<bool>(false, arg_3.d.d.d, arg_3.d.a.x, true)), !(!vec4<bool>(false, false, arg_3.b.d.d, arg_3.b.d.b)), vec4<bool>(any(vec4<bool>(false, arg_3.b.d.d, arg_3.d.a.x, false)), false, false, all(vec3<bool>(false, false, arg_3.b.d.b)))), !(!vec4<bool>(false, arg_3.d.d.b, true, arg_3.b.a.x))));
    var var_1 = _wgslsmith_f_op_f32(-arg_0.x);
    var var_2 = !(!all(arg_3.b.a));
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1694f)))), -969f, _wgslsmith_f_op_f32(step(arg_3.d.c, _wgslsmith_f_op_f32(trunc(1703f)))), 752f));
    var var_4 = select(var_0.zw, vec2<bool>(all(select(vec4<bool>(var_0.x, var_0.x, arg_3.b.d.b, var_0.x), !vec4<bool>(false, var_0.x, false, true), vec4<bool>(var_0.x, arg_3.b.a.x, true, true))), all(vec3<bool>(any(vec4<bool>(var_0.x, var_0.x, true, arg_3.b.d.d)), any(vec2<bool>(arg_3.d.d.d, false)), true))), arg_3.b.a);
    return _wgslsmith_f_op_f32(ceil(-881f));
}

fn func_2(arg_0: vec2<bool>) -> Struct_3 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(209f + _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-357f, -1000f)), ~select(4294967295u, 4294967295u, true), u_input.b, Struct_3(~u_input.e, Struct_2(arg_0, vec3<i32>(u_input.b.x, -2147483647i, u_input.a.x), -338f, Struct_1(-919f, arg_0.x, -64080i, arg_0.x)), u_input.b.xww | vec3<i32>(-21555i, global0[_wgslsmith_index_u32(u_input.d, 5u)], u_input.b.x), Struct_2(arg_0, u_input.b.wxz, 340f, Struct_1(1658f, false, u_input.b.x, true)))))), true, countOneBits(-_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.d, u_input.e, u_input.d), 5u)], -17658i, 1i)), all(select(vec3<bool>(select(false, arg_0.x, arg_0.x), false == arg_0.x, true), vec3<bool>(true, true, true), all(arg_0))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a));
    var var_2 = Struct_1(1073f, arg_0.x | any(vec3<bool>(false, var_0.a >= -184f, false)), 1i, arg_0.x);
    let var_3 = ~14336u;
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_2.a, 483f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_2.a, 1878f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-918f, 1072f, var_2.a))) - vec3<f32>(415f, var_2.a, 1000f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1098f, var_2.a)))));
    return Struct_3(4294967295u, Struct_2(vec2<bool>(true, arg_0.x), -u_input.b.xyw, -487f, Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a))), any(!vec3<bool>(var_0.b, var_0.d, var_0.d)), ~var_2.c ^ (i32(-1i) * -6529i), true)), select(vec3<i32>(u_input.b.x, _wgslsmith_dot_vec4_i32(u_input.b | vec4<i32>(u_input.b.x, -2147483647i, 1i, global0[_wgslsmith_index_u32(u_input.d, 5u)]), vec4<i32>(-2147483647i, 3805i, global0[_wgslsmith_index_u32(var_3, 5u)], -2147483647i)), var_2.c >> (~70723u % 32u)), abs(vec3<i32>(-23954i & global0[_wgslsmith_index_u32(6310u, 5u)], -global0[_wgslsmith_index_u32(u_input.e, 5u)], _wgslsmith_sub_i32(var_0.c, global0[_wgslsmith_index_u32(var_3, 5u)]))), !select(vec3<bool>(arg_0.x, false, true), !vec3<bool>(var_2.d, arg_0.x, var_2.b), !vec3<bool>(arg_0.x, arg_0.x, false))), Struct_2(!vec2<bool>(arg_0.x, all(vec2<bool>(true, var_2.b))), -u_input.b.zyz, var_4.x, Struct_1(var_0.a, arg_0.x, _wgslsmith_mod_i32(select(-24363i, 2147483647i, arg_0.x), -3996i), var_0.b)));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>) -> bool {
    let var_0 = select(vec4<bool>(false, (-2147483647i | firstTrailingBit(u_input.a.x)) < -u_input.a.x, all(vec2<bool>(65296u <= u_input.d, !arg_1.x)), _wgslsmith_div_i32(~1i, -arg_0.b.b.x) >= -(~1i)), select(vec4<bool>(arg_0.b.d.c > 2147483647i, !(u_input.a.x < -1i), !(arg_1.x & arg_0.d.a.x), func_2(!arg_1).b.a.x), vec4<bool>(arg_0.d.d.d, !arg_1.x, false, arg_0.d.d.b), false), func_2(func_2(!arg_0.b.a).d.a).b.d.b);
    let var_1 = arg_0.b.d.a;
    global0 = array<i32, 5>();
    let var_2 = Struct_1(var_1, (866i < max(-arg_0.c.x, arg_0.d.d.c)) && false, 1i, !func_2(vec2<bool>(true, true)).b.d.d);
    global0 = array<i32, 5>();
    return var_0.x;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: u32, arg_3: Struct_3) -> vec2<f32> {
    global0 = array<i32, 5>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d.c));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_2 = Struct_1(arg_3.b.d.a, !func_4(func_2(select(vec2<bool>(false, arg_3.d.d.b), arg_1.b.a, vec2<bool>(arg_3.d.a.x, true))), vec2<bool>(false, !arg_3.d.a.x)), firstTrailingBit(-1i), arg_1.d.d.b);
    let var_3 = arg_1.b;
    return _wgslsmith_f_op_vec2_f32(sign(arg_0.yx));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(565f, 166f))) + _wgslsmith_f_op_f32(f32(-1f) * -1114f)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-837f, 1092f))));
    global0 = array<i32, 5>();
    let var_1 = abs(u_input.d);
    var var_2 = false;
    var var_3 = true;
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-611f * _wgslsmith_f_op_f32(select(-710f, -2177f, var_4)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -3490f))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, -864f, -1005f))), Struct_3(u_input.e, Struct_2(vec2<bool>(var_0, var_0), u_input.b.wxy, 2223f, Struct_1(-1000f, var_0, -2147483647i, false)), u_input.a, Struct_2(vec2<bool>(var_0, false), vec3<i32>(u_input.b.x, u_input.a.x, global0[_wgslsmith_index_u32(u_input.e, 5u)]), 737f, Struct_1(747f, false, u_input.b.x, var_4))), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, u_input.e), vec3<u32>(19177u, u_input.d, 1u)), Struct_3(36779u, Struct_2(vec2<bool>(var_0, false), vec3<i32>(global0[_wgslsmith_index_u32(61654u, 5u)], 2147483647i, global0[_wgslsmith_index_u32(0u, 5u)]), -776f, Struct_1(171f, true, u_input.c, false)), u_input.b.xzw, Struct_2(vec2<bool>(true, var_4), vec3<i32>(-60604i, -8748i, global0[_wgslsmith_index_u32(var_1, 5u)]), 1000f, Struct_1(1464f, var_0, global0[_wgslsmith_index_u32(var_1, 5u)], var_0))))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-682f, 1000f) + vec2<f32>(477f, -1040f))))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, _wgslsmith_div_f32(-695f, -2355f)))))), u_input.b.yy);
}

