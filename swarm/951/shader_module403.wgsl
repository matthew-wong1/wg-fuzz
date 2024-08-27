struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_1 = Struct_1(vec4<bool>(true, true, true, true), false, 277i);

var<private> global2: bool;

var<private> global3: vec2<bool>;

var<private> global4: array<vec3<i32>, 18> = array<vec3<i32>, 18>(vec3<i32>(0i, 0i, 1i), vec3<i32>(1i, -56215i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 2147483647i, 2147483647i), vec3<i32>(-1i, 17104i, 0i), vec3<i32>(-29786i, -14188i, 1i), vec3<i32>(-11823i, 1i, -13292i), vec3<i32>(1i, 0i, 2147483647i), vec3<i32>(61088i, 0i, 1i), vec3<i32>(-18610i, i32(-2147483648), 2147483647i), vec3<i32>(-63214i, 0i, -12140i), vec3<i32>(-6575i, -1i, 21371i), vec3<i32>(-67085i, 2147483647i, i32(-2147483648)), vec3<i32>(13579i, 2147483647i, 1i), vec3<i32>(0i, 31937i, 1i), vec3<i32>(-1i, 2147483647i, 1i), vec3<i32>(-3074i, 30783i, 14620i), vec3<i32>(23416i, 18764i, 27782i), vec3<i32>(-29510i, 2147483647i, -30661i));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> f32 {
    global4 = array<vec3<i32>, 18>();
    var var_0 = vec3<f32>(global0.a, global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-1000f, -781f)), -2542f)))));
    var var_1 = global1.c;
    var_1 = ~_wgslsmith_sub_i32(global0.c.c, 0i);
    global3 = !vec2<bool>(-2411i < _wgslsmith_add_i32(_wgslsmith_mod_i32(global1.c, global0.c.c), global0.c.c), 0u == _wgslsmith_add_u32(4294967295u >> (u_input.a.x % 32u), _wgslsmith_add_u32(u_input.a.x, 1u)));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -625f)));
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> f32 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(func_3()), global1.a.wz, global0.c);
    global1 = var_0.c;
    var var_1 = global0.c;
    global1 = Struct_1(!var_0.c.a, global3.x, var_0.c.c);
    var var_2 = Struct_3(1296f, vec2<bool>(true, true), Struct_1(vec4<bool>(var_0.b.x | var_1.b, select(false, var_1.b, true) | global1.b, global1.b, false), -13794i > arg_0.e.x, _wgslsmith_mult_i32(select(var_1.c, 15561i, any(var_0.c.a.yz)), u_input.b.x)));
    return var_2.a;
}

fn func_1(arg_0: Struct_2) -> f32 {
    var var_0 = countOneBits(-46937i);
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1626f - _wgslsmith_f_op_f32(func_2(Struct_2(vec3<f32>(arg_0.a.x, -957f, 404f), vec2<i32>(2147483647i, arg_0.b.x), vec2<u32>(4294967295u, arg_0.c.x), u_input.b.zy, global4[_wgslsmith_index_u32(4158u, 18u)]), _wgslsmith_f_op_f32(min(-760f, global0.a))))) - global0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -360f) * global0.a)));
    global3 = !(!select(vec2<bool>(global3.x || global3.x, !global0.c.b), select(global1.a.yw, global0.c.a.xz, !global1.a.xz), global3.x));
    global4 = array<vec3<i32>, 18>();
    let var_2 = !(!global0.b);
    return var_1;
}

