struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: f32;

var<private> global2: array<Struct_1, 1>;

var<private> global3: i32;

var<private> global4: bool;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: vec3<f32>, arg_3: f32) -> f32 {
    var var_0 = vec3<bool>(false, true == global0.x, global0.x);
    var_0 = !select(vec3<bool>(true, ~41734u == min(u_input.b, 0u), true), !vec3<bool>(all(vec4<bool>(false, var_0.x, global0.x, false)), arg_1, any(vec4<bool>(var_0.x, global0.x, arg_1, arg_1))), !(!(arg_2.x >= arg_3)));
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_2.x, arg_2.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-129f + arg_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1395f, arg_3))))), 261f, _wgslsmith_f_op_f32(arg_2.x * -1000f))));
    var_0 = select(select(select(!select(vec3<bool>(true, var_0.x, arg_1), vec3<bool>(var_0.x, false, arg_1), global0.x), !vec3<bool>(true, var_0.x, var_0.x), false), vec3<bool>(false, true, false), select(select(vec3<bool>(global0.x, arg_1, false), vec3<bool>(global0.x, true, var_0.x), global0.x), select(vec3<bool>(global0.x, true, global0.x), !vec3<bool>(var_0.x, arg_1, true), all(vec4<bool>(true, true, arg_1, true))), !vec3<bool>(false, global0.x, false))), select(select(vec3<bool>(true, all(vec3<bool>(arg_1, var_0.x, false)), any(vec2<bool>(global0.x, true))), !(!vec3<bool>(true, true, var_0.x)), vec3<bool>(true, true, true)), vec3<bool>(global0.x, true, false), true), arg_1);
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -905f) + _wgslsmith_f_op_f32(max(arg_2.x, -790f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -268f))));
}

fn func_2(arg_0: i32) -> i32 {
    global3 = -1i;
    var var_0 = Struct_3(~_wgslsmith_sub_vec2_u32(select(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(1u, u_input.b), vec2<u32>(72889u, u_input.b)), vec2<u32>(9844u, u_input.b) >> (vec2<u32>(13776u, 4294967295u) % vec2<u32>(32u)), false), (vec2<u32>(u_input.b, u_input.b) << (vec2<u32>(u_input.b, 60002u) % vec2<u32>(32u))) & vec2<u32>(4294967295u, u_input.b)), arg_0, min(u_input.a, vec2<i32>(u_input.a.x, ~u_input.a.x)));
    global1 = _wgslsmith_f_op_f32(func_3(var_0.c.x, (false & global0.x) && (all(vec2<bool>(true, true)) && false), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-440f)) * _wgslsmith_f_op_f32(-1207f * -1574f)) + 2570f), _wgslsmith_f_op_f32(f32(-1f) * -955f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1000f)), 1276f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -248f))))));
    global3 = _wgslsmith_div_i32(-25806i, -_wgslsmith_clamp_i32(-(~arg_0), arg_0, _wgslsmith_mult_i32(20840i, 23226i)));
    global3 = -55851i;
    return select(-firstLeadingBit(var_0.c.x), var_0.b, global0.x);
}

fn func_1(arg_0: vec2<u32>) -> vec2<bool> {
    var var_0 = global0.x;
    global4 = all(!vec2<bool>((-72890i <= u_input.a.x) && select(global0.x, false, global0.x), _wgslsmith_f_op_f32(f32(-1f) * -1088f) < _wgslsmith_f_op_f32(floor(523f))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(383f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1939f - 926f), -268f, true))), _wgslsmith_f_op_f32(abs(-1456f))));
    var var_1 = -634f;
    var var_2 = _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(50876i, 2147483647i, -42066i, u_input.a.x), vec4<i32>(0i, func_2(u_input.a.x), -21201i, u_input.a.x)), reverseBits(-_wgslsmith_dot_vec2_i32(u_input.a, u_input.a))) << ((~arg_0.x ^ (countOneBits(~5343u) >> (_wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.b, u_input.b, 37100u, arg_0.x)), ~vec4<u32>(80684u, 0u, 35937u, arg_0.x)) % 32u))) % 32u);
    return vec2<bool>(false, true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(~(vec2<u32>(~u_input.b, 5084u) ^ ~vec2<u32>(u_input.b, 13807u)));
    var var_0 = Struct_2(vec2<u32>(u_input.b, u_input.b), u_input.b << (_wgslsmith_mod_u32(4294967295u, min(max(u_input.b, 4294967295u), 4294967295u)) % 32u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -889f, -1250f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-732f, 237f, -244f) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1537f, -559f, -726f)))))));
    global3 = select(-min(_wgslsmith_mod_i32(u_input.a.x, 7875i), -1i) >> (u_input.b % 32u), 2147483647i, false);
    let var_1 = select(-vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.a.x, 14961i), -2147483647i, u_input.a.x), 60309i, _wgslsmith_div_i32(u_input.a.x, abs(u_input.a.x))), _wgslsmith_clamp_vec3_i32(vec3<i32>(~(~u_input.a.x), _wgslsmith_sub_i32(~(-1i), u_input.a.x), -50442i), ~_wgslsmith_div_vec3_i32(-vec3<i32>(u_input.a.x, u_input.a.x, 0i), vec3<i32>(40753i, u_input.a.x, u_input.a.x)), firstLeadingBit(~vec3<i32>(u_input.a.x, -19255i, 0i))), !(abs(_wgslsmith_div_i32(34484i, -53664i)) <= u_input.a.x));
    global4 = all(!(!(!vec4<bool>(global0.x, true, global0.x, false))));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(var_0.c, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-976f, _wgslsmith_f_op_f32(exp2(var_0.c.x)), _wgslsmith_f_op_f32(-var_0.c.x)) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, var_0.c.x, -842f)), _wgslsmith_f_op_vec3_f32(floor(var_0.c))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, 636f, var_0.c.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-223f, 1000f, -1299f)))))), !select(!vec3<bool>(global0.x, global0.x, false), select(select(vec3<bool>(true, global0.x, true), vec3<bool>(global0.x, global0.x, global0.x), global0.x), vec3<bool>(global0.x, global0.x, false), any(vec4<bool>(true, global0.x, global0.x, true))), true)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(22153i, 36780i >> (~(~u_input.b) % 32u), u_input.a.x), ~vec4<i32>(~u_input.a.x, _wgslsmith_add_i32(-2147483647i, u_input.a.x), -var_1.x, u_input.a.x) ^ vec4<i32>(u_input.a.x, firstLeadingBit(-2147483647i << (var_0.a.x % 32u)), u_input.a.x, u_input.a.x), vec2<u32>(_wgslsmith_sub_u32(1135u, reverseBits(u_input.b)), var_0.a.x), 0i);
}

