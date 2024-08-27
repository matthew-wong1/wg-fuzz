struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27>;

var<private> global1: array<Struct_1, 7>;

var<private> global2: bool = true;

var<private> global3: array<Struct_1, 7>;

var<private> global4: u32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> f32 {
    global0 = array<Struct_2, 27>();
    let var_0 = -751f;
    global0 = array<Struct_2, 27>();
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(var_0)), _wgslsmith_f_op_f32(ceil(var_0)))))), 1430f) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1203f * 1000f) - _wgslsmith_f_op_f32(abs(-1314f))))))));
}

fn func_2(arg_0: bool) -> bool {
    var var_0 = abs(u_input.d.xz);
    let var_1 = Struct_1(-36333i, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.c.zyy, vec3<u32>(0u, 1u, u_input.e)), ~56151u, 4294967295u, 1u), _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(u_input.c.x, 14668u, u_input.e, 0u)), u_input.c << (u_input.c % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(u_input.c, vec4<u32>(u_input.b, 8930u, u_input.e, u_input.b), vec4<u32>(u_input.c.x, u_input.e, 13942u, 88916u)))) >= ~0u, 1000f, _wgslsmith_clamp_i32(max(~11182i, u_input.d.x), ~(-var_0.x), (var_0.x ^ u_input.a.x) ^ 17731i) != min(var_0.x, -(~(-44367i))));
    var var_2 = Struct_1(-reverseBits(1i), arg_0, _wgslsmith_f_op_f32(func_3()), select(any(!(!vec2<bool>(var_1.b, true))), all(select(select(vec2<bool>(true, false), vec2<bool>(var_1.b, var_1.d), vec2<bool>(var_1.b, arg_0)), !vec2<bool>(var_1.d, var_1.d), var_1.b)), false));
    var var_3 = _wgslsmith_f_op_f32(max(var_2.c, 1824f));
    let var_4 = 880f;
    return var_2.d;
}

fn func_1() -> Struct_1 {
    var var_0 = select(vec2<bool>(func_2(true == all(vec3<bool>(false, false, true))), true), vec2<bool>(true, true), select(vec2<bool>(true, true), select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), false), select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(true, true)), vec2<bool>(select(true, true, false), true), select(vec2<bool>(false, false), vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(true, false), false))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true), ~1u < min(11687u, u_input.e))));
    global3 = array<Struct_1, 7>();
    global2 = var_0.x;
    let var_1 = ~(~_wgslsmith_add_vec4_i32(max(vec4<i32>(u_input.d.x, u_input.d.x, 1i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.d.x, 1i, u_input.a.x)), -vec4<i32>(-1i, 25060i, u_input.a.x, u_input.a.x))) ^ vec4<i32>(u_input.d.x, u_input.d.x & u_input.a.x, ~(-_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 0i, -10064i), vec3<i32>(-23735i, 0i, u_input.d.x))), abs(~(~u_input.d.x)));
    let var_2 = -var_1.yw;
    return global1[_wgslsmith_index_u32(~(~u_input.e), 7u)];
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    var var_0 = func_1().d;
    var var_1 = _wgslsmith_mod_vec4_u32(u_input.c, firstLeadingBit(~vec4<u32>(countOneBits(u_input.c.x), select(u_input.b, 0u, arg_0.x), ~u_input.c.x, _wgslsmith_clamp_u32(u_input.e, 4294967295u, 0u))));
    var var_2 = Struct_2(_wgslsmith_sub_vec4_i32(abs(u_input.d), -(u_input.d & u_input.d)) << (vec4<u32>(~(~62707u), ~(~4294967295u), u_input.c.x, var_1.x) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(arg_1.c + _wgslsmith_f_op_f32(round(783f))), 3739f, arg_1.c), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.c, 1816f, 458f), vec3<f32>(-1863f, arg_1.c, arg_1.c))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.c, -132f, -1040f), vec3<f32>(arg_1.c, -1381f, 1196f), vec3<bool>(false, arg_0.x, false)))))))), _wgslsmith_mod_vec2_i32(u_input.d.ww, vec2<i32>(0i, -15270i)));
    var_0 = arg_1.d;
    var_2 = Struct_2(u_input.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b.x, arg_1.c, var_2.b.x))))), abs(-(select(vec2<i32>(arg_1.a, arg_1.a), u_input.a.zy, arg_0.x) & (vec2<i32>(u_input.a.x, -1i) & vec2<i32>(var_2.a.x, u_input.a.x)))));
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~firstTrailingBit(u_input.b >> (_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.c.yyx, vec3<u32>(u_input.b, 17775u, 19252u)), 1u) % 32u));
    global2 = true;
    let var_1 = ~(-(~u_input.a.x));
    var var_2 = !all(vec3<bool>(true, true, true)) && false;
    var var_3 = Struct_3(func_4(!(!select(vec2<bool>(false, false), vec2<bool>(false, true), false)), func_1(), true));
    let var_4 = global0[_wgslsmith_index_u32(63916u, 27u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(countOneBits(var_1), firstLeadingBit(~2147483647i)) & select(var_4.c.x, 22286i, true));
}

