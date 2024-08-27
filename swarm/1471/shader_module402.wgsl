struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec2<i32>,
    d: vec3<f32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1619f, 732f);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: i32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.x + 2922f) - arg_1.a.x));
    let var_1 = arg_1;
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1323f * _wgslsmith_f_op_f32(abs(global0.x))), _wgslsmith_f_op_f32(ceil(global0.x)), arg_0) - _wgslsmith_f_op_vec3_f32(-var_1.a)));
    var var_3 = true;
    let var_4 = abs(31829u);
    return _wgslsmith_div_i32(arg_2, -(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, arg_2, -1i, -2147483647i), vec4<i32>(2147483647i, 33296i, arg_2, 53066i)) & -1i));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: vec2<f32>, arg_3: f32) -> vec3<bool> {
    global0 = arg_2;
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(arg_2, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, arg_3))))));
    global0 = vec2<f32>(-795f, global0.x);
    global0 = arg_2;
    let var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(abs(arg_0.x))) * arg_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 + arg_2.x) + _wgslsmith_f_op_f32(-arg_3))), -1093f, 606f), vec4<f32>(_wgslsmith_f_op_f32(1362f * 129f), 1f, 2264f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -718f), _wgslsmith_f_op_f32(-arg_0.x), all(vec2<bool>(false, false))))))), select(select(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true)), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), true), !any(vec3<bool>(false, true, true))), !vec4<bool>(true, true, arg_3 < global0.x, u_input.b.x <= arg_1.x), all(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true))))));
    return vec3<bool>(any(select(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true)))), (any(vec4<bool>(false, true, true, true)) | true) & false, (-2147483647i <= u_input.a) && all(vec3<bool>(false, false, true)));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec4<bool>) -> Struct_2 {
    var var_0 = Struct_2(arg_2.yyy, arg_1.b, vec2<i32>(~12301i, (-2147483647i ^ _wgslsmith_add_i32(u_input.a, 7143i)) ^ (func_2(-474f, Struct_1(vec3<f32>(global0.x, 947f, arg_1.e)), 1i) & -2147483647i)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 659f, _wgslsmith_f_op_f32(-global0.x)) * vec3<f32>(_wgslsmith_f_op_f32(trunc(182f)), _wgslsmith_f_op_f32(f32(-1f) * -840f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 278f, -1058f) - vec3<f32>(arg_1.e, 483f, global0.x)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-915f, -1000f, -1167f))))), -1351f);
    var_0 = arg_1;
    var var_1 = var_0.b;
    var var_2 = 1140f;
    let var_3 = arg_1.b;
    return Struct_2(select(arg_1.a, !select(func_3(var_1.a.xy, vec2<u32>(144310u, 4294967295u), vec2<f32>(623f, 206f), arg_1.b.a.x), vec3<bool>(false, true, true), func_3(var_3.a.yx, vec2<u32>(26768u, u_input.b.x), arg_1.d.zz, -674f)), false), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(arg_1.b.a - vec3<f32>(-297f, var_3.a.x, var_3.a.x)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_1.a, var_1.a) + vec3<f32>(2052f, 1000f, -1085f)))), abs(-vec2<i32>(~1i, ~arg_1.c.x)), _wgslsmith_f_op_vec3_f32(-var_1.a), 1f);
}

