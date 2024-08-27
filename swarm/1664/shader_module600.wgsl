struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec2<u32>,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: bool,
    d: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_5 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -7845i;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3() -> f32 {
    var var_0 = Struct_2(all(vec3<bool>(all(vec2<bool>(true, true)), all(vec3<bool>(true, true, true)), any(vec2<bool>(true, true)))), _wgslsmith_add_vec2_i32(min(vec2<i32>(~2147483647i, abs(-1i)), max(-vec2<i32>(2147483647i, -2147483647i), -vec2<i32>(0i, 73i))), max(_wgslsmith_clamp_vec2_i32(vec2<i32>(24643i, -38832i), vec2<i32>(2147483647i, -1i), vec2<i32>(30986i, -12636i)) & vec2<i32>(1i, 33326i), firstTrailingBit(vec2<i32>(1i, 1i)))), false, select(!vec3<bool>(false, true, all(vec2<bool>(false, true))), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), true));
    var_0 = Struct_2(true | var_0.d.x, vec2<i32>(49655i, ~2147483647i), all(var_0.d.yy), vec3<bool>(true, any(select(vec3<bool>(true, var_0.d.x, true), vec3<bool>(var_0.d.x, var_0.d.x, var_0.a), true)), any(select(vec4<bool>(true, true, var_0.d.x, true), vec4<bool>(var_0.d.x, var_0.a, true, var_0.d.x), false)) && any(vec4<bool>(true, false, false, true))));
    return _wgslsmith_f_op_f32(step(-734f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(695f, 1173f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(1233f)))))));
}

fn func_2(arg_0: u32, arg_1: f32) -> Struct_3 {
    let var_0 = -2412i;
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + -1647f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - 1264f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(770f, _wgslsmith_f_op_f32(-arg_1), 943f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(292f, 659f, -1977f))), true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1, arg_1, arg_1))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, -237f) - vec3<f32>(arg_1, -467f, arg_1))))));
    global0 = var_0;
    var var_2 = 4294967295u;
    let var_3 = arg_0;
    return Struct_3(abs(var_0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1 + 1169f), var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -858f) + _wgslsmith_f_op_f32(trunc(148f))))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_4, arg_3: i32) -> f32 {
    let var_0 = func_2(arg_1.b, _wgslsmith_f_op_f32(arg_2.a.x + -1292f));
    var var_1 = arg_2.a.xz;
    global0 = -2147483647i;
    let var_2 = firstLeadingBit(~(~(-arg_0.b))) << (_wgslsmith_sub_vec2_u32(u_input.a, vec2<u32>(107829u, _wgslsmith_div_u32(1u, 19014u))) % vec2<u32>(32u));
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(738f - -489f), 179f)), var_0.b.x));
    return arg_1.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<bool>(true, 143f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -247f) * _wgslsmith_f_op_f32(func_1(Struct_2(false, vec2<i32>(-2147483647i, 2147483647i), true, vec3<bool>(true, false, false)), Struct_1(vec2<bool>(false, false), 20273u, u_input.a, -1000f), Struct_4(vec3<f32>(1808f, 185f, -1818f), true), -23107i)))), u_input.a.x, vec2<u32>(u_input.a.x, _wgslsmith_mod_u32(min(~u_input.a.x, _wgslsmith_mult_u32(28560u, u_input.a.x)), 15821u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-608f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(526f - -1000f), 283f))), 740f));
    var var_1 = ~(firstLeadingBit(0u) >> (~var_0.b % 32u));
    let var_2 = true && select(true, true, false);
    var var_3 = var_0.a.x;
    var var_4 = Struct_2(any(!(!(!vec4<bool>(false, var_0.a.x, true, var_2)))), ~_wgslsmith_mod_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(~34727i, -2608i)), all(!(!(!vec3<bool>(var_2, var_2, false)))), !vec3<bool>(any(vec4<bool>(var_2, false, false, var_0.a.x)), var_2, (true && var_2) & var_2));
    var_1 = ~var_0.c.x;
    let var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) - _wgslsmith_f_op_f32(abs(var_0.d)))));
}

