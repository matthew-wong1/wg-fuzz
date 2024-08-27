struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec3<bool>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec2<bool>,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-35754i, -1i, 2147483647i);

var<private> global1: vec2<f32>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_1) -> vec2<f32> {
    global0 = arg_2.b.zxy;
    let var_0 = Struct_3(-6764i, select(-select(global0.xx, _wgslsmith_mod_vec2_i32(arg_2.b.yw, vec2<i32>(arg_2.b.x, -1i)), select(vec2<bool>(arg_2.c.x, arg_2.c.x), arg_2.c.zy, arg_2.c.x)), abs(select(reverseBits(vec2<i32>(global0.x, arg_2.b.x)), vec2<i32>(arg_2.b.x, arg_0.x), vec2<bool>(arg_2.d.x, true))), arg_2.c.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_1, global1.x))))))), arg_2.d.wy);
    let var_1 = arg_2;
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, global1.x) - var_0.c)))) + var_0.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.c, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.c.x, arg_1))))))), select(select(vec2<bool>(arg_2.d.x, arg_2.d.x), select(select(var_0.d, var_0.d, arg_2.c.x), !vec2<bool>(false, var_0.d.x), all(vec4<bool>(false, true, true, true))), !all(vec2<bool>(true, true))), var_1.c.xz, true)));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec3<bool>) -> vec4<bool> {
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(-arg_0.c.b.zz, 1f, Struct_1(58585u, vec4<i32>(global0.x, arg_0.c.b.x, 1i, arg_1.b), arg_0.c.c, vec4<bool>(false, arg_0.b, arg_2.x, false)))))));
    let var_0 = ~min(firstLeadingBit(vec3<u32>(55209u, 46373u, arg_0.c.a)), ~(~vec3<u32>(17254u, 7770u, u_input.a))) << (select(_wgslsmith_add_vec3_u32(~vec3<u32>(arg_0.c.a, u_input.a, arg_0.c.a) | select(vec3<u32>(u_input.a, 4294967295u, 28113u), vec3<u32>(u_input.a, arg_0.c.a, arg_0.c.a), false), ~vec3<u32>(1u, arg_0.c.a, 68821u)), vec3<u32>(1u, u_input.a, max(arg_0.c.a, _wgslsmith_div_u32(4294967295u, arg_0.c.a))), !arg_2) % vec3<u32>(32u));
    global0 = -vec3<i32>(arg_1.b, -1i, arg_1.b | (-2147483647i >> (~u_input.a % 32u)));
    var var_1 = ~var_0.xx;
    var var_2 = min(vec3<u32>(~47984u, ~var_1.x << ((var_1.x << (arg_0.c.a % 32u)) % 32u), 0u) >> (_wgslsmith_mod_vec3_u32(~var_0, ~max(var_0, vec3<u32>(arg_0.c.a, var_1.x, 1u))) % vec3<u32>(32u)), var_0);
    return vec4<bool>(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-1i, global0.x, arg_1.b, arg_0.c.b.x)), -arg_0.c.b) > (-(arg_0.c.b.x & 32459i) ^ -2147483647i), select(arg_2.x, arg_0.c.c.x, select(any(!vec4<bool>(arg_0.c.d.x, false, arg_2.x, true)), true, false)), true, any(vec3<bool>(true, true, arg_0.c.c.x)));
}

