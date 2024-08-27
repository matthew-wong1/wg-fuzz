struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: bool,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_4 {
    a: bool,
    b: vec3<i32>,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_5 {
    a: vec2<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<i32>(1i, 19185i, i32(-2147483648)), 4294967295u, Struct_1(vec2<bool>(true, true), 675f, true, vec2<i32>(-1i, -63371i), vec2<i32>(14074i, -7648i)), vec2<f32>(-259f, 1357f));

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<u32>) -> f32 {
    global0 = Struct_3(global0.a, 0u, Struct_1(global0.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-712f * _wgslsmith_f_op_f32(round(242f)))), select(global0.c.c, arg_0.x > _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(global0.b, u_input.b.x, 1u, arg_0.x)), global0.d.x < _wgslsmith_f_op_f32(trunc(global0.c.b))), vec2<i32>(firstLeadingBit(_wgslsmith_div_i32(global0.a.x, u_input.e.x)), 1i), firstTrailingBit(u_input.a.xw)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global0.d.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(653f - 148f), _wgslsmith_f_op_f32(-global0.d.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.d.x)))));
    var var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d.x - global0.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -346f))), _wgslsmith_div_f32(global0.c.b, global0.d.x)), 1025f);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.c.b * global0.d.x), global0.d.x, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-516f * 658f)))));
    var var_1 = select(global0.c.e.x, -9581i, ((19455u >> (_wgslsmith_dot_vec3_u32(u_input.c.ywz, vec3<u32>(global0.b, 76659u, 33574u)) % 32u)) > ~_wgslsmith_add_u32(arg_0.x, arg_0.x)) && (!any(vec4<bool>(global0.c.a.x, global0.c.c, global0.c.c, false)) || global0.c.c));
    let var_2 = Struct_4(any(!vec2<bool>(true, all(global0.c.a))), firstLeadingBit(select(select(vec3<i32>(-48777i, u_input.a.x, 1i), u_input.a.zwy, global0.c.b != global0.d.x), countOneBits(vec3<i32>(2147483647i, u_input.e.x, global0.a.x)) | -global0.a, u_input.d <= (i32(-1i) * -11042i))), Struct_2(Struct_1(vec2<bool>(true, true), global0.d.x, !(!global0.c.c), _wgslsmith_div_vec2_i32(global0.c.e, global0.c.e), ~(-global0.c.e)), global0.c, global0.b), Struct_1(!vec2<bool>(global0.c.c, false), 1000f, global0.c.c, -global0.a.xx, (_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.e.x, global0.c.d.x), global0.c.d) & global0.a.xz) << (vec2<u32>(~global0.b, 95778u) % vec2<u32>(32u))));
    return global0.d.x;
}

fn func_2() -> bool {
    global0 = Struct_3(global0.a, _wgslsmith_mult_u32(u_input.b.x, 4294967295u), Struct_1(vec2<bool>(any(select(global0.c.a, vec2<bool>(false, false), false)), all(global0.c.a)), _wgslsmith_f_op_f32(global0.d.x + _wgslsmith_f_op_f32(func_3(max(vec2<u32>(11645u, global0.b), u_input.c.zy)))), any(vec3<bool>(true, true, all(global0.c.a))), u_input.e.zw, select(vec2<i32>(u_input.a.x, -12761i), vec2<i32>(max(27878i, 1i), 62337i), !vec2<bool>(global0.c.a.x, global0.c.c))), _wgslsmith_f_op_vec2_f32(-global0.d));
    var var_0 = ~vec4<u32>(~_wgslsmith_mult_u32(~31534u, min(global0.b, u_input.b.x)), ~_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(u_input.b.x, u_input.c.x, u_input.b.x)), u_input.c.yzz), ~global0.b, 41388u);
    var var_1 = Struct_2(Struct_1(select(vec2<bool>(false, false & global0.c.c), global0.c.a, all(select(vec3<bool>(false, true, false), vec3<bool>(global0.c.a.x, global0.c.a.x, global0.c.a.x), vec3<bool>(true, global0.c.c, global0.c.a.x)))), -663f, false, u_input.e.ww, -countOneBits(u_input.a.zz) << (vec2<u32>(1u, _wgslsmith_clamp_u32(var_0.x, 0u, 3473u)) % vec2<u32>(32u))), global0.c, global0.b);
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b.b, global0.d.x) + vec2<f32>(1121f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.d.x)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.c.b))))));
    let var_3 = ~u_input.c.wzz;
    return !(!(!(var_1.b.d.x < ~(-7230i))));
}

