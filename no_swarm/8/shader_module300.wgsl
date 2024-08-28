struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-733f)) - -1288f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_0.x, arg_0.x), _wgslsmith_f_op_f32(abs(arg_0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.x))))));
    var var_1 = _wgslsmith_f_op_f32(abs(-1462f));
    let var_2 = Struct_1(arg_0.x, 2147483647i, -1173f, select(any(vec2<bool>(false, select(false, false, false))), !any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true))), all(vec2<bool>(false, all(vec4<bool>(true, true, true, true))))));
    var var_3 = arg_0.x;
    global0 = ~u_input.c.x;
    return _wgslsmith_div_u32(u_input.b, u_input.b);
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    global0 = _wgslsmith_mod_u32(1u, arg_0.x) & (~func_3(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(136f, 871f, arg_2.a), vec3<f32>(1356f, 820f, -1015f)))) & _wgslsmith_add_u32(0u, 4294967295u));
    var var_0 = arg_3.a;
    let var_1 = select(~reverseBits(vec3<i32>(~u_input.a.x, -1i, i32(-1i) * -8386i)), _wgslsmith_mod_vec3_i32(select(firstLeadingBit(vec3<i32>(90460i, 0i, arg_3.b)), -_wgslsmith_mod_vec3_i32(vec3<i32>(arg_2.b, 2147483647i, -23388i), vec3<i32>(-5987i, arg_2.b, arg_3.b)), any(select(vec3<bool>(arg_3.d, arg_3.d, false), vec3<bool>(true, false, arg_1.d), true))), _wgslsmith_div_vec3_i32(-countOneBits(vec3<i32>(arg_2.b, arg_1.b, -25591i)), select(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_3.b, 8036i, 0i), vec3<i32>(1i, 13985i, -16948i), vec3<i32>(arg_3.b, arg_2.b, -2147483647i)), -vec3<i32>(-40345i, arg_1.b, u_input.a.x), false))), vec3<bool>(true, false, any(select(vec3<bool>(arg_1.d, false, arg_2.d), vec3<bool>(false, arg_2.d, false), vec3<bool>(false, false, false))) & !(!arg_1.d)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2.a + 845f))))), -865f) - arg_3.c);
    var_0 = arg_1.a;
    return true;
}

fn func_1(arg_0: i32) -> u32 {
    let var_0 = vec2<bool>(true, any(vec2<bool>(true, false)) | true);
    var var_1 = Struct_1(-828f, 0i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -200f)), !(func_2(u_input.d.yx, Struct_1(402f, -57460i, -945f, var_0.x), Struct_1(1000f, u_input.a.x, -199f, false), Struct_1(-943f, 10328i, 331f, var_0.x)) && var_0.x) | false);
    var var_2 = !select(!(!(!vec4<bool>(var_1.d, var_0.x, false, true))), !(!(!vec4<bool>(var_0.x, true, true, true))), false);
    let var_3 = Struct_1(var_1.a, var_1.b, _wgslsmith_f_op_f32(-var_1.a), var_2.x);
    var var_4 = Struct_2(!select(select(var_2.zxz, select(var_2.ywx, vec3<bool>(true, var_1.d, var_1.d), vec3<bool>(var_3.d, false, true)), !var_2.yzx), !select(vec3<bool>(var_1.d, var_2.x, false), vec3<bool>(var_3.d, false, true), true), !vec3<bool>(false, true, var_3.d)));
    return ~1u;
}

fn func_4(arg_0: u32) -> Struct_1 {
    global0 = ~arg_0;
    let var_0 = arg_0 << (101549u % 32u);
    global0 = select(48836u, ~(~u_input.b) >> (53333u % 32u), all(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), false)), vec4<bool>(true, true, true, true), true)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(370f))) < _wgslsmith_f_op_f32(801f + -201f);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-639f * -1191f), _wgslsmith_dot_vec4_i32(vec4<i32>((u_input.a.x ^ 33098i) & ~(-2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a.x, -27463i), vec3<i32>(u_input.a.x, 0i, -1i) >> (u_input.c.wxx % vec3<u32>(32u))), 1i, u_input.a.x), ~firstTrailingBit(firstTrailingBit(vec4<i32>(8557i, 1i, 2388i, u_input.a.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-180f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1380f - 562f), _wgslsmith_f_op_f32(min(826f, 774f)), true)))), any(!vec2<bool>(any(vec4<bool>(var_1, true, true, var_1)), select(var_1, var_1, var_1))));
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.c * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) * var_2.c)), _wgslsmith_f_op_f32(-var_2.c)), min(var_2.b, -1i) & ~_wgslsmith_mult_i32(abs(var_2.b), -u_input.a.x), var_2.c, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(u_input.a.x) & 0u);
    let var_1 = !vec4<bool>(!(!(var_0.d & true)), var_0.d, all(!select(vec2<bool>(false, var_0.d), vec2<bool>(false, var_0.d), var_0.d)), any(!vec4<bool>(var_0.d, var_0.d, true, var_0.d)));
    var var_2 = -1i;
    let var_3 = !vec3<bool>(!var_1.x, !(_wgslsmith_mod_i32(-23306i, u_input.a.x) >= _wgslsmith_clamp_i32(7295i, u_input.a.x, -2147483647i)), var_0.d);
    let var_4 = func_4(func_1(0i));
    let var_5 = var_1.zwy;
    var var_6 = firstTrailingBit(u_input.d.x);
    var var_7 = (_wgslsmith_sub_i32(_wgslsmith_div_i32(~var_4.b, ~(-7105i)), 23435i) & var_4.b) <= var_4.b;
    let x = u_input.a;
    s_output = StorageBuffer(-(~(-u_input.a)), _wgslsmith_f_op_f32(-var_0.a), vec4<i32>(abs(1604i) << (_wgslsmith_mod_u32(80226u, u_input.d.x) % 32u), u_input.a.x, -(~var_0.b), countOneBits(u_input.a.x)));
}

