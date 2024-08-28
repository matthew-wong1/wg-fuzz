struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: vec3<u32>,
}

struct Struct_4 {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec4<f32>,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: f32, arg_1: f32) -> f32 {
    global0 = vec3<u32>(1u, ~(~1u | _wgslsmith_div_u32(global0.x, ~60937u)), abs(global0.x));
    return _wgslsmith_f_op_f32(-arg_1);
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: u32, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = Struct_2(arg_3, Struct_1(_wgslsmith_f_op_f32(func_2(-507f, arg_0.b.a.a))), ~countOneBits(~arg_0.b.c) | abs(arg_0.b.c), Struct_1(-211f), !vec4<bool>(!(arg_0.b.e.x && arg_0.a.x), false, false, true));
    let var_1 = _wgslsmith_div_vec2_i32(~select(_wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.b.c.x, 1i), vec2<i32>(1i, 22630i)), _wgslsmith_sub_vec2_i32(var_0.c.xx, vec2<i32>(var_0.c.x, var_0.c.x)), vec2<i32>(arg_0.b.c.x, u_input.b) << (vec2<u32>(0u, arg_0.c.x) % vec2<u32>(32u))), ~vec2<i32>(arg_0.b.c.x, -31673i), true), arg_0.b.c.zx >> (vec2<u32>(4294967295u, _wgslsmith_mult_u32(0u, _wgslsmith_sub_u32(arg_2, 0u))) % vec2<u32>(32u)));
    let var_2 = _wgslsmith_sub_u32(~1u, firstLeadingBit(_wgslsmith_mult_u32(4294967295u, 0u ^ u_input.d.x)));
    var var_3 = select(select(select(vec3<bool>(var_2 > global0.x, any(var_0.e.yw), var_0.e.x), var_0.e.wzw, vec3<bool>(all(arg_0.a), any(vec3<bool>(var_0.e.x, var_0.e.x, true)), any(arg_0.a.xx))), select(!(!vec3<bool>(arg_0.b.e.x, arg_0.b.e.x, false)), vec3<bool>(var_0.e.x, true, true), arg_0.a), !(var_0.e.x & true)), var_0.e.wxy, !(var_0.e.x | any(var_0.e.wyz)));
    var var_4 = Struct_4(_wgslsmith_sub_i32(_wgslsmith_mod_i32(var_0.c.x, var_0.c.x), -18394i), vec2<i32>(_wgslsmith_clamp_i32(arg_0.b.c.x << (6276u % 32u), var_0.c.x | ~14668i, firstLeadingBit(var_1.x << (arg_0.c.x % 32u))), var_1.x), ~vec2<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(arg_2, arg_0.c.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, arg_2, u_input.a.x, global0.x), vec4<u32>(arg_0.c.x, 49121u, global0.x, arg_0.c.x))), 1u));
    return select(vec3<bool>(!any(!vec2<bool>(var_3.x, arg_0.b.e.x)), var_0.e.x | true, !(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, arg_2, arg_2, global0.x), vec4<u32>(arg_0.c.x, var_2, arg_2, 8412u)) >= arg_2)), !vec3<bool>(!(!var_3.x), true, abs(0u) != (var_4.c.x | var_2)), !select(true, arg_0.b.e.x, all(select(vec4<bool>(var_3.x, arg_0.b.e.x, var_3.x, true), vec4<bool>(var_0.e.x, false, false, false), var_0.e.x))));
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(990f))), 560f)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-416f, -324f, 1147f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1240f, -1426f, -1000f)), vec3<bool>(true, true, true))))))));
    global0 = u_input.d.yxz;
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-842f, 825f), _wgslsmith_f_op_f32(f32(-1f) * -1187f), var_0.x) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1000f, -484f, _wgslsmith_f_op_f32(func_2(var_0.x, 767f))), vec3<f32>(var_0.x, _wgslsmith_div_f32(var_0.x, -517f), var_0.x))));
    global0 = u_input.d.wwz;
    var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-123f, 239f, var_0.x))), vec3<f32>(178f, var_0.x, -1000f), all(vec3<bool>(arg_0, arg_0, arg_0)))) - vec3<f32>(592f, var_0.x, _wgslsmith_f_op_f32(step(var_0.x, var_0.x))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 469f, 1017f) - vec3<f32>(var_0.x, 1000f, -791f))))), vec3<f32>(-1000f, -550f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(-var_0.x))), select(vec3<bool>(arg_0, arg_0 & true, 0i > u_input.b), !vec3<bool>(true, false, arg_0), arg_0))), false || all(func_3(Struct_3(vec3<bool>(true, arg_0, false), Struct_2(Struct_1(-688f), Struct_1(-1547f), vec3<i32>(19903i, u_input.b, -2147483647i), Struct_1(906f), vec4<bool>(arg_0, false, true, arg_0)), vec3<u32>(0u, 0u, global0.x)), var_0.x, min(global0.x, global0.x), Struct_1(1234f)))));
    return Struct_1(-391f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_sub_vec3_u32(~(~vec3<u32>(u_input.d.x, global0.x, global0.x) ^ _wgslsmith_mod_vec3_u32(abs(u_input.d.zwz), _wgslsmith_sub_vec3_u32(vec3<u32>(82262u, global0.x, 23293u), vec3<u32>(0u, u_input.c.x, u_input.c.x)))), u_input.d.xxy);
    var var_0 = u_input.b & _wgslsmith_mod_i32(u_input.b, -28604i);
    var var_1 = _wgslsmith_mod_i32(-u_input.b, -23728i);
    let var_2 = func_1(true);
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-594f, var_2.a, var_2.a)))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-117f, 548f, var_2.a)))))))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1337f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a))), _wgslsmith_f_op_f32(f32(-1f) * -1740f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.a, 394f) - var_2.a)));
    let var_4 = all(func_3(Struct_3(vec3<bool>(select(true, true, false), all(vec3<bool>(true, false, false)), false), Struct_2(var_2, var_2, ~vec3<i32>(u_input.b, u_input.b, -2147483647i), Struct_1(-2171f), vec4<bool>(false, false, false, true)), vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.d, u_input.d), _wgslsmith_dot_vec2_u32(u_input.d.yw, u_input.c), 41970u)), var_3.x, 16013u, func_1(true)));
    var var_5 = !vec2<bool>(any(select(select(vec3<bool>(true, var_4, var_4), vec3<bool>(false, var_4, var_4), true), vec3<bool>(true, true, var_4), vec3<bool>(var_4, true, false))), !any(!vec4<bool>(false, var_4, false, var_4)));
    var_5 = select(vec2<bool>(!(true & var_5.x), select(true, _wgslsmith_f_op_f32(-743f * var_3.x) >= _wgslsmith_f_op_f32(round(432f)), select(var_4, var_4, false))), select(func_3(Struct_3(vec3<bool>(var_5.x, var_5.x, true), Struct_2(var_2, Struct_1(113f), vec3<i32>(u_input.b, u_input.b, 0i), Struct_1(-512f), vec4<bool>(true, false, false, true)), ~u_input.d.zww), 985f, global0.x, var_2).yz, vec2<bool>(!(!var_4), !(!var_4)), select(select(select(vec2<bool>(var_4, var_5.x), vec2<bool>(var_5.x, false), var_5.x), vec2<bool>(var_4, var_5.x), var_4), !(!vec2<bool>(var_4, var_5.x)), !(!vec2<bool>(true, var_5.x)))), !vec2<bool>(!(u_input.b != -18079i), var_4));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, -2184f, true))), _wgslsmith_f_op_f32(-1072f * _wgslsmith_div_f32(var_3.x, var_2.a)))), -u_input.b, vec4<f32>(415f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x))), _wgslsmith_f_op_f32(-571f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1280f * var_3.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(573f - var_2.a)), -699f))), global0.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3.zy - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_3.xz)))));
}