fn func_4(arg_0: vec2<i32>, arg_1: i32, arg_2: bool) -> vec2<i32> {
    global0 = select(~_wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(global0.x, global0.x, 2147483647i) ^ vec3<i32>(1i, arg_0.x, -1i)), min(vec3<i32>(global0.x, -1i, arg_0.x) ^ vec3<i32>(arg_0.x, arg_1, 0i), vec3<i32>(arg_0.x, global0.x, global0.x))), reverseBits(vec3<i32>(firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -1i, 1i), vec3<i32>(arg_0.x, -57728i, arg_1))), arg_1 ^ -arg_0.x, _wgslsmith_dot_vec4_i32(select(vec4<i32>(1i, arg_0.x, 1i, global0.x), vec4<i32>(21447i, 35034i, arg_1, -2147483647i), true), vec4<i32>(global0.x, -2147483647i, 1i, -84348i)))), vec3<bool>(any(!vec4<bool>(true, arg_2, false, false)), !func_2(Struct_4(arg_2, arg_2, Struct_1(0u, vec4<i32>(global0.x, -1i, arg_0.x, arg_0.x), vec3<bool>(true, arg_2, false), vec4<bool>(arg_2, true, false, true)), vec2<f32>(global1.x, 1000f)), Struct_2(global1.x, -1i, vec4<f32>(-391f, -230f, 1000f, global1.x)), select(vec3<bool>(false, arg_2, true), vec3<bool>(arg_2, arg_2, arg_2), false)).x, arg_2));
    global1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.x, -1268f), vec2<f32>(-595f, 1309f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(571f, global1.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(func_3(vec2<i32>(1i, -4324i), 849f, Struct_1(0u, vec4<i32>(-2147483647i, arg_1, global0.x, -3727i), vec3<bool>(arg_2, false, true), vec4<bool>(arg_2, false, false, arg_2))))))))));
    global0 = vec3<i32>(~reverseBits(-25381i), -(_wgslsmith_add_i32(arg_0.x, global0.x) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(-65421i, global0.x), global0.yx)) | 21076i, arg_0.x);
    var var_0 = Struct_1(~(~4294967295u), vec4<i32>(arg_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, -2147483647i, arg_1), vec3<i32>(1i, 0i, arg_0.x)) & -1i, abs(arg_0.x), abs(abs(arg_1))) ^ firstLeadingBit(vec4<i32>(global0.x, 7764i, 0i, arg_0.x) << (firstLeadingBit(vec4<u32>(u_input.a, 54114u, u_input.a, 92286u)) % vec4<u32>(32u))), !vec3<bool>(select(true, true, !arg_2), true, _wgslsmith_f_op_f32(step(261f, -2042f)) >= _wgslsmith_f_op_f32(-global1.x)), !select(func_2(Struct_4(true, true, Struct_1(u_input.a, vec4<i32>(0i, arg_0.x, arg_0.x, 2147483647i), vec3<bool>(arg_2, false, arg_2), vec4<bool>(false, true, false, arg_2)), vec2<f32>(-1386f, -1000f)), Struct_2(-174f, arg_0.x, vec4<f32>(-867f, global1.x, -1000f, -1023f)), !vec3<bool>(arg_2, false, arg_2)), func_2(Struct_4(arg_2, false, Struct_1(u_input.a, vec4<i32>(global0.x, global0.x, global0.x, 5577i), vec3<bool>(arg_2, true, arg_2), vec4<bool>(arg_2, arg_2, arg_2, false)), vec2<f32>(-1135f, 1000f)), Struct_2(global1.x, -2147483647i, vec4<f32>(127f, -1313f, global1.x, 629f)), vec3<bool>(false, true, arg_2)), select(true, true, false)));
    var var_1 = _wgslsmith_f_op_f32(floor(1102f));
    return _wgslsmith_sub_vec2_i32(-(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, -19448i), firstLeadingBit(var_0.b.yx)) >> (_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(90299u, 61670u), vec2<u32>(u_input.a, 109667u)), firstLeadingBit(vec2<u32>(4294967295u, 4294967295u)), reverseBits(vec2<u32>(4294967295u, 4294967295u))) % vec2<u32>(32u))), firstLeadingBit(-var_0.b.yx));
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: Struct_4) -> bool {
    global1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(global1.x)), arg_1.a)))), arg_1.c.yx);
    let var_0 = ~_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(global0.xy, vec2<i32>(_wgslsmith_mod_i32(-1i, arg_1.b), -24901i)), arg_2.c.b.zz, func_4(select(vec2<i32>(-8417i, arg_1.b) & vec2<i32>(arg_2.c.b.x, global0.x), ~global0.yx, vec2<bool>(arg_2.b, false)), 0i >> (u_input.a % 32u), any(func_2(Struct_4(arg_2.b, false, arg_2.c, arg_1.c.xw), arg_1, vec3<bool>(false, false, arg_2.c.c.x)))));
    global0 = _wgslsmith_mod_vec3_i32(select(vec3<i32>(countOneBits(abs(arg_1.b)), select(_wgslsmith_dot_vec3_i32(arg_2.c.b.yyx, vec3<i32>(global0.x, -62350i, 9172i)), var_0.x, !arg_2.a), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.b, 17070i), global0.xy) & -16770i), vec3<i32>(arg_1.b, _wgslsmith_add_i32(_wgslsmith_div_i32(30001i, -39034i), ~10320i), _wgslsmith_dot_vec4_i32(select(vec4<i32>(3160i, global0.x, 10895i, arg_2.c.b.x), arg_2.c.b, true), vec4<i32>(-35155i, 45259i, arg_2.c.b.x, arg_2.c.b.x) & arg_2.c.b)), true), ~vec3<i32>(~min(arg_1.b, arg_1.b), 1i, arg_2.c.b.x));
    let var_1 = select(arg_2.c.d.zz, func_2(Struct_4(any(vec3<bool>(true, arg_2.a, arg_2.b)), arg_2.b & (0i >= arg_1.b), Struct_1(4294967295u, ~arg_2.c.b, vec3<bool>(arg_2.a, arg_2.b, arg_2.c.d.x), vec4<bool>(arg_2.b, true, arg_2.a, true)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(arg_2.d)), vec2<f32>(arg_2.d.x, -1320f))), Struct_2(_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(2208f + 1186f)), -9233i, _wgslsmith_f_op_vec4_f32(-arg_1.c)), arg_2.c.c).xz, !vec2<bool>(arg_2.b, all(!arg_2.c.d.xx)));
    let var_2 = Struct_3(global0.x, global0.xz, _wgslsmith_f_op_vec2_f32(-arg_1.c.wy), arg_2.c.c.zy);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.x, 1107f), vec2<f32>(659f, 1057f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(923f, global1.x)), func_1(global1.x, Struct_2(global1.x, -5643i, vec4<f32>(129f, -905f, -518f, 1645f)), Struct_4(false, false, Struct_1(u_input.a, vec4<i32>(global0.x, global0.x, global0.x, 7805i), vec3<bool>(true, false, true), vec4<bool>(false, false, false, false)), vec2<f32>(global1.x, 1000f))))) * _wgslsmith_f_op_vec2_f32(func_3(vec2<i32>(1i, 9427i), _wgslsmith_f_op_f32(-802f - -194f), Struct_1(1u, vec4<i32>(global0.x, global0.x, -42565i, 18842i), vec3<bool>(true, false, true), vec4<bool>(true, true, false, true))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x))))));
    var var_0 = vec2<bool>(true, any(vec3<bool>(global1.x < global1.x, all(vec2<bool>(false, false)), select(false, false, global0.x != global0.x))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1206f), ~1i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(390f, 608f, global1.x, global1.x), vec4<f32>(403f, -191f, 300f, global1.x))))));
    let var_2 = Struct_3(~func_4(-global0.yx, global0.x, any(vec4<bool>(var_0.x, var_0.x, false, false))).x | select(2147483647i, _wgslsmith_mult_i32(_wgslsmith_mult_i32(-1459i, var_1.b), 27901i), var_0.x), global0.xy, var_1.c.zz, func_2(Struct_4(!(!var_0.x), true, Struct_1(u_input.a, abs(vec4<i32>(-2147483647i, var_1.b, global0.x, -83214i)), vec3<bool>(false, true, var_0.x), !vec4<bool>(var_0.x, false, false, var_0.x)), _wgslsmith_f_op_vec2_f32(-var_1.c.zy)), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_f_op_f32(879f - -1305f)), -_wgslsmith_div_i32(-2147483647i, 1i), var_1.c), vec3<bool>(_wgslsmith_div_i32(var_1.b, -10235i) != 0i, true, min(20716i, 5908i) <= min(global0.x, -23202i))).xx);
    var var_3 = var_1;
    var var_4 = var_2;
    global1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(796f * var_1.c.x)), -1000f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(383f, _wgslsmith_f_op_f32(step(1513f, -168f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-220f, var_3.c.x)), _wgslsmith_f_op_vec2_f32(var_1.c.zx + var_2.c))))));
    var var_5 = _wgslsmith_f_op_f32(global1.x + -1251f);
    global1 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.x - global1.x) * var_1.a), var_1.c.x)), _wgslsmith_f_op_f32(513f * var_4.c.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(198f * var_1.a) * _wgslsmith_f_op_f32(-var_3.c.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.x);
}

