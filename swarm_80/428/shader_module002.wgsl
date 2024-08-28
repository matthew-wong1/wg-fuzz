struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 29>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: vec4<bool>, arg_3: Struct_4) -> f32 {
    return arg_0;
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: bool, arg_3: vec2<u32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1262f, arg_0))), -772f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, arg_0) - _wgslsmith_f_op_f32(max(-750f, -294f)))))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(func_3(-956f, u_input.c, vec4<bool>(false, arg_2, arg_2, arg_2), Struct_4(Struct_2(vec3<bool>(true, arg_2, arg_2), u_input.d, Struct_1(vec2<u32>(0u, 54995u), 201f, arg_2), 0i, Struct_1(u_input.d.wz, 158f, false))))))), arg_0, _wgslsmith_div_f32(arg_0, -221f), -216f), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(107f, arg_0, -1359f, arg_0), vec4<f32>(arg_0, arg_0, 569f, arg_0))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, -786f))))))), select(vec4<bool>(any(select(vec4<bool>(true, arg_2, true, arg_2), vec4<bool>(arg_2, arg_2, arg_2, arg_2), vec4<bool>(true, arg_2, arg_2, arg_2))), true, ~arg_3.x == max(60173u, 28289u), select(arg_2, any(vec2<bool>(arg_2, arg_2)), all(vec3<bool>(arg_2, false, arg_2)))), select(!vec4<bool>(true, arg_2, false, true), vec4<bool>(arg_2, true, arg_2, true), any(select(vec2<bool>(arg_2, arg_2), vec2<bool>(false, arg_2), vec2<bool>(arg_2, true)))), all(select(!vec4<bool>(arg_2, arg_2, arg_2, true), vec4<bool>(arg_2, arg_2, arg_2, arg_2), true)))));
    var var_1 = Struct_4(Struct_2(vec3<bool>(true, true, 0i <= select(arg_1, -2147483647i, arg_2)), u_input.d, Struct_1(vec2<u32>(1u, u_input.d.x), arg_0, arg_2 || true), 41475i, Struct_1(arg_3 >> (~vec2<u32>(1u, 1u) % vec2<u32>(32u)), arg_0, arg_2)));
    var var_2 = select(vec4<bool>(false, true, false && var_1.a.a.x, _wgslsmith_f_op_f32(max(-714f, _wgslsmith_div_f32(var_0.x, -355f))) >= _wgslsmith_f_op_f32(-1138f * var_1.a.e.b)), !(!vec4<bool>(true, var_1.a.a.x != var_1.a.a.x, true, true)), vec4<bool>(var_1.a.e.c, arg_2, false, true));
    var var_3 = Struct_3(select(select(select(select(vec4<bool>(var_2.x, true, false, true), vec4<bool>(false, arg_2, var_1.a.e.c, true), vec4<bool>(false, true, false, false)), !vec4<bool>(var_2.x, var_2.x, true, false), all(vec4<bool>(var_2.x, arg_2, true, var_2.x))), select(vec4<bool>(false, arg_2, var_1.a.c.c, false), !vec4<bool>(true, true, var_1.a.a.x, arg_2), !vec4<bool>(var_2.x, arg_2, var_1.a.e.c, true)), vec4<bool>(var_1.a.a.x, true & var_2.x, 0i != u_input.c, false)), vec4<bool>(abs(u_input.d.x) > ~arg_3.x, var_2.x, arg_2, true), vec4<bool>(!(arg_1 >= 12609i), false, !(var_2.x | true), arg_2)), Struct_2(!select(!var_2.zyz, vec3<bool>(arg_2, var_2.x, var_2.x), var_2.wxw), u_input.d, var_1.a.c, -58977i, Struct_1(~u_input.d.zz, -932f, !any(vec3<bool>(var_1.a.e.c, var_1.a.e.c, var_1.a.c.c)))), select(select(var_2.wy, var_2.yx, any(!vec2<bool>(arg_2, arg_2))), vec2<bool>(any(var_2.yxz), arg_2), var_1.a.a.zy));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0), _wgslsmith_div_vec4_f32(vec4<f32>(var_3.b.e.b, var_1.a.c.b, 225f, 1f), var_0)) - vec4<f32>(_wgslsmith_div_f32(932f, _wgslsmith_f_op_f32(-var_1.a.e.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(-637f - 1805f))), 693f, var_0.x));
    return Struct_3(vec4<bool>(var_3.b.e.c, !var_3.b.a.x, all(!vec3<bool>(var_2.x, true, var_3.c.x)) & true, var_2.x | !(!var_2.x)), var_1.a, vec2<bool>(true, true));
}

fn func_4(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: Struct_3) -> vec2<u32> {
    var var_0 = i32(-1i) * -2147483647i;
    return vec2<u32>(arg_3.b.b.x, 0u);
}

