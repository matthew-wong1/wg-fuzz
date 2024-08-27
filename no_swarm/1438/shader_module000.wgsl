struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: vec3<bool>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> i32 {
    let var_0 = Struct_2(Struct_1(1u, _wgslsmith_mod_u32(~u_input.a.x, u_input.a.x)));
    let var_1 = Struct_3(-_wgslsmith_dot_vec4_i32(countOneBits(countOneBits(vec4<i32>(-40315i, 1i, u_input.b.x, 44488i))), -(~vec4<i32>(-1i, 0i, u_input.b.x, -30872i))), any(vec4<bool>(global0.x, true, abs(-16639i) < abs(u_input.b.x), select(0i == u_input.b.x, true, true))), vec3<bool>(true, true, true), vec3<f32>(842f, -1000f, -921f));
    global0 = !vec3<bool>(!(global0.x || false) || any(select(vec4<bool>(var_1.c.x, false, false, true), vec4<bool>(false, true, var_1.b, var_1.b), vec4<bool>(true, true, var_1.b, global0.x))), true, -609f >= _wgslsmith_f_op_f32(trunc(406f)));
    let var_2 = vec4<bool>(global0.x, true, true, var_1.c.x);
    var var_3 = vec2<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -200f) * var_1.d.x) != 2609f);
    return -2147483647i;
}

fn func_2(arg_0: vec4<i32>, arg_1: u32) -> Struct_1 {
    let var_0 = u_input.a.x;
    let var_1 = _wgslsmith_div_f32(-785f, 599f);
    let var_2 = func_3();
    global0 = !(!vec3<bool>(all(select(vec3<bool>(false, true, global0.x), vec3<bool>(global0.x, true, global0.x), vec3<bool>(global0.x, global0.x, false))), global0.x && any(vec4<bool>(true, true, global0.x, false)), true));
    let var_3 = -2147483647i;
    return Struct_1(~(~0u), _wgslsmith_mult_u32(select(arg_1, var_0, !global0.x), _wgslsmith_dot_vec3_u32(~u_input.a.wxx, (vec3<u32>(1u, 54018u, 0u) ^ vec3<u32>(var_0, u_input.a.x, 40037u)) >> (u_input.a.ywz % vec3<u32>(32u)))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> Struct_2 {
    var var_0 = arg_1.a;
    let var_1 = u_input.b.x;
    var var_2 = _wgslsmith_dot_vec4_i32(max(vec4<i32>(-51650i, min(u_input.b.x, _wgslsmith_add_i32(var_1, -2147483647i)), min(var_1, var_1), 1i), ~abs(vec4<i32>(var_1, -2147483647i, 0i, arg_0.a) & vec4<i32>(arg_0.a, -2147483647i, var_1, -66614i))), _wgslsmith_mult_vec4_i32(vec4<i32>(31203i, var_1, -1i, select(u_input.b.x, arg_0.a, false) & -2147483647i), vec4<i32>(~arg_0.a & var_1, -_wgslsmith_dot_vec3_i32(u_input.b, u_input.b), reverseBits(max(var_1, -2147483647i)), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1, 2147483647i, arg_0.a, arg_0.a), vec4<i32>(-2147483647i, u_input.b.x, -1i, 34309i)), ~vec4<i32>(31687i, arg_0.a, u_input.b.x, 21751i)))));
    var var_3 = i32(-1i) * -2147483647i;
    var var_4 = Struct_3(-1i, any(vec3<bool>(true, true, !(arg_0.a == 1i))), vec3<bool>(~_wgslsmith_mod_i32(var_1, -42135i) == _wgslsmith_dot_vec4_i32(~vec4<i32>(9718i, var_1, 1i, 1i), vec4<i32>(-2147483647i, u_input.b.x, 0i, arg_0.a)), false, true), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(248f, -172f, true)) - _wgslsmith_f_op_f32(arg_0.d.x + arg_0.d.x)), _wgslsmith_f_op_f32(min(-811f, _wgslsmith_f_op_f32(max(arg_0.d.x, 1029f)))), arg_0.d.x), vec3<f32>(_wgslsmith_f_op_f32(floor(-530f)), arg_0.d.x, -888f))));
    return Struct_2(func_2(vec4<i32>(arg_0.a, i32(-1i) * -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 37628i, 72123i, -1i), vec4<i32>(var_1, -21691i, var_4.a, -2147483647i)), 1i) | vec4<i32>(i32(-1i) * -20323i, ~var_4.a, -u_input.b.x, 43307i), 12358u));
}

