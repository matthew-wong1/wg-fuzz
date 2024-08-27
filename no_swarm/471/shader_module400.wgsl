struct Struct_1 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> vec3<i32> {
    global0 = Struct_1(~(~(~countOneBits(78967u))), true);
    let var_0 = Struct_1(1u, global1.b);
    global0 = var_0;
    var var_1 = Struct_1(~_wgslsmith_mult_u32(~(~50123u), 13945u), false);
    var var_2 = Struct_1(global0.a, !(!global0.b));
    return min(vec3<i32>(~u_input.b.x, 1i, -45720i), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d.x, -67047i, u_input.b.x), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, 2147483647i, u_input.b.x), u_input.d.xzx), vec3<i32>(u_input.d.x, arg_0, u_input.a) << (vec3<u32>(0u, 27287u, var_1.a) % vec3<u32>(32u))) & vec3<i32>(i32(-1i) * -33194i, i32(-1i) * -6746i, ~arg_0)) >> (vec3<u32>(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(17613u, global0.a, 4709u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.a, 1923u, global1.a), vec3<u32>(var_0.a, var_2.a, 33180u), vec3<u32>(1u, 0u, 45968u)) | reverseBits(vec3<u32>(1u, global0.a, var_0.a))), global1.a, min(~firstTrailingBit(var_0.a), ~1u)) % vec3<u32>(32u));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = select(~(u_input.d.yyz >> (vec3<u32>(global0.a, global0.a, 86634u | global0.a) % vec3<u32>(32u))), min(u_input.d.xyy, firstTrailingBit(abs(u_input.d.zxx))) ^ func_3(~1i), global1.b);
    global0 = arg_0;
    let var_1 = !select(select(!select(vec4<bool>(false, global1.b, true, false), vec4<bool>(arg_0.b, false, global0.b, global0.b), false), select(select(vec4<bool>(false, global1.b, global1.b, true), vec4<bool>(false, global0.b, global1.b, global1.b), global0.b), select(vec4<bool>(false, global1.b, global0.b, global0.b), vec4<bool>(global1.b, false, true, true), vec4<bool>(arg_0.b, false, false, global0.b)), vec4<bool>(global0.b, false, true, false)), !select(vec4<bool>(global1.b, global0.b, global1.b, global0.b), vec4<bool>(true, true, global1.b, global0.b), vec4<bool>(false, true, false, arg_0.b))), !(!vec4<bool>(true, arg_0.b, global0.b, true)), global0.b);
    global0 = arg_0;
    var var_2 = ~countOneBits((vec3<i32>(-1i) * -vec3<i32>(u_input.c, u_input.c, -1i)) ^ ~vec3<i32>(30691i, u_input.b.x, -1i));
    return Struct_1(arg_0.a, var_1.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)));
    global0 = func_2(func_2(func_2(func_2(func_2(Struct_1(4294967295u, false))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-508f, var_0.x, -150f, _wgslsmith_f_op_f32(trunc(var_0.x))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, 1192f)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(262f, 521f, 1000f, 1421f), vec4<f32>(-431f, -208f, var_0.x, 1298f)))), vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), 1501f, _wgslsmith_f_op_f32(f32(-1f) * -1676f), _wgslsmith_f_op_f32(step(852f, -533f)))))));
    global1 = arg_0;
    global0 = func_2(arg_2);
    return arg_0;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global0 = func_4(func_2(Struct_1(46651u, abs(global0.a) == _wgslsmith_mod_u32(global0.a, 66765u))), arg_0, func_4(arg_0, arg_0, func_4(arg_0, arg_0, func_2(func_2(Struct_1(4294967295u, arg_0.b))))));
    var var_0 = 157f;
    var var_1 = func_2(arg_0);
    var var_2 = vec4<u32>(firstTrailingBit(firstLeadingBit(32674u)), _wgslsmith_mod_u32(abs(var_1.a ^ global0.a) ^ ~abs(global0.a), _wgslsmith_sub_u32(arg_0.a, min(global0.a, 0u) & var_1.a)), _wgslsmith_div_u32(global0.a, arg_0.a | global0.a) ^ (24947u << (arg_0.a % 32u)), var_1.a);
    var_2 = reverseBits(vec4<u32>(abs(~var_2.x), _wgslsmith_mod_u32(global0.a, var_2.x), 0u >> (((4294967295u ^ var_2.x) << (7387u % 32u)) % 32u), abs(~(~var_2.x))));
    return func_2(arg_0);
}

