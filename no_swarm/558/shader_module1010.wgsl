struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -61138i;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec4<f32> {
    var var_0 = _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(reverseBits(~vec4<i32>(-1i, 0i, u_input.a, u_input.a)), max(countOneBits(vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a)), vec4<i32>(-36596i, -19259i, -1i, 1i))), u_input.a) >> (27950u % 32u);
    var var_1 = 25576i;
    var_1 = reverseBits(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(u_input.a, 0i, 0i, 1i)), vec4<i32>(_wgslsmith_add_i32(0i, u_input.a), -2147483647i, u_input.a, 1i))) ^ u_input.a;
    let var_2 = Struct_3(1510f, _wgslsmith_dot_vec2_u32(vec2<u32>(~_wgslsmith_mod_u32(4294967295u, 4294967295u), countOneBits(53600u)), ~(~vec2<u32>(1u, 0u))), vec2<f32>(_wgslsmith_f_op_f32(763f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(293f)), -991f)), 604f), Struct_2(Struct_1(vec2<bool>(all(vec3<bool>(true, false, false)), true), ~(vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i) << (vec4<u32>(4294967295u, 0u, 4294967295u, 0u) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-950f, -993f, -1545f, 2967f) - vec4<f32>(-1875f, -990f, -376f, -718f))), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true))))), any(!select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), true), vec4<bool>(false, true, false, false), true)));
    var var_3 = ~vec2<u32>(0u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.b, var_2.b, 0u), vec3<u32>(29392u, var_2.b, var_2.b))) & vec2<u32>(var_2.b, 1u);
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c.x, _wgslsmith_f_op_f32(var_2.c.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.d.a.c.x + 305f))), var_2.d.a.c.x, 1166f));
}

fn func_2() -> vec2<f32> {
    global0 = _wgslsmith_dot_vec2_i32(vec2<i32>(firstLeadingBit(u_input.a), -1i), vec2<i32>(u_input.a | 5090i, -u_input.a));
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1035f, -1139f, 1000f, -1484f))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1614f, 1000f, -470f, 1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(680f, 1723f, 166f, 905f))))))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-592f, -2291f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(946f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-738f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_3()), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-700f, 1516f, 1175f, -466f), vec4<f32>(-1344f, 1148f, 250f, -1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-741f, 1570f, 1184f, -273f)), false)), vec4<bool>(true, true, true, true))))));
    let var_1 = select(vec3<u32>(select(firstTrailingBit(~68918u), ~select(0u, 28923u, false), select(0u, 65573u, true) <= 1u), firstTrailingBit(_wgslsmith_add_u32(1u, ~10612u)), ~_wgslsmith_clamp_u32(1u, _wgslsmith_div_u32(4294967295u, 1u), 4294967295u)), vec3<u32>(1u, 1u, 1u), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(select(true, false, false), var_0.x >= -765f, all(vec3<bool>(false, true, false)))), vec3<bool>(true, true, true), vec3<bool>(true, !(u_input.a <= 1i), false)));
    let var_2 = ~firstLeadingBit(~7181u);
    global0 = u_input.a;
    return _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_0.wz)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.x, var_0.x), var_0.zy)) + var_0.zw)), _wgslsmith_f_op_vec2_f32(var_0.yw + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)) - _wgslsmith_f_op_vec2_f32(var_0.ww - vec2<f32>(var_0.x, var_0.x))), _wgslsmith_f_op_vec2_f32(-var_0.yz))))));
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-679f + _wgslsmith_f_op_f32(935f * -677f)) + _wgslsmith_div_f32(-525f, 1000f)) - -988f), _wgslsmith_dot_vec3_u32(vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 37489u, 1u), vec4<u32>(0u, 0u, 4294967295u, 1u)), firstLeadingBit(59680u), 1u), ~vec3<u32>(1u, 1u, 1u)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(346f, 1331f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1301f, 188f)), _wgslsmith_f_op_vec2_f32(func_2()))))), Struct_2(Struct_1(vec2<bool>(true, true), _wgslsmith_clamp_vec4_i32(select(vec4<i32>(2147483647i, -1i, -2147483647i, u_input.a), vec4<i32>(39751i, u_input.a, 0i, 2147483647i), true), select(vec4<i32>(u_input.a, 3096i, 1i, -67726i), vec4<i32>(2147483647i, 1i, 2147483647i, -11812i), false), vec4<i32>(u_input.a, u_input.a, 1i, u_input.a)), vec4<f32>(1f, 1f, 1f, 1f), vec3<bool>(true, true, true))), !all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), false))));
    var var_1 = abs(max(var_0.d.a.b.zyz, _wgslsmith_add_vec3_i32(-vec3<i32>(u_input.a, u_input.a, var_0.d.a.b.x), firstLeadingBit(var_0.d.a.b.xyy))));
    let var_2 = any(vec4<bool>(select(true, any(var_0.d.a.d), true), false, !(!any(vec4<bool>(var_0.d.a.a.x, var_0.d.a.d.x, true, false))), true));
    let var_3 = var_0.e;
    return Struct_2(Struct_1(!vec2<bool>(var_0.e, true), var_0.d.a.b | var_0.d.a.b, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.a.c.x, -1423f, var_0.c.x, -676f)), vec4<f32>(var_0.a, var_0.a, var_0.a, var_0.d.a.c.x)))), !var_0.d.a.d));
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: vec2<bool>, arg_3: Struct_2) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(arg_3.a.c.xz - _wgslsmith_f_op_vec4_f32(func_3()).ww);
    global0 = _wgslsmith_mult_i32(arg_3.a.b.x, -arg_3.a.b.x);
    let var_1 = arg_3.a;
    let var_2 = true;
    global0 = 3242i;
    return ~(~vec2<u32>(35387u, ~arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(~_wgslsmith_add_u32(47196u, 0u), 1u), vec2<u32>(max(_wgslsmith_div_u32(15620u, 20829u), 1u), ~1u)) << ((~select(~vec2<u32>(4294967295u, 4294967295u), ~vec2<u32>(1u, 10936u), true) >> (max(_wgslsmith_clamp_vec2_u32(~vec2<u32>(68945u, 15420u), ~vec2<u32>(4294967295u, 0u), ~vec2<u32>(4294967295u, 4294967295u)), func_4(28738u, abs(53108u), vec2<bool>(true, true), func_1())) % vec2<u32>(32u))) % vec2<u32>(32u));
    global0 = _wgslsmith_sub_i32(56410i, 1i);
    global0 = u_input.a;
    let var_1 = -(~(~u_input.a));
    global0 = ~(29591i ^ _wgslsmith_div_i32(reverseBits(abs(u_input.a)), abs(~552i)));
    let var_2 = vec2<u32>(firstTrailingBit(_wgslsmith_div_u32(var_0.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(11281u, var_0.x, 2648u, 72068u), ~vec4<u32>(10018u, var_0.x, 38483u, var_0.x)))), ~var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(-888f);
}

