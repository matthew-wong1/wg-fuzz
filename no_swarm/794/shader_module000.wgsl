struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec3<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(4294967295u);

var<private> global1: Struct_1 = Struct_1(12004u);

var<private> global2: vec3<bool> = vec3<bool>(true, false, false);

var<private> global3: vec2<bool>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_1) -> i32 {
    global0 = Struct_1(_wgslsmith_dot_vec2_u32(countOneBits(~(~arg_1.a.a.zy)), ~abs(vec2<u32>(u_input.b, 4294967295u))));
    return abs(-_wgslsmith_mod_i32(i32(-1i) * -75118i, min(0i, -2147483647i)) << (~(~arg_0.b.a.x) % 32u));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec3<i32>) -> vec2<bool> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(1623f, _wgslsmith_f_op_f32(step(-1305f, _wgslsmith_f_op_f32(f32(-1f) * -940f))))))), _wgslsmith_f_op_f32(abs(199f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + 1206f) * 929f), -638f);
    global2 = select(!select(vec3<bool>(global2.x, global2.x, true), select(!vec3<bool>(global2.x, global3.x, global2.x), select(vec3<bool>(false, global3.x, false), vec3<bool>(global2.x, global3.x, true), vec3<bool>(global2.x, true, false)), vec3<bool>(true, global2.x, global2.x)), false), !(!(!select(vec3<bool>(false, global3.x, true), vec3<bool>(true, global3.x, true), vec3<bool>(global3.x, false, false)))), vec3<bool>((global1.a | u_input.b) < _wgslsmith_dot_vec3_u32(abs(vec3<u32>(4294967295u, arg_0.a, 0u)), _wgslsmith_mod_vec3_u32(vec3<u32>(18451u, arg_0.a, 17641u), vec3<u32>(u_input.b, u_input.b, u_input.b))), all(select(global2.xz, vec2<bool>(global2.x, global3.x), global2.xx)), all(vec4<bool>(all(global2.yx), any(vec3<bool>(true, false, global3.x)), !global2.x, !global2.x))));
    global2 = select(!vec3<bool>(all(select(vec4<bool>(global2.x, global2.x, false, false), vec4<bool>(global3.x, false, true, true), false)), global2.x, true), select(vec3<bool>(select(false, true, true), global2.x, global3.x), !vec3<bool>(true, !global2.x, true), global2.x), select(vec3<bool>(all(vec2<bool>(false, false)) && false, global2.x, !global2.x & true), !select(!vec3<bool>(global3.x, false, false), !vec3<bool>(false, global3.x, false), true), !all(select(vec3<bool>(true, global3.x, global2.x), vec3<bool>(global2.x, global2.x, false), true))));
    let var_1 = 4294967295u << (~(~arg_0.a) % 32u);
    global3 = select(global2.xy, select(vec2<bool>(global2.x, !any(vec4<bool>(false, global3.x, global3.x, false))), vec2<bool>(false, -423f >= _wgslsmith_f_op_f32(min(var_0.x, var_0.x))), !(!vec2<bool>(global3.x, false))), select(vec2<bool>(true, true), vec2<bool>(global3.x, false), !all(select(vec4<bool>(true, true, global3.x, global2.x), vec4<bool>(true, global3.x, false, global2.x), vec4<bool>(global2.x, true, global2.x, global2.x)))));
    return vec2<bool>(select(any(select(!vec4<bool>(global3.x, global3.x, false, true), vec4<bool>(global2.x, false, global2.x, global3.x), select(vec4<bool>(false, true, false, global3.x), vec4<bool>(global3.x, true, global2.x, false), global3.x))), true, any(global2.yz)), global0.a > select(12756u, global0.a, true));
}