fn func_1(arg_0: bool) -> vec2<i32> {
    let var_0 = !vec4<bool>(!any(vec4<bool>(true, false, global0.c.a.x, global0.c.c)), true, func_2(), false && !global0.c.a.x);
    global0 = Struct_3(vec3<i32>(12905i, 0i, u_input.d), firstLeadingBit(~abs(u_input.b.x)), global0.c, vec2<f32>(global0.c.b, _wgslsmith_f_op_f32(sign(622f))));
    global0 = Struct_3(_wgslsmith_sub_vec3_i32(vec3<i32>(-u_input.e.x, u_input.d, firstTrailingBit(10419i)), _wgslsmith_add_vec3_i32(~u_input.a.zzy, _wgslsmith_clamp_vec3_i32(vec3<i32>(-30761i, -14641i, global0.c.d.x), global0.a, vec3<i32>(-1i, global0.a.x, -1i)))) >> (~abs(vec3<u32>(global0.b, 1u, 4294967295u)) % vec3<u32>(32u)), 0u, Struct_1(vec2<bool>(global0.c.a.x, var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.d.x, _wgslsmith_f_op_f32(trunc(-1915f)), any(var_0))) - _wgslsmith_f_op_f32(-global0.c.b)), true, u_input.a.yw, ~global0.a.zz), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global0.d, global0.d, global0.c.a.x)), _wgslsmith_div_vec2_f32(global0.d, global0.d)))));
    let var_1 = Struct_3(-abs(vec3<i32>(min(-2147483647i, -55392i), 1i, global0.c.d.x)), ~(~firstLeadingBit(u_input.b.x)), Struct_1(var_0.wz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1467f - _wgslsmith_f_op_f32(floor(global0.d.x)))), true, global0.c.e, countOneBits(firstLeadingBit(vec2<i32>(15780i, global0.a.x)))), _wgslsmith_f_op_vec2_f32(global0.d - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(-1214f)), _wgslsmith_f_op_f32(-global0.d.x)))));
    global0 = var_1;
    return firstLeadingBit(global0.c.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(u_input.e.x >= ~(_wgslsmith_dot_vec4_i32(u_input.e, vec4<i32>(-2147483647i, global0.a.x, u_input.e.x, 59542i)) ^ 1881i), u_input.e.wwz, Struct_2(Struct_1(!global0.c.a, _wgslsmith_f_op_f32(f32(-1f) * -1222f), select(select(false, false, global0.c.c), true, all(vec4<bool>(global0.c.c, global0.c.c, false, true))), u_input.e.zw, select(global0.a.zy, vec2<i32>(u_input.e.x, global0.c.d.x) ^ vec2<i32>(15458i, 2856i), global0.c.a)), Struct_1(global0.c.a, -1732f, true, -vec2<i32>(-26360i, u_input.d), abs(func_1(global0.c.c))), ~(countOneBits(u_input.c.x) | ~global0.b)), Struct_1(vec2<bool>(true, 71347u < _wgslsmith_dot_vec2_u32(u_input.c.xw, vec2<u32>(u_input.b.x, 4294967295u))), _wgslsmith_f_op_f32(476f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -354f) + _wgslsmith_f_op_f32(exp2(global0.c.b)))), global0.c.a.x, func_1(global0.d.x < global0.d.x), -vec2<i32>(1i, _wgslsmith_mult_i32(u_input.a.x, 1i))));
    var var_1 = -1288f;
    let var_2 = Struct_5(_wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(global0.a.xz, countOneBits(_wgslsmith_sub_vec2_i32(var_0.c.b.e, vec2<i32>(global0.c.e.x, 0i))), abs(-u_input.e.zy)), global0.c.e), global0.b);
    var var_3 = false;
    let var_4 = Struct_3(u_input.a.xxx, global0.b, global0.c, global0.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(2319f, 1942f, global0.d.x))))) * vec3<f32>(_wgslsmith_f_op_f32(max(597f, var_4.d.x)), global0.d.x, _wgslsmith_f_op_f32(-var_0.d.b)))), vec2<i32>(firstTrailingBit(_wgslsmith_mod_i32(~(-20263i), -17967i)), 1i));
}

