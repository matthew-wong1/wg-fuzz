struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(vec4<f32>(-615f, 1000f, -384f, -516f), vec3<bool>(true, false, true), vec3<i32>(1043i, 2147483647i, 6270i));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, _wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) - -1000f)), _wgslsmith_f_op_f32(exp2(global1.a.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global1.a.x, global1.a.x), _wgslsmith_div_f32(150f, _wgslsmith_f_op_f32(-308f - global0.a.x)), 1000f, _wgslsmith_f_op_f32(-global1.a.x)) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, -727f, 1114f, global1.a.x))))))));
    global0 = Struct_1(global1.a, vec3<bool>(global1.b.x, global0.b.x, global0.b.x), vec3<i32>(abs(global0.c.x) & -55400i, global1.c.x, global1.c.x));
    var var_1 = _wgslsmith_f_op_f32(-1206f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.a.x))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x)))));
    global1 = Struct_1(_wgslsmith_div_vec4_f32(global0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1119f, _wgslsmith_f_op_f32(global0.a.x - 1087f), -2749f, _wgslsmith_f_op_f32(floor(1017f))))), select(!(!(!global1.b)), global0.b, !all(select(vec2<bool>(false, global1.b.x), global1.b.zz, global0.b.xy))), global0.c);
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(var_0, global0.a)) - global1.a), !vec3<bool>(961f > global0.a.x, true, true), max(reverseBits(global0.c), abs(global0.c)) >> (firstLeadingBit(~(~vec3<u32>(u_input.c, u_input.c, u_input.c))) % vec3<u32>(32u)));
    return global1.a;
}

