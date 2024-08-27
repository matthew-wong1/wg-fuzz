struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
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

var<private> global0: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_3(Struct_1(-238f, ~4294967295u));
    return select(vec4<bool>(var_0.a.a <= 982f, global0.x, global0.x, all(select(select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, global0.x, true)), vec3<bool>(false, true, global0.x), select(vec3<bool>(true, false, global0.x), vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, global0.x, global0.x))))), vec4<bool>(!(!(global0.x | global0.x)), !any(select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, false, false))), global0.x, !any(select(vec2<bool>(global0.x, false), vec2<bool>(global0.x, false), vec2<bool>(global0.x, global0.x)))), select(vec4<bool>(true, global0.x, true, any(!vec3<bool>(global0.x, global0.x, global0.x))), vec4<bool>(true, global0.x, false, true), true));
}

fn func_2(arg_0: vec3<i32>) -> vec2<f32> {
    let var_0 = all(select(!func_3(), func_3(), all(vec4<bool>(true, !global0.x, global0.x, true))));
    global0 = vec2<bool>(!(!(arg_0.x == (arg_0.x >> (9180u % 32u)))), true == any(!(!vec2<bool>(true, global0.x))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(361f, -1151f, -860f, -1000f)))))));
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.x), 469f));
    let var_3 = !select(vec2<bool>(select(true, func_3().x, global0.x), var_0), !func_3().ww, !vec2<bool>(global0.x, true));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1.zz, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.ww), _wgslsmith_f_op_vec2_f32(var_1.zw + var_1.wy))))) * var_1.yz);
}

fn func_4(arg_0: vec2<f32>) -> u32 {
    var var_0 = all(vec2<bool>(all(vec3<bool>(true, any(vec4<bool>(global0.x, global0.x, global0.x, global0.x)), true)), global0.x));
    var var_1 = -vec2<i32>(select(_wgslsmith_mod_i32(-1i, -1i), i32(-1i) * -2147483647i, true) | ~_wgslsmith_dot_vec2_i32(vec2<i32>(-38427i, 2147483647i), vec2<i32>(1i, 36518i)), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, 2147483647i, -17385i), vec3<i32>(1i, 1i, 1i)), -2147483647i));
    let var_2 = arg_0.x;
    var_1 = vec2<i32>(_wgslsmith_dot_vec4_i32(abs(abs(vec4<i32>(var_1.x, var_1.x, 22931i, var_1.x))), -_wgslsmith_mod_vec4_i32(~vec4<i32>(2147483647i, var_1.x, -19543i, 13452i), vec4<i32>(var_1.x, 2147483647i, 0i, -4420i))), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(-58130i, 34049i), 1i, select(-2147483647i, var_1.x, false), 0i), ~(~vec4<i32>(var_1.x, var_1.x, -23933i, var_1.x)))));
    let var_3 = Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(1696f)), -1229f)) * _wgslsmith_div_f32(532f, _wgslsmith_f_op_f32(-arg_0.x))), ~u_input.a.x));
    return 1u;
}

fn func_1(arg_0: Struct_1) -> vec3<u32> {
    let var_0 = Struct_2(func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(min(vec3<i32>(6546i, -2147483647i, 1i), vec3<i32>(0i, -10990i, 0i)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(662f, arg_0.a)))))));
    global0 = !select(vec2<bool>(global0.x, all(vec3<bool>(global0.x, true, true)) && true), !vec2<bool>(!global0.x, global0.x && global0.x), ~41135i <= ((i32(-1i) * -45766i) << (arg_0.b % 32u)));
    let var_1 = Struct_3(arg_0);
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1511f, _wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_vec2_f32(func_2(vec3<i32>(43699i, 0i, 2147483647i))).x), -889f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.a, -1000f, arg_0.a) * vec3<f32>(-914f, arg_0.a, arg_0.a))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-318f, 1f, _wgslsmith_div_f32(var_1.a.a, var_1.a.a)) * vec3<f32>(arg_0.a, var_1.a.a, 1f)))));
    var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, 520f, var_1.a.a))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -484f), 295f, _wgslsmith_f_op_f32(var_2.x + arg_0.a)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(733f, 1898f, var_1.a.a), vec3<f32>(982f, 1680f, var_1.a.a), vec3<bool>(global0.x, global0.x, global0.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-148f, 1000f, arg_0.a))))));
    return vec3<u32>(_wgslsmith_clamp_u32(abs(reverseBits(4294967295u)), var_1.a.b, u_input.a.x ^ (4294967295u & _wgslsmith_mult_u32(106772u, u_input.a.x))), u_input.a.x, firstTrailingBit(var_0.a));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_2) -> vec2<bool> {
    let var_0 = Struct_2(u_input.a.x);
    let var_1 = all(!(!func_3()));
    let var_2 = Struct_1(-946f, ~u_input.a.x);
    var var_3 = _wgslsmith_f_op_vec2_f32(func_2(abs(-abs(-vec3<i32>(0i, -2147483647i, -617i))))).x;
    var var_4 = arg_0.x;
    return select(!select(!vec2<bool>(true, var_1), !vec2<bool>(global0.x, true), select(!vec2<bool>(false, var_1), select(vec2<bool>(var_1, var_1), vec2<bool>(var_1, var_1), vec2<bool>(false, true)), !vec2<bool>(var_1, true))), vec2<bool>(!(!(!global0.x)), any(!vec2<bool>(true, var_1))), !select(vec2<bool>(var_1, true), !func_3().xy, func_3().ww));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(1f, 4294967295u);
    let var_1 = Struct_2(u_input.a.x);
    global0 = func_5(~func_1(Struct_1(-489f, _wgslsmith_mod_u32(4294967295u, var_1.a))), var_1);
    global0 = select(func_5(vec3<u32>(_wgslsmith_mod_u32(~u_input.a.x, var_1.a), ~min(4294967295u, 6759u), var_1.a), var_1), vec2<bool>(all(!select(vec4<bool>(false, true, global0.x, true), vec4<bool>(true, global0.x, false, global0.x), vec4<bool>(global0.x, global0.x, global0.x, true))), global0.x & false), !any(vec4<bool>(global0.x, false | global0.x, func_5(u_input.a, var_1).x, global0.x == global0.x)));
    global0 = vec2<bool>((-2147483647i ^ (_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(59005i, -55500i)) & _wgslsmith_clamp_i32(-503i, 1i, -15815i))) != _wgslsmith_dot_vec2_i32(vec2<i32>(32557i, ~0i), ~vec2<i32>(1i, 1i)), _wgslsmith_f_op_f32(f32(-1f) * -379f) != _wgslsmith_f_op_f32(trunc(1000f)));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(554f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(739f, var_0.a)) + _wgslsmith_f_op_f32(1060f + -760f)), 1140f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.a, 1000f)) - var_0.a)) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1406f)) - _wgslsmith_div_f32(var_0.a, var_0.a)), -256f, _wgslsmith_f_op_f32(f32(-1f) * -1169f), 341f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-769f, -308f, var_0.a, var_0.a), vec4<f32>(705f, var_0.a, 439f, -339f))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1223f * -399f)), _wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2757f, var_0.a))), _wgslsmith_f_op_f32(-var_0.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(ceil(var_2.yz)));
}

