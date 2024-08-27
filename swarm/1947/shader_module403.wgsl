struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: f32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<i32>(-1i, -1i), true, -1032f, -474f, true), true, 35651u);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: u32, arg_1: vec4<i32>, arg_2: vec4<f32>, arg_3: bool) -> bool {
    global0 = Struct_2(global0.a, arg_3, 4294967295u);
    global0 = Struct_2(global0.a, global0.b, ~abs(4294967295u));
    var var_0 = 2147483647i;
    let var_1 = all(select(vec2<bool>(!arg_3, global0.a.e), vec2<bool>(true, true), vec2<bool>(true, true))) & global0.b;
    var var_2 = vec4<bool>(arg_3, arg_3, true, var_1);
    return any(select(select(!select(vec4<bool>(global0.a.b, false, false, global0.b), vec4<bool>(true, global0.a.b, arg_3, false), vec4<bool>(false, true, true, false)), select(!vec4<bool>(true, global0.a.b, false, arg_3), select(vec4<bool>(true, false, var_1, true), vec4<bool>(global0.a.b, true, true, false), vec4<bool>(true, false, true, false)), u_input.d.x != global0.a.a.x), true), select(!(!vec4<bool>(global0.b, false, var_1, true)), !select(vec4<bool>(true, true, var_1, arg_3), vec4<bool>(global0.b, false, var_2.x, true), vec4<bool>(true, arg_3, true, true)), false), select(vec4<bool>(arg_3, !arg_3, global0.a.a.x < 2147483647i, all(var_2.yx)), !select(vec4<bool>(var_1, true, global0.a.b, true), vec4<bool>(var_1, true, arg_3, arg_3), true), all(var_2.yy))));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>) -> i32 {
    var var_0 = func_3((u_input.a.x | global0.c) ^ global0.c, u_input.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(277f - -480f), _wgslsmith_f_op_f32(-arg_0.a.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1092f) - _wgslsmith_f_op_f32(global0.a.c + arg_0.a.c)), -222f)), arg_0.a.e);
    var var_1 = Struct_2(Struct_1(max(arg_0.a.a, ~(-u_input.d.zw)), arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-576f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(495f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), all(select(!vec3<bool>(false, arg_0.b, arg_1.x), vec3<bool>(false, true, false), vec3<bool>(arg_0.a.b, false, arg_0.a.b)))), true, global0.c);
    let var_2 = 1i;
    global0 = Struct_2(Struct_1(var_1.a.a, global0.b, global0.a.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_0.a.c, -320f), _wgslsmith_f_op_f32(f32(-1f) * -1802f))) + _wgslsmith_f_op_f32(select(var_1.a.d, arg_0.a.d, true))), global0.b), var_1.a.b, _wgslsmith_sub_u32(~(~(~u_input.c.x)), 34733u));
    let var_3 = Struct_1(-vec2<i32>(0i, 1i), select(true, any(vec3<bool>(true, 2292f == arg_0.a.c, var_1.b)), !all(vec4<bool>(arg_0.a.b, arg_0.a.e, false, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.c)), _wgslsmith_f_op_f32(f32(-1f) * -1023f), global0.b);
    return ~u_input.d.x;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1) -> vec2<i32> {
    return vec2<i32>(_wgslsmith_add_i32(-27280i, func_2(Struct_2(Struct_1(global0.a.a, false, 257f, global0.a.c, true), select(true, arg_1.e, global0.b), _wgslsmith_add_u32(u_input.a.x, u_input.c.x)), select(!vec2<bool>(arg_1.e, arg_1.b), select(vec2<bool>(global0.a.e, true), vec2<bool>(true, arg_1.e), vec2<bool>(true, arg_1.e)), select(vec2<bool>(global0.a.b, global0.a.b), vec2<bool>(global0.b, arg_1.e), true)))), 11018i & global0.a.a.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_2 {
    global0 = Struct_2(Struct_1(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(arg_0.a, global0.a.a), vec2<i32>(u_input.b, arg_1.x) >> (u_input.a.zy % vec2<u32>(32u))) | abs(vec2<i32>(6971i, 0i)), !arg_0.e, global0.a.c, -482f, !any(select(vec4<bool>(arg_0.b, true, arg_0.b, global0.b), vec4<bool>(false, true, arg_0.e, global0.a.b), vec4<bool>(false, true, global0.b, global0.a.e)))), global0.b, 1u);
    var var_0 = vec2<f32>(1387f, arg_0.c);
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-959f, _wgslsmith_div_f32(486f, -454f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.d, global0.a.c) + vec2<f32>(arg_0.c, 561f)))) * vec2<f32>(arg_0.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_0.d)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.c))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1050f, 1637f), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.c, -118f) * vec2<f32>(global0.a.c, global0.a.c)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 357f) * vec2<f32>(global0.a.c, global0.a.d)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -191f) - vec2<f32>(979f, global0.a.d)), vec2<bool>(true, arg_0.b))))), vec2<f32>(arg_0.d, -266f), vec2<bool>(_wgslsmith_div_f32(-1000f, 1000f) < _wgslsmith_f_op_f32(1000f + var_0.x), false))));
    var var_2 = !(!(!(!vec2<bool>(false, global0.a.e))));
    return Struct_2(arg_0, !arg_0.e, 1975u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(global0.a, (-11802i > firstTrailingBit(global0.a.a.x | global0.a.a.x)) || !global0.a.b, ~(~_wgslsmith_div_u32(global0.c << (u_input.c.x % 32u), 3225u >> (0u % 32u))));
    var var_0 = -1i;
    var_0 = _wgslsmith_dot_vec3_i32((u_input.d.wzz << (_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.c, vec3<u32>(u_input.a.x, 69286u, u_input.c.x)), u_input.c | vec3<u32>(global0.c, 12210u, u_input.a.x)) % vec3<u32>(32u))) & u_input.d.wzy, vec3<i32>(-1i) * -u_input.d.wzx);
    var_0 = 35412i;
    var var_1 = ~u_input.a.xy;
    global0 = func_4(Struct_1(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-344f, -1431f, -1057f, global0.a.c), vec4<f32>(global0.a.c, 521f, -678f, global0.a.d))), Struct_1(firstTrailingBit(u_input.d.xy), true, global0.a.d, global0.a.c, true)), any(vec4<bool>(false, global0.b, global0.b, select(true, true, global0.a.b))), _wgslsmith_f_op_f32(trunc(global0.a.c)), global0.a.c, true), -(~abs(vec3<i32>(-11721i, u_input.d.x, -56250i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-348f, _wgslsmith_f_op_f32(step(571f, global0.a.c)), _wgslsmith_f_op_f32(global0.a.c + global0.a.d)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.c, global0.a.c, -527f) + vec3<f32>(1856f, global0.a.c, global0.a.c))))), ~u_input.c.yz, vec3<u32>(~u_input.a.x, 32189u, var_1.x), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(u_input.d | -u_input.d, vec4<i32>(u_input.d.x, u_input.d.x, u_input.b, 1i) << (firstTrailingBit(vec4<u32>(0u, 4294967295u, 4294967295u, 71491u)) % vec4<u32>(32u))), u_input.d));
}

