struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<bool>(false, true));

var<private> global1: vec3<bool>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_4, arg_1: i32, arg_2: Struct_4) -> vec4<i32> {
    let var_0 = vec2<bool>(true, any(select(vec3<bool>(false, true, true), !select(vec3<bool>(false, arg_2.b.a.x, arg_2.b.a.x), vec3<bool>(arg_2.b.a.x, true, arg_2.b.a.x), vec3<bool>(false, false, false)), !(false & global1.x))));
    global0 = arg_2.b;
    global1 = vec3<bool>(true, var_0.x, global1.x);
    var var_1 = Struct_2(firstLeadingBit(33876u), -5663i, _wgslsmith_sub_vec4_i32(vec4<i32>(0i, firstTrailingBit(firstLeadingBit(-8351i)), ~arg_1, 7122i), vec4<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(0i, 1i), min(vec2<i32>(arg_1, arg_1), vec2<i32>(36385i, -6246i))), arg_1 ^ _wgslsmith_add_i32(arg_1, -1i), arg_1, max(_wgslsmith_clamp_i32(arg_1, arg_1, arg_1), _wgslsmith_sub_i32(arg_1, arg_1)))));
    let var_2 = arg_2;
    return -abs(firstLeadingBit(vec4<i32>(countOneBits(-2147483647i), arg_1 & -2147483647i, firstTrailingBit(2147483647i), -2147483647i)));
}

fn func_2(arg_0: u32, arg_1: Struct_3) -> Struct_3 {
    let var_0 = _wgslsmith_mod_i32(~1i, _wgslsmith_mult_i32(_wgslsmith_sub_i32(1i, -40123i), 1i)) >> (_wgslsmith_clamp_u32(30361u, 1u, u_input.a ^ u_input.a) % 32u);
    let var_1 = vec4<u32>(firstLeadingBit(38643u), u_input.a, ~0u, ~u_input.a);
    var var_2 = Struct_2(max(~(~var_1.x), _wgslsmith_dot_vec2_u32(var_1.zw, abs(vec2<u32>(var_1.x, 1u) << (vec2<u32>(arg_0, arg_0) % vec2<u32>(32u))))), -1i, ~(~_wgslsmith_mod_vec4_i32(func_3(Struct_4(vec4<f32>(845f, 1293f, -799f, -558f), arg_1, var_1.x, -290f), 2147483647i, Struct_4(vec4<f32>(-272f, 1222f, -1000f, -2633f), Struct_3(global1.xx), 0u, 1993f)), vec4<i32>(var_0, var_0, 2147483647i, var_0))));
    var_2 = Struct_2(_wgslsmith_add_u32(var_2.a, 0u) >> (u_input.a % 32u), var_2.b, var_2.c >> (vec4<u32>(firstTrailingBit(4294967295u), var_2.a, 1u, (4294967295u >> (var_2.a % 32u)) ^ _wgslsmith_dot_vec2_u32(var_1.yy, vec2<u32>(arg_0, 4294967295u))) % vec4<u32>(32u)));
    global0 = arg_1;
    return arg_1;
}

