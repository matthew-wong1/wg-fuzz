struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec2<bool>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_3,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> bool {
    let var_0 = Struct_3(vec2<f32>(-1454f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-461f)), -471f))))), vec2<u32>(~_wgslsmith_sub_u32(u_input.c, 4294967295u) & ~1u, 28648u), !vec2<bool>(true | global0.x, global0.x));
    var var_1 = vec3<u32>(abs(56186u), 0u, _wgslsmith_mod_u32(u_input.b, u_input.b)) & ~vec3<u32>(~var_0.b.x, 34437u, 37295u);
    let var_2 = Struct_1(countOneBits(~_wgslsmith_dot_vec2_i32(vec2<i32>(41214i, -1i), vec2<i32>(-10530i, 1i))) & _wgslsmith_mod_i32(_wgslsmith_sub_i32(0i, -12458i << (var_1.x % 32u)), countOneBits(~78651i)), vec4<i32>(~1i << ((var_0.b.x ^ ~var_0.b.x) % 32u), i32(-1i) * -7269i, (i32(-1i) * -7620i) ^ (select(39618i, -18557i, false) & reverseBits(-61240i)), 31428i << (reverseBits(u_input.b) % 32u)), abs(~(var_0.b ^ firstLeadingBit(var_0.b))), max(-(max(1i, -25584i) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(34805i, 1i), vec2<i32>(-1i, -1i))), -18300i), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(346f, var_0.a.x) + _wgslsmith_f_op_vec2_f32(step(var_0.a, var_0.a))))))));
    let var_3 = 949f;
    var var_4 = reverseBits(min(-var_2.b, vec4<i32>(_wgslsmith_mod_i32(var_2.b.x, var_2.b.x), var_2.d, var_2.d, abs(-13121i)) >> (_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(var_1.x, 26586u, 87946u, 298u)), vec4<u32>(35838u, var_2.c.x, var_2.c.x, u_input.b)) % vec4<u32>(32u))));
    return select(true, var_0.c.x, firstTrailingBit(6048u) != _wgslsmith_add_u32(7321u, var_2.c.x)) != true;
}

fn func_2() -> Struct_2 {
    global0 = vec2<bool>(true, func_3());
    var var_0 = ~vec3<u32>(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.a, 7414u), ~vec3<u32>(u_input.a, u_input.b, u_input.a)) ^ ~4294967295u, _wgslsmith_mod_u32(~_wgslsmith_div_u32(4294967295u, 27266u), 1u));
    var var_1 = Struct_2(Struct_1(countOneBits(28088i), firstLeadingBit(vec4<i32>(min(-1i, -15151i), i32(-1i) * -1i, -44929i, 1i)), abs(var_0.xx ^ ~vec2<u32>(0u, 30021u)), _wgslsmith_mod_i32(2147483647i, _wgslsmith_dot_vec4_i32(~vec4<i32>(26844i, 1i, 40375i, 0i), countOneBits(vec4<i32>(30252i, 23172i, -38639i, 20439i)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1167f), _wgslsmith_f_op_f32(step(-614f, -489f))))));
    global0 = !(!(!select(select(vec2<bool>(true, global0.x), vec2<bool>(true, true), true), vec2<bool>(true, true), true)));
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-473f, -937f, var_1.a.e.x, 179f)))))))));
    return Struct_2(var_1.a);
}

