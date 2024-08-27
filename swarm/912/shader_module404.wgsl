struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: bool,
    d: vec3<bool>,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: f32, arg_1: Struct_4) -> bool {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(arg_0)), _wgslsmith_div_f32(arg_0, arg_0), _wgslsmith_f_op_f32(-220f - -1000f), _wgslsmith_f_op_f32(abs(arg_0))) + vec4<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(arg_0 + 1580f), _wgslsmith_div_f32(-352f, 1374f), _wgslsmith_f_op_f32(floor(arg_0)))), 403f), u_input.a.xw);
    var var_1 = Struct_3(Struct_1(var_0.a.a, _wgslsmith_f_op_f32(1010f + arg_0)), !vec4<bool>(true, all(vec3<bool>(true, false, true)), false, true), (var_0.a.a.x <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1372f)))) && true, vec3<bool>(!((4294967295u <= u_input.c) & true), true, false));
    var_1 = Struct_3(Struct_1(var_1.a.a, arg_0), !vec4<bool>(all(select(var_1.d.zx, vec2<bool>(var_1.b.x, false), true)), true, var_1.c, var_1.c == true), 1u == ~(~(~var_0.b.x)), !select(var_1.b.www, var_1.b.xxy, var_1.b.ywy));
    var var_2 = var_0.a;
    let var_3 = _wgslsmith_f_op_f32(abs(1190f));
    return var_1.c;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: vec2<u32>, arg_3: Struct_2) -> Struct_3 {
    let var_0 = arg_3;
    let var_1 = Struct_3(var_0.a, select(vec4<bool>(true, false, _wgslsmith_f_op_f32(select(arg_1.x, arg_1.x, false)) >= var_0.a.a.x, -2147483647i < _wgslsmith_sub_i32(u_input.b, u_input.b)), select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec4<bool>(false, true, true, false)), any(vec4<bool>(false, true, false, true)), any(vec3<bool>(true, false, false)), true), false), vec4<bool>(!select(true, false, false), select(true, any(vec4<bool>(false, true, true, true)), func_3(arg_3.a.a.x, Struct_4(vec2<i32>(57156i, u_input.d.x)))), true, true)), all(vec4<bool>(true, true, true, true)), vec3<bool>(!all(vec4<bool>(true, true, true, true)), true, true));
    let var_2 = false;
    var var_3 = arg_2.x > abs(_wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.c, var_0.b.x, ~25967u), (u_input.a.xwx & u_input.a.xww) & vec3<u32>(79334u, 0u, arg_3.b.x)));
    var_3 = var_2;
    return Struct_3(arg_3.a, !vec4<bool>(false, any(var_1.b), var_2, ~var_0.b.x != arg_2.x), !(!(false == !var_1.b.x)), vec3<bool>(var_2, select(var_2, !(var_2 && true), var_2), all(var_1.b)));
}

fn func_1(arg_0: bool) -> Struct_2 {
    let var_0 = func_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(-787f, 1917f)), -1864f)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1000f, 269f, arg_0)), _wgslsmith_f_op_f32(min(-202f, 2091f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -744f))))), vec2<f32>(676f, _wgslsmith_f_op_f32(1717f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1205f, 279f, arg_0)) * -1390f))), ~(~countOneBits(u_input.a.wy)), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-605f, 2062f, -293f, -2289f) + vec4<f32>(1165f, 1000f, 953f, 1254f)))), -1090f), abs(vec2<u32>(_wgslsmith_sub_u32(u_input.c, 16763u), _wgslsmith_clamp_u32(122953u, u_input.c, 7267u)))));
    let var_1 = _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a.x, 0u), u_input.a.zw) | ~(~u_input.a.wz), vec2<u32>(12672u, ~4294967295u) & countOneBits(min(vec2<u32>(1u, u_input.a.x), vec2<u32>(34822u, 0u)))), u_input.a.x << (5462u % 32u));
    let var_2 = Struct_3(Struct_1(vec4<f32>(var_0.a.b, _wgslsmith_f_op_f32(f32(-1f) * -526f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.a.b, -1775f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.a.a.x)))), _wgslsmith_div_f32(2102f, _wgslsmith_f_op_f32(var_0.a.a.x - _wgslsmith_f_op_f32(var_0.a.a.x + var_0.a.a.x)))), !select(vec4<bool>(true, var_0.d.x, false, var_0.a.a.x >= 557f), !var_0.b, arg_0), true, !var_0.b.xxz);
    var var_3 = select(select(!vec3<bool>(!var_0.c, var_2.c, any(var_0.b)), !var_0.b.xww, select(!select(vec3<bool>(arg_0, var_2.d.x, true), var_0.d, true), select(func_2(vec2<f32>(-882f, var_0.a.a.x), var_2.a.a.yz, vec2<u32>(u_input.c, 0u), Struct_2(Struct_1(var_0.a.a, 950f), u_input.a.xy)).b.zzw, vec3<bool>(true, var_2.d.x, true), var_0.b.yxy), var_2.b.wxx)), var_2.b.zww, (4294967295u != var_1) || all(select(vec2<bool>(false, false), select(vec2<bool>(false, false), var_0.b.zy, var_0.b.wz), true)));
    var var_4 = var_0.a;
    return Struct_2(Struct_1(vec4<f32>(var_4.b, _wgslsmith_f_op_f32(min(var_0.a.b, _wgslsmith_f_op_f32(-var_2.a.a.x))), -758f, _wgslsmith_f_op_f32(select(-190f, var_0.a.b, select(false, var_0.c, arg_0)))), var_2.a.b), ~vec2<u32>(_wgslsmith_sub_u32(19400u, _wgslsmith_dot_vec3_u32(u_input.a.zyw, vec3<u32>(1u, 4294967295u, var_1))), _wgslsmith_mod_u32(_wgslsmith_add_u32(58403u, var_1), abs(var_1))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(!(!(u_input.d.x < u_input.b)));
    var var_1 = vec3<bool>(true, any(vec3<bool>(any(vec4<bool>(false, true, false, false)) | true, all(vec2<bool>(false, true)), true)), true);
    var var_2 = -(-2147483647i << (~(~var_0.b.x) % 32u));
    var_1 = vec3<bool>(4294967295u < u_input.a.x, var_1.x, !(var_1.x || any(var_1.yx)));
    let var_3 = ~(~(4294967295u & select(4294967295u, u_input.a.x, var_1.x)) & ~_wgslsmith_sub_u32(var_0.b.x, 4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.a.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.a.a.x, -439f, var_1.x))), func_2(_wgslsmith_f_op_vec2_f32(max(var_0.a.a.xy, var_0.a.a.wx)), var_0.a.a.zw, vec2<u32>(1u, 1u), func_1(var_1.x)).a.a.x, _wgslsmith_f_op_f32(f32(-1f) * -780f))), func_1(true).b, -805f);
}

