struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: Struct_1,
    d: vec3<f32>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec2<u32>,
    c: f32,
    d: bool,
    e: u32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 1> = array<bool, 1>(false);

var<private> global1: array<bool, 26> = array<bool, 26>(false, false, false, true, false, false, true, true, true, false, false, true, true, false, true, true, true, true, false, false, true, false, false, true, false, false);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    let var_0 = Struct_4(true, min(max(min(u_input.a.yx, vec2<u32>(1u, u_input.a.x)), vec2<u32>(u_input.a.x | u_input.a.x, select(0u, u_input.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 26u)]))), u_input.a.zy), -212f, global1[_wgslsmith_index_u32(~45439u, 26u)], u_input.a.x);
    global1 = array<bool, 26>();
    var var_1 = !vec3<bool>(!any(vec4<bool>(global1[_wgslsmith_index_u32(4492u, 26u)], var_0.d, global0[_wgslsmith_index_u32(var_0.b.x, 1u)], true)), global1[_wgslsmith_index_u32(~47275u, 26u)], any(vec3<bool>(!global1[_wgslsmith_index_u32(u_input.a.x, 26u)], !global0[_wgslsmith_index_u32(62803u, 1u)], global1[_wgslsmith_index_u32(_wgslsmith_div_u32(6933u, 1u), 26u)])));
    global1 = array<bool, 26>();
    var var_2 = vec2<i32>(~0i >> (~(~(15587u << (u_input.a.x % 32u))) % 32u), 0i);
    return _wgslsmith_f_op_f32(select(-2287f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - -1147f)), var_0.c != -2066f));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec4<f32>) -> f32 {
    global1 = array<bool, 26>();
    var var_0 = Struct_3(~(~u_input.a.x), arg_0);
    var var_1 = vec3<u32>(var_0.b.a, arg_0.e, _wgslsmith_clamp_u32(arg_0.e, 26793u, 1u) | var_0.b.a);
    var var_2 = ~(~reverseBits(_wgslsmith_sub_vec4_u32(min(vec4<u32>(u_input.a.x, var_0.b.e, var_0.a, 4294967295u), vec4<u32>(1u, 0u, u_input.a.x, var_0.a)), ~vec4<u32>(52851u, 1u, 0u, var_1.x))));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * 367f), arg_2.wx, Struct_1(4294967295u, all(select(vec3<bool>(arg_0.c, true, true), vec3<bool>(arg_1, true, global0[_wgslsmith_index_u32(0u, 1u)]), select(vec3<bool>(global0[_wgslsmith_index_u32(var_0.a, 1u)], true, true), vec3<bool>(arg_0.b, arg_0.b, false), true))), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_2.x << (u_input.a.x % 32u), _wgslsmith_clamp_u32(var_2.x, u_input.a.x, 52211u)), 1u)] && true, -246f, _wgslsmith_mod_u32(~(46720u << (var_2.x % 32u)), _wgslsmith_mult_u32(var_2.x, 1u) | select(1u, 2248u, false))), _wgslsmith_f_op_vec3_f32(-arg_2.zyw), !vec3<bool>(!(2147483647i >= u_input.c), false, !all(vec4<bool>(global1[_wgslsmith_index_u32(arg_0.e, 26u)], arg_1, var_0.b.b, arg_0.c))));
    return _wgslsmith_f_op_f32(func_3());
}

fn func_1() -> Struct_3 {
    var var_0 = ~u_input.a.x;
    var_0 = u_input.a.x;
    let var_1 = u_input.c;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f - -204f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1364f)) * _wgslsmith_f_op_f32(func_2(Struct_1(7859u, global0[_wgslsmith_index_u32(u_input.a.x, 1u)], global1[_wgslsmith_index_u32(0u, 26u)], 1395f, 37801u), global1[_wgslsmith_index_u32(81273u, 26u)], vec4<f32>(1387f, -1121f, 1029f, -1688f)))))) + -555f);
    let var_3 = Struct_3(_wgslsmith_mod_u32(4840u, ~select(u_input.a.x, u_input.a.x, global1[_wgslsmith_index_u32(12237u, 26u)])) | u_input.a.x, Struct_1(60529u, all(!select(vec2<bool>(true, false), vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 1u)]), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 26u)], false))), false, var_2, ~_wgslsmith_dot_vec2_u32(~u_input.a.zy, u_input.a.zy)));
    return var_3;
}