fn func_1(arg_0: bool, arg_1: vec2<i32>) -> bool {
    let var_0 = func_2();
    global0 = vec2<bool>(false, arg_0);
    global0 = select(!select(select(!vec2<bool>(arg_0, arg_0), !vec2<bool>(global0.x, true), !vec2<bool>(arg_0, false)), vec2<bool>(!arg_0, !arg_0), vec2<bool>(true, true)), !(!(!select(vec2<bool>(true, arg_0), vec2<bool>(false, false), global0.x))), select(vec2<bool>(var_0.a.e.x <= _wgslsmith_f_op_f32(-var_0.a.e.x), !(2147483647i <= arg_1.x)), !select(vec2<bool>(false, false), select(vec2<bool>(arg_0, global0.x), vec2<bool>(global0.x, true), global0.x), select(vec2<bool>(arg_0, true), vec2<bool>(true, true), global0.x)), !vec2<bool>(any(vec2<bool>(false, global0.x)), select(global0.x, global0.x, false))));
    global0 = select(select(select(vec2<bool>(any(vec3<bool>(arg_0, global0.x, arg_0)), true), vec2<bool>(global0.x & false, global0.x), select(select(vec2<bool>(false, global0.x), vec2<bool>(false, global0.x), vec2<bool>(arg_0, arg_0)), vec2<bool>(true, true), global0.x)), vec2<bool>(true, true), !global0.x), vec2<bool>(arg_0, any(select(vec2<bool>(global0.x, true), vec2<bool>(false, arg_0), global0.x)) | false), true);
    let var_1 = _wgslsmith_div_f32(var_0.a.e.x, var_0.a.e.x);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec3<bool>(true, false | !global0.x, global0.x), vec3<bool>(func_1(true, vec2<i32>(-1i, 28926i)), true, any(vec2<bool>(false, false))), select((13891u >> (u_input.b % 32u)) >= countOneBits(u_input.b), true, true));
    var_0 = select(select(vec3<bool>(global0.x, var_0.x, global0.x), vec3<bool>(true, func_1(true, vec2<i32>(-1i, -44537i)), true), vec3<bool>(true, all(vec2<bool>(false, var_0.x)), true)), vec3<bool>(func_3(), !all(select(vec4<bool>(var_0.x, global0.x, false, global0.x), vec4<bool>(var_0.x, true, global0.x, true), vec4<bool>(false, var_0.x, false, false))), true & !(!var_0.x)), any(select(vec3<bool>(any(vec4<bool>(global0.x, true, var_0.x, true)), var_0.x, global0.x), vec3<bool>(func_3(), global0.x, func_1(true, vec2<i32>(-64063i, -1i))), global0.x)));
    var var_1 = abs(u_input.a);
    var var_2 = select(select(select(!(!vec4<bool>(true, var_0.x, false, global0.x)), !(!vec4<bool>(false, global0.x, global0.x, false)), any(vec4<bool>(global0.x, global0.x, global0.x, global0.x))), vec4<bool>(true, false || !var_0.x, var_0.x, global0.x), true), !(!(!(!vec4<bool>(var_0.x, var_0.x, false, true)))), !any(select(vec2<bool>(true, false), vec2<bool>(global0.x, global0.x), var_0.yx)) | (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-289f)) - 1034f) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1001f))));
    var_0 = vec3<bool>(any(vec4<bool>(true, false, any(var_2.xw) || all(vec2<bool>(var_0.x, var_2.x)), true)), all(vec4<bool>(select(true, func_1(true, vec2<i32>(-2147483647i, 58059i)), false), !var_2.x, var_0.x, !func_1(false, vec2<i32>(-1i, -60676i)))), !(_wgslsmith_f_op_f32(1270f - -195f) != _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(412f - 1005f)))));
    var_0 = !vec3<bool>(false, !(var_0.x || true), true);
    let var_3 = select(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 32938u, u_input.a | 27037u, _wgslsmith_sub_u32(u_input.a, 4294967295u)) >> ((max(vec4<u32>(u_input.a, u_input.c, 1u, 12392u), vec4<u32>(2646u, 1u, 1u, 58439u)) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.a, 4294967295u), vec4<u32>(u_input.c, 4294967295u, 14294u, u_input.c), vec4<u32>(u_input.a, u_input.c, u_input.b, 104019u))) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(~(~vec4<u32>(37773u, 1u, u_input.a, u_input.b)), ~vec4<u32>(0u, u_input.b, 7696u, 0u))), countOneBits(select(vec4<u32>(~0u, 58226u, 0u, 0u), _wgslsmith_sub_vec4_u32(max(vec4<u32>(0u, u_input.a, 1u, u_input.b), vec4<u32>(u_input.b, 1u, 0u, 29068u)), ~vec4<u32>(4294967295u, u_input.a, u_input.a, 0u)), vec4<bool>(true, true, var_2.x, true))), !(!var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1079f, -481f, -1172f, -836f))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(3087f, 1000f, 478f, -270f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-314f, 1000f, 740f, -100f))))))));
}