fn func_5(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: vec2<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1400f, 1439f, 684f, 1000f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(673f, 315f, 1400f, 817f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1052f, 967f, -179f, 1016f))))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(953f))), _wgslsmith_f_op_f32(f32(-1f) * -920f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -393f), -595f), _wgslsmith_f_op_f32(ceil(1f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(2469f, 1000f, 2125f, 1000f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(576f, 1217f, -1872f, -135f)))));
    global0 = array<vec4<i32>, 29>();
    let var_1 = Struct_4(Struct_2(vec3<bool>(true, -u_input.a < (u_input.c ^ u_input.c), false), ~u_input.d, Struct_1(vec2<u32>(arg_0.x, abs(0u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-1022f, var_0.x)), var_0.x, false)), true), ~u_input.a, func_2(-141f, u_input.e.x, false, max(func_4(u_input.d.x, vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), Struct_3(vec4<bool>(true, false, false, false), Struct_2(vec3<bool>(false, false, true), vec4<u32>(arg_1.x, 23183u, 4294967295u, arg_0.x), Struct_1(u_input.d.zx, -977f, false), u_input.a, Struct_1(arg_1.zx, var_0.x, true)), vec2<bool>(true, false)), Struct_3(vec4<bool>(true, false, false, true), Struct_2(vec3<bool>(false, true, false), vec4<u32>(4294967295u, 53123u, arg_2.x, u_input.d.x), Struct_1(vec2<u32>(u_input.d.x, u_input.d.x), var_0.x, true), u_input.a, Struct_1(vec2<u32>(1u, 58389u), 447f, false)), vec2<bool>(true, true))), vec2<u32>(11851u, arg_1.x))).b.c));
    var var_2 = Struct_3(vec4<bool>(func_2(674f, ~1i, any(var_1.a.a.xx), ~var_1.a.e.a).a.x, true, var_1.a.c.c, var_1.a.c.c), Struct_2(!(!select(var_1.a.a, vec3<bool>(true, var_1.a.c.c, var_1.a.e.c), var_1.a.a)), max(var_1.a.b, var_1.a.b), func_2(var_0.x, var_1.a.d, var_1.a.e.c, vec2<u32>(~93437u, arg_1.x)).b.e, 1i | ~firstTrailingBit(u_input.a), func_2(1330f, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a.d, u_input.e.x), select(vec2<i32>(56461i, var_1.a.d), u_input.e.wz, var_1.a.a.yy)), any(!var_1.a.a), reverseBits(u_input.d.zw >> (vec2<u32>(arg_2.x, 56178u) % vec2<u32>(32u)))).b.e), select(select(!select(vec2<bool>(false, var_1.a.a.x), var_1.a.a.zz, var_1.a.c.c), select(vec2<bool>(false, var_1.a.a.x), var_1.a.a.zx, var_1.a.e.c), false), var_1.a.a.yy, true));
    var var_3 = 40053u;
    return max(arg_0.x, arg_0.x);
}

fn func_1() -> i32 {
    let var_0 = vec3<i32>(-u_input.e.x, u_input.a, 1i);
    var var_1 = _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(~countOneBits(vec2<u32>(u_input.d.x, u_input.d.x)), ~vec2<u32>(1u, 0u)), _wgslsmith_mod_u32(0u, 0u & u_input.d.x) >> (0u % 32u)), vec2<u32>(_wgslsmith_add_u32(u_input.d.x, 4294967295u << (firstTrailingBit(u_input.d.x) % 32u)), 1u));
    let var_2 = vec2<u32>(1u, func_5(u_input.d.zy, ~vec3<u32>(_wgslsmith_clamp_u32(5072u, 4294967295u, u_input.d.x), var_1.x, 4294967295u), ~(u_input.d.yx >> (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u))) ^ func_4(var_1.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(149f, 1254f, -429f, 553f)), func_2(-168f, var_0.x, true, u_input.d.zx), func_2(1000f, -13493i, false, u_input.d.yy))));
    var_1 = vec2<u32>((1u << (func_2(1900f, u_input.a, false, var_2).b.c.a.x % 32u)) ^ _wgslsmith_mult_u32(~70607u, _wgslsmith_dot_vec3_u32(u_input.d.yyw, vec3<u32>(var_1.x, 1u, u_input.d.x))), ~34199u) ^ vec2<u32>(abs(~(~0u)), var_1.x);
    var var_3 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(690f, _wgslsmith_f_op_f32(1790f * _wgslsmith_f_op_f32(f32(-1f) * -210f)), true)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-371f, -1003f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-3423f - -853f), -631f))), 24373i, false, ~vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.d.x, 12806u, u_input.d.x), ~u_input.d.xwx), 0u));
    return var_3.b.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    let var_1 = firstLeadingBit(abs(vec2<i32>(func_1(), ~u_input.e.x) & u_input.e.wy));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.yyw, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1563f, -874f, 459f, -1115f))))));
}