fn func_4(arg_0: Struct_3, arg_1: vec3<bool>) -> Struct_2 {
    let var_0 = firstTrailingBit(i32(-1i) * -(~0i));
    global1 = array<bool, 26>();
    let var_1 = Struct_1(abs(~(~_wgslsmith_sub_u32(u_input.a.x, arg_0.a))), 1i == _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-734i, 2147483647i, u_input.b) | vec3<i32>(2147483647i, -1i, u_input.b)), ~vec3<i32>(var_0, 1884i, u_input.b)), arg_0.b.b, 1f, abs(arg_0.a >> (u_input.a.x % 32u)) ^ u_input.a.x);
    global0 = array<bool, 1>();
    global1 = array<bool, 26>();
    return Struct_2(1000f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(262f, arg_0.b.d), vec2<f32>(236f, arg_0.b.d), arg_1.xx)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-916f, arg_0.b.d))))), Struct_1(max(36478u, arg_0.b.a), true, _wgslsmith_f_op_f32(func_3()) <= var_1.d, 270f, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a >> (u_input.a.x % 32u), reverseBits(var_1.a), 5836u), max(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, 67442u, arg_0.b.a), vec3<u32>(u_input.a.x, 4294967295u, 24161u)), ~vec3<u32>(4294967295u, 40522u, 4294967295u)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.b.d, arg_0.b.d, arg_0.b.d), _wgslsmith_div_vec3_f32(vec3<f32>(-1222f, var_1.d, 1679f), vec3<f32>(155f, var_1.d, var_1.d)), !arg_1)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(257f, arg_0.b.d, -1633f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_1.d, arg_0.b.d)))), select(vec3<bool>(arg_0.b.c, true, -12176i != var_0), arg_1, vec3<bool>(true, func_1().b.c, arg_0.b.b)))), select(!vec3<bool>(true, !global0[_wgslsmith_index_u32(u_input.a.x, 1u)], true || arg_1.x), !(!arg_1), arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(), select(vec3<bool>(true, any(select(vec3<bool>(global1[_wgslsmith_index_u32(52200u, 26u)], false, false), vec3<bool>(global0[_wgslsmith_index_u32(1801u, 1u)], global0[_wgslsmith_index_u32(u_input.a.x, 1u)], global1[_wgslsmith_index_u32(u_input.a.x, 26u)]), true)), 4294967295u < func_1().b.e), select(select(vec3<bool>(true, false, global0[_wgslsmith_index_u32(u_input.a.x, 1u)]), !vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 1u)], true), select(vec3<bool>(global1[_wgslsmith_index_u32(39154u, 26u)], false, global0[_wgslsmith_index_u32(u_input.a.x, 1u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 26u)], false), vec3<bool>(true, false, false))), vec3<bool>(true, false, false), func_1().b.b), vec3<bool>(true, false, global0[_wgslsmith_index_u32(min(~0u, _wgslsmith_sub_u32(4294967295u, 79832u)), 1u)])));
    let var_1 = Struct_1(1u, -select(~u_input.c, u_input.b >> (1u % 32u), true) <= _wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.b, min(u_input.b, -2147483647i)), -2147483647i), !(var_0.c.e < func_1().b.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.a * var_0.b.x))) * var_0.a), 7647u);
    global0 = array<bool, 1>();
    var_0 = func_4(func_1(), !select(vec3<bool>(true, false, !global1[_wgslsmith_index_u32(1u, 26u)]), var_0.e, global1[_wgslsmith_index_u32(func_1().b.a, 26u)]));
    let var_2 = !var_1.c;
    let var_3 = Struct_2(var_0.d.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.b + var_0.d.xy)))), var_1, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.d, _wgslsmith_f_op_f32(trunc(var_1.d)))), _wgslsmith_f_op_f32(var_0.a * var_1.d), 2107f), !select(!var_0.e, func_4(func_1(), !var_0.e).e, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3()))), 972f, _wgslsmith_f_op_f32(f32(-1f) * -2720f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.d))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a, _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_1.d, var_0.b.x) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.d, var_1.d, var_0.a, var_1.d))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(998f, var_1.d, var_0.d.x, -678f)))), vec4<f32>(_wgslsmith_f_op_f32(round(var_1.d)), _wgslsmith_f_op_f32(-func_1().b.d), _wgslsmith_f_op_f32(f32(-1f) * -2110f), _wgslsmith_div_f32(var_3.c.d, _wgslsmith_f_op_f32(step(var_0.b.x, -557f))))), _wgslsmith_f_op_f32(-var_0.c.d));
}

