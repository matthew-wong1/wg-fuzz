struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec4<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1000f;

var<private> global1: u32 = 0u;

var<private> global2: vec4<bool>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    var var_0 = Struct_3(arg_0);
    var_0 = Struct_3(arg_0);
    var var_1 = i32(-1i) * -arg_1.c.b.x;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-311f - 353f));
    var var_3 = abs(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 0u, var_0.a.b, 28000u), ~vec4<u32>(arg_0.a.a, arg_1.c.a, 59244u, 0u)) >> (~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.b, 43596u, u_input.b, arg_1.c.a), vec4<u32>(24792u, 4270u, var_0.a.c.a, 1u)) % vec4<u32>(32u))));
    return ~(~26060u);
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: vec3<u32>) -> vec4<i32> {
    global1 = 1u;
    global1 = ~max(44049u, 4294967295u);
    global2 = vec4<bool>(any(vec4<bool>(!global2.x, false, arg_0.a.c.d.x, true)) == select(arg_0.a.a.e.x, !all(vec4<bool>(arg_0.a.c.d.x, true, true, global2.x)), true), select(all(arg_0.a.c.d) || !arg_0.a.a.e.x, any(vec2<bool>(true, true)), arg_0.a.a.d.x), min(select(arg_0.a.a.b.x, abs(arg_1), -49683i <= arg_0.a.c.b.x), ~0i) > _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, arg_0.a.c.b.x), firstLeadingBit(arg_0.a.c.b.xz)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, 31722i, arg_0.a.a.b.x, -1i), vec4<i32>(arg_0.a.c.b.x, arg_1, arg_1, arg_1))), !(128f == _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a.d, arg_0.a.d) + arg_0.a.a.c.x)));
    var var_0 = vec4<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(firstTrailingBit(1i), -14503i), arg_0.a.c.b.xz), _wgslsmith_clamp_i32(max(42163i, 2147483647i), abs(_wgslsmith_sub_i32(max(arg_1, -17413i), arg_0.a.c.b.x)), ~2147483647i), arg_0.a.c.b.x, -14195i);
    var var_1 = Struct_2(arg_0.a.c, ~arg_0.a.c.a, arg_0.a.c, _wgslsmith_f_op_f32(round(arg_0.a.c.c.x)));
    return max(arg_0.a.a.b, min(max(vec4<i32>(2147483647i, 10292i, var_1.c.b.x, -arg_0.a.c.b.x), _wgslsmith_clamp_vec4_i32(~arg_0.a.a.b, max(vec4<i32>(arg_0.a.a.b.x, -8342i, var_0.x, 19031i), arg_0.a.c.b), -var_1.c.b)), arg_0.a.a.b));
}

