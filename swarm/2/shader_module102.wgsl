struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: vec2<u32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    global0 = _wgslsmith_sub_vec4_i32(~vec4<i32>(-1i, 2147483647i, u_input.a, 1i), ~vec4<i32>(u_input.a, reverseBits(arg_0.a), 1i, arg_0.a));
    global1 = ~abs(max(firstTrailingBit(firstLeadingBit(vec2<u32>(0u, global1.x))), abs(vec2<u32>(global1.x, global1.x)) | (vec2<u32>(1u, global1.x) << (vec2<u32>(global1.x, global1.x) % vec2<u32>(32u)))));
    let var_0 = Struct_1(min(firstTrailingBit(min(0i, -2147483647i)), -reverseBits(-30661i)), 1298f, !select(arg_0.c, arg_0.c, arg_0.c.x));
    var var_1 = true;
    global1 = ~(~vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(global1.x, 1u, 22569u), ~global1.x), global1.x));
    return select(!vec2<bool>(all(!vec4<bool>(var_0.c.x, false, var_0.c.x, true)), !arg_0.c.x), !(!vec2<bool>(true, arg_0.c.x)), all(vec4<bool>(any(var_0.c), true, arg_0.c.x, max(global1.x, 6239u) != 33917u)));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = _wgslsmith_mod_vec2_i32(vec2<i32>((arg_2.a << (1u % 32u)) << (_wgslsmith_div_u32(~global1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, global1.x), vec2<u32>(4294967295u, 1u))) % 32u), u_input.a), vec2<i32>(~firstLeadingBit(-2147483647i), arg_1.a | -(~arg_2.a)));
    let var_1 = countOneBits(vec4<u32>(~global1.x, 0u, ~_wgslsmith_div_u32(global1.x, global1.x), 0u) << (vec4<u32>(~(~0u), 0u << (global1.x % 32u), global1.x, _wgslsmith_mod_u32(_wgslsmith_add_u32(global1.x, 35578u), select(global1.x, global1.x, arg_1.c.x))) % vec4<u32>(32u)));
    var var_2 = select(select(select(!select(vec2<bool>(true, false), vec2<bool>(arg_2.c.x, arg_1.c.x), false), !arg_2.c.zx, !arg_1.c.yz), func_3(arg_2), true), func_3(arg_1), !arg_1.c.x);
    var var_3 = _wgslsmith_add_vec3_u32((~countOneBits(var_1.xxw) ^ var_1.wyw) >> (abs(vec3<u32>(_wgslsmith_div_u32(var_1.x, global1.x), var_1.x, _wgslsmith_dot_vec3_u32(var_1.wzx, var_1.wxy))) % vec3<u32>(32u)), ~var_1.zwz);
    let var_4 = ~(-vec3<i32>(1i, ~firstTrailingBit(2147483647i), -2147483647i));
    return arg_1.c;
}

fn func_1(arg_0: f32) -> vec4<f32> {
    global1 = ~vec2<u32>(global1.x, global1.x) >> (vec2<u32>(~_wgslsmith_sub_u32(_wgslsmith_sub_u32(16669u, 3967u), 0u), 4294967295u) % vec2<u32>(32u));
    var var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-618f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0)) * _wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0))))), _wgslsmith_f_op_f32(abs(531f)), arg_0), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-615f))), arg_0, arg_0) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-393f, -1596f, arg_0, -632f), vec4<f32>(arg_0, arg_0, arg_0, -834f)))), vec4<bool>(false, true, !any(func_2(true, Struct_1(-1i, 926f, vec3<bool>(false, false, false)), Struct_1(global0.x, arg_0, vec3<bool>(true, true, true)))), true)));
    global1 = vec2<u32>(reverseBits(14293u), _wgslsmith_mult_u32(firstLeadingBit(~abs(global1.x)), reverseBits(min(~32337u, ~global1.x))));
    var var_1 = Struct_1(1i, -1214f, func_2(all(vec4<bool>(true, true, true, true)), Struct_1(firstTrailingBit(select(global0.x, 16542i, true)), _wgslsmith_div_f32(arg_0, -1144f), func_2(true, Struct_1(global0.x, 515f, vec3<bool>(false, true, true)), Struct_1(1i, var_0.x, vec3<bool>(false, false, false)))), Struct_1(_wgslsmith_dot_vec2_i32(global0.zy, min(vec2<i32>(1i, -1i), vec2<i32>(-644i, u_input.a))), 1216f, vec3<bool>(false, func_2(false, Struct_1(global0.x, var_0.x, vec3<bool>(false, false, true)), Struct_1(-1i, var_0.x, vec3<bool>(false, false, false))).x, true))));
    let var_2 = var_1.c.yx;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -643f), -471f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.b)) - -1401f)) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))), _wgslsmith_f_op_f32(-841f + _wgslsmith_f_op_f32(-var_1.b)), -1619f, _wgslsmith_f_op_f32(floor(-365f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_1(367f));
    var var_1 = _wgslsmith_f_op_f32(exp2(var_0.x));
    let var_2 = select(select(vec4<bool>(true, true, true, true && any(vec2<bool>(false, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(select(true, true, false), true, global1.x < 28002u, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, var_0.x > var_0.x), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), 31623u == global1.x), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), false)))), vec4<bool>(true, false && (_wgslsmith_clamp_i32(u_input.a, 1i, u_input.a) <= (-1i ^ u_input.a)), false, !func_3(Struct_1(909i, 773f, vec3<bool>(true, true, false))).x), vec4<bool>(!(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, global1.x, 3291u), vec3<u32>(global1.x, 1u, global1.x)) < 46742u), -1577f != var_0.x, global1.x != 1u, true));
    var_1 = -210f;
    var var_3 = _wgslsmith_f_op_f32(sign(701f));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.xyy);
}

