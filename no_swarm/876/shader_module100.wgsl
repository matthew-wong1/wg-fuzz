struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 22>;

var<private> global1: Struct_1 = Struct_1(1i, vec2<bool>(false, true), -12429i);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec2<f32>) -> vec4<f32> {
    var var_0 = 0u;
    let var_1 = arg_1;
    global1 = Struct_1(_wgslsmith_mod_i32(_wgslsmith_div_i32(43545i, -2147483647i), 5127i), vec2<bool>(true, !arg_1.b.x), abs(u_input.c));
    global1 = var_1;
    var var_2 = var_1;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(564f, -265f, 637f, arg_2.x), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, arg_2.x, -1000f, 566f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.x, arg_2.x, arg_2.x, 252f), vec4<f32>(333f, arg_2.x, arg_2.x, arg_2.x), false)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2.x, arg_2.x, -1669f, -888f)))), select(!vec4<bool>(var_1.b.x, true, var_2.b.x, var_1.b.x), select(vec4<bool>(false, var_2.b.x, var_1.b.x, var_2.b.x), vec4<bool>(arg_1.b.x, global1.b.x, arg_1.b.x, var_1.b.x), arg_1.b.x), all(var_1.b))))) - vec4<f32>(1f, -1000f, _wgslsmith_f_op_f32(abs(arg_2.x)), arg_2.x));
}

fn func_2(arg_0: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec4<i32>(arg_0.a, -45397i, global1.a, 1i) << (vec4<u32>(u_input.a.x, 479u, 15916u, 4294967295u) % vec4<u32>(32u)), Struct_1(1i, vec2<bool>(global1.b.x, true), -15398i), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2192f, -710f) - vec2<f32>(-988f, -1164f))))), vec4<f32>(_wgslsmith_f_op_f32(sign(983f)), _wgslsmith_f_op_f32(abs(-1041f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-118f, -2668f)))), -515f)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(180f, -423f)), -474f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 406f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1753f, 886f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-278f, 1072f, 1324f, -1753f))))), true));
    let var_1 = arg_0;
    let var_2 = var_1;
    global0 = array<vec3<i32>, 22>();
    global0 = array<vec3<i32>, 22>();
    return i32(-1i) * -countOneBits(_wgslsmith_dot_vec4_i32(-vec4<i32>(53961i, 2147483647i, 0i, u_input.b), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, var_2.c, 0i, -1i), vec4<i32>(global1.a, arg_0.c, 2147483647i, -61159i), vec4<i32>(-1i, 1i, u_input.c, global1.c))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: vec4<bool>) -> u32 {
    let var_0 = (u_input.d.xy | vec2<i32>(reverseBits(i32(-1i) * -1i), ~0i)) & vec2<i32>(min(arg_0.c, reverseBits(26207i)) >> (u_input.a.x % 32u), arg_1.c);
    let var_1 = Struct_1(arg_1.c, vec2<bool>(arg_1.b.x, arg_3.x), ~(i32(-1i) * -firstTrailingBit(var_0.x)));
    global0 = array<vec3<i32>, 22>();
    global1 = Struct_1(~_wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.c, _wgslsmith_mod_i32(global1.a, var_1.c)), _wgslsmith_mod_i32(_wgslsmith_sub_i32(var_0.x, 0i), -34470i)), select(vec2<bool>(true, select(false, all(vec4<bool>(false, arg_0.b.x, false, false)), all(arg_3.wwx))), select(vec2<bool>(arg_0.b.x, true), select(select(arg_1.b, arg_1.b, var_1.b.x), select(vec2<bool>(true, arg_3.x), var_1.b, vec2<bool>(true, false)), select(arg_0.b, vec2<bool>(true, arg_3.x), arg_3.ww)), false), !arg_3.wz), reverseBits(var_1.a));
    let var_2 = vec4<bool>(!(!select(true, true, any(arg_3))), all(arg_3), global1.b.x && select(all(!vec4<bool>(arg_0.b.x, arg_1.b.x, true, arg_3.x)), arg_0.b.x, false), !arg_0.b.x);
    return abs(abs(18064u)) >> (~arg_2 % 32u);
}