fn func_1() -> Struct_2 {
    let var_0 = func_2(u_input.a >> ((u_input.a << (~37082u % 32u)) % 32u), Struct_3(global0.a));
    global1 = select(vec3<bool>(true, global1.x, true), select(select(vec3<bool>(all(global0.a), false, var_0.a.x), select(vec3<bool>(var_0.a.x, global1.x, true), !vec3<bool>(var_0.a.x, var_0.a.x, global0.a.x), false), var_0.a.x), !(!select(vec3<bool>(true, global0.a.x, var_0.a.x), vec3<bool>(var_0.a.x, true, global1.x), vec3<bool>(global1.x, true, false))), !vec3<bool>(all(vec4<bool>(false, true, global0.a.x, global1.x)), var_0.a.x || true, true)), !(!select(vec3<bool>(global1.x, false, true), vec3<bool>(true, var_0.a.x, var_0.a.x), select(vec3<bool>(global1.x, false, global1.x), vec3<bool>(global1.x, true, false), vec3<bool>(var_0.a.x, true, false)))));
    let var_1 = var_0;
    global1 = select(vec3<bool>(global1.x, true, any(!select(vec4<bool>(var_0.a.x, false, global1.x, global1.x), vec4<bool>(false, false, true, var_0.a.x), var_1.a.x))), select(vec3<bool>(true | all(vec4<bool>(var_1.a.x, true, false, global1.x)), var_0.a.x, false), select(!(!vec3<bool>(global1.x, var_0.a.x, var_0.a.x)), select(vec3<bool>(global1.x, var_0.a.x, global0.a.x), !vec3<bool>(global0.a.x, false, false), var_1.a.x), vec3<bool>(global0.a.x || var_0.a.x, global0.a.x, false)), !(u_input.a < 14606u)), select(vec3<bool>(true, true, true), vec3<bool>(all(!vec4<bool>(global1.x, true, var_1.a.x, var_0.a.x)), ~(-2147483647i) > _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 22264i), vec2<i32>(-48805i, -4702i)), any(select(vec3<bool>(global0.a.x, var_1.a.x, true), vec3<bool>(false, var_1.a.x, var_0.a.x), var_0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-903f, 980f) + _wgslsmith_f_op_f32(round(-1227f))) == _wgslsmith_f_op_f32(822f - _wgslsmith_f_op_f32(f32(-1f) * -1330f))));
    var var_2 = func_2(41098u, func_2(_wgslsmith_add_u32(25798u, 1u), var_1));
    return Struct_2(~4294967295u, _wgslsmith_add_i32(firstLeadingBit(~(-26322i)), _wgslsmith_mult_i32(_wgslsmith_mult_i32(i32(-1i) * -13872i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -6945i), vec2<i32>(-16464i, 25565i))), max(~(-7768i), 0i))), ~vec4<i32>(~_wgslsmith_div_i32(-19381i, -16634i), -26751i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), -vec4<i32>(14159i, 0i, -18252i, -34374i)), ~firstTrailingBit(-11091i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = true;
    var var_2 = _wgslsmith_dot_vec4_u32(~min(vec4<u32>(36976u, u_input.a, 0u, u_input.a) << (vec4<u32>(68982u, u_input.a, 86643u, u_input.a) % vec4<u32>(32u)), ~vec4<u32>(var_0.a, u_input.a, 0u, var_0.a)) << (select(~(vec4<u32>(1u, var_0.a, u_input.a, 45154u) | vec4<u32>(u_input.a, var_0.a, var_0.a, 44945u)), vec4<u32>(_wgslsmith_mult_u32(u_input.a, var_0.a), 11016u, max(var_0.a, var_0.a), reverseBits(0u)), !select(vec4<bool>(false, global1.x, global1.x, false), vec4<bool>(true, global0.a.x, true, var_1), vec4<bool>(global0.a.x, var_1, var_1, false))) % vec4<u32>(32u)), ~(vec4<u32>(~u_input.a, ~u_input.a, abs(56653u), ~4294967295u) ^ select(firstTrailingBit(vec4<u32>(var_0.a, 14996u, 1u, 1u)), vec4<u32>(var_0.a, 1u, 7774u, 0u), select(vec4<bool>(true, false, false, false), vec4<bool>(false, var_1, var_1, var_1), true))));
    let var_3 = -var_0.c.x;
    var var_4 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(955f * _wgslsmith_f_op_f32(select(1062f, 302f, true))), _wgslsmith_f_op_f32(exp2(1f)), select(true, true, false)));
    var var_5 = Struct_1(var_0.c.yx, ~select(~_wgslsmith_div_u32(4294967295u, 15405u), 11020u, all(global0.a) && any(vec3<bool>(false, global1.x, var_1))), _wgslsmith_div_vec2_i32(func_1().c.yz, firstTrailingBit(~vec2<i32>(-18989i, 17434i)) | var_0.c.xy), var_0.c.zxx);
    let var_6 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-454f, -1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -3354f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-683f, 1352f, var_1))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -667f) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-925f - 207f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(2209f - _wgslsmith_f_op_f32(min(1357f, -842f))), 1026f)) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1004f, -492f, -246f, -1593f), vec4<f32>(-291f, -2853f, 1104f, -972f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1252f, -603f, -803f, -1284f))), vec4<f32>(-927f, -556f, -894f, 578f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(855f, -612f, -2248f, 1508f), vec4<f32>(-881f, -1000f, -2011f, -1088f)))), vec4<f32>(1f, 1f, 1f, 1f))), false)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_6.x)), var_6.x) * _wgslsmith_div_f32(var_6.x, _wgslsmith_f_op_f32(483f + -1081f))), _wgslsmith_f_op_f32(min(var_6.x, -1703f)))), var_3);
}