fn func_4(arg_0: Struct_2) -> vec2<i32> {
    var var_0 = arg_0.c.x;
    var var_1 = arg_0.a.x || any(!func_1(vec3<i32>(arg_0.c.x, 43666i, arg_0.c.x) << (u_input.b % vec3<u32>(32u)), Struct_2(vec3<bool>(false, true, arg_0.a.x), Struct_1(vec3<f32>(509f, -361f, 1317f)), arg_0.c, vec3<f32>(-895f, 1587f, -1000f), 481f), !vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, false)).a);
    var var_2 = func_1(select(vec3<i32>(u_input.a, 12589i >> (_wgslsmith_mult_u32(5260u, u_input.b.x) % 32u), u_input.a), select(-vec3<i32>(arg_0.c.x, 2147483647i, u_input.a), -min(vec3<i32>(arg_0.c.x, 3842i, 67845i), vec3<i32>(-55450i, -27133i, -2147483647i)), select(u_input.a, -1i, arg_0.a.x) > _wgslsmith_dot_vec2_i32(vec2<i32>(-20613i, u_input.a), vec2<i32>(44979i, 1005i))), true), Struct_2(!select(func_1(vec3<i32>(arg_0.c.x, -2147483647i, 2147483647i), Struct_2(arg_0.a, Struct_1(vec3<f32>(1000f, arg_0.e, 519f)), arg_0.c, vec3<f32>(764f, -1020f, 698f), -409f), vec4<bool>(true, arg_0.a.x, arg_0.a.x, false)).a, !vec3<bool>(arg_0.a.x, arg_0.a.x, false), arg_0.a), func_1(abs(vec3<i32>(u_input.a, arg_0.c.x, arg_0.c.x)), func_1(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.c.x, 36521i, u_input.a), vec3<i32>(-2147483647i, 2147483647i, u_input.a)), func_1(vec3<i32>(arg_0.c.x, u_input.a, u_input.a), Struct_2(vec3<bool>(arg_0.a.x, true, false), Struct_1(arg_0.d), arg_0.c, arg_0.b.a, global0.x), vec4<bool>(true, false, arg_0.a.x, arg_0.a.x)), !vec4<bool>(true, false, arg_0.a.x, true)), vec4<bool>(arg_0.a.x, all(vec4<bool>(arg_0.a.x, arg_0.a.x, false, false)), true, arg_0.a.x)).b, arg_0.c, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1206f, 1280f)), global0.x, 203f), global0.x), select(vec4<bool>(true, false, all(arg_0.a.xz), func_1(-vec3<i32>(u_input.a, 3554i, -1i), arg_0, vec4<bool>(false, arg_0.a.x, true, arg_0.a.x)).a.x), select(!(!vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x)), select(vec4<bool>(true, true, true, true), vec4<bool>(arg_0.a.x, true, true, false), vec4<bool>(arg_0.a.x, true, false, false)), !func_3(arg_0.d.yy, u_input.b.xx, arg_0.d.yx, global0.x).x), _wgslsmith_f_op_f32(-408f - arg_0.b.a.x) <= -522f));
    let var_3 = arg_0;
    global0 = var_2.d.yx;
    return vec2<i32>(~var_2.c.x, abs(abs(func_1(_wgslsmith_sub_vec3_i32(vec3<i32>(50999i, u_input.a, 47215i), vec3<i32>(-60089i, arg_0.c.x, 24163i)), Struct_2(arg_0.a, Struct_1(var_3.b.a), var_3.c, vec3<f32>(-267f, var_2.e, arg_0.d.x), var_2.b.a.x), select(vec4<bool>(true, false, true, var_3.a.x), vec4<bool>(var_2.a.x, false, var_3.a.x, false), false)).c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, _wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(1586f + 1753f)))), vec2<f32>(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, global0.x) - 940f)), vec2<bool>(true, any(select(vec2<bool>(true, false), vec2<bool>(false, true), false))))));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(406f))) <= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), global0.x))), global0.x));
    var var_1 = vec2<i32>(u_input.a >> (0u % 32u), _wgslsmith_div_i32(u_input.a << (u_input.b.x % 32u), _wgslsmith_div_i32(u_input.a, 2147483647i) & ~u_input.a)) & _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a)), 0i), abs(u_input.a << (0u % 32u))), vec2<i32>(-1i) * -vec2<i32>(-1i, u_input.a));
    var_1 = _wgslsmith_mod_vec2_i32(max(max(func_4(func_1(vec3<i32>(44053i, u_input.a, 18445i), Struct_2(vec3<bool>(true, var_0, true), Struct_1(vec3<f32>(-1000f, global0.x, global0.x)), vec2<i32>(u_input.a, -2147483647i), vec3<f32>(2423f, 752f, global0.x), global0.x), vec4<bool>(true, false, true, var_0))), vec2<i32>(-2147483647i, u_input.a)), vec2<i32>(var_1.x, -(u_input.a << (u_input.b.x % 32u)))), _wgslsmith_clamp_vec2_i32(countOneBits(reverseBits(vec2<i32>(u_input.a, -2270i))), vec2<i32>(max(2147483647i, 2147483647i), var_1.x << (1u % 32u)), reverseBits(vec2<i32>(0i, -1i) & vec2<i32>(var_1.x, 7435i))) >> (u_input.b.xy % vec2<u32>(32u)));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(func_1(vec3<i32>(-1i, var_1.x, u_input.a), Struct_2(vec3<bool>(var_0, var_0, true), Struct_1(vec3<f32>(261f, global0.x, 934f)), vec2<i32>(var_1.x, 10979i), vec3<f32>(-251f, global0.x, -948f), -374f), !vec4<bool>(var_0, var_0, true, true)).e, global0.x)));
    var_1 = ~(-(func_4(Struct_2(vec3<bool>(false, false, false), Struct_1(vec3<f32>(-1675f, global0.x, -443f)), vec2<i32>(0i, var_1.x), vec3<f32>(-1665f, 816f, 732f), -653f)) >> (~vec2<u32>(1u, 1u) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.x))), _wgslsmith_f_op_f32(round(1102f)))), global0.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.x))), global0.x, _wgslsmith_f_op_f32(round(-2194f)))), 1044f, _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(~select(vec2<i32>(-2147483647i, var_1.x), vec2<i32>(u_input.a, var_1.x), vec2<bool>(var_0, var_0)), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, var_1.x), _wgslsmith_add_vec2_i32(vec2<i32>(14969i, u_input.a), vec2<i32>(u_input.a, -21412i)))), (vec2<i32>(2147483647i, var_1.x) >> (~u_input.b.yx % vec2<u32>(32u))) & _wgslsmith_add_vec2_i32(abs(vec2<i32>(-1i, -2147483647i)), reverseBits(vec2<i32>(u_input.a, 1i)))));
}

