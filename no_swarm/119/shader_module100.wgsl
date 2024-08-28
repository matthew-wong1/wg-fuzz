struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_3) -> f32 {
    global0 = true;
    var var_0 = 1i == ~abs(abs(arg_1.b.a.b.x));
    var var_1 = arg_1.b;
    let var_2 = arg_1.b.a;
    var_1 = arg_1.b;
    return 211f;
}

fn func_2(arg_0: Struct_2, arg_1: u32) -> f32 {
    let var_0 = firstLeadingBit(~_wgslsmith_div_vec4_i32(arg_0.a.a, arg_0.a.a));
    var var_1 = vec2<bool>(_wgslsmith_f_op_f32(func_3(~vec4<u32>(u_input.a.x, 65267u, 0u, 4294967295u), Struct_3(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, arg_0.b), vec2<f32>(-393f, 514f)), arg_0, vec4<bool>(true, false, true, true)))) > 1852f, true);
    var var_2 = Struct_2(Struct_1(countOneBits(reverseBits(reverseBits(vec4<i32>(var_0.x, arg_0.a.a.x, 12816i, arg_0.a.b.x)))), _wgslsmith_mod_vec2_i32(arg_0.a.a.zx, firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.x, 0i), var_0.wx)))), _wgslsmith_f_op_f32(round(-1930f)));
    let var_3 = _wgslsmith_sub_u32(~arg_1, select(~arg_1, u_input.a.x, !var_1.x) ^ ((u_input.a.x & u_input.a.x) << (~arg_1 % 32u)));
    let var_4 = ~(~1u);
    return _wgslsmith_f_op_f32(-200f * var_2.b);
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: bool, arg_3: Struct_3) -> Struct_2 {
    return Struct_2(arg_3.b.a, -607f);
}

fn func_1(arg_0: vec2<i32>, arg_1: i32, arg_2: vec4<i32>, arg_3: u32) -> vec2<f32> {
    var var_0 = func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-868f))) + -213f), _wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(arg_2, vec2<i32>(arg_0.x, arg_2.x)), -1303f), 1u))), ~(1u ^ _wgslsmith_clamp_u32(~40848u, 4294967295u, ~4294967295u)), !(!all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false))), Struct_3(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1655f, 464f))))), Struct_2(Struct_1(-vec4<i32>(arg_1, -81560i, 55537i, arg_2.x), select(vec2<i32>(13488i, arg_0.x), arg_2.yz, vec2<bool>(true, false))), -540f), select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), true), vec4<bool>(all(vec3<bool>(false, true, true)), all(vec2<bool>(false, true)), any(vec3<bool>(true, true, false)), false), !select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), true))));
    var_0 = func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b - 237f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-func_4(var_0.b, u_input.a.x, false, Struct_3(vec2<f32>(var_0.b, var_0.b), Struct_2(var_0.a, 254f), vec4<bool>(false, true, true, false))).b), -712f, !select(true, false, false)))), ~((_wgslsmith_dot_vec2_u32(u_input.a.xx, u_input.a.yy) >> (13411u % 32u)) >> (abs(u_input.a.x) % 32u)), false, Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-233f, var_0.b), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.b, var_0.b), vec2<f32>(-125f, var_0.b))))) + vec2<f32>(var_0.b, _wgslsmith_f_op_f32(min(var_0.b, var_0.b)))), func_4(284f, ~arg_3, all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true))), Struct_3(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.b, -353f), vec2<f32>(var_0.b, var_0.b))), Struct_2(Struct_1(vec4<i32>(arg_2.x, arg_2.x, 2147483647i, 2147483647i), vec2<i32>(-1i, var_0.a.a.x)), 935f), vec4<bool>(false, true, true, true))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(true, false, true))));
    var var_1 = -2147483647i;
    var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.x, arg_0.x), vec2<i32>(~arg_1 | _wgslsmith_div_i32(0i, arg_0.x), i32(-1i) * -arg_0.x)) >> (1u % 32u);
    let var_2 = -_wgslsmith_dot_vec2_i32(arg_2.yz, ~vec2<i32>(arg_1, arg_2.x)) << (u_input.a.x % 32u);
    return vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0.b)), _wgslsmith_f_op_f32(-var_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = (false && (false | !all(vec2<bool>(false, false)))) && !(!all(vec2<bool>(false, false)));
    let var_0 = 1355f;
    global0 = true;
    let var_1 = min(~3122u, _wgslsmith_sub_u32(~u_input.a.x, u_input.a.x));
    let var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -463f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(943f, var_0) - vec2<f32>(var_0, -940f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(vec2<i32>(-27961i, 20181i), -2147483647i, vec4<i32>(0i, 2147483647i, -4770i, 1i), 1u)))))));
    var var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(429f)), 1f) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(var_2, var_2)), var_2)), var_2, true))), func_4(var_0, ~u_input.a.x, !any(vec2<bool>(true, false)), Struct_3(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, var_2.x), var_2, true)), func_4(var_2.x, 47319u, var_1 != 1u, Struct_3(var_2, Struct_2(Struct_1(vec4<i32>(-7300i, -6806i, 2147483647i, 64752i), vec2<i32>(-47677i, -14380i)), -281f), vec4<bool>(true, false, true, true))), vec4<bool>(all(vec3<bool>(false, true, true)), all(vec2<bool>(true, true)), true, all(vec2<bool>(false, true))))), !vec4<bool>(1i < _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(46237i, -24706i)), true, any(vec4<bool>(true, true, true, true)), true));
    let var_4 = ~(~_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(var_3.b.a.a.x, -22630i, var_3.b.a.a.x, var_3.b.a.a.x)) ^ var_3.b.a.a, select(vec4<i32>(var_3.b.a.a.x, -1i, var_3.b.a.b.x, var_3.b.a.a.x), var_3.b.a.a >> (vec4<u32>(4294967295u, 1u, u_input.a.x, 21409u) % vec4<u32>(32u)), var_3.c), var_3.b.a.a));
    var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(-var_3.a), func_4(_wgslsmith_div_f32(1549f, var_3.a.x), abs(var_1 >> (u_input.a.x % 32u)) >> (0u % 32u), all(!select(var_3.c.zxy, vec3<bool>(var_3.c.x, var_3.c.x, var_3.c.x), var_3.c.x)), Struct_3(_wgslsmith_f_op_vec2_f32(func_1(var_4.yw, func_4(var_3.a.x, 16906u, var_3.c.x, Struct_3(var_3.a, Struct_2(Struct_1(var_3.b.a.a, vec2<i32>(var_4.x, var_4.x)), -1439f), var_3.c)).a.b.x, var_3.b.a.a >> (vec4<u32>(var_1, 4294967295u, var_1, var_1) % vec4<u32>(32u)), select(u_input.a.x, 23122u, var_3.c.x))), func_4(_wgslsmith_f_op_f32(-var_0), ~1u, var_3.c.x & var_3.c.x, Struct_3(vec2<f32>(516f, -662f), var_3.b, var_3.c)), !var_3.c)), vec4<bool>(any(var_3.c.wx), var_3.c.x, false, false));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-661f, var_3.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1058f)), vec4<i32>(0i, -var_4.x, reverseBits(~var_4.x), ~1i), ~u_input.a.yz);
}

