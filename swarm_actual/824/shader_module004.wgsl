struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: vec2<u32>,
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

var<private> global0: array<vec2<u32>, 5>;

var<private> global1: array<vec4<u32>, 18> = array<vec4<u32>, 18>(vec4<u32>(2666u, 0u, 49409u, 6851u), vec4<u32>(14569u, 0u, 0u, 0u), vec4<u32>(10454u, 17256u, 1u, 113216u), vec4<u32>(1126u, 31732u, 61492u, 79638u), vec4<u32>(1u, 19448u, 60291u, 0u), vec4<u32>(19643u, 51289u, 1u, 47593u), vec4<u32>(4294967295u, 1u, 4294967295u, 48142u), vec4<u32>(4294967295u, 0u, 16708u, 0u), vec4<u32>(4294967295u, 31898u, 4294967295u, 0u), vec4<u32>(1u, 1248u, 46123u, 19935u), vec4<u32>(44688u, 2837u, 1u, 0u), vec4<u32>(10452u, 1u, 0u, 23883u), vec4<u32>(4294967295u, 39538u, 4294967295u, 1u), vec4<u32>(34437u, 80244u, 98652u, 37982u), vec4<u32>(65466u, 1u, 55307u, 82960u), vec4<u32>(1u, 0u, 4294967295u, 31299u), vec4<u32>(42736u, 9449u, 0u, 4294967295u), vec4<u32>(22076u, 4294967295u, 22780u, 38605u));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = firstLeadingBit(abs(~(~vec2<u32>(arg_2.b.a, arg_1.b.a)) >> (vec2<u32>(abs(4294967295u), 73549u) % vec2<u32>(32u))));
    global1 = array<vec4<u32>, 18>();
    global0 = array<vec2<u32>, 5>();
    let var_1 = max(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(select(firstLeadingBit(vec3<u32>(1u, 1u, 1u)), abs(vec3<u32>(arg_0.a.a, arg_2.b.a, var_0.x)), true), min(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, arg_0.d.b.a, arg_2.b.a), vec3<u32>(u_input.c, 31281u, arg_2.b.a), vec3<u32>(0u, arg_0.c.a, 51761u)), ~vec3<u32>(1u, u_input.b, var_0.x))), firstLeadingBit(abs(min(vec3<u32>(arg_0.d.a.a, arg_1.a.a, 1u), vec3<u32>(0u, 4294967295u, arg_2.a.a))))), 75053u);
    let var_2 = abs(26903i) << (arg_2.a.a % 32u);
    return Struct_1((~(~var_0.x) | var_1) ^ arg_1.b.a);
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: Struct_3) -> Struct_3 {
    global1 = array<vec4<u32>, 18>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -393f, 719f) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, -834f, arg_0), vec3<f32>(1732f, -211f, arg_0), true)))))));
    global1 = array<vec4<u32>, 18>();
    global1 = array<vec4<u32>, 18>();
    let var_1 = arg_3.d;
    return arg_3;
}

fn func_4(arg_0: Struct_3) -> vec3<f32> {
    global0 = array<vec2<u32>, 5>();
    let var_0 = abs(~vec2<i32>(arg_0.b, -func_3(1045f, arg_0, vec4<i32>(u_input.d.x, -2147483647i, arg_0.b, 2147483647i), arg_0).b));
    let var_1 = 416f;
    var var_2 = ~(~(~vec4<i32>(-1i, var_0.x << (u_input.e.x % 32u), var_0.x, min(-2147483647i, arg_0.b))));
    var var_3 = var_1;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(355f, var_1, var_1))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(674f, var_1, var_1) * vec3<f32>(-1000f, var_1, var_1))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1269f, var_1, var_1)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, 309f, -1415f)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true))))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1, 1635f, -1045f)))));
}

fn func_1(arg_0: vec3<i32>) -> f32 {
    var var_0 = abs(u_input.c);
    var_0 = u_input.e.x;
    global1 = array<vec4<u32>, 18>();
    global1 = array<vec4<u32>, 18>();
    var var_1 = _wgslsmith_f_op_vec3_f32(func_4(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-706f * 148f) + _wgslsmith_f_op_f32(-1515f * -554f))), Struct_3(Struct_1(_wgslsmith_clamp_u32(25446u, u_input.b, u_input.e.x)), countOneBits(_wgslsmith_mod_i32(u_input.a.x, arg_0.x)), Struct_1(~48288u), Struct_2(func_2(Struct_3(Struct_1(u_input.e.x), 1i, Struct_1(4294967295u), Struct_2(Struct_1(u_input.e.x), Struct_1(u_input.b))), Struct_2(Struct_1(u_input.e.x), Struct_1(u_input.c)), Struct_2(Struct_1(u_input.c), Struct_1(u_input.e.x)), vec3<f32>(1002f, 1284f, -1753f)), Struct_1(u_input.c))), -vec4<i32>(-1i, -36593i >> (0u % 32u), -31024i, ~u_input.a.x), Struct_3(Struct_1(8163u), u_input.d.x, func_2(Struct_3(Struct_1(u_input.e.x), arg_0.x, Struct_1(u_input.c), Struct_2(Struct_1(2029u), Struct_1(28374u))), Struct_2(Struct_1(1u), Struct_1(73636u)), Struct_2(Struct_1(0u), Struct_1(4294967295u)), vec3<f32>(-1463f, -125f, 1370f)), Struct_2(Struct_1(69416u), func_2(Struct_3(Struct_1(1u), -22207i, Struct_1(u_input.e.x), Struct_2(Struct_1(4294967295u), Struct_1(u_input.c))), Struct_2(Struct_1(1u), Struct_1(42451u)), Struct_2(Struct_1(u_input.b), Struct_1(16745u)), vec3<f32>(250f, 1575f, 1000f)))))));
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0i;
    let var_1 = true;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-678f * -176f), -364f)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(562f - -1257f) + 542f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1094f - 1000f) - _wgslsmith_f_op_f32(func_1(u_input.a)))), vec2<bool>(true, var_1))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(f32(-1f) * -241f)));
}

