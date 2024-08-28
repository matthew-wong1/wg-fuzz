struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(29569u), Struct_1(42033u));

var<private> global1: u32 = 4294967295u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32, arg_1: vec3<f32>, arg_2: i32, arg_3: Struct_2) -> f32 {
    let var_0 = global0.b;
    var var_1 = ~(-1i);
    let var_2 = select(arg_3.b.a | _wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(2516u, 41265u, 14271u, var_0.a), vec4<u32>(global0.a.a, 12126u, 63374u, var_0.a)), var_0.a), 48172u, true);
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, -1000f, arg_1.x, arg_1.x) * arg_3.a)))) * arg_3.a), global0.a);
    global1 = arg_3.b.a;
    return arg_3.a.x;
}

fn func_2() -> f32 {
    let var_0 = -_wgslsmith_dot_vec2_i32(u_input.b.ww, -min(min(u_input.c.xy, vec2<i32>(u_input.b.x, u_input.a.x)), -vec2<i32>(53012i, u_input.a.x)));
    var var_1 = Struct_1(global0.a.a);
    global0 = Struct_3(global0.a, Struct_1(var_1.a << (_wgslsmith_clamp_u32(~global0.b.a, ~18762u, 10373u) % 32u)));
    global0 = Struct_3(Struct_1(_wgslsmith_mod_u32(~7689u, ~abs(global0.a.a))), global0.b);
    let var_2 = Struct_3(global0.b, Struct_1(global0.b.a));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1136f), _wgslsmith_f_op_f32(-919f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(0i, _wgslsmith_f_op_vec3_f32(vec3<f32>(901f, -1000f, -838f) * vec3<f32>(1091f, -1389f, 812f)), var_0, Struct_2(vec4<f32>(1047f, -167f, -632f, 1542f), var_2.b)))))));
}

fn func_4(arg_0: vec2<f32>) -> Struct_2 {
    let var_0 = true;
    var var_1 = var_0;
    var var_2 = all(vec4<bool>(true, any(vec3<bool>(true, false, var_0)), !(!var_0), any(!vec4<bool>(var_0, true, var_0, var_0)))) | var_0;
    var_2 = true;
    let var_3 = u_input.b.xyy;
    return Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1031f, arg_0.x, 406f, -134f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(763f, -608f, arg_0.x, arg_0.x) * vec4<f32>(-1510f, arg_0.x, -1062f, arg_0.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, 1000f, arg_0.x)))), Struct_1(global0.b.a));
}

fn func_1(arg_0: vec2<bool>) -> vec2<bool> {
    let var_0 = func_4(vec2<f32>(-559f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))));
    let var_1 = arg_0.x;
    let var_2 = var_0.a.xw;
    let var_3 = func_4(_wgslsmith_f_op_vec2_f32(step(var_0.a.ww, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.x, 1433f), var_0.a.xy, arg_0)))))));
    var var_4 = !var_1;
    return !vec2<bool>(!select(!arg_0.x, false, false), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.a, 4294967295u, global0.a.a, 4294967295u) >> (vec4<u32>(var_0.b.a, global0.b.a, 23307u, var_3.b.a) % vec4<u32>(32u)), ~vec4<u32>(1u, 31158u, 4294967295u, 13741u)) < abs(122883u));
}

fn func_5(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: vec2<bool>) -> Struct_1 {
    global0 = Struct_3(func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(round(347f))))).b, Struct_1(~1u));
    global1 = global0.b.a;
    global0 = Struct_3(Struct_1(global0.b.a), func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, arg_0.x) - vec2<f32>(-350f, 422f))).b);
    let var_0 = firstTrailingBit(arg_1);
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.x, -1435f, arg_0.x, arg_0.x), _wgslsmith_div_vec4_f32(vec4<f32>(1000f, 1497f, -1000f, 248f), vec4<f32>(arg_0.x, arg_0.x, 1620f, arg_0.x)))))))), Struct_1(~firstLeadingBit(select(global0.a.a, global0.a.a, true))));
    return func_4(vec2<f32>(-907f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.a.x)))))).b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global0.b.a;
    global0 = Struct_3(func_5(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(861f, 670f)))))), ~u_input.a.yz, select(func_1(select(vec2<bool>(true, false), vec2<bool>(true, false), true)), vec2<bool>(true, true), vec2<bool>(true, true))), Struct_1(firstTrailingBit(43078u) & abs(0u)));
    var var_0 = max(~max(vec4<u32>(25720u, _wgslsmith_mod_u32(11534u, 36192u), 0u, global0.a.a ^ global0.a.a), ~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, global0.a.a, global0.b.a, global0.a.a), vec4<u32>(global0.b.a, 4294967295u, global0.b.a, 30126u))), ~_wgslsmith_mod_vec4_u32((vec4<u32>(global0.b.a, 0u, 0u, global0.a.a) ^ vec4<u32>(global0.b.a, global0.b.a, global0.b.a, global0.b.a)) & ~vec4<u32>(42408u, global0.a.a, global0.a.a, 4294967295u), min(~vec4<u32>(global0.a.a, 23229u, 1u, global0.a.a), vec4<u32>(global0.a.a, global0.b.a, global0.a.a, global0.b.a))));
    let var_1 = true;
    let var_2 = any(!vec4<bool>(any(!vec3<bool>(false, var_1, var_1)), false, select(u_input.b.x != u_input.a.x, all(vec3<bool>(false, var_1, var_1)), global0.b.a != 16040u), true));
    let var_3 = Struct_1(~(~(~func_5(vec2<f32>(1595f, 1053f), u_input.c.yx, vec2<bool>(false, var_1)).a)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a, vec3<i32>(firstLeadingBit(abs(-2147483647i)), _wgslsmith_mod_i32(-abs(-2147483647i), _wgslsmith_add_i32(u_input.c.x, u_input.b.x >> (var_3.a % 32u))), -53907i), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(235f, 992f, 1213f, -1278f)))))))));
}