fn func_1() -> f32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -573f) + _wgslsmith_f_op_f32(floor(1000f))) * -330f)));
    global2 = vec4<bool>((_wgslsmith_mod_u32(u_input.a, func_2(Struct_2(Struct_1(u_input.a, vec4<i32>(26905i, 31194i, 2147483647i, -2147483647i), vec4<f32>(-394f, 1423f, 1207f, 1374f), vec4<bool>(false, true, true, global2.x), global2.xzw), u_input.b, Struct_1(u_input.b, vec4<i32>(3444i, -1i, -14843i, -2553i), vec4<f32>(854f, 265f, 1295f, 1119f), vec4<bool>(false, global2.x, global2.x, global2.x), global2.zzy), 1000f), Struct_2(Struct_1(u_input.a, vec4<i32>(1i, 1i, -2147483647i, 52138i), vec4<f32>(-222f, 117f, -480f, -181f), vec4<bool>(true, false, false, global2.x), global2.zxx), 55680u, Struct_1(20902u, vec4<i32>(-1i, 25742i, -20446i, -24907i), vec4<f32>(-120f, -1754f, -874f, -318f), vec4<bool>(false, false, global2.x, global2.x), global2.wwx), 303f))) < _wgslsmith_mod_u32(6743u, u_input.b << (u_input.b % 32u))) & true, !any(!vec3<bool>(global2.x, true, true)), false, true);
    var var_0 = Struct_1(u_input.a, _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(1i, 1i, 1i, 1i)), select(vec4<i32>(-33429i, -1i, 0i, 1i), select(vec4<i32>(0i, 1i, -931i, -21538i), vec4<i32>(9543i, 1i, 7i, -2147483647i), global2.x), global2.x)), func_3(Struct_3(Struct_2(Struct_1(1u, vec4<i32>(75629i, -2147483647i, 972i, 2147483647i), vec4<f32>(-637f, 1000f, 1000f, -1500f), vec4<bool>(false, global2.x, global2.x, true), vec3<bool>(true, global2.x, global2.x)), u_input.a, Struct_1(1u, vec4<i32>(0i, 57329i, 2147483647i, -22690i), vec4<f32>(1062f, -1437f, 736f, 1625f), vec4<bool>(global2.x, false, global2.x, global2.x), vec3<bool>(true, global2.x, true)), -846f)), 9916i, firstLeadingBit(~vec3<u32>(u_input.b, 4067u, 1u)))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-717f, 1244f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-643f, _wgslsmith_f_op_f32(step(1284f, 892f)))))), -342f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -181f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1141f)) + -732f))), select(select(select(!vec4<bool>(global2.x, global2.x, global2.x, global2.x), select(vec4<bool>(true, global2.x, true, false), vec4<bool>(global2.x, global2.x, false, true), true), global2.x), vec4<bool>(false, global2.x & global2.x, any(vec3<bool>(global2.x, global2.x, false)), all(vec2<bool>(true, global2.x))), select(global2.x && global2.x, true, !global2.x)), select(select(!vec4<bool>(global2.x, true, global2.x, true), !vec4<bool>(false, global2.x, false, true), true), vec4<bool>(true, true, global2.x, !global2.x), global2.x), true), global2.zzw);
    global1 = countOneBits(_wgslsmith_div_u32(var_0.a, u_input.b)) & u_input.a;
    let var_1 = Struct_4(all(vec3<bool>(!(!global2.x), select(true, false, var_0.e.x), any(select(vec4<bool>(var_0.d.x, true, true, var_0.d.x), vec4<bool>(false, false, false, true), vec4<bool>(global2.x, false, var_0.d.x, var_0.d.x))))), vec2<i32>(abs(var_0.b.x), countOneBits(var_0.b.x)), ~reverseBits(var_0.b.zxz), -(var_0.b ^ -(~vec4<i32>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x))), ~73018u);
    return _wgslsmith_f_op_f32(trunc(var_0.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~abs(~select(max(vec2<u32>(u_input.b, 0u), vec2<u32>(u_input.a, u_input.b)), vec2<u32>(52441u, u_input.a), global2.x & global2.x));
    let var_1 = global2.x;
    let var_2 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(826f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1267f * -2611f) - 862f), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(317f))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-606f + -1519f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), -672f)), _wgslsmith_f_op_f32(select(824f, _wgslsmith_f_op_f32(-2456f - _wgslsmith_f_op_f32(step(1313f, 1445f))), global2.x)))));
    var var_3 = !(!select(vec4<bool>(true, true, true, true), !select(vec4<bool>(global2.x, global2.x, global2.x, false), vec4<bool>(global2.x, false, false, true), global2.x), any(global2.yz) & global2.x));
    global2 = select(vec4<bool>(!(!any(vec3<bool>(var_3.x, true, true))), !any(global2.zx) | !var_3.x, var_3.x && !(!var_3.x), any(vec3<bool>(var_3.x, var_3.x, all(vec3<bool>(true, false, global2.x))))), select(vec4<bool>(true, !var_3.x || true, !global2.x, global2.x), !(!vec4<bool>(var_3.x, false, global2.x, false)), global2.x != ((var_2.x < 1000f) || true)), select(global2.x, var_3.x, false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(_wgslsmith_add_i32(-firstTrailingBit(-11917i), _wgslsmith_mod_i32(1i, select(48861i, -2147483647i, true))), 1i), ~(-38865i), u_input.a, 1u & _wgslsmith_mod_u32(countOneBits(~0u), ~var_0.x), 1u);
}

