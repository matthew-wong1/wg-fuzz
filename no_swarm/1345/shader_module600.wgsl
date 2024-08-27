struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<bool>,
    d: vec2<u32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: u32;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: vec4<f32>) -> bool {
    return false;
}

fn func_3(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    global1 = ~0u;
    global0 = false;
    global0 = false;
    global1 = arg_2.d.x;
    var var_0 = arg_3;
    return 1501f;
}

fn func_1() -> vec4<f32> {
    var var_0 = 556f;
    var var_1 = func_2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1855f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-1035f)), _wgslsmith_f_op_f32(f32(-1f) * -1418f), true)), 322f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-321f, 576f)))))));
    var_1 = !(!any(vec3<bool>(false, true, true))) | (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(111f + 405f), 2133f)) - _wgslsmith_f_op_f32(func_3(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false)), _wgslsmith_f_op_f32(-773f + -1415f), Struct_1(true, -1i, vec2<bool>(true, true), vec2<u32>(4294967295u, u_input.c), vec2<f32>(-1444f, 1017f)), Struct_1(true, u_input.d, vec2<bool>(false, false), vec2<u32>(56897u, u_input.b.x), vec2<f32>(631f, -1814f))))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<bool>(false, false, false, false), 316f, Struct_1(true, -1i, vec2<bool>(false, true), vec2<u32>(84169u, u_input.c), vec2<f32>(1349f, -156f)), Struct_1(true, u_input.e, vec2<bool>(false, false), u_input.b.yz, vec2<f32>(-1474f, -454f))))));
    let var_2 = Struct_1(reverseBits(-37549i) > -(37447i | countOneBits(u_input.d)), 1i, select(vec2<bool>(695f > _wgslsmith_f_op_f32(round(-1002f)), !(2147483647i > u_input.a)), select(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(u_input.e <= u_input.a, false), true | all(vec2<bool>(true, true))), vec2<bool>(false, any(vec4<bool>(true, true, true, true)))), u_input.b.yz, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -238f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -257f) + _wgslsmith_f_op_f32(-2508f - -530f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1173f, -575f)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -782f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1737f, 1260f))))));
    var var_3 = Struct_1(!(var_2.d.x != (_wgslsmith_dot_vec4_u32(u_input.b, u_input.b) >> (_wgslsmith_mult_u32(var_2.d.x, 44176u) % 32u))), _wgslsmith_mod_i32(u_input.a, 0i), select(vec2<bool>(!var_2.a, var_2.c.x), !var_2.c, false | select(true, func_2(vec4<f32>(-1179f, var_2.e.x, -1802f, -846f)), all(var_2.c))), _wgslsmith_div_vec2_u32(u_input.b.yy, _wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.c, var_2.d.x), ~(~vec2<u32>(4294967295u, var_2.d.x)))), var_2.e);
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.e.x, _wgslsmith_f_op_f32(-var_2.e.x), _wgslsmith_f_op_f32(min(var_2.e.x, 982f)), 1000f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_3.e.x, var_3.e.x, var_2.e.x, -119f), vec4<f32>(-185f, 1095f, 1133f, var_2.e.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.e.x, 1449f, var_2.e.x, -860f))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(var_2.e.x, var_2.e.x)), _wgslsmith_f_op_f32(min(1000f, var_3.e.x)), _wgslsmith_f_op_f32(var_2.e.x + var_2.e.x), 1000f) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.e.x, 342f, -362f, var_3.e.x), vec4<f32>(var_3.e.x, -1874f, var_3.e.x, 344f), vec4<bool>(true, var_3.c.x, false, false))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.e.x, var_3.e.x, -439f, var_3.e.x)))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: i32) -> Struct_1 {
    var var_0 = select(select(vec2<bool>((8501i ^ arg_1) != _wgslsmith_dot_vec2_i32(vec2<i32>(-68606i, -1i), vec2<i32>(u_input.d, 0i)), select(false, true, true)), vec2<bool>(true, select(u_input.c >= u_input.c, true, all(vec4<bool>(false, true, false, false)))), _wgslsmith_f_op_f32(select(arg_0.x, 794f, all(vec3<bool>(false, true, true)))) == _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.x)))), vec2<bool>(true, any(vec2<bool>(true, true))), vec2<bool>(true, false));
    global0 = false;
    let var_1 = u_input.b.zz;
    let var_2 = !(!select(!(!vec3<bool>(var_0.x, var_0.x, var_0.x)), select(!vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, true, true), !vec3<bool>(var_0.x, var_0.x, true)), var_0.x));
    let var_3 = _wgslsmith_f_op_vec3_f32(min(arg_0.wwx, _wgslsmith_f_op_vec3_f32(-arg_0.zyx)));
    return Struct_1(false, _wgslsmith_dot_vec3_i32(vec3<i32>(13452i, arg_1, -2147483647i), ~(~reverseBits(vec3<i32>(37712i, arg_1, -1i)))), var_2.xz, vec2<u32>(var_1.x, ~1u >> (~4294967295u % 32u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-292f, -382f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = abs(u_input.c);
    var var_0 = u_input.c;
    let var_1 = func_4(_wgslsmith_f_op_vec4_f32(func_1()), 0i);
    global0 = func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(var_1.e.x, var_1.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.e.x, -773f))), _wgslsmith_f_op_f32(func_3(select(vec4<bool>(var_1.c.x, var_1.a, var_1.c.x, false), vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.c.x), false), _wgslsmith_f_op_f32(-var_1.e.x), func_4(vec4<f32>(1065f, -858f, var_1.e.x, -662f), 0i), func_4(vec4<f32>(var_1.e.x, var_1.e.x, 1000f, 1897f), 8839i))), 229f)), _wgslsmith_add_i32(u_input.a, -72953i) << (4294967295u % 32u)).a;
    global1 = u_input.b.x << (u_input.c % 32u);
    var_0 = abs(var_1.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_div_i32(-var_1.b, -var_1.b), min(1i, _wgslsmith_mod_i32(var_1.b, 12762i)), var_1.b, u_input.a) | _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, 0i), vec2<i32>(-2147483647i, u_input.e)), _wgslsmith_div_i32(2147483647i, var_1.b), -2147483647i, _wgslsmith_add_i32(-27224i, var_1.b)), reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.e, var_1.b, -2147483647i, 0i), vec4<i32>(2147483647i, u_input.d, 0i, var_1.b))), -vec4<i32>(u_input.e, 2147483647i, var_1.b, -18140i) >> (~vec4<u32>(4294967295u, u_input.c, var_1.d.x, 47175u) % vec4<u32>(32u))), var_1.e.x, 4294967295u, var_1.e.x, u_input.b);
}

