struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: u32,
}

struct Struct_5 {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-1i, 14316i, 0i, 29549i);

var<private> global1: vec2<i32> = vec2<i32>(-23848i, i32(-2147483648));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec3<i32>) -> u32 {
    global1 = -(~(~abs(arg_1.a.c))) << (arg_1.a.b % vec2<u32>(32u));
    let var_0 = _wgslsmith_dot_vec4_u32(arg_0, ~(vec4<u32>(arg_1.a.b.x, 20746u, 4294967295u, arg_0.x) ^ select(vec4<u32>(21455u, 4294967295u, 55535u, 20925u), vec4<u32>(59920u, arg_0.x, arg_0.x, arg_0.x), arg_1.a.e.x))) < 0u;
    var var_1 = any(!vec4<bool>(false & arg_1.a.e.x, all(arg_1.a.e.yy), all(vec2<bool>(false, false)), arg_1.a.e.x && all(arg_1.a.e.xz)));
    global0 = min(vec4<i32>(-1i) * -(~_wgslsmith_div_vec4_i32(vec4<i32>(-1i, u_input.a, 285i, 41868i), vec4<i32>(20772i, 23080i, global1.x, global0.x))), abs(~countOneBits(vec4<i32>(-1i, -18426i, -26849i, 40056i) | vec4<i32>(u_input.a, global0.x, u_input.a, -27606i))));
    global0 = ~max(vec4<i32>(~global1.x, 39752i, arg_2.x, -arg_1.a.c.x), -vec4<i32>(global1.x, u_input.a, -1i, -29056i)) << (arg_0 % vec4<u32>(32u));
    return firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(~arg_0.x, 1u), _wgslsmith_clamp_vec2_u32(~abs(arg_1.a.b), ~vec2<u32>(90473u, 99747u), vec2<u32>(4294967295u, 1u))));
}