fn func_2(arg_0: i32, arg_1: vec2<bool>) -> vec2<u32> {
    global3 = global2.zx;
    var var_0 = select(!vec3<bool>(false, global2.x, true), !(!vec3<bool>(global3.x, arg_1.x, false)), vec3<bool>(global2.x, global3.x, global3.x));
    global3 = select(func_4(Struct_1(global1.a), -arg_0, vec3<i32>(func_3(Struct_3(Struct_2(vec3<u32>(23475u, global0.a, 7788u), vec2<f32>(-636f, -954f), Struct_1(global0.a), arg_0), Struct_2(vec3<u32>(global0.a, 0u, 5184u), vec2<f32>(-2402f, -535f), Struct_1(45609u), 961i), Struct_2(vec3<u32>(1u, u_input.b, u_input.b), vec2<f32>(-750f, -1000f), Struct_1(global1.a), 1i)), Struct_3(Struct_2(vec3<u32>(6285u, u_input.b, u_input.b), vec2<f32>(510f, 466f), Struct_1(1u), arg_0), Struct_2(vec3<u32>(u_input.b, global1.a, 0u), vec2<f32>(-1000f, -391f), Struct_1(global1.a), arg_0), Struct_2(vec3<u32>(37863u, global0.a, 77789u), vec2<f32>(-757f, -1000f), Struct_1(u_input.b), 1i)), Struct_2(vec3<u32>(global0.a, 4294967295u, global1.a), vec2<f32>(-1031f, 1701f), Struct_1(global1.a), -11790i), Struct_1(u_input.b)), -60270i, _wgslsmith_div_i32(func_3(Struct_3(Struct_2(vec3<u32>(global0.a, 0u, 15324u), vec2<f32>(-734f, 1793f), Struct_1(0u), 0i), Struct_2(vec3<u32>(u_input.b, global0.a, u_input.b), vec2<f32>(-961f, -959f), Struct_1(2292u), arg_0), Struct_2(vec3<u32>(1u, global0.a, 4294967295u), vec2<f32>(-1339f, 649f), Struct_1(1u), 1i)), Struct_3(Struct_2(vec3<u32>(u_input.b, u_input.b, 36010u), vec2<f32>(-675f, -407f), Struct_1(68460u), arg_0), Struct_2(vec3<u32>(u_input.b, global1.a, global1.a), vec2<f32>(1113f, 260f), Struct_1(0u), arg_0), Struct_2(vec3<u32>(13133u, u_input.b, 0u), vec2<f32>(-188f, -2199f), Struct_1(u_input.b), u_input.a)), Struct_2(vec3<u32>(4294967295u, 5672u, 4294967295u), vec2<f32>(-862f, -1492f), Struct_1(0u), 0i), Struct_1(global1.a)), u_input.a))), select(!(!var_0.xz), !vec2<bool>(any(vec3<bool>(true, true, arg_1.x)), false), !any(!vec4<bool>(false, true, false, var_0.x))), func_4(Struct_1(4294967295u), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.c, 15663i), -48493i, -func_3(Struct_3(Struct_2(vec3<u32>(84277u, u_input.b, global1.a), vec2<f32>(1013f, -693f), Struct_1(global1.a), 2155i), Struct_2(vec3<u32>(global0.a, 0u, 35539u), vec2<f32>(960f, -1190f), Struct_1(77331u), u_input.d), Struct_2(vec3<u32>(1u, 60304u, 42220u), vec2<f32>(-460f, -1412f), Struct_1(1u), -16258i)), Struct_3(Struct_2(vec3<u32>(124u, 5238u, u_input.b), vec2<f32>(-940f, -427f), Struct_1(29634u), 0i), Struct_2(vec3<u32>(33817u, 34005u, 13613u), vec2<f32>(1713f, -459f), Struct_1(u_input.b), u_input.c), Struct_2(vec3<u32>(global1.a, global0.a, 4294967295u), vec2<f32>(552f, 1096f), Struct_1(global0.a), arg_0)), Struct_2(vec3<u32>(23439u, 4294967295u, 246u), vec2<f32>(-663f, 710f), Struct_1(u_input.b), arg_0), Struct_1(51021u))), ~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, u_input.c, arg_0), -vec3<i32>(arg_0, 22272i, 0i))));
    let var_1 = true & !(!(!(!arg_1.x)));
    var var_2 = _wgslsmith_add_vec2_u32(select(vec2<u32>(46230u, u_input.b) << (~vec2<u32>(u_input.b, 38139u) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(40209u, 1473u), vec2<u32>(141207u, 0u)), countOneBits(vec2<u32>(global1.a, 5580u))), true) ^ (reverseBits(vec2<u32>(global1.a, global1.a)) >> (vec2<u32>(countOneBits(0u), _wgslsmith_div_u32(48577u, 53975u)) % vec2<u32>(32u))), ~(~(firstLeadingBit(vec2<u32>(global1.a, 15700u)) | _wgslsmith_div_vec2_u32(vec2<u32>(62073u, 0u), vec2<u32>(24598u, global0.a)))));
    return _wgslsmith_div_vec2_u32(~_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.b, global1.a) ^ ~vec2<u32>(23438u, global0.a), _wgslsmith_add_vec2_u32(vec2<u32>(global1.a, var_2.x) ^ vec2<u32>(u_input.b, u_input.b), ~vec2<u32>(global0.a, global1.a))), select(vec2<u32>(~0u >> (_wgslsmith_sub_u32(30411u, var_2.x) % 32u), ~_wgslsmith_sub_u32(60845u, 8011u)), reverseBits(~vec2<u32>(14203u, global1.a) >> (~vec2<u32>(1u, 53978u) % vec2<u32>(32u))), global2.zy));
}