fn func_6(arg_0: Struct_1, arg_1: f32, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(select(~_wgslsmith_add_u32(~global1.a, ~global1.a), global0.a, !global0.b), !global1.b);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-365f, _wgslsmith_f_op_f32(-350f - -303f), arg_1, _wgslsmith_f_op_f32(-arg_1)))));
    global1 = arg_0;
    let var_2 = vec3<f32>(1142f, 112f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)));
    global0 = arg_0;
    return Struct_1(select(global1.a, var_0.a, !(!(!global0.b))), _wgslsmith_f_op_f32(min(var_1.x, -1591f)) == var_1.x);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: bool) -> vec2<i32> {
    var var_0 = vec2<bool>(arg_2, !any(!arg_1.yzx));
    let var_1 = true;
    global1 = func_6(func_5(func_4(func_2(Struct_1(global0.a, false)), Struct_1(select(global1.a, 7949u, global1.b), all(arg_0)), Struct_1(1u, false))), -253f, (-1i ^ _wgslsmith_dot_vec2_i32(u_input.d.xz, u_input.d.wx)) >> (max(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.a, 17548u, 4294967295u), vec3<u32>(global1.a, 0u, 1u))), 1u) % 32u), func_2(Struct_1(global1.a, arg_2 && true)));
    global0 = func_2(func_4(func_2(Struct_1(23883u, global0.b)), Struct_1(global0.a, true), Struct_1(0u, !arg_0.x || !arg_2)));
    let var_2 = func_6(Struct_1(91292u, true), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-317f)))), (func_3(1i).x ^ u_input.c) & -49211i, func_6(func_5(func_6(Struct_1(global0.a, false), _wgslsmith_f_op_f32(f32(-1f) * -893f), _wgslsmith_add_i32(-2419i, u_input.b.x), func_5(Struct_1(512u, true)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-369f * -795f) - _wgslsmith_f_op_f32(-259f - 274f)))), -29678i, func_5(Struct_1(global1.a, arg_0.x))));
    return vec2<i32>(_wgslsmith_mod_i32(u_input.a << (_wgslsmith_sub_u32(21562u | global1.a, _wgslsmith_div_u32(42664u, global1.a)) % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.b.x, ~u_input.d.x, -1i), u_input.d)), i32(-1i) * -22641i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(0u, global0.b);
    global1 = Struct_1(0u, false);
    var var_1 = vec2<i32>(u_input.b.x, u_input.c);
    var var_2 = max(vec2<i32>(-1i, var_1.x), -func_1(select(vec2<bool>(true, true), vec2<bool>(true, global1.b), vec2<bool>(true, var_0.b)), !vec4<bool>(global1.b, global1.b, global1.b, global1.b), true)) >> (_wgslsmith_div_vec2_u32(~min(_wgslsmith_div_vec2_u32(vec2<u32>(global1.a, 46691u), vec2<u32>(1u, 1u)), vec2<u32>(var_0.a, global0.a) << (vec2<u32>(15907u, 66095u) % vec2<u32>(32u))), _wgslsmith_mod_vec2_u32(~vec2<u32>(12621u, 28984u), ~vec2<u32>(var_0.a, 1u)) & _wgslsmith_div_vec2_u32(abs(vec2<u32>(32523u, 51997u)), ~vec2<u32>(global0.a, 13071u))) % vec2<u32>(32u));
    let var_3 = var_0;
    global1 = func_5(func_4(Struct_1(146794u, _wgslsmith_f_op_f32(max(-1702f, 2253f)) < _wgslsmith_f_op_f32(ceil(-698f))), func_2(func_4(var_0, var_3, func_4(Struct_1(var_3.a, var_0.b), var_3, var_3))), var_0));
    let var_4 = Struct_1(1206u, true);
    let var_5 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(3117f, 264f, -1209f, -702f) - _wgslsmith_div_vec4_f32(vec4<f32>(-1124f, -953f, -1140f, 1876f), vec4<f32>(196f, 2033f, -807f, -261f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2073f, 842f, -1750f, -733f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(656f, -1131f, -1081f, 2111f) - vec4<f32>(319f, -751f, 1355f, -533f)), !global1.b)))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.yx);
}

