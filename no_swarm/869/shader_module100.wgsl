struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec3<i32>,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: bool;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    let var_0 = Struct_3(Struct_2(_wgslsmith_clamp_vec3_i32(-vec3<i32>(global0.a.x, -1i, 2147483647i), _wgslsmith_mod_vec3_i32(global0.a, vec3<i32>(global0.a.x, global0.a.x, 22954i)), ~global0.a) << (vec3<u32>(66959u, 4294967295u ^ arg_0.x, u_input.a) % vec3<u32>(32u)), 590f), Struct_2(_wgslsmith_sub_vec3_i32((global0.a >> (arg_0 % vec3<u32>(32u))) ^ -global0.a, reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(global0.a.x, global0.a.x, global0.a.x), vec3<i32>(-2147483647i, global0.a.x, global0.a.x), global0.a))), _wgslsmith_f_op_f32(f32(-1f) * -156f)), _wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(1u, arg_0.x, 4294967295u, 1u) << (min(vec4<u32>(128273u, u_input.a, u_input.a, u_input.a), vec4<u32>(16439u, arg_0.x, u_input.a, 37031u)) % vec4<u32>(32u))), firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(41015u, 35218u, 20496u, 0u) >> (vec4<u32>(4294967295u, u_input.a, 114395u, u_input.a) % vec4<u32>(32u)), vec4<u32>(u_input.a, 27293u, u_input.a, arg_0.x), vec4<u32>(arg_0.x, u_input.a, 11470u, arg_0.x)))));
    let var_1 = var_0.a;
    var var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(2044f, -761f, var_0.a.b, 801f), vec4<f32>(-573f, -256f, var_0.b.b, -1513f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(454f, var_0.a.b, var_0.a.b, -1631f) * vec4<f32>(-730f, 1833f, -1909f, 1000f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1474f), _wgslsmith_f_op_f32(978f - var_1.b), var_0.a.b, _wgslsmith_f_op_f32(var_0.b.b - var_1.b))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-123f + global0.b), _wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(select(610f, 1024f, false)), -215f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.b, 100f, 764f, var_1.b)) * vec4<f32>(var_0.a.b, 141f, 316f, -325f))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), false)), vec4<bool>(true, true, true, true))))));
    let var_3 = ~arg_0 >> (_wgslsmith_mod_vec3_u32(~max(~var_0.c.xyy, _wgslsmith_mod_vec3_u32(arg_0, var_0.c.xxy)), vec3<u32>(min(93916u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c.x, u_input.a, 4294967295u), var_0.c.ywy)), ~select(61248u, 1u, false), 1u)) % vec3<u32>(32u));
    let var_4 = global0.a;
    return _wgslsmith_div_u32(~countOneBits(6034u), ~(~10283u));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_2) -> Struct_3 {
    let var_0 = 16232i;
    global0 = arg_2;
    var var_1 = u_input.a;
    global1 = arg_0.x;
    global0 = Struct_2(vec3<i32>(1i, ~_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(arg_2.a, vec3<i32>(var_0, global0.a.x, arg_1.a.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(20833i, 2147483647i, 0i), vec3<i32>(arg_1.a.x, -25953i, 1i))), -(~arg_1.a.x) << (abs(~4294967295u) % 32u)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)) + -1204f))));
    return Struct_3(arg_2, Struct_2(arg_2.a, -366f), vec4<u32>(func_3(~vec3<u32>(4294967295u, u_input.a, u_input.a)), _wgslsmith_div_u32(u_input.a, 1u), _wgslsmith_clamp_u32(~1u, 63303u, 63795u), 4294967295u));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: Struct_3) -> u32 {
    let var_0 = Struct_3(Struct_2(~vec3<i32>(arg_2.b.a.x, arg_3.b.a.x, -32672i) ^ arg_2.b.a, _wgslsmith_f_op_f32(round(global0.b))), arg_2.b, _wgslsmith_sub_vec4_u32(arg_2.c, select(~arg_3.c >> (vec4<u32>(u_input.a, arg_3.c.x, 1u, 1u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(~arg_2.c, arg_3.c), select(vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, arg_0.x, true, true), true))));
    let var_1 = func_2(select(arg_0, !vec2<bool>(!arg_0.x, true), arg_0.x), func_2(vec2<bool>(select(arg_0.x, !arg_0.x, arg_0.x), true), func_2(select(select(arg_0, vec2<bool>(false, arg_0.x), arg_0.x), vec2<bool>(true, false), arg_0), Struct_2(arg_2.b.a, -237f), Struct_2(var_0.a.a, _wgslsmith_f_op_f32(f32(-1f) * -1040f))).b, arg_2.a).b, var_0.b);
    global1 = false;
    return _wgslsmith_clamp_u32(~firstTrailingBit(_wgslsmith_mult_u32(max(arg_3.c.x, 1002u), _wgslsmith_mult_u32(1u, 22065u))), func_3(var_1.c.yzx), ~1u);
}

fn func_1(arg_0: i32, arg_1: vec3<i32>) -> vec3<u32> {
    var var_0 = true;
    var var_1 = vec2<bool>(true, true);
    var var_2 = !(!(!select(!vec4<bool>(false, var_1.x, var_1.x, false), select(vec4<bool>(var_1.x, true, var_1.x, false), vec4<bool>(var_1.x, true, var_1.x, var_1.x), var_1.x), var_1.x)));
    let var_3 = arg_0;
    var var_4 = vec3<i32>(_wgslsmith_mult_i32(global0.a.x, -17133i), -2147483647i, arg_0);
    return ~vec3<u32>(u_input.a, firstTrailingBit(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(73278u, 1u, u_input.a)), select(vec3<u32>(47956u, u_input.a, u_input.a), vec3<u32>(u_input.a, 0u, u_input.a), var_2.xyy))), abs(func_4(!var_2.yz, ~vec3<u32>(u_input.a, u_input.a, 4294967295u), func_2(var_2.yx, Struct_2(vec3<i32>(var_3, var_3, -37854i), global0.b), Struct_2(global0.a, 477f)), func_2(var_2.zz, Struct_2(vec3<i32>(var_3, arg_0, var_3), -651f), Struct_2(vec3<i32>(arg_0, var_4.x, arg_0), global0.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec3<u32>(firstLeadingBit(u_input.a), 4294967295u, 1u) << ((func_1(firstLeadingBit(firstLeadingBit(global0.a.x)), vec3<i32>(-2147483647i, global0.a.x, global0.a.x) | (global0.a | vec3<i32>(global0.a.x, -42008i, 1i))) | ~select(~vec3<u32>(u_input.a, u_input.a, 25718u), vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<bool>(true, true, true))) % vec3<u32>(32u));
    global0 = Struct_2(global0.a, -362f);
    let var_1 = 0u;
    global1 = any(!vec4<bool>(true, true, any(vec2<bool>(false, true)), true != select(false, false, true)));
    let var_2 = global0.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~(~_wgslsmith_clamp_u32(0u, var_1, var_0.x)), u_input.a, 4592u), global0.b, vec3<i32>(~global0.a.x, 0i, global0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(224f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.b, -1658f, 244f, -575f))))))));
}