fn func_1() -> bool {
    var var_0 = vec2<u32>(4294967295u, 112061u) ^ func_2(select(19626i, 1i >> (global0.a % 32u), true), vec2<bool>(!(!global3.x), false));
    global3 = vec2<bool>(~u_input.d > _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), ~(-vec2<i32>(u_input.c, 0i))), true);
    var var_1 = ~(~u_input.b);
    let var_2 = vec4<u32>(global0.a & 1u, func_2(~(-u_input.d), select(func_4(Struct_1(11273u), 1i, -vec3<i32>(u_input.d, u_input.d, u_input.c)), select(func_4(Struct_1(u_input.b), u_input.c, vec3<i32>(-2147483647i, -10475i, u_input.d)), !vec2<bool>(global2.x, false), global3.x), all(global2.zy))).x, ~(1u & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 9994u, 1u, 31777u), ~vec4<u32>(global1.a, 10784u, 0u, 0u))), global0.a);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(140f, 940f, -1836f, -1000f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1999f, 1255f, 148f, -532f))), vec4<f32>(-182f, _wgslsmith_f_op_f32(floor(-162f)), 1f, _wgslsmith_f_op_f32(sign(693f))), true)))));
    return global3.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(global2.zz, global2.xz, vec2<bool>(true, true)), vec2<bool>(all(vec4<bool>(true, global2.x, global2.x, select(global3.x, global2.x, true))), global2.x), global2.zz);
    global2 = select(vec3<bool>(!global2.x, global3.x, func_1()), vec3<bool>(false, true, var_0.x), !((_wgslsmith_f_op_f32(-444f * 2010f) >= _wgslsmith_f_op_f32(step(926f, -1142f))) | (u_input.c > u_input.d)));
    global0 = Struct_1(18212u << (global0.a % 32u));
    let var_1 = Struct_1(~select(1u, min(~40327u, 0u), !(4294967295u < u_input.b)));
    global0 = Struct_1(0u);
    global3 = vec2<bool>(true, true);
    var var_2 = Struct_2(vec3<u32>(global1.a, global0.a, ~4294967295u), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-588f, 809f), vec2<f32>(-125f, 132f)))))), var_1, -59366i);
    var var_3 = 1174f;
    let var_4 = var_2.c.a > global1.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.x, 396f, 756f, var_2.b.x))))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(700f, var_2.b.x, 573f, 954f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_2.b.x, -459f, 596f))))))), var_2.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(341f, var_2.b.x, _wgslsmith_f_op_f32(max(var_2.b.x, -810f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b.x, 184f, var_2.b.x) - vec3<f32>(var_2.b.x, var_2.b.x, var_2.b.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b.x, -660f, -679f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(398f, var_2.b.x, -182f) * vec3<f32>(var_2.b.x, var_2.b.x, -2195f)) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1157f, var_2.b.x, -1602f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1053f, var_2.b.x, var_2.b.x) + vec3<f32>(-1000f, 940f, -338f))))))), var_2.a);
}

