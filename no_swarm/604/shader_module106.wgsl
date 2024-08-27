struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

var<private> global2: array<vec2<u32>, 2>;

var<private> global3: f32;

var<private> global4: bool;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec2<f32>) -> vec3<i32> {
    let var_0 = -451f;
    let var_1 = ~select(global0.d.wzy, ~_wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(1u, 58859u, arg_0.d.x)), _wgslsmith_sub_vec3_u32(global1.d.xxy, global1.d.www)), true);
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(global0.a.x, arg_0.a.x)), _wgslsmith_f_op_f32(-174f - var_0), global0.a.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.a) * _wgslsmith_f_op_vec3_f32(arg_0.a * vec3<f32>(-1194f, global1.a.x, arg_0.a.x))) * arg_0.a))), var_1.x, vec4<i32>(arg_1.x, 1i, -2147483647i, -1i) >> (_wgslsmith_sub_vec4_u32(global1.d, vec4<u32>(arg_0.d.x, 0u, abs(arg_0.d.x), 134532u)) % vec4<u32>(32u)), ~(~global1.d), -global1.e);
    let var_2 = 736f;
    let var_3 = global1.a.yx;
    return -max(abs(~vec3<i32>(-15958i, arg_0.e, global1.c.x)), ~(~(vec3<i32>(-30953i, global0.c.x, global1.e) >> (vec3<u32>(1u, 1u, 60616u) % vec3<u32>(32u)))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec3<f32>) -> vec2<bool> {
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(arg_0.a.x, _wgslsmith_f_op_f32(-global0.a.x))), -749f)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(285f + arg_0.a.x))))) * global1.a.x);
    global4 = !any(vec3<bool>(false, true, arg_1.x));
    var var_0 = Struct_2(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(~arg_0.e, -1i ^ global1.e), ~arg_0.e ^ -69836i, ~(-1i)), vec3<i32>(-1i, arg_0.c.x, ~16500i) | func_2(Struct_1(vec3<f32>(819f, global0.a.x, arg_2.x), 1u, vec4<i32>(global0.e, global1.c.x, arg_0.e, arg_0.e), vec4<u32>(global1.d.x, global1.b, arg_0.b, 21063u), global1.e), abs(vec4<i32>(-38609i, -1i, global1.c.x, 0i)), _wgslsmith_f_op_vec2_f32(step(arg_2.zy, arg_0.a.xx)))), true, Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-793f, 548f, global1.a.x) + _wgslsmith_f_op_vec3_f32(arg_0.a - global0.a)))), abs(global1.d.x ^ 57893u) >> (global1.b % 32u), arg_0.c, _wgslsmith_div_vec4_u32(arg_0.d, arg_0.d), ~max(19569i, -10688i)), arg_0);
    global2 = array<vec2<u32>, 2>();
    var var_1 = Struct_2(var_0.c.c.wwy, false, var_0.c, var_0.c);
    return arg_1.zx;
}

fn func_3() -> u32 {
    global4 = true;
    global1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.a.x))), -105f, _wgslsmith_f_op_f32(min(-554f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(477f - 1202f))))), global0.b, ~(~(~_wgslsmith_div_vec4_i32(vec4<i32>(37234i, global0.e, global1.e, 8660i), vec4<i32>(-6500i, -2147483647i, -1i, global0.c.x)))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(4297u, global0.d.x, 1u, 4294967295u), select(vec4<u32>(21281u, global1.b, global0.d.x, 4294967295u), global1.d, false)) & global1.d, -2147483647i);
    var var_0 = !any(select(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true), vec3<bool>(global1.a.x > 856f, true, true)));
    var var_1 = Struct_2(abs(-vec3<i32>(11819i, 21049i, min(global0.e, global1.c.x))), func_1(Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.a.x, global1.a.x, global1.a.x), global0.a, vec3<bool>(false, false, false))), u_input.a, vec4<i32>(37214i, 45329i, global0.e, -16729i), global1.d, _wgslsmith_clamp_i32(-42958i, global0.c.x, global0.c.x)), vec3<bool>(select(false, false, true), 77261u >= global0.d.x, func_1(Struct_1(global1.a, global1.b, global0.c, vec4<u32>(global0.d.x, global0.d.x, 1u, 4294967295u), -10758i), vec3<bool>(false, true, false), vec3<f32>(global1.a.x, global0.a.x, global1.a.x)).x), vec3<f32>(_wgslsmith_div_f32(global0.a.x, global0.a.x), global1.a.x, _wgslsmith_f_op_f32(-global0.a.x))).x && true, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a.x, 1657f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a.x, -208f) - global0.a.x)), 4294967295u, global0.c, vec4<u32>(~76796u, ~1u, 12908u, global0.b), firstLeadingBit(~global1.c.x) | 2147483647i), Struct_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-global0.a.x), global0.a.x, _wgslsmith_div_f32(global1.a.x, 471f)))), _wgslsmith_dot_vec3_u32(~global0.d.zwy, abs(_wgslsmith_mod_vec3_u32(global1.d.zxw, vec3<u32>(13930u, 42496u, global0.d.x)))), -(countOneBits(vec4<i32>(-55034i, global0.e, -3033i, global1.e)) >> (global1.d % vec4<u32>(32u))), global1.d, -(~firstTrailingBit(16476i))));
    global2 = array<vec2<u32>, 2>();
    return 18836u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(any(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), false), func_1(Struct_1(global1.a, u_input.a, vec4<i32>(global1.c.x, global1.c.x, global0.e, global1.e), global1.d, global0.c.x), vec3<bool>(true, true, false), vec3<f32>(-1000f, global1.a.x, global0.a.x)))), all(vec2<bool>(any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true))), true || any(vec2<bool>(false, false)))), true);
    var var_1 = !(!vec2<bool>(true, !any(vec3<bool>(var_0, true, var_0))));
    var var_2 = -1149f;
    var var_3 = _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(~min(global0.d, global0.d), ~(~global0.d)), abs(global0.d)) << (vec4<u32>(~(~0u) | u_input.a, _wgslsmith_div_u32(3911u, abs(~2576u)), 0u >> (u_input.b % 32u), reverseBits(reverseBits(~global1.d.x))) % vec4<u32>(32u));
    var var_4 = max(global0.c.ywy, global0.c.yzx);
    let x = u_input.a;
    s_output = StorageBuffer(-299f, ~vec4<u32>(~_wgslsmith_mod_u32(1u, 16278u), u_input.a, _wgslsmith_add_u32(func_3(), u_input.b), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, 13296u), vec2<u32>(global1.d.x, u_input.b))));
}