fn func_1(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    let var_0 = func_4(arg_2, Struct_1(func_2(Struct_1(i32(-1i) * -3446i, select(vec2<bool>(true, false), arg_2.b, false), arg_2.a)), vec2<bool>(!arg_1, true), min(min(_wgslsmith_clamp_i32(arg_2.a, global1.c, arg_2.a), arg_2.c), -_wgslsmith_div_i32(global1.a, global1.c))), abs(~_wgslsmith_add_u32(~80759u, u_input.a.x & 4294967295u)), !(!vec4<bool>(global1.b.x, arg_1, true, arg_1 | true)));
    global1 = arg_2;
    let var_1 = arg_2;
    return Struct_1(_wgslsmith_dot_vec2_i32(u_input.d.zy, u_input.d.yz), !(!select(vec2<bool>(false, arg_1), global1.b, arg_2.b.x)), max(u_input.d.x, -43387i));
}

fn func_5(arg_0: Struct_1) -> vec3<u32> {
    let var_0 = u_input.a.x;
    var var_1 = arg_0;
    var var_2 = Struct_1(~max(_wgslsmith_div_i32(-45691i, 22946i), 58311i), func_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-851f, 317f) - vec2<f32>(1000f, -360f))), vec2<f32>(_wgslsmith_f_op_f32(1000f - 545f), -488f))), arg_0.b.x, arg_0).b, func_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-846f))), -1190f), true, Struct_1(arg_0.c, func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1258f) - vec2<f32>(860f, -325f)), !var_1.b.x, func_1(vec2<f32>(-542f, 506f), global1.b.x, arg_0)).b, -(~global1.c))).a);
    var var_3 = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(425f, 816f) - vec2<f32>(-1302f, -349f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1562f, -1101f) + vec2<f32>(-937f, -564f))))))), var_1.b.x, func_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-594f, 909f)) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, 1741f), vec2<f32>(1157f, -610f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1217f, 766f), vec2<f32>(-1525f, 838f)) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(260f, 343f)))), all(select(vec3<bool>(global1.b.x, false, true), vec3<bool>(false, false, var_1.b.x), vec3<bool>(arg_0.b.x, var_2.b.x, false))))), -1i > (abs(arg_0.a) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(35042u, 90647u, u_input.a.x, 0u), vec4<u32>(30099u, var_0, var_0, 22592u)) % 32u)), func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(3785f, -475f) * vec2<f32>(927f, -352f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1790f, -707f) * vec2<f32>(1557f, -123f))), var_1.b.x, func_1(vec2<f32>(-249f, 361f), 103041u <= u_input.a.x, func_1(vec2<f32>(-875f, -1000f), false, Struct_1(-1i, var_2.b, global1.a))))));
    let var_4 = arg_0;
    return min(_wgslsmith_div_vec3_u32(vec3<u32>(9558u, u_input.a.x, 0u), firstLeadingBit(vec3<u32>(~33768u, u_input.a.x, 4294967295u))), vec3<u32>(24969u, 1u, u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 22>();
    let var_0 = _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(func_5(func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1478f, -1024f) + vec2<f32>(480f, -482f)), u_input.a.x <= u_input.a.x, Struct_1(u_input.c, global1.b, u_input.d.x))), ~_wgslsmith_mult_vec3_u32(~vec3<u32>(13970u, 1u, 4294967295u), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(0u, 108293u, u_input.a.x)))), _wgslsmith_dot_vec2_u32(~(~u_input.a), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 0u), vec3<u32>(19791u, u_input.a.x, 4294967295u)) & u_input.a.x, func_5(func_1(vec2<f32>(-689f, 922f), global1.b.x, Struct_1(global1.a, vec2<bool>(true, true), global1.a))).x)));
    let var_1 = u_input.a.x;
    let var_2 = Struct_1(i32(-1i) * -countOneBits(1i), !global1.b, -33968i);
    global1 = var_2;
    var var_3 = _wgslsmith_div_f32(-572f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(f32(-1f) * -701f))));
    var var_4 = _wgslsmith_mult_i32(global1.c, -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(~(-1i), 4517u);
}

