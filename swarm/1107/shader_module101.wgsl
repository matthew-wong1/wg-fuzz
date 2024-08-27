struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: bool,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
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

var<private> global0: vec3<f32>;

var<private> global1: Struct_2;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: Struct_1) -> Struct_2 {
    global1 = Struct_2(global1.a);
    var var_0 = arg_3.b;
    let var_1 = arg_2;
    let var_2 = arg_3;
    var var_3 = _wgslsmith_add_i32(_wgslsmith_add_i32(u_input.a.x, _wgslsmith_mult_i32(u_input.c.x & u_input.a.x, 32266i)) ^ u_input.a.x, -29501i);
    return arg_0;
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec4<u32>) -> vec2<i32> {
    var var_0 = func_2(arg_2, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.x)) + _wgslsmith_f_op_f32(-1855f - _wgslsmith_f_op_f32(1068f - arg_0.x))), _wgslsmith_f_op_f32(trunc(global0.x)), -832f), arg_2, arg_1);
    var var_1 = ~_wgslsmith_clamp_vec4_u32(arg_3, countOneBits(vec4<u32>(1951u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 57102u, arg_3.x), arg_3), ~u_input.e, 1u)), ~arg_3);
    let var_2 = Struct_2(arg_1.b.x);
    var var_3 = global0.x;
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(-1580f + _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_f32(max(-422f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(global0.x * global0.x)) - 236f))));
    return vec2<i32>(max(u_input.d, -select(_wgslsmith_clamp_i32(-43440i, u_input.a.x, u_input.c.x), ~u_input.c.x, false)), 0i);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: f32) -> vec3<u32> {
    let var_0 = vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + -179f)) - arg_2) != _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2)))), any(arg_0.www), true);
    global0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(ceil(global0.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, 1507f, -1571f) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-707f, global0.x, -1060f) * vec3<f32>(-1029f, arg_2, arg_2))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -853f, arg_2)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, global0.x, global0.x) - vec3<f32>(1608f, 967f, arg_2)))))));
    var var_1 = Struct_2(var_0.x);
    var var_2 = !select(!arg_0, select(arg_0, vec4<bool>(var_1.a, var_1.a, !var_0.x, any(vec4<bool>(var_0.x, arg_0.x, true, var_1.a))), true), vec4<bool>(16046u != (u_input.e >> (u_input.e % 32u)), arg_0.x, u_input.c.x <= arg_1.x, arg_0.x));
    let var_3 = Struct_2(func_2(Struct_2(arg_0.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-1627f, arg_2, global0.x), vec3<f32>(global0.x, global0.x, arg_2)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -757f, 2078f)), vec3<bool>(var_0.x, true, false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1270f, -188f, global0.x), vec3<f32>(global0.x, arg_2, -369f)))), func_2(Struct_2(arg_2 >= -516f), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-436f, 187f, -1682f) + vec3<f32>(-801f, global0.x, -989f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.x, global0.x, 1423f))))), Struct_2(var_0.x), Struct_1(_wgslsmith_clamp_u32(30745u, u_input.b, u_input.e), select(vec4<bool>(var_2.x, var_1.a, false, false), vec4<bool>(global1.a, var_1.a, true, global1.a), false), var_0.x)), Struct_1(0u, vec4<bool>(var_1.a, all(arg_0), var_1.a, !var_2.x), var_2.x)).a);
    return vec3<u32>(68886u, u_input.e, (~(u_input.e | 30673u) << ((u_input.b ^ _wgslsmith_add_u32(u_input.b, 12175u)) % 32u)) ^ (4294967295u | (u_input.e | 1u)));
}

fn func_1() -> Struct_2 {
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(-1732f, global0.x, global0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1059f, global0.x, global0.x))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-747f, -1000f, 876f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.x, global0.x, -1000f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-673f, global0.x, global0.x), vec3<f32>(433f, 1162f, global0.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x))))), vec3<f32>(_wgslsmith_f_op_f32(global0.x + global0.x), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.x))))));
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.x - global0.x))), -617f);
    global1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))) == _wgslsmith_f_op_f32(trunc(184f)));
    let var_1 = u_input.a;
    let var_2 = min(_wgslsmith_mod_vec3_u32(~(~vec3<u32>(u_input.e, 1u, u_input.e)), vec3<u32>(10605u, u_input.e, u_input.e) & select(vec3<u32>(1u, 4294967295u, u_input.b), vec3<u32>(u_input.e, u_input.e, u_input.b), vec3<bool>(global1.a, global1.a, false))) << (func_4(!vec4<bool>(global1.a, global1.a, false, global1.a), func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 1000f, 969f)), Struct_1(u_input.b, vec4<bool>(global1.a, global1.a, false, global1.a), global1.a), func_2(Struct_2(true), vec3<f32>(-185f, 2447f, -350f), Struct_2(true), Struct_1(7704u, vec4<bool>(global1.a, false, global1.a, global1.a), global1.a)), firstTrailingBit(vec4<u32>(u_input.b, 4294967295u, 40948u, u_input.e))), -1787f) % vec3<u32>(32u)), ~(~vec3<u32>(u_input.e, 1u, func_4(vec4<bool>(true, true, true, false), vec2<i32>(-37905i, u_input.c.x), global0.x).x)));
    return Struct_2(global1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(false);
    let var_1 = ~0u;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(1591f * global0.x)))));
    var var_3 = Struct_2(u_input.d == 0i);
    var var_4 = func_1();
    var_4 = Struct_2(false);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x);
}

