struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
    c: vec2<bool>,
    d: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_3, 25>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: vec4<i32>) -> Struct_4 {
    global1 = array<Struct_3, 25>();
    let var_0 = ~arg_1.a.x;
    var var_1 = Struct_2(arg_0.x, vec3<f32>(global0.b.x, arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.a))))));
    let var_2 = arg_1.b;
    global1 = array<Struct_3, 25>();
    return Struct_4(Struct_2(-358f, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(714f - arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(189f, -498f)), arg_0.x)), Struct_1(arg_1.b));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1) -> Struct_4 {
    global1 = array<Struct_3, 25>();
    global0 = Struct_2(2018f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.b))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a - global0.a)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.b.x))), global0.b.x)));
    let var_0 = arg_1.a && any(!vec2<bool>(global0.a >= -591f, arg_1.a == arg_0.x));
    global0 = Struct_2(_wgslsmith_div_f32(global0.b.x, global0.a), global0.b);
    var var_1 = Struct_3(~u_input.d, var_0, vec2<bool>(u_input.d.x > ~_wgslsmith_dot_vec3_u32(vec3<u32>(10361u, 0u, u_input.d.x), u_input.d.zww), arg_1.a), ~max(~(~82922u), ~abs(u_input.b.x)));
    return func_2(vec2<f32>(-1426f, _wgslsmith_f_op_f32(-global0.a)), global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.d.x, u_input.d.x), 25u)], vec4<i32>(-1i, abs(2147483647i) | ~u_input.a, -37222i, _wgslsmith_mult_i32(-1i, 2147483647i)) ^ vec4<i32>(0i, ~(2147483647i ^ u_input.c), 1i, ~(i32(-1i) * -2147483647i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_4, arg_3: Struct_4) -> u32 {
    return firstTrailingBit(20971u);
}

fn func_4(arg_0: u32, arg_1: vec3<bool>, arg_2: vec2<bool>, arg_3: Struct_2) -> vec4<u32> {
    let var_0 = global1[_wgslsmith_index_u32(reverseBits(0u), 25u)];
    var var_1 = global1[_wgslsmith_index_u32(~93183u, 25u)];
    global0 = Struct_2(257f, _wgslsmith_f_op_vec3_f32(arg_3.b * global0.b));
    global0 = func_1(!vec4<bool>(false, all(select(vec4<bool>(true, arg_1.x, arg_1.x, true), vec4<bool>(arg_1.x, false, var_1.c.x, true), var_0.c.x)), false, !select(true, true, var_1.b)), func_2(arg_3.b.zx, Struct_3(~select(var_0.a, vec4<u32>(1u, var_1.d, 0u, arg_0), var_1.c.x), true, vec2<bool>(true, true), u_input.b.x), ~_wgslsmith_mod_vec4_i32(select(vec4<i32>(u_input.a, u_input.c, u_input.a, -1i), vec4<i32>(u_input.a, u_input.a, 11655i, -81165i), false), select(vec4<i32>(2147483647i, u_input.a, u_input.c, u_input.c), vec4<i32>(u_input.a, -2147483647i, -17890i, -12232i), true))).b).a;
    var var_2 = _wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(abs(~var_1.a.x), 26007u), ~_wgslsmith_mod_u32(var_0.a.x, 3744u) >> (~var_1.d % 32u)), 52803u);
    return vec4<u32>(1u, var_1.a.x >> (max(146406u, 25945u) % 32u), ~_wgslsmith_div_u32(~u_input.d.x, firstTrailingBit(arg_0)) >> (_wgslsmith_mult_u32(var_0.a.x, var_1.a.x) % 32u), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~17267u;
    let var_1 = func_4(~func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, 942f, global0.a, global0.b.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, global0.a, global0.b.x, -366f) - vec4<f32>(global0.b.x, global0.b.x, global0.b.x, 495f))), _wgslsmith_f_op_f32(ceil(global0.b.x)), func_1(vec4<bool>(false, false, false, false), Struct_1(true)), Struct_4(Struct_2(global0.a, global0.b), Struct_1(false))), select(vec3<bool>(!func_2(global0.b.yx, Struct_3(vec4<u32>(u_input.d.x, 64294u, 45582u, 31939u), true, vec2<bool>(true, true), 0u), vec4<i32>(u_input.a, u_input.a, 54325i, 41398i)).b.a, false & select(true, true, true), !any(vec2<bool>(false, false))), vec3<bool>(true, !all(vec4<bool>(false, false, false, true)), true & (0i <= u_input.c)), !select(vec3<bool>(true, false, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true), u_input.b.x != 45232u)), select(vec2<bool>(any(vec4<bool>(true, false, true, false)), true), !vec2<bool>(global0.b.x < global0.a, true), true), Struct_2(-883f, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1047f, global0.a) - vec3<f32>(global0.b.x, global0.b.x, global0.b.x)), vec3<f32>(-433f, _wgslsmith_f_op_f32(-global0.a), _wgslsmith_div_f32(2085f, -132f))))));
    let var_2 = i32(-1i) * -abs(-2147483647i);
    let var_3 = Struct_2(_wgslsmith_div_f32(-749f, -1436f), global0.b);
    let var_4 = Struct_3(vec4<u32>(~_wgslsmith_clamp_u32(var_1.x, u_input.b.x, var_0), u_input.d.x, u_input.b.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(38382u, 21716u), vec2<u32>(30082u, 18714u))) << (var_1 % vec4<u32>(32u)), (_wgslsmith_f_op_f32(-global0.b.x) > var_3.b.x) & true, select(vec2<bool>(false, true), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true), true), vec2<bool>(var_2 < firstTrailingBit(var_2), true)), _wgslsmith_mod_u32(~func_4(func_4(53643u, vec3<bool>(false, true, false), vec2<bool>(false, true), Struct_2(2005f, global0.b)).x, vec3<bool>(true, true, true), vec2<bool>(true, true), var_3).x, 49625u));
    var var_5 = -_wgslsmith_clamp_i32(1i, -(~u_input.c), _wgslsmith_add_i32(-19704i, _wgslsmith_mult_i32(firstTrailingBit(var_2), -1i)));
    let x = u_input.a;
    s_output = StorageBuffer(~1u, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-global0.b.xz), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-var_3.b.x), _wgslsmith_f_op_f32(var_3.b.x * global0.a)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(global0.b.yz + var_3.b.xx))), true)))), ~_wgslsmith_div_vec3_i32(firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, var_2, 1i), vec3<i32>(-42298i, u_input.c, -2147483647i))), firstLeadingBit(~vec3<i32>(1i, u_input.c, 40182i))), u_input.d.yz, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(var_3.b.x)))));
}

