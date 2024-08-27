struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: vec2<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_2, arg_3: vec3<u32>) -> i32 {
    var var_0 = arg_3;
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.b.xz))));
    let var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1456f - arg_0), _wgslsmith_f_op_f32(exp2(arg_2.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0)) - _wgslsmith_f_op_f32(min(-673f, arg_2.b.x))))))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-530f + 614f))), 1118f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1873f - _wgslsmith_f_op_f32(1765f - var_2.x))))));
    var var_4 = _wgslsmith_clamp_i32(arg_2.a, 21351i, -arg_2.a);
    return -11283i;
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    let var_0 = ~(~_wgslsmith_sub_vec2_u32(select(~vec2<u32>(4294967295u, u_input.a), ~vec2<u32>(u_input.d.x, u_input.c), false), vec2<u32>(u_input.a, u_input.c)));
    var var_1 = arg_0.b.x;
    var var_2 = Struct_2(~max(abs(u_input.e), 1128i) | ~(func_3(arg_0.b.x, 39297u, arg_0, u_input.d) & countOneBits(u_input.b.x)), arg_0.b);
    var var_3 = any(vec2<bool>(any(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), true), vec4<bool>(true, true, false, false), true)), !all(vec2<bool>(true, true))));
    var var_4 = _wgslsmith_mult_u32(50155u, ~var_0.x);
    return arg_0;
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: i32, arg_3: vec3<bool>) -> i32 {
    let var_0 = arg_1;
    var var_1 = !(!arg_3.x);
    let var_2 = _wgslsmith_f_op_f32(abs(1000f));
    let var_3 = arg_1.b.wyz;
    var var_4 = -226f;
    return -arg_1.a;
}

fn func_5(arg_0: Struct_2) -> vec3<u32> {
    var var_0 = all(vec3<bool>(4294967295u >= max(1u, _wgslsmith_add_u32(1u, u_input.a)), !all(vec4<bool>(true, true, true, true)), true));
    var_0 = all(select(!select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), -43302i >= u_input.e), !vec3<bool>(select(false, false, true), all(vec3<bool>(false, false, false)), true), vec3<bool>(any(vec2<bool>(true, true)), true, all(vec3<bool>(true, true, true)))));
    var_0 = any(!select(vec3<bool>(true, all(vec4<bool>(true, false, true, true)), select(true, true, false)), vec3<bool>(true, true, true), true));
    var_0 = !(!select(!(u_input.c <= u_input.c), all(vec4<bool>(false, false, true, true)), true));
    var var_1 = u_input.b.xzw;
    return u_input.d;
}

fn func_1(arg_0: vec3<i32>) -> bool {
    let var_0 = abs(-23071i);
    let var_1 = func_5(Struct_2(_wgslsmith_sub_i32(func_4(false, func_2(Struct_2(u_input.e, vec4<f32>(652f, -768f, 717f, 1284f))), ~9858i, vec3<bool>(true, true, true)), countOneBits(-1i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-440f, -330f, func_2(Struct_2(var_0, vec4<f32>(994f, 1294f, 813f, -242f))).b.x, _wgslsmith_f_op_f32(floor(391f))))));
    var var_2 = (i32(-1i) * -abs(2147483647i)) << (var_1.x % 32u);
    var_2 = -45499i;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -308f)), _wgslsmith_f_op_f32(abs(146f)), 1002f, 253f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1109f, 355f, -651f, -855f))))))));
    return select(any(vec3<bool>(true, all(vec2<bool>(true, true)), true)), all(vec4<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false))), !all(vec2<bool>(false, true)), true, false)), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec2<bool>(any(vec4<bool>(true, true, all(vec2<bool>(false, false)), true)), true);
    let var_1 = 4492u << (u_input.c % 32u);
    var_0 = vec2<bool>(var_0.x, all(select(!select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(false, false, false)), !vec3<bool>(true, var_0.x, false), vec3<bool>(true, !var_0.x, u_input.b.x > 2147483647i))));
    var_0 = select(vec2<bool>((u_input.a == u_input.a) == false, -577f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-544f)) - _wgslsmith_f_op_f32(step(409f, 385f)))), vec2<bool>(true, all(!(!vec2<bool>(var_0.x, true)))), !(!vec2<bool>(u_input.c != u_input.a, var_0.x)));
    var_0 = select(!(!vec2<bool>(func_1(vec3<i32>(u_input.b.x, u_input.e, 0i)), !var_0.x)), !select(!vec2<bool>(var_0.x, var_0.x), !(!vec2<bool>(var_0.x, var_0.x)), true), select(select(vec2<bool>(false, 4294967295u >= u_input.c), vec2<bool>(u_input.e < -1i, true), vec2<bool>(any(vec2<bool>(var_0.x, false)), var_0.x & var_0.x)), select(!vec2<bool>(false, var_0.x), !vec2<bool>(var_0.x, var_0.x), true), true));
    let var_2 = select(vec3<bool>(false, all(!vec3<bool>(true, true, var_0.x)), !(true == !var_0.x)), select(vec3<bool>(select(var_0.x, var_0.x, all(vec2<bool>(var_0.x, var_0.x))), func_1(u_input.b.wzy >> (u_input.d % vec3<u32>(32u))), var_0.x), vec3<bool>(var_0.x, !all(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), any(!vec2<bool>(var_0.x, var_0.x))), !var_0.x), !select(vec3<bool>(any(vec3<bool>(false, false, var_0.x)), all(vec4<bool>(false, var_0.x, false, true)), !var_0.x), select(vec3<bool>(true, var_0.x, true), !vec3<bool>(var_0.x, false, var_0.x), !vec3<bool>(var_0.x, false, false)), true));
    var var_3 = true;
    var_3 = var_1 >= ~(~var_1);
    var var_4 = Struct_2(_wgslsmith_dot_vec3_i32((u_input.b.wyw << (u_input.d % vec3<u32>(32u))) & u_input.b.xxw, countOneBits(vec3<i32>(u_input.e, -10825i, u_input.b.x))) ^ 0i, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2392f, _wgslsmith_f_op_f32(-682f * -1432f), _wgslsmith_f_op_f32(step(121f, 1355f)), -208f)))));
    let x = u_input.a;
    s_output = StorageBuffer(19850u, ~_wgslsmith_div_u32(1u | _wgslsmith_add_u32(u_input.d.x, u_input.c), 51079u), var_4.b.x, ~(~_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, 19236i), vec2<i32>(1i, 2147483647i), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(var_4.a, -2147483647i)))), _wgslsmith_div_vec4_u32(~firstTrailingBit(vec4<u32>(4294967295u, 4294967295u, 0u, var_1)) << (_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.c, 69043u, var_1, u_input.c), reverseBits(vec4<u32>(44507u, u_input.a, var_1, 1u))) % vec4<u32>(32u)), ~((vec4<u32>(var_1, var_1, 24964u, 113800u) << (vec4<u32>(var_1, 3530u, 19315u, u_input.d.x) % vec4<u32>(32u))) << (~vec4<u32>(2646u, u_input.c, 0u, 4294967295u) % vec4<u32>(32u)))));
}

