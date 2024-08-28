struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_1() -> vec4<i32> {
    return vec4<i32>(firstTrailingBit(select(_wgslsmith_mult_i32(-1i, -1042i), countOneBits(1i), any(vec3<bool>(true, true, false)))), _wgslsmith_mod_i32(1i, -5243i), 0i, _wgslsmith_sub_i32(~1i, _wgslsmith_dot_vec2_i32(-vec2<i32>(-10076i, 2147483647i), vec2<i32>(2147483647i, 2147483647i) << (u_input.d.yy % vec2<u32>(32u))))) | vec4<i32>(-16791i, reverseBits(51409i), -23108i, 2147483647i);
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: Struct_4, arg_3: u32) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(853f, arg_2.a, arg_1.a.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, arg_1.a.x, 549f) + vec3<f32>(arg_0, -622f, -1604f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_2.a, -1279f, -1488f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-247f, arg_0, arg_0) * vec3<f32>(arg_2.a, arg_0, arg_2.a))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a, arg_0, 1000f) - vec3<f32>(arg_2.a, arg_0, arg_1.a.x))))));
    let var_1 = vec2<i32>(-1i, 1i >> (arg_1.b.a.a.x % 32u));
    let var_2 = arg_1.b.b.x;
    return vec2<u32>(~(~select(arg_1.b.a.c >> (arg_3 % 32u), arg_3, all(arg_1.c.b.zy))), ~arg_1.b.a.b);
}

fn func_2(arg_0: bool, arg_1: vec2<i32>, arg_2: u32) -> Struct_3 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1f, 1f)))), Struct_2(Struct_1(vec2<u32>(~arg_2, ~u_input.e), arg_2, 39431u), !(!(!vec4<bool>(false, arg_0, true, true)))), Struct_2(Struct_1(func_3(-1493f, Struct_3(vec2<f32>(792f, 281f), Struct_2(Struct_1(u_input.d.wz, 0u, 11050u), vec4<bool>(arg_0, false, true, false)), Struct_2(Struct_1(vec2<u32>(29677u, u_input.e), arg_2, arg_2), vec4<bool>(arg_0, arg_0, false, arg_0))), Struct_4(197f, false), ~arg_2), 36952u & arg_2, _wgslsmith_dot_vec4_u32(u_input.d, u_input.d)), vec4<bool>(!arg_0, true, !any(vec4<bool>(arg_0, arg_0, true, false)), arg_0 == (arg_1.x != arg_1.x))));
    let var_1 = Struct_4(-1000f, !(!var_0.b.b.x));
    let var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, _wgslsmith_div_u32(~var_0.c.a.a.x, abs(_wgslsmith_add_u32(1u, 27117u))), var_0.c.a.b), _wgslsmith_mult_vec3_u32(vec3<u32>(reverseBits(max(var_0.b.a.a.x, var_0.c.a.c)), arg_2, ~arg_2 >> (1u % 32u)), _wgslsmith_mult_vec3_u32(u_input.d.xxx, u_input.d.xzx & u_input.d.wzz)));
    var var_3 = Struct_2(var_0.c.a, !vec4<bool>(!(var_2 != 11169u), (var_2 & var_0.c.a.a.x) >= select(26730u, var_2, true), true, true));
    let var_4 = 2147483647i;
    return Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-1760f, var_1.a))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(exp2(var_0.a.x))))), Struct_2(var_0.c.a, select(!select(var_3.b, vec4<bool>(var_1.b, false, arg_0, var_0.c.b.x), vec4<bool>(var_0.b.b.x, arg_0, arg_0, false)), var_0.c.b, all(vec2<bool>(true, var_3.b.x)))), var_0.b);
}

fn func_4(arg_0: i32, arg_1: Struct_3) -> vec4<bool> {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(884f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_1.a.x)), arg_1.a.x))), !(~_wgslsmith_add_u32(u_input.c, 5837u) <= 62568u));
    var_0 = Struct_4(-707f, all(!select(select(arg_1.b.b, arg_1.c.b, vec4<bool>(false, var_0.b, false, arg_1.c.b.x)), vec4<bool>(false, false, false, false), select(arg_1.c.b, vec4<bool>(arg_1.b.b.x, false, true, arg_1.c.b.x), vec4<bool>(var_0.b, var_0.b, false, var_0.b)))));
    return !select(!select(arg_1.c.b, !arg_1.b.b, arg_1.b.b.x), !vec4<bool>(false, any(vec2<bool>(false, true)), var_0.b, arg_1.c.b.x), vec4<bool>(true, false, !var_0.b, arg_1.c.b.x));
}