fn func_2() -> bool {
    let var_0 = ~_wgslsmith_mult_u32(~36410u >> (abs(func_3(vec4<u32>(u_input.b.x, 67106u, u_input.b.x, 1u), Struct_2(Struct_1(vec3<f32>(1339f, 398f, 324f), vec2<u32>(u_input.b.x, 43749u), global0.xx, 38883u, vec3<bool>(false, false, false))), global0.wyy)) % 32u), 4294967295u);
    var var_1 = select(select(select(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), true), vec4<bool>(true, false, false, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), false)), false), vec4<bool>(any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false))), all(vec2<bool>(true, true)), select(true, u_input.b.x < 77964u, true), all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)))), global1.x >= (abs(u_input.a) >> (_wgslsmith_mult_u32(111317u, var_0) % 32u))), select(vec4<bool>(_wgslsmith_f_op_f32(select(-331f, 242f, true)) > _wgslsmith_f_op_f32(select(1659f, 951f, false)), !any(vec3<bool>(true, true, false)), all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true)), any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true))), vec4<bool>(true, true, true, true), !(global1.x < global0.x) & true), select(!(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), false)), !vec4<bool>(any(vec3<bool>(true, true, true)), all(vec3<bool>(false, false, false)), select(false, true, false), true), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true))));
    var_1 = vec4<bool>(true, !(var_1.x != (_wgslsmith_f_op_f32(round(-678f)) >= -283f)), false, true);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-361f * -232f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1202f) - 1288f))), 1437f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -605f) - _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-849f * 320f), _wgslsmith_f_op_f32(sign(-229f)))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(var_2.xx + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_2.x, var_2.x)))));
    return true;
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    global1 = vec2<i32>(select(6337i, global1.x, func_2()), _wgslsmith_clamp_i32(~min(-2147483647i, _wgslsmith_mod_i32(0i, arg_0.a.c.x)), u_input.a, (_wgslsmith_mod_i32(1i, u_input.a) & _wgslsmith_dot_vec2_i32(arg_0.a.c, arg_0.a.c)) | 1i));
    global1 = global0.yz;
    let var_0 = global0.wyy;
    global1 = -select(vec2<i32>(-(~global1.x), -1i), vec2<i32>(countOneBits(arg_0.a.c.x), (var_0.x | u_input.a) >> (~3146u % 32u)), vec2<bool>((u_input.a ^ u_input.a) == _wgslsmith_add_i32(arg_0.a.c.x, 65105i), arg_0.a.e.x));
    var var_1 = ~firstLeadingBit(_wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(1u, 10750u)), vec2<u32>(0u, u_input.b.x)));
    return Struct_2(Struct_1(vec3<f32>(arg_0.a.a.x, arg_0.a.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.a.a.x)) + arg_0.a.a.x)), (~vec2<u32>(27659u, 55158u) >> (vec2<u32>(u_input.b.x, 0u) % vec2<u32>(32u))) & arg_0.a.b, abs(-_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, global0.x), arg_0.a.c)), _wgslsmith_add_u32(_wgslsmith_clamp_u32(min(102221u, var_1.x), ~46540u, 108235u), _wgslsmith_clamp_u32(~4294967295u, 31250u, max(12165u, arg_0.a.b.x))), !arg_0.a.e));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_1(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-727f, -198f, 101f) - vec3<f32>(360f, -1073f, -879f)), _wgslsmith_div_vec2_u32(u_input.b, u_input.b), abs(global0.xx), _wgslsmith_add_u32(u_input.b.x, 1u), vec3<bool>(true, true, true)))), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-461f, -1995f, -305f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-541f, -1237f, 2175f))), u_input.b, _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, u_input.a), global0.wx), u_input.b.x, func_1(func_1(Struct_2(Struct_1(vec3<f32>(286f, -706f, -1256f), u_input.b, global0.xw, u_input.b.x, vec3<bool>(true, true, true))))).a.e)), !vec4<bool>(all(vec3<bool>(false, false, false)), true, true, true));
    global0 = max(-max(_wgslsmith_mod_vec4_i32(select(vec4<i32>(u_input.a, u_input.a, global1.x, -2147483647i), vec4<i32>(1i, var_0.a.a.c.x, var_0.a.a.c.x, global1.x), true), _wgslsmith_div_vec4_i32(vec4<i32>(global1.x, 47226i, -2147483647i, global1.x), vec4<i32>(global1.x, u_input.a, global1.x, -1i))), vec4<i32>(u_input.a ^ 0i, global1.x, _wgslsmith_mod_i32(var_0.a.a.c.x, u_input.a), -1i)), ~abs(firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, var_0.a.a.c.x, -35797i, 0i), vec4<i32>(u_input.a, -2147483647i, var_0.b.a.c.x, global1.x), vec4<i32>(-1i, u_input.a, -1i, -2147483647i)))));
    global1 = vec2<i32>(-1i) * -var_0.b.a.c;
    let var_1 = Struct_4(var_0, var_0.a.a, ~abs(max(_wgslsmith_clamp_u32(var_0.a.a.b.x, 12380u, 8921u), var_0.b.a.b.x)));
    var var_2 = Struct_5(global0.x, var_0.b.a.d, _wgslsmith_mod_vec4_u32(vec4<u32>(var_1.a.b.a.b.x, var_0.a.a.b.x, 53959u, max(7051u, 1u)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, var_1.c, 49098u, u_input.b.x), ~vec4<u32>(29467u, var_1.c, var_1.b.b.x, 0u)) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_add_u32(u_input.b.x, var_1.a.a.a.b.x), var_1.b.b.x, ~(~var_1.a.a.a.d), var_1.b.d)));
    let var_3 = var_1.b.c;
    let var_4 = true;
    let var_5 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(var_0.b.a.a.yz, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.a.a.a.a.x, var_0.a.a.a.x), var_5.a.a.a.yy))), var_1.a.b.a.a.yz, var_1.a.b.a.e.zz))), var_5.b.a.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-879f)))), -12825i);
}

