struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: vec3<f32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
    d: vec2<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_1 = Struct_1(-229f, -1i, vec4<f32>(-338f, 209f, 1620f, -862f), vec3<f32>(636f, 173f, 1129f), vec4<u32>(989u, 0u, 796u, 1u));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: Struct_2) -> bool {
    var var_0 = arg_2;
    var var_1 = select(vec2<i32>(i32(-1i) * -9389i, -10401i), _wgslsmith_clamp_vec2_i32(vec2<i32>(global1.b, abs(0i)) & ((vec2<i32>(global1.b, global1.b) << (vec2<u32>(50393u, 4294967295u) % vec2<u32>(32u))) ^ vec2<i32>(global1.b, -33033i)), _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(global1.b, global1.b), vec2<i32>(1445i, 79i))), _wgslsmith_sub_vec2_i32(vec2<i32>(global1.b, global1.b), abs(vec2<i32>(global1.b, global1.b)))), vec2<i32>(-global1.b, _wgslsmith_sub_i32(-global1.b, i32(-1i) * -10872i))), any(select(vec3<bool>(all(vec3<bool>(arg_1, false, arg_1)), global1.b < -8405i, false), select(!vec3<bool>(arg_1, arg_1, true), select(vec3<bool>(true, arg_1, arg_1), vec3<bool>(true, arg_1, arg_1), vec3<bool>(true, true, arg_1)), select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, false, false), vec3<bool>(true, arg_1, arg_1))), false)));
    var var_2 = reverseBits(global1.e.xzx);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.a - _wgslsmith_div_f32(global1.c.x, global1.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1559f - -1517f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.a)) - _wgslsmith_f_op_f32(f32(-1f) * -816f))))), ~(-_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, 15079i, 2147483647i, global1.b), vec4<i32>(-9120i, var_1.x, 0i, -4129i))) >> (var_0.a.x % 32u), _wgslsmith_f_op_vec4_f32(-global1.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(global1.d)) + _wgslsmith_f_op_vec3_f32(max(global1.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global1.c.zyx, global1.c.zyz))))), global1.e);
    var var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(var_3.d + _wgslsmith_f_op_vec3_f32(step(var_3.c.xyz, var_3.d))))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1014f, global1.d.x, global1.a)));
    return false;
}