fn func_5(arg_0: Struct_2, arg_1: bool) -> i32 {
    let var_0 = arg_0;
    let var_1 = func_4(Struct_3(-(~(~915i)), arg_1, select(select(vec3<bool>(false, arg_1, arg_1), select(vec3<bool>(arg_1, global0.x, arg_1), vec3<bool>(arg_1, arg_1, true), vec3<bool>(arg_1, arg_1, arg_1)), select(vec3<bool>(global0.x, arg_1, true), vec3<bool>(true, false, global0.x), true)), !select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(global0.x, false, true), vec3<bool>(false, true, global0.x)), !any(global0.xx)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(-959f, 652f, -407f), vec3<f32>(-842f, -1524f, -971f)))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -160f), _wgslsmith_f_op_f32(-2359f - 802f), -957f))), func_4(Struct_3(-(-2925i >> (var_0.a.a % 32u)), arg_1, vec3<bool>(true, false, arg_1), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-980f, 1593f, -146f))), var_0));
    var var_2 = _wgslsmith_mult_vec3_u32(vec3<u32>(~_wgslsmith_dot_vec2_u32(select(vec2<u32>(arg_0.a.b, var_0.a.b), vec2<u32>(68818u, u_input.a.x), true), vec2<u32>(1826u, arg_0.a.a)), ~var_0.a.b, _wgslsmith_clamp_u32(~(~var_0.a.b), _wgslsmith_add_u32(_wgslsmith_mult_u32(var_1.a.a, var_1.a.b), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, arg_0.a.a), u_input.a.xyx)), ~var_0.a.b)), _wgslsmith_mult_vec3_u32(u_input.a.zyx, u_input.a.wyx));
    global0 = select(select(vec3<bool>(all(vec2<bool>(false, global0.x)), global0.x, !global0.x), vec3<bool>(false, any(!vec4<bool>(global0.x, true, false, arg_1)), !(u_input.b.x < u_input.b.x)), vec3<bool>(false, !global0.x, any(vec3<bool>(global0.x, true, false)))), vec3<bool>(any(!vec3<bool>(global0.x, arg_1, global0.x)), false, global0.x), any(select(global0.zz, global0.yx, ~372i <= _wgslsmith_mult_i32(16621i, u_input.b.x))));
    global0 = vec3<bool>(any(!vec3<bool>(all(vec4<bool>(false, true, true, arg_1)), arg_1, global0.x && arg_1)), true, global0.x);
    return u_input.b.x;
}

fn func_1() -> bool {
    let var_0 = vec3<i32>(func_5(func_4(Struct_3(_wgslsmith_mod_i32(u_input.b.x, -1i), all(global0.xx), select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(false, global0.x, global0.x), vec3<bool>(global0.x, true, global0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(412f, -629f, 344f))), Struct_2(func_2(vec4<i32>(-2147483647i, 0i, -1i, u_input.b.x), u_input.a.x))), global0.x), u_input.b.x, func_5(Struct_2(Struct_1(52837u, ~u_input.a.x)), true));
    let var_1 = !(!(!select(select(vec4<bool>(false, global0.x, global0.x, false), vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(global0.x, true, global0.x, false)), select(vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(true, false, false, global0.x), vec4<bool>(false, true, false, global0.x)), any(global0.xy))));
    global0 = !(!select(select(select(vec3<bool>(false, false, global0.x), var_1.ywz, var_1.x), var_1.xzz, true), vec3<bool>(u_input.b.x <= var_0.x, u_input.b.x != 2147483647i, !var_1.x), vec3<bool>(select(global0.x, global0.x, true), global0.x, !var_1.x)));
    var var_2 = true;
    var var_3 = 1u;
    return _wgslsmith_mod_i32(0i, var_0.x) == (i32(-1i) * -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = global0.yy;
    var var_2 = !vec3<bool>(global0.x, func_1(), u_input.b.x == ((-27873i ^ u_input.b.x) >> (reverseBits(u_input.a.x) % 32u)));
    var_0 = select(false, var_2.x, global0.x);
    var var_3 = countOneBits(vec2<i32>(firstTrailingBit(firstTrailingBit(u_input.b.x)) | _wgslsmith_sub_i32(abs(0i), _wgslsmith_dot_vec2_i32(u_input.b.xy, vec2<i32>(u_input.b.x, u_input.b.x))), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(u_input.b, ~u_input.b), select(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 76284i), vec2<i32>(u_input.b.x, -58960i)), i32(-1i) * -2160i, false))));
    let x = u_input.a;
    s_output = StorageBuffer(min(~4294967295u, _wgslsmith_mod_u32(0u, ~u_input.a.x) ^ _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(1u, 0u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 77625u, 1u, 0u)), vec4<u32>(1u, u_input.a.x, u_input.a.x, 37214u))), 1f, var_3.x, vec3<u32>(firstLeadingBit(u_input.a.x), u_input.a.x | u_input.a.x, u_input.a.x), u_input.b.x);
}