fn func_5(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: Struct_2) -> Struct_2 {
    var var_0 = vec4<f32>(-1060f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 1192f, arg_2.a.x);
    var var_1 = 4294967295u;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a.x, 1674f, -1220f, var_0.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1090f, 1000f, arg_2.a.x, -423f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.a.x, 604f, -1829f, arg_2.a.x), vec4<f32>(1000f, -579f, 1358f, arg_2.a.x), vec4<bool>(false, arg_2.c.b.x, true, arg_3.b.x))))))));
    let var_3 = arg_2.c.a;
    var var_4 = countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.c.a.b, u_input.a, ~0u), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 46915u, arg_2.b.a.c), _wgslsmith_add_vec3_u32(u_input.d.xwy, vec3<u32>(50141u, 1u, u_input.b)), ~u_input.d.yxx))) & _wgslsmith_div_u32(~1u, ~u_input.e);
    return Struct_2(func_2(true, countOneBits(reverseBits(vec2<i32>(-4648i, 0i))) ^ -_wgslsmith_mod_vec2_i32(arg_0.zy, arg_0.zy), arg_2.c.a.c).c.a, arg_2.b.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(~_wgslsmith_mod_vec4_i32(func_1(), vec4<i32>(min(-2147483647i, 1i), -23251i << (u_input.a % 32u), 1i, i32(-1i) * -58608i)), select(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true))), select(func_4(_wgslsmith_mult_i32(1i, -1i), func_2(false, vec2<i32>(-1i, 35803i), 0u)), func_2(33045u == u_input.a, vec2<i32>(2147483647i, -1i), _wgslsmith_add_u32(46937u, u_input.d.x)).c.b, !select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true))), select(func_2(true, vec2<i32>(1i, 1i), abs(1u)).b.b, vec4<bool>(true, func_2(false, vec2<i32>(-50134i, 57119i), u_input.e).b.b.x, all(vec3<bool>(true, false, false)), true), false)), Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-425f, _wgslsmith_f_op_f32(trunc(589f))) - vec2<f32>(1093f, _wgslsmith_f_op_f32(-1635f * -142f))), Struct_2(func_2(false, vec2<i32>(-26245i, -7327i), u_input.c).c.a, vec4<bool>(true, true, true, true)), func_2(true, _wgslsmith_div_vec2_i32(~vec2<i32>(-1i, -34002i), _wgslsmith_sub_vec2_i32(vec2<i32>(64352i, -3155i), vec2<i32>(0i, 1i))), 4297u).c), func_2(any(vec4<bool>(any(vec2<bool>(false, true)), false, true, true)), vec2<i32>(1i, 1i), _wgslsmith_mod_u32(~(0u ^ u_input.d.x), max(select(1u, u_input.d.x, true), _wgslsmith_div_u32(u_input.d.x, u_input.d.x)))).c);
    let var_1 = Struct_2(func_2(false, vec2<i32>(select(33385i, -2147483647i, false) >> (70591u % 32u), 7523i), var_0.a.c).b.a, !(!func_2(!var_0.b.x, firstLeadingBit(vec2<i32>(2147483647i, -1i)), 0u).b.b));
    var var_2 = Struct_4(-373f, true);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a - _wgslsmith_div_f32(var_2.a, 152f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.a, var_2.a))))) * 460f);
    let var_4 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.a, -140f))) + _wgslsmith_f_op_f32(sign(var_2.a))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-562f, var_2.a))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, var_2.a)) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_2.a, var_2.a))))), true)), vec4<u32>(select(abs(u_input.d.x), ~0u, var_2.b), ~var_1.a.a.x | u_input.a, ~37526u ^ func_5(vec4<i32>(12312i, -1i, -2147483647i, -2147483647i), var_1.b, Struct_3(vec2<f32>(120f, var_2.a), var_1, var_1), var_1).a.c, 17300u) >> (~vec4<u32>(47764u, ~u_input.c, _wgslsmith_sub_u32(var_1.a.a.x, 4294967295u), 73109u) % vec4<u32>(32u)));
}