fn func_4(arg_0: i32, arg_1: vec3<f32>) -> Struct_3 {
    let var_0 = ~(~4294967295u);
    var var_1 = global0.c;
    let var_2 = _wgslsmith_dot_vec4_u32(select(u_input.a, vec4<u32>(43054u, u_input.a.x >> (_wgslsmith_clamp_u32(54819u, 22303u, 13216u) % 32u), u_input.a.x, _wgslsmith_dot_vec4_u32(~u_input.a, vec4<u32>(u_input.a.x, var_0, u_input.a.x, var_0))), select(var_1.a, vec4<bool>(any(vec3<bool>(global0.c.a.x, var_1.a.x, var_1.a.x)), true, true, true), !any(global0.c.a))), vec4<u32>(_wgslsmith_sub_u32(u_input.a.x, var_0), var_0, u_input.a.x, _wgslsmith_mult_u32(58869u, _wgslsmith_mult_u32(1u, _wgslsmith_div_u32(0u, 1u)))));
    var var_3 = ~select(~(vec4<u32>(1u, u_input.a.x, 19254u, u_input.a.x) >> (_wgslsmith_add_vec4_u32(u_input.a, u_input.a) % vec4<u32>(32u))), vec4<u32>(10631u, select(~u_input.a.x, _wgslsmith_div_u32(u_input.a.x, 42643u), true), u_input.a.x, _wgslsmith_mult_u32(~u_input.a.x, u_input.a.x)), var_1.b);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(403f)));
    return Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(1476f)), _wgslsmith_f_op_f32(-global0.a))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x * 1000f), _wgslsmith_f_op_f32(-global0.a))) * _wgslsmith_f_op_f32(f32(-1f) * -1788f)), vec2<bool>(!(!global1.b), true), Struct_1(!global1.a, true, arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(_wgslsmith_div_i32(~max(_wgslsmith_mod_i32(-32789i, u_input.b.x), 1i), -8935i), _wgslsmith_mod_i32((firstLeadingBit(-36137i) << ((0u << (u_input.a.x % 32u)) % 32u)) ^ _wgslsmith_sub_i32(max(2964i, global0.c.c), u_input.b.x | u_input.b.x), 0i));
    global2 = any(vec3<bool>(true, true, true));
    var var_1 = func_4(-2147483647i, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_2(vec3<f32>(global0.a, global0.a, 1842f), vec2<i32>(global0.c.c, global1.c), vec2<u32>(91986u, u_input.a.x), var_0, vec3<i32>(var_0.x, -1i, global1.c))))), _wgslsmith_f_op_f32(global0.a - global0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -357f) - 1608f)), -216f));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(492f, _wgslsmith_f_op_f32(trunc(798f))) * 1137f);
    global3 = vec2<bool>(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a - global0.a) * 259f)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-637f - _wgslsmith_f_op_f32(-862f * 823f)) * _wgslsmith_f_op_f32(func_2(Struct_2(vec3<f32>(-875f, 763f, var_1.a), vec2<i32>(u_input.b.x, u_input.b.x), vec2<u32>(10069u, u_input.a.x), vec2<i32>(-38561i, -1i), vec3<i32>(2147483647i, var_1.c.c, 2147483647i)), _wgslsmith_f_op_f32(f32(-1f) * -240f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-2700f, var_1.a, var_1.a))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(847f, var_1.a, global0.a)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2182f), _wgslsmith_f_op_f32(trunc(-1000f)), -295f))), _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(var_0.x, 14848i, global1.c, 43882i)) | max(vec4<i32>(1i, 57882i, u_input.b.x, global0.c.c), vec4<i32>(1i, u_input.b.x, var_1.c.c, var_0.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(-52650i, 45276i, u_input.b.x, 2147483647i), vec4<i32>(7908i, var_0.x, global0.c.c, var_1.c.c)) ^ (vec4<i32>(var_1.c.c, 0i, -1i, 0i) << (vec4<u32>(0u, 57020u, u_input.a.x, 26594u) % vec4<u32>(32u))), ~vec4<i32>(global0.c.c, var_1.c.c, -1i, global1.c)), vec4<i32>(~_wgslsmith_mult_i32(var_1.c.c, 33957i), abs(var_0.x), 2147483647i, countOneBits(func_4(global1.c, vec3<f32>(162f, -701f, global0.a)).c.c))));
}