fn func_2(arg_0: vec4<u32>) -> Struct_2 {
    var var_0 = select(!(!vec2<bool>(true, -2147483647i >= global1.b)), vec2<bool>(true, false), !(true | (func_3(u_input.a, false, Struct_2(arg_0)) || true)));
    global0 = select(all(vec3<bool>(var_0.x, any(!vec3<bool>(var_0.x, true, false)), true)), var_0.x, true && (!(!var_0.x) | !(global1.b >= -2147483647i)));
    var_0 = !(!select(select(select(vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, false), true), vec2<bool>(true, true), select(vec2<bool>(var_0.x, false), vec2<bool>(true, true), vec2<bool>(true, var_0.x))), vec2<bool>(var_0.x, true), any(select(vec2<bool>(false, var_0.x), vec2<bool>(true, true), vec2<bool>(true, var_0.x)))));
    var_0 = !vec2<bool>(true, var_0.x);
    let var_1 = -_wgslsmith_div_i32(max(global1.b, 2147483647i), global1.b);
    return Struct_2(vec4<u32>(abs(u_input.b.x), ~arg_0.x << ((_wgslsmith_clamp_u32(global1.e.x, arg_0.x, arg_0.x) | u_input.b.x) % 32u), 22327u, 1u));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = vec4<i32>(i32(-1i) * -countOneBits(global1.b), _wgslsmith_clamp_i32(firstTrailingBit(arg_2.x), arg_3.b, ~arg_2.x), _wgslsmith_add_i32(reverseBits(i32(-1i) * -3507i), -31787i), ~firstTrailingBit(global1.b));
    let var_1 = Struct_1(_wgslsmith_div_f32(global1.c.x, _wgslsmith_f_op_f32(-arg_3.a)), -73648i, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(arg_3.c))))), global1.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, global1.c.x, 330f) * global1.d), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.a, global1.c.x, arg_3.a))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-186f, 1059f, global1.a)) * global1.c.xxz), true))), arg_3.e);
    global1 = Struct_1(global1.c.x, 9484i, _wgslsmith_div_vec4_f32(arg_3.c, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(arg_3.c, var_1.c), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-461f, arg_3.c.x, var_1.a, 895f))))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-arg_3.c.zzz))))), _wgslsmith_div_vec3_f32(arg_3.c.zzy, global1.c.wyy))), vec4<u32>(10107u, _wgslsmith_mod_u32((18627u << (arg_1.a.x % 32u)) | _wgslsmith_sub_u32(arg_1.a.x, arg_3.e.x), arg_0.x), global1.e.x, 25896u));
    var var_2 = (arg_0.x >> (~_wgslsmith_mult_u32(~4294967295u, min(arg_3.e.x, 18732u)) % 32u)) ^ reverseBits(4294967295u);
    var var_3 = var_1.e.x;
    return var_1;
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: vec4<i32>, arg_3: vec3<i32>) -> i32 {
    let var_0 = func_4(abs(~global1.e.wz), func_2(_wgslsmith_mult_vec4_u32(global1.e, global1.e)), min(firstTrailingBit(arg_2.zzw), ~vec3<i32>(arg_3.x, 51509i, -16903i)), Struct_1(global1.c.x, 34068i, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-358f, 372f, 1000f, global1.d.x) - global1.c) - global1.c), vec4<f32>(-948f, global1.d.x, _wgslsmith_f_op_f32(floor(-570f)), _wgslsmith_f_op_f32(597f - global1.d.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(global1.c.zwz))), ~vec4<u32>(~57100u, global1.e.x, _wgslsmith_dot_vec3_u32(global1.e.xzz, u_input.b), select(1u, u_input.c.x, false))));
    return firstLeadingBit(~arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2147483647i;
    let var_1 = _wgslsmith_div_f32(global1.c.x, global1.d.x);
    var var_2 = reverseBits(vec2<i32>(firstLeadingBit(_wgslsmith_mod_i32(~14762i, abs(global1.b))), abs(func_1(1i, global1.e.x, select(vec4<i32>(global1.b, 28303i, -42074i, global1.b), vec4<i32>(global1.b, 0i, global1.b, global1.b), vec4<bool>(true, true, false, false)), ~vec3<i32>(global1.b, -2147483647i, 12012i)))));
    let var_3 = 2147483647i;
    var var_4 = !(!(~_wgslsmith_add_u32(34961u, global1.e.x) >= abs(reverseBits(global1.e.x))));
    var var_5 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1)) - -538f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.x))), -1405f);
    var_4 = false;
    var_0 = func_4(~abs(vec2<u32>(~u_input.a, func_4(u_input.c, Struct_2(vec4<u32>(1u, u_input.d, global1.e.x, 0u)), vec3<i32>(global1.b, 2147483647i, var_2.x), Struct_1(global1.d.x, -2147483647i, global1.c, vec3<f32>(1158f, global1.a, 481f), vec4<u32>(global1.e.x, 11395u, global1.e.x, 4294967295u))).e.x)), Struct_2(~countOneBits(vec4<u32>(22847u, u_input.c.x, global1.e.x, global1.e.x) >> (vec4<u32>(4294967295u, 0u, u_input.c.x, 22299u) % vec4<u32>(32u)))), ~select(vec3<i32>(-6289i >> (0u % 32u), ~var_2.x, var_3), -(~vec3<i32>(3379i, var_3, 36863i)), any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false)))), func_4(max(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(global1.e.x, 0u), vec2<u32>(90742u, u_input.b.x)), vec2<u32>(u_input.a, u_input.c.x)), countOneBits(vec2<u32>(17156u, u_input.a))), Struct_2(vec4<u32>(global1.e.x, ~14850u, u_input.a, u_input.a >> (40114u % 32u))), -(vec3<i32>(-1i) * -vec3<i32>(var_3, 2147483647i, global1.b)), Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1664f * var_1))), -51982i, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1, global1.a, var_1, var_1), vec4<f32>(-1496f, var_5.x, var_5.x, -1814f)) - vec4<f32>(-1000f, 1360f, -1452f, -218f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_5.x, -1342f, -170f)), ~vec4<u32>(89203u, global1.e.x, 25790u, 0u) << (select(global1.e, global1.e, true) % vec4<u32>(32u))))).b;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~_wgslsmith_clamp_vec2_i32(vec2<i32>(var_2.x, -2276i), vec2<i32>(var_3, var_3), vec2<i32>(-26198i, var_2.x)) ^ vec2<i32>(-28594i >> (0u % 32u), min(-2147483647i, global1.b))), _wgslsmith_f_op_f32(max(var_1, _wgslsmith_f_op_f32(-global1.d.x))), 1i, _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(2028u, global1.e.x), global1.e.yz), u_input.a) << (func_2(vec4<u32>(global1.e.x, global1.e.x, 33923u, 43621u)).a.zz % vec2<u32>(32u)), ~select(global1.e.wy, ~vec2<u32>(49078u, u_input.d), vec2<bool>(false, false))), ~global1.e);
}