fn func_2() -> Struct_2 {
    global0 = Struct_1(_wgslsmith_div_vec4_f32(global0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-global0.a))) * _wgslsmith_f_op_vec4_f32(func_3()))), select(global1.b, global1.b, vec3<bool>(0i < _wgslsmith_dot_vec4_i32(vec4<i32>(global0.c.x, 0i, u_input.a, 0i), vec4<i32>(u_input.a, -2147483647i, 16075i, u_input.a)), !(global0.b.x & global1.b.x), global1.b.x)), vec3<i32>(-39465i, global1.c.x, 2147483647i));
    global0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(631f, _wgslsmith_f_op_f32(-global0.a.x), global0.a.x, _wgslsmith_f_op_f32(-global1.a.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, global1.a.x, 1000f, global1.a.x) - vec4<f32>(1973f, -288f, -727f, global1.a.x))), global0.a), global1.b, vec3<i32>(0i, global0.c.x << (1u % 32u), 2147483647i));
    global0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.x - -1596f) - _wgslsmith_f_op_f32(floor(1012f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.x * global0.a.x) * _wgslsmith_f_op_f32(-global0.a.x))), 2205f, global1.a.x, _wgslsmith_f_op_f32(-global1.a.x)), select(select(select(global1.b, vec3<bool>(global0.b.x, false, global1.b.x), global0.b.x), global1.b, true), global1.b, select(vec3<bool>(any(vec4<bool>(global1.b.x, false, true, global0.b.x)), global0.b.x, global1.b.x), vec3<bool>(all(vec2<bool>(false, global1.b.x)), global0.b.x, false), true)), vec3<i32>(_wgslsmith_sub_i32(global1.c.x, abs(global0.c.x)), _wgslsmith_mult_i32(_wgslsmith_mult_i32(1i, 0i), 0i), 5257i));
    var var_0 = _wgslsmith_f_op_f32(step(global0.a.x, -825f));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-748f - -1000f), _wgslsmith_f_op_f32(-global0.a.x), global1.a.x, _wgslsmith_div_f32(global0.a.x, -443f)))), vec3<bool>(0i >= _wgslsmith_mod_i32(-1i, global0.c.x), global0.b.x, true), vec3<i32>(-global0.c.x | global1.c.x, global0.c.x, u_input.a)), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-831f, global0.a.x, -1000f, -1000f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1120f, -907f, -1610f, global1.a.x)) * vec4<f32>(global1.a.x, global1.a.x, global1.a.x, global0.a.x))), !global1.b, ~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-18761i, 2147483647i, 6800i, 0i), vec4<i32>(global0.c.x, -15060i, -36650i, global1.c.x)), ~global0.c.x, u_input.b << (0u % 32u))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: u32) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(step(arg_0, vec4<f32>(315f, 1f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), 780f)), _wgslsmith_f_op_f32(-642f - arg_0.x))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec2<u32>) -> Struct_2 {
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(404f, 1020f, arg_0.a.x, 1528f))), func_2(), global1.c | select(global1.c, global1.c, vec3<bool>(global0.b.x, false, arg_0.b.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, 48587u, arg_2.x) & vec3<u32>(arg_2.x, 0u, 1u), ~vec3<u32>(arg_2.x, u_input.c, 4294967295u))))), !vec3<bool>(arg_0.b.x, global0.a.x <= _wgslsmith_f_op_f32(-arg_1.x), arg_0.b.x), vec3<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(global0.c.x, 23450i), -73097i), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, global0.c.x), global1.c.yx), vec2<i32>(global1.c.x, -1i)), ~(~23314i)) ^ arg_0.c);
    let var_0 = arg_0.b.x && !any(vec4<bool>(false, arg_0.c.x > arg_0.c.x, arg_0.b.x, arg_0.b.x && true));
    global1 = arg_0;
    var var_1 = !select(vec2<bool>(global1.b.x, global1.b.x), !vec2<bool>(false, all(global1.b.xx)), global0.b.xx);
    global1 = func_2().a;
    return Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, global0.a.x, 1000f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1103f, 801f, global1.a.x, global0.a.x))))), vec3<bool>(any(!arg_0.b.xx), var_0, true), _wgslsmith_add_vec3_i32(global0.c << (select(vec3<u32>(0u, 34453u, 1u), vec3<u32>(u_input.c, u_input.c, 1u), arg_0.b) % vec3<u32>(32u)), global0.c)), func_2().a);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<i32>) -> vec4<f32> {
    global0 = arg_0.a;
    global0 = func_2().b;
    var var_0 = arg_1.a.a.yy;
    return global0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(func_5(func_1(Struct_1(vec4<f32>(global0.a.x, 605f, 247f, global1.a.x), !global0.b, vec3<i32>(u_input.a, u_input.b, -12246i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(global1.a.yyz))), ~(~vec2<u32>(u_input.c, u_input.c))), Struct_2(Struct_1(vec4<f32>(global0.a.x, global1.a.x, -293f, 105f), global0.b, select(global0.c, global1.c, global1.b.x)), Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1851f, global0.a.x, global0.a.x, -1000f), vec4<f32>(-2367f, global1.a.x, 236f, -414f), vec4<bool>(global1.b.x, global1.b.x, false, global1.b.x))), func_2().a.b, ~global0.c)), vec3<i32>(func_1(func_2().b, _wgslsmith_f_op_vec3_f32(max(global0.a.zzy, global0.a.ywz)), ~vec2<u32>(0u, 4294967295u)).a.c.x, ~_wgslsmith_dot_vec2_i32(global1.c.yy, global1.c.xx), -global0.c.x))), vec3<bool>(true, any(global0.b), !all(vec3<bool>(true, global0.b.x, true))), (-(vec3<i32>(-2147483647i, 1i, 17831i) & vec3<i32>(global1.c.x, global1.c.x, global0.c.x)) & abs(global1.c | vec3<i32>(35752i, u_input.a, -42518i))) | -vec3<i32>(u_input.b, global1.c.x, max(global1.c.x, global1.c.x)));
    let var_1 = !func_1(Struct_1(var_0.a, func_2().b.b, global1.c), vec3<f32>(-1111f, _wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x - 774f))), vec2<u32>(u_input.c, _wgslsmith_sub_u32(~u_input.c, 38078u))).a.b.x;
    let var_2 = Struct_1(var_0.a, global0.b, -global0.c);
    global1 = Struct_1(vec4<f32>(global1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), global1.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-666f + -1145f)), global1.a.x), var_0.a.x), global0.b, ~_wgslsmith_sub_vec3_i32(-(~global1.c), ~vec3<i32>(var_0.c.x, 2147483647i, u_input.b) >> (vec3<u32>(32365u, 1u, u_input.c) % vec3<u32>(32u))));
    let var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a.x, var_0.a.x)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-276f, 428f))))));
    let var_4 = Struct_3(vec4<f32>(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global0.a.x, global0.a.x))), _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(f32(-1f) * -695f))), _wgslsmith_f_op_f32(f32(-1f) * -272f), _wgslsmith_div_f32(global1.a.x, func_1(var_2, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, var_2.a.x, var_0.a.x)), vec2<u32>(u_input.c, u_input.c)).b.a.x)), func_2());
    var var_5 = ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 66860u, u_input.c), vec3<u32>(u_input.c, u_input.c, u_input.c))) ^ _wgslsmith_div_vec3_u32(~(vec3<u32>(u_input.c, u_input.c, 46300u) | vec3<u32>(u_input.c, u_input.c, 4294967295u)), vec3<u32>(u_input.c, abs(0u), 35739u)));
    global1 = func_1(Struct_1(var_0.a, var_0.b, _wgslsmith_add_vec3_i32(vec3<i32>(var_4.b.b.c.x, u_input.b, u_input.b), global1.c)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_4.b.b.a.wyz))))), ~_wgslsmith_div_vec2_u32(var_5.xy >> (vec2<u32>(38396u, var_5.x) % vec2<u32>(32u)), firstLeadingBit(firstLeadingBit(vec2<u32>(u_input.c, 79439u))))).a;
    var var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(firstLeadingBit(vec4<u32>(0u, 128561u, 28040u, 34105u))), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, var_5.x, 16608u, u_input.c), vec4<u32>(var_5.x, u_input.c, u_input.c, 23235u)), vec4<u32>(0u, 1u, u_input.c, 41170u) << (vec4<u32>(4294967295u, 31352u, 1u, 1u) % vec4<u32>(32u))) >> (~abs(vec4<u32>(var_5.x, 43013u, var_5.x, 39312u)) % vec4<u32>(32u)), vec4<u32>(0u, var_5.x, var_5.x, reverseBits(_wgslsmith_div_u32(1u, 151851u)))));
}

