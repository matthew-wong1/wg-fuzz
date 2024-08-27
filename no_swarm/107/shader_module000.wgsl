struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: vec2<bool>,
    d: i32,
    e: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: bool) -> f32 {
    let var_0 = arg_1;
    global0 = 1059f;
    var var_1 = Struct_1(vec3<bool>(all(!(!vec2<bool>(arg_2, arg_2))), any(vec2<bool>(true, true)), all(select(vec3<bool>(false, arg_2, true), !vec3<bool>(true, arg_2, false), select(vec3<bool>(arg_2, false, true), vec3<bool>(false, false, false), arg_2)))));
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(936f - -120f), 984f, all(vec3<bool>(true, true, true))))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(975f, -123f)) - 432f))))));
    var var_2 = true;
    return -2874f;
}

fn func_2(arg_0: i32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(u_input.b, -1i, true))));
    global0 = 1000f;
    global0 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(919f, var_0))))), _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-var_0))))), var_0);
    let var_1 = Struct_2(arg_0, vec4<u32>(u_input.c, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 54829u), ~vec3<u32>(u_input.b, u_input.c, 46353u)), u_input.c, select(_wgslsmith_mod_u32(max(39899u, u_input.c), _wgslsmith_mult_u32(u_input.c, 43716u)), ~u_input.c >> (1u % 32u), false)), !(!(!select(vec2<bool>(false, false), vec2<bool>(true, false), false))), 0i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-111f, 551f, -443f)));
    var var_2 = ~_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(var_1.b.zwy, var_1.b.yyy & _wgslsmith_div_vec3_u32(var_1.b.zzy, vec3<u32>(25838u, var_1.b.x, 61907u))), reverseBits(var_1.b.yyy), ~(~vec3<u32>(u_input.b, 4294967295u, var_1.b.x) & ~var_1.b.xzw));
    return Struct_3(min(-((u_input.a & arg_0) << (var_1.b.x % 32u)), -17600i), all(var_1.c));
}

fn func_1(arg_0: vec3<bool>, arg_1: bool) -> bool {
    var var_0 = func_2(-857i);
    global0 = _wgslsmith_f_op_f32(func_3(u_input.b, 20568i, all(vec2<bool>(arg_0.x, arg_0.x))));
    global0 = -395f;
    var_0 = Struct_3(u_input.a, true);
    var_0 = Struct_3(countOneBits(countOneBits(countOneBits(_wgslsmith_mod_i32(0i, var_0.a)))), false);
    return ~(~_wgslsmith_dot_vec2_i32(-vec2<i32>(var_0.a, u_input.a), abs(vec2<i32>(u_input.a, 0i)))) >= u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<bool>(u_input.b > reverseBits(11032u), !(_wgslsmith_f_op_f32(trunc(560f)) >= _wgslsmith_f_op_f32(abs(-1000f))), any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false))), true), select(vec4<bool>(true, all(vec3<bool>(true, true, true)) || (u_input.a == -41795i), true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true)), false);
    global0 = 678f;
    var var_1 = select(!(!(!vec4<bool>(var_0.x, var_0.x, true, false))), !select(vec4<bool>(var_0.x | false, !var_0.x, false, !var_0.x), !select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x), var_0.x), func_1(var_0.xxx, true)), vec4<bool>((0i <= select(23751i, u_input.a, var_0.x)) & false, !all(var_0.zxy) | true, var_0.x, true));
    let var_2 = -28059i;
    var var_3 = select(abs(-(~(vec2<i32>(13532i, u_input.a) << (vec2<u32>(0u, u_input.c) % vec2<u32>(32u))))), _wgslsmith_add_vec2_i32(abs(vec2<i32>(-49538i, _wgslsmith_div_i32(var_2, var_2))), countOneBits(vec2<i32>(1i, 1i)) & ((vec2<i32>(u_input.a, -1i) << (vec2<u32>(1u, u_input.b) % vec2<u32>(32u))) << (vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u)))), any(select(var_0.wyx, var_1.yzx, select(!var_0.wyx, !vec3<bool>(var_0.x, false, var_1.x), var_1.xyz))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_3.x, 2147483647i, var_2), vec3<i32>(-18559i, var_2, var_3.x)) ^ func_2(1629i).a, countOneBits(_wgslsmith_mult_i32(var_2, -1i)), -1i), ~firstLeadingBit(vec3<i32>(u_input.a, var_2, -2147483647i) ^ vec3<i32>(-1i, 1i, var_2))), u_input.c);
}

