struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: i32,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: Struct_2,
    d: vec2<f32>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec2<bool>,
    d: bool,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<u32>) -> u32 {
    let var_0 = Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(387f, -673f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1851f, -1403f))))), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, ~1u, abs(u_input.a), select(u_input.a, 84227u, false)), vec4<u32>(60362u, 0u, u_input.d.x, arg_1.x)), u_input.d.x), vec2<bool>(true, false), true, Struct_3(Struct_1(vec2<f32>(-235f, -863f), false, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-572f, -577f))))), vec2<i32>(abs(~(-37233i)), 1i)));
    var var_1 = 16457u;
    return 0u;
}

fn func_3(arg_0: Struct_3, arg_1: vec3<i32>) -> bool {
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.c.x + 147f) * _wgslsmith_f_op_f32(arg_0.a.a.x * 495f))), -2077f), !arg_0.a.b, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.a.c.x, arg_0.a.c.x), vec2<f32>(arg_0.a.c.x, arg_0.a.a.x), true)), vec2<f32>(arg_0.a.a.x, arg_0.a.a.x)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.a.c.x, arg_0.a.c.x), vec2<f32>(1518f, -536f))))))));
    let var_1 = abs(reverseBits(vec4<i32>(-17996i, _wgslsmith_dot_vec4_i32(u_input.c, -u_input.c), min(arg_1.x, -21569i), _wgslsmith_sub_i32(arg_0.b.x, -2147483647i))));
    var var_2 = arg_0.a.c.x;
    var var_3 = !(!(!arg_0.a.b));
    let var_4 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-715f, arg_0.a.c.x, var_0.a.x, -1279f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.a.c.x, 1000f, var_0.c.x, var_0.c.x))))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(933f * 1341f), 1000f, _wgslsmith_f_op_f32(round(-1450f)), _wgslsmith_f_op_f32(ceil(715f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2057f), _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1860f), _wgslsmith_f_op_f32(max(var_0.c.x, arg_0.a.c.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_0.c.x, -683f, var_0.a.x) + vec4<f32>(_wgslsmith_f_op_f32(abs(arg_0.a.a.x)), var_0.c.x, _wgslsmith_f_op_f32(min(arg_0.a.c.x, arg_0.a.a.x)), _wgslsmith_f_op_f32(round(arg_0.a.c.x)))))));
    return var_0.b;
}

fn func_1() -> bool {
    let var_0 = vec3<u32>(4294967295u, 56687u, u_input.a >> (u_input.d.x % 32u));
    var var_1 = vec3<bool>(select(_wgslsmith_mult_u32(u_input.d.x, 4294967295u), select(firstTrailingBit(var_0.x), func_2(u_input.c, vec3<u32>(var_0.x, var_0.x, u_input.d.x)), -53244i <= u_input.c.x), true == (50268u < u_input.d.x)) <= _wgslsmith_sub_u32(~(~var_0.x), firstTrailingBit(44367u)), true, func_3(Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1068f, 1768f) * vec2<f32>(-473f, -721f)), all(vec3<bool>(false, true, true)), vec2<f32>(1189f, 196f)), _wgslsmith_div_vec2_i32(u_input.c.wz, _wgslsmith_sub_vec2_i32(u_input.c.wy, vec2<i32>(u_input.c.x, -23053i)))), -(~u_input.c.zzy) & vec3<i32>(-13615i, _wgslsmith_sub_i32(u_input.e, 1i), select(u_input.e, u_input.c.x, false))));
    var_1 = !(!(!vec3<bool>(any(var_1.yx), !var_1.x, true)));
    var_1 = select(!select(select(select(vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(false, false, var_1.x)), vec3<bool>(true, true, true), select(vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(true, var_1.x, false), vec3<bool>(var_1.x, var_1.x, var_1.x))), vec3<bool>(true, false, true), true), select(select(!(!vec3<bool>(var_1.x, var_1.x, true)), !select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(true, false, var_1.x), vec3<bool>(false, var_1.x, var_1.x)), !vec3<bool>(var_1.x, true, true)), !vec3<bool>(any(vec3<bool>(false, var_1.x, false)), true, true), vec3<bool>(var_1.x | var_1.x, !(var_1.x | var_1.x), var_1.x)), any(!select(!vec4<bool>(var_1.x, var_1.x, false, false), !vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), select(vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(true, false, var_1.x, var_1.x), var_1.x))));
    let var_2 = true;
    return any(!(!var_1.zz)) != any(vec4<bool>(~u_input.b.x == 0i, -47887i <= -u_input.c.x, !var_1.x, var_2));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(89517u >> (0u % 32u));
    var_0 = _wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.d.x, u_input.d.x) & u_input.d.x, u_input.d.x);
    var_0 = ~(_wgslsmith_add_u32(67500u, _wgslsmith_clamp_u32(u_input.d.x, 39065u, u_input.d.x)) >> (_wgslsmith_mult_u32(~_wgslsmith_add_u32(4294967295u, u_input.d.x), 98294u) % 32u));
    var_0 = select(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.d.zz, ~vec2<u32>(0u, 1u)), ~(59252u & u_input.a)), u_input.a, true);
    var_0 = 19299u;
    var var_1 = select(vec3<bool>(false, false, true), !vec3<bool>(true, func_1(), all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), false))), false);
    var var_2 = Struct_4(-((_wgslsmith_sub_i32(8936i, u_input.e) >> ((53928u << (1u % 32u)) % 32u)) & -2147483647i), Struct_1(vec2<f32>(-1221f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(900f - -456f) * _wgslsmith_f_op_f32(f32(-1f) * -353f))), any(vec2<bool>(false, var_1.x)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-793f, 1287f, var_1.x))), 1f)), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1f)) - -548f), ~select(_wgslsmith_sub_u32(0u, u_input.a), countOneBits(u_input.d.x), var_1.x | false), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(866f, 1525f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-955f, 904f))), !(!var_1.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-356f, -380f))), countOneBits(u_input.e), 98224u), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1939f, 140f)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-520f, -618f) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1907f, 348f), vec2<f32>(-199f, 1000f), var_1.yz)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1013f, _wgslsmith_f_op_f32(f32(-1f) * -1158f))))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(530f, var_2.b.a.x, 490f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(1u, ~(~19u)), _wgslsmith_mult_u32(~1u, firstTrailingBit(~u_input.a)));
}

